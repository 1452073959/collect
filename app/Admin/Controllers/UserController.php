<?php

namespace App\Admin\Controllers;

use App\Models\User;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class UserController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new User(), function (Grid $grid) {
            // 禁用批量删除按钮
            $grid->disableBatchDelete();

//            $grid->column('up','上级');
//            $grid->id->sortable();
            $grid->nickname;
            $grid->weapp_avatar->image();
//            $grid->sex;
//            $grid->birthday;
//            $grid->defaultaddress_id;
//            $grid->weapp_openid;
//            $grid->token;
            $grid->balance;
            $grid->model()->with(['up']);
            $grid->model()->with(['down']);
            $grid->column('up.nickname','用户上级');
//            $grid->column('bal','下级')->pluck('nickname')->map('nickname')->implode('-');;
//            $grid->pid;
//            $grid->created_at;
//            $grid->updated_at->sortable();
            // 禁用详情按钮
            //关闭操作
            $grid->disableActions();
            $grid->disableViewButton();
            //关闭新增按钮
            $grid->disableCreateButton();
            $grid->disableDeleteButton();
            $grid->filter(function (Grid\Filter $filter) {
//                $filter->equal('id');
                $filter->like('nickname', '昵称');
        
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
        return Show::make($id, new User(), function (Show $show) {
            $show->id;
            $show->nickname;
            $show->weapp_avatar;
            $show->sex;
            $show->birthday;
            $show->defaultaddress_id;
            $show->weapp_openid;
            $show->token;
            $show->notification_count;
            $show->balance;
            $show->pid;
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
        return Form::make(new User(), function (Form $form) {
//            $form->display('id');
            $form->text('nickname');
            $form->text('weapp_avatar');
            $form->text('sex');
            $form->text('birthday');
            $form->text('defaultaddress_id');
            $form->text('weapp_openid');
            $form->text('token');
            $form->text('notification_count');
            $form->text('balance');
            $form->text('pid');
            // 去除整个工具栏内容
            $form->disableHeader();
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
