<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Ubah Data Trainer</title>
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
                <form action="{{ route('trainer.store')}}" method="POST" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <div class="mb-3">
                        <label for="name">Nama</label>
                        <input type="text" name="nama" placeholder="Nama" value="{{ $trainer->getUserIDTrainer->nama}}" readonly>
                    <div class="mb-3">
                        <label for="jenis">Status </label>
                        <input type="checkbox" id="jenis" name="jenis[]" value="{{$trainer->jenis}}" checked>{{ $trainer->jenis }}
                        <input type="checkbox" id="jenis" name="jenis[]" value="Trainer">Trainer Umum &nbsp;
                        <input type="checkbox" id="jenis" name="jenis[]" value="Personal Trainer">Personal Trainer
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>