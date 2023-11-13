<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    use HasFactory;
    protected $table = 'pemesanan';
    protected $primaryKey = 'pemesananID';
    protected $fillable = [
        'pemesananID',
        'userID',
        'kelasID',
    ];

    public function getUserID_pesan(){
        return $this->belongsTo(User::class, 'userID', 'userID');
    }
    public function getUserKelasID_pesan(){
        return $this->belongsTo(Kelas::class, 'kelasID', 'kelasID');
    }
}
