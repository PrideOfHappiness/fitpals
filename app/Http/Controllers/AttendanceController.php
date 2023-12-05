<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attendance;
use App\Models\CodeQR;
use App\Models\User;
use Str;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Auth;
use Carbon\Carbon;

class AttendanceController extends Controller
{
    public function index(){
        $attendance = Attendance::where('userID', Auth::user()->userID)->paginate(20);   
        return view('attendance.index', compact('attendance'));
    }

    public function generate(Request $request){
        $clientIP = $request->getClientIp();
        $data = Auth::user()->userID;
        $kode = strtoupper(Str::random(10));

        Attendance::create([
            'attendanceID' => $kode,
            'userID' => $data,
            'datetime_masuk' => Carbon::now(),
            'attendance_token' => Str::random(100),
        ]);

        return redirect('/absensi')
            ->with('success', 'Data absensi berhasil dicatat!'); 
    }

    public function keluar(Request $request, $attendanceID){
        $attendance = Attendance::find($attendanceID);
        $attendance->update([
            'datetime_keluar' => Carbon::now(),
        ]);
        return redirect('/absensi')
            ->with('success', 'Data waktu keluar berhasil dicatat!');
    }

    
    
    
}
