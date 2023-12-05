<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LatihanSpesialisasi;
use Str;
use App\Models\Trainer;
use App\Models\Latihan;

class LatihanSpesialisasiController extends Controller
{
    public function index(){
        $latihanSpesialisasi = LatihanSpesialisasi::paginate(20);
        return view('latihanSpesialisasi.index', compact('latihanSpesialisasi'));
    }

    public function create(){
        $trainer = Trainer::all();
        $latihan = Latihan::all();
        return view('latihanSpesialisasi.create', compact('trainer', 'latihan'));
    }

    public function store(Request $request){
        $this->validate($request, [
            'trainer' => 'required',
            'latihan' => 'required',
        ]);

        $trainer = $request->trainer;
        $latihan = $request->latihan;

        $kode = Str::random(10);

        LatihanSpesialisasi::create([
            'spesialisasiID' => $kode,
            'trainerID' => $trainer,
            'latihanID' => $latihan,
        ]);

        return redirect()->route('latihanSpesialisasi.index')
        ->with('success', 'Data berhasil ditambahkan!');
    }

    public function show($spesialisasiID){
        $spesialisasi = LatihanSpesialisasi::find($spesialisasiID);
        return view('latihanSpesialisasi.show', compact('spesialisasi'));
    }

    public function edit($spesialisasiID){
        $spesialisasi = LatihanSpesialisasi::find($spesialisasiID);
        return view('latihanSpesialisasi.show', compact('spesialisasi'));
    }

    public function update(Request $request, $spesialisasiID){

    }

    public function destroy(Request $request, $spesialisasiID){
        
    }

}
