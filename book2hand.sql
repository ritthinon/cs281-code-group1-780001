-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 03:03 PM
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
  `Name` varchar(40) COLLATE utf8_thai_520_w2 NOT NULL,
  `Username` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL,
  `Password` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL,
  `Address` varchar(100) COLLATE utf8_thai_520_w2 NOT NULL,
  `Email` varchar(40) CHARACTER SET latin1 NOT NULL,
  `Phone` varchar(10) CHARACTER SET latin1 NOT NULL,
  `Notification` varchar(3) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Name`, `Username`, `Password`, `Address`, `Email`, `Phone`, `Notification`) VALUES
('sad', 'ooad', '281', 'asdadadasdsad', 'a@gmail.com', '0987654321', 'No'),
('zoda', 'ooda', '281', 'balasd;amd', 'ooad@hotmail.com', '0805978013', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `username` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL,
  `pID` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Name`) VALUES
(0, 'None'),
(1, 'นิยายแฟนตาซี'),
(2, 'นิยายสยองขวัญ'),
(3, 'นิยายโรแมนติก'),
(4, 'นิยายวาย'),
(5, 'นิยายแปล'),
(6, 'นิยายจีนกำลังภายใน'),
(7, 'นิยายสืบสวน ผจญภัย'),
(8, 'นิยายอิงประวัติศาสตร์'),
(9, 'นิยายวิทยาศาสคร์'),
(10, 'นิยายอื่นๆ'),
(11, 'การ์ตูนความรู้'),
(12, 'manga'),
(13, 'comic'),
(14, 'การ์ตูนอื่นๆ'),
(15, 'Light Novels'),
(16, 'หนังสือเด็ก'),
(17, 'ความรู้ทั่วไป'),
(18, 'จิตวิทยา'),
(19, 'ท่องเที่ยว'),
(20, 'วรรณกรรมเยาวชน'),
(21, 'ประวัติศาสตร์-วัฒนธรรม'),
(22, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `likepd`
--

CREATE TABLE `likepd` (
  `ProductID` int(11) NOT NULL,
  `Username` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(20) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `PricePerUnit` double NOT NULL,
  `Stock` int(11) NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Tag1` int(11) NOT NULL,
  `Tag2` int(11) NOT NULL,
  `Tag3` int(11) NOT NULL,
  `ImageLink` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 DEFAULT NULL,
  `Seller` varchar(20) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `Discount` int(10) NOT NULL,
  `SentFreePrice` int(10) NOT NULL,
  `Detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL,
  `ProductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL,
  `pStatus` tinyint(1) NOT NULL,
  `sDate` date NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `netPrice` int(11) NOT NULL,
  `shippingPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `ProductID` int(11) NOT NULL,
  `ShippingName` varchar(30) NOT NULL,
  `ShippingPrice` int(10) NOT NULL,
  `Seller` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `ProductID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `SDate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tranfer`
--

CREATE TABLE `tranfer` (
  `Name` varchar(40) COLLATE utf8_thai_520_w2 NOT NULL,
  `Address` varchar(100) COLLATE utf8_thai_520_w2 NOT NULL,
  `PostCode` varchar(5) COLLATE utf8_thai_520_w2 NOT NULL,
  `Username` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`username`,`pID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

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

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`ProductID`,`ShippingName`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`ProductID`,`Username`);

--
-- Indexes for table `tranfer`
--
ALTER TABLE `tranfer`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
