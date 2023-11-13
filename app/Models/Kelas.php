<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    use HasFactory;
    protected $table = 'kelas';
    protected $primaryKey = 'kelasID';
    protected $fillabbe = [
        'kelasID',
        'trainerID',
        'ruangID',
        'id_pembuat',
        'id_otorisasi',
        'nama_kelas',
        'jam_awal',
        'jam_akhir',
        'jenis_kelas',
        'kuota_peserta',
        'status',
    ];

    public function getTrainerIDKelas(){
        return $this->belongsTo(Trainer::class,'trainerID','trainerID');
    }

    public function getRuangIDKelas(){
        return $this->belongsTo(Ruang::class,'ruangID','ruangID');
    }
    public function getUserIDKelasPembuat(){
        return $this->belongsTo(User::class, 'id_pembuat','userID');
    }
    public function getUserIDKelasOtorisasi(){
        return $this->belongsTo(User::class, 'id_otorisasi','userID');
    }
    public function setKelasIDPesan(){
        return $this->hasMany(Kelas::class,'kelasID','pemesananID');
    }
    public function setKelasIDAttendance(){
        return $this->hasMany(Attendance::class,'kelasID','attendanceID');
    }
    public function setKelasIDAttendancePrivat(){
        return $this->hasMany(AttendancePrivat::class,'kelasID','attendancePrivatID');
    }
}
