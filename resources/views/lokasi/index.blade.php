<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Lokasi</title>
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
                <br>
                <div class = "pull-right mb-2">
                    <a class="btn btn-success" href="{{ route('lokasi.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Lokasi
                    </a>
                </div>
                <form action='{{route('searchLokasi')}}' method="post">
                    @csrf
                        <label for="cari" class="form-label">Cari dengan nama: </label>
                        <input type="text" class="form-control" id="cari" name="cari" placeholder="Masukkan lokasi yang dicari disini">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Cari</button>
                </form>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>ID lokasi</th>
                            <th>Nama Gym </th>
                            <th>Lokasi </th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($location as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->locationID }}</td>
                                <td>{{ $user->namaLokasi }}</td>
                                <td>{{ $user->alamat }}</td>
                                <td>
                                    <form action = "{{ route('lokasi.destroy', $user->locationID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('lokasi.show', $user->locationID)}}">Lihat Data Lokasi</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('lokasi.edit', $user->locationID)}}">Edit Data Lokasi</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Lokasi</button>
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