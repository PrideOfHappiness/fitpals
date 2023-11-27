<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ruang;
use App\Models\Location;

class RuangController extends Controller
{
    public function index(){
        $ruang = Ruang::paginate(20);
        return view("ruang.index",compact("ruang"));
    }

    public function create(){
        $data = Location::selectRaw("locationID, namaLokasi")->get();
        return view("ruang.create",compact("data"));
    }

    public function store(Request $request){
        $this->validate($request,[
            'name' => 'required',
            'lokasi' => 'required',
            'kapasitas' => 'required',
            'fasilitas' => 'required',
        ]);

        $nama = $request->name;
        $location = $request->lokasi;
        $kapasitas = $request->kapasitas;
        $fasilitas = $request->fasilitas;
        $jumlah = Location::count();
        $cekData = Ruang::where([['namaRuang', $nama],['locationID', $location]])->exists();

        if($cekData){
            return view('ruangan.index')
                ->with('error','Data sudah tersedia!');
        }else{
            if(!$cekData && $jumlah == 0){
                $pertama = 'R';
                $kedua = $location[2];
                $ketiga = $nama[0];
                $offset = $jumlah % 26;
                $data = chr($offset + 65);
                $angka = '000001';
                $kode = $pertama.$kedua.$ketiga.$data.$angka;
            }else{
                $pertama = 'R';
                $kedua = $location[2];
                $ketiga = $nama[0];
                $offset = $jumlah % 26;
                $data = chr($offset + 65);
                $angka = $jumlah + 1;
                if($angka > 0 && $angka < 10){
                    $angka2 = '00000'. $angka;
                }elseif($angka >= 10 && $angka <100){
                    $angka2 = '0000'. $angka;
                }elseif($angka >= 100 && $angka < 1000){
                    $angka2 = '000'. $angka;
                }elseif($angka >= 1000 && $angka < 10000){
                    $angka2 = '00'. $angka;
                }elseif($angka >= 10000 && $angka < 100000){
                    $angka2 = '0'. $angka;
                }else{
                    $angka2 = $angka;
                }
                $kode = $pertama.$kedua.$ketiga.$data.$angka2;
            }   

            $ruang = Ruang::create([
                'ruangID' => $kode,
                'locationID' => $location,
                'namaRuang' => $nama,
                'kapasitas' => $kapasitas,
                'fasilitas' => $fasilitas,
            ]);   
            
            return redirect()->route('ruangan.index')
                ->with('success', 'Data Ruang ' . $nama . ' berhasil dimasukkan!');
        }
    }

    public function show($ruangID){
        $ruangan = Ruang::find($ruangID);
        $data = Ruang::where('ruangID', $ruangID)->get('namaRuang');
        return view('ruang.show', compact('ruangan', 'data'));
    }

    public function edit($ruangID){
        $ruangan = Ruang::find($ruangID);
        return view('ruang.edit', compact('ruangan'));
    }

    public function update(Request $request, $ruangID){
        $this->validate($request,[
            'name' => 'required',
            'lokasi' => 'required',
            'kapasitas' => 'required',
            'fasilitas' => 'required',
        ]);

        $ruangan = Ruang::find($ruangID);

        $kode = $request->kode;
        $nama = $request->name;
        $location = $request->lokasi;
        $kapasitas = $request->kapasitas;
        $fasilitas = $request->fasilitas;

        $ruangan->update([
            'ruangID' => $kode,
            'locationID' => $location,
            'namaRuang' => $nama,
            'kapasitas' => $kapasitas,
            'fasilitas' => $fasilitas,
        ]);

        return redirect()->route('ruangan.index')->with('success','Data berhasil diubah!');
    }

    public function destroy(Request $request, $ruangID){
        $ruang = Ruang::find($ruangID);
        $ruang->delete();
        return redirect()->route('ruangan.index')->with('success','Data berhasil dihapus!');
    }
}
