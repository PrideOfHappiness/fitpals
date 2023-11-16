<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Session;

class LogoutController extends Controller
{
    public function logout(Request $request){
        Session::flush();
        Auth::logout();
        return view('auth.login');
    }
}
