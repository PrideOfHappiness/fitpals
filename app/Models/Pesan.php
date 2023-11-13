<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pesan extends Model
{
    use HasFactory;
    protected $table = 'pesan';
    protected $primaryKey = 'pesanID';
    protected $fillable = [
        'pesanID',
        'userID',
        'salesID',
        'isi_pesan',
    ];
    public function getUserID_memberPesan(){
        return $this->belongsTo(User::class,'userID', 'userID');
    }
    public function getUserID_salesPesan(){
        return $this->belongsTo(User::class,'saleID', 'userID');
    }
}
