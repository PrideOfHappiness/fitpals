<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{
    use HasFactory;
    protected $table = 'about_us';
    protected $primaryKey = 'aboutUsID';
    protected $fillable = [
        'aboutUsID',
        'locationID',
        'deskripsi',
        'foto_gym',
    ];

    public function getLocationID_aboutUs(){
        return $this->belongsTo(Location::class, 'locationID', 'locationID');
    }
}
