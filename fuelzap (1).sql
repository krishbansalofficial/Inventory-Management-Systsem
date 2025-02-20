-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 03:40 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuelzap`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `total_bill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_id`, `pid`, `pname`, `qty`, `total_bill`) VALUES
(1, '5001', '1002', '1002', '2', '390'),
(2, '5001', '1003', '1003', '3', '390'),
(3, '', '1001', 'Burger', '2', '300'),
(4, '', '1003', 'Fries', '2', '300'),
(5, '', '1002', 'Pizza', '2', '240');

-- --------------------------------------------------------

--
-- Table structure for table `stockinventory`
--

CREATE TABLE `stockinventory` (
  `Product_Id` varchar(50) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Product_price` varchar(50) NOT NULL,
  `Product_stock` varchar(50) NOT NULL,
  `DOM` varchar(50) NOT NULL,
  `DOE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockinventory`
--

INSERT INTO `stockinventory` (`Product_Id`, `Product_name`, `Product_price`, `Product_stock`, `DOM`, `DOE`) VALUES
('1001', 'Burger', '100', '8', '08-06-2022', '16-06-2022'),
('1002', 'Pizza', '120', '103', '10-11-2022', '12-11-2022'),
('1003', 'Fries', '50', '8', '23-02-2023', '23-03-2023'),
('1004', 'Cake', '100', '40', '02-03-2023', '23-03-2023'),
('1005', 'Icecream', '35', '35', '02-03-2023', '16-03-2023');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`username`, `password`, `first_name`, `last_name`, `designation`, `contact_number`, `email_address`, `gender`, `Address`) VALUES
('admin', 'admin', 'krish', 'b', 'Manager', '9784799825', 'abc@gmail.com', 'Male', 'india,asia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockinventory`
--
ALTER TABLE `stockinventory`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
