<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Akuntansi extends Model
{
    use HasFactory;
    protected $table = 'akuntansi';
    protected $primaryKey ='akunID';
    protected $fillable = [
        'akunID',
        'kodeID_debet',
        'kodeID_kredit',
        'deskripsi',
        'jumlah_debet',
        'jumlah_kredit',
        'user_input',
        'user_ubah',
    ];
    public function getKodeAkunDebet(){
        return $this->belongsTo(KodeAkun::class,'kode_debet');
    }
    public function getKodeAkunKredit(){
        return $this->belongsTo(KodeAkun::class,'kode_kredit');
    }
    public function getUserID_buat(){
        return $this->belongsTo(User::class,'user_input');
    }
    public function getUserID_ubah(){
        return $this->belongsTo(User::class,'user_ubah');
    }
}
