-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2018 at 06:33 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book2hand`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Name` varchar(40) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Birthday` varchar(10) NOT NULL,
  `Notification` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Name`, `Username`, `Password`, `Address`, `Email`, `Phone`, `Birthday`, `Notification`) VALUES
('ASD', 'ooad', '281', '@@@@@', 'sadowongsaran@gmail.com', '9090909090', '10', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `likepd`
--

CREATE TABLE `likepd` (
  `ProductID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likepd`
--

INSERT INTO `likepd` (`ProductID`, `Username`) VALUES
(0, 'ooad');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `PricePerUnit` double NOT NULL,
  `Stock` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Tag1` varchar(10) NOT NULL,
  `Tag2` varchar(10) NOT NULL,
  `Tag3` varchar(10) NOT NULL,
  `ThaiPostRegisteredMail` int(11) DEFAULT NULL,
  `ThaiPostEMS` int(11) DEFAULT NULL,
  `Kerry` int(11) DEFAULT NULL,
  `OtherDelivery` varchar(20) DEFAULT NULL,
  `OtherDeliveryPrice` int(11) DEFAULT NULL,
  `ImageLink` varchar(100) DEFAULT NULL,
  `Seller` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `PricePerUnit`, `Stock`, `Description`, `Tag1`, `Tag2`, `Tag3`, `ThaiPostRegisteredMail`, `ThaiPostEMS`, `Kerry`, `OtherDelivery`, `OtherDeliveryPrice`, `ImageLink`, `Seller`) VALUES
(0, 'Gintama', 60, 1, ' Gintama', 'manga', 'None', 'None', 50, 70, NULL, NULL, NULL, 'upload/à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸”à¸±à¸¡à¸¡à¸µà¹ˆ_1.jpg', 'ooad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `likepd`
--
ALTER TABLE `likepd`
  ADD PRIMARY KEY (`ProductID`,`Username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
