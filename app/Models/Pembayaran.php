<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;
    protected $table = 'pembayaran';
    protected $primaryKey = 'pembayaranID';
    protected $fillable = [
        'pembayaranID',
        'userID',
        'salesID',
        'referral_code',
        'jumlah_bayar',
        'tanggal_bayar',
    ];

    public function getUserIDPembayaran(){
        return $this->belongsTo(User::class, 'userID', 'userID');
    }
    public function getUserIDSalesPembayaran(){
        return $this->belongsTo(User::class, 'salesID', 'userID');
    }
}
