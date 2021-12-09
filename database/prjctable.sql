-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 04:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prjctable`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booktransactions`
--

CREATE TABLE `booktransactions` (
  `TransactionID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DateBorrowed` date NOT NULL,
  `DateReturned` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktransactions`
--

INSERT INTO `booktransactions` (`TransactionID`, `BID`, `UserID`, `DateBorrowed`, `DateReturned`) VALUES
(0, 0, 0, '0000-00-00', '0000-00-00'),
(0, 0, 0, '0000-00-00', '0000-00-00'),
(796351, 1, 5, '2021-12-05', '2021-12-05'),
(967301, 1, 5, '2021-12-05', '2021-12-05'),
(991473, 1, 5, '2021-12-05', '2021-12-05'),
(936784, 1, 5, '2021-12-05', '2021-12-05'),
(882867, 1, 5, '2021-12-05', '2021-12-05'),
(760833, 1, 5, '2021-12-05', '2021-12-05'),
(692003, 1, 5, '2021-12-05', '2021-12-05'),
(757080, 1, 5, '2021-12-05', '2021-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing`
--

CREATE TABLE `borrowing` (
  `Id` int(1) NOT NULL,
  `BookTitle` varchar(50) NOT NULL,
  `BookAuthor` varchar(50) NOT NULL,
  `DateBorrowed` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `No` int(11) NOT NULL,
  `BookTitle` varchar(50) NOT NULL,
  `BookAuthor` varchar(25) NOT NULL,
  `DatePublished` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`No`, `BookTitle`, `BookAuthor`, `DatePublished`, `Quantity`) VALUES
(1, 'Math in Modern World', 'Chimuwa Sonki', 'Apr-5-1904', 22),
(2, 'English Book', 'Maslit Guyam', 'Jun-5-1904', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'renz', 'emmanuelle'),
(3, 'kirito', 'narusaka'),
(4, 'Mark', '1234'),
(5, 'rodelyn', 'ganda'),
(6, 'Mae', 'ako langto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `borrowing`
--
ALTER TABLE `borrowing`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowing`
--
ALTER TABLE `borrowing`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
