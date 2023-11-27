<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Ruangan</title>
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
                    <a class="btn btn-success" href="{{ route('ruangan.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Ruangan
                    </a>
                </div>
                <form action='{{route('searchMember')}}' method="post">
                    @csrf
                        <label for="cari" class="form-label">Atau, Cari dengan nama: </label>
                        <input type="text" class="form-control" id="cari" name="cari" placeholder="Masukkan nama ruang yang dicari disini">
                    </div>
                    <button type="submit" class="btn btn-primary">Cari</button>
                </form>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Ruang ID</th>
                            <th>Nama Ruang</th>
                            <th>Lokasi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($ruang as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->ruangID }}</td>
                                <td>{{ $user->namaRuang }}</td>
                                <td>{{ $user->locationIDRuang->namaLokasi }}</td>
                                <td>
                                    <form action = "{{ route('ruangan.destroy', $user->ruangID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('ruangan.show', $user->ruangID)}}">Edit Data Ruang</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('ruangan.edit', $user->ruangID)}}">Edit Data Ruang</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Ruang</button>
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