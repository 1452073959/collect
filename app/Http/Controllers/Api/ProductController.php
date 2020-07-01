<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //分类别表
    public function cate(Request $request)
    {
//        $q = $request->get('q');
//        return Category::where('title', 'like', "%$q%")->get();

        $data= Category::all();
        return $data;
    }
    //商品添加分类(去除目录)
    public function productcate(Request $request)
    {

        $data= Category::where('parent_id','!=',0)->get();
        return $data;
    }
}
