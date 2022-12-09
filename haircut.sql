-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 05:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haircut`
--

-- --------------------------------------------------------

--
-- Table structure for table `barber_man`
--

CREATE TABLE `barber_man` (
  `id_barberm` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `instagram` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barber_man`
--

INSERT INTO `barber_man` (`id_barberm`, `nama`, `no_hp`, `instagram`) VALUES
(102, 'budi', '082258594931', '@budioutcast'),
(103, 'gilang', '081284931273', '@gilangrahmadan'),
(104, 'acong', '082189374952', '@acongoutcast'),
(105, 'rudy', '081367879083', '@rudy');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_antrian` int(2) NOT NULL,
  `nama_p` char(25) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `id_barberm` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`no_antrian`, `nama_p`, `no_hp`, `id_barberm`) VALUES
(1, 'awang', '08225075313', 102),
(2, 'levy', '081288046878', 104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barber_man`
--
ALTER TABLE `barber_man`
  ADD PRIMARY KEY (`id_barberm`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no_antrian`),
  ADD KEY `id_barberm` (`id_barberm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no_antrian` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`id_barberm`) REFERENCES `barber_man` (`id_barberm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
