<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\fotoUsers;
use Str;

class UserController extends Controller
{
    public function index(){
        $users = User::paginate(20);
        return view('users.index', compact('users'));
    }

    public function create(){
        return view('users.create');
    }

    public function store(Request $request){
        $this->validate($request, [
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

        if(sizeof($checkFoto) > 0){
            return redirect()->route('users.index')
            ->with('error', 'Data User tidak dapat dihapus!');
        }else{
            $users->delete();
            return redirect()->route('users.index')
            ->with('success', 'Data User berhasil dihapus!');
        }
    }
    public function searchUsers(Request $request){
        
    }

    public function resetPassword(Request $request, $userID){
        $users = User::find($userID);
        $users->password = Str::random(12);
        $users->save();
        return view('users.resetPassword', compact('users'));
    }

    public function updatePassword(Request $request, $userID){
        $users = User::find($userID);

        $this->validate($request, [
            'password' => 'required',
            'comfirmPassword' => 'required',
        ]);


    }
}
