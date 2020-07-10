<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\Category as CategoryModel;
use Dcat\Admin\Form;
class Category extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CategoryModel::class;
    public function store(Form $form)
    {
        // 获取待新增的数据
        $attributes = $form->updates();
        return true;
    }

    public function update(Form $form)
    {
        // 获取待编辑的数据
        $attributes = $form->updates();
//        dd($attributes);

        return true;
    }
}
