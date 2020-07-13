<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Category;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CategoryController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Category(), function (Grid $grid) {
//            $grid->id->sortable();
            $grid->text->tree();
// 禁用过滤器按钮
            $grid->disableFilterButton();
            //关闭新增按钮
//            $grid->disableCreateButton();
            $grid->disableDeleteButton();
            // 禁用详情按钮
            $grid->disableViewButton();
//            $grid->parent_id;
//            $grid->is_directory;
//            $grid->level;
//            $grid->path;
            $grid->created_at;
            $grid->updated_at->sortable();
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
        
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
        return Show::make($id, new Category(), function (Show $show) {
            $show->id;
            $show->text;
            $show->parent_id;
            $show->is_directory;
            $show->level;
            $show->path;
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
        return Form::make(new Category(), function (Form $form) {

//            $form->display('id');
//            $form->text('cid');
            $form->text('text');
            $form->select('parent_id','所属分类')->options(config('app.url').'/api/productcate')->customFormat(function ($value) {
                if ($value === null) {
                    return '0';
                }
                return $value;
            })->help('留空为顶级分类');;
            $form->image('image','分类图片')->uniqueName()->required();
            $form->disableResetButton();
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->disableCreatingCheck();
        });
    }


}
