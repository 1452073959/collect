<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use DB;
use App\Models\Product;
use App\Models\User;
use function EasyWeChat\Kernel\Support\generate_sign;
use Cache;
class OrderController extends Controller
{
    //
    public function pay(Request $request)
    {

        $user = auth('api')->user();
        $user=User::find(1);
        $order = \DB::transaction(function () use ($user, $request) {
            $data = $request->all();
        $order=new Order();
        $order->user_id=$user['id'];
        $order->total_amount=$data['total_amount'];
        $order->address=$data['address'];
        $order->save();

        $totalAmount = 0;
        $items       = $request->input('items');
//        dd($items);
        // 遍历用户提交的 商品数组
        foreach ($items as $k=>$v) {

            $sku  = Product::find($v['id']);
            // 创建一个 OrderItem 并直接与当前订单关联
            $item = $order->items()->make([
                'amount' => $v['amount'],
                'price'  => $sku->price,
            ]);
            $item->product()->associate($sku->id);
            $item->save();
            $totalAmount += $sku->price * $v['amount'];
        }

        // 将下单的商品从购物车中移除
        $skuIds = collect($items)->pluck('id');
        $user->cartItems()->whereIn('id', $skuIds)->delete();
        return $order;
        });
        //支付逻辑
        $payment = \EasyWeChat::payment(); // 微信支付
        $result = $payment->order->unify([
            'body'         => '商城订单',
            'out_trade_no' => $order['no'],
            'trade_type'   => 'JSAPI',  // 必须为JSAPI
            'openid' => $user['weapp_openid'], // 这里的openid为付款人的openid
            'total_fee' => $order['total_amount'] * 100, // 总价
        ]);

// 如果成功生成统一下单的订单，那么进行二次签名
        if ($result['return_code'] === 'SUCCESS') {
            // 二次签名的参数必须与下面相同
            $params = [
                'appId'     => 'wx5da558002fdd6736',
                'timeStamp' => (string)time(),
                'nonceStr'  => $result['nonce_str'],
                'package'   => 'prepay_id=' . $result['prepay_id'],
                'signType'  => 'MD5',
            ];

            // config('wechat.payment.default.key')为商户的key
            $params['paySign'] = generate_sign($params, config('wechat.payment.default.key'));

            return $params;
        } else {
            return $result;
        }
    }

    public function notify()
    {
        Cache::put('key1', date('Y-m-d H:i:s',time()));
        $app = \EasyWeChat::payment(); // 微信支付
        $response = $app->handlePaidNotify(function($message, $fail){
            //数据库找到订单
            Cache::put('key',$message );
            $order = Order::where('no',$message['out_trade_no'])->first();
            if (!$order || $order['paid_at']) { // 如果订单不存在 或者 订单已经支付过了
                return ; // 告诉微信，我已经处理完了，订单没找到，别再通知我了
            }
            if ($message['return_code'] === 'SUCCESS') { // return_code 表示通信状态，不代表支付状态
                // 用户是否支付成功
                $order->paid_at = date('Y-m-d H:i:s',time());; // 更新支付时间为当前时间
                $order->status = 2;
                $order->payment_no = $message['transaction_id'];
                $superiorsid=User::where('id',$order['user_id'])->value('pid');
                //计算佣金
                $commission=$order['total_amount']*0.5;
                $flight = User::find($superiorsid);
                $flight->balance =$flight['balance']+$commission;
                $flight->save();
            } else {
                $order->status = 0;
                return $fail('通信失败，请稍后再通知我');
            }
            $order->save();

        });
        return $response;
    }
//测试方法
    public function cache()
    {

        $value = Cache::get('key');
        $value1 = Cache::get('key1');
        dump($value);
        dump($value1);
    }
}
