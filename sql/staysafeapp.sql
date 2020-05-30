-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 02:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staysafeapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `idCampaign` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `imgCampaign` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `bankAcc` varchar(50) DEFAULT NULL,
  `bankNum` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`idCampaign`, `idUser`, `imgCampaign`, `name`, `startDate`, `endDate`, `info`, `detail`, `target`, `bankAcc`, `bankNum`) VALUES
(15, 23, '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQ', 'Bantu tenaga medis ', '2020-06-01', '2020-06-30', 'https://kitabisa.com/campaign/habitatpejuangmedis', 'Habitat for Humanity Indonesia mengajak seluruh masyarakat agar bergandengan tangan, membantu para Pejuang Medis, memperoleh #tempatsinggahpejuangmedis yang nyaman dan layak', 20000000, 'BNI', '086564892u'),
(17, 25, '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQ', 'Rp50 Ribu Bantu Satwa Bertahan di Tengah COVID-19', '2020-06-01', '2020-06-30', 'https://kitabisa.com/campaign/bantusatwahidup', 'Teman-teman pecinta satwa, yuk kita bersatu bantu kebun binatang di Indonesia terus bertahan di masa pandemi', 20000000, 'BNI', '0484048404648'),
(18, 26, '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQ', 'Bantu Pak Kristianto Melawan Penyakitnya', '2020-04-28', '2020-04-30', 'https://wecare.id/Kristianto/', 'Takdir tidak ada yang tahu, pandemi COVID-19 benar-benar merubah hidup saya. Saat bertebaran berita mengenai virus corona, jujur saya Pak Kristanto dan keluarga mulai takut', 20000000, 'BNI', '081243850564');

-- --------------------------------------------------------

--
-- Table structure for table `hotline`
--

CREATE TABLE `hotline` (
  `idHotline` int(11) NOT NULL,
  `hosName` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotline`
--

INSERT INTO `hotline` (`idHotline`, `hosName`, `address`, `phone`) VALUES
(1, 'RS. Sanglah Denpasar', 'Jl. Diponegoro, Dauh Puri Klod, Kec. Denpasar Bar.', '082146452927'),
(2, 'RS. Universitas Udayana', 'Jl. Rumah Sakit Unud, Jimbaran, Kec. Kuta Sel., Ka', '082146452927');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `email`, `name`, `level`, `phone`) VALUES
(20, '83469ed2521f07cb27804061cf244132', 'miranovitad@gmail.com', 'Ni Putu Mira Novita Dewi', 1, '082146452927'),
(21, '00b7691d86d96aebd21dd9e138f90840', 'arya@gmail.com', 'I Made Arya Adi Pramana', 1, '081338754954'),
(23, '00b7691d86d96aebd21dd9e138f90840', 'ketut@gmail.com', 'Ketut Suartami', 1, '085237281129'),
(25, '00b7691d86d96aebd21dd9e138f90840', 'komang@gmail.com', 'Komang test', 1, '085213465986'),
(26, '00b7691d86d96aebd21dd9e138f90840', 'miranov@gmail.com', 'Ni Putu Mira Novita Dewi', 1, '082146452927');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`idCampaign`);

--
-- Indexes for table `hotline`
--
ALTER TABLE `hotline`
  ADD PRIMARY KEY (`idHotline`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `idCampaign` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hotline`
--
ALTER TABLE `hotline`
  MODIFY `idHotline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
