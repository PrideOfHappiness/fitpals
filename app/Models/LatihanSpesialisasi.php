<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LatihanSpesialisasi extends Model
{
    use HasFactory;
    protected $table = 'latihan_spesialisasi';
    protected $primaryKey = 'spesialisasiID';
    public $incrementing = false;
    protected $fillable = [
        'spesialisasiID',
        'trainerID',
        'latihanID',
    ];

    public function getTrainerIDLatihan(){
        return $this->belongsTo(Trainer::class,'trainerID','trainerID');
    }
    public function getLatihanIDLatihan(){
        return $this->belongsTo(Latihan::class,'latihanID','latihanID');
    }
}
