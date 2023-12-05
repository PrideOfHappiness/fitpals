<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Karyawan</title>
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
                    <input type="hidden" name="location" id="location" value="{{ auth()->user()->locationID }}">
                    <div class="mb-3">
                        <label for="name">Nama</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nama karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="alamat">Alamat</label>
                        <input type="text" class="form-control" name="alamat" id="alamat" placeholder="Alamat karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="telp">Nomor Telepon</label>
                        <input type="text" class="form-control" name="telp" id="telp" placeholder="Nomor Telepon karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Alamat Email karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="jenis_kelamin">Jenis Kelamin</label>
                        <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
                            <option value="">Silahkan pilih jenis kelamin terlebih dahulu!</option>
                            <option value="L">Laki-laki</option>
                            <option value="P">Perempuan</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="kategori">Jabatan Karyawan</label>
                        <select name="kategori" id="kategori" class="form-control">
                            <option value="">Silahkan pilih jabatan terlebih dahulu!</option>
                            <option value="admin">Admin</option>
                            <option value="karyawan">Karyawan</option>
                            <option value="member">Member</option>
                            <option value="sales">Sales</option>
                            <option value="trainer">Trainer</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password karyawan" required>
                    </div>
                    <div class="mb-3">
                        <label for="passwordConfirm">Konfirmasi Password</label>
                        <input type="password" class="form-control" name="passwordConfirm" id="passwordConfirm" placeholder="Konfirmasi Password" required>
                    </div>
                    <div class="mb-3">
                        <label for="fotouser">Foto Wajah Karyawan</label>
                        <input type="file" class="form-control" name="fotouser" id="fotouser">
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