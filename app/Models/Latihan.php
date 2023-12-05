<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Latihan extends Model
{
    use HasFactory;

    protected $table = 'latihan';

    protected $primaryKey = 'latihanID';
    public $incrementing = false;

    protected $fillable = [
        'latihanID',
        'namaLatihan',
    ];
    public function setLatihanIDLatihan(){
        return $this->hasMany(LatihanSpesialisasi::class,'latihanID','spesialisasiID');
    }
}
