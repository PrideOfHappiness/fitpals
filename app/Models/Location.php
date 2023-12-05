<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    protected $table = 'locations';
    protected $primaryKey = "locationID";
    public $incrementing = false;

    protected $fillable = [
        'locationID',
        'namaLokasi',
        'alamat',
        'no_telp',
    ];

    public function setLocationIDRuang(){
        return $this->hasMany(Ruang::class,'locationID', 'ruangID');
    }

    public function setLocationIDAboutUs(){
        return $this->hasMany(AboutUs::class,'locationID', 'aboutUsID');
    }

    public function setLocationIDKelas(){
        return $this->hasMany(Kelas::class,'locationID', 'kelasID');
    }

    public function setLocationIDUsers(){
        return $this->hasMany(User::class,'locationID', 'userID');
    }

    public function setLocationIDTrainer(){
        return $this->hasMany(Trainer::class,'locationID', 'trainerID');
    }
}
