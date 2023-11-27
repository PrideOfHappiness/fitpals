<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Auth;
use App\Models\TrafficLogin;
use Carbon\Carbon;

class LogLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::check()) {
            $userId = Auth::user();
            TrafficLogin::create([
                'userID' => $userId->userID,
                'login' => Carbon::now(),
            ]);
        }
        $response =  $next($request);

        if(Auth::check()) {
            $userId = Auth::user();
            TrafficLogin::where('userID', $userId->userID)->create([
                'userID' => $userId->userID,
                'logout' => Carbon::now(),
            ]);
        }

        return $response;

    }
}
