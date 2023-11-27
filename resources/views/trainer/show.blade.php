<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Trainer</title>
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
                    @csrf
                    <div class="mb-3">
                        <label for="name">Nama</label>
                        <input type="text" name="name" class="form-control" value="{{ $trainer->getUserIDTrainer->nama }}">
                    </div>
                    <div class="mb-3">
                        <label for="jenis_kelamin">Status </label>
                        <input type="text" name="jenis" class="form-control" value="{{ $trainer->jenis}}">
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>