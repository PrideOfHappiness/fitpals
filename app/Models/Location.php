<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    protected $table = 'locations';
    protected $primaryKey = "locationID";

    protected $fillable = [
        'locationID',
        'namaLokasi',
        'alamat',
        'no_telp',
    ];

    public function setLocationID_ruang(){
        return $this->hasMany(Ruang::class,'locationID', 'ruangID');
    }

    public function setLocationID_aboutUs(){
        return $this->hasMany(AboutUs::class,'locationID', 'aboutUsID');
    }
}
