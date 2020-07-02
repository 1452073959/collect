<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    //swope
    $router->resource('swipe', 'SwipeController');
    //分类管理
    $router->resource('cate', 'CategoryController');
    //商品管理
    $router->resource('product', 'ProductController');
    //订单管理
    $router->resource('order', 'OrderController');
    //帮助中心
    $router->resource('help', 'HelpController');
    //关于我们
    $router->resource('about', 'AboutController');
});
