<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Kelas</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container">
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif 
        @if ($message = Session::get('error'))
            <div class="alert alert-danger">
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
                    <a class="btn btn-info" href="{{ route('getVerifikasiKelas') }}"> 
                        <i class="fa-solid fa-list"></i>
                            Lihat Verifikasi kelas
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
                        @foreach ($kelas as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->kelasID }}</td>
                                <td>{{ $user->nama_kelas }}</td>
                                <td>{{ $user->jenis_kelas }}</td>
                                <td>{{ $user->kuota_peserta }}</td>
                                <td>{{ $user->status }}</td>
                                <td>
                                    <form action = "{{ route('kelas.destroy', $user->kelasID) }}" method="Post">
                                        @if($user->status == 'Menunggu pemilihan ruang dan verifikasi' || $user->status == 'Penggantian Data - Menunggu Verifikasi Admin' || $user->status == 'Menunggu pemilihan ruangan, sudah divalidasi admin')
                                            <a class="badge bg-secondary" href="{{ route('pilihRuang', $user->kelasID)}}">Pilih Ruang</span></a>
                                        @endif
                                        @if($user->status == 'Sudah Diverifikasi Admin')
                                            <button class="badge bg-light"><a href="{{ route('downloadQRCode', $user->kelasID)}}">Buat QR Code Absensi</span></a></button>
                                        @endif
                                        <button class="badge bg-info"><a href="{{ route('kelas.show', $user->kelasID)}}">Lihat Data Kelas</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('kelas.edit', $user->kelasID)}}">Edit Data Kelas</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Kelas</button>
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