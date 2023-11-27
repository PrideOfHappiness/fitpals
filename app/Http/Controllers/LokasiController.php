<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Location;
use Str;

class LokasiController extends Controller
{
    public function index(){
        $location = Location::paginate(10);
        return view('lokasi.index', compact('location'));
    }

    public function create(){
        return view('lokasi.create');
    }

    public function store(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'alamat' => 'required',
            'telp' => 'required',
        ]);

        $namaGym = $request->name;
        $alamat = $request->alamat;
        $noTelp = $request->telp;

        $katapertama = 'LO';
        $cekData = Location::where('namaLokasi', $namaGym)->exists();
        if($cekData){
            return view('lokasi.index')
                ->with('error','Data sudah tersedia!');
        }else{
            $cekData2 = Location::count();
            $offset = $cekData2 % 26;
            $data = chr($offset + 65);
            $angka = rand(100, 999);
            $acak = strtoupper(Str::random(1));

            if($cekData2 == 0) {
                $pertama = '001';
            }elseif($cekData2 > 0 && $cekData2 < 100){
                if($cekData2 > 0 && $cekData2 < 10){
                    $pertama = '00' . $cekData2;
                }else{
                    $pertama = '0'.$cekData2;
                }
            }elseif($cekData2 > 100 && $cekData2 < 999){
                $pertama = $cekData2;
            }else{
                $pertama = rand(1, 999);
                if($pertama > 0 && $pertama < 10){
                        $pertama = '00' . $cekData2;
                }elseif($pertama >= 10  && $pertama < 100){
                        $pertama = '0'.$pertama;
                }else{
                    $pertama;
            }
        }
        $idLokasi = $katapertama.$data.$pertama.$acak.$angka;

        $location = Location::create([
            'locationID' => $idLokasi,
            'namaLokasi' => $namaGym,
            'alamat' => $alamat,
            'no_telp' => $noTelp,
        ]);

        return redirect()->route('lokasi.index')
                ->with('success', 'Data ' . $namaGym . ' berhasil dimasukkan!');
    }
}

    public function show($locationID){
        $location = Location::find($locationID);
        $nama = Location::where('locationID', $location->id)->get('namaLokasi');
        return view('lokasi.show', compact('location', 'nama'));
    }

    public function edit($locationID){
        $location = Location::find($locationID);
        return view('lokasi.edit', compact('location'));
    }

    public function update(Request $request, $locationID){
        $location = Location::find($locationID);
        $this->validate($request, [
            'name' => 'required',
            'alamat' => 'required',
            'telp' => 'required',
        ]);

        $idLokasi = $request->locationID;
        $namaGym = $request->name;
        $alamat = $request->alamat;
        $noTelp = $request->telp;

        $location = Location::update([
            'locationID' => $idLokasi,
            'namaLokasi' => $namaGym,
            'alamat' => $alamat,
            'no_telp' => $noTelp,
        ]);

        return redirect()->route('lokasi.index')
                ->with('success', 'Data ' . $namaGym . ' berhasil diubah!');
    }

    public function destroy($locationID){
        $location = Location::find($locationID);
        $location->delete();
        return redirect()->route('lokasi.index')
            ->with('success', 'Data Lokasi berhasil dihapus!');
    }

    public function searchLokasi(Request $request){
        
    }
}
