<?php
session_start();
include('../config/conn.php');
if (!isset($_SESSION['id_admin']) || empty($_SESSION['id_admin'])) {
  echo '<script>alert("Silahkan Login Dahulu");</script>';
  header('Refresh: 1; URL=login_admin.php');
  exit(); // Hentikan eksekusi script setelah mengarahkan ke halaman login
}
$id_admin = $_SESSION['id_admin'];
tambah_log($id_admin, "Logout");
session_unset();
session_destroy();
echo '<script>alert("Anda Logout. Redirecting...");</script>';
header('Refresh: 1; URL=../index.php');
exit();