<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;
use App\Models\User;

class MemberController extends Controller
{
    public function index(){
        $member = Member::orderBy('memberID')->paginate(20);
        return view('member.index',compact('member'));
    }

    public function create(){
        $data = $data = User::where('kategori', '=', 'Member')->get();
        return view('member.create',compact('data'));
    }

    public function store(Request $request){

    }

    public function show($memberID){
        $member = Member::find($memberID);
        return view('member.show',compact('member'));
    }

    public function edit($memberID){
        $member = Member::find($memberID);
        return view('member.edit',compact('member'));
    }

    public function update(Request $request, $memberID){
        $member = Member::find($memberID);
    }

    public function destroy($memberID){
        $member = Member::find($memberID);
    }

    public function searchMember(){

    }
}
