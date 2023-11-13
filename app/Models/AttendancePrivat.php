<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttendancePrivat extends Model
{
    use HasFactory;
    protected $table = 'attendance_privat';
    protected $primaryKey = 'attendancePrivatID';
    protected $fillable = [
        'attendanceprivatID',
        'userID',
        'kelasID',
        'datetime_masuk',
        'datetime_kelas_masuk',
        'datetime_keluar',
        'datetime_kelas_keluar',
        'attendance_token',,
    ];
    public function getUserIDAttendancePrivat(){
        return $this->belongsTo(User::class,'userID','userID');
    }
    public function getKelasIDAttendancePrivat(){ 
        return $this->belongsTo(Kelas::class,'kelasID','kelasID');
    }
}
