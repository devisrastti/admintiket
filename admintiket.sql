-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 07:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admintiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `uid`, `username`, `email`, `password`, `status`) VALUES
(17, 1, 'Customers Service', 'admin@admin.com', 'admin01', 1),
(25, 0, 'dep', 'dep@gmail.com', 'Depdep', 1),
(27, 0, 'depis', 'depis@gmail.com', 'depiss', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `kota_asal` varchar(255) NOT NULL,
  `kota_tujuan` varchar(255) NOT NULL,
  `hari` date NOT NULL,
  `jam` time NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kota_asal`, `kota_tujuan`, `hari`, `jam`, `harga`) VALUES
(1, 'Ketapang', 'Pontianak', '2023-08-10', '08:00:00', 408000),
(4, 'Ketapang', 'Pontianak', '2023-08-11', '08:00:00', 408000),
(6, 'Ketapang', 'Pontianak', '2023-08-12', '08:00:00', 408000),
(7, 'Ketapang', 'Pontianak', '2023-08-13', '08:00:00', 408000),
(8, 'Ketapang', 'Pontianak', '2023-08-14', '08:00:00', 408000),
(9, 'Ketapang', 'Pontianak', '2023-08-15', '08:00:00', 408000),
(10, 'Ketapang', 'Pontianak', '2023-08-16', '08:00:00', 408000),
(11, 'Ketapang', 'Pontianak', '2023-07-17', '08:00:00', 408000),
(12, 'Ketapang', 'Pontianak', '2023-08-18', '08:00:00', 408000),
(13, 'Ketapang', 'Pontianak', '2023-08-19', '08:00:00', 408000),
(15, 'Ketapang', 'Pontianak', '2023-08-21', '08:00:00', 408000),
(16, 'Ketapang', 'Pontianak', '2023-08-22', '08:00:00', 408000),
(17, 'Ketapang', 'Pontianak', '2023-08-23', '08:00:00', 408000),
(19, 'Ketapang', 'Pontianak', '2023-08-20', '08:00:00', 408000),
(20, 'Ketapang', 'Pontianak', '2023-08-24', '08:00:00', 408000),
(21, 'Ketapang', 'Pontianak', '2023-08-25', '08:00:00', 408000),
(22, 'Ketapang', 'Pontianak', '2023-08-26', '08:00:00', 408000),
(23, 'Ketapang', 'Pontianak', '2023-08-27', '08:00:00', 408000),
(24, 'Ketapang', 'Pontianak', '2023-08-28', '08:00:00', 408000),
(25, 'Ketapang', 'Pontianak', '2023-08-29', '08:00:00', 408000),
(26, 'Ketapang', 'Pontianak', '2023-08-30', '08:00:00', 408000),
(27, 'Ketapang', 'Pontianak', '2023-08-31', '08:00:00', 408000),
(28, 'Pontianak', 'Ketapang', '2023-08-10', '08:00:00', 400000),
(29, 'Pontianak', 'Ketapang', '2023-08-11', '08:00:00', 400000),
(30, 'Pontianak', 'Ketapang', '2023-08-12', '08:00:00', 400000),
(31, 'Pontianak', 'Ketapang', '2023-08-13', '08:00:00', 400000),
(32, 'Pontianak', 'Ketapang', '2023-08-14', '08:00:00', 400000),
(33, 'Pontianak', 'Ketapang', '2023-08-15', '08:00:00', 400000),
(34, 'Pontianak', 'Ketapang', '2023-08-16', '08:00:00', 400000),
(35, 'Pontianak', 'Ketapang', '2023-08-17', '08:00:00', 400000),
(36, 'Pontianak', 'Ketapang', '2023-08-18', '08:00:00', 400000),
(37, 'Sukadana', 'Pontianak', '2023-08-10', '10:00:00', 300000),
(38, 'Sukadana', 'Pontianak', '2023-08-11', '10:00:00', 300000),
(39, 'Sukadana', 'Pontianak', '2023-08-12', '10:00:00', 300000),
(40, 'Sukadana', 'Pontianak', '2023-08-13', '10:00:00', 300000),
(41, 'Sukadana', 'Pontianak', '2023-08-14', '10:00:00', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pengirim` varchar(255) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `id_pengirim`, `id_penerima`, `pesan`, `nama_pengirim`, `nama_penerima`, `time`, `status`) VALUES
(297, 17, 12, 'hallo', 'Customers Service', 'Genta Arya', '2023-06-26 04:22:56', NULL),
(298, 12, 17, 'cara ngurus bebas perpus gimana ?', 'Genta Arya', 'Customers Service', '2023-06-26 04:23:36', NULL),
(299, 17, 12, 'bayar kak ', 'Customers Service', 'Genta Arya', '2023-06-26 04:24:10', NULL),
(300, 12, 17, 'gimana kak ?', 'Genta Arya', 'Customers Service', '2023-06-26 04:24:43', NULL),
(301, 17, 12, 'berikut tata caranya : ', 'Customers Service', 'Genta Arya', '2023-06-26 04:25:09', NULL),
(302, 17, 12, 'gini', 'Customers Service', 'Genta Arya', '2023-06-26 04:25:36', NULL),
(303, 12, 17, 'ya', 'Genta Arya', 'Customers Service', '2023-06-26 04:27:26', NULL),
(304, 17, 12, 'aa', 'Customers Service', 'Genta Arya', '2023-06-26 04:40:18', NULL),
(305, 12, 17, 'uy', 'Genta Arya', 'Customers Service', '2023-06-26 08:58:00', NULL),
(306, 12, 17, 'uy', 'Genta Arya', 'Customers Service', '2023-06-26 08:58:37', NULL),
(307, 12, 17, 'ya', 'Genta Arya', 'Customers Service', '2023-06-26 08:58:45', NULL),
(308, 12, 17, 'ya', 'Genta Arya', 'Customers Service', '2023-06-26 09:23:59', 0),
(309, 17, 12, 'test', 'Customers Service', 'Genta Arya', '2023-06-26 09:23:45', 0),
(310, 12, 17, 'tes', 'Genta Arya', 'Customers Service', '2023-06-26 09:23:59', 0),
(311, 17, 12, 'test', 'Customers Service', 'Genta Arya', '2023-06-26 09:23:45', 0),
(312, 12, 17, 'cek', 'Genta Arya', 'Customers Service', '2023-06-26 09:23:59', 0),
(313, 12, 17, 'test', 'Genta Arya', 'Customers Service', '2023-06-26 09:23:59', 0),
(314, 17, 12, 'test', 'Customers Service', 'Genta Arya', '2023-06-26 09:23:45', 0),
(315, 17, 12, 'testtst', 'Customers Service', 'Genta Arya', '2023-06-26 09:23:46', 0),
(316, 9, 17, 'oi', 'devi', 'Customers Service', '2023-06-26 14:44:38', 0),
(317, 12, 17, 'p', 'Genta Arya', 'Customers Service', '2023-06-26 09:30:27', 0),
(318, 12, 17, 'p', 'Genta Arya', 'Customers Service', '2023-06-26 09:30:27', 0),
(319, 17, 12, 'genta', 'Customers Service', 'Genta Arya', '2023-06-26 09:30:56', 0),
(320, 17, 12, 'ppp', 'Customers Service', 'Genta Arya', '2023-06-26 09:31:10', 0),
(321, 12, 17, 'uy', 'Genta Arya', 'Customers Service', '2023-06-26 09:31:26', 0),
(322, 12, 17, 'hallo', 'Genta Arya', 'Customers Service', '2023-06-26 09:43:45', 0),
(323, 17, 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Customers Service', 'Genta Arya', '2023-06-26 09:44:20', 0),
(324, 17, 12, 'wkwkkwkw', 'Customers Service', 'Genta Arya', '2023-06-26 09:50:55', 0),
(325, 12, 17, 'hahah', 'Genta Arya', 'Customers Service', '2023-06-26 10:01:21', 0),
(326, 17, 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Customers Service', 'Genta Arya', '2023-06-26 09:50:55', 0),
(327, 9, 17, 'hallo selamat malam', 'devi', 'Customers Service', '2023-06-26 14:45:02', 0),
(328, 17, 9, 'Selamat malam juga kak', 'Customers Service', 'devi', '2023-06-26 14:45:11', 0),
(329, 9, 17, 'oke', 'devi', 'Customers Service', '2023-06-26 21:48:20', 0),
(330, 9, 17, 'halo kak ', 'devi', 'Customers Service', '2023-06-26 21:48:20', 0),
(331, 9, 17, 'saya mau konfirmasi masalah pesanan saya ', 'devi', 'Customers Service', '2023-06-26 21:48:20', 0),
(332, 9, 17, 'apakah bisa dicancel kak ?', 'devi', 'Customers Service', '2023-06-26 21:48:20', 0),
(333, 17, 9, 'yaaa tidak bisa kak', 'Customers Service', 'devi', '2023-06-26 21:48:43', 0),
(334, 17, 9, 'ada yang bisa saya bantu ??', 'Customers Service', 'devi', '2023-06-26 21:49:09', 0),
(335, 22, 17, 'hallo', 'Akun tester', 'Customers Service', '2023-06-26 22:44:27', 1),
(336, 22, 17, 'bang', 'Akun tester', 'Customers Service', '2023-06-26 22:52:47', 1),
(337, 22, 17, 'hay', 'Akun tester', 'Customers Service', '2023-06-27 16:18:20', 1),
(338, 27, 17, 'halo', 'depis', 'Customers Service', '2023-07-29 16:11:25', 1),
(339, 27, 17, 'permisii', 'depis', 'Customers Service', '2023-07-29 16:11:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `jam` time NOT NULL,
  `email` varchar(255) NOT NULL,
  `harga` int(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `jadwal`, `jam`, `email`, `harga`, `nama`, `no_telp`, `status`, `order_id`) VALUES
(79, '2023-08-24', '08:00:00', 'depiss@gmail.com', 1224000, 'depi', '089654916693', '0', 'ORDER_63820'),
(80, '2023-08-28', '08:00:00', 'dep@gmail.com', 1224000, 'Depi sari', '089654916693', '0', 'ORDER_47959'),
(81, '2023-08-15', '08:00:00', 'depis@gmail.com', 1632000, 'depisari', '089654916693', '0', 'ORDER_58637');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `email`) VALUES
(1, '0', 'gentaakunpb2@gmail.com'),
(2, '0', 'gentaakunpb2@gmail.com'),
(3, 'dca860bba5', 'gentaakunpb2@gmail.com'),
(4, '7032c37478', 'gentaakunpb2@gmail.com'),
(10, '6178c280fa', 'gentaakunpb2@gmail.com'),
(22, 'c9c13001be', 'ari123@gmail.com'),
(23, '5cacbfbe90', 'ari123@gmail.com'),
(29, 'ce4bb784b7', 'mgentaarya@yahoo.com'),
(32, '53520bf9b8', 'genta@gmail.com'),
(38, '0ef28bc615', 'mrarifutama@gmail.com'),
(67, '5c7409bbcc', 'mrarifutama@gmail.com'),
(68, '8300c0b412', 'mrarifutama@gmail.com'),
(69, '72f994b4fe', 'mrarifutama@gmail.com'),
(70, '23ce37d8bd', 'mrarifutama@gmail.com'),
(71, 'b8877a9fcc', 'mrarifutama@gmail.com'),
(72, 'e7096675e4', 'mrarifutama@gmail.com'),
(73, 'ff8c0b2fc1', 'mrarifutama@gmail.com'),
(74, '9b5c1a6ca2', 'mrarifutama@gmail.com'),
(75, '79f81706b5', 'mrarifutama@gmail.com'),
(76, '5eb9083649', 'mrarifutama@gmail.com'),
(77, '0f03d2c177', 'mrarifutama@gmail.com'),
(78, '0109d53bce', 'mrarifutama@gmail.com'),
(79, 'ee627c314b', 'mrarifutama@gmail.com'),
(80, 'd9055391e9', 'mrarifutama@gmail.com'),
(81, '9972388818', 'mrarifutama@gmail.com'),
(82, 'd22498ac9c', 'mrarifutama@gmail.com'),
(83, '10b66820dc', 'mrarifutama@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
