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
              <h1 class="m-0">Tambah Peminjaman</h1>
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
            <div class="col-md-12">
              <!-- general form elements -->
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Data Peminjaman</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form>
                  <div class="card-body">
                    <div class="form-group">
                      <label>Nama Peminjam</label>
                      <small class="text-muted">NISN Siswa - Nama Siswa - Kelas</small>
                      <select class="form-control select2bs4" style="width: 100%;">
                        <option>1231 - Galih Restu Baihaqi - X</option>
                        <option>1232 - Theresia Nazela - XII</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Nama Buku</label>
                      <small class="text-muted">Kode Buku - Nama Buku - Jumlah Buku</small>
                      <select class="form-control select2bs4" style="width: 100%;">
                        <option>1 - Belajar Algoritma Pemrograman - 9</option>
                        <option disabled="disabled">2 - Belajar Java - 0</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-md-6">
                          <label>Tanggal dan Waktu Pinjam</label>
                          <div class="input-group date" id="tgl_pinjam" data-target-input="nearest">
                            <input type="text" class="form-control datetimepicker-input" data-target="#tgl_pinjam" />
                            <div class="input-group-append" data-target="#tgl_pinjam" data-toggle="datetimepicker">
                              <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <label>Tanggal dan Waktu Kembali</label>
                          <div class="input-group date" id="tgl_kembali" data-target-input="nearest">
                            <input type="text" class="form-control datetimepicker-input" data-target="#tgl_kembali" />
                            <div class="input-group-append" data-target="#tgl_kembali" data-toggle="datetimepicker">
                              <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.card-body -->

                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              </div>
              <!-- /.card -->


              </form>
            </div>
            <!-- /.card -->
          </div>
        </div>
    </div>
    <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include('layouts/footer.php') ?>
</body>

</html>