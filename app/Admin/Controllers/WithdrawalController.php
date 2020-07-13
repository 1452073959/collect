<?php

namespace App\Admin\Controllers;

use App\Models\Withdrawal;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Layout\Content;
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
//            $grid->card;
//            $grid->bank;
            $grid->moeny;
//            $grid->mannumber;
//            $grid->phone;
            $grid->status->using([ 1 => '未拨款',2=>'已拨款'])->filter(
                Grid\Column\Filter\In::make([
                    1 => '未拨款',
                    2 => '已拨款',

                ])
            );;;;

            $grid->disableDeleteButton();
            $grid->disableEditButton();
            $grid->disableQuickEditButton();
            //关闭新增按钮
            $grid->disableCreateButton();
            $grid->filter(function (Grid\Filter $filter) {
//                $filter->equal('id');
                $filter->like('user.nickname', '昵称');
                $filter->like('name', '姓名');
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
    public  function show($id ,Content $content)
    {
        return $content->header('订单')
            ->description('详情')
            ->body(view('orders.money', ['money' => \App\Models\Withdrawal::find($id)]));
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
