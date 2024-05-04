-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 02:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkgroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `formdata`
--

CREATE TABLE `formdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formdata`
--

INSERT INTO `formdata` (`id`, `name`, `mobile`, `email`, `company`) VALUES
(1, 'Anjali', '03534533453', 'anjalisahu187@gmail.com', 'ABCD'),
(2, 'aarav', '03534533453', 'aarav@gmail.com', 'ABCD'),
(3, 'aarav', '03534533453', 'aarav@gmail.com', 'ABCD'),
(4, 'sunil gupta', '03534533453', 'sunil@gmail.com', 'ABCD'),
(5, 'shivam', '08909890983', 'shiv@gmail.com', ''),
(6, 'shivam', '08909890983', 'shiv@gmail.com', 'ABCD'),
(7, 'shivam', '08909890983', 'shiv@gmail.com', 'ABCD'),
(8, 'shivam', '08909890983', 'shiv@gmail.com', 'ABCD'),
(9, 'shivam', '08909890983', 'shiv@gmail.com', 'ABCD'),
(10, 'aarav', '03534533453', 'aarav@gmail.com', 'ABCD'),
(11, 'ankita', '03534533453', 'ankita@gmail.com', 'ABCD'),
(12, 'ankita', '03534533453', 'ankita@gmail.com', 'ABCD'),
(13, 'neha', '08909890983', 'neha@gmail.com', 'ABCD'),
(14, 'neha shaw', '08909890983', 'neha@gmail.com', 'ABCD'),
(15, 'yogesh', '08909890983', 'neha@gmail.com', 'ABCD'),
(16, 'yogesh', '08909890983', 'neha@gmail.com', 'ABCD'),
(17, 'monu', '08909890983', 'monu@gmail.com', 'ABCD'),
(18, 'moni', '08909890983', 'monu@gmail.com', 'ABCD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formdata`
--
ALTER TABLE `formdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formdata`
--
ALTER TABLE `formdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
