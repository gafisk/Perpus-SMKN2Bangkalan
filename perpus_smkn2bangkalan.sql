-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 05:34 AM
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
(15, 'NP-0001', 'Non Pendidikan', '', 'Belajar Keterampilan Memasak Meeting', 'Galih meet pengarangin', '2024', 'UTM', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` enum('Pendidikan','Non Pendidikan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `judul`, `kategori`) VALUES
(2, 'Buku Guru Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(3, 'Buku Guru Bahasa Indonesia', 'Pendidikan'),
(4, 'Buku Guru Matematika', 'Pendidikan'),
(5, 'Buku Guru Bahasa Inggris', 'Pendidikan'),
(6, 'Buku Guru Pendidikan Jasmani', 'Pendidikan'),
(7, 'Buku Guru Seni Budaya', 'Pendidikan'),
(8, 'Buku Guru Prakarya dan Kewirausahaan', 'Pendidikan'),
(9, 'Buku Sejarah Indonesia', 'Pendidikan'),
(10, 'Buku Guru Pendidikan Agama Islam', 'Pendidikan'),
(11, 'Buku Siswa Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(12, 'Buku Siswa Bahasa Indonesia', 'Pendidikan'),
(13, 'Buku Matematika', 'Pendidikan'),
(14, 'Buku Siswa Bahasa Inggris', 'Pendidikan'),
(15, 'Buku Siswa Pendidikan Jasmani', 'Pendidikan'),
(16, 'Buku Siswa Seni Budaya Smstr 1', 'Pendidikan'),
(17, 'Buku Siswa Seni Budaya Smstr 2', 'Pendidikan'),
(18, 'Buku Siswa Sejarah Indonesia', 'Pendidikan'),
(19, 'Buku Siswa Pendidikan Agama', 'Pendidikan'),
(20, 'Bahasa Indonesia', 'Pendidikan'),
(21, 'Bahasa Inggris', 'Pendidikan'),
(22, 'Matematika', 'Pendidikan'),
(23, 'Pendidikan Agama dan Budi Pekerti', 'Pendidikan'),
(24, 'Pendidikan Jasmani Olahraga', 'Pendidikan'),
(25, 'Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(26, 'Prakarya Kewirausahaan Smstr 1', 'Pendidikan'),
(27, 'Prakarya Kewirausahaan Smstr 2', 'Pendidikan'),
(28, 'Sejarah Indonesia Smstr 1', 'Pendidikan'),
(29, 'Sejarah Indonesia Smstr 2', 'Pendidikan'),
(30, 'Seni Budaya Smstr 1', 'Pendidikan'),
(31, 'Seni Budaya Smstr 2', 'Pendidikan'),
(32, 'Buku Guru Bahasa Indonesia', 'Pendidikan'),
(33, 'Buku Guru Bahasa Inggris', 'Pendidikan'),
(34, 'Buku Guru Matematika', 'Pendidikan'),
(35, 'Buku Guru Pendidikan Agama', 'Pendidikan'),
(36, 'Buku Guru Pendidikan Jasmani Olahraga', 'Pendidikan'),
(37, 'Buku Guru Pancasila dan Kewarganegaraan', 'Pendidikan'),
(38, 'Buku Guru Prakarya dan Kewirausahaan', 'Pendidikan'),
(39, 'Buku Guru Seni Budaya', 'Pendidikan'),
(40, 'Buku Guru Agama Islam', 'Pendidikan'),
(41, 'Buku Siswa Agama Islam', 'Pendidikan'),
(42, 'Buku Guru Bahasa Indonesia', 'Pendidikan'),
(43, 'Buku Guru Bahasa Inggris', 'Pendidikan'),
(44, 'Buku Guru Matematika', 'Pendidikan'),
(45, 'Buku Guru PPKn', 'Pendidikan'),
(46, 'Buku Guru Sejarah Indonesia', 'Pendidikan'),
(47, 'Buku Guru Seni Budaya', 'Pendidikan'),
(48, 'Buku Siswa Bahasa Indonesia', 'Pendidikan'),
(49, 'Buku Siswa Bahasa Inggris', 'Pendidikan'),
(50, 'Buku Siswa Matematika', 'Pendidikan'),
(51, 'Buku Siswa PPKn', 'Pendidikan'),
(52, 'Buku Siswa PKW', 'Pendidikan'),
(53, 'Buku Siswa Sejarah Indonesia', 'Pendidikan'),
(54, 'Buku Siswa Seni Budaya Smstr 1', 'Pendidikan'),
(55, 'Buku Siswa Seni Budaya Smstr 2', 'Pendidikan'),
(56, 'Sistem Komputer', 'Pendidikan'),
(57, 'Pemrograman Dasar', 'Pendidikan'),
(58, 'Gambar Teknik Otomotif', 'Pendidikan'),
(59, 'Forward Erlangga English Jilid 1', 'Pendidikan'),
(60, 'Sejarah Indonesia', 'Pendidikan'),
(61, 'Fisika Jilid 1', 'Pendidikan'),
(62, 'Kimia Jilid 1', 'Pendidikan'),
(63, 'Produktif Berbahasa Indonesia', 'Pendidikan'),
(64, 'Perawatan Gedung', 'Pendidikan'),
(65, 'Kendali Elektromagnetik dan instalasi Motor Listrik', 'Pendidikan'),
(66, 'Teknik Pemesinan CCNC', 'Pendidikan'),
(67, 'Teknik Pemesinan Frais Dasar', 'Pendidikan'),
(68, 'Pemeliharaan Mesin KR', 'Pendidikan'),
(69, 'Pemeliharaan Mesin KR', 'Pendidikan'),
(70, 'Pemeliharaan Kelistrikan KR', 'Pendidikan'),
(71, 'Produk Kreatif dan KWU', 'Pendidikan'),
(72, 'Teknologi Jaringan Berbasis Luas/WAN', 'Pendidikan'),
(73, 'Desain Grafis', 'Pendidikan'),
(74, 'X PRESS UN Bahasa Inggris', 'Pendidikan'),
(75, 'X PRESS UN Bahasa Indonesia', 'Pendidikan'),
(76, 'X PRESS UN Matematika', 'Pendidikan'),
(77, 'Prakarya dan Kewirausahaan K-13 Rev. 2018', 'Pendidikan'),
(78, 'Agama Islam K-13 Rev. 2018', 'Pendidikan'),
(79, 'Seni Budaya Smstr 2 rev. 2018', 'Pendidikan'),
(80, ' Seni Budaya Smstr 1 Rev. 2018', 'Pendidikan'),
(81, 'Sejarah Indonesia Rev. 2018', 'Pendidikan'),
(82, 'PKN Rev. 2018', 'Pendidikan'),
(83, 'Matematika Rev. 2018', 'Pendidikan'),
(84, 'Buku Guru Seni Budaya Rev. 2018', 'Pendidikan'),
(85, 'Buku Guru Sejarah Indonesia Rev. 2018', 'Pendidikan'),
(86, 'Buku Guru PKN Rev. 2018', 'Pendidikan'),
(87, 'Buku Guru Matematika Rev. 2018', 'Pendidikan'),
(88, 'Buku Guru Bahasa Inggris Rev. 2018', 'Pendidikan'),
(89, 'Buku Guru Bahasa Indonesia Rev. 2018', 'Pendidikan'),
(90, 'Matematika SMK', 'Pendidikan'),
(91, 'Matematika SMK', 'Pendidikan'),
(92, 'Forward For Vocational School GRAD Jilid 1', 'Pendidikan'),
(93, 'Forward For Vocational School GRAD Jilid 2', 'Pendidikan'),
(94, 'Produktif Berbahasa Indonesia SMK', 'Pendidikan'),
(95, 'Produktif Berbahasa Indonesia SMK', 'Pendidikan'),
(96, 'Produktif Berbahasa Indonesia SMK', 'Pendidikan'),
(97, 'Simulasi dan Komunikasi Digital SMK', 'Pendidikan'),
(98, 'Matematika SMK', 'Pendidikan'),
(99, 'Foward For Vocatioal School Graduate Jilid 3 ', 'Pendidikan'),
(100, 'Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(101, 'Pengajaran Bahasa Madura', 'Pendidikan'),
(102, 'Pengajaran Bahasa Madura', 'Pendidikan'),
(103, 'Pengajaran Bahasa Madura', 'Pendidikan'),
(104, 'New STEP 1 Training Manual', 'Pendidikan'),
(105, 'Konstruksi dan Utilitas Gedung', 'Pendidikan'),
(106, 'Pemeliharaan Mesin Sepeda Motror', 'Pendidikan'),
(107, 'Pemeliharaan Mesin Sepeda Motror', 'Pendidikan'),
(108, 'Pemeliharaan Sasis Sepeda Motor', 'Pendidikan'),
(109, 'Pemeliharaan Mesin Kendaraan Ringan', 'Pendidikan'),
(110, 'Pemeliharaan Sasis dan Pemindahan Tenaga Kendaraan Ringan', 'Pendidikan'),
(111, 'Pemeliharaan Sasis dan Pemindahan Tenaga Kendaraan Ringan', 'Pendidikan'),
(112, 'Teknik Pemesinan NC/CNC dan CAM', 'Pendidikan'),
(113, 'Teknik Pemesinan Bubut', 'Pendidikan'),
(114, 'Teknik Pemesinan Bubut', 'Pendidikan'),
(115, 'Teknik Pemesinan Frais', 'Pendidikan'),
(116, 'Teknik Pemesinan Frais', 'Pendidikan'),
(117, 'Teknik Pengukuran Tanah', 'Pendidikan'),
(118, 'Konstruksi Bangunan Gedung', 'Pendidikan'),
(119, 'Dasar-Dasar Konstruksi', 'Pendidikan'),
(120, 'PKK Teknik Konstruksi dan Properti Klas', 'Pendidikan'),
(121, 'PKK Teknik Konstruksi dan Properti Klas', 'Pendidikan'),
(122, 'Estimasi Biaya Konstruksi Sanitasi dan Perawatan Gedung', 'Pendidikan'),
(123, 'Estimasi Biaya Konstruksi Sanitasi dan Perawatan Gedung', 'Pendidikan'),
(124, 'Dasar Desain Grafis', 'Pendidikan'),
(125, 'Pemograman Berorientasi Objek', 'Pendidikan'),
(126, 'Administasi Infrastruktur Jaringan', 'Pendidikan'),
(127, 'Teknologi Layanan Jaringan ', 'Pendidikan'),
(128, 'Komputer dan Jaringan', 'Pendidikan'),
(129, 'Pemeliharaan Listrik Sepeda Motor', 'Pendidikan'),
(130, 'Teknik Pemesinan NC/CNC dan CAM', 'Pendidikan'),
(131, 'Gambar Teknik Manufaktur', 'Pendidikan'),
(132, 'Gambar Teknik Manufaktur', 'Pendidikan'),
(133, 'Dasar Perancangan Teknik Mesin', 'Pendidikan'),
(134, 'Konstruksi Bangunan Gedung', 'Pendidikan'),
(135, 'Basis Data', 'Pendidikan'),
(136, 'Basis Data', 'Pendidikan'),
(137, 'Pemograman Berorientasi Objek', 'Pendidikan'),
(138, 'Pemograman Web dan Perangkat Bergerak', 'Pendidikan'),
(139, 'Pemograman Web dan Perangkat Bergerak', 'Pendidikan'),
(140, 'Pemodelan Perangkat Lunak', 'Pendidikan'),
(141, 'Administasi Infrastruktur Jaringan', 'Pendidikan'),
(142, 'Teknologi Layanan Jaringan ', 'Pendidikan'),
(143, 'Dasar Listrik dan Elektronika', 'Pendidikan'),
(144, 'Produk Kreatif dan KWU', 'Pendidikan'),
(145, 'Dasar-Dasar Mikrobiologi', 'Pendidikan'),
(146, 'Operasi Teknik Kimia', 'Pendidikan'),
(147, 'Gambar Teknik Listrik', 'Pendidikan'),
(148, 'Intalasi Tenaga Listrik 1 FASA', 'Pendidikan'),
(149, 'Intalasi Tenaga Listrik 3 FASA', 'Pendidikan'),
(150, 'Teknologi Jaringan Berbasis Luas/WAN', 'Pendidikan'),
(151, 'Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(152, 'Azaz Industri Kimia', 'Pendidikan'),
(153, 'Perawatan dan Perbaikan Engin e Management Sistem Motor Listrik', 'Pendidikan'),
(154, 'Instalasi Penerangan Listrik', 'Pendidikan'),
(155, 'instalasi Tenaga Listrik 3 FASA Lanjutan', 'Pendidikan'),
(156, 'Perawatan dan Perbaikan Sistem Bahan Bakar Diesel Konvosional dan Commonral', 'Pendidikan'),
(157, 'Mikrokompressor  dan Mikro Kontroller', 'Pendidikan'),
(158, 'Produk Kreatif dan Kewirausahaan Pertanian, Listrik, Elektro, Otomotif dan Konstruksi', 'Pendidikan'),
(159, 'Instalasi Tenaga Listrik ', 'Pendidikan'),
(160, 'Azaz Teknik Kimia', 'Pendidikan'),
(161, 'Proses Industri Kimia', 'Pendidikan'),
(162, 'Analisis Kimia Dasar', 'Pendidikan'),
(163, 'Pekerjaan Dasar Elektromekanik', 'Pendidikan'),
(164, 'Produk Kreatif dan Kewirausahaan C3', 'Pendidikan'),
(165, 'Mekanika Teknik', 'Pendidikan'),
(166, 'Kontruksi Jalan dan Jembatan C3', 'Pendidikan'),
(167, 'Kontruksi Jalan dan Jembatan C4', 'Pendidikan'),
(168, 'Apliksi Perangkat Lunak dan Perancangan Interior Gedung C3', 'Pendidikan'),
(169, 'Apliksi Perangkat Lunak dan Perancangan Interior Gedung C4', 'Pendidikan'),
(170, 'Gambar Teknik Otomotif C2', 'Pendidikan'),
(171, 'Teknologi Dasar Otomotif C2', 'Pendidikan'),
(172, 'Pekerjaan Dasar Teknik Otomotif', 'Pendidikan'),
(173, 'Pemeliharaan Mesin Kendaraan Ringan', 'Pendidikan'),
(174, 'Pemeliharaan Mesin Kendaraan Ringan', 'Pendidikan'),
(175, 'Pemeliharaan Sasis dan Pemindah Tenaga Kendaraan Ringan C3', 'Pendidikan'),
(176, 'Pemeliharaan Kelistrikan Kendaraan Ringan C3', 'Pendidikan'),
(177, 'Pemeliharaan Kelistrikan Kendaraan Ringan C3', 'Pendidikan'),
(178, 'Teknik Dasar Pekerjaan Laboratorium C2', 'Pendidikan'),
(179, 'Alat Industri Kimia', 'Pendidikan'),
(180, 'Operasi Teknik Kimia', 'Pendidikan'),
(181, 'PKK Kimia', 'Pendidikan'),
(182, 'Pendidikan Agama Isalam dan Budi Pekerti', 'Pendidikan'),
(183, 'Panduan Guru Pendidikan Agama Islam dan Budi Pekerti', 'Pendidikan'),
(184, 'Pendidikan Agama Kristen dan Budi Pekerti', 'Pendidikan'),
(185, 'Panduan Guru Pendidikan Kristen dan Budi Pekerti', 'Pendidikan'),
(186, 'Pendidikan Agama Khatolik dan Budi Pekerti', 'Pendidikan'),
(187, 'Pendidikan Guru Pendidikan Agama Hindu dan Budi Pekerti', 'Pendidikan'),
(188, 'Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(189, 'Panduan Guru Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(190, 'Cerdas dan Cergas Berbahasa Indonesia ', 'Pendidikan'),
(191, 'Panduan Guru Cerdas dan Cergas Berbahasa Indonesia ', 'Pendidikan'),
(192, 'Matematika', 'Pendidikan'),
(193, 'Panduan Guru Matematika', 'Pendidikan'),
(194, 'Panduan Guru Seni Rupa', 'Pendidikan'),
(195, 'Panduan Guru Seni Musik', 'Pendidikan'),
(196, 'Panduan Guru Seni Tari', 'Pendidikan'),
(197, 'Panduan Guru Seni Teater', 'Pendidikan'),
(198, 'Panduan Guru Pendidikan Jasmani, Olahraga dan Kesehatan', 'Pendidikan'),
(199, 'Sejarah Untuk SMK', 'Pendidikan'),
(200, 'Panduan Guru Sejarah Untuk SMK', 'Pendidikan'),
(201, 'English in Mind Second Edition - Student\'s Book 3', 'Pendidikan'),
(202, 'English in Mind Second Edition - Teacher\'s Resource Book 3', 'Pendidikan'),
(203, 'Pendidikan Pancasila dan Kewarganegaraan', 'Pendidikan'),
(204, 'Sejarah SMA/SMK', 'Pendidikan'),
(205, 'Informatika', 'Pendidikan'),
(206, 'Pendidikan Agama Islam dan Budi Pekerti', 'Pendidikan'),
(207, 'Pendidikan Agama Islam', 'Pendidikan'),
(208, 'Cerdas Cergas', 'Pendidikan'),
(209, 'Informatika', 'Pendidikan'),
(210, 'Bahasa Indonesia', 'Pendidikan'),
(211, 'Pendidikan Pancasila', 'Pendidikan'),
(212, 'English SMA/SMK', 'Pendidikan'),
(213, 'IPAS', 'Pendidikan'),
(214, 'Buku Panduan Guru PAI', 'Pendidikan'),
(215, 'Buku Panduan Guru Matematika', 'Pendidikan'),
(216, 'Buku Panduan PKN', 'Pendidikan'),
(217, 'Buku Panduan Guru Cerdas Cergas', 'Pendidikan'),
(218, 'PPKN', 'Pendidikan'),
(219, 'Cerdas Cergas ', 'Pendidikan'),
(220, 'PAI', 'Pendidikan'),
(221, 'Matematika', 'Pendidikan'),
(222, 'English', 'Pendidikan'),
(223, 'English', 'Pendidikan'),
(224, 'Terampil Berbahasa Inggris', 'Non Pendidikan'),
(225, 'Bioetika', 'Non Pendidikan'),
(226, 'Bermain Kreatif Berbasis Kecerdasan Jamak', 'Non Pendidikan'),
(227, 'Cara Mencapai Standar Kompetensi', 'Non Pendidikan'),
(228, 'Bersepeda Untuk Kebugaran', 'Non Pendidikan'),
(229, 'Bimbingan + Konseling ', 'Non Pendidikan'),
(230, 'Active Learning', 'Non Pendidikan'),
(231, 'Guru Sebagai Profesi', 'Non Pendidikan'),
(232, 'Multikulturalisme Belajar Hidup Bersama Dalam Perbedaan', 'Non Pendidikan'),
(233, 'Komunikasi Tatap Muka Menciptkan Hubungan Manusia di Dunia yang Dikendalikan Teknologi', 'Non Pendidikan'),
(234, 'Melatih Remaja Gulat', 'Non Pendidikan'),
(235, 'Kepemimpinan Pemuda dalam Berbagai Perspektif', 'Non Pendidikan'),
(236, 'Pak Guru Kisah Kehidupan', 'Non Pendidikan'),
(237, 'Pengajaran Sains berdasarkan Cara Kerja Otak', 'Non Pendidikan'),
(238, 'Perilaku Menyimpang Pendekatan Sosiologi', 'Non Pendidikan'),
(239, 'Penelitian Tindakan Kelas dalam Pengajaran Bahasa Inggris', 'Non Pendidikan'),
(240, 'Pengajaran dan Disiplin Harga Diri', 'Non Pendidikan'),
(241, 'Mengenal Penelitian Tindakan Kelas', 'Non Pendidikan'),
(242, 'Strategi Pembelajaran Aktif', 'Non Pendidikan'),
(243, 'School Healing Menyembuhkan Problem Sekolah', 'Non Pendidikan'),
(244, 'Aktivitas Ketangkasan dan Bela Diri', 'Non Pendidikan'),
(245, 'Menjadi Guru Efektif', 'Non Pendidikan'),
(246, 'Strategi Belajar Bahasa Inggris', 'Non Pendidikan'),
(247, 'Mengajar dengan Portofolio', 'Non Pendidikan'),
(248, 'Cara-cara Terbaik Mengajarkan Matematika', 'Non Pendidikan'),
(249, 'Menangkal Narkoba dan Kekerasan', 'Non Pendidikan'),
(250, 'Landaan Filsafat dan Teori Pembelajaran Matematika Berparadigma Ekssploratif dan Investigatif', 'Non Pendidikan'),
(251, 'Kurikulum dan Pembelajaran Filosofi Teori dan Aplikasi ', 'Non Pendidikan'),
(252, 'Gambar Teknik', 'Non Pendidikan'),
(253, 'Melatih Tenis Remaja', 'Non Pendidikan'),
(254, 'Manajemen Pendidikan Analisis Substansi dan Aplikasinya dalam Institusi Pendidikan', 'Non Pendidikan'),
(255, 'Global Access Of The World Second Edition', 'Non Pendidikan'),
(256, 'Guru Super dan Super Teaching', 'Non Pendidikan'),
(257, '30 Latihan Pemikiran Pengembangan Staff Bagi Para Pendidik', 'Non Pendidikan'),
(258, 'Penanganan Kekerasan di Sekolah', 'Non Pendidikan'),
(259, 'Kiat Nyaman Mengajar di Dalam Kelas Jilid 1', 'Non Pendidikan'),
(260, 'Membantu Pemulihan Pecandu Narkoba dan Keluarganya', 'Non Pendidikan'),
(261, 'Permainan Air Water Fun', 'Non Pendidikan'),
(262, 'Remaja dan Media', 'Non Pendidikan'),
(263, 'Modul Keterampilan Kompuer dan Pengelolaan Informasi 3', 'Non Pendidikan'),
(264, 'Budidaya Ikan', 'Non Pendidikan'),
(265, 'Kekayaan Negeriku Negara Maritim', 'Non Pendidikan'),
(266, 'Merawat dan Mendidik Anak', 'Non Pendidikan'),
(267, '7 Langkah Untuk Menyusun Rencana Disiplin Kelas Proaktif', 'Non Pendidikan'),
(268, 'Anda Harus Pergi Ke Sekolah Anda Guru!', 'Non Pendidikan'),
(269, 'Desain Pembelajaran ', 'Non Pendidikan'),
(270, 'Kiat Nyaman Mengajar di Dalam Kelas Jilid 2', 'Non Pendidikan'),
(271, 'Pembelajaran Aktif Meningkatkan Keasyikan Kegiatan Kelas', 'Non Pendidikan'),
(272, 'Jurnal Ilmiah Edutic Pendidikan dan Informatika', 'Non Pendidikan'),
(273, 'Dasar-Dasar Sepak Takraw', 'Non Pendidikan'),
(274, 'Program Keahlian Teknik Instrumentasi Logam dan Gelas', 'Non Pendidikan'),
(275, 'Public Speaking', 'Non Pendidikan'),
(276, 'Pengajaran Matematika Sesuai Cara Kerja Otak', 'Non Pendidikan'),
(277, 'Spiritual Teaching Agar Guru Senantiasa Mencintai Pekerjaan dan Anak Didiknya', 'Non Pendidikan'),
(278, 'Aneka Sifat dan Kekerasan Fisik, Simbolik, Birokratik dan Struktural', 'Non Pendidikan'),
(279, 'Wacana Komunikasi ', 'Non Pendidikan'),
(280, 'Profesionalisme Guru dalam Pembelajaran ', 'Non Pendidikan'),
(281, 'Petunjuk Praktis Bermain Tenis', 'Non Pendidikan'),
(282, 'Penilaian Pembelajaran Teknik Elektronika Berbasis Mutu', 'Non Pendidikan'),
(283, 'Guru Profesional Penyiapan dan Pembimbingan Praktisi Pembimbing', 'Non Pendidikan'),
(284, 'Psikologi Olahraga Inning The Mind Game', 'Non Pendidikan'),
(285, 'Ilmu dan Aplikasi Pendidikan Bagian IV : Pendidikan Lintas Bidang', 'Non Pendidikan'),
(286, 'Ilmu dan Aplikasi Pendidikan Bagian I : Ilmu Pendidikan Teoretis', 'Non Pendidikan'),
(287, 'Ilmu dan Aplikasi Pendidikan Bagian II : Ilmu Pendidikan Praktis', 'Non Pendidikan'),
(288, 'Ilmu dan Aplikasi Pendidikan Bagian III : Pendidikan Disiplin Ilmu', 'Non Pendidikan'),
(289, 'Dasar dan Teori Perkembangan Anak', 'Non Pendidikan'),
(290, 'Komunikasi Yang Efektif', 'Non Pendidikan'),
(291, 'Bahasa Inggris Teknologi Industri SMK', 'Non Pendidikan'),
(292, 'Pendidikan Anak Bangsa Pendidikan Untuk Semua', 'Non Pendidikan'),
(293, 'Penjualan Jilid 3', 'Non Pendidikan'),
(294, 'Teknik Membaca Peta dan Kompas', 'Non Pendidikan'),
(295, 'Manajemen dan Tata Kerja Perpustakaan Sekolah', 'Non Pendidikan'),
(296, 'Pengajaran dan Bimbingan Sekolah Menengah', 'Non Pendidikan'),
(297, 'Memperkaya Otak', 'Non Pendidikan'),
(298, 'Remaja Unggul Kamukah itu?', 'Non Pendidikan'),
(299, 'Dinamika Kehidupan Religius', 'Non Pendidikan'),
(300, 'Kapita Selekta Pengetahuan Agama Islam', 'Non Pendidikan'),
(301, 'Guru Yang Baik Disetiap Kelas', 'Non Pendidikan'),
(302, 'Mengajar dengan Sukses', 'Non Pendidikan'),
(303, 'Pengajaran yang Imajinatif', 'Non Pendidikan'),
(304, 'Action Research di Ruang Kelas', 'Non Pendidikan'),
(305, 'Psikologi Eksperimen', 'Non Pendidikan'),
(306, 'Remaja Membangun Kepribadian', 'Non Pendidikan'),
(307, 'Strategi Pendidikan Anak', 'Non Pendidikan'),
(308, 'Spirit Inovasi dalam Filsafat Ilmu', 'Non Pendidikan'),
(309, 'Konsep Dasar Akuntansi dan Pelaporan Keuangan Jilid 2', 'Non Pendidikan'),
(310, 'Konsep Dasar Akuntansi dan Pelaporan Keuangan Jilid 1', 'Non Pendidikan'),
(311, 'Kriya Kayu Jilid 1', 'Non Pendidikan'),
(312, 'Konsep Dasar Akuntansi dan Pelaporan Keuangan Jilid 3', 'Non Pendidikan'),
(313, 'Rekayasa Perangkat Lunak', 'Non Pendidikan'),
(314, 'Tata Busana Jilid 3', 'Non Pendidikan'),
(315, 'Sukses UN 2015', 'Non Pendidikan'),
(316, 'Olahraga Alam', 'Non Pendidikan'),
(317, 'Memori Kerja dan Proses Belajar', 'Non Pendidikan'),
(318, 'Resep Pengajaran Hebat', 'Non Pendidikan'),
(319, 'Panduan Sertifikasi Guru', 'Non Pendidikan'),
(320, 'Penerapan Pembelajaran Pada Anak', 'Non Pendidikan'),
(321, 'Strateg Belajar Bahasa Inggris ', 'Non Pendidikan'),
(322, 'Mengatasi ketegangan Bersama Grete Waitz', 'Non Pendidikan'),
(323, 'Try Out UN 2015', 'Non Pendidikan'),
(324, 'Fotografi Sebagai Usaha Alternatif', 'Non Pendidikan'),
(325, 'Filsafat Pendidikan', 'Non Pendidikan'),
(326, 'Kreatifitas Keberbakatan ', 'Non Pendidikan'),
(327, 'Menciptakan Hubungan Sekolah Ramah yang Positif', 'Non Pendidikan'),
(328, 'Keberanian Mengajar Menjelajahi Ruang Nurani Kehidupan Guru', 'Non Pendidikan'),
(329, 'Pengembangan Kepribadian Tinjauan Praktis Menuju Pribadi Positif', 'Non Pendidikan'),
(330, 'Kognitivisme dalam Metodologi Pembelajaran Bahasa', 'Non Pendidikan'),
(331, 'Pengajaran yang Kreatif dan Menarik', 'Non Pendidikan'),
(332, 'Lintas Olahraga Sepeda', 'Non Pendidikan'),
(333, 'Seni Budaya 2', 'Non Pendidikan'),
(334, 'Internasiolasisai Pendidikan', 'Non Pendidikan'),
(335, 'Ekosistem', 'Non Pendidikan'),
(336, 'Acuan Rekomendasi Pemupukan Spesifik Lokasi Untuk Padi Sawah di Jawa Timur', 'Non Pendidikan'),
(337, 'Apabila Iman Tetap Bertahan', 'Non Pendidikan'),
(338, 'Psikologi Kelompok', 'Non Pendidikan'),
(339, 'Teknik Budidaya dan Diversifikasi Tanaman Kelapa, Jambu Mete, Kakao dan Kopi Arabika', 'Non Pendidikan'),
(340, 'Petunjuk Pelaksanaan Diversifikasi Tanaman Perkebunan', 'Non Pendidikan'),
(341, 'Penilaian Hasil Belajar Peserta Didik Sekolah Menengah Kejuruan', 'Non Pendidikan'),
(342, 'Secercah Harapan Buat Olahragawan', 'Non Pendidikan'),
(343, 'Tata Kecantikan Rambut Jilid 1', 'Non Pendidikan'),
(344, 'Tata Kecantikan Rambut Jilid 2', 'Non Pendidikan'),
(345, 'Tata Kecantikan Rambut Jilid 3', 'Non Pendidikan'),
(346, 'Bank Soal Tes Prikomoteri', 'Non Pendidikan'),
(347, 'Membangkitkan Motivasi Berprestasi Anak dengan tes IQ', 'Non Pendidikan'),
(348, 'Teknik Permainan Futsal', 'Non Pendidikan'),
(349, 'Olahraga Pencak Silat', 'Non Pendidikan'),
(350, 'Penjelajah Alam', 'Non Pendidikan'),
(351, 'Permainan Softball', 'Non Pendidikan'),
(352, ' Rock Climbing Panjat Tebing', 'Non Pendidikan'),
(353, 'Terampil Berolahraga Tenis Meja', 'Non Pendidikan'),
(354, 'Panduan Olahraga Bola Voli', 'Non Pendidikan'),
(355, 'Olahraga Tradisional Indonesia', 'Non Pendidikan'),
(356, 'Gemar Bermain Bulu Tangkis', 'Non Pendidikan'),
(357, 'Permainan Bola Basket', 'Non Pendidikan'),
(358, 'Keterampilan Sepak Bola', 'Non Pendidikan'),
(359, 'Permainan Sepak Takraw', 'Non Pendidikan'),
(360, 'Identifikasi Cidera Pada Olahraga Softball', 'Non Pendidikan'),
(361, 'Crochet Home Decoration', 'Non Pendidikan'),
(362, 'Langkah Pertama Membuat Siswa Berkonsentrasi', 'Non Pendidikan'),
(363, 'Biologi Pertanian Jilid 1', 'Non Pendidikan'),
(364, 'Biologi Pertanian Jilid 2', 'Non Pendidikan'),
(365, 'Biologi Pertanian Jilid 3', 'Non Pendidikan'),
(366, 'Teknik Transmisi Tenaga Listrik Jilid 1', 'Non Pendidikan'),
(367, 'Teknik Transmisi Tenaga Listrik Jilid 2', 'Non Pendidikan'),
(368, 'Teknik Transmisi Tenaga Listrik Jilid 3', 'Non Pendidikan'),
(369, ' Ternak Ruminansia Jilid 1', 'Non Pendidikan'),
(370, ' Ternak Ruminansia Jilid 2', 'Non Pendidikan'),
(371, ' Ternak Ruminansia Jilid 3', 'Non Pendidikan'),
(372, 'Restoran Jilid 1', 'Non Pendidikan'),
(373, 'Restoran Jilid 2', 'Non Pendidikan'),
(374, 'Restoran Jilid 3', 'Non Pendidikan'),
(375, 'Melatih Bola Voli Remaja', 'Non Pendidikan'),
(376, 'Usaha Pengembangan Kerbau Rakyat di Jawa Timur', 'Non Pendidikan'),
(377, 'Program Keahlian Teknik Gambar Mesin', 'Non Pendidikan'),
(378, 'Trik dan Taktik Mengajar', 'Non Pendidikan'),
(379, 'Sukses Melatih Atletik ', 'Non Pendidikan'),
(380, 'Buku Panduan Dril Gulat 100 Teknik dan Taktik Drill', 'Non Pendidikan'),
(381, 'Permainan Bola Basket', 'Non Pendidikan'),
(382, 'Dasar-Dasar Sepak Bola', 'Non Pendidikan'),
(383, 'Sejarah Olimpiade', 'Non Pendidikan'),
(384, 'Dasar-Dasar Balap Sepeda', 'Non Pendidikan'),
(385, 'Wahai Para Guru, Ubahlah Cara Mengajarmu!', 'Non Pendidikan'),
(386, 'Penjelajah dan Olahraga Alam', 'Non Pendidikan'),
(387, 'Standar Kompetensi Nasional Bidang Keahlian Otomotif : Body Repair', 'Non Pendidikan'),
(388, 'Generasi Muda Menolak Kemiskinan', 'Non Pendidikan'),
(389, 'Pembelajaran Atletik Pendekatan Permainan dan kompetisi', 'Non Pendidikan'),
(390, 'Sport Development Index', 'Non Pendidikan'),
(391, 'Java 2 SE dengan J Builder', 'Non Pendidikan'),
(392, 'Peranan Gizi dalam Pembangunan Nasional', 'Non Pendidikan'),
(393, 'Mudah Menguasai Delphi Jilid 2', 'Non Pendidikan'),
(394, 'Sistem Instrumentasi dan Sistem Kontrol', 'Non Pendidikan'),
(395, 'Panduan Praktis Pemograman Database Menggunakan MySQL dan Java', 'Non Pendidikan'),
(396, 'Pedoman Praktis Pelaksanaa Outdoor dan Fun Games Activities ', 'Non Pendidikan'),
(397, 'Analisi Bow (Analisis Upah dan Bahan)', 'Non Pendidikan'),
(398, 'Course Catalog ', 'Non Pendidikan'),
(399, 'Pendekatan Keterampilan Taktis dalam Pembelajaran Bola Voli', 'Non Pendidikan'),
(400, 'Katalog UM Universitas Negeri Malang State University of Malang', 'Non Pendidikan'),
(401, 'Belajar Otodidak Membuat Database Menggunakan MySQL', 'Non Pendidikan'),
(402, 'Adobe Dreamweaver CS 5 untuk beragam desain website Interaktif', 'Non Pendidikan'),
(403, 'RA Fuad dan Civil Society', 'Non Pendidikan'),
(404, 'Petunjuk Pelaksanaan Pendidikan Menengah Kejuruan', 'Non Pendidikan'),
(405, 'Belajar Sendiri Menjadi Mahir Tanpa Guru', 'Non Pendidikan'),
(406, 'Pendidikan Jasmani Kesehatan', 'Non Pendidikan'),
(407, 'Pengantar Logika Informatika algoritma dan Pemograman Komputer', 'Non Pendidikan'),
(408, 'Usaha Jasa Pariwisata Jilid 2', 'Non Pendidikan'),
(409, 'Teknologi Pangan Jilid 1', 'Non Pendidikan'),
(410, 'Steps to Success Tenis Meja Tingkat Pemula', 'Non Pendidikan'),
(411, 'Atletik untuk Sekolah', 'Non Pendidikan'),
(412, 'Prakarya dan Kewirausahaan', 'Non Pendidikan'),
(413, 'Sejarah Perum Garam', 'Non Pendidikan'),
(414, 'Pemodelan Kadar Nikotin Pada Batang dan Filter Rokok dengan Metode Volume Hingga', 'Non Pendidikan'),
(415, 'Bengkel Kreativitas', 'Non Pendidikan'),
(416, '100 Atlet Legendaris', 'Non Pendidikan'),
(417, 'Bahasa Inggris Teknologi Industri SMK', 'Non Pendidikan'),
(418, 'Standar Kompetensi Nasional Bidang Kimia Analisis (SKNKA)', 'Non Pendidikan'),
(419, 'Teologi Pendidikan Tauhid Sebagai Paradigma Pendidikan Islam', 'Non Pendidikan'),
(420, 'Metodologi Penelitian Pendidikan', 'Non Pendidikan'),
(421, 'Pintar Kimia Untuk Kelas 1, 2, 3', 'Non Pendidikan'),
(422, 'Pengelolaan Pekarangan dengan Tanaman Perkebunan', 'Non Pendidikan'),
(423, 'Java Handbook Konsep Dasar Pemograman Java', 'Non Pendidikan'),
(424, 'Watak Pendidikan Islam Agama Islam dan Bekal', 'Non Pendidikan'),
(425, 'Langkah Berdakwah', 'Non Pendidikan'),
(426, 'Teen Computer Zone Heaving Fun With Adobe Dreamweaver C54', 'Non Pendidikan'),
(427, 'Panduan Praktis Membuat Web dengan PHP untuk Pemula', 'Non Pendidikan'),
(428, 'Analisis Kimia Kuantitatif', 'Non Pendidikan'),
(429, 'Angkat Besi', 'Non Pendidikan'),
(430, 'Prima Ebta Biologi SMP', 'Non Pendidikan'),
(431, 'Bowling di Indonesia', 'Non Pendidikan'),
(432, 'Essential English Conversations', 'Non Pendidikan'),
(433, 'Squash', 'Non Pendidikan'),
(434, 'Micromedia Dreamweaver dengan ASP', 'Non Pendidikan'),
(435, 'The Secret of Vb. Net', 'Non Pendidikan'),
(436, 'Undang-Undang Nomor 20 Tahun 2003 Tentang Sistem Pendidikan Nasional dan Undang-Undang Nomor 14 Tahun 2005 Tentang Guru dan Dosen', 'Non Pendidikan'),
(437, 'Pintar Biologi Untuk Kelas 1, 2, 3', 'Non Pendidikan'),
(438, 'Penanggunalan Penyalahgunaan Narkoba di Lingkungan Sekolah', 'Non Pendidikan'),
(439, 'Microsoft Word 2002', 'Non Pendidikan'),
(440, 'Learning and Practising Visual Basic 10 + Ms. Acces 2010', 'Non Pendidikan'),
(441, 'Permainan Cerdas Untuk Usia 2-6 tahun', 'Non Pendidikan'),
(442, 'Mudah Menguasai Delphi 4 Jilid 1', 'Non Pendidikan'),
(443, 'Belajar Cepat Sosiologi ', 'Non Pendidikan'),
(444, 'Listrik dalam Praktek Jilid II', 'Non Pendidikan'),
(445, 'Menggapai Cita Bimbingan Karir Untuk Remaja Muslim', 'Non Pendidikan'),
(446, 'Ayat-Ayat Keagungan', 'Non Pendidikan'),
(447, 'Keterampilan Produksi Tepat Guna Menuju Wirausaha', 'Non Pendidikan'),
(448, 'Lari, Gung, Lari', 'Non Pendidikan'),
(449, 'Tehnik Mereparasi Radio dan Tape Recorder Mudah dan Praktis', 'Non Pendidikan'),
(450, 'Visual Basic', 'Non Pendidikan'),
(451, 'Teknik Listrik Jilid 1', 'Non Pendidikan'),
(452, 'Mari Belajar Menyulam 1', 'Non Pendidikan'),
(453, 'Pemograman Web Database Dengan PHP dan MYSQL', 'Non Pendidikan'),
(454, 'Mengolah Database dengan SQL Server 2000', 'Non Pendidikan'),
(455, 'Vogel Buku Teks Analisis Anorganik Kualitatif Makro dan Semi Makro', 'Non Pendidikan'),
(456, 'Ilme Pengetahuan Alam', 'Non Pendidikan'),
(457, 'Biologi Untuk Kelas XII', 'Non Pendidikan'),
(458, 'Bela Negara dalam Permainan Pramuka', 'Non Pendidikan'),
(459, 'Pembina Pramuka Memimpin dengan Hati', 'Non Pendidikan'),
(460, 'Perekat Bangsa, Pengakuan Sejarah Kepemudaan Indonesia', 'Non Pendidikan'),
(461, 'Dua Jenderal Besar Bicara Tentang Gestapu/PKI', 'Non Pendidikan'),
(462, 'Kriya Tekstil Jilid 3', 'Non Pendidikan'),
(463, 'Matematika SMK Bisnis dan Manajemen', 'Non Pendidikan'),
(464, 'Buku Panduan Pendidik Kimia Untuk SMK/MAK', 'Non Pendidikan'),
(465, 'Bahasa dan Sastra Indonesia', 'Non Pendidikan'),
(466, 'Akuntansi Industri Jilid 2', 'Non Pendidikan'),
(467, 'Teknologi Komputer dan Jaringan', 'Non Pendidikan'),
(468, 'Teknik Pemesinan', 'Non Pendidikan'),
(469, 'Teknik Sepeda Motor', 'Non Pendidikan'),
(470, 'Teknik Kendaraan Ringan', 'Non Pendidikan'),
(471, 'Prediksi UN SMK Produktif Rekayasa Perangkat Lunak', 'Non Pendidikan'),
(472, 'Pendidikan Kewirausahaan Kelas 10 Panduan Untuk Mengajar', 'Non Pendidikan'),
(473, 'Neraca Sumber Daya Alam Spasial dan Lingkungan Hidup Daerah (NSALHD) Kabupaten Daerah Tingkat II Bangkalan', 'Non Pendidikan'),
(474, 'Organisasi Pelaksanaan Pendidikan Sistem Ganda Pada Sekolah Menengah Kejuruan (Studi Kasus Pada SMK Negeri 4 Malang', 'Non Pendidikan'),
(475, 'Kewirausahaan Untuk Kelas XI SMK', 'Non Pendidikan'),
(476, 'Pendidikan dan Pelatihan Manajemen Perpustakaan Sekolah/Madrasah', 'Non Pendidikan'),
(477, 'Buku Kerja Bricklaying Seni Memasang Bata', 'Non Pendidikan'),
(478, 'Berpikir Ala Einstein 31 Kiat Menjadikan Diri Anda Jenius', 'Non Pendidikan'),
(479, 'Senam', 'Non Pendidikan'),
(480, 'Prakarya dan Kewirausahaan', 'Non Pendidikan'),
(481, 'The Oberlin Conservatory of Music', 'Non Pendidikan'),
(482, 'Pengembangan Perangkat Pembelajaran Berdasarkan Masalah Guna Implementasi Kurikulum Berbasis Kompetensi (KBK) Pada Mata Diklat Pengujian Karakteristik Mesin-Mesin Listrik (PKML) di SMKN 2 Bangkalan', 'Non Pendidikan'),
(483, 'Menggambar Teknik Mesin', 'Non Pendidikan'),
(484, 'Persiapan Menghadapi UNAS SMK 2005/2006 Lengkap', 'Non Pendidikan'),
(485, 'Laporan Praktek Kerja Lapangan Proses Produksi Gula Kristal Sulfitasi PG. Kebon Agung Malang', 'Non Pendidikan'),
(486, 'Sukses Melatih Gulat', 'Non Pendidikan'),
(487, 'Gerakan dan Serangan Gulat Peraih Kemenangan', 'Non Pendidikan'),
(488, 'Membubut (Kompleks) SMK', 'Non Pendidikan'),
(489, 'Modul Pendidikan Agama Islam dan Budi Pekerti', 'Non Pendidikan'),
(490, 'Pendidikan Agama Islam dan Budi Pekerti Untuk SMA/MA/SMK Kelas XII Modul Pengayaan', 'Non Pendidikan'),
(491, 'Bahasa Indonesia Untuk SMA/MA dan SMK/MAK Kelas X Modul', 'Non Pendidikan'),
(492, 'Bahasa Sangkolan Lembar Kerja Siswa Aktif Bahasa Madhura SMA/SMK/MA Sederajat', 'Non Pendidikan'),
(493, 'Futsal', 'Non Pendidikan'),
(494, 'Materi Pendidikan dan Pelatihan Guru Matematika SMK Tahun 2015', 'Non Pendidikan'),
(495, 'Panduan Lengkap KTSP', 'Non Pendidikan'),
(496, ' Effective Communication', 'Non Pendidikan'),
(497, 'Kurikulum Sekolah Menengah Kejuruan (SMK) Edisi 2004', 'Non Pendidikan'),
(498, 'Kurikulum Sekolah Menengah Kejuruan (SMK) Edisi 2004 Bidang Keahlian : Teknik Mesin, Program Keahlian ; Teknik Pengecoran', 'Non Pendidikan'),
(499, 'Remaja dan Alkohol', 'Non Pendidikan'),
(500, 'Aneka Resep Masakan Paling Lengkap', 'Non Pendidikan'),
(501, 'Koleksi Masakan Jawa', 'Non Pendidikan'),
(502, 'Resep Masakan Padang Nan Lezat', 'Non Pendidikan'),
(503, 'Resep Masakan Sehari-hari Serba Lezat dan Bergizi', 'Non Pendidikan'),
(504, 'Pintar Memasak', 'Non Pendidikan'),
(505, 'Kreasi Paper Quilling Paling Keren Unik dan Kreatif', 'Non Pendidikan'),
(506, 'Variasi Olahan Nasi Praktis Enak, Lezat dan Menyehatkan', 'Non Pendidikan'),
(507, 'Koleksi Masakan Padang', 'Non Pendidikan'),
(508, 'Aneka Resep Masakan Lezat', 'Non Pendidikan'),
(509, 'Pengetahuan Olahraga Untuk SMP dan Yang Sederajat Disesuaikan dengan Kurikulum 1975', 'Non Pendidikan'),
(510, 'Resep Masakan Lezat Disertai Masakan Ketupat', 'Non Pendidikan'),
(511, 'Aneka Resep Masakan Lengkap', 'Non Pendidikan'),
(512, 'Membatik', 'Non Pendidikan'),
(513, 'Memulai Usaha Adenium di Rumah', 'Non Pendidikan'),
(514, 'Info Linux', 'Non Pendidikan'),
(515, 'Pengenalan Internet', 'Non Pendidikan'),
(516, 'Teknik Produksi Mesin Industri Jilid III Untuk Sekolah Menengah Kejuruan', 'Non Pendidikan'),
(517, 'Economics & The Public Purpose', 'Non Pendidikan'),
(518, 'Petunjuk Pelaksanaan (Pendidikan Menengah Kejuruan) Dana Pusat 1', 'Non Pendidikan'),
(519, 'Sampah dan Pengelolaannya Pendidikan Lingkungan Hidup untuk Sekolah Menengah Kejuruan', 'Non Pendidikan'),
(520, 'Aneka Resep Kue Dilengkapi Cara Pembuatan ', 'Non Pendidikan'),
(521, 'MSI Notebook Penampilan Menawan Fitur Bombastic', 'Non Pendidikan'),
(522, 'Katalog Hasil Produk SMK Indonesia Kelompok Bidang Keahlian Seni dan Kerajinan Buku 1', 'Non Pendidikan'),
(523, 'Laporan Praktek Kerja industri di RSU Anna Medika', 'Non Pendidikan'),
(524, 'Pembuatan Sistem Informasi Bimbingan Konseling dengan Berbasis Web di SMK Negeri 2 Bangkalan', 'Non Pendidikan'),
(525, 'Laporan Praktek Kerja Industri Periode (31 oktober - 31 Desember) di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(526, 'Laporan Praktek Kerja Industri Periode (01 oktober - 31 Desember) di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(527, 'Laporan Praktek Kerja Industri  di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(528, 'Laporan Praktek Kerja Industri di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(529, 'Laporan Praktek Kerja Industri Periode (01 oktober - 31 Desember) di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(530, 'Laporan Praktek Kerja Industri Periode (01 Januari - 31 Desember) di Stikes Ngudia Husada Madura', 'Non Pendidikan'),
(531, 'Pembuatan Sistem Informasi Service Smartphone dengan Berbasis Android di Counter Rania Cell Kamal', 'Non Pendidikan'),
(532, 'Pembuatan Sistem Informasi Koperasi Sekolah dengan Berbasis Android', 'Non Pendidikan'),
(533, 'Pembuatan Sistem Informasi Laboratorium Teknik Komunikasi dan Informatika (TKI) dengan Berbasis Web di SMK Negeri 2 Bangkalan', 'Non Pendidikan'),
(534, 'Pembuatan Aplikasi Sistem Informasi Web Waka Humas', 'Non Pendidikan'),
(535, 'Academic Catalog 2000 - 2002 Undergraduate and Graduate Programs', 'Non Pendidikan'),
(536, 'Usaha Budidaya Udang Windu', 'Non Pendidikan'),
(537, 'Radio Australia Present English For You', 'Non Pendidikan'),
(538, 'Resep Masakan Aneka Rasa', 'Non Pendidikan'),
(539, 'Resep Masakan dan Minuman Selera Nusantara', 'Non Pendidikan'),
(540, 'Norman Hartley the Viking Process', 'Non Pendidikan'),
(541, 'The Complete Scarsdale Medical Diet Plus', 'Non Pendidikan'),
(542, 'Undergraduate Catalog', 'Non Pendidikan'),
(543, 'English Module Applicable for Communicative & Contextual Learning (Completed With TOEIC Exercises) New Edition ', 'Non Pendidikan'),
(544, 'Panduan Pengelolaan Program Pegabdian Kepada Masyarakat', 'Non Pendidikan'),
(545, 'Resep Lengkap Dapur Anda Masakan, Puding dan Minuman Lezat', 'Non Pendidikan'),
(546, 'Panduan Penulisan Skripsi STKIP PGRI Bangkalan', 'Non Pendidikan'),
(547, 'Inside China\'s Prisions For Profit', 'Non Pendidikan'),
(548, 'Menu Terfavorit dan HIT Cooking With Sheila', 'Non Pendidikan'),
(549, 'Hasil Uji Lapang Pupuk Alternatif Oleh BPTP Karangploso', 'Non Pendidikan'),
(550, 'Atlas Dakwah Nabi Muhammad S.A.W', 'Non Pendidikan'),
(551, 'Papine\'us Guide to Jakarta', 'Non Pendidikan'),
(552, 'Katalog Hasil Produk SMK Indonesia Kelompok Bidang Keahlian Seni dan Kerajinan Buku 2', 'Non Pendidikan'),
(553, 'Kurikulum Sekolah Menengah Kejuruan (SMK) Edisi 2004 Bidang Keahlian : Grafika, Program Keahlian : Produksi Grafika', 'Non Pendidikan'),
(554, 'Trik dan Taktik Mengajar Strategi Meningkatkan Pencapaian Pengajaran di Kelas', 'Non Pendidikan'),
(555, 'Inti Sari Kata Bahasa Indonesia ', 'Non Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `denda`) VALUES
(1, 200);

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
(13, 1, '2024-04-13 02:12:36', 'Peminjaman Buku P-0001 - Cerita Malin Kundang Oleh 190411100177 - Galih Restu Siswa'),
(14, 1, '2024-05-04 05:12:36', 'Login'),
(15, 1, '2024-05-04 06:03:04', 'Menambahkan Buku P-0003 - Buku pendidikan naruto'),
(16, 1, '2024-05-04 06:04:26', 'Menambahkan Buku P-0004 - Cara-cara Terbaik Mengajarkan IPA'),
(17, 1, '2024-05-04 06:05:01', 'Menambahkan Buku NP-0002 - Landaan Filsafat dan Teori Pembelajaran Matematika...'),
(18, 1, '2024-05-04 06:05:47', 'Menghapus buku P-0004 - Cara-cara Terbaik Mengajarkan IPA'),
(19, 1, '2024-05-04 06:05:51', 'Menghapus buku P-0003 - Buku pendidikan naruto'),
(20, 1, '2024-05-06 19:24:44', 'Login'),
(21, 1, '2024-05-06 19:25:22', 'Menambahkan Siswa 123321 - Galih meet'),
(22, 1, '2024-05-06 19:26:31', 'Menambahkan Buku P-0003 - Cerita Malin Kundang'),
(23, 1, '2024-05-06 19:26:58', 'Menghapus buku P-0003 - Cerita Malin Kundang'),
(24, 1, '2024-05-06 19:27:13', 'Menambahkan Buku P-0003 - Belajar HTML dan CSS'),
(25, 1, '2024-05-06 19:28:08', 'Menambahkan Buku P-0004 - Katalog Hasil Produk SMK Indonesia Kelompok Bidang Keahlian Seni dan Kerajinan Buku 2'),
(26, 1, '2024-05-06 19:28:30', 'Menambahkan Buku P-0005 - Menu Terfavorit dan HIT Cooking With Sheila'),
(27, 1, '2024-05-06 19:29:20', 'Menambahkan Buku NP-0003 - Variasi Olahan Nasi Praktis Enak, Lezat dan Menyehatkan'),
(28, 1, '2024-05-06 19:30:12', 'Menambahkan Buku P-0006 - Buku Filsafat Kristen'),
(29, 1, '2024-05-06 19:31:01', 'Menambahkan Buku NP-0004 - olahan filsafat'),
(30, 1, '2024-05-06 19:31:36', 'Menghapus buku P-0006 - Buku Filsafat Kristen'),
(31, 1, '2024-05-06 19:31:39', 'Menghapus buku P-0005 - Menu Terfavorit dan HIT Cooking With Sheila'),
(32, 1, '2024-05-06 19:31:42', 'Menghapus buku P-0004 - Katalog Hasil Produk SMK Indonesia Kelompok Bidang Keahlian Seni dan Kerajinan Buku 2'),
(33, 1, '2024-05-06 19:31:44', 'Menghapus buku NP-0004 - olahan filsafat'),
(34, 1, '2024-05-06 19:31:47', 'Menghapus buku NP-0003 - Variasi Olahan Nasi Praktis Enak, Lezat dan Menyehatkan'),
(35, 1, '2024-05-06 19:31:49', 'Menghapus buku P-0001 - Cerita Malin Kundang'),
(36, 1, '2024-05-06 19:31:51', 'Menghapus buku P-0003 - Belajar HTML dan CSS'),
(37, 1, '2024-05-06 19:31:56', 'Menghapus buku NP-0002 - Landaan Filsafat dan Teori Pembelajaran Matematika...'),
(38, 1, '2024-05-06 19:31:58', 'Menghapus buku P-0002 - Belajar HTML dan CSS'),
(39, 1, '2024-05-06 19:33:19', 'Menambahkan Buku NP-0001 - Belajar Keterampilan Memasak Meet'),
(40, 1, '2024-05-06 19:33:49', 'Mengedit Buku  - Belajar Keterampilan Memasak Meeting'),
(41, 1, '2024-05-06 19:34:55', 'Mengedit Siswa 112233 - Galih meeting'),
(42, 1, '2024-05-06 19:35:32', 'Menambahkan Guru 123123 - qweqwe'),
(43, 1, '2024-05-06 19:35:38', 'Menghapus Guru  123123 - qweqwe'),
(44, 1, '2024-05-06 19:38:28', 'Peminjaman Buku NP-0001 - Belajar Keterampilan Memasak Meeting Oleh 112233 - Galih meeting'),
(45, 1, '2024-05-06 19:42:41', 'Logout'),
(46, 1, '2024-05-06 19:43:41', 'Login'),
(47, 1, '2024-05-06 19:48:17', 'Menambahkan Guru 131311 - tes'),
(48, 1, '2024-05-06 19:48:40', 'Mengedit   - testinggggg'),
(49, 1, '2024-05-06 19:48:47', 'Menghapus Guru  131311 - testinggggg'),
(50, 1, '2024-05-06 19:48:55', 'Logout'),
(51, 1, '2024-05-06 19:53:34', 'Login'),
(52, 1, '2024-05-06 19:54:38', '123321 - Galih meeting Mengembalikan Buku NP-0001 - Belajar Keterampilan Memasak Meeting'),
(53, 1, '2024-05-06 19:54:55', 'Logout'),
(54, 1, '2024-05-06 19:55:58', 'Login'),
(55, 1, '2024-05-06 19:59:25', 'Peminjaman Buku NP-0001 - Belajar Keterampilan Memasak Meeting Oleh 123321 - Galih meeting'),
(56, 1, '2024-05-06 20:00:23', 'Logout'),
(57, 1, '2024-05-06 20:00:54', 'Login'),
(58, 1, '2024-05-06 20:02:42', '123321 - Galih meeting Mengembalikan Buku NP-0001 - Belajar Keterampilan Memasak Meeting'),
(59, 1, '2024-05-06 20:02:50', 'Logout'),
(60, 1, '2024-05-06 20:03:18', 'Login'),
(61, 1, '2024-05-06 20:03:53', 'Mereset Password 123321 - Galih meeting'),
(62, 1, '2024-05-06 20:04:21', 'Logout'),
(63, 1, '2024-05-06 20:05:23', 'Login');

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
(2, 3, 'Belajar HTML dan CSS', 'Galih Restu Siswa', '2024-04-13', 0),
(3, 5, 'Belajar Keterampilan Memasak Meeting', 'Galih meeting', '2024-05-06', 0),
(4, 6, 'Belajar Keterampilan Memasak Meeting', 'Galih meeting', '2025-05-08', 1000);

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
(4, 'T-0003', 1, 1, 1, '2024-04-13', '2024-06-13', 'Pinjam'),
(5, 'T-0004', 1, 2, 15, '2024-05-06', '2024-08-08', 'Kembali'),
(6, 'T-0005', 1, 2, 15, '2024-05-06', '2024-05-01', 'Kembali');

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
(1, '190411100177', 'Galih Restu Siswa', 'Laki - laki', 'XI', 'Jl. Bandeng No 5, RT/RW 006/001 Kec. Kota Sumenep Kab Sumenep', '081939301766', '190411100177', 'Galih123', 'Siswa'),
(2, '123321', 'Galih meeting', 'Laki - laki', 'X', 'Jakarta', '081939301805', '123321', '123321', 'Siswa');

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
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
