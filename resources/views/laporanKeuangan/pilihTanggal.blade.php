<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Pilih periode Laporan Keuangan</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')
    <div class="container">
        <div class="card card-header">
            <div class="card-header">
                <h3>Pilih Periode Laporan Keuangan</h3>
                <p>Silahkan pilih bulan dan periode untuk mencari dan mencetak laporan keuangan perusahaan.</p>
            </div>
        </div>
        <form method="POST" action="{{ route('laporanKeuanganDownload')}}" enctype="multipart/form-data">
            @csrf
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Bulan</label>
                            <select class="form-control select2bs4" name="bulan" id="bulan" style="width: 100%;">
                                <option value="" selected="selected">Silahkan pilih bulan terlebih dahulu!</option>
                                <option value="01">Januari</option>
                                <option value="02">Februari</option>
                                <option value="03">Maret</option>
                                <option value="04">April</option>
                                <option value="05">Mei</option>
                                <option value="06">Juni</option>
                                <option value="07">Juli</option>
                                <option value="08">Agustus</option>
                                <option value="09">September</option>
                                <option value="10">Oktober</option>
                                <option value="11">November</option>
                                <option value="12">Desember</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Tahun</label>
                            <select class="form-control select2bs4" name="tahun" id="tahun" style="width: 50%;">
                                <option value="" selected="selected">Silahkan pilih tahun terlebih dahulu!</option>
                                <option value="2023">2023</option>
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                                <option value="2026">2026</option>
                                <option value="2027">2027</option>
                                <option value="2028">2028</option>
                                <option value="2029">2029</option>
                                <option value="2030">2030</option>
                                <option value="2031">2031</option>
                                <option value="2032">2032</option>
                                <option value="2033">2033</option>
                                <option value="2034">2034</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        <button type="submit" class="btn btn-primary">Cari Data</button>
    </div>     
</form>
@include('template/footer')
</body>
</html>