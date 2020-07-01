<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class CartItem extends Model
{
	
    protected $table = 'cart_items';
    protected $guarded = [];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function product()
    {
        return $this->belongsTo(Product::class,'product_id','id');
    }
}
