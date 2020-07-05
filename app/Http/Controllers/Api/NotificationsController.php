<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\Controller;
use Illuminate\Http\Request;
use App\Models\User;
class NotificationsController extends Controller
{
    //
    public function index()
    {
        // 获取登录用户的所有通知
        $user = auth('api')->user();
        $notifications = $user->notifications()->orderBy('created_at', 'desc')->paginate(10);
        $user->markAsRead();
        return $this->success($notifications);
    }
}
