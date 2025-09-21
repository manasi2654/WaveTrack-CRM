-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 08:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_r_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `coid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `complaint_title` varchar(120) NOT NULL,
  `complaint_details` varchar(120) NOT NULL,
  `complaint_contact` varchar(12) NOT NULL,
  `complaint_address` varchar(120) NOT NULL,
  `complaint_date` date NOT NULL,
  `complaint_time` time(6) NOT NULL,
  `complaint_status` varchar(120) NOT NULL,
  `servicecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`coid`, `cid`, `sid`, `complaint_title`, `complaint_details`, `complaint_contact`, `complaint_address`, `complaint_date`, `complaint_time`, `complaint_status`, `servicecode`) VALUES
(11, 5, 4, 'router', 'we want to fix router at our home', '983232125', 'shirpur', '2024-07-16', '10:00:00.000000', 'solved', 6522),
(12, 5, 4, 'connection', 'loose connection of router', '983232125', 'shirpur', '2024-01-23', '10:00:00.000000', 'solved', 4177),
(13, 5, 0, 'connection', 'loose connection of router', '983232125', 'dhule', '2024-07-23', '23:35:00.000000', 'Unsolved', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(20) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `customer_contact` varchar(12) NOT NULL,
  `customer_address` varchar(120) NOT NULL,
  `customer_pincode` int(10) NOT NULL,
  `customer_email` varchar(20) NOT NULL,
  `customer_pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `customer_contact`, `customer_address`, `customer_pincode`, `customer_email`, `customer_pass`) VALUES
(5, 'Mayuri patil', '9623482345', 'Shirpur', 425405, 'mayuri@26', '123'),
(6, 'tanmay@26', '9821346543', 'dhule', 425405, 'tanmay@26', '123');

-- --------------------------------------------------------

--
-- Table structure for table `serviceman`
--

CREATE TABLE `serviceman` (
  `sid` int(5) NOT NULL,
  `serviceman_name` varchar(25) NOT NULL,
  `serviceman_designation` varchar(120) NOT NULL,
  `serviceman_department` varchar(120) NOT NULL,
  `serviceman_pincode` int(6) NOT NULL,
  `serviceman_contact` varchar(15) NOT NULL,
  `serviceman_email` varchar(120) NOT NULL,
  `serviceman_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceman`
--

INSERT INTO `serviceman` (`sid`, `serviceman_name`, `serviceman_designation`, `serviceman_department`, `serviceman_pincode`, `serviceman_contact`, `serviceman_email`, `serviceman_password`) VALUES
(4, 'Shubham Patil', ' engineer', 'internet', 425405, '987653231', 'shubham@26', '12345'),
(5, 'Dhiraj Patil', 'Engineer', 'cables', 425405, '8748245233', 'dhiraj@26', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `serviceman`
--
ALTER TABLE `serviceman`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `coid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serviceman`
--
ALTER TABLE `serviceman`
  MODIFY `sid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
