-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2017 at 05:17 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtraveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(8) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `email`) VALUES
('52151000', 'Erica', 'asd', 'Erica Maulidina Beni', 'dina@gmail.com'),
('52151001', 'Hanum', 'asd', 'Hilda', 'hanum@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `base_menu`
--

CREATE TABLE `base_menu` (
  `id_pw` varchar(5) NOT NULL,
  `nama_paket` varchar(30) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` int(30) NOT NULL,
  `kategori` int(1) NOT NULL,
  `kuota` int(11) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_menu`
--

INSERT INTO `base_menu` (`id_pw`, `nama_paket`, `deskripsi`, `harga`, `kategori`, `kuota`, `tanggal_berangkat`, `image`) VALUES
('PW-1', 'Paket 3 hari Bali', 'Rute wisata menarik antara lain Pantai Pandawa, Pura Uluwatu, Pantai Jimbaran, Kintamani,  Penglipuran, Pantai Sanur,  Krisna Oleh -oleh Bali, Pura Tanah Lot, Pantai Kuta dan tempat menarik lainnya', 1500000, 0, 50, '2017-12-26', 'bal1.jpg'),
('PW-2', 'Lombok Full Tour', 'Rute wisata menarik antara lain mengunjungi Suku Sasak – Rumah Adat Lombok, Budaya dan hasil kerajinan khas Lombok, Pantai Kuta, melihat spot terumbu karang tercantik di Indonesia Berenang dan Snorkeling dengan bebas dan Pulau Pasir yang Langka', 1250000, 0, 40, '2018-01-04', 'lombok1.jpg'),
('PW-3', 'Trip Bromo Sunrise View', 'Melihat keindahan gunung Bromo dengan mudah lengkap dengan makan dan akomondosi untuk menuju ke puncaknya. ', 595000, 0, 45, '2018-01-12', 'brom1.jpg'),
('PW-4', 'Paket Danau Toba', '\"Fasilitas Tour\r\n\r\n- Tiket pesawat Garuda Indonesia atau Batik Air Jakarta - Kualanamu PP\r\n\r\n- Hotel di pulau weh sabang selama 2 malam', 3000000, 0, 40, '2018-06-19', 'danau_toba.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE `datauser` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`email`, `password`, `username`, `full_name`, `address`) VALUES
('atitar@gmail.com', '6c654cc7b760f722684bd598909b170d', 'Atitar', 'Aliwa', '098887887'),
('bagas@gmail.com', 'e56317913509f5f2ce2a55e97c19fa70', 'rahadiansyah', 'restu', '0989898'),
('bening@gmail.com', '74ace499079218db2da9bf88b4b6c85b', 'Erica', 'Bening', '09804528340'),
('dina@gmail.com', 'bf6ac2b2e9cfae6531bae4e742cd8682', 'dina', 'bening', '08776799890'),
('elsa@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'elsa', 'elsa siffana', 'tmb 73'),
('erica@gmail.com', 'asd', 'Erica', ' Maulidina Bening', '08777236429'),
('hanum@gmail.com', 'asd', 'hilda', 'hanum', '0828374034'),
('maulidina.dina@gmail.com', '9b37a3ea07415a3421941a3110053b6b', 'dina', 'dina', '089998776389'),
('truno1@gmail.com', 'asd', 'Truno ', 'Joyo', '0855567786');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id_detail` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `id_nasi` varchar(255) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id_detail`, `orderid`, `id_nasi`, `hargajual`, `jumlah`) VALUES
(1, 937, 'nasi0', 10000, 10),
(2, 937, 'nasi1', 10000, 10),
(6, 123, 'nasi0', 10000, 19),
(7, 889, 'nasi4', 10000, 40),
(8, 889, 'nasi2', 10000, 10),
(9, 51, 'nasi0', 10000, 10),
(10, 51, 'nasi1', 10000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_pw`
--

CREATE TABLE `order_pw` (
  `order_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_pw` varchar(5) NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `addition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_pw`
--

INSERT INTO `order_pw` (`order_id`, `username`, `id_pw`, `jumlah_orang`, `addition`) VALUES
(1, 'Erica', 'PW-4', 4, 'R'),
(2, 'Erica', 'PW-2', 3, 'Trekaaa'),
(3, 'Erica', 'PW-4', 4, 'tatata');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `emailuser` varchar(255) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `jam_kirim` varchar(255) NOT NULL,
  `alamat_kirim` varchar(255) NOT NULL,
  `status_order` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id`, `emailuser`, `tanggal_pesan`, `tanggal_kirim`, `jam_kirim`, `alamat_kirim`, `status_order`) VALUES
(1, 937, 'hanum@gmail.com', '2017-05-30', '2017-05-31', '19.00', 'Keputih Gang II 17', 'terkirim'),
(2, 123, 'atitar@gmail.com', '2017-05-09', '2017-05-09', '18.00', 'Keputih Gang II/89', 'proses'),
(3, 889, 'erica@gmail.com', '2017-05-16', '2017-05-31', '18.00', 'Gebang', 'proses'),
(4, 51, 'bagas@gmail.com', '2017-05-30', '2017-12-12', '13.00', 'keputih ii', 'Proses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `base_menu`
--
ALTER TABLE `base_menu`
  ADD PRIMARY KEY (`id_pw`);

--
-- Indexes for table `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`email`),
  ADD KEY `username` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `username_2` (`username`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `order_pw`
--
ALTER TABLE `order_pw`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `username` (`username`),
  ADD KEY `id_pw` (`id_pw`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD UNIQUE KEY `emailuser` (`emailuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `order_pw`
--
ALTER TABLE `order_pw`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_pw`
--
ALTER TABLE `order_pw`
  ADD CONSTRAINT `order_pw_ibfk_1` FOREIGN KEY (`id_pw`) REFERENCES `base_menu` (`id_pw`),
  ADD CONSTRAINT `order_pw_ibfk_2` FOREIGN KEY (`username`) REFERENCES `datauser` (`username`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`emailuser`) REFERENCES `datauser` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
