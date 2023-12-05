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
                <form action="{{ route('promo.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="userID" value="{{ auth()->user()->userID }}"/>
                    <input type="hidden" name="locationID" value="{{ auth()->user()->locationID }}"/>
                    <div class="mb-3">
                        <label for="kode">Kode Promo</label>
                        <input type="text" name="kode" id="kode" class="form-control" placeholder="Kode Promo" required>
                    </div>
                    <div class="mb-3">
                        <label for="name">Nama Promo</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama Promo" required>
                    </div>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi Promo</label>
                        <textArea class="form-control" name="deskripsi" id="deskripsi" rows="3" required></textArea>
                    </div>
                    <div class="mb-3">
                        <label for="tanggal">Tanggal Mulai Promo</label>
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
                        <label for="tanggal">Tanggal Selesai Promo</label>
                        <div class="input-group date" id="dataAkhir" data-target-input="nearest">
                            <input type="date" class="form-control datepicker-input" name="dataAkhir" data-target="#dataAkhir"/>
                            <div class="input-group-append" data-target="#dataAkhir" data-toggle="datetimepicker">
                                <div class="input-group-text">
                                    <i class="fa fa-calendar"> </i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="penerima">Penerima Promo (Apabila Tersedia)</label>
                        <select name="penerima" id="penerima" class="form-control">
                            <option value="">Silahkan pilih trainer terlebih dahulu!</option>
                            @foreach($user as $kategori)
                                <option value="{{ $kategori->userID}}">{{ $kategori->nama }}</option>
                            @endforeach
                            <option value="baru"> Tambah Penerima </option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Promo</button>
                </form>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                <script>
                    function tambahBarisBaru(){
                        var option = document.createElement("option");
                        option.value = 0;
                        option.text = "Tambah Penerima";
                        
                        var dropdown = document.getElementById("penerima");
                        dropdown.appendChild(option);
                    }

                    tambahBarisBaru();
                </script>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>
