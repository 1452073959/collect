<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Dcat\Admin\Traits\ModelTree;
class Category extends Model
{
    use ModelTree;
    protected $table = 'categories';
    // 返回空值即可禁用 order 字段
    public function getOrderColumn()
    {
        return null;
    }
}
