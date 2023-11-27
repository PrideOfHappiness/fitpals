<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Karyawan {{$nama}} </title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                    <div class="mb-3">
                        <label for="name">Nama Gym</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Gym" value={{ $location->namaLokasi }} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="alamat">Alamat Gym</label>
                        <textarea name="alamat" class="form-control" id="alamat" rows="2" readonly>{{ $location->alamat }}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="telp">Nomor Telepon</label>
                        <input type="text" class="form-control" name="telp" id="telp" placeholder="Nomor Telepon Gym" value={{ $location->no_telp }} readonly>
                    </div>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>