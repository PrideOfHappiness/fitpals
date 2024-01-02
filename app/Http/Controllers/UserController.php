<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Validator;
use Str;
use Auth;
//Models
use App\Models\User;
use App\Models\fotoUsers;
use App\Models\Trainer;
use App\Models\Member;
use App\Models\Akuntansi;
use App\Models\Kelas;
use App\Models\Pesan;
use App\Models\TrafficLogin;
use App\Models\Attendance;
use App\Models\AttendancePrivat;
use App\Models\Pembayaran;
use App\Models\Pemesanan;
use App\Models\Promo;
use App\Models\ProgressKelas;


class UserController extends Controller
{
    public function index(){
        if(Auth::user()->kategori == 'Admin'){
            $users = User::where('locationID', Auth::user()->locationID)->paginate(20);
        }else{
            $users = User::paginate(20);
        }
        return view('users.index', compact('users'));
    }

    public function create(){
        return view('users.create');
    }

    public function store(Request $request){
        $this->validate($request, [
            'location' => 'required',
            'name' => 'required',
            'alamat' => 'required',
            'telp' => 'required',
            'email' => 'required',
            'jenis_kelamin' => 'required',
            'kategori' => 'required',
            'password' => 'required',
            'passwordConfirm' => 'required',
            'fotouser' => 'required|mimes:jpg,png,jpeg|max:2048',
        ]);

        $nama = $request->name;
        $alamat = $request->alamat;
        $noTelp = $request->telp;
        $email = $request->email;
        $jenisKelamin = $request->jenis_kelamin;
        $kategori = $request->kategori;
        $password = $request->password;
        $confirmPass = $request->passwordConfirm;
        $location = $request->location;

        if($password === $confirmPass){
            if($kategori == 'admin'){
                $pertama = 'AM';
                $status = 'Admin';
            }elseif($kategori == 'karyawan'){
                $pertama = 'KW';
                $status = 'Karyawan';
            }elseif($kategori == 'member'){
                $pertama = 'MB';
                $status = 'Member';
            }elseif($kategori == 'sales'){
                $pertama = 'SL';
                $status = 'Sales';
            }elseif($kategori == 'trainer'){
                $pertama = 'TR';
                $status = 'Trainer';
            }else{
                return redirect()->route('users.index')
                    ->with('error', 'Jabatan belum dimasukkan! Silahkan pilih jabatan terlebih dahulu.');
            }

            $cekNomorKategori = User::where('kategori', $kategori)->count();
            if($cekNomorKategori == 0){
                $no_urut = 1;
                $angka = '001';
            }elseif($cekNomorKategori > 0 && $cekNomorKategori < 100){
                $no_urut = $cekNomorKategori + 1;
                if($no_urut > 0 && $no_urut < 10){
                    $angka = '00' . $no_urut;
                }else{
                    $angka = '0' . $no_urut;
                }
            }else{
                $no_urut = $cekNomorKategori + 1;
                $angka = $no_urut;
            }
            
            $cekKata = str_word_count($nama);
            if($cekKata === 1){
                $singkatan = strtoupper(substr($nama, 0, 2));
            }else{
                $kata = explode(' ', $nama);
                $ambil_karakter_pertama = array_map(function ($kata_pertama){
                    return substr($kata_pertama, 0, 1);
                }, $kata);
                $singkatan = implode("", array_slice($ambil_karakter_pertama, 0, 2));
            }

            $acak = strtoupper(Str::random(3));
            $idUser = $pertama.$angka.$singkatan.$acak;
            $users = User::create([
                'userID'=> $idUser,
                'nama'=> $nama,
                'alamat'=> $alamat,
                'no_telp'=> $noTelp,
                'jenis_kelamin' => $jenisKelamin,
                'kategori'=> $status,
                'email'=> $email,
                'password'=> $password,
                'locationID'=> $location,
            ]);
            if($request->hasFile('fotouser')){
                $file = $request->file('fotouser');
                $fotoUsers = new fotoUsers();
                $fotoUsers->userID = $users->userID;
                $fotoUsers->namaFile = $file->getClientOriginalName();
                $file->move('foto/userID', $file->getClientOriginalName()); // Simpan file gambar di penyimpanan
                $fotoUsers->save();
            }
            return redirect()->route('users.index')
                ->with('success', 'Data ' . $nama . ' berhasil dimasukkan!');
        }else{
            return redirect()->route('users.create')
                ->with('error', 'Password tidak cocok! Cek kembali password yang dimasukkan.');
        }
    }

