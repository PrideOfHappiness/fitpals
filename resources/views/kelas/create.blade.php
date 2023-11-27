<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Kelas Umum</title>
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
                <form action="{{ route('kelas.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="userID" value="{{ auth()->user()->userID }}"/>
                    <div class="mb-3">
                        <label for="kategori">Lokasi Kelas</label>
                        <select name="lokasi" id="lokasi" class="form-control">
                            <option value="">Silahkan pilih lokasi terlebih dahulu!</option>
                            @foreach($location as $kategori)
                                <option value="{{ $kategori->locationID}}">{{ $kategori->namaLokasi}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="name">Nama Kelas</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Kelas" required>
                    </div>
                    <div class="mb-3">
                        <label for="trainer">Trainer Utama</label>
                        <select name="trainer" id="trainer" class="form-control">
                            <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                            @foreach($trainer as $kategori)
                                <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="trainer2">Trainer Pembantu (Apabila tersedia)</label>
                        <select name="trainer2" id="trainer2" class="form-control">
                            <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                            @foreach($trainer as $kategori)
                                <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="trainer3">Trainer Pembantu 2(Apabila tersedia)</label>
                        <select name="trainer3" id="trainer3" class="form-control">
                            <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                            @foreach($trainer as $kategori)
                                <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="tanggal">Hari, Tanggal Pelaksanaan</label>
                        <div class="input-group date" id="dataAwal" data-target-input="nearest">
                            <input type="date" class="form-control datepicker-input" name="dataAwal" data-target="#dataAwal"/>
                            <div class="input-group-append" data-target="#dataAwal" data-toggle="datetimepicker">
                                <div class="input-group-text">
                                    <i class="fa fa-calendar"> </i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="name">Waktu Mulai Kelas</label>
                        <input type="time" class="form-control" name="mulai" id="mulai" placeholder="Waktu Mulai Kelas" required>
                    </div>
                    <div class="mb-3">
                        <label for="name">Waktu Akhir Kelas</label>
                        <input type="time" class="form-control" name="selesai" id="selesai" placeholder="Waktu Akhir Kelas" required>
                    </div>
                    <div class="mb-3">
                        <label for="name">Kuota peserta</label>
                        <input type="number" class="form-control" name="kuota" id="kuota" placeholder="Kuota peserta" required>
                    </div>
                    <div class="mb-3">
                        <label for="kategori">Jenis Kelas</label>
                        <select name="jenis" id="jenis" class="form-control">
                            <option value="">Silahkan pilih jenis kelas terlebih dahulu!</option>
                            <option value="Privat">Privat</option>
                            <option value="Umum">Umum</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Pilih Ruang</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>