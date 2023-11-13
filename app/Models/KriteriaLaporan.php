<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KriteriaLaporan extends Model
{
    use HasFactory;
    protected $table = 'kriteria_laporran_kelas';
    protected $primaryKey ='kriteriaID';
    protected $fillable = [
        'kriteriaID',
        'namaKriteria',
    ];
    public function getKriteriaLaporan(){
        return $this->hasMany(ProgressKelas::class,'kriteria', 'progressID');
    }
}
