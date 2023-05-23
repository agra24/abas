-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 05:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todaytickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`nama`, `username`, `password`) VALUES
('Ravi Aprillian Baskoro', 'blondokecut', 'b3b3b312'),
('Diva Putri Adilla', 'divaputri31', 'd1vaputri');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `email` varchar(30) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `kategori_tiket` varchar(20) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `banyak_tiket` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL,
  `metode_bayar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`email`, `nama_pembeli`, `nama_event`, `kategori_tiket`, `harga_tiket`, `banyak_tiket`, `total_harga`, `waktu_beli`, `metode_bayar`) VALUES
('aprillianravi389@gmail.com', 'Ravi Aprillian Baskoro', 'Pontianak Music Fest', 'Presale 1 Festival', 150000, 2, 308900, '2023-05-19 16:48:50', 'Virtual Account BCA'),
('divaputri@gmai;.com', 'Diva Putri Adilla', 'Pontianak Music Fest', 'Presale 1 Festival', 150000, 3, 458900, '2023-05-19 20:43:17', 'ShopeePay');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
