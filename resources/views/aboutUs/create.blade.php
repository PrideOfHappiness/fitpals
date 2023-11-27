<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Company Information</title>
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
                <form action="{{ route('aboutUs.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="name">Nama Perusahaan</label>
                        <select name="lokasi" id="lokasi" class="form-control">
                            <option value="">Silahkan pilih nama Gym terlebih dahulu!</option>
                            @foreach($location as $dt)
                                <option value="{{ $dt->locationID }}">{{ $dt->namaLokasi }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi</label>
                        <textarea name="deskripsi" id="deskripsi" class="form-control" row="4" cols="50" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="fotoGym">Logo Gym</label>
                        <input type="file" name="logo" class="form-control" id="logo" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
            <script src="resources/js/ruang_script.js"></script>
        </div>
    </div>
    @include('template/footer')
</body>
</html>