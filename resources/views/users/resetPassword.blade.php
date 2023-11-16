<!DOCTYPE html>
<html>
    <head>
        <title>Reset Password</title>
        <style>
            input[type="password"] {
            /* Ubah tampilan input password menjadi text */
            background-color: white;
            border: 1px solid #ccc;
            padding: 10px;
        }

        /* Tambahkan ikon mata */
        input[type="password"]:before {
            content: "\f06e";
            font-family: FontAwesome;
            font-size: 16px;
            position: absolute;
            top: 5px;
            right: 10px;
            cursor: pointer;
        }
        </style>
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
                    <form action="{{ route('users.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label for="password">Password Baru</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword">Konfirmasi Password</label>
                            <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Alamat karyawan" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Unggah Data</button>
                    </form>
                </section>
            </div>
        </div>
    @include('template/footer')
    <script>
        function togglePassword(){
            const input = document.querySelector('input[type="password"]');
            const isVisible = input.getAttribute("type") === "text";
            input.setAttribute("type", isVisible ? "password" : "text");
            const icon = document.querySelector("input[type='password']:before");
            icon.textContent = isVisible ? "\f06e" : "\f070";
            const icon = document.querySelector("input[type='password']:before");
            icon.addEventListener("click", togglePassword);
        }
    </script>
</body>
</html>