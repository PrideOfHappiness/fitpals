<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trainer extends Model
{
    use HasFactory;

    protected $table = 'trainer';

    protected $primaryKey = 'trainerID';

    protected $fillable = [
        'trainerID',
        'userID',
        'jenis',
    ];

    public function setUserID_trainer(){
        return $this->belongsTo(User::class,'user_id', 'userID');
    }
    public function setTrainerID_kelas(){
        return $this->hasMany(Kelas::class, 'trainerID', 'kelasID');
    }
    public function setTrainerID_latihan(){
        return $this->hasMany(LatihanSpesialisasi::class, 'trainerID', 'spesialisasiID');
    }
}
