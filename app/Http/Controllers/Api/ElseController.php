<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\About;
use App\Models\Help;
use App\Models\User;
use Illuminate\Http\Request;

class ElseController extends Controller
{
    //

    public function help()
    {
        $help=Help::first();
        return $this->success($help);
    }

    public function about()
    {
        $about=About::first();
        return $this->success($about);
    }
    //我的上级
    public function up()
    {
        $user = auth('api')->user();
        $up=User::with('up')->where('id',$user['id'])->get();
        return $this->success($up);
    }
    //我的下级

    public function down()
    {
        $user = auth('api')->user();
        $up=User::with('down')->where('id',$user['id'])->get();
        return $this->success($up);
    }
}
