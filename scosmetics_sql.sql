-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 02:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scosmetics.sql`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `advanced night repair serum duo`
-- (See below for the actual view)
--
CREATE TABLE `advanced night repair serum duo` (
`productID` int(11)
,`productName` varchar(254)
,`description` varchar(254)
,`unitPrice` decimal(8,0)
,`quantityInStock` int(11)
,`image` varchar(254)
);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerCode` int(11) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `adress` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerCode`, `lastName`, `firstName`, `adress`, `phone`, `email`, `password`) VALUES
(1, 'Elkhourrib', 'Salma', 'tanger', '5407790834', 'salma@gmail.com', 'testtest'),
(2, 'aoulad amar', 'ahmed', 'biniakhrigal 3 n 30 street 4', '0616172117', 'aouladooumarahmed100@gmail.com', '123'),
(3, 'aoulad amar', 'ahmed', 'biniakhrigal 3 n 30 street 4', '0616172117', 'aouladooumarahmed100@gmail.com', '12345'),
(4, 'aoulad amar', 'ahmed', 'biniakhrigal 3 n 30 street 4', '0616172117', 'aouladooumarahmed100@gmail.comm', '1111'),
(5, 'aoulad amar', 'ahmed', 'biniakhrigal 3 n 30 street 4', '0616172117', 'aouladooumarahmed1050@gmail.comm', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `orderedQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerCode` int(11) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  `deliveryAddress` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productName` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `unitPrice` decimal(8,0) DEFAULT NULL,
  `quantityInStock` int(11) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `description`, `unitPrice`, `quantityInStock`, `image`) VALUES
(1, 'Micro Essence high protection\r\n\r\n', '5-piece collection including 1 full-size treatment lotion.\r\n', '120', 51, 'https://www.esteelauder.com/media/export/cms/products/640x640/el_sku_PTF201_640x640_0.jpg'),
(2, 'Advanced Night Repair Serum\r\n\r\n', 'Synchronized Multi-Recovery Complex', '180', 51, 'https://www.esteelauder.co.uk/media/export/cms/products/640x640/el_sku_PMG501_640x640_0.jpg'),
(3, 'Advanced Night Repair Eye ert t we\r\n', 'Supercharged eye gel rt retweet  RTL', '22', 200, 'https://m.esteelauder.com/media/export/cms/products/308x424/el_sku_P48201_308x424_0.jpg'),
(135213, 'loo dfg afgfgyhwsdrfgsdfgsdfg', ' lota argag agadfg dfgsdf', '12', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBH7B_F16CEGfKcV7DUqOKCeeIhyMXGEuj2w&usqp=CAU'),
(2135213, 'ahmred adfg dfg ', ' lootfg adfg fdg  yh rtyerty tyer ', '120', 51, 'https://s2.qwant.com/thumbr/0x380/7/a/bc2bdc722e12779dde8aee152d12936a78d5add1085ae15ea8cdab211b6759/aDxLsbQa.jpeg');

-- --------------------------------------------------------

--
-- Structure for view `advanced night repair serum duo`
--
DROP TABLE IF EXISTS `advanced night repair serum duo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `advanced night repair serum duo`  AS SELECT `products`.`productID` AS `productID`, `products`.`productName` AS `productName`, `products`.`description` AS `description`, `products`.`unitPrice` AS `unitPrice`, `products`.`quantityInStock` AS `quantityInStock`, `products`.`image` AS `image` FROM `products` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerCode`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `FK_commande_dans` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `FK_commander` (`customerCode`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_Contient` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `FK_commande_dans` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_commander` FOREIGN KEY (`customerCode`) REFERENCES `customers` (`customerCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
