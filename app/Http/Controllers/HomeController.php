<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TrafficLogin;
use App\Models\Akuntansi;
use App\Models\Kelas;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function adminHome(){
        $kodeDebet = Akuntansi::all()->groupBy('kodeID_debet');
        $kodeKredit = Akuntansi::all()->groupBy('kodeID_kredit');
        $pemasukkan = 0;
        $pengeluaran = 0;
        //Cek Angka Pertama
        if(substr($kodeDebet, 0, 1) == '1' || substr($kodeKredit, 0, 1) =='4' || substr($kodeKredit, 0, 1) =='3'){
            
        }
        $profitabilitas = $pemasukkan - $pengeluaran;
        $traffic = TrafficLogin::groupBy('userID')->count();
        return view('dashboard.admin', compact('traffic', 'pemasukkan', 'pengeluaran', 'profitabilitas'));
    }

    public function karyawanHome(){
        return view('dashboard.karyawan');
    }

    public function superAdminHome(){

    }
}
