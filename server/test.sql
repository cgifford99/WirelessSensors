-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 05:05 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `DataID` int(11) NOT NULL,
  `VariableID` int(11) NOT NULL,
  `Time` float NOT NULL,
  `Value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`DataID`, `VariableID`, `Time`, `Value`) VALUES
(1, 1, 1, 21.2),
(2, 1, 1.5, 21.2),
(3, 1, 2, 21.3),
(4, 1, 2.5, 21.5),
(5, 1, 3, 21.4),
(6, 1, 1, 21.2),
(7, 1, 1.5, 21.2),
(8, 1, 2, 21.3),
(9, 1, 2.5, 21.5),
(10, 1, 3, 21.4),
(11, 1, 3.5, 21.9),
(12, 1, 4, 22.1),
(13, 1, 4.5, 21.5),
(14, 1, 5, 21.5),
(15, 1, 5.5, 21.4),
(16, 2, 1, 21.2),
(17, 2, 1.5, 21.3),
(18, 2, 2, 21.4),
(19, 2, 2.5, 21.6),
(20, 2, 3, 21.4),
(21, 2, 3.5, 21.5),
(22, 2, 4, 21.5),
(23, 2, 4.5, 21.5),
(24, 2, 5, 21.7),
(25, 2, 5.5, 21.8);

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE `experiments` (
  `experimentId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiments`
--

INSERT INTO `experiments` (`experimentId`, `title`, `author`, `location`, `date`) VALUES
(1, 'Baxter Temperatures', 'Lewis Woodard', 'The Great Room', '2017-02-16'),
(2, 'Green Room Temperatures', 'Lewis Woodard', 'Green Room - Salt', '2017-02-16'),
(3, 'Computer Lab Climate', 'Lewis Woodard', 'Hopper', '2017-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `SensorID` int(11) NOT NULL,
  `ExperimentID` int(11) DEFAULT NULL,
  `SensorName` varchar(255) NOT NULL,
  `SensorUnit` varchar(255) NOT NULL,
  `SensorIncrement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensors`
--

INSERT INTO `sensors` (`SensorID`, `ExperimentID`, `SensorName`, `SensorUnit`, `SensorIncrement`) VALUES
(1, 1, 'Therm1', 'Celsius', 'Seconds'),
(2, 1, 'Therm2', 'Celsius', 'Seconds'),
(3, 2, 'Airflow 1', 'Airflow', 'Miliseconds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`DataID`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`experimentId`);

--
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`SensorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `DataID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `experimentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `SensorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
