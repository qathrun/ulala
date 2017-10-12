-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2017 at 05:06 PM
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
  `NO_KTP` int(100) NOT NULL,
  `Tanggal_Wisata` date NOT NULL,
  `Tanggal_Berangkat` date NOT NULL,
  `Request_Tambahan` varchar(1000) NOT NULL
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
  `Nama_Travel` varchar(100) NOT NULL,
  `Nomor_HP` int(100) NOT NULL,
  `Email_Travel` varchar(100) NOT NULL,
  `Alamat_Travel` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`Kode_Paket`, `Nama_Paket`, `Alamat_Wisata`, `Harga_Orang`, `Kuota_Perjalanan`, `Tanggal_Wisata`, `Tanggal_Berangkat`, `Deskripsi`, `Nama_Travel`, `Nomor_HP`, `Email_Travel`, `Alamat_Travel`) VALUES
(1, 'Paket 3 hari Bali', 'Jl. Pantai Pandawa, Nusa Dua, Kutuh, South Kuta, Badung Regency, Bali 80361', 1500000, 50, '2017-12-27', '2017-12-26', 'Penjemputan di Bandara Ngurah Rai Bali. Rute wisata hari pertama adalah Pantai Pandawa, Pura Uluwatu, Sunset & makan malam di Pantai Jimbaran. Hari kedua adalah menyaksikan pertunjukan tarian Barong, mengunjungi desa pengerajin Batik & Perak, coffee break At Tegallalalng dengan pemandangan sawah terasering, Kintamani, makan siang di Gong Dewata Restourant , pemandangan terbuka Gunung & Danau Batur, desa traditional Penglipuran, Pantai Sanur, Makan malam di Denpasar, Kembali ke Hotel. Hari ketiga adalah Krisna Oleh -oleh Bali, Pura Tanah Lot dan Pantai Kuta.', 'CV WisataBaliku', 239283923, 'baliwisataku@gmail.com', 'Jl. Batas Dukuh Sari No.8B, Pedungan, Denpasar Sel., Kota Denpasar, Bali'),
(2, 'Paket 2 hari Lombok', 'Sukerare,Kuta,Banyumulek, Pantai Pink Lombok, dll', 1250000, 40, '2018-01-05', '2018-01-04', 'Hari 1 : \r\n- Suku Sasak – Rumah Adat Lombok\r\n- Budaya dan hasil kerajinan khas Lombok\r\n- Keindahan Pantai Kuta\r\nHari 2 :\r\n- Perjalanan menggunakan perahu\r\n- Melihat spot terumbu karang tercantik di Indonesia Berenang dan Snorkeling dengan bebas\r\n- Pulau Pasir yang Langka"', 'Green Chili Tour and Travel', 82115555, ' info@greenchilitravel.com', 'Jalan Barcelona No. 42 Puri Meninting, Senggigi - Lombok Barat NTB. 83355'),
(3, 'OPEN TRIP BROMO SUNRISE', 'Bromo, Tengger, Jawa Timur', 595000, 40, '2018-01-12', '2018-01-12', '"* Trip gabungan, daftar min. 2 org\r\n* Bisa dijemput dimana saja di Kota Malang / Surabaya\r\n* Lengkap ke 6 objek wisata sekaligus\r\nTidak Termasuk:\r\n1. Sewa kuda\r\n(*bisa jalan kaki ke puncak bromo)\r\n2. Pengeluaran pribadi"', 'Cak Ferdi Tour & Travel', 628213637, 'ferditourandtravel@gmail.com', 'Jalan Brigjend Abd Manan W. Blog A/I No. 800 Malang, Ngroto, Pujon, Ngroto, Pujon, Malang, Jawa Timur 65391');

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
