<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
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
    //商品收藏
    public function favor(Product $product, Request $request)
    {
//        $user = auth('api')->user();
        $user=User::find(1);
//        dd($product);
        if ($user->favoriteProducts()->find($product->id)) {
            return [];
        }
        $user->favoriteProducts()->attach($product);

        return [];
    }

    //商品取消收藏
    public function disfavor(Product $product, Request $request)
    {
//        $user = auth('api')->user();
        $user=User::find(1);
        $user->favoriteProducts()->detach($product);
        return [];
    }
    //收藏商品列表
    public function favorites(Request $request)
    {
        // $user = auth('api')->user();
        $user=User::find(1);
        $products = $user->favoriteProducts()->paginate(16);

        return $this->success($products);
    }
}
