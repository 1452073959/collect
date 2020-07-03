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

    protected static function boot()
    {
        parent::boot();
        // 监听模型创建事件，在写入数据库之前触发
        static::creating(function ($model) {
            // 如果模型的 no 字段为空
            if (!$model->parent_id) {
                $model->parent_id = 0;
            }
        });
    }


}
