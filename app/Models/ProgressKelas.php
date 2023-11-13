<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgressKelas extends Model
{
    use HasFactory;
    protected $table = 'progress_kelas';
    protected $primaryKey = 'progressID';
    protected $fillable = [
        'progressID',
        'userID',
        'kelasID',
        'kriteria',
        'nilai',
    ];

    public function getUserIDProgress(){
        return $this->belongsTo(User::class,'userID','userID');
    }
    public function getKelasIDProgress(){
        return $this->belongsTo(Kelas::class,'kelasID','kelasID');
    }
    public function getKriteriaIDProgress(){
        return $this->belongsTo(KriteriaLaporan::class, 'kriteriaID', 'KriteriaID');
    }
    public function setProgressIDFoto(){
        return $this->hasMany(FotoProgress::class,'progressID','fotoID');
    }
}
