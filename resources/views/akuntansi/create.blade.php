<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Kelas Umum</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarUsers')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                @if ($message = Session::get('error'))
                    <div class="alert alert-danger">
                        <p>{{ $message }}</p>
                    </div>
                @endif 
                <form action="{{ route('akuntansi.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="userID" value="{{ auth()->user()->userID }}"/>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi</label>
                        <textarea name="deskripsi" class="form-control" id="deskripsi" rows="2" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="debet">Akun Debet</label>
                        <select name="debet" id="debet" class="form-control">
                            <option value="">Silahkan pilih kode akun terlebih dahulu!</option>
                            @foreach($kodeAkun as $kategori)
                                <option value="{{ $kategori->kode_akun}}">{{ $kategori->nama_akun }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="name">Jumlah Debet</label>
                        <input type="number" class="form-control" name="jumlah_debet" id="jumlah_debet" placeholder="Jumlah Debet" required>
                    </div>
                    <div class="mb-3">
                        <label for="debet">Akun Kredit</label>
                        <select name="kredit" id="kredit" class="form-control">
                            <option value="">Silahkan pilih kode akun terlebih dahulu!</option>
                            @foreach($kodeAkun as $kategori)
                                <option value="{{ $kategori->kode_akun}}">{{ $kategori->nama_akun }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="name">Jumlah Debet</label>
                        <input type="number" class="form-control" name="jumlah_kredit" id="jumlah_kredit" placeholder="Jumlah Debet" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>