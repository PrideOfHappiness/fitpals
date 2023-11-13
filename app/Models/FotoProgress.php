<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FotoProgress extends Model
{
    use HasFactory;
    protected $table = 'foto_progress';
    protected $fillable  = [
        'fotoID',
        'progressID',
        'namaFile',
    ];

    public function getProgressIDFoto(){
        return $this->belongsTo(ProgressKelas::class,'progressID','progressID');
    }
}
