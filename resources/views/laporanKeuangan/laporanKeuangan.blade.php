<!DOCTYPE html>
<html lang="id">
<head>
  <title>Laporan Keuangan</title>
  <style>
    body {
        font-family: sans-serif;
        font-size: 16px;
        line-height: 1.5;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #f6f6f6;
        padding: 20px;
    }

    h1 {
        font-size: 24px;
        margin-bottom: 0;
    }

    h2 {
        text-align: center;
    }

    .p-Periode {
        text-align: center;
    }

    p {
        margin-bottom: 10px;
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 5px;
    }

    th {
        text-align: center;
    }

    .logo {
        width:75px;
        height: 75px;
    }

    .right-align{
        text-align: right;
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
        <table>
            <thead>
                <tr>
                    <th>Kode Akun</th>
                    <th>Nama Akun </th>
                    <th>Nominal Debet</th>
                    <th>Nominal Kredit</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($laporan as $item)
                    <tr>
                        <td>{{ $item['kode_akun'] }}</td>
                        <td>{{ $item['nama_akun']}}</td>
                        <td>{{ $item['total_debet'] }}</td>
                        <td>{{ $item['total_kredit'] }}</td>
                    </tr>
                @endforeach
                    <tr>
                        <td colspan="2">Total</td>
                        <td><?php echo 'Rp' . number_format(array_sum(array_column($laporan, 'total_debet')), 0, ',', '.'); ?></td>
                        <td><?php echo 'Rp' . number_format(array_sum(array_column($laporan, 'total_kredit')), 0, ',', '.'); ?></td>
                    </tr>
            </tbody>
        </table>
        <p>Dicetak oleh: <?php echo $laporan[0]['kepala']; ?></p>
        <p>Tanggal: <?php echo date('d-m-Y'); ?></p>
    </main>
</body>