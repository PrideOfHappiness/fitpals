<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trainer extends Model
{
    use HasFactory;

    protected $table = 'trainer';

    protected $primaryKey = 'trainerID';
    public $incrementing = false;

    protected $fillable = [
        'trainerID',
        'userID',
        'jenis',
    ];

    public function getUserIDTrainer(){
        return $this->belongsTo(User::class,'userID', 'userID');
    }
    public function setTrainerIDKelas(){
        return $this->hasMany(Kelas::class, 'trainerID', 'kelasID');
    }

    public function setTrainerIDKelas2(){
        return $this->hasMany(Trainer::class,'trainerID2','kelasID');
    }

    public function setTrainerIDKelas3(){
        return $this->belongsTo(Trainer::class,'trainerID3','kelasID');
    }

    public function setTrainerIDLatihan(){
        return $this->hasMany(LatihanSpesialisasi::class, 'trainerID', 'spesialisasiID');
    }
}
