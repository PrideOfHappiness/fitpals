 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="{{ route('adminHome')}}" class="brand-link">
    <img src="{{ asset('style/dist/img/fitpals_logo.jpg') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">Dashboard Admin</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="info"> 
        <a href="{{ route('adminHome') }}" class="d-block">
          @auth
            <img src="{{ asset('style/dist/img/avatar2.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span>{{ auth()->user()->nama }}</span>
          @endauth
        </a>
      </div>
    </div>

    <!-- SidebarSearch Form -->
    <!-- Sidebar Menu -->
    <nav class="mt-2"> 
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-header">Notifikasi</li>
        <i class="fa-solid fa-cars"></i> 
              <a href="#" class="nav-link">
                <i class="fa-solid fa-comment"></i> 
                  <p>
                    Lihat Notifikasi
                  </p>
                </a>
        </li>
        <li class="nav-header">Absensi</li>
        <i class="fa-solid fa-cars"></i> 
              <a href="/absensi" class="nav-link">
                <i class="fa-solid fa-comment"></i> 
                  <p>
                    Absensi
                  </p>
                </a>
        </li>
        <li class="nav-header">Data-data</li>
        <i class="fa-solid fa-cars"></i> 
              <a href="/admin/users" class="nav-link">
                <i class="fa-solid fa-person"></i> 
                  <p>
                    Pengguna
                  </p>
                </a>
          </li>
        <i class="fa-solid fa-cars"></i> 
              <a href="/admin/lokasi" class="nav-link">
                <i class="fa-solid fa-location-dot"></i> 
                  <p>
                    Lokasi
                  </p>
                </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/promo" class="nav-link">
              <i class="fa-solid fa-person-chalkboard"></i>
                <p>
                  Promo
                </p>
              </a>
        </li>
          <li class="nav-item"> 
              <a href="/admin/latihan" class="nav-link">
                <i class="fa-solid fa-person-chalkboard"></i>
                  <p>
                    Latihan
                  </p>
                </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/latihanSpesialisasi" class="nav-link">
              <i class="fa-solid fa-person-chalkboard"></i>
                <p>
                  Latihan Spesialisasi
                </p>
              </a>
        </li>
          <li class="nav-item"> 
            <a href="/admin/trainer" class="nav-link">
              <i class="fa-solid fa-person"></i>
                <p>
                  Trainer
                </p>
            </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/ruangan" class="nav-link">
              <i class="fa-solid fa-people-roof"></i>
                <p>
                  Ruangan
                </p>
            </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/kelas" class="nav-link">
              <i class="fa-solid fa-person-chalkboard"></i>
                <p>
                  Kelas
                </p>
            </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/platNomor" class="nav-link">
              <i class="fa-solid fa-arrows-to-dot"></i>
                <p>
                  Absensi
                </p>
            </a>
          </li>
          <li class="nav-item"> 
            <a href="/admin/aboutUs" class="nav-link">
              <i class="fa-solid fa-info"></i>
                <p>
                  Informasi Gym
                </p>
            </a>
          </li>
          <li class="nav-header">Performa Gym</li>
          <li class="nav-item"> 
              <a href="/admin/foto" class="nav-link">
                <i class="fa-brands fa-salesforce"></i>
                  <p>
                    Sales Report
                  </p>
                </a>
          </li>
          <li class="nav-item"> 
              <a href="/karyawan/laporanKeuangan" class="nav-link">
                <i class="fa-solid fa-coins"></i>
                  <p>
                    Financial Report 
                  </p>
                </a>
          </li>
          <li class="nav-header">Logout</li>
          <li class="nav-item menu-open"> 
              <a href="{{ route('logout')}}" class="nav-link active">
                <i class="fa-solid fa-arrow-right-from-bracket"></i>
                  <p>
                    Keluar Dari Sistem
                  </p>
              </a>
          </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
  <!-- Control sidebar content goes here -->
</aside >
<!-- /.control-sidebar -->
<!-- ./wrapper -->