<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order', function (Blueprint $table) {
            $table->increments('id');
            $table->string('no')->default('')->comment('商户订单号');
            $table->integer('user_id')->comment('用户');
            $table->text('address')->nullable();
            $table->decimal('total_amount')->nullable()->comment('订单金额');
            $table->text('remark')->nullable()->comment('订单备注');
            $table->timestamp('paid_at')->nullable()->comment('支付时间');
            $table->string('payment_no')->nullable()->comment('微信订单号');
            $table->tinyInteger('status')->nullable()->comment('1未支付2待发货3已发货');
            $table->text('ship_data')->nullable()->comment('物流数据');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order');
    }
}
