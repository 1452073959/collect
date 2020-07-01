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
});
