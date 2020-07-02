<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Controller;
use App\Models\About;
use App\Models\Help;
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
}
