<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LatihanSpesialisasi extends Model
{
    use HasFactory;
    protected $table = 'latihan_spesialisasi';
    protected $primaryKey = 'spesialisasiID';
    protected $fillable = [
        'spesialisasiID',
        'trainerID',
        'latihanID',
    ];

    public function getTrainerID_latihan(){
        return $this->belongsTo(Trainer::class,'trainerID','trainerID');
    }
    public function getLatihanID_latihan(){
        return $this->belongsTo(Latihan::class,'latihanID','latihanID');
    }
}
