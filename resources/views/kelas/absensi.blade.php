<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Attendance Fitpals</title>
    <style>
        .qrcode {
            justify-content: center;
        }

        .qrcode img {
            width: 100px;
            height: 100px;
        }
    </style>
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
        <a class="btn btn-success" href="{{ route('downloadQRCode', $data->QRCode_code)}}"> 
            <i class="fa-solid fa-plus"></i>
                Download QR Code
        </a>
        <div class="mt-4"> 
            <section class="content"> 
                <h1>QR Code Attendance Fitpals</h1>
                <p>Silahkan cetak QR Code di bawah ini untuk melakukan absensi anda</p>
                <div class="qrcode">
                    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                            <div class="p-6 bg-white border-b border-gray-200">
                                <img src="{{ asset('foto/qr_code/' . $data->namaFile) }}" alt="QR Code">
                            </div>
                            <div class="col-md-6">
                                <p>Kelas ID: {{ $QRCode->kelasID }}</p>
                                <p>QR Code ID: {{ $QRCode->QRCode_code }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
                