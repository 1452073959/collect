<?php

namespace App\Admin\Controllers;

use App\Models\Push;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class PushController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Push(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->title;
            $grid->content;
            $grid->created_at;
//            $grid->updated_at->sortable();
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
        
            });
            // 禁用详情按钮
            $grid->disableViewButton();
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
        return Show::make($id, new Push(), function (Show $show) {
            $show->id;
            $show->title;
            $show->content;
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
        return Form::make(new Push(), function (Form $form) {
            $form->display('id');
            $form->text('title');
            $form->textarea('content');
        
            $form->display('created_at');
            $form->display('updated_at');
            $form->disableResetButton();
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->disableCreatingCheck();
        });
    }
}
