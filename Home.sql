-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2021 at 08:53 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Home`
--

-- --------------------------------------------------------

--
-- Table structure for table `guost`
--

CREATE TABLE `guost` (
  `phone` int(9) NOT NULL,
  `fingerprint` blob,
  `email` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guost`
--

INSERT INTO `guost` (`phone`, `fingerprint`, `email`) VALUES
(733972546, 0x494d475f32303231313130385f3230313133392e6a7067, 'utupback@gmail.com'),
(777943941, 0x494d475f32303231313130385f3133313232362e6a7067, 'ziad-ms@outlook.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guost`
--
ALTER TABLE `guost`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
