-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 10:38 AM
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
  `Tanggal_Keberangkat` date NOT NULL,
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
  `Tanggal_Keberangkat` date NOT NULL,
  `Deskripsi` varchar(1000) NOT NULL,
  `Foto_Wisata` varchar(100) NOT NULL,
  `Nama_Travel` varchar(100) NOT NULL,
  `Nomor_HP` int(100) NOT NULL,
  `Email_Travel` varchar(100) NOT NULL,
  `Alamat_Travel` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
