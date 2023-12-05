<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Attendance Fitpals</title>
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
                <h1>Data Attendance Fitpals</h1>
                <br>
                <div class = "pull-right mb-2" class = "wrapper">
                    <a class="btn btn-success" href="{{ route('createAbsensi') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Catat Waktu Masuk
                    </a>
                </div>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>ID</th>
                            <th>Waktu Masuk </th>
                            <th>Waktu Keluar</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($attendance as $user)
                            <tr>
                                <td>{{ $i++}}</td>
                                <td>{{ $user->attendanceID }} </td>
                                <td>{{ $user->datetime_masuk }}</td>
                                <td>{{ $user->datetime_keluar}}</td>
                                <td>
                                    @if($user->datetime_masuk != '' && $user->datetime_keluar == '')                                       
                                    <button class="badge bg-danger"><a href="{{ route('keluarAbsensi', $user->attendanceID)}}">Catat Waktu Keluar</span></a></button>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {!! $attendance->links() !!}
            </section>
        </div>
    </div>
    @include('template/footer')
</body>