<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Ubah Data Karyawan</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                @if ($message = Session::get('error'))
                    <div class="alert alert-danger">
                        <p>{{ $message }}</p>
                    </div>
                @endif 
                <form action="{{ route('users.update', $users->userID)}}" method="POST" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <input type="hidden" name="userID" value="{{ $users->userID }}">
                    <div class="mb-3">
                        <label for="name">Nama</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama karyawan" value="{{ $users->nama }}">
                    </div>
                    <div class="mb-3">
                        <label for="alamat">Alamat</label>
                        <input type="text" class="form-control" name="alamat" id="alamat" placeholder="Alamat karyawan" value="{{ $users->alamat }}">
                    </div>
                    <div class="mb-3">
                        <label for="telp">Nomor Telepon</label>
                        <input type="text" class="form-control" name="telp" id="telp" placeholder="Nomor Telepon karyawan" value ="{{ $users->no_telp }}">
                    </div>
                    <div class="mb-3">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Alamat Email karyawan" value="{{ $users->email }}">
                    </div>
                    <div class="mb-3">
                        <label for="jenis_kelamin">Jenis Kelamin</label>
                        <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
                            <option value="{{$huruf1}}">{{$huruf2}}</option>
                            <option value="">Silahkan pilih jenis kelamin terlebih dahulu!</option>
                            <option value="L">Laki-laki</option>
                            <option value="P">Perempuan</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="kategori">Jabatan Karyawan</label>
                        <select name="kategori" id="kategori" class="form-control">
                            <option value="{{$kategori1}}">{{ $users->kategori }}</option>
                            <option value="">Silahkan pilih jabatan terlebih dahulu!</option>
                            <option value="admin">Admin</option>
                            <option value="karyawan">Karyawan</option>
                            <option value="member">Member</option>
                            <option value="sales">Sales</option>
                            <option value="trainer">Trainer</option>
                        </select>
                    </div>
                    <input type="hidden" name="password" id="password" value="{{$users->password}}">
                    @if($fotoUsers->count() > 0)
                    <label for="gambar" class="form-label">Foto Pengguna</label>
                    <div class="gambar-container">
                        @foreach($fotoUsers as $gambar)
                            <div class="mb-3">
                                <img width="150px" src="{{ ('/foto/userID/'. $gambar->namaFile) }}" alt="Gambar Pengguna " . {{$users->nama}}>
                            </div>
                        @endforeach
                    </div>
                @else
                    <label for="gambar" class="form-label">Foto Pengguna</label>
                    <p>Tidak ada gambar terkait.</p>
                @endif
                    <div class="mb-3">
                        <label for="fotouser">Foto Wajah Karyawan Baru</label>
                        <input type="file" class="form-control" name="fotouser" id="fotouser">
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
                <h6>Catatan: </h6>
                <br>
                <p>Selalu cek kembali password yang dimasukkan.</p>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>