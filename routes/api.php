<?php

use Illuminate\Http\Request;


//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

$api = app(\Dingo\Api\Routing\Router::class);
$api->version('v1', [
//    'prefix' => 'auth',
    'namespace' => 'App\Http\Controllers\Api'
], function ($api) {
    //需要登录
    Route::middleware('jwt.auth')->group(function ($api) {

    });
    // 登录
    $api->post('logincode', 'WechatController@wechat');
    //刷新token
    $api->get('token', 'WechatController@tokenupdate');
    //分类的接口
    $api->get('cate', 'ProductController@cate');
    //不带根分类的分类接口
    $api->get('productcate', 'ProductController@productcate');



    //商品收藏
    Route::post('products/{product}/favor','Api\ProductController@favor');
    //取消收藏
    Route::post('products/{product}/disfavor','Api\ProductController@disfavor');
    //收藏列表
    Route::get('products/favorites', 'Api\ProductController@favorites');
    //添加到购物车
    Route::post('cart', 'Api\CartController@add');
    //查看购物车
    Route::get('cart', 'Api\CartController@index');

});
