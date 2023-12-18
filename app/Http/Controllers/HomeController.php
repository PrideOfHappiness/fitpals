<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TrafficLogin;
use App\Models\Akuntansi;
use App\Models\Kelas;
use App\Models\KodeAkun;
use App\Models\Attendance;
use Auth;
use Carbon\Carbon;

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
        $absensi = Attendance::where('userID', '=', Auth::user()->userID)->count();
        $traffic = TrafficLogin::groupBy('userID')->count();
        //Hitung pemasukkan, pengeluaran
        $start_date = Carbon::now()->startOfMonth()->toDateString();
        $end_date = Carbon::now()->endOfMonth()->toDateString();

        $transaksis = Akuntansi::whereBetween('created_at', [$start_date, $end_date])->get();
        $pemasukkan = 0;
        $pengeluaran = 0;

        foreach ($transaksis as $transaksi){
            if (strpos($transaksi->kodeID_kredit, '4') === 0 || $transaksi->kodeID_kredit === '301') {
                $pemasukkan += $transaksi->jumlah_kredit;
            }elseif(strpos($transaksi->kodeID_debet, '5') === 0){
                $pengeluaran += $transaksi->jumlah_debet;
            }elseif($transaksi->kodeID_debet === '302') {
                $pengeluaran += $transaksi->jumlah_debet;
            }elseif(in_array($transaksi->kodeID_debet, ['101', '102', '103'])){
                if(in_array($transaksi->kodeID_kredit, ['101', '102', '103']) != 0){
                    $pemasukkan += $transaksi->jumlah_debet - $transaksi->jumlah_kredit;
                }else{
                    $pemasukkan += $transaksi->jumlah_debet;
                }
            }
        }
        $profit = $pemasukkan - $pengeluaran;
        $profitabilitas = 'Rp'. number_format($profit, 0, ',', '.');
        $pemasukkan = 'Rp'. number_format($pemasukkan, 0, ',', '.');
        $pengeluaran = 'Rp'. number_format($pengeluaran, 0, ',', '.');
        return view('dashboard.admin', [
            'profitabilitas' => $profitabilitas,
            'pemasukkan' => $pemasukkan,
            'pengeluaran' => $pengeluaran,
            'traffic' => $traffic,
            'absensi' => $absensi,
        ]);
    }

    public function karyawanHome(){
        return view('dashboard.karyawan');
    }

    public function superAdminHome(){

    }
}
