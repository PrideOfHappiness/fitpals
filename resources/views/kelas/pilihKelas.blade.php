<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Kelas Umum - Pilih Lokasi</title>
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
                <form action="{{ route('setPilihRuang', $kelas->kelasID)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @if($kelas->ruangID == "")
                    <div class="mb-3">
                        <label for="kategori">Ruangan Kelas</label>
                        <select name="ruang" id="ruang" class="form-control">
                            <option value="">Silahkan pilih ruangan terlebih dahulu!</option>
                            @foreach($ruang as $kategori)
                                <option value="{{ $kategori->ruangID}}">{{ $kategori->namaRuang}}</option>
                            @endforeach
                        </select>
                    </div>
                    @endif
                    @if($kelas->ruangID != "")
                    <label for="kategori">Ruangan Kelas</label>
                        <select name="ruang" id="ruang" class="form-control">
                            <option value="{{$kelas->ruangID}}">{{ $kelas->getRuangIDKelas->namaRuang }}</option>
                            <option value="">Silahkan pilih ruangan terlebih dahulu!</option>
                            @foreach($ruang as $kategori)
                                <option value="{{ $kategori->ruangID}}">{{ $kategori->namaRuang}}</option>
                            @endforeach
                        </select>
                    </div>
                    @endif
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>