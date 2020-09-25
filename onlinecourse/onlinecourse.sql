-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 07:28 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'Core PHP', '1-5', 10, '2017-02-11 17:39:10', '21-05-2018 03:33:37 PM'),
(2, 'WP01', 'Wordpress', '1-6', 1, '2017-02-11 17:52:25', '12-02-2017 12:23:35 AM'),
(4, 'MYSQL23', 'MYSQL', '1-8', 20, '2017-02-11 18:47:25', '25-08-2018 11:20:22 AM'),
(5, 'CSE2003', 'Internet and Web Programming', '1-5', 20, '2019-09-04 14:25:32', NULL),
(6, 'cse3002', 'php', '10', 30, '2019-11-08 03:16:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2018-08-25 05:52:34'),
(6, '10806121', '715948', 4, 7, 5, 5, 1, '2019-09-04 09:55:11'),
(7, '17BCE2345', '', 4, 7, 7, 4, 1, '2019-11-07 17:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Account', '2017-02-09 18:52:00'),
(2, 'HR', '2017-02-09 18:52:04'),
(3, 'Admin', '2017-02-09 18:52:08'),
(7, 'IT', '2018-05-21 10:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(4, 'Second sem', '2017-02-09 18:47:59', ''),
(5, 'Third Sem', '2017-02-09 18:48:04', ''),
(6, 'Fourth Sem', '2018-05-21 10:02:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2015', '2017-02-09 18:16:51'),
(2, '2016', '2017-02-09 18:27:41'),
(3, '2017', '2018-05-21 10:01:54'),
(4, '2018', '2018-05-21 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('102030', 'logo.jpg', 'f925916e2754e5e03f75dd58a5733251', 'Anuj Kumar', '715948', '', '', '', '7.25', '2017-02-11 19:38:32', '04-09-2019 03:24:04 PM'),
('10806121', NULL, 'Test@123', 'John', '131863', '', '', '', '0.00', '2018-08-25 05:50:51', ''),
('125966', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 19:48:03', ''),
('17BCE2345', 'IMG20180217231116.jpg', 'qwerty', 'Tek Raj Awasthi', NULL, NULL, NULL, NULL, '8.50', '2019-10-25 13:28:26', NULL),
('17BCE2346', NULL, 'qwerty123', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL),
('17BCE2383', NULL, 'qwerty', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08 02:52:56', NULL),
('17BCI0030', NULL, 'aarush', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08 02:53:33', NULL),
('admin', NULL, 'f925916e2754e5e03f75dd58a5733251', 'john', '695095', NULL, NULL, NULL, NULL, '2019-10-25 16:41:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:05:58', '', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:07:18', '', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:08:46', '', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:26:15', '', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:27:11', '', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:28:19', '', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:29:30', '', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 05:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:05', '', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 09:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 10:19:15', '', 1),
(16, '12345', 0x3a3a3100000000000000000000000000, '2018-08-25 05:51:42', '25-08-2018 11:23:02 AM', 1),
(17, '10806121', 0x3a3a3100000000000000000000000000, '2019-09-04 09:53:07', NULL, 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2019-09-04 09:56:12', '04-09-2019 05:42:17 PM', 1),
(19, 'admin', 0x3a3a3100000000000000000000000000, '2019-11-03 12:26:25', NULL, 1),
(20, 'admin', 0x3a3a3100000000000000000000000000, '2019-11-03 12:26:31', NULL, 1),
(21, 'ahdshd', 0x3a3a3100000000000000000000000000, '2019-11-03 12:26:51', NULL, 1),
(22, 'admin', 0x3a3a3100000000000000000000000000, '2019-11-04 18:03:22', NULL, 1),
(23, '10806121', 0x3a3a3100000000000000000000000000, '2019-11-04 18:06:03', NULL, 1),
(24, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 15:54:35', NULL, 1),
(25, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 15:55:56', NULL, 1),
(26, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 15:57:31', NULL, 1),
(27, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 15:57:43', NULL, 1),
(28, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 15:58:43', '07-11-2019 10:51:15 PM', 1),
(29, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 17:21:59', NULL, 1),
(30, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 17:23:09', '07-11-2019 10:58:11 PM', 1),
(31, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-07 21:52:15', '08-11-2019 03:22:26 AM', 1),
(32, '17BCI0030', 0x3a3a3100000000000000000000000000, '2019-11-08 02:53:57', '08-11-2019 08:28:11 AM', 1),
(33, '17BCI0030', 0x3a3a3100000000000000000000000000, '2019-11-08 02:58:42', '08-11-2019 08:39:10 AM', 1),
(34, '17BCI0030', 0x3a3a3100000000000000000000000000, '2019-11-08 03:15:06', '08-11-2019 08:45:28 AM', 1),
(35, '17BCE2345', 0x3a3a3100000000000000000000000000, '2019-11-08 16:24:19', NULL, 1),
(36, '17BCE2345', 0x3a3a3100000000000000000000000000, '2020-01-26 04:22:55', NULL, 1),
(37, '17BCE2345', 0x3a3a3100000000000000000000000000, '2020-01-26 04:22:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `username`, `password`, `cpassword`, `email`) VALUES
('123', 'adhi', 'adhi', 'adhi', 'adhi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
