<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{
    use HasFactory;
    protected $table = 'about_us';
    protected $primaryKey = 'aboutUsID';
    public $incrementing = false;
    protected $fillable = [
        'aboutUsID',
        'locationID',
        'deskripsi',
        'foto_gym',
    ];

    public function getLocationIDAboutUs(){
        return $this->belongsTo(Location::class, 'locationID', 'locationID');
    }
}
