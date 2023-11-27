<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Latihan</title>
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
                    <a class="btn btn-success" href="{{ route('latihan.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Latihan
                    </a>
                </div>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Nama Latihan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($latihan as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->namaLatihan }}</td>
                                <td>
                                    <form action = "{{ route('latihan.destroy', $user->latihanID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('latihan.show', $user->latihanID)}}">Lihat Data Lokasi</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Latihan</button>
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