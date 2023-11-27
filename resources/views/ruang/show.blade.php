<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Ruangan {{$data}}</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                    <div class="mb-3">
                        <label for="name">Nama Ruangan</label>
                        <input type="text" class="form-control" name="name" id="name" value="{{$ruangan->namaRuang}}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="name">Lokasi Gym</label>
                        <input type="text" class="form-control" name="name" id="name" value="{{$ruangan->locationIDRuang->namaLokasi}}"" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="name">Kapasitas Ruangan</label>
                        <input type="number" class="form-control" name="kapasitas" id="kapasitas" value="{{$ruangan->kapasitas}}"" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="fasilitas">Fasilitas Ruangan Gym</label>
                        <textarea name="fasilitas" class="form-control" id="fasilitas" rows="3" readonly>{{$ruangan->fasilitas}}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>