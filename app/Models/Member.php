<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;
    protected $table = 'member';
    protected $primaryKey = 'memberID';

    protected $fillable = [
        'memberID',
        'userID',
        'masa_langganan',
        'tanggal_awal_langganan',
        'tanggal_akhir_langganan',
    ];

    public function userID_member(){
        return $this->belongsTo(User::class,'userID', 'userID');
    }
}
