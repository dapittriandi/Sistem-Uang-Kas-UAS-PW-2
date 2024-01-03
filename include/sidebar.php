<?php 
  $dataUser = dataUser();
  $jml_pengeluaran = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(jumlah_pengeluaran) as jml_pengeluaran FROM pengeluaran"));
  $jml_pengeluaran = $jml_pengeluaran['jml_pengeluaran'];

  $jml_uang_kas = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(minggu_ke_1 + minggu_ke_2 + minggu_ke_3 + minggu_ke_4) as jml_uang_kas FROM uang_kas"));
  $jml_uang_kas = $jml_uang_kas['jml_uang_kas'];
?>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-primary elevation-4" style="background-color: #f0f4f8;">
<!-- <p style="background: rgb(25,48,108);
background: linear-gradient(0deg, rgba(25,48,108,1) 29%, rgba(29,90,136,1) 100%);"></p> -->
  <!-- Brand Logo -->
  <a href="index.php" class="brand-link">
    <img src="assets/img/img_properties/briliant.png" alt="AdminLTE Logo" class="brand-image" style="opacity: .8">
    <span class="brand-text " style="
  @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@800Quicksand:wght@700&family=Roboto+Condensed:wght@800&display=swap');
  font-family: 'Roboto Condensed', sans-serif; font-weight:800; font-style: 25px; background: linear-gradient(-45deg, rgb(30, 166, 178) 0%, rgb(33, 88, 166) 100%); 
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;">U-Kas</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar" >
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item has-treeview menu-open">
          <a href="profile.php" class="nav-link"><i class="nav-icon fas fa-fw fa-user"></i> <p><?= $dataUser['username']; ?></p></a>
        </li>
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item">
          <div class=" nav-link text-white" style="background-color: #11bd7e;">
            <i class="nav-icon fas fa-money-bill-wave"></i>
            <p>
              Sisa Uang: <?= number_format($jml_uang_kas - $jml_pengeluaran); ?>
            </p>
          </div>
        </li>
        <li class="nav-item has-treeview menu-open" >
          <a href="index.php" class="nav-link active" >
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
            </p>
          </a>
        </li>
        <?php if ($dataUser['id_jabatan'] == '1'): ?>
          <li class="nav-item">
            <a href="jabatan.php" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Jabatan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="user.php" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                User
              </p>
            </a>
          </li>
        <?php endif ?>
        <li class="nav-item">
          <a href="siswa.php" class="nav-link">
            <i class="fas fa-user-tie nav-icon"></i>
            <p>Siswa</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="uang_kas.php" class="nav-link">
            <i class="fas fa-dollar-sign nav-icon"></i>
            <p>Uang Kas</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="pengeluaran.php" class="nav-link">
            <i class="fas fa-sign-out-alt nav-icon"></i>
            <p>Pengeluaran</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="laporan.php" class="nav-link">
            <i class="fas fa-file nav-icon"></i>
            <p>Laporan</p>
          </a>
        </li>
        <div class="dropdown-divider"></div>
        <li class="nav-item">
          <a href="riwayat.php" class="nav-link">
            <i class="fas fa-stopwatch nav-icon"></i>
            <p>Riwayat Uang Kas</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="riwayat_pengeluaran.php" class="nav-link">
            <i class="fas fa-stopwatch nav-icon"></i>
            <p>Riwayat Pengeluaran</p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>