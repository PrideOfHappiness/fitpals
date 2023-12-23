<!DOCTYPE html>
<html>
    <head>
        <title>Laporan Keuangan</title>
        <style>
            .foto {
                justify-content: center;
                width: 100px;
                height: 100px;
            }
        </style>
    </head>
    <body>
        <header>
            <img src="{{ asset('style/dist/img/fitpals_logo.jpg') }}" alt="Logo Fitpals" class="logo">
            <h1>Fitpals Gym Solo</h1>
            <p>Jalan Wora-Wari 32, Kelurahan Sriwedari, Kecamatan Laweyan, Kota Surakarta, Jawa Tengah 57141</p>
            <p>No. Telepon: (0271)851785</p>
        </header>
        <main>
            <h2>Laporan Keuangan</h2>
            <p>Periode Desember 2023 </p>
            <section class="foto">
                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                        <div class="p-6 bg-white border-b border-gray-200">
                            <img src="{{ asset('foto/qr_code/' . $data->namaFile) }}" alt="QR Code">
                        </div>
                    </div>
                <div>
            </section>
    </body>
</html>