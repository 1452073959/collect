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
    //帮助中心
    $api->get('help', 'ElseController@help');
    //关于我
    $api->get('about', 'ElseController@about');
    //商品列表
    $api->get('product', 'ProductController@index');
    //商品详情
    Route::get('productshow/{product}', 'Api\ProductController@show');


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
    //收货地址列表
    Route::get('addresses', 'Api\AddressesController@index');
    //新增收货地址
    Route::post('addresses', 'Api\AddressesController@store');
    //修改收货地址
    Route::get('addresses/{user_address}', 'Api\AddressesController@edit');
    //
    Route::post('addresses/{user_address}', 'Api\AddressesController@update');
    //删除收货地址
    Route::get('deladdresses/{user_address}', 'Api\AddressesController@destroy');
    //设置默认收货地址
    Route::get('defaultaddresses/{user_address}', 'Api\AddressesController@default');
    //用户
    Route::get('user','Api\UserController@show');
    //更新用户
    Route::post('updateuser','Api\UserController@updateuser');
    //浏览历史
    Route::get('history','Api\ProductController@history');
});
