<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Attendance Fitpals</title>
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
                <h1>QR Code Attendance Fitpals</h1>
                <p>Silahkan scan QR Code di bawah ini untuk melakukan absensi anda</p>
                <div class="col md-2">
                    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                            <div class="p-6 bg-white border-b border-gray-200">
                                <img src="data:image/png;base64,{{ $QRCode }}" style="width: 2cm; height: 2cm;" alt="QR Code Absensi">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
                