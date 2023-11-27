<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TrafficLogin extends Model
{
    use HasFactory;

    protected $table = 'traffic_login';
    protected $fillable = [
        'userID',
        'login',
        'logout',
    ];

    public function getUserIDTraffic(){
        return $this->belongsTo(User::class,'userID', 'userID');
    }
}
