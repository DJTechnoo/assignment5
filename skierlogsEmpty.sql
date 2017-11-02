-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02. Nov, 2017 19:34 PM
-- Server-versjon: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skierlogs`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `clubs`
--

CREATE TABLE `clubs` (
  `clubId` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `clubName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `city` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `county` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `log`
--

CREATE TABLE `log` (
  `userName_fk` varchar(100) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `fallYear_fk` varchar(5) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `season`
--

CREATE TABLE `season` (
  `fallYear` varchar(5) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skiers`
--

CREATE TABLE `skiers` (
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `fName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `lName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `bYear` int(11) NOT NULL,
  `clubId` varchar(50) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`clubId`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`userName_fk`,`fallYear_fk`),
  ADD KEY `fallYear_fk` (`fallYear_fk`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`fallYear`);

--
-- Indexes for table `skiers`
--
ALTER TABLE `skiers`
  ADD PRIMARY KEY (`userName`),
  ADD KEY `fKtest` (`clubId`);

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`userName_fk`) REFERENCES `skiers` (`userName`),
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`fallYear_fk`) REFERENCES `season` (`fallYear`);

--
-- Begrensninger for tabell `skiers`
--
ALTER TABLE `skiers`
  ADD CONSTRAINT `skiers_ibfk_1` FOREIGN KEY (`clubId`) REFERENCES `clubs` (`clubId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
