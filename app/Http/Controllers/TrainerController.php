<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trainer;
use App\Models\User;
use Str;
use Auth;

class TrainerController extends Controller
{
    public function index(){
        $trainer = Trainer::paginate(10);
        return view('trainer.index', compact('trainer'));
    }

    public function create(){
        $data = User::where([['kategori', '=', 'Trainer'],['locationID', Auth::user()->locationID]])->get();
        return view('trainer.create', compact('data'));
    }

    public function store(Request $request){

        $location = Auth::user()->locationID;
        $userID = $request->input('name');
        $jenis = $request->input('jenis');
        $cekData = Trainer::where([['userID', $userID],['jenis', $jenis]])->exists();

        if($cekData){
            return view('trainer.index')
                ->with('error','Data sudah tersedia!');
        }else{
            if(in_array('Trainer', $jenis) && in_array('Personal Trainer', $jenis)){
                $pertama = 'TU';
                $angka1 = rand(100,999);
                $angka2 = rand(100,999);
                $acak = strtoupper(Str::random(1));
                $trainerID = $pertama.$angka1.$acak.$angka2;
                $trainer = Trainer::create([
                    'locationID' => $location,
                    'trainerID' => $trainerID,
                    'userID' => $userID,
                    'jenis' => 'Trainer',
                ]);
    
                $dataUmum = Trainer::where('userID', $userID)->first();
                if($dataUmum){
                    $pertama1 = 'TP';
                    $angka1 = rand(100,999);
                    $angka2 = rand(100,999);
                    $acak = strtoupper(Str::random(1));
                    $trainerID = $pertama1.$angka1.$acak.$angka2;
                    $trainer = Trainer::create([
                        'locationID' => $location,
                        'trainerID' => $trainerID,
                        'userID' => $userID,
                        'jenis' => 'Personal Trainer',
                    ]);
                }
            }elseif(in_array('Trainer',$jenis)){
                $pertama = 'TU';
                $angka1 = rand(100,999);
                $angka2 = rand(100,999);
                $acak = strtoupper(Str::random(1));
                $trainerID = $pertama.$angka1.$acak.$angka2;
                $trainer = Trainer::create([
                    'locationID' => $location,
                    'trainerID' => $trainerID,
                    'userID' => $userID,
                    'jenis' => 'Trainer',
                ]);
            }elseif(in_array('Personal Trainer',$jenis)){
                $pertama1 = 'TP';
                $angka1 = rand(100,999);
                $angka2 = rand(100,999);
                $acak = strtoupper(Str::random(1));
                $trainerID = $pertama1.$angka1.$acak.$angka2;
                $trainer = Trainer::create([
                    'locationID' => $location,
                    'trainerID' => $trainerID,
                    'userID' => $userID,
                    'jenis' => 'Personal Trainer',
                ]);
        }else{
            return view('trainer.index')
                    ->with('error','Status Trainer belum dipilih!');
        }
    }
    $trainer = Trainer::paginate(10);
    return view('trainer.index', compact('trainer'))
        ->with('success','Data sudah dimasukkan!');
}

    public function show($trainerID){
        $trainer = Trainer::find($trainerID);
        return view('trainer.show', compact('trainer'));
    }

    public function destroy(Request $request, $trainerID){
        $trainer = Trainer::find($trainerID);
        $trainer->delete();
        return view('trainer.index')
            ->with('success','Data sudah dihapus!');
    }

    public function searchTrainer(Request $request){
        $data = $request->cari;
        $data2 = $request->pencarian;
        $query = Trainer::query();

        if ($data && $data2) {
            $hasil = $query->whereHas('getUserIDTrainer', function($query) use($data){
                    $query->where('nama', 'LIKE', '%'. $data .'%');
                })
                ->where('jenis', $data2)
                ->get();
        } elseif ($data2) {
            $hasil = $query->where('jenis', $data2)->get();
        } elseif ($data) {
            $hasil = $query->whereHas('getUserIDTrainer', function($query) use($data){
                    $query->where('nama', 'LIKE', '%'. $data .'%');
                })
                ->get();
        }
        return view('trainer.hasil', compact('hasil'));
    }

}
