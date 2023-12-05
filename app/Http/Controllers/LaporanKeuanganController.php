<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Akuntansi;
use App\Models\KodeAkun;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use Auth;

class LaporanKeuanganController extends Controller
{
    public function index(){
        $kodeAkun = KodeAkun::all();
        $laporanKeuangan = [];

        foreach($kodeAkun as $acc){
            $kodeAkunDebet = Akuntansi::where('kodeID_debet', $acc->kode_akun)->sum('jumlah_debet');
            $kodeAkunKredit = Akuntansi::where('kodeID_kredit', $acc->kode_akun)->sum('jumlah_kredit');

            if($kodeAkunDebet != "" && $kodeAkunKredit != ""){
                if($kodeAkunDebet > $kodeAkunKredit){
                    $kodeAkunDebet = $kodeAkunDebet - $kodeAkunKredit;
                    $kodeAkunKredit = 0;
                }elseif($kodeAkunKredit > $kodeAkunDebet){
                    $kodeAkunKredit = $kodeAkunKredit - $kodeAkunDebet;
                    $kodeAkunDebet = 0;
                }
            }
            $laporanKeuangan[] = [
                'kode_akun' => $acc->kode_akun,
                'nama_akun' => $acc->nama_akun,
                'total_debet' => 'Rp'.number_format($kodeAkunDebet, 0, ',', '.'),
                'total_kredit' => 'Rp'.number_format($kodeAkunKredit, 0, ',', '.'),
            ];
        }
        return view('laporanKeuangan.index', compact('laporanKeuangan'));
    }

    public function download(){
        $location = Auth::user()->locationID;
        $bulanIni = Carbon::now();
        $saatIni = $bulanIni->isoFormat('MMMM YYYY');
        $kodeAkun = KodeAkun::all();
        $laporanKeuangan = [];

        foreach($kodeAkun as $acc){
            $kodeAkunDebet = Akuntansi::where('kodeID_debet', $acc->kode_akun)->sum('jumlah_debet');
            $kodeAkunKredit = Akuntansi::where('kodeID_kredit', $acc->kode_akun)->sum('jumlah_kredit');

            if($kodeAkunDebet != "" && $kodeAkunKredit != ""){
                if($kodeAkunDebet > $kodeAkunKredit){
                    $kodeAkunDebet = $kodeAkunDebet - $kodeAkunKredit;
                    $kodeAkunKredit = 0;
                }elseif($kodeAkunKredit > $kodeAkunDebet){
                    $kodeAkunKredit = $kodeAkunKredit - $kodeAkunDebet;
                    $kodeAkunDebet = 0;
                }
            }
            $laporanKeuangan[] = [
                'kode_akun' => $acc->kode_akun,
                'nama_akun' => $acc->nama_akun,
                'total_debet' => 'Rp'.number_format($kodeAkunDebet, 0, ',', '.'),
                'total_kredit' => 'Rp'.number_format($kodeAkunKredit, 0, ',', '.'),
                'kepala' => Auth::user()->nama,
            ];
        }

        $data = Pdf::loadView('laporanKeuangan.laporanKeuangan', ['laporan' => $laporanKeuangan]);
        return $data->download('Surat Laporan Keuangan Fitpals.pdf');
    }
}