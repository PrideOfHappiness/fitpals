<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ruang extends Model
{
    use HasFactory;
    protected $table = 'ruang';
    protected $primaryKey = 'ruangID';
    public $incrementing = false;
    protected $fillable = [
        'ruangID',
        'locationID',
        'namaRuang',
        'kapasitas',
        'fasilitas',
    ];

    public function locationIDRuang(){
        return $this->belongsTo(Location::class,'locationID', 'locationID');
    }

}
