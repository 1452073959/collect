<?php

namespace App\Admin\Controllers;

use App\Models\About;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class AboutController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new About(), function (Grid $grid) {
//            $grid->id->sortable();
            $grid->name;
//            $grid->image;
//            $grid->content;
            $grid->tel;
            $grid->disableDeleteButton();
//            $grid->disableEditButton();
            $grid->disableQuickEditButton();
            //关闭新增按钮
            $grid->disableCreateButton();
            $grid->disableViewButton();
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
        return Show::make($id, new About(), function (Show $show) {
            $show->id;
            $show->name;
            $show->image;
            $show->content;
            $show->tel;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new About(), function (Form $form) {
            // 去除整个工具栏内容
            $form->disableHeader();
            $form->display('id');
            $form->text('name');
            $form->image('image')->uniqueName();
            $form->textarea('content');
            $form->mobile('tel');

            $form->disableResetButton();
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->disableCreatingCheck();
        });
    }
}
