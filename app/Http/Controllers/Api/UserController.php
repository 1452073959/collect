<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Http\Requests\Api\PhoneRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Cache;
class UserController extends Controller
{
    //获取用户信息
    public function show(Request $request)
    {
//        dd($this->user);
        $user = auth('api')->user();
        return $this->success($user);
    }
    //修改用户信息
    public function updateuser(Request $request)
    {
//        $user=$request->user();
        $n=$request->all();
        $user = auth('api')->user();
        $res=DB::table('users')->where('id',$user['id'])->update($n);
        if($res){
            return $this->success('修改成功');
        }else{
            return $this->failed('修改失败');
        }

    }

    public function store(PhoneRequest $request)
    {
        $verifyData = \Cache::get($request->verification_key);

        if (!$verifyData) {
            abort(403, '验证码已失效');
        }

        if (!hash_equals($verifyData['code'], $request->verification_code)) {
            // 返回401
            throw new AuthenticationException('验证码错误');
        }
        $user = auth('api')->user();
        $res=DB::table('users')->where('id',$user['id'])->update(  ['phone' => $verifyData['phone']]);


        // 清除验证码缓存
        \Cache::forget($request->verification_key);
        if($res){
            return $this->success('绑定成功');
        }else{
            return $this->failed('绑定失败,系统错误');
        }
    }
}
