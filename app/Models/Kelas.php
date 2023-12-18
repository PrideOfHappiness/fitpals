<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    use HasFactory;
    protected $table = 'kelas';
    protected $primaryKey = 'kelasID';
    public $incrementing = false;
    protected $fillable = [
        'kelasID',
        'trainerID',
        'trainerID2',
        'trainerID3',
        'ruangID',
        'id_pembuat',
        'id_otorisasi',
        'locationID',
        'nama_kelas',
        'hari_pelaksanaan',
        'jam_awal',
        'jam_akhir',
        'jenis_kelas',
        'kuota_peserta',
        'status',
    ];

    public function getTrainerIDKelas(){
        return $this->belongsTo(Trainer::class,'trainerID','trainerID');
    }

    public function getTrainerIDKelas2(){
        return $this->belongsTo(Trainer::class,'trainerID2','trainerID');
    }

    public function getTrainerIDKelas3(){
        return $this->belongsTo(Trainer::class,'trainerID3','trainerID');
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

    public function getlocationIDKelas(){
        return $this->belongsTo(Location::class,'locationID','locationID');
    }

    public function setKelasIDQRCode(){
        return $this->hasMany(CodeQR::class,'kelasID','QRCode_code');
    }

}
