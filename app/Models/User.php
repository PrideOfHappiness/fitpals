<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = 'users';
    protected $primaryKey = 'userID';
    public $incrementing = false;
    protected $fillable = [
        'userID',
        'nama',
        'alamat',
        'no_telp',
        'email',
        'kategori',
        'referral_code',
        'password',
        'token_reset_password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function setUserIDFoto(){
        return $this->hasMany(fotoUsers::class,'userID');
    }

    public function setUserIDTrainer(){
        return $this->hasMany(Trainer::class,'userID', 'trainerID');
    }

    public function setUserIDMember(){
        return $this->hasMany(Member::class,'user_id', 'memberID');
    }

    public function setUserIDPromo1(){
        return $this->hasMany(Promo::class,'userID_pembuat', 'promoID');
    }
    public function setUserIDPromo2(){
        return $this->hasMany(Promo::class,'userID_penerima', 'promoID');
    }
    public function setUserIDAkuntansiBuat(){
        return $this->hasMany(Akuntansi::class,'user_input', 'akunID');
    }
    public function setUserIDAkuntansiUbah(){
        return $this->hasMany(Akuntansi::class,'user_ubah', 'akunID');
    }
    public function setUserIDMemberPesan(){
        return $this->hasMany(Pesan::class,'userID', 'pesanID');
    }
    public function setUserIDSalesPesan(){
        return $this->hasMany(Pesan::class,'salesID', 'pesanID');
    }
    public function setUserIDIdPembuat(){
        return $this->hasMany(Kelas::class,'id_pembuat', 'kelasID');
    }
    public function setUserIDIdOtorisasi(){
        return $this->hasMany(Kelas::class, 'id_otorisasi', 'kelasID');
    }
    public function setUserIDPembayaran(){
        return $this->hasMany(Pembayaran::class,'userID', 'pembayaranID');
    }
    public function setUserIDSalesPembayaran(){
        return $this->hasMany(Pembayaran::class,'salesID', 'pembayaranID');
    }
    public function setUserIDPesan(){
        return $this->hasMany(Pemesanan::class,'userID', 'pemesananID');
    }
    public function setUserIDAttendance(){
        return $this->hasMany(Attendance::class,'userID', 'attendanceID');
    }
    public function setUserIDAttendancePrivat(){
        return $this->hasMany(AttendancePrivat::class,'userID', 'attendancePrivatID');
    }

    public function setUserIDTraffic(){
        return $this->hasMany(TrafficLogin::class,'userID', 'trafficID');
    }
}
