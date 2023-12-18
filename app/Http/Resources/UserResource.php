<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\LokasiResources;
use App\Http\Resources\FotoUsersResources;
use App\Models\User;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $status = $request->query('status');
        $message = $request->query('message');
        $users = User::with('locationID')->whereHidden('password')->get();
        return [
            'id' => $this->userID,
            'nama' => $this->nama,
            'alamat' => $this->alamat,
            'no_telp' => $this->no_telp,
            'email' => $this->email,
            'kategori' => $this->kategori,
            'referral_code' => $this->referral_code,
            'lokasi' => new LokasiResources($this->getLocationIDUsers),
            'foto' => FotoUsersResources::collection($this->setUserIDFoto),
            'status' => $status,
            'message' => $message,
        ];
    } 
}
