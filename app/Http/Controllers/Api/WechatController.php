<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use EasyWeChat\Factory;
use function EasyWeChat\Kernel\Support\generate_sign;
use Cache;
use App\Models\User;
use Storage;
class WechatController extends Controller
{
    //登陆

    public function wechat(Request $request)
    {
        $data = $request->all();

        $app = \EasyWeChat::miniProgram();
        $wq = $app->auth->session($data['code']); // $code 为wx.login里的code
//        dd($wq);
        if (isset($wq['errcode'])) {
            return $this->failed('code已过期或不正确');
        }
        $weappOpenid = $wq['openid'];
        $weixinSessionKey = encrypt( $wq['session_key']);
        $user = User::where('weapp_openid', $weappOpenid)->first();
        //没有，就注册一个用户
        if (!$user) {
            $user = new User();
            $user->weapp_openid = $weappOpenid;
            $user->token = $weixinSessionKey;
            $user->nickname = $data['userInfo']['nickName'];
            $user->weapp_avatar = $data['userInfo']['avatarUrl'];
            $user->pid = request('pid','0');
            $user->save();

        }else{
            $user->weapp_openid=$weappOpenid;
            $user->token=$weixinSessionKey;
            $user->nickname=$data['userInfo']['nickName'];
            $user->weapp_avatar=$data['userInfo']['avatarUrl'];
            $user->save();
        }

//        $token= auth('api')->login($user);
        $token =auth('api')->tokenById($user['id']);
        return $this->respondWithToken($token);
//        return $this->success(['openid'=>$weappOpenid,'token'=>$user['token']]);
    }

    //刷新token
    public function tokenupdate()
    {
        $token = auth('api')->refresh();
        return $this->respondWithToken($token);
    }

    public function cache()
    {

        $value = Cache::get('key');
        $value1 = Cache::get('key1');
        dump($value);
        dump($value1);
    }

    public function ma()
    {
        $app = \EasyWeChat::miniProgram();
        $user = auth('api')->user();
        $str=$user['id'];
        $response =  $app->app_code->getUnlimit($str);
        // 保存小程序码到文件
        if ($response instanceof \EasyWeChat\Kernel\Http\StreamResponse) {
            $filename = $response->save(public_path('uploads'));
            return Storage::disk('admin')->url($filename);
        }
//        return Storage::disk('admin')->url($filename);

// 或
//        if ($response instanceof \EasyWeChat\Kernel\Http\StreamResponse) {
//            $filename = $response->saveAs('/public/uploads/img', 'appcode.png');
//        }
        return $response;
    }



}
