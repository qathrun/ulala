-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 04:31 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Kode_Paket` int(100) NOT NULL,
  `Nama_Paket` varchar(100) NOT NULL,
  `Alamat_Wisata` varchar(100) NOT NULL,
  `Harga_Orang` int(11) NOT NULL,
  `Kuota_Perjalanan` int(11) NOT NULL,
  `Tanggal_Wisata` date NOT NULL,
  `Tanggal_Berangkat` date NOT NULL,
  `Deskripsi` varchar(1000) NOT NULL,
  `Foto_Wisata` varchar(100) NOT NULL,
  `Nama_Travel` varchar(100) NOT NULL,
  `Nomor_HP` int(11) NOT NULL,
  `Email_Travel` varchar(100) NOT NULL,
  `Alamat_Travel` varchar(100) NOT NULL,
  `Request_Tambahan` varchar(1000) NOT NULL,
  `NO_KTP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `Kode_Paket` int(11) NOT NULL,
  `Nama_Paket` varchar(100) NOT NULL,
  `Alamat_Wisata` varchar(100) NOT NULL,
  `Harga_Orang` int(11) NOT NULL,
  `Kuota_Perjalanan` int(11) NOT NULL,
  `Tanggal_Wisata` date NOT NULL,
  `Tanggal_Berangkat` date NOT NULL,
  `Deskripsi` varchar(1000) NOT NULL,
  `Foto_Wisata` varchar(100) NOT NULL,
  `Nama_Travel` varchar(100) NOT NULL,
  `Nomor_HP` int(100) NOT NULL,
  `Email_Travel` varchar(100) NOT NULL,
  `Alamat_Travel` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`Kode_Paket`, `Nama_Paket`, `Alamat_Wisata`, `Harga_Orang`, `Kuota_Perjalanan`, `Tanggal_Wisata`, `Tanggal_Berangkat`, `Deskripsi`, `Foto_Wisata`, `Nama_Travel`, `Nomor_HP`, `Email_Travel`, `Alamat_Travel`) VALUES
(2, 'Paket 2 hari Lombok', 'Sukerare,Kuta,Banyumulek, Pantai Pink Lombok, dll', 1250000, 40, '2018-01-05', '2018-01-04', '', '', 'Green Chili Tour and Travel', 628211556, ' info@greenchilitravel.com', 'Jalan Barcelona No. 42 Puri Meninting, Senggigi - Lombok Barat NTB. 83355');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`NO_KTP`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`Kode_Paket`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
