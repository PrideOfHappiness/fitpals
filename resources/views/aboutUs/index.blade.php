<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Company Information</title>
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
                    <a class="btn btn-success" href="{{ route('aboutUs.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Company Information
                    </a>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Nama Lokasi</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($aboutUs as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->getLocationIDAboutUs->namaLokasi }}</td>
                                <td>
                                    <form action = "{{ route('aboutUs.destroy', $user->aboutUsID) }}" method="Post">
                                        <button class="badge bg-info"><a href="{{ route('aboutUs.show', $user->aboutUsID)}}">Detail Company Information</span></a></button>
                                        <button class="badge bg-success"><a href="{{ route('aboutUs.edit', $user->aboutUsID)}}">Edit Data Information</span></a></button>
                                        @csrf
                                            @method("DELETE")
                                            <button type="submit" class="badge bg-danger"> Hapus Data Information</button>
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