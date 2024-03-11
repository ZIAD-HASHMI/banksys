-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 05:08 PM
-- Server version: 5.7.34
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `guost`
--

CREATE TABLE `guost` (
  `IDNTITY` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `distract` varchar(20) DEFAULT NULL,
  `datres` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(32) DEFAULT NULL,
  `Rid_num` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guost`
--
ALTER TABLE `guost`
  ADD PRIMARY KEY (`IDNTITY`,`email`),
  ADD UNIQUE KEY `IDNTITY` (`IDNTITY`,`email`),
  ADD UNIQUE KEY `Rid_num` (`Rid_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;