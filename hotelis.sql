-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 07:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotelis`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakeries`
--

CREATE TABLE IF NOT EXISTS `bakeries` (
  `BaId` int(5) NOT NULL,
  `BaName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `BaCost` double(5,5) NOT NULL,
  PRIMARY KEY (`BaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cleanroom`
--

CREATE TABLE IF NOT EXISTS `cleanroom` (
  `ClId` int(5) NOT NULL,
  `ClName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `ClCost` double(5,5) NOT NULL,
  PRIMARY KEY (`ClId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE IF NOT EXISTS `dessert` (
  `DeId` int(5) NOT NULL,
  `DeName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `DeCost` double(5,5) NOT NULL,
  PRIMARY KEY (`DeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE IF NOT EXISTS `drinks` (
  `DrId` int(5) NOT NULL,
  `DrName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `DrCost` double(5,5) NOT NULL,
  PRIMARY KEY (`DrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EmpId` int(5) NOT NULL,
  `EmpName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `EmpPassword` int(10) NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeeroles`
--

CREATE TABLE IF NOT EXISTS `employeeroles` (
  `empId` int(5) NOT NULL,
  `RolesId` int(5) NOT NULL,
  KEY `empId` (`empId`),
  KEY `RolesID` (`RolesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE IF NOT EXISTS `fruits` (
  `FrId` int(5) NOT NULL,
  `FrName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `FrCost` double(5,5) NOT NULL,
  PRIMARY KEY (`FrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE IF NOT EXISTS `guests` (
  `GuestsId` int(5) NOT NULL,
  `GuestsPassword` int(10) NOT NULL,
  PRIMARY KEY (`GuestsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guestsroles`
--

CREATE TABLE IF NOT EXISTS `guestsroles` (
  `RolesId` int(5) NOT NULL,
  `GuestsId` int(5) NOT NULL,
  KEY `RolesId` (`RolesId`),
  KEY `GuestsId` (`GuestsId`),
  KEY `RolesId_2` (`RolesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotelrolesperimission`
--

CREATE TABLE IF NOT EXISTS `hotelrolesperimission` (
  `permissionId` int(5) NOT NULL,
  `rolesId` int(5) NOT NULL,
  KEY `rolesId` (`rolesId`),
  KEY `PermissionId` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mainmeal`
--

CREATE TABLE IF NOT EXISTS `mainmeal` (
  `MaId` int(5) NOT NULL,
  `MaName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `MaCost` double(5,5) NOT NULL,
  PRIMARY KEY (`MaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `OdreId` int(5) NOT NULL,
  `OrderCost` double(5,5) NOT NULL,
  `MaId` int(5) NOT NULL,
  `MaQ` int(5) NOT NULL,
  `DrId` int(5) NOT NULL,
  `DrQ` int(5) NOT NULL,
  `FrId` int(5) NOT NULL,
  `FrQ` int(5) NOT NULL,
  `SaId` int(5) NOT NULL,
  `SaQ` int(5) NOT NULL,
  `SnId` int(5) NOT NULL,
  `SnQ` int(5) NOT NULL,
  `SoId` int(5) NOT NULL,
  `SoQ` int(5) NOT NULL,
  `DeId` int(5) NOT NULL,
  `DeQ` int(5) NOT NULL,
  `BaId` int(5) NOT NULL,
  `BaQ` int(5) NOT NULL,
  `ClId` int(5) NOT NULL,
  PRIMARY KEY (`OdreId`),
  KEY `MaId` (`MaId`),
  KEY `DrId` (`DrId`),
  KEY `FrId` (`FrId`),
  KEY `ClId` (`ClId`),
  KEY `BaId` (`BaId`),
  KEY `DeId` (`DeId`),
  KEY `SoId` (`SoId`),
  KEY `SaId` (`SaId`),
  KEY `SnId` (`SnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `PermissionId` int(5) NOT NULL,
  `PermissionName` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Permissiondescription` text COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `GuestsId` int(5) NOT NULL,
  `OrderId` int(5) NOT NULL,
  `OrderCost` double(5,5) NOT NULL,
  `OrderTime` date NOT NULL,
  KEY `OrderId` (`OrderId`),
  KEY `GuestsId` (`GuestsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `RolesId` int(5) NOT NULL,
  `RolesName` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `RolesDescription` text COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`RolesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salads`
--

CREATE TABLE IF NOT EXISTS `salads` (
  `SaId` int(5) NOT NULL,
  `SaName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `SaCost` double(5,5) NOT NULL,
  PRIMARY KEY (`SaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sandwiches`
--

CREATE TABLE IF NOT EXISTS `sandwiches` (
  `SnId` int(5) NOT NULL,
  `SnName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `SnCost` double(5,5) NOT NULL,
  PRIMARY KEY (`SnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soup`
--

CREATE TABLE IF NOT EXISTS `soup` (
  `SoId` int(5) NOT NULL,
  `SoName` varchar(10) COLLATE utf8_general_mysql500_ci NOT NULL,
  `SoCost` double(5,5) NOT NULL,
  PRIMARY KEY (`SoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeeroles`
--
ALTER TABLE `employeeroles`
  ADD CONSTRAINT `EmpRolesId` FOREIGN KEY (`RolesId`) REFERENCES `roles` (`RolesId`),
  ADD CONSTRAINT `EmpIdR` FOREIGN KEY (`empId`) REFERENCES `employee` (`EmpId`);

--
-- Constraints for table `guestsroles`
--
ALTER TABLE `guestsroles`
  ADD CONSTRAINT `r` FOREIGN KEY (`RolesId`) REFERENCES `roles` (`RolesId`),
  ADD CONSTRAINT `GuestsId` FOREIGN KEY (`GuestsId`) REFERENCES `guests` (`GuestsId`);

--
-- Constraints for table `hotelrolesperimission`
--
ALTER TABLE `hotelrolesperimission`
  ADD CONSTRAINT `PermissionId` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`PermissionId`),
  ADD CONSTRAINT `RolesId` FOREIGN KEY (`rolesId`) REFERENCES `roles` (`RolesId`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `ClId` FOREIGN KEY (`ClId`) REFERENCES `cleanroom` (`ClId`),
  ADD CONSTRAINT `BaId` FOREIGN KEY (`BaId`) REFERENCES `bakeries` (`BaId`),
  ADD CONSTRAINT `DeId` FOREIGN KEY (`DeId`) REFERENCES `dessert` (`DeId`),
  ADD CONSTRAINT `DrId` FOREIGN KEY (`DrId`) REFERENCES `drinks` (`DrId`),
  ADD CONSTRAINT `FrId` FOREIGN KEY (`FrId`) REFERENCES `fruits` (`FrId`),
  ADD CONSTRAINT `MaId` FOREIGN KEY (`MaId`) REFERENCES `mainmeal` (`MaId`),
  ADD CONSTRAINT `SaId` FOREIGN KEY (`SaId`) REFERENCES `salads` (`SaId`),
  ADD CONSTRAINT `SnId` FOREIGN KEY (`SnId`) REFERENCES `sandwiches` (`SnId`),
  ADD CONSTRAINT `SoId` FOREIGN KEY (`SoId`) REFERENCES `soup` (`SoId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
