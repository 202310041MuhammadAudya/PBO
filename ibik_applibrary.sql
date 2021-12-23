-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 01:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibik_applibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `NIK` varchar(10) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `PlaceBirth` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Address` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CreatedBy` varchar(20) NOT NULL,
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdatedBy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NIK`, `Fullname`, `PlaceBirth`, `BirthDate`, `Gender`, `Address`, `Email`, `Password`, `CreatedAt`, `CreatedBy`, `UpdatedAt`, `UpdatedBy`) VALUES
(202310041, '3271060607', 'Muhammad Audya Fadhlurrohman', 'Bogor', '2001-07-06', 'Male', 'Kp. Kebon Rumpur No.24 RT 004 RW 006', 'milesmorales394@gmail.com', '12345', '2021-12-22 10:19:51', 'Audy', '2021-12-22 10:19:51', 'Audy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NIK` (`NIK`),
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
