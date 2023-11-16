<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\LokasiController; 
use App\Http\Controllers\TrainerController;
use App\Http\Controllers\LatihanController;

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
    Route::get('/dashboard', 'DashboardController@index')->middleware('CheckRoleDashboard');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['Admin'])->group(function () {
    Route::get('/admin/home', [HomeController::class, 'adminHome'])->name('adminHome');
    Route::resource('/admin/users', UserController::class);
    Route::post('admin/users/cari', [UserController::class, 'searchUsers'])->name('searchUsers');
    Route::post('admin/users/resetpassword/{id}', [UserController::class, 'resetPassword'])->name('resetPassword');
    Route::post('admin/users/{id}/updatePassword', [UserController::class, 'updatePassword']);
    Route::resource('/admin/trainer', TrainerController::class);
    Route::resource('/admin/lokasi', LokasiController::class);
    Route::resource('/admin/latihan', LatihanController::class);
});

Route::middleware(['Karyawan'])->group(function () {
    Route::get('/karyawan/home', [HomeController::class, 'karyawanHome'])->name('karyawanHome');
});

