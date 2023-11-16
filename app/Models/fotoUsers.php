<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fotoUsers extends Model
{
    use HasFactory;

    protected $table = 'foto_users';

    protected $fillable = [
        'userID',
        'namaFile',
    ];

    public function userIDFoto(){
        return $this->belongsTo(User::class, 'userID', 'userID');
    }
}
