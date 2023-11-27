<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AboutUs;
use App\Models\Location;

class AboutUsController extends Controller
{
    public function index(){
        $cekData = AboutUs::count();
        if($cekData == 0){
            return view('aboutUs.index0');
        }else{
            $aboutUs = AboutUs::orderBy("created_at","asc")->paginate(10);
            return view('aboutUs.index', compact('aboutUs'));
        }
    }

    public function create(){
        $location = Location::selectRaw("locationID, namaLokasi")->get();
        $alamat = Location::where('locationID', $location)->get('alamat');
        return view('aboutUs.create', compact('location', 'alamat'));
    }

    public function store(Request $request){
        $this->validate($request, [
            'lokasi' => 'required',
            'deskripsi' => 'required',
            'logo' => 'required|mimes:jpg,jpeg,png|max:2048',
        ]);

        $location = $request->lokasi;
        $alamat = Location::where('locationID', $location)->get('alamat');
        $deskripsi = $request->deskripsi;

        $pertama = 'AU';
        $acak = rand(1,25);
        $alfabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'][$acak];       
        $kedua = $alfabet;
        $angka = rand(1000000,9999999);
        $kode = $pertama.$kedua.$angka;

        if($request->hasFile('logo')){
            $file = $request->file('logo');
            $namaFile = $file->getClientOriginalName();
            $file->move('foto/gym/', $file->getClientOriginalName());

            $aboutUs = AboutUs::create([
                'aboutUsID' => $kode,
                'locationID' => $location,
                'deskripsi' => $deskripsi,
                'foto_gym' => $namaFile,
            ]);
        }

        return redirect()->route('aboutUs.index')->with('success','Data berhasil ditambahkan!');

    }

    public function show($aboutUsID){
        $aboutUs = AboutUs::find($aboutUsID);
        return view('aboutUs.show', compact('aboutUs'));
    }
}
