-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 10:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rydr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Carrosserie` varchar(30) NOT NULL,
  `Tank Contents` varchar(30) NOT NULL,
  `Transmission` varchar(30) NOT NULL,
  `Price ( per day)` varchar(30) NOT NULL,
  `Seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`ID`, `Model`, `Carrosserie`, `Tank Contents`, `Transmission`, `Price ( per day)`, `Seats`) VALUES
(1, 'Koenigsegg', 'Sport', '90L', 'Manual', '$ 99.00/ day', 2),
(2, 'Nissan GT-R', 'Sport', '80L', 'Manual', '$ 80.00 / day', 2),
(3, 'Rolls-Royce', 'Sport', '70L', 'Manual', '$ 96.00 /day', 4),
(4, 'Nissan GT-R', 'Sport', '80L', 'Manual', '$ 80.00 / day', 2),
(5, 'All New Rush ', 'SUV', '70L', 'Manual', '$ 72.00/ day', 6),
(6, 'CR-V ', 'SUV', '80L', 'Manual', '$ 80.00 / day', 6),
(7, 'All New Terios ', 'SUV', '90L', 'Manual', '$ 80.00 / day', 6),
(8, 'CR-V ', 'SUV', '80L', 'Manual', '$ 80.00 / day', 6),
(9, 'MG ZX Exclusice', 'Hatchback', '70L', 'Manual', '$ 76.00 / day', 4),
(10, 'NEW MG ZS', 'SUV', '80L', 'Manual', '$ 80.00 / day', 6),
(11, 'MG ZX Excite', 'Hatchback', '90L', 'Manual', '$ 74.00 / day', 4),
(12, 'NEW MG ZS', 'SUV', '80L', 'Manual', '$ 80.00 / day', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
