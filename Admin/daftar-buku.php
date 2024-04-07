<?php
session_start();
include('../config/conn.php');

$bukus = mysqli_query($conn, "SELECT * FROM buku");

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
      <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" />
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
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Daftar Buku</h1>
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Data Buku Perpustakaan SMK Negeri 2 Bangkalan</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Kode</th>
                        <th>Kategori</th>
                        <th>Kelas</th>
                        <th>Judul</th>
                        <th>Pengarang</th>
                        <th>Tahun Terbit</th>
                        <th>Penerbit</th>
                        <th>Jumlah</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      foreach ($bukus as $buku) :
                      ?>
                        <tr>
                          <td><?= $buku['kode_buku'] ?></td>
                          <td><?= $buku['kategori_buku'] ?></td>
                          <td><?= $buku['kelas_buku'] ?></td>
                          <td><?= $buku['judul_buku'] ?></td>
                          <td><?= $buku['pengarang'] ?></td>
                          <td><?= $buku['tahun_terbit'] ?></td>
                          <td><?= $buku['penerbit'] ?></td>
                          <td><?= $buku['jumlah_buku'] ?></td>
                          <td>
                            <button type="button" class="btn btn-primary btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm">Hapus</button>
                          </td>
                        </tr>
                      <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Kode</th>
                        <th>Kategori</th>
                        <th>Kelas</th>
                        <th>Judul</th>
                        <th>Pengarang</th>
                        <th>Tahun Terbit</th>
                        <th>Penerbit</th>
                        <th>Jumlah</th>
                        <th>Aksi</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <!-- /.card-body -->
              </div>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>

    <?php include('layouts/footer.php'); ?>
</body>

</html>