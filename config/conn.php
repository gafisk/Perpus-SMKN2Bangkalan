<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpus_smkn2bangkalan";
$conn = mysqli_connect($servername, $username, $password, $dbname);

function get_code_buku($kategori)
{
  global $conn;
  $hasil = [];

  $prefix = ($kategori == 'pendidikan') ? "P-" : "NP-";

  $result = mysqli_query($conn, "SELECT MAX(SUBSTRING(kode_buku, 4) + 0) as max_code FROM buku WHERE kategori_buku = '$kategori'");
  $row = mysqli_fetch_assoc($result);
  $max_code = $row['max_code'];
  $kode_buku = $prefix . str_pad($max_code + 1, 4, "0", STR_PAD_LEFT);

  $hasil[] = $kode_buku;
  $hasil[] = ($kategori == 'pendidikan') ? 'Pendidikan' : 'Non Pendidikan';

  return $hasil;
}

function get_code_transaksi()
{
  global $conn;

  $result = mysqli_query($conn, "SELECT MAX(SUBSTRING(kode_transaksi, 3) + 0) as max_code FROM transaksi");
  $row = mysqli_fetch_assoc($result);
  $max_code = $row['max_code'];
  $kode_transaksi = "T-" . str_pad($max_code + 1, 4, "0", STR_PAD_LEFT);

  return $kode_transaksi;
}

function tambah_log($id_admin, $keterangan)
{
  global $conn;
  $query = mysqli_query($conn, "INSERT INTO log VALUES (NULL, '$id_admin', NOW(), '$keterangan')");
}