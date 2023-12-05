 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="{{ asset('style/dist/img/fitpals_logo.jpg') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Dashboard Karyawan</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="info"> 
          <a href="#" class="d-block">
            @auth
              <img src="{{ asset('style/dist/img/'. auth()->user()->fotoUsers) }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
              <span>{{ auth()->user()->nama }}</span>
            @endauth
          </a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <!-- Sidebar Menu -->
      <nav class="mt-2"> 
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-header">Data-data</li>
          <li class="nav-item"> 
              <a href="/karyawan/akuntansi" class="nav-link">
                <i class="fa-solid fa-car"></i>
                  <p>
                    Akuntansi
                  </p>
                </a>
          </li>
          <li class="nav-item"> 
            <a href="{{ route('laporanKeuangan') }}" class="nav-link">
              <i class="fa-solid fa-signs-post"></i>
                <p>
                  Laporan Keuangan
                </p>
              </a>
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
</div>
<!-- ./wrapper -->