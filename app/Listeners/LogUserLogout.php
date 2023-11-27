<?php

namespace App\Listeners;

use App\Events\UserLoggedOut;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\TrafficLogin;

class LogUserLogout
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(UserLoggedOut $event)
    {
        TrafficLogin::create([
            'userID' => $event->userId->userID,
            'logout' => now(),
        ]);
    }
}
