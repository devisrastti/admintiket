<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class HomeController extends Controller 
{
    function data () {
        return view ('tujuan');
    }
}