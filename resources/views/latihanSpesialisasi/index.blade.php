<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Latihan Spesialisasi Trainer</title>
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
                    <a class="btn btn-success" href="{{ route('latihanSpesialisasi.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Latihan Spesialisasi Trainer
                    </a>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Nama Trainer</th>
                            <th>Spesialisasi</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($latihanSpesialisasi as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->getTrainerIDLatihan->getUserIDTrainer->nama }}</td>
                                <td>{{ $user->getLatihanIDLatihan->namaLatihan }}</td>
                                <td>
                                    <form action = "{{ route('latihanSpesialisasi.destroy', $user->spesialisasiID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('latihanSpesialisasi.show', $user->spesialisasiID)}}">Edit Data Ruang</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('latihanSpesialisasi.edit', $user->spesialisasiID)}}">Edit Data Ruang</span></a></button>
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