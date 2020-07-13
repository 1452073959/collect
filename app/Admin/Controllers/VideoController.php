<?php

namespace App\Admin\Controllers;

use App\Models\Video;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class VideoController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Video(), function (Grid $grid) {
//            $grid->id->sortable();
            // 禁用过滤器按钮
            $grid->disableFilterButton();
            $grid->title;
//            $grid->description;
            $grid->video->view('admin.video');
//            $grid->created_at;
            $grid->updated_at->sortable();
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
        
            });
            $grid->disableDeleteButton();
//            $grid->disableEditButton();
            $grid->disableQuickEditButton();
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
        return Show::make($id, new Video(), function (Show $show) {
            $show->id;
            $show->title;
            $show->description;
            $show->video;
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
        return Form::make(new Video(), function (Form $form) {
            $form->display('id');
            $form->text('title');
            $form->textarea('description');
            $form->file('video')->maxSize(102400)->uniqueName();;
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
