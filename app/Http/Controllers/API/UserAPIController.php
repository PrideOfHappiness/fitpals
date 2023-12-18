<?php

namespace App\Http\Controllers\API;

use Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Models\User;

class UserAPIController extends Controller
{
    public function index(){
        $users = User::all();
        return UserResource::collection($users);
    }

    public function store(Request $request){

    }

    public function update(Request $request, User $user, $userID){
        $user = Auth::user();
        
    }

    public function destroy(User $user){
       
    }
}
