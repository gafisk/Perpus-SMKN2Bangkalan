<?php
session_start();
include('../config/conn.php');
if (!isset($_SESSION['id_user']) || empty($_SESSION['id_user'])) {
  echo '<script>alert("Silahkan Login Dahulu"); window.location.href="../login.php";</script>';
  exit(); // Hentikan eksekusi script setelah mengarahkan ke halaman login
}
$id_user = $_SESSION['id_user'];
$data_user = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM users WHERE id_user = '$id_user'"));

if (isset($_POST['submit'])) {
  $nama_user = mysqli_escape_string($conn, $_POST['nama']);
  $kelas_user = mysqli_escape_string($conn, $_POST['kelas']);
  $telp_user = mysqli_escape_string($conn, $_POST['no_telp']);
  $alamat_user = mysqli_escape_string($conn, $_POST['alamat']);
  if (empty($nama_user) || empty($kelas_user) || empty($telp_user) || empty($alamat_user)) {
    echo "<script>alert('Kolom Inputan Data Tidak Boleh Kosong!');</script>";
  } else {
    echo "<script>confirm('Apakah Anda yakin ingin mengubah data?')</script>";
    $update_data = mysqli_query($conn, "UPDATE users SET nama_user = '$nama_user', kelas_user = '$kelas_user', telp_user = '$telp_user', alamat_user = '$alamat_user' WHERE id_user = '$id_user'");
    if ($update_data) {
      $_SESSION['sukses'] = true;
      $_SESSION['msg'] = "Update Data Sukses";
    } else {
      $_SESSION['gagal'] = true;
      $_SESSION['msg'] = "Update Data Gagal";
    }
    header('location:../Users/profile.php');
    exit();
  }
}

