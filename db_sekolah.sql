-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2025 at 05:35 AM
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
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `No` int(11) NOT NULL,
  `NIS` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `Kelas` varchar(25) NOT NULL,
  `wali_kelas` varchar(100) NOT NULL,
  `Kehadiran` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`No`, `NIS`, `nama`, `Kelas`, `wali_kelas`, `Kehadiran`) VALUES
(2, 1234, 'geri', '6B', 'Kiryuu', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `Nip` varchar(50) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Mapel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`Nip`, `Nama`, `Mapel`) VALUES
('12451', 'Bayu', 'IPS'),
('346788', 'Fikri', 'MATEMATIKA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `Kelas` varchar(25) NOT NULL,
  `Walas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `Kelas`, `Walas`) VALUES
(1, '2B', 'CINTYA');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `No` int(50) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Mapel` varchar(100) NOT NULL,
  `Tugas` int(20) NOT NULL,
  `UTS` int(20) NOT NULL,
  `UAS` int(20) NOT NULL,
  `Nilai_Akhir` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`No`, `Nama`, `Mapel`, `Tugas`, `UTS`, `UAS`, `Nilai_Akhir`) VALUES
(1, 'bayu', 'IPA', 80, 70, 60, 67),
(2, 'geri', 'IPS', 75, 70, 50, 61);

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `Id` int(11) NOT NULL,
  `Mapel` varchar(100) NOT NULL,
  `Guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`Id`, `Mapel`, `Guru`) VALUES
(1, 'ipa', 'cintya'),
(2, 'matematika', 'fikri');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `No` int(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_Kelamin` varchar(255) NOT NULL,
  `NIS` int(255) NOT NULL,
  `NISN` int(255) NOT NULL,
  `Kelas` varchar(100) NOT NULL,
  `Wali_Kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`No`, `Nama`, `Jenis_Kelamin`, `NIS`, `NISN`, `Kelas`, `Wali_Kelas`) VALUES
(2, 'geri', 'Laki-laki', 1234, 1234, '6B', 'Kiryuu'),
(1, 'BAYU', 'Laki-laki', 1241, 124566, '6A', 'Geri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`No`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
