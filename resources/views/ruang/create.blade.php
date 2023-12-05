<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Ruangan</title>
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
                <form action="{{ route('ruangan.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="name">Nama Ruangan</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Ruangan" required>
                    </div>
                    <input type="hidden" class="form-control" name="location" id="location" value="{{ auth()->user()->locationID }}"
                    <div class="mb-3">
                        <label for="name">Kapasitas Ruangan</label>
                        <input type="number" class="form-control" name="kapasitas" id="kapasitas" placeholder="Nama Ruangan" required>
                    </div>
                    <div class="mb-3">
                        <label for="fasilitas">Fasilitas Ruangan Gym</label>
                        <textarea name="fasilitas" class="form-control" id="fasilitas" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>