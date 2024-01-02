<!DOCTYPE html>
<html> 
    <head> 
        @include('template/header')
        <title>Company Information {{ $aboutUs->getLocationIDAboutUs->namaLokasi}} </title>
        <style>
            
        </style>
    </head>
    <body>
        @include('template/navbar')
        @include('template/sidebarAdmin')
        <div class="container">
            <div class="col md-4">
                <section class="content">
                    <div class="mb-3">
                        <label for="name">Nama Perusahaan</label>
                        <input type="text" class="form-control" name="nama" value="{{ $aboutUs->getLocationIDAboutUs->namaLokasi }}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi</label>
                        <textarea name="deskripsi" id="deskripsi" class="form-control" row="4" cols="50" readonly>{{ $aboutUs->deskripsi }}</textarea>
                    </div>
                </section>
            </div>
        </div>
        @include('template/footer')
    </body>
</html>