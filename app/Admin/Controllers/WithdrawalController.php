<?php

namespace App\Admin\Controllers;

use App\Models\Withdrawal;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class WithdrawalController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Withdrawal(), function (Grid $grid) {
            $grid->model()->with(['user']);
            $grid->id->sortable();
            $grid->column('user.nickname','昵称');
            $grid->name;
            $grid->card;
            $grid->bank;
            $grid->moeny;
            $grid->mannumber;
            $grid->phone;
            $grid->status;
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
        return Show::make($id, new Withdrawal(), function (Show $show) {
            $show->id;
            $show->name;
            $show->card;
            $show->bank;
            $show->moeny;
            $show->mannumber;
            $show->phone;
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
        return Form::make(new Withdrawal(), function (Form $form) {
            $form->display('id');
            $form->text('name');
            $form->text('card');
            $form->text('bank');
            $form->text('moeny');
            $form->text('mannumber');
            $form->text('phone');
            $form->text('status');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
