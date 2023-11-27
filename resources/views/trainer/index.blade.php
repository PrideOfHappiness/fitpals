<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Trainer</title>
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
                    <a class="btn btn-success" href="{{ route('trainer.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Trainer
                    </a>
                </div>
                <form action='{{route('searchUsers')}}' method="post">
                    @csrf
                    <div class="pull-right mb-2" class="wrapper"> 
                        <label for="pencarian" class="form-label">Cari berdasarkan kategori Trainer: </label>
                        <select name="pencarian" id="pencarian" class="js-example-basic-single form-control">
                            <option value="">Silahkan pilih kategori terlebih dahulu!</option>
                            <option value="karyawan"> Karyawan</option>
                                <option value="personal trainer"> Personal Trainer </option>
                                <option value="trainer"> Trainer Umum</option>
                                <option value="trainer_personal trainer"> Trainer Umum dan Personal Trainer </option>                                
                        </select>
                        <label for="cari" class="form-label">Atau, Cari dengan nama: </label>
                        <input type="text" class="form-control" id="cari" name="cari" placeholder="Masukkan nama yang dicari disini">
                    </div>
                    <button type="submit" class="btn btn-primary">Cari</button>
                </form>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Trainer ID</th>
                            <th>Nama </th>
                            <th>Status </th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($trainer as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->trainerID }}</td>
                                <td>{{ $user->getUserIDTrainer->nama }}</td>
                                <td>{{ $user->jenis }}</td>
                                <td>
                                    <form action = "{{ route('trainer.destroy', $user->trainerID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('trainer.show', $user->trainerID)}}">Edit Data Trainer</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('trainer.edit', $user->trainerID)}}">Edit Data Trainer</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Trainer</button>
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