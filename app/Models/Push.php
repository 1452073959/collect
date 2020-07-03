<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use App\Notifications\TopicReplied;
class Push extends Model
{
	
    protected $table = 'push';

    protected static function boot()
    {
        parent::boot();
        static::created(function ($push) {
//            dd($push);
            $user=User::all();
            foreach ($user as $k=>$v)
            {
                $v->notify(new TopicReplied($push));
            }
        });
    }
}
