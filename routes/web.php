<?php

use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\LokasiController; 
use App\Http\Controllers\TrainerController;
use App\Http\Controllers\LatihanController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\RuangController;
use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\KelasController;
use App\Http\Controllers\PromoController;
use App\Http\Controllers\LatihanSpesialisasiController;
use App\Http\Controllers\AkuntansiController;
use App\Http\Controllers\LaporanKeuanganController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| HeApp\Http\Controllers\LokasiController
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', function () {
    return view('auth/login');
});

Auth::routes();
Route::middleware(['auth'])->group(function() {
    Route::get('/logout', [LogoutController::class, 'logout'])->name('logout');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['Admin'])->group(function () {
    Route::get('/admin/home', [HomeController::class, 'adminHome'])->name('adminHome');
    //Users
    Route::resource('/admin/users', UserController::class);
    Route::post('admin/users/cari', [UserController::class, 'searchUsers'])->name('searchUsers');
    Route::get('/users/resetpassword/email', [UserController::class, 'formResetPassword'])->name('getResetPassword');
    Route::post('/users/resetpassword/', [UserController::class, 'resetPassword'])->name('setResetPassword');
    Route::get('/users/resetpassword/set-password', [UserController::class,'formIndexSetPassword'])->name('SetPasswordBaru');
    Route::post('/users/updatePassword', [UserController::class, 'updatePassword'])->name('updatePassword');
    //Trainer
    Route::resource('/admin/trainer', TrainerController::class);
    //Lokasi
    Route::resource('/admin/lokasi', LokasiController::class);
    Route::post('/admin/lokasi/cari', [LokasiController::class, 'searchLokasi'])->name('searchLokasi');
    //Latihan
    Route::resource('/admin/latihan', LatihanController::class);
    //Ruangan
    Route::resource('/admin/ruangan', RuangController::class);
    //Company Info
    Route::resource('/admin/aboutUs', AboutUsController::class);
    //Kelas
    Route::resource('admin/kelas', KelasController::class);
    Route::get('/admin/kelas/pilihRuang/{id}', [KelasController::class, 'pilihRuang'])->name('pilihRuang');
    Route::post('/admin/kelas/setPilihRuang/{id}', [KelasController::class, 'setPilihRuang'])->name('setPilihRuang');
    Route::get('admin/kelas/verifikasi', [AboutUsController::class, 'verifikasi'])->name('getVerifikasiKelas');
    Route::post('admin/kelas/verifikasi/{id}', [AboutUsController::class, 'verifikasiKelas'])->name('setVerifikasiKelas');
    //Latihan Spesialisasi
    Route::resource('admin/latihanSpesialisasi', LatihanSpesialisasiController::class);
    //Promo
    Route::resource('admin/promo', PromoController::class);
    //Laporan Keuangan
    Route::get('/karyawan/laporanKeuangan', [LaporanKeuanganController::class, 'index'])->name('laporanKeuangan');
    Route::get('/karyawan/laporanKeuangan/download/', [LaporanKeuanganController::class, 'download'])->name('laporanKeuanganDownload');
    //Absensi
    Route::get('/absensi', [AttendanceController::class, 'index']);
    Route::get('/absensi/generate_QRCode', [AttendanceController::class, 'generate'])->name('createAbsensi');
    Route::get('absensi/QRCode/keluar/{id}', [AttendanceController::class, 'keluar'])->name('keluarAbsensi');
});

Route::middleware(['Karyawan'])->group(function () {
    Route::get('/karyawan/home', [HomeController::class, 'karyawanHome'])->name('karyawanHome');
    //Akuntansi
    Route::resource('karyawan/akuntansi', AkuntansiController::class);
    //Absensi
    Route::get('/karyawan/absensi', [AttendanceController::class, 'index']);
    Route::get('karyawan/absensi/generate_QRCode', [AttendanceController::class, 'create'])->name('createAbsensiKaryawan');
    Route::post('karyawan/absensi/QRCode/scan', [AttendanceController::class, 'store']); 
});

Route::middleware(['Sales'])->group(function () {

});

Route::middleware(['Member'])->group(function () {
    Route::resource('/member', MemberController::class);
    Route::post('/member/cari', [MemberController::class, 'searchMember'])->name('searchMember');
    Route::resource('/member/pesan', RuangController::class);
});

Route::middleware(['Trainer'])->group(function () {

});

Route::middleware(['SuperAdmin'])->group(function () {
    
});