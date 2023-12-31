<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Hasil Pencarian Data Users</title>
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
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>User ID</th>
                            <th>Nama </th>
                            <th>Jabatan </th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($hasil as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->userID }}</td>
                                <td>{{ $user->nama }}</td>
                                <td>{{ $user->kategori }}</td>
                                <td>
                                    <form action = "{{ route('users.destroy', $user->userID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('users.show', $user->userID)}}">Detail Data Users</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('users.edit', $user->userID)}}">Edit Data Users</span></a></button>
                                        <button class="badge bg-warning"><a href="/users/resetpassword/email">Reset Password</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Users</button>
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