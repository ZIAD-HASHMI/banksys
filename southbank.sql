-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 11, 2022 at 08:43 PM
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
-- Database: `southbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accounts`
--

CREATE TABLE `Accounts` (
  `ACC_NUM` int(11) NOT NULL,
  `OPINING_DATE` date NOT NULL,
  `TRAN_REF` int(6) NOT NULL,
  `Balance` decimal(10,0) NOT NULL,
  `Acc` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `Account_name` char(50) COLLATE utf8_bin NOT NULL,
  `AMOUNT` decimal(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Gornal`
--

CREATE TABLE `Gornal` (
  `Account_name` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Account_number` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `Account_type` char(1) COLLATE utf8_bin DEFAULT NULL,
  `Account_status` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `TRANSACTION_date` date DEFAULT NULL,
  `user_id` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `Mount` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `cruncy` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `Cridet` double DEFAULT NULL,
  `Debit` double DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Gornal`
--

INSERT INTO `Gornal` (`Account_name`, `Account_number`, `Account_type`, `Account_status`, `TRANSACTION_date`, `user_id`, `Mount`, `cruncy`, `Cridet`, `Debit`, `balance`) VALUES
('  21301 ', '', '', 'debit ', NULL, NULL, '', 'RY', NULL, NULL, NULL),
('  21301 ', '', '', 'debit ', NULL, NULL, '0.07', 'RY', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mentenance`
--

CREATE TABLE `mentenance` (
  `Porid` int(11) NOT NULL,
  `Porgnum` int(11) NOT NULL,
  `dep` int(11) NOT NULL,
  `gruop` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mentenance`
--




-- --------------------------------------------------------

--
-- Table structure for table `OLDGLTRXTBL`
--

-- --------------------------------------------------------

--
-- Table structure for table `sbs__bookmark`
--

CREATE TABLE `sbs__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `TRANSACTION`
--

CREATE TABLE `TRANSACTION` (
  `TRAN_NUM` int(11) NOT NULL,
  `TRAN` int(6) NOT NULL,
  `TRANSACTION_date` date NOT NULL,
  `ACC_type` varchar(1) COLLATE utf8_bin NOT NULL,
  `TR_type` varchar(8) COLLATE utf8_bin NOT NULL,
  `AMOUNT` decimal(10,0) DEFAULT NULL,
  `TARGET_C` decimal(9,2) DEFAULT NULL,
  `TARGET_D` decimal(9,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `TRANSACTION`
--

INSERT INTO `TRANSACTION` (`TRAN_NUM`, `TRAN`, `TRANSACTION_date`, `ACC_type`, `TR_type`, `AMOUNT`, `TARGET_C`, `TARGET_D`) VALUES
(1, 1, '2022-01-18', '', '', '1', '2000002.00', NULL),
(20222, 2, '2022-01-18', 'C', 'Deposite', '0', '200002.00', NULL),
(20224, 3, '2022-01-18', 'A', 'Drowa', '0', NULL, '2212.00');

-- --------------------------------------------------------

--
-- Table structure for table `TrialAcc`
--

CREATE TABLE `TrialAcc` (
  `balance` double NOT NULL,
  `Gornal_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `TrialAcc`
--

INSERT INTO `TrialAcc` (`balance`, `Gornal_ID`) VALUES
(194000000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`TRAN_REF`);

--
-- Indexes for table `sbs__bookmark`
--
ALTER TABLE `sbs__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TRANSACTION`
--
ALTER TABLE `TRANSACTION`
  ADD PRIMARY KEY (`TRAN`),
  ADD UNIQUE KEY `TRAN_NUM` (`TRAN_NUM`),
  ADD KEY `HASACC` (`ACC_type`);

--
-- Indexes for table `TrialAcc`
--
ALTER TABLE `TrialAcc`
  ADD PRIMARY KEY (`Gornal_ID`),
  ADD KEY `balance` (`balance`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sbs__bookmark`
--
ALTER TABLE `sbs__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;