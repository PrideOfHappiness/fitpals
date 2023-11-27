<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Models\TrafficLogin;
use Carbon\Carbon;
use Auth;

class LogLogout
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::check()){
            $user = Auth::user();
            TrafficLogin::where('userID', $user->userID)->create([
                'logout' => Carbon::now()->format('d-m-Y H:i:s'),
            ]);
        }
        return $next($request);
    }
}
