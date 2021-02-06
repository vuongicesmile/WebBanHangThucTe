<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function loginAdmin()
    {
        return view('login');
    }
    public function postloginAdmin(Request $request)
    {
//        dd($request->has('remember-me'));
        $remember = $request->has('remember-me') ? true:false;
        if(auth()->attempt([
            'email' =>$request->email,
            'password' =>$request->password
        ],$remember)) {
            return redirect()->to('home');
        }
    }
}
