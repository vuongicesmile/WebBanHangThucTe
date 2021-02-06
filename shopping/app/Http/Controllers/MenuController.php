<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index()
    {
        return view('menu.index');
    }
    public function create()
    {
        return view('menu.add');
    }
}
