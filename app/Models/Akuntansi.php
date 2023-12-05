<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Akuntansi extends Model
{
    use HasFactory;
    protected $table = 'akuntansi';
    protected $primaryKey ='akunID';
    public $incrementing = false;
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
        return $this->belongsTo(KodeAkun::class,'kodeID_debet', 'kode_akun');
    }
    public function getKodeAkunKredit(){
        return $this->belongsTo(KodeAkun::class,'kodeID_kredit', 'kode_akun');
    }
    public function getUserIDBuat(){
        return $this->belongsTo(User::class,'user_input', 'userID');
    }
    public function getUserID_ubah(){
        return $this->belongsTo(User::class,'user_ubah', 'userID');
    }

    public function hitungDebet($akuntansi){
        if ($akuntansi->kodeID_debet == $akuntansi->kodeID_kredit) {
            return 0;
        } else if ($akuntansi->kodeID_debet > $akuntansi->kodeID_kredit) {
            return $akuntansi->jumlah_debet;
        } else {
            return -$akuntansi->jumlah_kredit;
        }
    }

    public function hitungKredit($akuntansi){
        if ($akuntansi->kodeID_debet == $akuntansi->kodeID_kredit) {
            return 0;
        } else if ($akuntansi->kodeID_debet < $akuntansi->kodeID_kredit) {
            return $akuntansi->jumlah_debet;
        } else {
            return -$akuntansi->jumlah_kredit;
        }
    }

    public function aturDebetKredit($akuntansi){
        if ($akuntansi->kodeID_debet == $akuntansi->kodeID_kredit) {
            return;
        }

        $kodeAkun = KodeAkun::where('kodeID', $akuntansi->kodeID_debet)->first();
        

        if ($akuntansi->kodeID_debet > $akuntansi->kodeID_kredit) {
            $akuntansi->jumlah_debet = -$akuntansi->jumlah_debet;
        }else {
            $akuntansi->jumlah_kredit = -$akuntansi->jumlah_kredit;
        }
        $akuntansi->save();
    }
}
