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
                    <div class="mb-3">
                        <label for="kategori">Lokasi Kelas</label>
                        <input type="text" class="form-control" name="kategori" value="{{ $kelas->getlocationIDKelas->namaLokasi }}"/>
                    </div>
                    <div class="mb-3">
                        <label for="name">Nama Kelas</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Kelas" value="{{ $kelas->nama_kelas }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="trainer">Trainer Utama</label>
                        <input type="text" class="form-control" name="trainer1" id="trainer1" value="{{$kelas->getTrainerIDKelas->getUserIDTrainer->nama}}">
                    </div>
                    @if($kelas->trainerID2 != "")
                        <div class="mb-3">
                            <label for="trainer2">Trainer Pembantu (Apabila tersedia)</label>
                            <input type="text" class="form-control" name="trainer2" id="trainer2" value="{{$kelas->getTrainerIDKelas2->getUserIDTrainer->nama}}">
                        </div>
                    @endif
                    @if($kelas->trainerID3 != "")
                        <div class="mb-3">
                            <label for="trainer2">Trainer Pembantu (Apabila tersedia)</label>
                            <input type="text" class="form-control" name="trainer3" id="trainer3" value="{{$kelas->getTrainerIDKelas3->getUserIDTrainer->nama}}">
                        </div>
                    @endif
                    <div class="mb-3">
                        <label for="tanggal">Hari, Tanggal Pelaksanaan</label>
                        <input type="text" class="form-control" name="tanggal" id="tanggal" value="{{ $hari2 }}">
                    </div>
                    <div class="mb-3">
                        <label for="name">Durasi Kelas</label>
                        <input type="text" class="form-control" name="mulai" id="mulai" value="{{$selisihJam->jam }} Jam {{$selisihJam->menit}} menit" required>
                    </div>
                    <div class="mb-3">
                        <label for="kategori">Ruangan</label>
                        <input type="text" class="form-control" name="jenis" id="jenis" value="{{ $kelas->getRuangIDKelas->namaRuang }}">
                    </div>
                    <div class="mb-3">
                        <label for="name">Kuota peserta</label>
                        <input type="number" class="form-control" name="kuota" id="kuota" value="{{$kelas->kuota_peserta}}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="kategori">Jenis Kelas</label>
                        <input type="text" class="form-control" name="jenis" id="jenis" value="{{ $kelas->jenis_kelas }}">
                    </div>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>