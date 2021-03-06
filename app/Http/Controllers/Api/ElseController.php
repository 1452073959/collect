<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\About;
use App\Models\Help;
use App\Models\Moneylog;
use App\Models\User;
use App\Models\Video;
use App\Models\Withdrawal;
use Illuminate\Http\Request;

class ElseController extends Controller
{
    //

    public function help()
    {
        $help=Help::first();
        return $this->success($help);
    }

    public function about()
    {
        $about=About::first();
        return $this->success($about);
    }
    //视频
    public function video()
    {
        if(request('status')){
            $video=Video::where('status',request('status'))->get();
        }else{
            $video=Video::get();
        }
        return $this->success($video);
    }

    public function videoshow(Video $video)
    {
        return $this->success($video);
    }

    public function videosearch(Request $request)
    {
        $builder = Video::query()->where('status', 1);
        // 判断是否有提交 search 参数，如果有就赋值给 $search 变量
        // search 参数用来模糊搜索商品
        if ($search = $request->input('search', '')) {
            $like = '%'.$search.'%';
            // 模糊搜索商品标题、商品详情、SKU 标题、SKU描述
            $builder->where(function ($query) use ($like) {
                $query->where('title', 'like', $like);

            });
        }
        $products = $builder->get();
        return $this->success($products);
    }
    //佣金记录
    public function money()
    {
        $user = auth('api')->user();
        $moeny=Moneylog::where('user_id',$user['id'])->orderBy('created_at', 'desc')->get();
        return $this->success($moeny);
    }
    //
    public function moneywithdraw(Request $request)
    {

        $moneywithdraw=Withdrawal::find($request->id);
        $moneywithdraw->status=2;
        $money=$moneywithdraw['money']+=0;
        $user=User::find($moneywithdraw['user_id']);
        $user->balance=($user['balance']+=0)-$money;
        $user->save();
        $user->log()->create([
            'action' => '提现',
            'money' =>$money,
        ]);
        $moneywithdraw->save();
        return $this->success('提现成功');

    }
    //我的上级
    public function up()
    {
        $user = auth('api')->user();
        $up=User::with('up')->where('id',$user['id'])->get();
        return $this->success($up);
    }
    //我的下级

    public function down()
    {
        $user = auth('api')->user();
        $up=User::with('down')->where('id',$user['id'])->get();
        return $this->success($up);
    }
    //银行卡
    public function card(Request $request)
    {
        $user = auth('api')->user();

        if($request->money){
            $money=$request->money+=0;
            $usermoney= $user['balance']+=0;
            if($money > $usermoney){
                return $this->failed('金额超出可提现金额');
            }else{
                $user->card()->create(  $request->all() );
                return $this->success('添加成功');
            }
        }else{
            return $this->failed('金额错误');
        }


    }

}
