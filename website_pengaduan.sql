-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 07:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `login_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `akses_id` enum('admin','mahasiswa','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`login_id`, `username`, `nama_lengkap`, `email`, `password`, `akses_id`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(5, '2131710114', 'Andhika Dwi Khalisyahputra', 'andhikadwi980@gmail.com', 'ee12f587264ae9491cbe513e270c28da', 'mahasiswa'),
(12, '2131710102', 'Achmad Chiadar Ismail', 'chaidar@gmail.com', 'f7bc15319c87a54990c764bf0bb55976', 'mahasiswa'),
(16, '2131710009', 'Ahmad Hanafi Mubarok', 'hanafai@gmail.com', '59f5012ff06ea61babce1005815220b8', 'mahasiswa'),
(17, '2131710126', 'Gilang Pambudi Wibawanto', 'gilangalkas@gmail.com', 'c52629864ab9da4709870e4edb5a5222', 'mahasiswa'),
(18, '123412412412', 'asdasdasd', 'asdqawd@sadfasd.sadas', '9a268921318bf29e131cd31aa56d5060', 'mahasiswa'),
(20, '2003311000', 'leni eka mawarni', 'lenieka0802@gmail.com', '18d887463a683bbf2cc4b7fb5556161f', 'mahasiswa'),
(21, '2131710058', 'Alega Naufal Akbar', 'aleganaufal@gmail.com', 'b0f8669b42e0deb6fe7673e4bf702a92', 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Akademik'),
(2, 'Teknis'),
(3, 'Kemahasiswaan'),
(4, 'Kepegawaian'),
(5, 'Keuangan'),
(6, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `isi_pengaduan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Pending','Solved','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `no_wa`, `id_unit`, `id_kategori`, `isi_pengaduan`, `tanggal`, `status`) VALUES
(66, '2131710102', 'Achmad Chiadar Ismail', '081231231231', 7, 2, 'minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliq', '2022-06-20', 'Solved'),
(67, '2131710009', 'Ahmad Hanafi Mubarok', '087643245134', 20, 3, 'p ex ea commodo consequat. Duis aute irure dolor in reprehenderit', '2022-06-21', 'Solved'),
(68, '2131710114', 'Andhika Dwi Khalisyahputra', '083852023259', 29, 1, 'in voluptate velit esse cillum d', '2022-06-22', 'Solved'),
(69, '2131710126', 'Gilang Pambudi Wibawanto', '08989134135', 51, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2022-06-22', 'Solved'),
(75, '2131710114', 'Andhika Dwi Khalisyahputra', '13512415125', 15, 3, 'keputusan telat', '2022-06-26', 'Pending'),
(80, '2131710058', 'Alega Naufal Akbar', '0824137865324', 36, 3, 'tidak ada keputusan ueiojf as s', '2022-07-04', 'Pending'),
(81, '2131710114', 'Andhika Dwi Khalisyahputra', '0832143251234', 5, 3, 'aBksad iyhasfjk ', '2022-07-04', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `nama_unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_unit`, `nama_unit`) VALUES
(1, 'JURUSAN TEKNIK ELEKTRO'),
(2, 'D-IV SISTEM KELISTRIKAN'),
(3, 'D-III TEKNIK ELEKTRONIKA'),
(4, 'D-III TEKNIK LISTRIK'),
(5, 'D-III TEKNIK TELEKOMUNIKAS'),
(6, 'D-IV TEKNIK ELEKTRONIKA'),
(7, 'D-IV JARINGAN TELEKOMUNIKASI DIGITAL'),
(8, 'JURUSAN TEKNIK MESIN'),
(9, 'D-III TEKNIK MESIN'),
(10, 'D-IV TEKNIK OTOMOTIF ELEKTRONIK'),
(11, 'D-IV TEKNIK MESIN PRODUKSI dan PERAWATAN'),
(12, 'D-III TEKNOLOGI PEMELIHARAAN PESAWAT UDARA'),
(13, 'JURUSAN TEKNIK SIPIL'),
(14, 'D-III TEKNIK SIPIL'),
(15, 'D-IV MANAJEMEN REKAYASA KONSTRUKSI'),
(16, 'JURUSAN TEKNIK KIMIA'),
(17, 'D-III TEKNIK KIMIA'),
(18, 'D-IV TEKNOLOGI KIMIA INDUSTRI'),
(19, 'JURUSAN AKUNTANSI'),
(20, 'D-III AKUNTANSI'),
(21, 'D-IV AKUNTANSI MANAJEME'),
(22, 'D-IV KEUANGAN'),
(23, 'JURUSAN ADMINISTRASI NIAGA'),
(24, 'D-III ADMINISTRASI BISNIS'),
(25, 'D-IV MANAJEMEN PEMASARAN'),
(26, 'D-III BAHASA INGGRIS'),
(27, 'D-IV BAHASA INGGRIS UNTUK KOMUNIKASI BISNIS'),
(28, 'D-IV PENGELOLAAN ARSIP DAN REKAMAN INFORMASI'),
(29, 'JURUSAN TEKNOLOGI INFORMASI'),
(30, 'D-III MANAJEMEN INFORMATIKA'),
(31, 'D-IV TEKNIK INFORMATIKA'),
(32, 'UPT PERPUSTAKAAN'),
(33, 'UPT PENELITIAN dan PENGABDIAN KEPADA MASYARAKAT'),
(34, 'UPT MATA KULIAH UMUM'),
(35, 'Dewan Perwakilan Mahasiswa (DPM)'),
(36, 'Badan Eksekutif Mahasiswa (BEM)'),
(37, 'Himpunan Mahasiswa Mesin'),
(38, 'Himpunan Mahasiswa Elektro'),
(39, 'Himpunan Mahasiswa Sipil'),
(40, 'Himpunan Mahasiswa Akutansi'),
(41, 'Himpunan Mahasiswa Teknik Kimia'),
(42, 'Himpunan Mahasiswa Administrasi Niaga'),
(43, 'Kerohanian Kristen Talita Kum'),
(44, 'KMK St Yohanes Polinema'),
(45, 'Kerohanian Islam Polinema'),
(46, 'Olah Raga'),
(47, 'Pasukan Anti Narkotika'),
(48, 'Lembaga Pers Mahasiswa Kompen'),
(49, 'Bhakti Karya Mahasiswa'),
(50, 'Pendidikan dan Penalaran'),
(51, 'OPA Ganedra Giri'),
(52, 'Radio Kampus PL FM'),
(53, 'Seni Theatristic'),
(54, 'Resimen Mahasiswa'),
(55, 'Usaha Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `akses_id` (`akses_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `id_unit` (`id_unit`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
