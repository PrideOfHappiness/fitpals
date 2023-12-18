<?php

namespace App\Http\Controllers;

use App\Models\Location;
use Illuminate\Http\Request;
use App\Models\Akuntansi;
use App\Models\KodeAkun;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf as PDF;
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

    public function pilihTanggalDownload(){
        return view('laporanKeuangan.pilihTanggal');
    }

    public function download(Request $request){
        set_time_limit(300);
        $location = Auth::user()->locationID;
        $locationNama = Location::where('locationID', $location)->pluck('namaLokasi');
        $locationAlamat = Location::where('locationID', $location)->pluck('alamat');
        $locationTelp = Location::where('locationID', $location)->pluck('no_telp');
        $bulan = $request->bulan;
        $tahun = $request->tahun;

        $kodeAkun = KodeAkun::all();
        $data = [];
    
        foreach($kodeAkun as $acc){
            $kodeAkunDebet = Akuntansi::where('kodeID_debet', $acc->kode_akun)->sum('jumlah_debet');
            $kodeAkunKredit = Akuntansi::where('kodeID_kredit', $acc->kode_akun)->sum('jumlah_kredit');
            $totalDebet =  Akuntansi::sum('jumlah_debet');
            $totalKredit = Akuntansi::sum('jumlah_kredit');

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
                'saldo_debet' => 'Rp'.number_format($totalDebet, 0, ',', '.'),
                'saldo_kredit' => 'Rp'.number_format($totalKredit, 0, ',', '.'),
            ];
        }
 
        $pdf = PDF::loadView('laporanKeuangan.laporanKeuangan', compact('laporanKeuangan', 'bulan', 'tahun', 
                            'locationNama', 'locationAlamat', 'locationTelp'));
        return $pdf->download('laporanKeuangan Bulan ' . $bulan . ' Tahun ' . $tahun. '.pdf');
    }
}