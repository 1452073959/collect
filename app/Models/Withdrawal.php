<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Withdrawal extends Model
{
	
    protected $table = 'withdrawal';
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