    public function show($userID){
        $users = User::find($userID);
        $fotoUser = $users->setUserIDFoto;
        return view('users.show', compact('users', 'fotoUser'));
    }

    public function edit($userID){
        $users = User::find($userID);
        $fotoUsers = $users->setUserIDFoto;
        if($users->jenis_kelamin == 'L'){
            $huruf1 = 'L';
            $huruf2 = 'Laki-laki';
        }else{
            $huruf1 = 'P';
            $huruf2 = 'Perempuan';
        }

        if($users->kategori == 'Admin'){
            $kategori1 = 'admin';
        }elseif($users->kategori == 'Karyawan'){
            $kategori1 = 'karyawan';
        }elseif($users->kategori == 'Member'){
            $kategori1 = 'member';
        }elseif($users->kategori == 'Sales'){
            $kategori1 = 'sales';
        }else{
            $kategori1 = 'trainer';
        }
        return view('users.edit', compact('users', 'huruf1', 'huruf2', 'fotoUsers', 'kategori1'));
    }

    public function update(Request $request, $userID){
        $users = User::find($userID);

        $this->validate($request, [
            'name' => 'required',
            'alamat' => 'required',
            'telp' => 'required',
            'email' => 'required',
            'kategori' => 'required',
            'jenis_kelamin' => 'required',
            'password' => 'required',
            'fotouser' => 'mimes:jpg,png,jpeg|max:2048',
        ]);
        $nama = $request->name;
        $alamat = $request->alamat;
        $noTelp = $request->telp;
        $email = $request->email;
        $kategori = $request->kategori;
        $password = $request->password;

        if($kategori == 'admin'){
            $pertama = 'AM';
            $status = 'Admin';
        }elseif($kategori == 'karyawan'){
            $pertama = 'KW';
            $status = 'Karyawan';
        }elseif($kategori == 'member'){
            $pertama = 'MB';
            $status = 'Member';
        }elseif($kategori == 'sales'){
            $pertama = 'SL';
            $status = 'Sales';
        }elseif($kategori == 'trainer'){
            $pertama = 'TR';
            $status = 'Trainer';
        }else{
            return redirect()->route('users.index')
                ->with('error', 'Jabatan belum dimasukkan! Silahkan pilih jabatan terlebih dahulu.');
        }

        if($request->hasFile('fotouser')){
            $users->update([
                'userID' => $request->userID,
                'nama'=> $nama,
                'alamat'=> $alamat,
                'no_telp'=> $noTelp,
                'kategori'=> $status,
                'jenis_kelamin' => $request->jenis_kelamin,
                'email'=> $email,
                'password'=> $password,
            ]);

            $file = $request->file('fotouser');
            $fotoUsers = new fotoUsers();
            $fotoUsers->userID = $users->userID;
            $fotoUsers->namaFile = $file->getClientOriginalName();
            $file->move('foto/userID', $file->getClientOriginalName()); // Simpan file gambar di penyimpanan
            $fotoUsers->save();
        }else{
            $users->update([
                'userID' => $request->userID,
                'nama'=> $nama,
                'alamat'=> $alamat,
                'no_telp'=> $noTelp,
                'jenis_kelamin' => $request->jenis_kelamin,
                'kategori'=> $status,
                'email'=> $email,
                'password'=> $password,
            ]);
        }
        return redirect()->route('users.index')
            ->with('success', 'Data ' . $nama . ' berhasil diubah!');
    }

