<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Ubah Kelas {{ $kelas->nama_kelas }}</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                    <form action="{{ route('kelas.update', $kelas->kelasID) }}" method="POST" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="kategori">Lokasi Kelas</label>
                            <input type="text" class="form-control" name="kategori" value="{{ $kelas->getlocationIDKelas->namaLokasi }}" readonly/>
                        </div>
                        <div class="mb-3">
                            <label for="name">Nama Kelas</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Nama Kelas" value="{{ $kelas->nama_kelas }}" required>
                        </div>
                        <div class="mb-3">
                            <label for="trainer">Trainer Utama</label>
                            <select name="trainer" id="trainer" class="form-control">
                                <option value="{{ $kelas->trainerID}}"> "{{$kelas->getTrainerIDKelas->getUserIDTrainer->nama}}"</option>
                                <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                                @foreach($trainer as $kategori)
                                    <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                                @endforeach
                            </select>
                        </div>
                        @if($kelas->trainerID2 != "")
                        <div class="mb-3">
                            <label for="trainer2">Trainer Pembantu</label>
                            <select name="trainer2" id="trainer2" class="form-control">
                                <option value="{{ $kelas->trainerID2}}"> "{{$kelas->getTrainerIDKelas2->getUserIDTrainer->nama}}"</option>
                                <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                                @foreach($trainer as $kategori)
                                    <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                                @endforeach
                            </select>
                        </div>
                        @endif
                        @if($kelas->trainerID3 != "")
                        <div class="mb-3">
                            <label for="trainer3">Trainer Pembantu 2</label>
                            <select name="trainer3" id="trainer3" class="form-control">
                                <option value="{{ $kelas->trainerID3}}"> "{{$kelas->getTrainerIDKelas3->getUserIDTrainer->nama}}"</option>
                                <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                                @foreach($trainer as $kategori)
                                    <option value="{{ $kategori->trainerID}}">{{ $kategori->namaTrainer}}</option>
                                @endforeach
                            </select>
                        </div>
                        @endif
                        <div class="mb-3">
                            <label for="tanggal">Hari, Tanggal Pelaksanaan</label>
                            <input type="text" class="form-control" name="tanggal" id="tanggal" value="{{ $hari2 }}">
                        </div>
                        <div class="mb-3">
                            <label for="tanggal">Hari, Tanggal Pelaksanaan (Apabila ada perubahan)</label>
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
                            <input type="time" class="form-control" name="mulai" id="mulai" value="{{ $kelas->jam_awal}}" required>
                        </div>
                        <div class="mb-3">
                            <label for="name">Waktu Akhir Kelas</label>
                            <input type="time" class="form-control" name="selesai" id="selesai" value="{{ $kelas->jam_akhir}}" required>
                        </div>
                        <div class="mb-3">
                            <label for="kategori">Ruangan</label>
                            <input type="text" class="form-control" name="jenis" id="jenis" value="{{ $kelas->getRuangIDKelas->namaRuang }}">
                        </div>
                        <div class="mb-3">
                            <label for="name">Kuota peserta</label>
                            <input type="number" class="form-control" name="kuota" id="kuota" value="{{$kelas->kuota_peserta}}" required>
                        </div>
                        <div class="mb-3">
                            <label for="kategori">Jenis Kelas</label>
                            <input type="text" class="form-control" name="jenis" id="jenis" value="{{ $kelas->jenis_kelas }}" readonly>
                        </div>
                        <button type="submit" class="btn btn-primary">Ubah Data</button>
                    </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>