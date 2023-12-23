<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CodeQR extends Model
{
    use HasFactory;
    protected $table = 'q_r_codes';
    protected $primaryKey = 'QRCode_code';
    public $incrementing = false;
    protected $fillable = [
        'QRCode_code',
        'userID',
        'kelasID',
        'status', 
        'data',
        'datetime_used',
        'namaFile',
    ];

    public function getCodeQRIDUsers(){
        return $this->belongsTo(User::class,'userID', 'userID');
    }

    public function getCodeQRIDKelas(){
        return $this->belongsTo(Kelas::class,'kelasID', 'kelasID');
    }
}
