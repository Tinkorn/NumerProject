-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 11:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bisection`
--

CREATE TABLE `bisection` (
  `id` int(11) NOT NULL,
  `fx` varchar(255) NOT NULL,
  `xl` int(11) NOT NULL,
  `xr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bisection`
--

INSERT INTO `bisection` (`id`, `fx`, `xl`, `xr`) VALUES
(1, 'x^3-13', -1, 3),
(2, 'x^3-13', -1, 3),
(3, 'x^4-10', -1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `password`) VALUES
(21, 'any', 'any'),
(22, 'any', 'any'),
(23, 'ddd', 'affny'),
(24, 'any', 'any'),
(25, 'tour', 'eiei'),
(26, 'rrrrr', 'wewrwrww'),
(27, 'rfrehjekhtekt', 'ertjetektejt'),
(28, 'jktjrekltejt', 'rjwkrwjrw'),
(29, 'swk', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bisection`
--
ALTER TABLE `bisection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bisection`
--
ALTER TABLE `bisection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
