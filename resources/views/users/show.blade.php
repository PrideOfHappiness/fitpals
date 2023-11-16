<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Users  </title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container">
        <div class="mt-4"> 
            <section class="content"> 
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" value={{ $users->nama}} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="alamat" class="form-label">Alamat</label>
                        <input type="text" class="form-control" id="alamat" name="alamat" value={{ $users->alamat}} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="no-telp" class="form-label">Nomor Telepon</label>
                        <input type="text" class="form-control" id="no-telp" name="no-telp" value={{$users->no_telp}} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="kategori" class="form-label">Jabatan</label>
                        <input type="text" class="form-control" id="kategori" name="kategori" class="form-control" value={{ $users->kategori}} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value={{ $users->email}} readonly>
                    </div>
                    @if($fotoUser->count() > 0)
                    <label for="gambar" class="form-label">Foto Pengguna</label>
                    <div class="gambar-container">
                        @foreach($fotoUser as $gambar)
                            <div class="mb-3">
                                <img width="150px" src="{{ ('/foto/userID/'. $gambar->namaFile) }}" alt="Gambar Pengguna " . {{$users->nama}}>
                            </div>
                        @endforeach
                    </div>
                @else
                    <label for="gambar" class="form-label">Foto Pengguna</label>
                    <p>Tidak ada gambar terkait.</p>
                @endif
            </section>
        </div>
    </div> 
    @include('template/footer')
</body>
</html>