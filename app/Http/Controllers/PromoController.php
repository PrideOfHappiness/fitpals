<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Promo;
use Carbon\Carbon;
use App\Models\User;
use Auth;
use Str;

class PromoController extends Controller
{
    public function index(){
        $promo = Promo::whereBetween('created_at', [Carbon::now()->subDays(30), Carbon::now()])->paginate(10);
        return view('promo.index', compact('promo'));
    }

    public function create(){
        $location = Auth::user()->locationID;
        $user = User::where('locationID', $location)->get();
        return view('promo.create', compact('user'));
    }

    public function store(Request $request){
        $this->validate($request, [
            'userID' => 'required',
            'locationID' => 'required',
            'kode' => 'required',
            'name' => 'required',
            'deskripsi' => 'required',
            'dataAwal' => 'required',
            'dataAkhir' => 'required',        
        ]);

        $userID = $request->userID;
        $locationID = $request->locationID;
        $kode = $request->kode;
        $nama = $request->name;
        $deskripsi = $request->deskripsi;
        $dataAwal = $request->dataAwal;
        $dataAkhir= $request->dataAkhir;

        $kode2 = strtoupper(Str::random(10));

        if($request->penerima != ""){
            Promo::create([
                'promoID' => $kode2,
                'locationID' => $locationID,
                'kode_promo' => $kode,
                'nama_promo' => $nama,
                'deskripsi' => $deskripsi,
                'tanggal_mulai' => $dataAwal,
                'tanggal_akhir' => $dataAkhir,
                'userID_penerima' => $request->penerima,
                'userID_pembuat' => $userID,
            ]);
        }else{
            Promo::create([
                'promoID' => $kode2,
                'locationID' => $locationID,
                'kode_promo' => $kode,
                'nama_promo' => $nama,
                'deskripsi' => $deskripsi,
                'tanggal_mulai' => $dataAwal,
                'tanggal_akhir' => $dataAkhir,
                'userID_pembuat' => $userID,
            ]);
        }

        return redirect()->route('promo.index')
            ->with('success', 'Data promo berhasil dibuat!');

    }

    public function show($promoID){
        $promo = Promo::find($promoID);
        return view('promo.show', compact('promo'));
    }

    public function edit($promoID){
        $promo = Promo::find($promoID);
        return view('promo.edit', compact('promo'));
    }

    public function update(Request $request, $promoID){
        $promo = Promo::find($promoID);

        $this->validate($request, [
            'kode' => 'required',
            'name' => 'required',
            'deskripsi' => 'required',
            'dataAwal' => 'required',
            'dataAkhir' => 'required', 
            
        ]);

        $kode = $request->kode;
        $nama = $request->name;
        $deskripsi = $request->deskripsi;
        $dataAwal = $request->dataAwal;
        $dataAkhir= $request->dataAkhir;

        if($request->penerima != ""){
            $promo->update([
                'kode_promo' => $kode,
                'nama_promo' => $nama,
                'deskripsi' => $deskripsi,
                'tanggal_mulai' => $dataAwal,
                'tanggal_akhir' => $dataAkhir,
                'userID_penerima' => $request->penerima,
            ]);
        }else{
            $promo->update([
                'kode_promo' => $kode,
                'nama_promo' => $nama,
                'deskripsi' => $deskripsi,
                'tanggal_mulai' => $dataAwal,
                'tanggal_akhir' => $dataAkhir,
            ]);
        }
        return redirect()->route('promo.index')
            ->with('success', 'Data promo berhasil diubah!');
    }

    public function destroy($promoID, Request $request){
        $promo = Promo::find($promoID);
        $promo->delete();
        return redirect()->route('promo.index')
            ->with('success', 'Data promo berhasil dihapus!');
    }
}
