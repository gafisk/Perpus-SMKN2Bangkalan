-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 09:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_smkn2bangkalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` char(50) NOT NULL,
  `username` char(10) NOT NULL,
  `password` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Admin Galih', 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` char(7) NOT NULL,
  `kategori_buku` enum('Pendidikan','Non Pendidikan') NOT NULL,
  `kelas_buku` enum('X','XI','XII') DEFAULT NULL,
  `judul_buku` char(100) NOT NULL,
  `pengarang` char(50) NOT NULL,
  `tahun_terbit` char(4) NOT NULL,
  `penerbit` char(30) NOT NULL,
  `jumlah_buku` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `kategori_buku`, `kelas_buku`, `judul_buku`, `pengarang`, `tahun_terbit`, `penerbit`, `jumlah_buku`) VALUES
(1, 'P-0001', 'Non Pendidikan', '', 'Cerita Malin Kundang', 'Galih Pengarang', '2024', 'Wade Group', 4),
(2, 'P-0002', 'Pendidikan', 'XI', 'Belajar HTML dan CSS', 'Galih Pengarang', '2023', 'Wade Group', 5);

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_admin`, `waktu`, `keterangan`) VALUES
(5, 1, '2024-04-13 01:34:31', 'Logout'),
(6, 1, '2024-04-13 01:34:42', 'Login'),
(7, 1, '2024-04-13 01:43:39', 'Menambahkan Buku P-0003 - Belajar Pemrograman PHP'),
(8, 1, '2024-04-13 01:43:59', ''),
(9, 1, '2024-04-13 01:53:09', 'Menambahkan Buku P-0003 - Belajar Pemrograman PHP'),
(10, 1, '2024-04-13 01:53:23', 'Menghapus buku P-0003 - Belajar Pemrograman PHP'),
(11, 1, '2024-04-13 02:10:04', 'Peminjaman Buku P-0002 - Belajar HTML dan CSS Oleh 190411100177 - Galih Restu Siswa'),
(12, 1, '2024-04-13 02:10:52', '190411100177 - Galih Restu Siswa Mengembalikan Buku P-0002 - Belajar HTML dan CSS'),
(13, 1, '2024-04-13 02:12:36', 'Peminjaman Buku P-0001 - Cerita Malin Kundang Oleh 190411100177 - Galih Restu Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `judul_buku` char(100) NOT NULL,
  `nama_user` char(50) NOT NULL,
  `tgl_serah` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_transaksi`, `judul_buku`, `nama_user`, `tgl_serah`, `denda`) VALUES
(1, 2, 'Belajar HTML dan CSS', 'Galih Restu Siswa', '2024-04-11', 0),
(2, 3, 'Belajar HTML dan CSS', 'Galih Restu Siswa', '2024-04-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` char(7) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_admin`, `id_users`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
(2, 'T-0001', 1, 1, 2, '2024-04-11', '2024-06-12', 'Kembali'),
(3, 'T-0002', 1, 1, 2, '2024-04-13', '2024-06-13', 'Kembali'),
(4, 'T-0003', 1, 1, 1, '2024-04-13', '2024-06-13', 'Pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `ni_user` char(19) NOT NULL,
  `nama_user` char(50) NOT NULL,
  `jk_user` enum('Laki - laki','Perempuan') NOT NULL,
  `kelas_user` enum('X','XI','XII') DEFAULT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `telp_user` char(20) NOT NULL,
  `username` char(19) NOT NULL,
  `password` char(50) NOT NULL,
  `role_user` enum('Guru','Siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `ni_user`, `nama_user`, `jk_user`, `kelas_user`, `alamat_user`, `telp_user`, `username`, `password`, `role_user`) VALUES
(1, '190411100177', 'Galih Restu Siswa', 'Laki - laki', 'XI', 'Jl. Bandeng No 5, RT/RW 006/001 Kec. Kota Sumenep Kab Sumenep', '081939301766', '190411100177', 'Galih123', 'Siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `kode_buku` (`kode_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
