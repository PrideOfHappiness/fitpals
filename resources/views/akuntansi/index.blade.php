<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Akuntansi Fitpals</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarUsers')

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
                <h1>Data AKuntansi Fitpals</h1>
                <br>
                <div class = "pull-right mb-2" class = "wrapper">
                    <a class="btn btn-success" href="{{ route('akuntansi.create') }}"> 
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
                            <th>Deskripsi </th>
                            <th>Nama Akun Debet</th>
                            <th>Nama Akun Kredit</th>
                            <th>Jumlah Debet</th>                          
                            <th>Jumlah Kredit</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($akuntansi as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->akunID }}</td>
                                <td>{{ $user->deskripsi }}</td>
                                <td>{{ $user->getKodeAkunDebet->nama_akun}}</td>
                                <td>{{ $user->getKodeAkunKredit->nama_akun}}</td>
                                <td>Rp. {{ number_format($user->jumlah_debet, 0, ',', '.' ) }} </td>
                                <td>Rp. {{ number_format($user->jumlah_kredit, 0, ',', '.' )}}</td>
                                <td>
                                    <form action = "{{ route('akuntansi.destroy', $user->akunID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('akuntansi.show', $user->akunID)}}">Lihat Data Akuntansi</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('akuntansi.edit', $user->akunID)}}">Edit Data Akuntansi</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Akuntansi</button>
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