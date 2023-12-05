<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Akuntansi Fitpals</title>
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
                <h1>Data Laporan Keuangan Fitpals</h1>
                <br>
                <div class = "pull-right mb-2">
                    <a class="btn btn-success" href="{{ route('laporanKeuanganDownload') }}"> 
                        <i class="fa-solid fa-file-arrow-down"></i>
                            Unduh Laporan Keuangan
                    </a>
                </div>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>No. </th>
                            <th>Kode Akun</th>
                            <th>Nama Akun </th>
                            <th>Nominal Debet</th>
                            <th>Nominal Kredit</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1 @endphp
                        @foreach ($laporanKeuangan as $item)
                            <tr>
                                <td>{{ $i++}}
                                <td>{{ $item['kode_akun'] }}</td>
                                <td>{{ $item['nama_akun']}}</td>
                                <td>{{ $item['total_debet'] }}</td>
                                <td>{{ $item['total_kredit'] }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>