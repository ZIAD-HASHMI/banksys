-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2023 at 07:47 PM
-- Server version: 5.7.34
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guosts`
--
CREATE DATABASE IF NOT EXISTS `guosts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `guosts`;

-- --------------------------------------------------------

--
-- Table structure for table `authoriz`
--

CREATE TABLE `authoriz` (
  `IDNTITY` varchar(9) DEFAULT NULL,
  `pro` int(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authoriz`
--

INSERT INTO `authoriz` (`IDNTITY`, `pro`) VALUES
('1001007', 1),
('1001007', 2),
('2431', 3),
('2431', 4),
('777943941', 5),
('777943941', 6),
('777943941', 7),
('1001007', 1),
('1001007', 2),
('2431', 3),
('2431', 4),
('777943941', 5),
('777943941', 6),
('777943941', 7),
('2431 ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Real_Pro`
--

CREATE TABLE `Real_Pro` (
  `PAGE_HREF` varchar(50) DEFAULT NULL,
  `pro` varchar(20) NOT NULL,
  `PRIVIL_VAL` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `IDNTITY` int(9) DEFAULT NULL,
  `PAGE_LINK` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Real_Pro`
--

INSERT INTO `Real_Pro` (`PAGE_HREF`, `pro`, `PRIVIL_VAL`, `email`, `IDNTITY`, `PAGE_LINK`) VALUES
('إضافة برنامج للمستخدمين ', '1', 'Y', 'ziad-ms@outlook.com ', 1001007, 'addprivileges.php '),
('نظام الموازنة العامة ', '2', 'Y', 'ziad-ms@outlook.com ', 1001007, 'addandmince.php '),
('قطاع العمليات المصرفيه ', '3', 'Y', 'z.alhashmi7@gmail.com ', 2431, 'gurnalentry.php '),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '4', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, 'z.alhashmi7@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'ziad-ms@outlook.com', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '1', NULL, 'utupback@gmail.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '7', NULL, 'ziad-ms@outlook.com ', NULL, NULL),
(NULL, '', NULL, '', NULL, NULL),
(NULL, '5', NULL, 'ziad-ms@outlook.com ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `IDNTITY` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Pro` varchar(20) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`IDNTITY`, `email`, `Pro`, `phone`, `timezone`, `country`) VALUES
('1001007', 'ziad-ms@outlook.com', NULL, NULL, NULL, NULL),
('2431', 'z.alhashmi7@gmail.com ', NULL, NULL, NULL, NULL),
('777943931', 'utupback@gmail.com ', NULL, NULL, NULL, NULL),
('733972546', 'ziad@southbank.net', NULL, NULL, '', NULL),
('02431746', 'ziad-ms@southbank.net', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TABLE `USER_PRIVILEGES` (
  `PAGE_HREF` varchar(50) DEFAULT NULL,
  `pro` int(11) NOT NULL,
  `PRIVIL_VAL` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `IDNTITY` int(9) DEFAULT NULL,
  `PAGE_LINK` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`PAGE_HREF`, `pro`, `PRIVIL_VAL`, `email`, `IDNTITY`, `PAGE_LINK`) VALUES
('إضافة برنامج للمستخدمين ', 1, 'Y', 'ziad-ms@outlook.com', 1001007, 'addprivileges.php '),
('نظام الموازنة العامة ', 2, 'Y', 'ziad-ms@outlook.com ', 1001007, 'addandmince.php '),
('نظام حركات النقد ', 3, '', 'z.alhashmi7@gmail.com', 2431, 'trsurpayment.php'),
('قطاع العمليات المصرفيه ', 4, 'Y', 'z.alhashmi7@gmail.com', 2431, 'budgetmen.php'),
('تحقيق حركات ', 5, 'Y', 'utupback@gmail.com ', 777943941, 'detactport.php'),
('إجراء قيد الأقفال ', 6, '', 'utupback@gmail.com ', 777943941, 'closing.php'),
('حركات ماليه', 7, '', 'utupback@gmail.com ', 777943941, 'gurnalentry.php '),
('استعلام رصيد موازنه', 8, '', 'z.alhashmi7@gmail.com ', 2431, 'EXPBB.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authoriz`
--
ALTER TABLE `authoriz`
  ADD KEY `IDNTITY` (`IDNTITY`),
  ADD KEY `pro` (`pro`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`IDNTITY`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `IDNTITY` (`IDNTITY`,`email`);

--
-- Indexes for table `USER_PRIVILEGES`
--
ALTER TABLE `USER_PRIVILEGES`
  ADD PRIMARY KEY (`pro`),
  ADD UNIQUE KEY `PAGE_HREF` (`PAGE_HREF`,`PAGE_LINK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `USER_PRIVILEGES`
--
ALTER TABLE `USER_PRIVILEGES`
  MODIFY `pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(8) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `class` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
--
-- Database: `pma`
--
CREATE DATABASE IF NOT EXISTS `pma` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pma`;
--
-- Database: `soutbbank`
--
CREATE DATABASE IF NOT EXISTS `soutbbank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `soutbbank`;

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
  `AMOUNT` decimal(9,2) NOT NULL,
  `LEDnm` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BGoV` int(2) NOT NULL,
  `BTYP` int(2) NOT NULL,
  `Boffice` int(2) NOT NULL,
  `BAccont` int(2) NOT NULL,
  `discrip` varchar(50) DEFAULT NULL,
  `ice` varchar(50) DEFAULT NULL,
  `BBD` int(1) DEFAULT NULL,
  `BBF` int(1) DEFAULT NULL,
  `balance` varchar(12) DEFAULT NULL,
  `tareekh` datetime DEFAULT NULL,
  `chakun` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BGoV`, `BTYP`, `Boffice`, `BAccont`, `discrip`, `ice`, `BBD`, `BBF`, `balance`, `tareekh`, `chakun`) VALUES
(8, 1, 1, 1, 'الضالع', 'مكتب المالية', 1, 1, '300', NULL, 0),
(1, 1, 1, 1, 'عدن', 'مكتب المالية', 1, 1, '300', NULL, 0),
(7, 1, 1, 1, 'المهرة', 'مكتب المالية', 2, 2, '359', NULL, 0),
(8, 1, 1, 4, 'الضالع', 'الداخليه', 1, 1, '333', NULL, 0),
(8, 50, 4, 1, 'الضالع', 'الواجبات', 0, 0, NULL, NULL, 0),
(8, 1, 3, 1, 'الضالع', 'التربية', 0, 0, NULL, NULL, 0),
(8, 1, 1, 3, 'الضالع', 'الضرائب ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 39, 'الضالع', 'الاشغال', 0, 0, NULL, NULL, 0),
(8, 1, 1, 40, 'الضالع', 'أسر الشهداء ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 7, 'الضالع', 'المحكمة ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 12, 'الضالع', 'الخدمة المدنية ', 0, 0, NULL, NULL, 0),
(5, 1, 1, 46, 'حضرموت', 'التعليم الفني', 0, 0, NULL, NULL, 0),
(5, 1, 1, 6, NULL, 'الصحة ', 1, 1, NULL, NULL, 0),
(8, 1, 1, 5, 'الضالع', 'الزراعة والري', 1, 1, NULL, NULL, 0),
(8, 1, 1, 38, 'الضالع', 'الإصلاح والسجون', 0, 0, NULL, NULL, 0),
(8, 1, 17, 46, 'الضالع', 'كلية المجتمع ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 19, 'الضالع', 'الصناعه والتجارة ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 20, 'الضالع', 'النقل ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 35, 'الضالع', 'الحفاظ على البيئة ', 0, 0, NULL, NULL, 0),
(4, 1, 2, 27, NULL, 'الادارة المحليه ', 0, 0, NULL, NULL, 0),
(1, 27, 1, 27, NULL, 'الادارة المحليه ', 2, 2, '333', NULL, 0),
(8, 1, 29, 1, NULL, 'م:الإحصاء ', NULL, NULL, NULL, NULL, 0),
(8, 1, 40, 1, NULL, 'م:الشهداء ', NULL, NULL, NULL, NULL, 0),
(8, 1, 54, 1, NULL, 'الآثار ', NULL, NULL, NULL, NULL, 0),
(8, 1, 69, 1, NULL, 'هيئة حماية البيئة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 90, 1, NULL, 'الأراضي والمساحة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 6, 11, NULL, 'معهد امين ناشر ', NULL, NULL, NULL, NULL, 0),
(8, 1, 3, 3, NULL, 'محو الامية', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 25, NULL, 'الرقابة والمحاسبة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 41, NULL, 'هيئة الكتاب ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 47, NULL, 'لجنة الانتخابات ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 16, NULL, 'الشباب', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 26, NULL, 'الثقافة', NULL, NULL, NULL, NULL, 0),
(8, 1, 50, 18, NULL, 'المغتربين', NULL, NULL, NULL, NULL, 0),
(8, 50, 17, 1, NULL, 'الشؤون القانونية', NULL, NULL, NULL, NULL, 0),
(8, 50, 22, 1, NULL, 'السياحة ', NULL, NULL, NULL, NULL, 0),
(8, 2, 1, 32, NULL, 'الاوقاف والإرشاد م الضالع', NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `LEDGAR`
--

CREATE TABLE `LEDGAR` (
  `Actnam` varchar(30) NOT NULL,
  `LEDnm` varchar(4) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `mentenance` (`Porid`, `Porgnum`, `dep`, `gruop`) VALUES
(1, 2, 2, 2),
(3, 3, 3, 3),
(5, 5, 5, 5),
(5, 5, 5, 3),
(5, 5, 5, 5),
(0, 5, 0, 0),
(0, 0, 0, 0),
(0, 0, 0, 0);

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
(1, 1, '2022-01-18', '', '', 1, 2000002.00, NULL),
(20222, 2, '2022-01-18', 'C', 'Deposite', 0, 200002.00, NULL),
(20224, 3, '2022-01-18', 'A', 'Drowa', 0, NULL, 2212.00);

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
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD KEY `balance` (`balance`),
  ADD KEY `chakun` (`chakun`);

--
-- Indexes for table `LEDGAR`
--
ALTER TABLE `LEDGAR`
  ADD PRIMARY KEY (`LEDnm`);

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
--
-- Database: `southbank`
--
CREATE DATABASE IF NOT EXISTS `southbank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `southbank`;

-- --------------------------------------------------------

--
-- Table structure for table `Accounts`
--

CREATE TABLE `Accounts` (
  `ACC_NUM` int(11) NOT NULL,
  `OPINING_DATE` date DEFAULT NULL,
  `TRAN_REF` int(6) DEFAULT NULL,
  `Balance` decimal(10,0) DEFAULT NULL,
  `Acc` varchar(1) DEFAULT NULL,
  `Account_name` char(50) DEFAULT NULL,
  `AMOUNT` decimal(9,2) DEFAULT NULL,
  `LEDnm` varchar(4) NOT NULL,
  `MONEY` varchar(3) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Accounts`
--

INSERT INTO `Accounts` (`ACC_NUM`, `OPINING_DATE`, `TRAN_REF`, `Balance`, `Acc`, `Account_name`, `AMOUNT`, `LEDnm`, `MONEY`) VALUES
(11101, '2023-08-18', NULL, 99997569, 'D', 'نقد في خزين', NULL, '1', '0'),
(4010704, '2023-08-25', NULL, NULL, NULL, 'ziad', NULL, '1001', '\n0'),
(11368, '2023-08-23', NULL, 2431, '', 'Payment', NULL, '', '0'),
(4010799, '2023-08-25', NULL, NULL, NULL, 'ziad', NULL, '1001', '\n0'),
(4010389, '2023-08-25', NULL, NULL, NULL, 'ziad', NULL, '1001', '\n0');

-- --------------------------------------------------------

--
-- Table structure for table `account_movement`
--

CREATE TABLE `account_movement` (
  `ACC_NUM` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `ACC_NUMC` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `Tran_DATE` datetime DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Acc` varchar(10) DEFAULT NULL,
  `Account_name` varchar(30) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `total_9001` varchar(11) DEFAULT NULL,
  `total_9002` varchar(11) DEFAULT NULL,
  `total_9003` varchar(10) DEFAULT NULL,
  `total_8001` varchar(11) DEFAULT NULL,
  `total_8002` varchar(11) DEFAULT NULL,
  `total_1001` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_movement`
--

INSERT INTO `account_movement` (`ACC_NUM`, `LEDnm`, `ACC_NUMC`, `LEDnmc`, `Tran_DATE`, `Balance`, `Acc`, `Account_name`, `Money`, `total_9001`, `total_9002`, `total_9003`, `total_8001`, `total_8002`, `total_1001`) VALUES
('4010389', '1001', '4010799', '1001', '2023-09-07 00:00:00', 6777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4010389', '1001', '4010799', '1001', '2023-09-07 00:00:00', 6777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4010389', '1001', '4010799', '1001', '2023-09-07 00:00:00', 6777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4010389', '1001', '4010799', '1001', '2023-09-07 00:00:00', 6777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11368', '1', '11101', '1', '2023-09-07 00:00:00', 2431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balancers`
--

CREATE TABLE `balancers` (
  `OPINING_DATE` date DEFAULT NULL,
  `TRAN_REF` int(6) DEFAULT NULL,
  `Acc` varchar(1) DEFAULT NULL,
  `Account_name` char(50) DEFAULT NULL,
  `AMOUNT` decimal(9,2) DEFAULT NULL,
  `LEDnm` varchar(4) NOT NULL,
  `balanced` int(11) DEFAULT NULL,
  `ACC_NUMB` varchar(11) DEFAULT NULL,
  `Bbd` char(1) DEFAULT NULL,
  `Bbf` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `balancers`
--

INSERT INTO `balancers` (`OPINING_DATE`, `TRAN_REF`, `Acc`, `Account_name`, `AMOUNT`, `LEDnm`, `balanced`, `ACC_NUMB`, `Bbd`, `Bbf`) VALUES
(NULL, NULL, NULL, NULL, NULL, '1', 99997569, '11101', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, '1001', 100000, '4010704', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, '', 2431, '11368', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, '1001', 100000, '4010799', NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, '1001', 100000, '4010389', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BGoV` int(2) NOT NULL,
  `BTYP` int(2) NOT NULL,
  `Boffice` int(2) NOT NULL,
  `BAccont` int(2) NOT NULL,
  `discrip` varchar(50) DEFAULT NULL,
  `ice` varchar(50) DEFAULT NULL,
  `BBD` int(1) DEFAULT NULL,
  `BBF` int(1) DEFAULT NULL,
  `balance` varchar(12) DEFAULT NULL,
  `tareekh` datetime DEFAULT NULL,
  `chakun` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BGoV`, `BTYP`, `Boffice`, `BAccont`, `discrip`, `ice`, `BBD`, `BBF`, `balance`, `tareekh`, `chakun`) VALUES
(8, 1, 1, 1, 'الضالع', 'مكتب المالية', 1, 1, '300', NULL, 0),
(1, 1, 1, 1, 'عدن', 'مكتب المالية', 1, 1, '300', NULL, 0),
(7, 1, 1, 1, 'المهرة', 'مكتب المالية', 2, 2, '359', NULL, 0),
(8, 1, 1, 4, 'الضالع', 'الداخليه', 1, 1, '333', NULL, 0),
(8, 50, 4, 1, 'الضالع', 'الواجبات', 0, 0, NULL, NULL, 0),
(22, 1, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, 3, 'الضالع', 'الضرائب ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 39, 'الضالع', 'الاشغال', 0, 0, NULL, NULL, 0),
(8, 1, 1, 40, 'الضالع', 'أسر الشهداء ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 7, 'الضالع', 'المحكمة ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 12, 'الضالع', 'الخدمة المدنية ', 0, 0, NULL, NULL, 0),
(5, 1, 1, 46, 'حضرموت', 'التعليم الفني', 0, 0, NULL, NULL, 0),
(5, 1, 1, 6, NULL, 'الصحة ', 1, 1, NULL, NULL, 0),
(8, 1, 1, 5, 'الضالع', 'الزراعة والري', 1, 1, NULL, NULL, 0),
(8, 1, 1, 38, 'الضالع', 'الإصلاح والسجون', 0, 0, NULL, NULL, 0),
(8, 1, 17, 46, 'الضالع', 'كلية المجتمع ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 19, 'الضالع', 'الصناعه والتجارة ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 20, 'الضالع', 'النقل ', 0, 0, NULL, NULL, 0),
(8, 1, 1, 35, 'الضالع', 'الحفاظ على البيئة ', 0, 0, NULL, NULL, 0),
(4, 1, 2, 27, NULL, 'الادارة المحليه ', 0, 0, NULL, NULL, 0),
(1, 27, 1, 27, NULL, 'الادارة المحليه ', 2, 2, '333', NULL, 0),
(8, 1, 29, 1, NULL, 'م:الإحصاء ', NULL, NULL, NULL, NULL, 0),
(8, 1, 40, 1, NULL, 'م:الشهداء ', NULL, NULL, NULL, NULL, 0),
(8, 1, 54, 1, NULL, 'الآثار ', NULL, NULL, NULL, NULL, 0),
(8, 1, 69, 1, NULL, 'هيئة حماية البيئة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 90, 1, NULL, 'الأراضي والمساحة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 6, 11, NULL, 'معهد امين ناشر ', NULL, NULL, NULL, NULL, 0),
(8, 1, 3, 3, NULL, 'محو الامية', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 25, NULL, 'الرقابة والمحاسبة ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 41, NULL, 'هيئة الكتاب ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 47, NULL, 'لجنة الانتخابات ', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 16, NULL, 'الشباب', NULL, NULL, NULL, NULL, 0),
(8, 1, 1, 26, NULL, 'الثقافة', NULL, NULL, NULL, NULL, 0),
(8, 1, 50, 18, NULL, 'المغتربين', NULL, NULL, NULL, NULL, 0),
(8, 50, 17, 1, NULL, 'الشؤون القانونية', NULL, NULL, NULL, NULL, 0),
(8, 50, 22, 1, NULL, 'السياحة ', NULL, NULL, NULL, NULL, 0),
(8, 2, 1, 32, NULL, 'الاوقاف والإرشاد م الضالع', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `budgetgornal`
--

CREATE TABLE `budgetgornal` (
  `BGoV` int(2) NOT NULL,
  `BTYP` int(2) NOT NULL,
  `Boffice` int(2) NOT NULL,
  `BAccont` int(2) NOT NULL,
  `discrip` varchar(50) DEFAULT NULL,
  `ice` varchar(50) DEFAULT NULL,
  `BBD` int(1) DEFAULT NULL,
  `BBF` int(1) DEFAULT NULL,
  `balance` varchar(12) DEFAULT NULL,
  `tareekh` datetime DEFAULT NULL,
  `chakun` int(3) DEFAULT NULL,
  `GiDG` int(4) NOT NULL,
  `Actnm` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `cruncy` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit` varchar(9) DEFAULT NULL,
  `crd` int(2) DEFAULT NULL,
  `IDNTITY` varchar(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chaku`
--

CREATE TABLE `chaku` (
  `LEDnm` char(4) DEFAULT NULL,
  `ACCNUM` varchar(9) DEFAULT NULL,
  `chakutype` char(10) DEFAULT NULL,
  `chakstart` char(9) DEFAULT NULL,
  `chakuend` char(9) DEFAULT NULL,
  `Bofficeb` char(2) DEFAULT NULL,
  `BAccontb` char(2) DEFAULT NULL,
  `BGOV` char(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cruncy`
--

CREATE TABLE `cruncy` (
  `LEDnm` varchar(4) NOT NULL,
  `cruncy` varchar(20) DEFAULT NULL,
  `cruncy_symble` varchar(1) DEFAULT NULL,
  `cruncy_digit` varchar(7) DEFAULT NULL,
  `crm` varchar(3) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cruncy`
--

INSERT INTO `cruncy` (`LEDnm`, `cruncy`, `cruncy_symble`, `cruncy_digit`, `crm`) VALUES
('1001', NULL, NULL, NULL, '0'),
('1', NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `dalytransiction`
--

CREATE TABLE `dalytransiction` (
  `GiDG` int(4) NOT NULL DEFAULT '0',
  `Actnm` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `cruncy` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit` varchar(9) DEFAULT NULL,
  `crd` int(2) DEFAULT NULL,
  `IDNTITY` varchar(9) DEFAULT NULL,
  `BGoV` int(2) NOT NULL,
  `BTYP` int(2) NOT NULL,
  `Boffice` int(2) NOT NULL,
  `BAccont` int(2) NOT NULL,
  `discrip` varchar(50) DEFAULT NULL,
  `ice` varchar(50) DEFAULT NULL,
  `BBD` int(1) DEFAULT NULL,
  `BBF` int(1) DEFAULT NULL,
  `balance` varchar(12) DEFAULT NULL,
  `tareekh` datetime DEFAULT NULL,
  `chakun` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dela_close`
--

CREATE TABLE `dela_close` (
  `ACC_NUM` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `ACC_NUMC` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `Tran_DATE` datetime DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Acc` varchar(10) DEFAULT NULL,
  `Account_name` varchar(30) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `total_9001` varchar(11) DEFAULT NULL,
  `total_9002` varchar(11) DEFAULT NULL,
  `total_9003` varchar(10) DEFAULT NULL,
  `total_8001` varchar(11) DEFAULT NULL,
  `total_8002` varchar(11) DEFAULT NULL,
  `total_1001` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `sequn` int(8) NOT NULL,
  `employe_nams` varchar(40) DEFAULT NULL,
  `employe_cert` varchar(40) DEFAULT NULL,
  `employe_sepiatity` varchar(40) DEFAULT NULL,
  `employe_department` varchar(40) DEFAULT NULL,
  `employe_address` varchar(40) DEFAULT NULL,
  `employe_age` varchar(40) DEFAULT NULL,
  `employe_date` date DEFAULT NULL,
  `employe_img` blob,
  `employe_qrar` varchar(40) DEFAULT NULL,
  `employe_bankacc` int(7) DEFAULT NULL,
  `employe_LEDnm` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Gornal`
--

CREATE TABLE `Gornal` (
  `GiDG` int(4) NOT NULL,
  `Actnm` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `cruncy` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit` varchar(9) DEFAULT NULL,
  ` IDNTITY` varchar(9) DEFAULT NULL,
  `crd` int(2) DEFAULT NULL,
  `IDNTITY` varchar(9) DEFAULT NULL,
  `IDNTITYDTV` int(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Gornal`
--

INSERT INTO `Gornal` (`GiDG`, `Actnm`, `LEDnm`, `wasf`, `Actnmc`, `LEDnmc`, `TRANSACTION_date`, `cruncy`, `AC_Cridet`, `Debit`, ` IDNTITY`, `crd`, `IDNTITY`, `IDNTITYDTV`) VALUES
(1, '110113', '3', 'ayx', ' 41142', '2', NULL, '0', '10', '10', NULL, NULL, '1001007', NULL),
(11, '4010389', '1001', 'TRANSICION FROM A to B', '4010704', '1001', '2023-09-07 09:44:20', '', '100000000', '100000000', NULL, NULL, '777943941', NULL),
(3, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', NULL),
(4, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', 777943941),
(5, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', NULL),
(6, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', NULL),
(7, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', 777943941),
(8, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', NULL),
(9, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, NULL, '1001007', NULL),
(10, '4010389', '1001', 'TRANSICION FROM A to B', '4010704', '1001', '2023-09-07 09:44:20', '', '100000000', '100000000', NULL, NULL, '777943941', 777943941),
(12, '4010799', '1001', 'TRANSICION FROM A to B', '4010704', '1001', '2023-09-07 09:56:18', '', '100000000', '100000000', NULL, NULL, '777943941', NULL),
(13, '4010704', '1001', 'TRANSICION FROM A to B', '4010799', '1001', '2023-09-07 10:03:54', '', '2431 ', '2431 ', NULL, NULL, '777943941', NULL),
(14, '4010704', '1001', 'TRANSICION FROM A to B', '4010799', '1001', '2023-09-07 10:03:54', '', '2431 ', '2431 ', NULL, NULL, '777943941', NULL),
(15, '4010389', '1001', 'TRANSICION FROM A to B', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, NULL, '777943941', NULL),
(16, '4010389', '1001', 'Z.alhashmi7@gmail.com ', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, NULL, '777943941', NULL),
(17, '4010389', '1001', '', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, NULL, '777943941', NULL),
(18, '11368', '1', 'TRANSICION FROM A to B', '11101', '1', '2023-09-07 10:25:01', '', '2431 ', '2431 ', NULL, NULL, '777943941', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Gornaltmp`
--

CREATE TABLE `Gornaltmp` (
  `GiDG` int(4) NOT NULL,
  `Actnm` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `cruncy` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit` varchar(9) DEFAULT NULL,
  `crd` int(2) DEFAULT NULL,
  `IDNTITY` varchar(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Gornaltmp`
--

INSERT INTO `Gornaltmp` (`GiDG`, `Actnm`, `LEDnm`, `wasf`, `Actnmc`, `LEDnmc`, `TRANSACTION_date`, `cruncy`, `AC_Cridet`, `Debit`, `crd`, `IDNTITY`) VALUES
(9, '11368', '1', 'TRANSICION FROM A to B', '11101', '1', '2023-09-07 10:25:01', '', '2431 ', '2431 ', NULL, '777943941'),
(10, '11368', '1', 'TRANSICION FROM A to B', '11101', '1', '2023-09-07 10:25:01', '', '2431 ', '2431 ', NULL, '777943941');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `Code` text NOT NULL,
  `Speakers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`Code`, `Speakers`) VALUES
('DE', 50123456),
('FR', 40546321),
('PL', 30555444),
('DK', 5222444),
('DE', 50123456),
('FR', 40546321),
('DE', 50123456),
('FR', 40546321),
('1001007', 2431),
('FR', 40546321),
('PL', 30555444),
('DK', 5222444),
('1001007', 2431),
('FR', 40546321),
('PL', 30555444),
('DK', 5222444),
('1001007', 2431),
('FR', 40546321),
('PL', 30555444),
('DK', 5222444),
('2431 ', 2431),
('FR', 40546321),
('PL', 30555444),
('DK', 5222444),
('2431 ', 2431),
('FR', 40546321),
('PL', 30555444),
('', 5222444),
('2431 ', 2431),
('FR', 40546321),
('1001007', 2431),
('FR', 40546321),
('1001007', 4578),
('FR', 40546321),
('1001007', 4578),
('FR', 40546321),
('1001007', 2431),
('FR', 40546321),
('2431 ', 2431),
('FR', 40546321),
('2431 ', 2431),
('FR', 40546321),
('2431 ', 2431),
('FR', 40546321),
('1001007', 2431),
('FR', 40546321),
('2431 ', 2431),
('FR', 40546321),
('PL', 30555444),
('', 5222444),
('2431 ', 2431),
('FR', 40546321),
('PL', 30555444),
('', 5222444);

-- --------------------------------------------------------

--
-- Table structure for table `LEDGAR`
--

CREATE TABLE `LEDGAR` (
  `Actnam` varchar(30) NOT NULL,
  `LEDnm` varchar(4) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LEDGAR`
--

INSERT INTO `LEDGAR` (`Actnam`, `LEDnm`, `Balance`) VALUES
('نقد في خزين', '1', 100000000);

-- --------------------------------------------------------

--
-- Table structure for table `linksAcc`
--

CREATE TABLE `linksAcc` (
  `BGoV` varchar(2) DEFAULT NULL,
  `BTYP` varchar(2) DEFAULT NULL,
  `Boffice` varchar(3) DEFAULT NULL,
  `BAccont` varchar(4) DEFAULT NULL,
  `ACC_NUM` varchar(11) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mbs`
--

CREATE TABLE `mbs` (
  `ACC_NUM` int(11) NOT NULL DEFAULT '0',
  `OPINING_DATE` date DEFAULT NULL,
  `TRAN_REF` int(6) DEFAULT '0',
  `Balance` decimal(10,0) NOT NULL DEFAULT '0',
  `Acc` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Account_name` char(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `AMOUNT` decimal(9,2) DEFAULT '0.00',
  `MONEY` varchar(3) DEFAULT '0',
  `Account_number` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Account_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Account_status` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Mount` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `urr` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Cridet` double DEFAULT NULL,
  `Debit` double DEFAULT NULL,
  `BGoV` int(2) DEFAULT '0',
  `BTYP` int(2) DEFAULT '0',
  `Boffice` int(2) DEFAULT '0',
  `BAccont` int(2) DEFAULT '0',
  `discrip` varchar(50) DEFAULT NULL,
  `ice` varchar(50) DEFAULT NULL,
  `BBD` int(1) DEFAULT NULL,
  `BBF` int(1) DEFAULT NULL,
  `balance2` varchar(12) DEFAULT NULL,
  `tareekh` datetime DEFAULT NULL,
  `chakun` int(3) DEFAULT NULL,
  `pro` varchar(20) DEFAULT NULL,
  `PRIVIL_VAL4` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `IDNTITY` int(9) DEFAULT NULL,
  `PAGE_LINK` varchar(50) DEFAULT NULL,
  `PAGE_HREF` varchar(50) DEFAULT NULL,
  `pro2` varchar(20) DEFAULT NULL,
  `PRIVIL_VAL3` char(1) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `IDNTITY1` int(9) DEFAULT NULL,
  `PAGE_LINK2` varchar(50) DEFAULT NULL,
  `Actnam` varchar(30) DEFAULT '0',
  `LEDnm` varchar(4) DEFAULT '0',
  `ACC_NUMB` varchar(11) DEFAULT NULL,
  `ACC_NUMC` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `Tran_DATE` datetime DEFAULT NULL,
  `total_9001` varchar(11) DEFAULT NULL,
  `total_9002` varchar(11) DEFAULT NULL,
  `total_9003` varchar(10) DEFAULT NULL,
  `total_8001` varchar(11) DEFAULT NULL,
  `total_8002` varchar(11) DEFAULT NULL,
  `total_1001` varchar(11) DEFAULT NULL,
  `GiDG` int(4) DEFAULT '0',
  `Actnm` varchar(9) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit2` varchar(9) DEFAULT NULL,
  `IDNTITY3` varchar(9) DEFAULT NULL,
  `class_vication` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbs`
--

INSERT INTO `mbs` (`ACC_NUM`, `OPINING_DATE`, `TRAN_REF`, `Balance`, `Acc`, `Account_name`, `AMOUNT`, `MONEY`, `Account_number`, `Account_type`, `Account_status`, `user_id`, `Mount`, `urr`, `Cridet`, `Debit`, `BGoV`, `BTYP`, `Boffice`, `BAccont`, `discrip`, `ice`, `BBD`, `BBF`, `balance2`, `tareekh`, `chakun`, `pro`, `PRIVIL_VAL4`, `email`, `IDNTITY`, `PAGE_LINK`, `PAGE_HREF`, `pro2`, `PRIVIL_VAL3`, `email1`, `IDNTITY1`, `PAGE_LINK2`, `Actnam`, `LEDnm`, `ACC_NUMB`, `ACC_NUMC`, `LEDnmc`, `Tran_DATE`, `total_9001`, `total_9002`, `total_9003`, `total_8001`, `total_8002`, `total_1001`, `GiDG`, `Actnm`, `wasf`, `Actnmc`, `TRANSACTION_date`, `currency`, `AC_Cridet`, `Debit2`, `IDNTITY3`, `class_vication`) VALUES
(11220, '2023-08-25', 0, 1, '', 'A', 0.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(0, NULL, 0, 0, NULL, '0', 0.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21989, '2023-08-27', 0, 0, '', 'Payment', 0.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(0, NULL, 0, 2, NULL, '0', 0.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '111101', '2', ' 222201', '2023-08-27 10:06:59', '0', '1', NULL, NULL, 199);

-- --------------------------------------------------------

--
-- Table structure for table `PRV_Gor_TMP`
--

CREATE TABLE `PRV_Gor_TMP` (
  `GiDG` int(4) NOT NULL,
  `Actnm` varchar(9) DEFAULT NULL,
  `LEDnm` varchar(4) DEFAULT NULL,
  `wasf` varchar(100) DEFAULT NULL,
  `Actnmc` varchar(9) DEFAULT NULL,
  `LEDnmc` varchar(4) DEFAULT NULL,
  `TRANSACTION_date` varchar(30) DEFAULT NULL,
  `cruncy` varchar(4) DEFAULT NULL,
  `AC_Cridet` varchar(9) DEFAULT NULL,
  `Debit` varchar(9) DEFAULT NULL,
  `crd` int(2) DEFAULT NULL,
  `IDNTITY` varchar(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PRV_Gor_TMP`
--

INSERT INTO `PRV_Gor_TMP` (`GiDG`, `Actnm`, `LEDnm`, `wasf`, `Actnmc`, `LEDnmc`, `TRANSACTION_date`, `cruncy`, `AC_Cridet`, `Debit`, `crd`, `IDNTITY`) VALUES
(1, '4010704', '1001', 'TRANSICION FROM USER_OBJECTS ', '4010389', '1001', '2023-09-06 11:02:47', '', '2431 ', '2431 ', NULL, '1001007'),
(2, '4010389', '1001', 'TRANSICION FROM A to B', '4010704', '1001', '2023-09-07 09:44:20', '', '100000000', '100000000', NULL, '777943941'),
(3, '4010799', '1001', 'TRANSICION FROM A to B', '4010704', '1001', '2023-09-07 09:56:18', '', '100000000', '100000000', NULL, '777943941'),
(4, '4010704', '1001', 'TRANSICION FROM A to B', '4010799', '1001', '2023-09-07 10:03:54', '', '2431 ', '2431 ', NULL, '777943941'),
(5, '4010389', '1001', 'Z.alhashmi7@gmail.com ', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, '777943941'),
(6, '4010389', '1001', 'TRANSICION FROM A to B', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, '777943941'),
(7, '4010389', '1001', '', '4010799', '1001', '2023-09-07 10:11:54', '', '6777', '6777', NULL, '777943941'),
(8, '11368', '1', 'TRANSICION FROM A to B', '11101', '1', '2023-09-07 10:25:01', '', '2431 ', '2431 ', NULL, '777943941');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `TrialAcc`
--

CREATE TABLE `TrialAcc` (
  `Account_nameT` varchar(30) DEFAULT NULL,
  `acc_Credit` int(11) DEFAULT NULL,
  `acc_Dibet` int(11) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `ACC_NUMT` int(11) DEFAULT '0',
  `Acc` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TrialAcc`
--

INSERT INTO `TrialAcc` (`Account_nameT`, `acc_Credit`, `acc_Dibet`, `Balance`, `ACC_NUMT`, `Acc`) VALUES
('نقد في خزين', 100000000, 100000000, NULL, 11101, ''),
('ziad', NULL, 100000000, NULL, 4010704, ''),
('Payment', 0, 100000000, NULL, 11368, ''),
('ziad', NULL, 100000000, NULL, 4010799, ''),
('ziad', NULL, 100000000, NULL, 4010389, ''),
('نقد في خزين', 99997569, 99997569, NULL, 11101, ''),
('ziad', NULL, 99997569, NULL, 4010704, ''),
('Payment', 2431, 99997569, NULL, 11368, ''),
('ziad', NULL, 99997569, NULL, 4010799, ''),
('ziad', NULL, 99997569, NULL, 4010389, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`ACC_NUM`),
  ADD KEY `MONEY` (`MONEY`),
  ADD KEY `LEDnm` (`LEDnm`),
  ADD KEY `LEDnm_2` (`LEDnm`);

--
-- Indexes for table `account_movement`
--
ALTER TABLE `account_movement`
  ADD KEY `LEDnm` (`LEDnm`),
  ADD KEY `LEDnmc` (`LEDnmc`);

--
-- Indexes for table `chaku`
--
ALTER TABLE `chaku`
  ADD KEY `LEDnm` (`LEDnm`),
  ADD KEY `BAccontb` (`BAccontb`),
  ADD KEY `ACCNUM` (`ACCNUM`);

--
-- Indexes for table `cruncy`
--
ALTER TABLE `cruncy`
  ADD PRIMARY KEY (`LEDnm`),
  ADD KEY `crm` (`crm`),
  ADD KEY `crm_2` (`crm`),
  ADD KEY `crm_3` (`crm`),
  ADD KEY `crm_4` (`crm`),
  ADD KEY `crm_5` (`crm`),
  ADD KEY `crm_6` (`crm`),
  ADD KEY `crm_7` (`crm`),
  ADD KEY `crm_8` (`crm`);

--
-- Indexes for table `dela_close`
--
ALTER TABLE `dela_close`
  ADD KEY `LEDnmc` (`LEDnmc`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`sequn`);

--
-- Indexes for table `Gornal`
--
ALTER TABLE `Gornal`
  ADD PRIMARY KEY (`GiDG`),
  ADD KEY `LEDnm` (`LEDnm`),
  ADD KEY `LEDnmc` (`LEDnmc`);

--
-- Indexes for table `Gornaltmp`
--
ALTER TABLE `Gornaltmp`
  ADD PRIMARY KEY (`GiDG`);

--
-- Indexes for table `LEDGAR`
--
ALTER TABLE `LEDGAR`
  ADD PRIMARY KEY (`LEDnm`);

--
-- Indexes for table `linksAcc`
--
ALTER TABLE `linksAcc`
  ADD KEY `LEDnm` (`LEDnm`);

--
-- Indexes for table `mbs`
--
ALTER TABLE `mbs`
  ADD PRIMARY KEY (`ACC_NUM`,`Balance`),
  ADD KEY `LEDnm` (`LEDnm`);

--
-- Indexes for table `PRV_Gor_TMP`
--
ALTER TABLE `PRV_Gor_TMP`
  ADD PRIMARY KEY (`GiDG`);

--
-- Indexes for table `TrialAcc`
--
ALTER TABLE `TrialAcc`
  ADD KEY `ACC_NUMT` (`ACC_NUMT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `sequn` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Gornal`
--
ALTER TABLE `Gornal`
  MODIFY `GiDG` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Gornaltmp`
--
ALTER TABLE `Gornaltmp`
  MODIFY `GiDG` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PRV_Gor_TMP`
--
ALTER TABLE `PRV_Gor_TMP`
  MODIFY `GiDG` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;