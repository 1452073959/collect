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
        $comments = Category::with('childrenCategories')->where('parent_id',0)->get();

        return $comments;

    }
    //商品添加分类(去除目录)
    public function productcate(Request $request)
    {
//        $data= Category::all();
//        return $data;
        $data= Category::where('parent_id','!=',0)->get();
        return $data;
    }
    public function admincate(Request $request)
    {
        $data= Category::where('parent_id',0)->get();
        return $data;
    }




    //商品收藏
    public function favor(Product $product, Request $request)
    {
        $user = auth('api')->user();

        if ($user->favoriteProducts()->find($product->id)) {
            return [];
        }
        $user->favoriteProducts()->attach($product);

        return [];
    }

    //商品取消收藏
    public function disfavor(Product $product, Request $request)
    {
        $user = auth('api')->user();

        $user->favoriteProducts()->detach($product);
        return [];
    }
    //收藏商品列表
    public function favorites(Request $request)
    {
         $user = auth('api')->user();
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
        $products = $builder->with('favoriteuser')->paginate(16);
        return $this->success($products);
    }

    //首页推荐
    public function stick()
    {
        $builder = Product::query()->where('status', 1)->where('recommended',1)->get();
        return $this->success($builder);
    }

    //商品详情
    public function show(Product $product, Request $request)
    {
          $user = auth('api')->user();
//        $user=User::find(1);
        Redis::rpush($user['id'],$product['id']);
        // 判断商品是否已经上架，如果没有上架则抛出异常。
        if ($product->status==2) {
            return $this->failed('该商品已下架');
        }

        return $this->success($product);
    }

    //商品
    public function multiproduct(Request $request)
    {
        $items = $request->input('items');
        foreach ($items as $k => $v) {
            $sku = Product::find($v['id']);
            $sku['totalAmount']=$sku['price'] * $v['amount'];
        }
        return $this->success($sku);
    }

    //浏览历史
    public function history()
    {
        $user = auth('api')->user();
        $history= Redis::lrange($user['id'],0,-1);
        $history=Product::wherein('id',$history)->paginate(16);
        return $this->success($history);
    }

}
