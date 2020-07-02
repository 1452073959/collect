<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use Cache;
use Illuminate\Support\Facades\Redis;
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

    //商品列表
    public function index(Request $request)
    {
        $builder = Product::query()->where('status', 1);
        // 判断是否有提交 search 参数，如果有就赋值给 $search 变量
        // search 参数用来模糊搜索商品
        if ($search = $request->input('search', '')) {
            $like = '%'.$search.'%';
            // 模糊搜索商品标题、商品详情、SKU 标题、SKU描述
            $builder->where(function ($query) use ($like) {
                $query->where('title', 'like', $like)
                    ->orWhere('description', 'like', $like);
            });
        }
        if($request->input('cid', ''))
        {
            $builder->where('cid', request('cid'));
        }
        $products = $builder->paginate(16);
        return $this->success($products);
    }
    //商品详情
    public function show(Product $product, Request $request)
    {
        //        $user = auth('api')->user();
        $user=User::find(1);
        Redis::rpush($user['id'],$product['id']);
        // 判断商品是否已经上架，如果没有上架则抛出异常。
        if ($product->status==0) {
            return $this->failed('该商品已下架');
        }

        return $this->success($product);
    }
    //浏览历史
    public function history()
    {
        $user=User::find(1);
        $history= Redis::lrange($user['id'],0,-1);
        $history=Product::wherein('id',$history)->paginate(16);
        return $this->success($history);
    }

}
