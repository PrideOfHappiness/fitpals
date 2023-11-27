<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Karyawan</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <p>{{ $message }}</p>
                    </div>
                @endif 
                <section class="content"> 
                    @if ($message = Session::get('error'))
                        <div class="alert alert-danger">
                            <p>{{ $message }}</p>
                        </div>
                    @endif 
                <form action="{{ route('updatePassword')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="name">Token Reset Password</label>
                        <input type="text" class="form-control" name="token" id="token" placeholder="12 Karakter Token" required>
                    </div>
                    <div class="mb-3">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="passwordConfirm">Konfirmasi Password</label>
                        <input type="password" class="form-control" name="passwordConfirm" id="passwordConfirm" placeholder="Konfirmasi Password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                <p>Catatan:</p>
                <br>
                <p>1. Password diisi minimal 8 karakter.</p>
                <br>
                <p>1. Password mengandung setidaknya satu huruf kapital, 1 angka, dan satu karakter tambahan ('(', ')', '!', '<', dan lain-lain).</p>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>