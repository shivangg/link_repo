-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2015 at 05:12 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `links`
--

-- --------------------------------------------------------

--
-- Table structure for table `followlist`
--

CREATE TABLE IF NOT EXISTS `followlist` (
  `follower` varchar(30) DEFAULT NULL,
  `followed` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `linkrepo`
--

CREATE TABLE IF NOT EXISTS `linkrepo` (
  `id` int(4) NOT NULL,
  `link_url` varchar(100) DEFAULT NULL,
  `user_description` varchar(100) DEFAULT NULL,
  `crawl_description` varchar(50) DEFAULT NULL,
  `scope` char(3) NOT NULL DEFAULT 'pri',
  `link_type` varchar(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='scope defined to store either of 3 values-''pri'',''pub''and ''awt''';

-- --------------------------------------------------------

--
-- Table structure for table `userlogindetails`
--

CREATE TABLE IF NOT EXISTS `userlogindetails` (
  `id` int(4) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `mobileNumber` int(15) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `tagline` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userloginprofile`
--

CREATE TABLE IF NOT EXISTS `userloginprofile` (
  `id` int(4) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='to store optional details which wont used be used much.';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `linkrepo`
--
ALTER TABLE `linkrepo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogindetails`
--
ALTER TABLE `userlogindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userloginprofile`
--
ALTER TABLE `userloginprofile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `linkrepo`
--
ALTER TABLE `linkrepo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userlogindetails`
--
ALTER TABLE `userlogindetails`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userloginprofile`
--
ALTER TABLE `userloginprofile`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
