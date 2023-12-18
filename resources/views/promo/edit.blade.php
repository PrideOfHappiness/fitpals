<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data {{ $promo->nama_promo }}</title>
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
                <form action="{{ route('promo.update', $promo->promoID)}}" method="POST" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <input type="hidden" name="userID" value="{{ auth()->user()->userID }}"/>
                    <input type="hidden" name="locationID" value="{{ auth()->user()->locationID }}"/>
                    <div class="mb-3">
                        <label for="kode">Kode Promo</label>
                        <input type="text" name="kode" id="kode" class="form-control" value="{{ $promo->kode_promo}}" required>
                    </div>
                    <div class="mb-3">
                        <label for="name">Nama Promo</label>
                        <input type="text" class="form-control" name="name" id="name" value="{{ $promo->nama_promo}}" required>
                    </div>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi Promo</label>
                        <textArea class="form-control" name="deskripsi" id="deskripsi" rows="3" required>{{ $promo->deskripsi}}</textArea>
                    </div>
                    <div class="mb-3">
                        <label for="tanggal">Tanggal Mulai Promo</label>
                        <input type="date" class="form-control" name="dataAwal" id="dataAwal" value="{{ $promo->tanggal_mulai}}" required>
                    </div>
                    <div class="mb-3">
                        <label for="tanggal">Tanggal Selesai Promo</label>
                        <input type="date" class="form-control" name="dataAkhir" id="dataAkhir" value="{{ $promo->tanggal_akhir}}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Promo</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>
