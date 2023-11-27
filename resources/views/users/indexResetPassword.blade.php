<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Reset Password - Email</title>
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
                <form action="{{ route('setResetPassword')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="name">Email Pengguna</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Alamat Email" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>