if (isset($_POST['ubah'])) {
  $pass_lama = mysqli_escape_string($conn, $_POST['pass_lama']);
  $pass_baru = mysqli_escape_string($conn, $_POST['pass_baru']);
  if (empty($pass_lama) || empty($pass_baru)) {
    echo "<script>alert('Kolom Isian Tidak Boleh Kosong!');</script>";
  } else if ($data_user['password'] != $pass_lama) {
    echo "<script>alert('Password Lama Anda Tidak Cocok!');</script>";
  } else {
    $ubah_password = mysqli_query($conn, "UPDATE users SET password = '$pass_baru' WHERE password = '$pass_lama' AND id_user = '$id_user'");
    if ($ubah_password) {
      $_SESSION['sukses'] = true;
      $_SESSION['msg'] = "Password Berhasil Diubah";
    } else {
      $_SESSION['gagal'] = true;
      $_SESSION['msg'] = "Password Gagal Diubah";
    }
    header('location:../Users/profile.php');
    exit();
  }
}
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
      <img class="animation__shake" src="../Assets/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" />
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
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Profile</h1>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <?php
          if (isset($_SESSION['sukses']) && $_SESSION['sukses']) : ?>
            <div class="alert alert-success alert-dismissible fade show" id="myAlert" role="alert">
              <strong>Sukses</strong> <?= $_SESSION['msg'] ?>.
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
          <?php
            unset($_SESSION['sukses']);
            unset($_SESSION['msg']);
          endif; ?>
          <?php if (isset($_SESSION['gagal']) && $_SESSION['gagal']) : ?>
            <div class="alert alert-danger alert-dismissible fade show" id="myAlert" role="alert">
              <strong>Gagal</strong> <?= $_SESSION['msg'] ?>.
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
          <?php
            unset($_SESSION['gagal']);
            unset($_SESSION['msg']);
          endif; ?>
          <div class="row">
            <div class="col-md-3">

              <!-- Profile Image -->
              <div class="card card-primary card-outline">
                <div class="card-body box-profile">
                  <div class="text-center">
                    <img class="profile-user-img img-fluid img-circle" src="../Assets/dist/img/users.png" alt="User profile picture">
                  </div>

                  <h3 class="profile-username text-center"><?= $data_user['nama_user'] ?></h3>

                  <p class="text-muted text-center"><?= $data_user['role_user'] ?></p>

                  <ul class="list-group list-group-unbordered mb-3">
                    <li class="list-group-item">
                      <b><?= ($data_user['role_user'] == 'Siswa') ? 'NISN' : 'NIP' ?></b> <a class="float-right"><?= $data_user['ni_user'] ?></a>
                    </li>
                    <li class="list-group-item">
                      <b>Jenis Kelamin</b> <a class="float-right"><?= $data_user['jk_user'] ?></a>
                    </li>
                    <?php
                    if ($data_user['role_user'] == 'Siswa') : ?>
                      <li class="list-group-item">
                        <b>Kelas</b> <a class="float-right"><?= $data_user['kelas_user'] ?></a>
                      </li>
                    <?php endif ?>
                  </ul>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->

              <!-- About Me Box -->
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">About Me</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <strong><i class="fas fa-phone mr-1"></i> No Telp </strong>

                  <p class="text-muted">
                    <?= $data_user['telp_user'] ?>
                  </p>

                  <hr>

                  <strong><i class="fas fa-map-marker-alt mr-1"></i> Alamat </strong>

                  <p class="text-muted"><?= $data_user['alamat_user'] ?></p>

                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
              <div class="card">
                <div class="card-header p-2">
                  <ul class="nav nav-pills">
                    <li class="nav-item"><a class="nav-link active" href="#settings" data-toggle="tab">Settings</a></li>
                    <li class="nav-item"><a class="nav-link" href="#password" data-toggle="tab">Password</a></li>
                  </ul>
                </div><!-- /.card-header -->
                <div class="card-body">
                  <div class="tab-content">
                    <div class="active tab-pane" id="settings">
                      <form class="form-horizontal" method="POST" action="">
                        <div class="form-group row">
                          <label for="inputName" class="col-sm-2 col-form-label">Nama</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName" name="nama" placeholder="Ganti Nama..." value="<?= $data_user['nama_user'] ?>">
                          </div>
                        </div>
                        <?php if ($data_user['role_user'] == 'Siswa') : ?>
                          <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                              <select class="form-control" name="kelas">
                                <option <?= ($data_user['kelas_user'] == 'X') ? 'selected' : '' ?>>X</option>
                                <option <?= ($data_user['kelas_user'] == 'XI') ? 'selected' : '' ?>>XI</option>
                                <option <?= ($data_user['kelas_user'] == 'XII') ? 'selected' : '' ?>>XII</option>
                              </select>
                            </div>
                          </div>
                        <?php endif ?>
                        <div class="form-group row">
                          <label for="inputName2" class="col-sm-2 col-form-label">No Telp</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName2" placeholder="No Telp..." name="no_telp" value="<?= $data_user['telp_user'] ?>">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="inputExperience" class="col-sm-2 col-form-label">Alamat</label>
                          <div class="col-sm-10">
                            <textarea class="form-control" name="alamat" id="inputExperience" placeholder="Experience"><?= $data_user['alamat_user'] ?></textarea>
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="offset-sm-2 col-sm-10">
                            <button type="submit" name="submit" onclick="return confirm('Anda Yakin Ingin Merubah Data Anda?')" class="btn btn-danger">Submit</button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="password">
                      <form class="form-horizontal" method="POST" action="">
                        <div class="form-group row">
                          <label for="pass_lama" class="col-sm-2 col-form-label">Password Lama</label>
                          <div class="col-sm-10">
                            <input type="password" class="form-control" id="pass_lama" name="pass_lama">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="pass_baru" class="col-sm-2 col-form-label">Password Baru</label>
                          <div class="col-sm-10">
                            <input type="password" class="form-control" id="pass_baru" name="pass_baru">
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="offset-sm-2 col-sm-10">
                            <button type="submit" name="ubah" onclick="return confirm('Anda Yakin Ingin Merubah Password?')" class="btn btn-danger">Ubah
                              Password</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <?php include('layouts/footer.php'); ?>
</body>

</html>