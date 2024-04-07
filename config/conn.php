<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpus_smkn2bangkalan";
$conn = mysqli_connect($servername, $username, $password, $dbname);

function get_code_buku($kategori)
{
  global $conn;
  if ($kategori == 'Pendidikan') {
    $last_id = mysqli_query($conn, "SELECT id_buku FROM buku WHERE kategori_buku = 'Pendidikan' ORDER BY id_buku DESC LIMIT 1");
    if (mysqli_num_rows($last_id) > 0) {
      $row = mysqli_fetch_assoc($last_id);
      $last_id = $row['id_buku'];
      $new_id = $last_id + 1;
      return $kode_buku = "P-" . str_pad($new_id, 4, "0", STR_PAD_LEFT);
    } else {
      return $kode_buku = 'P-0001';
    }
  } else {
    $last_id = mysqli_query($conn, "SELECT id_buku FROM buku WHERE kategori_buku = 'Non Pendidikan' ORDER BY id_buku DESC LIMIT 1");
    if (mysqli_num_rows($last_id) > 0) {
      $row = mysqli_fetch_assoc($last_id);
      $last_id = $row['id_buku'];
      $new_id = $last_id + 1;
      return $kode_buku = "NP-" . str_pad($new_id, 4, "0", STR_PAD_LEFT);
    } else {
      return $kode_buku = 'NP-0001';
    }
  }
}
