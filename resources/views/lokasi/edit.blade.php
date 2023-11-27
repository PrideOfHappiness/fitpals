<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Lokasi</title>
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
                <form action="{{ route('lokasi.update', $location->locationID)}}" method="POST" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <input type="hidden" name="locationID" value="{{$location->locationID}}">
                    <div class="mb-3">
                        <label for="name">Nama Gym</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Gym" value={{ $location->namaLokasi }} required>
                    </div>
                    <div class="mb-3">
                        <label for="alamat">Alamat Gym</label>
                        <textarea name="alamat" class="form-control" id="alamat" rows="2" required> {{ $location->alamat }} </textarea>
                    </div>
                    <div class="mb-3">
                        <label for="telp">Nomor Telepon</label>
                        <input type="text" class="form-control" name="telp" id="telp" placeholder="Nomor Telepon Gym" value={{ $location->no_telp }} required>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>