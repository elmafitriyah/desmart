-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 05:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `rw` int(20) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `rw`, `telp`, `username`, `password`) VALUES
(1, 'Saiful', 1, '081209387382', 'saiful01', '01saiful'),
(2, 'Herri', 2, '083293287332', 'herri02', '02herri'),
(3, 'Panji', 3, '081239089811', 'panji03', '03panji'),
(4, 'Dodi', 4, '087328729387	', 'dodi04', '04dodi'),
(5, 'Wirno', 5, '08453543512', 'wirno05', '05wirno'),
(6, 'David', 6, '086663453239', 'david06', '06david'),
(7, 'Arif', 7, '089643678775	', 'arif07', '07arif'),
(8, 'Syarif', 8, '081289562140	', 'syarif08', '08syarif'),
(9, 'Ali', 9, '083428398712', 'ali09', '09ali'),
(10, 'Firman', 10, '085389121901', 'firman10', '10firman');

-- --------------------------------------------------------

--
-- Table structure for table `bansos`
--

CREATE TABLE `bansos` (
  `id_bansos` int(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `pemberian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bansos`
--

INSERT INTO `bansos` (`id_bansos`, `jenis`, `kategori`, `jumlah`, `tgl_masuk`, `pemberian`) VALUES
(111, 'BPNT', 'Warga', 2400000, '2023-01-02', '2023-04-13'),
(112, 'PKH', 'Ibu Hamil', 3000000, '2023-01-02', '2023-04-13'),
(113, 'PKH', 'Balita', 3000000, '2023-01-02', '2023-04-13'),
(114, 'PKH', 'Siswa SD', 900000, '2023-01-02', '2023-04-13'),
(115, 'PKH', 'Siswa SMP', 1500000, '2023-01-02', '2023-04-13'),
(116, 'PKH', 'Siswa SMA/K', 2000000, '2023-01-02', '2023-04-13'),
(117, 'PKH', 'Lansia', 2400000, '2023-01-02', '2023-04-13'),
(118, 'PKH', 'Disabilitas Berat', 2400000, '2023-01-02', '2023-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_data` int(10) NOT NULL,
  `id_penerima` int(10) NOT NULL,
  `tgl_menerima` date NOT NULL,
  `id_admin` int(20) NOT NULL,
  `id_bansos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_data`, `id_penerima`, `tgl_menerima`, `id_admin`, `id_bansos`) VALUES
(1, 1, '2023-04-13', 1, 111),
(2, 2, '2023-04-13', 2, 116),
(3, 3, '2023-04-13', 3, 115),
(4, 4, '2023-04-13', 4, 117),
(5, 5, '2023-04-13', 5, 117),
(6, 6, '2023-04-13', 6, 118),
(7, 7, '2023-04-13', 7, 114),
(8, 8, '2023-04-13', 8, 112),
(9, 9, '2023-04-13', 9, 111),
(10, 10, '2023-04-13', 10, 111),
(37, 1, '2023-01-10', 1, 111),
(38, 2, '2023-01-01', 2, 116),
(39, 3, '2023-01-01', 3, 115),
(40, 4, '2023-01-01', 4, 117),
(41, 5, '2023-01-01', 5, 117),
(42, 6, '2023-01-01', 6, 118),
(43, 7, '2023-01-01', 7, 114),
(44, 8, '2023-01-01', 8, 112),
(45, 9, '2023-01-01', 9, 111),
(46, 10, '2023-01-01', 10, 111),
(47, 1, '2022-10-10', 1, 111),
(48, 2, '2022-10-10', 2, 116),
(49, 3, '2022-10-10', 3, 115),
(50, 4, '2022-10-10', 4, 117),
(51, 5, '2022-10-10', 5, 117),
(52, 6, '2022-10-10', 6, 118),
(53, 7, '2022-10-10', 7, 114),
(54, 8, '2022-10-10', 8, 112),
(55, 9, '2022-10-10', 9, 111),
(56, 10, '2022-10-10', 10, 111),
(57, 1, '2022-07-03', 1, 111),
(58, 2, '2022-07-03', 2, 116),
(59, 3, '2022-07-03', 3, 115),
(60, 4, '2022-07-03', 4, 117),
(61, 5, '2022-07-03', 5, 117),
(62, 6, '2022-07-03', 6, 118),
(63, 7, '2022-07-03', 7, 114),
(64, 8, '2022-07-03', 8, 112),
(65, 9, '2022-07-03', 9, 111),
(66, 10, '2022-07-03', 10, 111),
(67, 1, '2022-04-06', 1, 111),
(68, 2, '2022-04-06', 2, 116),
(69, 3, '2022-04-06', 3, 115),
(70, 4, '2022-04-06', 4, 117),
(71, 5, '2022-04-06', 5, 117),
(72, 6, '2022-04-06', 6, 118),
(73, 7, '2022-04-06', 7, 114),
(74, 8, '2022-04-06', 8, 112),
(75, 9, '2022-04-06', 9, 111),
(76, 10, '2022-04-06', 10, 111);

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(20) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `password` int(10) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `id_admin` int(20) NOT NULL,
  `id_bansos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`id_penerima`, `nik`, `nama`, `password`, `tgl_lahir`, `pekerjaan`, `id_admin`, `id_bansos`) VALUES
(1, 3515080606660006, 'Supritno', 6696, '1966-06-06', 'Tukang Becak', 1, 111),
(2, 3515080503060002, 'Siti Nur Aila', 5306, '2006-03-05', 'Pelajar SMA', 2, 116),
(3, 3515081108100004, 'Fani Agustina', 1810, '2010-08-11', 'Pelajar SMP', 3, 115),
(4, 3515080801480001, 'Abdur', 8471, '1971-04-08', 'Pensiun', 4, 117),
(5, 3515081204490001, 'Ridwan', 2449, '1949-04-12', 'Pensiun', 5, 117),
(6, 3515081312080003, 'Risky Dwi Putra', 3128, '2008-12-13', 'Tidak Bekerja', 6, 118),
(7, 3515082902160024, 'Febrina Putri', 9216, '2016-02-29', 'Pelajar', 7, 114),
(8, 3515083101910002, 'Sinta', 1191, '1991-01-31', 'Tidak Bekerja', 8, 112),
(9, 3515080707770005, 'Hadi Kurnia', 7777, '1977-07-07', 'Pengangguran', 9, 111),
(10, 3515080804710006, 'Joko Imanto', 8471, '1971-04-08', 'Penjual Keliling', 10, 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bansos`
--
ALTER TABLE `bansos`
  ADD PRIMARY KEY (`id_bansos`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `id_penerima` (`id_penerima`),
  ADD KEY `id_admin` (`id_admin`,`id_bansos`),
  ADD KEY `id_bansos` (`id_bansos`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bansos`
--
ALTER TABLE `bansos`
  MODIFY `id_bansos` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_data` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_ibfk_1` FOREIGN KEY (`id_bansos`) REFERENCES `bansos` (`id_bansos`),
  ADD CONSTRAINT `data_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `data_ibfk_3` FOREIGN KEY (`id_penerima`) REFERENCES `penerima` (`id_penerima`);

--
-- Constraints for table `penerima`
--
ALTER TABLE `penerima`
  ADD CONSTRAINT `penerima_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
