<?php
session_start();
include('../config/conn.php');
if (!isset($_SESSION['id_user']) || empty($_SESSION['id_user'])) {
  echo '<script>alert("Silahkan Login Dahulu");</script>';
  header('Refresh: 1; URL=../login.php');
  exit(); // Hentikan eksekusi script setelah mengarahkan ke halaman login
}

$id_user = $_SESSION['id_user'];
$data_peminjaman = mysqli_query($conn, "SELECT *, NOW() AS waktu_sekarang, CASE WHEN NOW() > tanggal_kembali THEN 'Telat' ELSE 'Pinjam' END AS keterangan FROM transaksi INNER JOIN buku USING(id_buku) WHERE id_users = '$id_user' ORDER BY transaksi.id_transaksi DESC");

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php include('layouts/head.php') ?>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__shake" src="../Assets/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60"
        width="60" />
    </div>

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            <i class="fas fa-expand-arrows-alt"></i>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?php include('layouts/main-user.php'); ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Dashboard</h1>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Data Peminjaman</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-body p-0">
            <table class="table table-striped projects">
              <thead>
                <tr>
                  <th style="width: 20%">
                    Kode Peminjaman
                  </th>
                  <th style="width: 30%">
                    Nama Buku
                  </th>
                  <th style="width: 20%">
                    Tanggal Pinjam
                  </th>
                  <th style="width: 20%">
                    Tanggal Kembali
                  </th>
                  <th style="width: 10%" class="text-center">
                    Status
                  </th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($data_peminjaman as $data) : ?>
                <tr>
                  <td>
                    <?= $data['kode_transaksi'] ?>
                  </td>
                  <td>
                    <a>
                      <?= $data['judul_buku'] ?>
                    </a>
                    <br />
                    <small>
                      <?= $data['pengarang'] ?>
                    </small>
                  </td>
                  <td>
                    <?= $data['tanggal_pinjam'] ?>
                  </td>
                  <td>
                    <?= $data['tanggal_kembali'] ?>
                  </td>
                  <td class="project-state">
                    <?php
                      if ($data['status'] == 'Kembali') {
                        $warna_bedge = 'badge badge-success';
                      } elseif ($data['keterangan'] == 'Telat') {
                        $warna_bedge = 'badge badge-warning';
                      } elseif ($data['keterangan'] == 'Pinjam') {
                        $warna_bedge = 'badge badge-success';
                      }
                      ?>
                    <span
                      class="<?= $warna_bedge ?>"><?= ($data['status'] == 'Kembali') ? 'Kembali' : $data['keterangan'] ?></span>
                  </td>
                </tr>
                <?php endforeach ?>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->

      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php include('layouts/footer.php') ?>
</body>

</html>