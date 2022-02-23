-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 04:59 PM
-- Server version: 5.7.35-log
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unittesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(3, 'mail0@mail.com', 'T^J0>!i7'),
(4, 'mail1@mail.com', '&QW87IMz'),
(5, 'mail2@mail.com', '[s0HJ^GB'),
(6, 'mail3@mail.com', '_]rCXyl('),
(7, 'mail4@mail.com', 'mOaj4[ur'),
(8, 'mail5@mail.com', '_%<>f&^j'),
(9, 'mail6@mail.com', 'I.Z@>7E/'),
(10, 'mail7@mail.com', 'aAS!oUl,'),
(11, 'mail8@mail.com', 'HG0O`h&#'),
(12, 'mail9@mail.com', '=Ha@9%V/'),
(13, 'mail10@mail.com', '\">B#SA06'),
(14, 'mail11@mail.com', 'gILH\'aq='),
(15, 'mail12@mail.com', 'e`qV>/)J'),
(16, 'mail13@mail.com', '$%b95#.N'),
(17, 'mail14@mail.com', ':1D?4M^p'),
(18, 'mail15@mail.com', '<D.x%?KE'),
(19, 'mail16@mail.com', 'Qn&Kq]b\\'),
(20, 'mail17@mail.com', ']~#/w,7N'),
(21, 'mail18@mail.com', 'gc+v!6l8'),
(22, 'mail19@mail.com', ',rP{k+(5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
