<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Order;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class OrderController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Order(), function (Grid $grid) {
            $grid->model()->where('status',2)->orderBy('created_at', 'desc');
//            $grid->id->sortable();
            $grid->no;
            $grid->user_id;
//            $grid->address;
            $grid->total_amount;
//            $grid->remark;
            $grid->paid_at;
//            $grid->payment_no;
            $grid->status;
//            $grid->ship_data;
//            $grid->created_at;
//            $grid->updated_at->sortable();
        
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
        return Show::make($id, new Order(), function (Show $show) {
            $show->id;
            $show->no;
            $show->user_id;
            $show->address;
            $show->total_amount;
            $show->remark;
            $show->paid_at;
            $show->payment_no;
            $show->status;
            $show->ship_data;
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
        return Form::make(new Order(), function (Form $form) {
            $form->display('id');
            $form->text('no');
            $form->text('user_id');
            $form->text('address');
            $form->text('total_amount');
            $form->text('remark');
            $form->text('paid_at');
            $form->text('payment_no');
            $form->text('status');
            $form->text('ship_data');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
