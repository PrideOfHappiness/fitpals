<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Promo;

class PromoController extends Controller
{
    public function index(){
        $promo = Promo::paginate(20);
        return view('promo.index', compact('promo'));
    }

    public function create(){
        return view('promo.create');
    }

    public function store(Request $request){
        
    }
}
