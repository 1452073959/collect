<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;
class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    //消息通知
    use Notifiable {
        notify as protected laravelNotify;
    }
    public function notify($instance)
    {

        // 只有数据库类型通知才需提醒，直接发送 Email 或者其他的都 Pass
        if (method_exists($instance, 'toDatabase')) {
            $this->increment('notification_count');
        }

        $this->laravelNotify($instance);
    }
    //未读消息改为已读
    public function markAsRead()
    {
        $this->notification_count = 0;
        $this->save();
        $this->unreadNotifications->markAsRead();
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }
//收藏
    public function favoriteProducts()
    {
        return $this->belongsToMany(Product::class, 'user_product')
            ->withTimestamps()
            ->orderBy('user_product.created_at', 'desc');
    }
//购物车
    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }
    //地址
    public function addresses()
    {
        return $this->hasMany(UserAddress::class);
    }
    //佣金上级
    public function up()
    {
        return $this->belongsTo(User::class,'pid','id');
    }
    //下级
    public function down()
    {
        return $this->hasMany(User::class,'pid','id');
    }

    public function log()
    {
        return $this->hasMany(Moneylog::class,'user_id','id');
    }



}
