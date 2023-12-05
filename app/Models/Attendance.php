<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
    protected $table = "attendance";
    protected $primaryKey = 'attendanceID';
    public $incrementing = false;
    protected $fillable = [
        'attendanceID',
        'userID',
        'kelasID',
        'datetime_masuk',
        'datetime_kelas_masuk',
        'datetime_keluar',
        'datetime_kelas_keluar',
        'attendance_token',
    ];
    public function getUserIDAttendance(){
        return $this->belongsTo(User::class,'userID','userID');
    }
    public function getKelasIDAttendance(){ 
        return $this->belongsTo(Kelas::class,'kelasID','kelasID');
    }

}
