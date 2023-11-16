<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Location;

class LokasiController extends Controller
{
    public function index(){
        return view('lokasi.index');
    }

    public function create(){
        return view('lokasi.create');
    }

    public function store(Request $request){
        
    }
}
