<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promo extends Model
{
    use HasFactory;
    protected $table = 'promo';
    protected $primaryKey = 'promoID';
    protected $fillable = [
        'promoID',
        'userID_pembuat',
        'userID_penerima',
        'kode_promo',
        'nama_promo',
        'deskripsi',
        'tanggal_mulai',
        'tanggal_akhir',
    ];

    public function getUserID_promo1(){
        return $this->belongsTo(User::class,'userID_pembuat', 'userID');
    }
    public function getUserID_promo2(){
        return $this->belongsTo(User::class,'userID_userID_penerima', 'userID');
    }
}
