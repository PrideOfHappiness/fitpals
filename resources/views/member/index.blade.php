<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Member</title>
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
                    <a class="btn btn-success" href="{{ route('member.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Member
                    </a>
                </div>
                <form action='{{route('searchMember')}}' method="post">
                    @csrf
                    <div class="pull-right mb-2" class="wrapper"> 
                        <label for="pencarian" class="form-label">Cari berdasarkan kategori Users: </label>
                        <select name="pencarian" id="pencarian" class="js-example-basic-single form-control">
                            <option value="">Silahkan pilih kategori terlebih dahulu!</option>
                            <option value="karyawan"> Karyawan</option>
                                <option value="member"> Member </option>
                                <option value="sales"> Sales</option>
                                <option value="trainer"> Trainer </option>                                
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
                            <th>Member ID</th>
                            <th>Nama </th>
                            <th>Paket Berlangganan </th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->userID }}</td>
                                <td>{{ $user->nama }}</td>
                                <td>{{ $user->kategori }}</td>
                                <td>
                                    <form action = "{{ route('member.destroy', $user->memberID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('member.show', $user->memberID)}}">Edit Data Member</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('member.edit', $user->memberID)}}">Edit Data Member</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Member</button>
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