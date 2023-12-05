<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Promo</title>
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
                    <a class="btn btn-success" href="{{ route('promo.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Promo
                    </a>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>ID Promo</th>
                            <th>Kode Promo</th>
                            <th>Deskripsi</th>
                            <th>Promo Mulai</th>
                            <th>Promo Selesai</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($promo as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->promoID }}</td>
                                <td>{{ $user->kode_promo }}</td>
                                <td>{{ $user->deskripsi }}</td>
                                <td>{{ $user->tanggal_mulai }}</td>
                                <td>{{ $user->tanggal_akhir }}</td>
                                <td>
                                    <form action = "{{ route('promo.destroy', $user->promoID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('promo.show', $user->promoID)}}">Lihat Data Promo</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('promo.edit', $user->promoID)}}">Edit Data Promo</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Promo</button>
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