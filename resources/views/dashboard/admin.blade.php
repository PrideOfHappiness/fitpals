<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Dashboard Admin</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')
    <div class="container"> 
        <div class="mt-4">
            <div class="row"> 
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>0</h3>
                            <p>Absensi</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-person"></i>
                        </div>
                        <a href="/admin/karyawan" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3><h3>Rp.{{ $pemasukkan }}</h3>
                            <p>Pemasukkan</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-coins"></i>
                        </div>
                        <a href="/admin/barang" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>Rp.{{ $pengeluaran }}</h3>
                            <p>Pengeluaran</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-dollar-sign"></i>
                        </div>
                        <a href="/admin/barang" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>Rp.{{ $profitabilitas }}</h3>
                            <p>Profitabilitas</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-chart-simple"></i>
                        </div>
                        <a href="/admin/barang" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>0</h3>
                            <p>Ruangan Terpakai</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-building-circle-exclamation"></i>
                        </div>
                        <a href="/admin/barang" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>{{ $traffic }}</h3>
                            <p>Traffic Hour</p>
                        </div>
                        <div class="icon">
                            <i class="fa-regular fa-chart-bar"></i>
                        </div>
                        <a href="/admin/barang" class="small-box-footer">Info Selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">

            </div>
        </div>
    </div>
    @include('template/footer')
</body>
</html>