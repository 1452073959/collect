<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cid');
            $table->string('title')->nullable()->comment('商品名称');
            $table->text('description')->nullable()->comment('描述');
            $table->string('image')->nullable()->comment('商品图片');
            $table->tinyInteger('sold_count')->nullable()->comment('销量');
            $table->decimal('price')->nullable()->comment('价格');
            $table->tinyInteger('stock')->nullable()->comment('库存');
            $table->tinyInteger('recommended')->nullable()->comment('推荐位1否2是');
            $table->tinyInteger('status')->nullable()->comment('状态');
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
        Schema::dropIfExists('products');
    }
}
