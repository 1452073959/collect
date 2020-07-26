<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Product;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class ProductController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Product(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->model()->with(['cate']);
            $grid->column('cate.text','分类');
            $grid->title;
//            $grid->description;
//            $grid->sold_count;
            $grid->price;
//            $grid->stock;
            $grid->recommended->using([ 1 => '是',2=>'否'])->filter(
                Grid\Column\Filter\In::make([
                    1 => '是',
                    2 => '否',
                ])
            );;;
            $grid->status->using([ 1 => '上架',2=>'下架'])->filter(
                Grid\Column\Filter\In::make([
                    1 => '上架',
                    2 => '下架',

                ])
            );;
//            $grid->created_at;
//            $grid->updated_at->sortable();
            $grid->disableViewButton();
            $grid->disableDeleteButton();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->like('title', '商品名称');
                $filter->equal('cid','商品分类')->select(config('app.url').'/api/productcate');
        
            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new Product(), function (Show $show) {
            $show->id;
            $show->cid;
            $show->title;
            $show->description;
            $show->image;
            $show->sold_count;
            $show->price;
            $show->stock;
            $show->recommended;
            $show->status;
            $show->created_at;
            $show->updated_at;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new Product(), function (Form $form) {
//            $form->display('id');
//            $form->text('cid');
            $form->select('cid','所属分类')->options(config('app.url').'/api/productcate')->required();;;
            $form->text('title')->required();
            $form->textarea('smalldescription')->required();
            $form->editor('description')->required();
            $form->image('smallimage')->uniqueName()->required();
            $form->multipleImage('image')->saving(function ($paths) {
                // 可以转化为由 , 隔开的字符串格式
                // return implode(',', $paths);
                // 也可以转化为json
                return json_encode($paths);
            })->uniqueName();
//            $form->text('sold_count');
            $form->text('price')->required();
            $form->text('promotionprice')->required();

//            $form->text('stock')->required();
            $form->radio('recommended')->options(['1' => '是', '2'=> '否'])->default('1')->required();
            $form->radio('status')->options([1 => '上架', 2=> '下架'])->default('1')->required();
            // 去除整个工具栏内容
            $form->disableHeader();
            $form->display('created_at');
            $form->display('updated_at');
            $form->disableResetButton();
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->disableCreatingCheck();
        });
    }
}
