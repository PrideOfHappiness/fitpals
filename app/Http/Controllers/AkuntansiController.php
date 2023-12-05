<?php

namespace App\Http\Controllers;

use DateInterval;
use Illuminate\Http\Request;
use App\Models\Akuntansi;
use App\Models\KodeAkun;
use Carbon\Carbon;
use Str;

class AkuntansiController extends Controller
{
    public function index(){
        $akuntansi = Akuntansi::whereBetween('created_at', [Carbon::now()->subDays(30), Carbon::now()])->paginate(10);
        return view('akuntansi.index', compact("akuntansi"));
    }

    public function create(){
        $kodeAkun = KodeAkun::all();
        return view('akuntansi.create', compact('kodeAkun'));
    }

    public function store(Request $request){
        $this->validate($request, [
            'userID' => 'required',
            'deskripsi' => 'required',
            'debet' => 'required',
            'jumlah_debet' => 'required',
            'kredit' => 'required',
            'jumlah_kredit' => 'required',
        ]);

        $buat = $request->userID;
        $deskripsi = $request->deskripsi;
        $debet = $request->debet;
        $jumlah_debet = $request->jumlah_debet;
        $kredit = $request->kredit;
        $jumlah_kredit = $request->jumlah_kredit;

        $bulanIni = Carbon::now()->endOfMonth();
        $bulanTerakhir = Carbon::now()->subMonth()->startOfMonth();
        $data = Akuntansi::whereBetween('created_at', [$bulanTerakhir, $bulanIni])->count();

        if($data == 0){
            $urut = '0001';
        }elseif($data > 0 && $data < 10){
            $urut = '000' . $data;
        }elseif($data >= 10 && $data < 100){
            $urut = '00' . $data;
        }elseif($data >= 100 && $data < 1000){
            $urut = '0' . $data;
        }else{
            $urut = $data;
        }

        $bulanIni2 = $bulanIni->translatedFormat('F');
        if($bulanIni2){
            $bulan = strtoupper(substr($bulanIni2, 0, 3));
        }

        $acak = rand(1,9);
        $kode = 'AK' . $urut . $bulan . $acak;

        Akuntansi::create([
            'akunID' => $kode,
            'kodeID_debet' => $debet,
            'kodeID_kredit' => $kredit,
            'deskripsi' => $deskripsi,
            'jumlah_debet' => $jumlah_debet,
            'jumlah_kredit' => $jumlah_kredit,
            'user_input' => $buat,
        ]);

        return redirect()->route('akuntansi.index')
            ->with('success', 'Data Akuntansi ' . $kode . ' berhasil ditambahkan! ');
    }

    public function show($akunID){
        $akun = Akuntansi::find($akunID);
        return view('akuntansi.show', compact('akun'));
    }

    public function edit($akunID){
        $akun = Akuntansi::find($akunID);
        return view('akuntansi.edit', compact('akun'));
    }

    public function update(Request $request, $akunID){
        $akun = Akuntansi::find($akunID);

        $this->validate($request, [
            'userID' => 'required',
            'deskripsi' => 'required',
            'debet' => 'required',
            'jumlah_debet' => 'required',
            'kredit' => 'required',
            'jumlah_kredit' => 'required',
        ]);

        $kode = $akun->get('akunID');
        $buat = $request->userID;
        $deskripsi = $request->deskripsi;
        $debet = $request->debet;
        $jumlah_debet = $request->jumlah_debet;
        $kredit = $request->kredit;
        $jumlah_kredit = $request->jumlah_kredit;

        $akun->update([
            'kodeID_debet' => $debet,
            'kodeID_kredit' => $kredit,
            'deskripsi' => $deskripsi,
            'jumlah_debet' => $jumlah_debet,
            'jumlah_kredit' => $jumlah_kredit,
            'user_ubah' => $buat,
            'token_ubah_data_akun' => Str::random(20),
        ]);

        return redirect()->route('akuntansi.index')
            ->with('success', 'Data Akuntansi ' . $kode . ' berhasil ditambahkan! ');
    }

    public function destroy(Request $request, $akunID){
        
    }

}

