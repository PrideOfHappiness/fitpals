<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class DashboardRoleCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(auth()->check()){
            $users = auth()->user();

            if($users->status === 'Admin'){
                return redirect('/admin/home');
            }elseif($users->status === 'Karyawan'){
                return redirect('/karyawan/home');
            }    
        }
        return redirect('/login');
    }
}
