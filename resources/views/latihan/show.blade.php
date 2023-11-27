<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Latihan </title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                    <div class="mb-3">
                        <label for="idLatihan">Kode Latihan</label>
                        <input type="text" class="form-control" name="idLatihan" id="idLatihan"  value={{ $latihan->latihanID }} readonly>
                    </div>
                    <div class="mb-3">
                        <label for="name">Nama Latihan</label>
                        <input type="text" name="name" class="form-control" id="name" value="{{ $latihan->namaLatihan }}" readonly>
                    </div>

            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>