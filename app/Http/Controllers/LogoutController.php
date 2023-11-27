<?php

namespace App\Http\Controllers;

use App\Events\UserLoggedOut;
use Illuminate\Http\Request;
use Auth;

class LogoutController extends Controller
{
    public function logout(Request $request){
        $user = Auth::user();
        if($user){
            event(new UserLoggedOut($user));
        }
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        Auth::logout();
        return redirect('/login');
    }
}