    public function destroy($userID){
        $users = User::find($userID);

        $checkFoto = fotoUsers::where('userID', $userID)->get();
        $checkTrainer = Trainer::where('userID', $userID)->get();
        $checkuserAkuntansi = Akuntansi::where('user_input', $userID)->orWhere('user_ubah', $userID)->get();
        $checkUserPesan = Pesan::where('userID', $userID)->orWhere('salesID', $userID)->get();
        $checkUserTrainer = Trainer::where('userID', $userID)->get();
        $checkUserTraffic = TrafficLogin::where('userID', $userID)->get();
        $checkUserPromo = Promo::where('userID', $userID)->orWhere('userID_penerima', $userID)->get();
        $checkUserProgress = ProgressKelas::where('userID', $userID)->get();
        $checkUserPemesanan = Pemesanan::where('userID', $userID)->get();
        $checkUserPembayaran = Pembayaran::where('userID', $userID)->orWhere('salesID', $userID)->get();
        $checkUserMember = Member::where('userID', $userID)->get();
        $checkUserKelas = Kelas::where('id_pembuat', $userID)->orWhere('id_otorisasi', $userID)->get();
        $checkUserAttendancePrivat = AttendancePrivat::where('userID', $userID)->get();
        $checkUserAttendance = Attendance::where('userID', $userID)->get();
        $checkUserAkuntansi = Akuntansi::where('user_input', $userID)->orWhere('user_ubah', $userID)->get();

        if(sizeof($checkFoto) > 0 || $checkTrainer > 0 || $checkuserAkuntansi > 0 || $checkUserPesan > 0 || $checkUserPembayaran > 0
        || $checkUserTrainer > 0 || $checkUserTraffic > 0 || $checkUserPromo > 0 || $checkUserProgress > 0 || $checkUserPemesanan > 0
        || $checkUserMember > 0 || $checkUserKelas > 0 || $checkUserAttendancePrivat > 0 || $checkUserAttendance > 0 || $checkUserAkuntansi > 0){
            return redirect()->route('users.index')
                ->with('error', 'Data User tidak dapat dihapus!');
        }else{
            $users->delete();
            return redirect()->route('users.index')
                ->with('success', 'Data User berhasil dihapus!');
        }
    }
    public function searchUsers(Request $request){
        $data = $request->cari;
        $data2 = $request->pencarian;
        $pencarian = User::query();
        $data3 = [];

        if($data && $data2){
            $data3[] = ['nama', 'LIKE', '%'. $data .'%'];
            $data3[] = ['kategori', '=', $data2];
        }elseif($data){
            $data3[] = ['nama', 'LIKE', '%'. $data .'%'];
        }else{
            $data3[] = ['kategori', '=', $data2];
        }

        $hasil = $pencarian->where($data3)->get();
        return view('users.hasil', compact('hasil'));
    }

    public function formResetPassword(){
        return view('users.indexResetPassword');
    }
    public function resetPassword(Request $request){
        $this->validate($request, [
            'email' => 'required',
        ]);

        $email = $request->input('email');
        $user = User::where('email', $email)->first();
        $name = User::where('email', $email)->get('nama');
        if(!$user){
            return redirect()->route('users.index')
                ->with('error', 'Email tidak terdaftar!');
        }else{
            $passwordAcak = Str::random(4);
            $nama = substr(User::where('email', $email)->get('nama'), 0, 4);
            $angka = rand(1,9999);
            $passwordBaru = $passwordAcak. ' - ' . $nama.$angka;
            $token = Str::random(50);
            $resetPassword = $user->update([
                'password' => bcrypt($passwordBaru),
                'token_reset_password' => $token,
                'modified_at' => Carbon::now(),
            ]);
            return redirect('/users/resetpassword/set-password')
                ->with('success', 'Password ' . $name . ' berhasil direset dengan password : ' . $passwordBaru .' dengan token : ' . substr($token, 0, 12));
        }
    }

    public function formIndexSetPassword(){
        return view('users.resetPassword');
    }

    public function updatePassword(Request $request){
        
        $this->validate($request, [
            'token' => 'required',
            'password' => 'required|custom_password',
            'passwordConfirm' => 'required|custom_password',
        ],[
            'custom_password' => 'Password harus mengandung minimal satu huruf kapital, satu angka, dan satu karakter tambahan.',
        ]);

        $token = $request->input('token');
        $password = $request->input('password');
        $confirm = $request->input('passwordConfirm');
        $users = User::where('token_reset_password', 'like', '%'. $token . '%')->first();
        if(!$users){
            return redirect()->route('users.index')
                ->with('error', 'Token tidak terdaftar!');
        }else{
            if($password === $confirm){
                $users->update([
                    'password' => $password,
                ]);
                return redirect()->route('users.index')
                    ->with('success', 'Password berhasil diubah!');
            }else{
                return redirect()->route('users.index')
                    ->with('error', 'Password tidak cocok!');
            }
        }
    }
}
