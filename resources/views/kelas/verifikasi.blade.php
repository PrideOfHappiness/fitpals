<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Kelas - Menunggu Verifikasi</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container">
        @if ($message = Session::get('info'))
            <div class="alert alert-info">
                <p>{{ $message }}</p>
            </div>
        @endif 
        <div class="mt-4"> 
            <section class="content"> 
                <h1>Data Kelas</h1>
                <br>
                <div class = "pull-right mb-2" class = "wrapper">
                    <a class="btn btn-success" href="{{ route('kelas.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Kelas
                    </a>
                </div>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Kode Kelas</th>
                            <th>Nama Kelas </th>
                            <th>Jenis </th>
                            <th>Kuota </th>
                            <th>Status </th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($dataKelas as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->kelasID }}</td>
                                <td>{{ $user->nama_kelas }}</td>
                                <td>{{ $user->jenis_kelas }}</td>
                                <td>{{ $user->kuota_peserta }}</td>
                                <td>{{ $user->status }}</td>
                                <td>
                                    <form action = "{{ route('setVerifikasiKelas', $user->kelasID)}}" method="Post">
                                        @csrf
                                        <button type="submit" name="verifikasiKelas" class="btn btn-success" value="setuju">Verifikasi Kelas</button>
                                        <button type="submit" name="verifikasiKelas" class="btn btn-danger" value="tolak">Tidak Verifikasi Kelas</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>