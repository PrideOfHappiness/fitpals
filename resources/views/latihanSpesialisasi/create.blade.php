<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Latihan Spesialisasi Trainer</title>
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
                <form action="{{ route('latihanSpesialisasi.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="name">Nama Trainer</label>
                        <select class="form-control" name="trainer">
                            <option value="">Silahkan pilih nama trainer terlebih dahulu!</option>
                            @foreach($trainer as $nama)
                                <option value="{{ $nama->trainerID}}"> {{$nama->getUserIDTrainer->nama}}</option>
                            @endforeach
                        </select>
                    </div>
                    <input type="hidden" class="form-control" name="location" id="location" value="{{ auth()->user()->locationID }}"
                    <div class="mb-3">
                        <label for="name">Latihan</label>
                        <select class="form-control" name="latihan">
                            <option value="">Silahkan pilih latihan terlebih dahulu!</option>
                            @foreach($latihan as $nama)
                                <option value="{{ $nama->latihanID}}"> {{$nama->namaLatihan }}</option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>