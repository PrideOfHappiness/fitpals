<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Latihan;

class LatihanController extends Controller
{
    public function index(){
        $latihan = Latihan::orderBy("namaLatihan", "ASC")->paginate(20);
        return view('latihan.index', compact('latihan'));
    }

    public function create(){
        return view('latihan.create');
    }

    public function store(Request $request){
        $this->validate($request, [
            'name' => 'required',
        ]);

        $nama = $request->name;
        $cekData = Latihan::where('namaLatihan', $nama)->exists();
        if($cekData){
            return view('latihan.index')
                ->with('error','Data sudah tersedia!');
        }else{           
            $cekData2 = Latihan::count();
            $pertama = 'LTA';
            if($cekData2 == 0){
                $angka = '0000001';
                $kode = $pertama.$angka;
            }else{
                $angka = $cekData2 + 1;
                if($angka > 0 && $angka < 10){
                    $angka2 = '000000'. $angka;
                }elseif($angka >= 10 && $angka <100){
                    $angka2 = '00000'. $angka;
                }elseif($angka >= 100 && $angka < 1000){
                    $angka2 = '0000'. $angka;
                }elseif($angka >= 1000 && $angka < 10000){
                    $angka2 = '000'. $angka;
                }elseif($angka >= 10000 && $angka < 100000){
                    $angka2 = '00'. $angka;
                }elseif($angka > 100000 && $angka < 1000000){
                    $angka2 = '0'. $angka;
                }else{
                    $angka2 = $angka;
                }
                $kode = $pertama.$angka2;
            }
        }

        $latihan = Latihan::create([
            'latihanID' => $kode,
            'namaLatihan' => $nama,
        ]);

        return redirect()->route('latihan.index')
            ->with('success', 'Data Latihan ' . $nama . ' berhasil dimasukkan!'); 
    }

    public function show($latihanID){
        $latihan = Latihan::find($latihanID);
        return view('latihan.show', compact('latihan'));
    }

    public function destroy(Request $request, $latihanID){
        $latihan = Latihan::find($latihanID);
        $latihan->delete();
        return redirect()->route('latihan.index')
            ->with('success', 'Data Latihan berhasil dihapus!'); 
    }
}
