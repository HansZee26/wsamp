-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2024 at 10:33 PM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s2_classycountry`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `skin` int(11) NOT NULL DEFAULT 0,
  `anim` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `posr` float NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ID`, `name`, `skin`, `anim`, `posx`, `posy`, `posz`, `posr`, `interior`, `world`) VALUES
(0, 'Kencent', 240, 4, 812.752, -1339.56, 13.537, 181.418, 0, 0),
(1, 'MEDIC - Elmerant', 276, 12, 1181.01, -1329.18, 13.5845, 266.803, 0, 0),
(2, 'El Maevee', 273, 16, 2942.28, -2051.84, 3.54804, 84.5274, 0, 0),
(25, 'Suparman', 73, 0, 1243.46, -1420.5, 13.5513, 351.109, 0, 0),
(26, 'Bang Emon', 248, 0, 1243.57, -1420.77, 13.5474, 351.711, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aksesoris`
--

CREATE TABLE `aksesoris` (
  `ID` int(11) NOT NULL,
  `accID` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Bone` int(11) NOT NULL DEFAULT 1,
  `Show` int(11) NOT NULL DEFAULT 0,
  `Type` varchar(32) NOT NULL DEFAULT 'NONE',
  `Color1` varchar(128) DEFAULT NULL,
  `Color2` varchar(128) DEFAULT NULL,
  `Offset` varchar(24) NOT NULL,
  `Rot` varchar(128) NOT NULL,
  `Scale` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apart`
--

CREATE TABLE `apart` (
  `ID` int(11) NOT NULL,
  `owner` varchar(36) NOT NULL DEFAULT '',
  `cX` float NOT NULL,
  `cY` float NOT NULL,
  `cZ` float NOT NULL,
  `cRX` float NOT NULL,
  `cRY` float NOT NULL,
  `cRZ` float NOT NULL,
  `int` int(11) NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `cgun` int(11) NOT NULL,
  `marju` int(11) NOT NULL DEFAULT 0,
  `compo` int(11) NOT NULL DEFAULT 0,
  `material` int(11) NOT NULL DEFAULT 0,
  `apX` float NOT NULL,
  `apY` float NOT NULL,
  `apZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `posrx` float NOT NULL,
  `posry` float NOT NULL,
  `posrz` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0,
  `atmmoney` int(11) NOT NULL DEFAULT 1000000
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `world`, `atmmoney`) VALUES
(12, 1518.57, 1433.62, 489.251, 0, 0, 0, 0, 0, 1000000),
(10, 426.56, 2411.25, 355.777, 0, 0, -179.5, 0, 0, 1000000),
(9, 242.491, 107.433, 1002.78, 0, 0, 177.2, 10, 0, 1000000),
(8, 1448.38, -989.601, 995.695, 0, 0, -172.5, 1, 0, 1000000),
(7, -11.9829, -31.0526, 1003.11, 0, 0, 92.2, 10, 15, 1000000),
(6, -37.8145, -57.5778, 1003.24, 0, 0, 97.3, 6, 11, 1000000),
(5, -37.8439, -57.6504, 1003.22, 0, 0, 88.6, 6, 97, 1000000),
(4, -37.7541, -57.6897, 1003.13, 0, 0, 93.3, 6, 125, 1000000),
(3, -37.5496, -57.6293, 1003.15, 0, 0, 94.9, 6, 122, 1000000),
(2, -11.9654, -30.9325, 1003.11, 0, 0, 91.1, 10, 84, 1000000),
(1, -11.9507, -30.8389, 1003.16, 0, 0, 91.2, 10, 140, 1000000),
(0, 1450.13, -989.619, 995.695, 0, 0, 179, 0, 0, 1000000),
(11, 1448.47, -989.534, 995.725, 0, 0, 178.5, 0, 0, 1000000),
(13, 1446.66, -989.577, 995.645, 0, 0, 175.6, 0, 0, 1000000),
(14, 1430.3, -17.8218, 1000.49, 0, 0, 90, 1, 0, 1000000),
(15, 1472.05, -1012.46, 26.4537, 0, 0, -90.5, 0, 0, 1000000),
(16, 1833.21, -1847.62, 13.1481, 0, 0, -88.7, 0, 0, 1000000),
(17, -79.1852, -1171.77, 1.72875, 0, 0, -110, 0, 0, 1000000),
(18, 1153.99, -1283.47, -17.4823, 0, 0, 0, 0, 0, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `berry`
--

CREATE TABLE `berry` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berry`
--

INSERT INTO `berry` (`id`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`) VALUES
(0, -550.123, -1538.86, 7.46239, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bisnis`
--

CREATE TABLE `bisnis` (
  `ID` int(11) NOT NULL,
  `owner` varchar(40) NOT NULL DEFAULT '-',
  `name` varchar(40) NOT NULL DEFAULT 'Bisnis',
  `price` int(11) NOT NULL DEFAULT 500000,
  `type` int(11) NOT NULL DEFAULT 1,
  `locked` int(11) NOT NULL DEFAULT 1,
  `money` int(11) NOT NULL DEFAULT 0,
  `prod` int(11) NOT NULL DEFAULT 50,
  `bprice0` int(11) NOT NULL DEFAULT 500,
  `bprice1` int(11) NOT NULL DEFAULT 500,
  `bprice2` int(11) NOT NULL DEFAULT 500,
  `bprice3` int(11) NOT NULL DEFAULT 500,
  `bprice4` int(11) NOT NULL DEFAULT 500,
  `bprice5` int(11) NOT NULL DEFAULT 500,
  `bprice6` int(11) NOT NULL DEFAULT 500,
  `bprice7` int(11) NOT NULL DEFAULT 500,
  `bprice8` int(11) NOT NULL DEFAULT 500,
  `bprice9` int(11) NOT NULL DEFAULT 500,
  `bprice10` int(11) NOT NULL DEFAULT 500,
  `bint` int(11) NOT NULL DEFAULT 0,
  `extposx` float NOT NULL DEFAULT 0,
  `extposy` float NOT NULL DEFAULT 0,
  `extposz` float NOT NULL DEFAULT 0,
  `extposa` float NOT NULL DEFAULT 0,
  `intposx` float NOT NULL DEFAULT 0,
  `intposy` float NOT NULL DEFAULT 0,
  `intposz` float NOT NULL DEFAULT 0,
  `intposa` float NOT NULL DEFAULT 0,
  `pointx` float DEFAULT 0,
  `pointy` float DEFAULT 0,
  `pointz` float DEFAULT 0,
  `visit` bigint(20) NOT NULL DEFAULT 0,
  `restock` tinyint(4) NOT NULL DEFAULT 0,
  `segel` int(11) NOT NULL DEFAULT 0,
  `bpname0` varchar(40) NOT NULL,
  `bpname1` varchar(40) NOT NULL,
  `bpname2` varchar(40) NOT NULL,
  `bpname3` varchar(40) NOT NULL,
  `bpname4` varchar(40) NOT NULL,
  `bpname5` varchar(40) NOT NULL,
  `bpname6` varchar(40) NOT NULL,
  `bpname7` varchar(40) NOT NULL,
  `bpname8` varchar(40) NOT NULL,
  `bpname9` varchar(40) NOT NULL,
  `bpname10` varchar(40) NOT NULL,
  `bpname11` varchar(40) NOT NULL,
  `stream` varchar(40) NOT NULL DEFAULT '',
  `extvw` int(11) NOT NULL DEFAULT 0,
  `extint` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bisnis`
--

INSERT INTO `bisnis` (`ID`, `owner`, `name`, `price`, `type`, `locked`, `money`, `prod`, `bprice0`, `bprice1`, `bprice2`, `bprice3`, `bprice4`, `bprice5`, `bprice6`, `bprice7`, `bprice8`, `bprice9`, `bprice10`, `bint`, `extposx`, `extposy`, `extposz`, `extposa`, `intposx`, `intposy`, `intposz`, `intposa`, `pointx`, `pointy`, `pointz`, `visit`, `restock`, `segel`, `bpname0`, `bpname1`, `bpname2`, `bpname3`, `bpname4`, `bpname5`, `bpname6`, `bpname7`, `bpname8`, `bpname9`, `bpname10`, `bpname11`, `stream`, `extvw`, `extint`) VALUES
(0, 'Jesse_Pope', 'Haze-Mart', 5500000, 5, 0, 64, 18711, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 6, 1311.17, 227.979, 19.5628, 0.629006, -2240.39, 137.399, 1035.41, 270.259, -2235.41, 130.158, 1035.41, 0, 1, 0, 'Handphone', 'GPS', 'Phone credit', 'Walkie talkie', '', '', '', '', '', '', '', '', '', 0, 0),
(1, '-', 'El Quebrados', 5500000, 1, 0, 0, 1000, 75, 300, 350, 375, 0, 0, 0, 0, 0, 0, 0, 10, -1519.17, 2610.32, 55.8359, 28.3151, 363.22, -74.86, 1001.5, 319.72, 376.814, -68.0401, 1001.52, 0, 1, 0, 'Fried Chicken(+25)', 'Pizza Stack(+45)', 'Patty Burger(+60)', 'Sprunk(+45)', '', '', '', '', '', '', '', '', '', 0, 0),
(2, 'Fahri_Maulana', '[ NixCorp ] Star Electro', 5500000, 5, 0, 0, 1000, 3500, 3500, 750, 3750, 0, 0, 0, 0, 0, 0, 0, 6, -1531.08, 2591.66, 55.8359, 201.443, -2240.39, 137.399, 1035.41, 270.259, -2235.41, 130.158, 1035.41, 1705681976, 1, 0, 'Handphone', 'GPS', 'Phone credit', 'Walkie talkie', '', '', '', '', '', '', '', '', '', 0, 0),
(3, '-', 'El Quebrados', 5500000, 4, 0, 3188, 999, 375, 375, 375, 3750, 3750, 0, 0, 0, 0, 0, 0, 1, -1529.12, 2610.6, 55.8359, 28.6777, 203.72, -50.0292, 1001.8, 5.1475, 203.843, -43.2778, 1001.8, 0, 1, 0, 'Baseball Bat', 'Shovel', 'Cane', 'Fishing Tools', 'Mask', '', '', '', '', '', '', '', '', 0, 0),
(4, '-', 'El Quebrados', 5500000, 3, 0, 6375, 273760, 2500, 1000, 1000, 1000, 1000, 1000, 0, 0, 0, 0, 0, 14, -1481.02, 2592.14, 55.8359, 192.461, 204.49, -168.26, 1000.52, 358.74, 204.372, -159.698, 1000.52, 0, 1, 0, 'Clothes', 'Hats', 'Glasses', 'Helm', 'Accessory', 'Mask (Accessory)', 'Hairs', '', '', '', '', '', '', 0, 0),
(5, '-', 'East Beach', 5500000, 4, 0, 12752, 192878, 375, 375, 375, 3750, 3750, 0, 0, 0, 0, 0, 0, 1, 2818.99, -1614.5, 11.0874, 91.955, 203.72, -50.0292, 1001.8, 5.1475, 203.843, -43.2778, 1001.8, 0, 1, 0, 'Baseball Bat', 'Shovel', 'Cane', 'Fishing Tools', 'Mask', '', '', '', '', '', '', '', '', 0, 0),
(6, '-', 'Downtown Los Santos', 5500000, 3, 0, 0, 1000, 2500, 1000, 1000, 1000, 1000, 1000, 0, 0, 0, 0, 0, 15, 1570.08, -1239.84, 17.4548, 279.74, 207.55, -110.67, 1005.13, 0.159999, 207.523, -100.736, 1005.26, 0, 1, 0, 'Clothes', 'Hats', 'Glasses', 'Helm', 'Accessory', 'Mask (Accessory)', 'Hairs', '', '', '', '', '', '', 0, 0),
(7, '-', 'Idlewood', 5500000, 2, 0, 0, 1000, 100, 100, 2250, 2250, 2500, 0, 0, 0, 0, 0, 0, 6, 1928.58, -1776.33, 13.5469, 110.681, -26.68, -57.92, 1003.54, 357.58, -23.4406, -55.6324, 1003.55, 0, 1, 0, 'Snack', 'Sprunk', 'Bandage', 'Cigarretes', 'Toll Card', '', '', '', '', '', '', '', '', 0, 0),
(8, '-', 'Flint County', 5500000, 2, 0, 16833, 979, 100, 100, 2250, 2250, 2500, 0, 0, 0, 0, 0, 0, 6, -78.385, -1169.91, 2.13115, 235.083, -26.68, -57.92, 1003.54, 357.58, -23.4406, -55.6324, 1003.55, 0, 1, 0, 'Snack', 'Sprunk', 'Bandage', 'Cigarretes', 'Toll Card', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `builder`
--

CREATE TABLE `builder` (
  `mtID` int(8) NOT NULL,
  `mtModel` int(11) NOT NULL DEFAULT 0,
  `mtTextID` int(11) NOT NULL DEFAULT 0,
  `mtTexture` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mtTexture1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mtText` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mtX` float NOT NULL DEFAULT 0,
  `mtY` float NOT NULL DEFAULT 0,
  `mtZ` float NOT NULL DEFAULT 0,
  `mtRX` float NOT NULL DEFAULT 0,
  `mtRY` float NOT NULL,
  `mtRZ` float NOT NULL DEFAULT 0,
  `mtInterior` int(6) NOT NULL DEFAULT 0,
  `mtWorld` int(6) NOT NULL DEFAULT 0,
  `mtBold` int(6) NOT NULL DEFAULT 0,
  `mtColor` int(4) NOT NULL DEFAULT 0,
  `mtSize` int(12) NOT NULL DEFAULT 0,
  `mttexton` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE `cd` (
  `ID` int(11) UNSIGNED NOT NULL,
  `owner` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Dealership',
  `entrancex` float NOT NULL DEFAULT 0,
  `entrancey` float NOT NULL DEFAULT 0,
  `entrancez` float NOT NULL DEFAULT 0,
  `exitx` float NOT NULL DEFAULT 0,
  `exity` float NOT NULL DEFAULT 0,
  `exitz` float NOT NULL DEFAULT 0,
  `till` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `vehiclespawnx` float NOT NULL DEFAULT 0,
  `vehiclespawny` float NOT NULL DEFAULT 0,
  `vehiclespawnz` float NOT NULL DEFAULT 0,
  `vehiclespawna` float NOT NULL DEFAULT 0,
  `radius` float NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `vehiclex0` float DEFAULT 0,
  `vehicley0` float DEFAULT 0,
  `vehiclez0` float DEFAULT 0,
  `vehiclea0` float DEFAULT 0,
  `vehicleprice0` int(11) DEFAULT 0,
  `vehiclemodel0` int(11) DEFAULT 0,
  `vehiclex1` float NOT NULL DEFAULT 0,
  `vehicley1` float NOT NULL DEFAULT 0,
  `vehiclez1` float NOT NULL DEFAULT 0,
  `vehiclea1` float NOT NULL DEFAULT 0,
  `vehicleprice1` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel1` int(11) NOT NULL DEFAULT 0,
  `vehiclex2` float NOT NULL DEFAULT 0,
  `vehicley2` float NOT NULL DEFAULT 0,
  `vehiclez2` float NOT NULL DEFAULT 0,
  `vehiclea2` float NOT NULL DEFAULT 0,
  `vehicleprice2` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel2` int(11) NOT NULL DEFAULT 0,
  `vehiclex3` float NOT NULL DEFAULT 0,
  `vehicley3` float NOT NULL DEFAULT 0,
  `vehiclez3` float NOT NULL DEFAULT 0,
  `vehiclea3` float NOT NULL DEFAULT 0,
  `vehicleprice3` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel3` int(11) NOT NULL DEFAULT 0,
  `vehiclex4` float NOT NULL DEFAULT 0,
  `vehicley4` float NOT NULL DEFAULT 0,
  `vehiclez4` float NOT NULL DEFAULT 0,
  `vehiclea4` decimal(10,0) NOT NULL DEFAULT 0,
  `vehicleprice4` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel4` int(11) NOT NULL DEFAULT 0,
  `vehiclex5` float NOT NULL DEFAULT 0,
  `vehicley5` float NOT NULL DEFAULT 0,
  `vehiclez5` float NOT NULL DEFAULT 0,
  `vehiclea5` float NOT NULL DEFAULT 0,
  `vehicleprice5` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel5` int(11) NOT NULL DEFAULT 0,
  `vehiclex6` float NOT NULL DEFAULT 0,
  `vehicley6` float NOT NULL DEFAULT 0,
  `vehiclez6` float NOT NULL DEFAULT 0,
  `vehiclea6` float NOT NULL DEFAULT 0,
  `vehicleprice6` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel6` int(11) NOT NULL DEFAULT 0,
  `vehiclex7` float NOT NULL DEFAULT 0,
  `vehicley7` float NOT NULL DEFAULT 0,
  `vehiclez7` float NOT NULL DEFAULT 0,
  `vehiclea7` float NOT NULL DEFAULT 0,
  `vehicleprice7` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel7` int(11) NOT NULL DEFAULT 0,
  `vehiclex8` float NOT NULL DEFAULT 0,
  `vehicley8` float NOT NULL DEFAULT 0,
  `vehiclez8` float NOT NULL DEFAULT 0,
  `vehiclea8` float NOT NULL DEFAULT 0,
  `vehicleprice8` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel8` int(11) NOT NULL DEFAULT 0,
  `vehiclex9` float NOT NULL DEFAULT 0,
  `vehicley9` float NOT NULL DEFAULT 0,
  `vehiclez9` float NOT NULL DEFAULT 0,
  `vehiclea9` float NOT NULL DEFAULT 0,
  `vehicleprice9` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel9` int(11) NOT NULL DEFAULT 0,
  `vehiclex10` float NOT NULL DEFAULT 0,
  `vehicley10` float NOT NULL DEFAULT 0,
  `vehiclez10` float NOT NULL DEFAULT 0,
  `vehiclea10` float NOT NULL DEFAULT 0,
  `vehicleprice10` int(11) NOT NULL DEFAULT 0,
  `vehiclemodel10` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`ID`, `owner`, `name`, `entrancex`, `entrancey`, `entrancez`, `exitx`, `exity`, `exitz`, `till`, `interior`, `vehiclespawnx`, `vehiclespawny`, `vehiclespawnz`, `vehiclespawna`, `radius`, `price`, `type`, `vehiclex0`, `vehicley0`, `vehiclez0`, `vehiclea0`, `vehicleprice0`, `vehiclemodel0`, `vehiclex1`, `vehicley1`, `vehiclez1`, `vehiclea1`, `vehicleprice1`, `vehiclemodel1`, `vehiclex2`, `vehicley2`, `vehiclez2`, `vehiclea2`, `vehicleprice2`, `vehiclemodel2`, `vehiclex3`, `vehicley3`, `vehiclez3`, `vehiclea3`, `vehicleprice3`, `vehiclemodel3`, `vehiclex4`, `vehicley4`, `vehiclez4`, `vehiclea4`, `vehicleprice4`, `vehiclemodel4`, `vehiclex5`, `vehicley5`, `vehiclez5`, `vehiclea5`, `vehicleprice5`, `vehiclemodel5`, `vehiclex6`, `vehicley6`, `vehiclez6`, `vehiclea6`, `vehicleprice6`, `vehiclemodel6`, `vehiclex7`, `vehicley7`, `vehiclez7`, `vehiclea7`, `vehicleprice7`, `vehiclemodel7`, `vehiclex8`, `vehicley8`, `vehiclez8`, `vehiclea8`, `vehicleprice8`, `vehiclemodel8`, `vehiclex9`, `vehicley9`, `vehiclez9`, `vehiclea9`, `vehicleprice9`, `vehiclemodel9`, `vehiclex10`, `vehicley10`, `vehiclez10`, `vehiclea10`, `vehicleprice10`, `vehiclemodel10`) VALUES
(5, 'Jesse_Pope', 'Haze Corporations', 2202.65, -2521.94, 13.7469, 0, 0, 0, 17595882, 0, 2200.14, -2597.68, 13.5469, 267.112, 10, 1, 6, 2216.26, -2520.71, 13.7469, 127.908, 0, 0, 2202.47, -2561.21, 13.7469, 268.781, 500000, 579, 2215.54, -2530.64, 13.7469, 88.1859, 230000, 401, 2215.11, -2525.99, 13.7469, 86.4175, 220000, 546, 2208.12, -2521.62, 13.7469, 183, 0, 0, 2203.86, -2530.6, 13.7469, 314.427, 290000, 534, 2201.57, -2557.84, 13.7469, 267.841, 210000, 540, 2201.08, -2554.56, 13.7469, 268.639, 560000, 560, 2201.52, -2550.08, 13.7469, 263.589, 530000, 562, 2201.47, -2546.91, 13.7469, 266.623, 250000, 559, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'None',
  `password` varchar(50) DEFAULT '',
  `icon` int(11) DEFAULT 19130,
  `locked` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `garage` tinyint(3) NOT NULL DEFAULT 0,
  `custom` int(11) NOT NULL DEFAULT 0,
  `extvw` int(11) DEFAULT 0,
  `extint` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intvw` int(11) DEFAULT 0,
  `intint` int(11) NOT NULL DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doors`
--

INSERT INTO `doors` (`ID`, `name`, `password`, `icon`, `locked`, `admin`, `vip`, `faction`, `family`, `garage`, `custom`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intvw`, `intint`, `intposx`, `intposy`, `intposz`, `intposa`) VALUES
(0, 'San Andreas Police Departement', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1555.5, -1675.72, 16.1953, 96.3574, 0, 1, 1383.16, 1541.96, 1510.9, 190.505),
(1, 'San Andreas Police Departement', '', 19130, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1565.02, -1666.76, 28.3956, 3.67237, 0, 10, 218.228, 123.704, 1007.26, 266.488),
(2, 'San Andreas Police Departement', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1568.68, -1690.12, 6.21875, 184.131, 0, 0, 1353.92, 1578.71, 1467.7, 3.40047),
(3, 'City Hall', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1481.13, -1772.08, 18.7958, 359.549, 0, 1, -1840.58, 2670.4, 3.5884, 90.8775),
(4, 'San Andreas Goverment Service', '', 19130, 0, 0, 0, 2, -1, 0, 1, 0, 0, 1485.14, -1824.97, 13.5469, 183.735, 0, 1, 1405.66, -12.4833, 1000.98, 187.405),
(5, 'San Andreas Medical Departement', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 2034.35, -1401.86, 17.2965, 182.651, 0, 1, -2035.83, -58.028, 1060.99, 273.832),
(6, 'San Andreas Medical Departement', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 1, -2007.88, -73.2096, 1060.99, 6.41084, 0, 0, 0, 0, 0, 0),
(7, 'San Andreas Medical Departement', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 1, -2013.29, -73.1903, 1060.99, 2.65063, 0, 0, 0, 0, 0, 0),
(8, 'ASGH Medical Departement', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1172.19, -1321.44, 15.3988, 278.82, 0, 0, 1161.47, -1292.91, -17.0686, 94.3717),
(9, 'ASGH Medical Departement', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1144.88, -1324.18, 13.5853, 78.0049, 0, 0, 1144, -1297.3, -16.9222, 30.9432),
(10, 'ASGH Basement', '', 19130, 0, 0, 0, 3, -1, 0, 1, 0, 0, 1127.53, -1318.31, -16.9222, 87.9047, 0, 1, 1445.18, 6.96744, 1004.57, 181.023),
(11, 'San Andreas News Agency', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 649.092, -1360.59, 14.0034, 96.0664, 0, 1, 1510.15, 1421.75, 489.622, 94.9654),
(12, 'San Andreas News Agency Studio', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 740.15, -1351.26, 14.7142, 265.1, 0, 1, 248.441, 1783.74, 701.086, 196.479),
(13, 'Bank Los Santos', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1462.44, -1010.18, 26.8438, 180.765, 0, 0, 1456.38, -986.022, 996.105, 268.225),
(14, 'Taxi Longue', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1396.92, -1569.77, 14.2695, 14.745, 0, 1, -2158.5, 642.905, 1052.38, 184.752),
(15, 'Newbie School', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 1797.65, -1578.89, 14.0861, 280.855, 0, 1, -4107.23, 906.906, 3.10072, 176.818),
(16, 'SANEWS', '', 19130, 0, 0, 0, 4, -1, 0, 0, 0, 1, 2473.41, 2278.42, 91.6868, 178.715, 0, 0, 737.634, -1353.05, 25.2202, 271.198),
(17, 'SANews Base', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 1, 253.447, 1780.27, 701.086, 86.788, 0, 1, 2467.58, 2253.87, 91.6868, 89.1242),
(18, 'Hydra Market', '', 19130, 0, 0, 0, 0, -1, 0, 1, 0, 0, 405.976, -3689.9, 3.84566, 177.449, 0, 0, 338.587, -536.64, 442.4, 358.338),
(19, 'Alhambra', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1837.03, -1682.21, 13.323, 87.4758, 0, 3, -2636.87, 1402.56, 906.461, 12.1067),
(20, 'VIP Car Garage', '', 19130, 0, 0, 1, 0, -1, 1, 1, 0, 0, 1827.26, -1538.06, 13.5469, 165.884, 0, 0, 1818.76, -1537.02, 13.3813, 84.7065),
(21, 'VIP Bike Garage', '', 19130, 0, 0, 1, 0, -1, 1, 1, 0, 0, 1754.34, -1594.77, 13.537, 79.0899, 0, 0, 1753.36, -1587.71, 13.3052, 357.622),
(23, 'Willowfield Gym', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2493.03, -1958.55, 13.5827, 3.07504, 0, 6, 774.372, -50.2732, 1000.59, 2.59314),
(24, '[LIFE] UP', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 18, 1712.27, -1640.08, 20.2239, 226.053, 0, 18, 1713.4, -1641.45, 23.6797, 220.268),
(26, 'Driving School', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2057.66, -1897.21, 13.5538, 1.23796, 0, 3, 1494.54, 1303.91, 1093.29, 2.66014),
(25, '[LIFE] Down', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 18, 1710.74, -1643.98, 23.6797, 40.2683, 0, 18, 1709.68, -1642.85, 20.2188, 227.017),
(27, 'Abandoned Building', '', 19130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 870.395, -24.922, 63.986, 330.828, 0, 0, -878.654, 1116.61, 5442.84, 4.9584),
(22, 'El-Quabrados Motel', '', 19130, 1, 0, 0, 0, -1, 0, 0, 0, 0, -1465.6, 2611.98, 56.1797, 357.878, 0, 0, 0, 0, 0, 0),
(28, 'Los Santos Gym', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2229.85, -1721.35, 13.5559, 319.035, 0, 5, 772.351, -5.50682, 1000.72, 187.027),
(29, 'Laskar-Bar', '', 19130, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1288.72, 271.276, 19.5547, 58.6462, 0, 0, 0, 0, 0, 0),
(30, 'San Andreas Police Departement', '', 19130, 0, 0, 0, 1, -1, 0, 0, 0, 0, 1363.37, 1567.66, 1468.79, 187.421, 0, 1, 1380.06, 1514.46, 1505.1, 175.839),
(31, 'Sch Area', '', 19606, 0, 0, 0, 0, -1, 0, 0, 0, 0, 308.326, -191.321, 1.57812, 274.916, 0, 0, 338.578, -536.959, 222.4, 358.338);

-- --------------------------------------------------------

--
-- Table structure for table `doorsflat`
--

CREATE TABLE `doorsflat` (
  `ID` int(11) NOT NULL,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `intvw` int(11) NOT NULL DEFAULT -1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `doorsflat`
--

INSERT INTO `doorsflat` (`ID`, `extposx`, `extposy`, `extposz`, `extposa`, `intposx`, `intposy`, `intposz`, `intposa`, `int`, `intvw`) VALUES
(0, 1788.06, -1794.63, 13.5278, 7.07069, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `familys`
--

CREATE TABLE `familys` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'None',
  `leader` varchar(50) NOT NULL DEFAULT 'None',
  `motd` varchar(100) NOT NULL DEFAULT 'None',
  `color` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0,
  `fint` int(11) NOT NULL DEFAULT 0,
  `Weapon1` int(11) NOT NULL DEFAULT 0,
  `Ammo1` int(11) NOT NULL DEFAULT 0,
  `Weapon2` int(11) NOT NULL DEFAULT 0,
  `Ammo2` int(11) NOT NULL DEFAULT 0,
  `Weapon3` int(11) NOT NULL DEFAULT 0,
  `Ammo3` int(11) NOT NULL DEFAULT 0,
  `Weapon4` int(11) NOT NULL DEFAULT 0,
  `Ammo4` int(11) NOT NULL DEFAULT 0,
  `Weapon5` int(11) NOT NULL DEFAULT 0,
  `Ammo5` int(11) NOT NULL DEFAULT 0,
  `Weapon6` int(11) NOT NULL DEFAULT 0,
  `Ammo6` int(11) NOT NULL DEFAULT 0,
  `Weapon7` int(11) NOT NULL DEFAULT 0,
  `Ammo7` int(11) NOT NULL DEFAULT 0,
  `Weapon8` int(11) NOT NULL DEFAULT 0,
  `Ammo8` int(11) NOT NULL DEFAULT 0,
  `Weapon9` int(11) NOT NULL DEFAULT 0,
  `Ammo9` int(11) NOT NULL DEFAULT 0,
  `Weapon10` int(11) NOT NULL DEFAULT 0,
  `Ammo10` int(11) NOT NULL DEFAULT 0,
  `safex` float DEFAULT 0,
  `safey` float DEFAULT 0,
  `safez` float DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `marijuana` int(11) NOT NULL DEFAULT 0,
  `component` int(11) NOT NULL DEFAULT 0,
  `material` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `familys`
--

INSERT INTO `familys` (`ID`, `name`, `leader`, `motd`, `color`, `extposx`, `extposy`, `extposz`, `extposa`, `intposx`, `intposy`, `intposz`, `intposa`, `fint`, `Weapon1`, `Ammo1`, `Weapon2`, `Ammo2`, `Weapon3`, `Ammo3`, `Weapon4`, `Ammo4`, `Weapon5`, `Ammo5`, `Weapon6`, `Ammo6`, `Weapon7`, `Ammo7`, `Weapon8`, `Ammo8`, `Weapon9`, `Ammo9`, `Weapon10`, `Ammo10`, `safex`, `safey`, `safez`, `money`, `marijuana`, `component`, `material`) VALUES
(0, 'Laskar Montgomery', 'Jesse_Pope', 'None', 0, 1281.41, 305.267, 19.5547, 340.923, 1405.19, -1285.2, 830.872, 172.915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1413.69, -1296.55, 832.838, 0, 700, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) DEFAULT NULL,
  `Type` int(11) NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `IntWorld` int(11) NOT NULL DEFAULT 0,
  `IntInterior` int(11) NOT NULL DEFAULT 0,
  `Position` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `IntPosition` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `GaragePos` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`ID`, `Name`, `Type`, `World`, `Interior`, `IntWorld`, `IntInterior`, `Position`, `IntPosition`, `GaragePos`) VALUES
(3, 'Los Santos Flat', 1, 0, 0, 0, 34, '1412.68|-1700.42|13.52', '1434.56|1560.15|10.93', '1420.32|-1694.31|13.54'),
(4, 'Under Construction', 3, 0, 0, 0, 32, '1414.60|-1487.28|20.43', '1761.75|-2511.46|13.72', '1445.58|-1469.57|13.36'),
(5, 'Vallerian Hills', 2, 0, 33, 0, 33, '1433.23|1457.96|10.84', '1433.11|1461.06|10.84', '0.00|0.00|0.00');

-- --------------------------------------------------------

--
-- Table structure for table `flatroom`
--

CREATE TABLE `flatroom` (
  `ID` int(11) NOT NULL,
  `FlatID` int(11) NOT NULL DEFAULT 0,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Price` int(11) NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `Seal` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Position` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `AreaPos` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00|0.00|0.00',
  `DoorPosition` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `DoorRotation` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `LastVisited` int(11) NOT NULL DEFAULT 0,
  `Builder` varchar(24) NOT NULL DEFAULT '0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flatroom`
--

INSERT INTO `flatroom` (`ID`, `FlatID`, `Owner`, `Locked`, `Price`, `World`, `Interior`, `Seal`, `Money`, `Position`, `AreaPos`, `DoorPosition`, `DoorRotation`, `LastVisited`, `Builder`) VALUES
(12, 4, 2, 0, 1, 0, 32, 0, 0, '1766.78|-2504.31|13.73', '1766.59|-2512.92|1798.81|-2496.50|13.71', '0.00|0.00|0.00', '0.00|0.00|0.00', 1705143685, '0|0'),
(13, 4, 0, 0, 1, 0, 32, 0, 0, '1757.63|-2504.33|13.74', '1725.41|-2512.93|1757.61|-2496.50|13.71', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667539718, '0|0'),
(14, 4, 0, 0, 1, 0, 32, 0, 0, '1757.68|-2488.32|13.74', '1725.43|-2496.37|1757.61|-2479.75|13.71', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667540053, '0|0'),
(17, 3, 0, 0, 1, 0, 34, 0, 0, '1432.86|1596.12|10.95', '1418.81|1591.02|1433.06|1607.81|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541018, '0|0'),
(18, 3, 0, 0, 1, 0, 34, 0, 0, '1432.81|1579.90|10.95', '1418.77|1574.98|1433.11|1591.02|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541048, '0|0'),
(19, 3, 33, 1, 1, 0, 34, 0, 0, '1432.68|1563.84|10.93', '1418.79|1558.06|1433.18|1574.93|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541861, '0|0'),
(22, 3, 0, 0, 1, 0, 34, 0, 0, '1436.75|1595.74|10.95', '1436.34|1591.02|1450.60|1607.81|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541161, '0|0'),
(23, 3, 0, 0, 1, 0, 34, 0, 0, '1437.02|1579.80|10.95', '1436.31|1574.98|1450.66|1591.02|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541176, '0|0'),
(24, 3, 0, 0, 1, 0, 34, 0, 0, '1436.61|1563.86|10.95', '1436.32|1558.09|1450.71|1574.95|10.93', '0.00|0.00|0.00', '0.00|0.00|0.00', 1667541193, '0|0');

-- --------------------------------------------------------

--
-- Table structure for table `flat_furniture`
--

CREATE TABLE `flat_furniture` (
  `ID` int(11) NOT NULL,
  `Flatid` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 0,
  `Name` int(11) NOT NULL DEFAULT 0,
  `Unused` int(11) NOT NULL DEFAULT 0,
  `Position` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `Rotation` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00',
  `Materials` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat_furniture`
--

INSERT INTO `flat_furniture` (`ID`, `Flatid`, `Model`, `Name`, `Unused`, `Position`, `Rotation`, `Materials`) VALUES
(1, 19, 1742, 0, 0, '1419.41|1567.37|10.93', '0.00|0.00|91.26', '2709|2709|335|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(2, 19, 2160, 0, 0, '1419.75|1564.39|9.91', '0.00|0.00|90.50', '463|463|463|455|455|455|455|0|0|0|0|0|0|0|0|0'),
(3, 19, 2151, 0, 0, '1419.74|1563.03|9.90', '0.00|0.00|90.01', '455|463|455|463|463|463|463|463|0|0|0|0|0|0|0|0'),
(4, 19, 2135, 0, 0, '1420.04|1562.05|9.88', '0.00|0.00|90.05', '97|463|455|463|463|463|0|0|0|0|0|0|0|0|0|0');

-- --------------------------------------------------------

--
-- Table structure for table `flat_storage`
--

CREATE TABLE `flat_storage` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `itemID` int(11) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(11) NOT NULL DEFAULT 0,
  `itemQuantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flat_structure`
--

CREATE TABLE `flat_structure` (
  `ID` int(11) NOT NULL,
  `Static` int(11) NOT NULL DEFAULT 0,
  `Flatid` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 0,
  `Position` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00	',
  `Rotation` varchar(128) NOT NULL DEFAULT '0.00|0.00|0.00	',
  `Material` varchar(128) NOT NULL DEFAULT '0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat_structure`
--

INSERT INTO `flat_structure` (`ID`, `Static`, `Flatid`, `Model`, `Position`, `Rotation`, `Material`) VALUES
(1, 1, 12, 1502, '2234.54|-2010.89|13.25', '0.00|0.00|0.00', '0|0'),
(2, 1, 12, 19379, '1772.02|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(3, 1, 12, 19379, '1782.52|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(4, 1, 12, 19379, '1793.01|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(5, 1, 12, 19447, '1772.45|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(6, 1, 12, 19447, '1772.45|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(7, 1, 12, 19355, '1767.57|-2510.86|14.47', '0.00|-0.00|0.00', '0|0'),
(8, 1, 12, 19355, '1767.57|-2507.65|14.47', '0.00|-0.00|0.00', '0|0'),
(9, 1, 12, 19447, '1782.08|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(10, 1, 12, 19385, '1767.55|-2504.44|14.47', '0.00|0.00|0.00', '0|0'),
(11, 1, 12, 19355, '1787.06|-2512.38|14.47', '0.00|180.00|90.00', '0|0'),
(12, 1, 12, 19447, '1793.44|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(13, 1, 12, 19447, '1782.08|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(14, 1, 12, 19355, '1787.06|-2496.51|14.47', '-0.00|180.00|90.00', '0|0'),
(15, 1, 12, 19447, '1793.44|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(16, 1, 12, 19355, '1767.57|-2501.23|14.47', '0.00|-0.00|0.00', '0|0'),
(17, 1, 12, 19355, '1767.57|-2498.02|14.47', '0.00|-0.00|0.00', '0|0'),
(18, 1, 12, 19379, '1772.02|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(19, 1, 12, 19379, '1782.52|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(20, 1, 12, 19379, '1793.01|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(21, 1, 12, 19447, '1798.17|-2507.46|14.45', '0.00|180.00|180.00', '0|0'),
(22, 1, 12, 19447, '1798.18|-2501.30|14.47', '0.00|180.00|180.00', '0|0'),
(23, 1, 12, 19379, '1772.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(24, 1, 12, 19379, '1783.20|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(25, 1, 12, 19379, '1793.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(26, 1, 12, 19379, '1772.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(27, 1, 12, 19379, '1783.20|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(28, 1, 12, 19379, '1793.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(29, 1, 13, 1502, '1757.63|-2504.33|13.74', '0.00|0.00|0.00', '0|0'),
(30, 1, 13, 19379, '1772.02|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(31, 1, 13, 19379, '1782.52|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(32, 1, 13, 19379, '1793.01|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(33, 1, 13, 19447, '1772.45|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(34, 1, 13, 19447, '1772.45|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(35, 1, 13, 19355, '1767.57|-2510.86|14.47', '0.00|-0.00|0.00', '0|0'),
(36, 1, 13, 19355, '1767.57|-2507.65|14.47', '0.00|-0.00|0.00', '0|0'),
(37, 1, 13, 19447, '1782.08|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(38, 1, 13, 19385, '1767.55|-2504.44|14.47', '0.00|0.00|0.00', '0|0'),
(39, 1, 13, 19355, '1787.06|-2512.38|14.47', '0.00|180.00|90.00', '0|0'),
(40, 1, 13, 19447, '1793.44|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(41, 1, 13, 19447, '1782.08|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(42, 1, 13, 19355, '1787.06|-2496.51|14.47', '-0.00|180.00|90.00', '0|0'),
(43, 1, 13, 19447, '1793.44|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(44, 1, 13, 19355, '1767.57|-2501.23|14.47', '0.00|-0.00|0.00', '0|0'),
(45, 1, 13, 19355, '1767.57|-2498.02|14.47', '0.00|-0.00|0.00', '0|0'),
(46, 1, 13, 19379, '1772.02|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(47, 1, 13, 19379, '1782.52|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(48, 1, 13, 19379, '1793.01|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(49, 1, 13, 19447, '1798.17|-2507.46|14.45', '0.00|180.00|180.00', '0|0'),
(50, 1, 13, 19447, '1798.18|-2501.30|14.47', '0.00|180.00|180.00', '0|0'),
(51, 1, 13, 19379, '1772.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(52, 1, 13, 19379, '1783.20|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(53, 1, 13, 19379, '1793.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(54, 1, 13, 19379, '1772.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(55, 1, 13, 19379, '1783.20|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(56, 1, 13, 19379, '1793.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(57, 1, 14, 1502, '1757.68|-2488.32|13.74', '0.00|0.00|0.00', '0|0'),
(58, 1, 14, 19379, '1772.02|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(59, 1, 14, 19379, '1782.52|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(60, 1, 14, 19379, '1793.01|-2507.65|12.62', '0.00|90.00|0.00', '0|0'),
(61, 1, 14, 19447, '1772.45|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(62, 1, 14, 19447, '1772.45|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(63, 1, 14, 19355, '1767.57|-2510.86|14.47', '0.00|-0.00|0.00', '0|0'),
(64, 1, 14, 19355, '1767.57|-2507.65|14.47', '0.00|-0.00|0.00', '0|0'),
(65, 1, 14, 19447, '1782.08|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(66, 1, 14, 19385, '1767.55|-2504.44|14.47', '0.00|0.00|0.00', '0|0'),
(67, 1, 14, 19355, '1787.06|-2512.38|14.47', '0.00|180.00|90.00', '0|0'),
(68, 1, 14, 19447, '1793.44|-2512.37|14.47', '0.00|180.00|90.00', '0|0'),
(69, 1, 14, 19447, '1782.08|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(70, 1, 14, 19355, '1787.06|-2496.51|14.47', '-0.00|180.00|90.00', '0|0'),
(71, 1, 14, 19447, '1793.44|-2496.50|14.47', '-0.00|180.00|90.00', '0|0'),
(72, 1, 14, 19355, '1767.57|-2501.23|14.47', '0.00|-0.00|0.00', '0|0'),
(73, 1, 14, 19355, '1767.57|-2498.02|14.47', '0.00|-0.00|0.00', '0|0'),
(74, 1, 14, 19379, '1772.02|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(75, 1, 14, 19379, '1782.52|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(76, 1, 14, 19379, '1793.01|-2501.18|12.61', '0.00|90.00|0.00', '0|0'),
(77, 1, 14, 19447, '1798.17|-2507.46|14.45', '0.00|180.00|180.00', '0|0'),
(78, 1, 14, 19447, '1798.18|-2501.30|14.47', '0.00|180.00|180.00', '0|0'),
(79, 1, 14, 19379, '1772.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(80, 1, 14, 19379, '1783.20|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(81, 1, 14, 19379, '1793.70|-2507.65|16.31', '0.00|90.00|0.00', '0|0'),
(82, 1, 14, 19379, '1772.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(83, 1, 14, 19379, '1783.20|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(84, 1, 14, 19379, '1793.70|-2501.18|16.30', '0.00|90.00|0.00', '0|0'),
(85, 1, 14, 19379, '1772.02|-2491.65|12.62', '0.00|90.00|0.00', '0|0'),
(86, 1, 14, 19379, '1782.52|-2491.65|12.62', '0.00|90.00|0.00', '0|0'),
(87, 1, 14, 19379, '1793.01|-2491.65|12.62', '0.00|90.00|0.00', '0|0'),
(88, 1, 14, 19447, '1772.45|-2480.50|14.47', '-0.00|180.00|90.00', '0|0'),
(89, 1, 14, 19447, '1772.45|-2496.37|14.47', '-0.00|180.00|90.00', '0|0'),
(90, 1, 14, 19355, '1767.57|-2494.86|14.47', '0.00|-0.00|0.00', '0|0'),
(91, 1, 14, 19355, '1767.57|-2491.65|14.47', '0.00|-0.00|0.00', '0|0'),
(92, 1, 14, 19447, '1782.08|-2496.37|14.47', '-0.00|180.00|90.00', '0|0'),
(93, 1, 14, 19385, '1767.55|-2488.44|14.47', '0.00|-0.00|0.00', '0|0'),
(94, 1, 14, 19355, '1787.06|-2496.38|14.47', '-0.00|180.00|90.00', '0|0'),
(95, 1, 14, 19447, '1793.44|-2496.37|14.47', '-0.00|180.00|90.00', '0|0'),
(96, 1, 14, 19447, '1782.08|-2480.50|14.47', '-0.00|180.00|90.00', '0|0'),
(97, 1, 14, 19355, '1787.06|-2480.51|14.47', '-0.00|180.00|90.00', '0|0'),
(98, 1, 14, 19447, '1793.44|-2480.50|14.47', '-0.00|180.00|90.00', '0|0'),
(99, 1, 14, 19355, '1767.57|-2485.23|14.47', '0.00|-0.00|0.00', '0|0'),
(100, 1, 14, 19355, '1767.57|-2482.02|14.47', '0.00|-0.00|0.00', '0|0'),
(101, 1, 14, 19379, '1772.02|-2485.19|12.61', '0.00|90.00|0.00', '0|0'),
(102, 1, 14, 19379, '1782.52|-2485.19|12.61', '0.00|90.00|0.00', '0|0'),
(103, 1, 14, 19379, '1793.01|-2485.19|12.61', '0.00|90.00|0.00', '0|0'),
(104, 1, 14, 19447, '1798.17|-2491.46|14.45', '0.00|180.00|-179.99', '0|0'),
(105, 1, 14, 19447, '1798.18|-2485.30|14.47', '0.00|180.00|-179.99', '0|0'),
(106, 1, 14, 19379, '1772.70|-2491.65|16.31', '0.00|90.00|0.00', '0|0'),
(107, 1, 13, 19379, '1752.27|-2501.23|12.62', '0.00|90.00|-179.99', '0|0'),
(108, 1, 13, 19447, '1751.83|-2496.51|14.47', '-0.00|180.00|-89.99', '0|0'),
(109, 1, 13, 19355, '1756.71|-2498.01|14.47', '0.00|-0.00|-179.99', '0|0'),
(110, 1, 13, 19355, '1756.71|-2501.22|14.47', '0.00|-0.00|-179.99', '0|0'),
(111, 1, 13, 19447, '1742.20|-2496.51|14.47', '-0.00|180.00|-89.99', '0|0'),
(112, 1, 13, 19385, '1756.72|-2504.43|14.47', '0.00|-0.00|-179.99', '0|0'),
(113, 1, 13, 19355, '1737.22|-2496.50|14.47', '-0.00|180.00|-89.99', '0|0'),
(114, 1, 13, 19447, '1730.84|-2496.51|14.47', '-0.00|180.00|-89.99', '0|0'),
(115, 1, 13, 19447, '1742.20|-2512.38|14.47', '-0.00|180.00|-89.99', '0|0'),
(116, 1, 13, 19355, '1737.22|-2512.37|14.47', '-0.00|180.00|-89.99', '0|0'),
(117, 1, 13, 19447, '1730.84|-2512.38|14.47', '-0.00|180.00|-89.99', '0|0'),
(118, 1, 13, 19355, '1756.71|-2507.65|14.47', '0.00|-0.00|-179.99', '0|0'),
(119, 1, 13, 19355, '1756.71|-2510.86|14.47', '0.00|-0.00|-179.99', '0|0'),
(120, 1, 13, 19379, '1752.27|-2507.69|12.61', '0.00|90.00|-179.99', '0|0'),
(121, 1, 13, 19379, '1741.76|-2507.69|12.61', '0.00|90.00|-179.99', '0|0'),
(122, 1, 13, 19379, '1731.27|-2507.69|12.61', '0.00|90.00|-179.99', '0|0'),
(123, 1, 13, 19447, '1726.11|-2501.41|14.47', '0.00|180.00|0.00', '0|0'),
(124, 1, 13, 19447, '1726.10|-2507.58|14.44', '0.00|180.00|0.00', '0|0'),
(125, 1, 13, 19379, '1751.58|-2501.23|16.31', '0.00|90.00|-179.99', '0|0'),
(126, 1, 13, 19379, '1741.08|-2501.23|16.31', '0.00|90.00|-179.99', '0|0'),
(127, 1, 13, 19379, '1730.58|-2501.23|16.31', '0.00|90.00|-179.99', '0|0'),
(128, 1, 13, 19379, '1751.58|-2507.69|16.30', '0.00|90.00|-179.99', '0|0'),
(214, 1, 17, 1502, '1432.22|1595.17|9.94', '0.00|0.00|89.79', '0|0'),
(215, 1, 17, 19449, '1427.38|1607.05|11.68', '0.00|0.00|89.99', '0|0'),
(216, 1, 17, 19357, '1420.96|1607.05|11.68', '0.00|0.00|89.99', '0|0'),
(217, 1, 17, 19449, '1427.38|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(218, 1, 17, 19357, '1420.96|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(219, 1, 17, 19449, '1419.45|1602.32|11.68', '0.00|0.00|0.00', '0|0'),
(220, 1, 17, 19357, '1419.46|1592.70|11.68', '0.00|0.00|0.00', '0|0'),
(221, 1, 17, 19357, '1419.46|1595.91|11.68', '0.00|0.00|0.00', '0|0'),
(222, 1, 17, 19449, '1432.09|1602.33|11.68', '0.00|0.00|0.00', '0|0'),
(223, 1, 17, 19387, '1432.09|1595.91|11.68', '0.00|0.00|0.00', '0|0'),
(224, 1, 17, 19357, '1432.09|1592.71|11.68', '0.00|0.00|0.00', '0|0'),
(225, 1, 17, 19379, '1424.77|1602.18|9.85', '0.00|90.00|0.00', '0|0'),
(226, 1, 17, 19370, '1421.21|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(227, 1, 17, 19370, '1421.21|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(228, 1, 17, 19370, '1424.71|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(229, 1, 17, 19370, '1424.71|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(230, 1, 17, 19370, '1428.18|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(231, 1, 17, 19370, '1428.18|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(232, 1, 17, 19370, '1431.68|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(233, 1, 17, 19370, '1431.68|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(234, 1, 17, 19370, '1431.75|1602.17|9.85', '0.00|90.00|0.00', '0|0'),
(235, 1, 17, 19370, '1431.75|1598.96|9.85', '0.00|90.00|0.00', '0|0'),
(236, 1, 17, 19370, '1431.75|1605.38|9.85', '0.00|90.00|0.00', '0|0'),
(237, 1, 17, 19379, '1424.77|1602.18|13.35', '0.00|90.00|0.00', '0|0'),
(238, 1, 17, 19370, '1421.21|1595.76|13.35', '0.00|90.00|0.00', '0|0'),
(239, 1, 17, 19370, '1421.21|1592.55|13.35', '0.00|90.00|0.00', '0|0'),
(240, 1, 17, 19370, '1424.71|1595.76|13.35', '0.00|90.00|0.00', '0|0'),
(241, 1, 17, 19370, '1424.71|1592.55|13.35', '0.00|90.00|0.00', '0|0'),
(242, 1, 17, 19370, '1428.18|1595.76|13.35', '0.00|90.00|0.00', '0|0'),
(243, 1, 17, 19370, '1428.18|1592.55|13.35', '0.00|90.00|0.00', '0|0'),
(244, 1, 17, 19370, '1431.68|1595.76|13.35', '0.00|90.00|0.00', '0|0'),
(245, 1, 17, 19370, '1431.68|1592.55|13.35', '0.00|90.00|0.00', '0|0'),
(246, 1, 17, 19370, '1431.75|1602.17|13.35', '0.00|90.00|0.00', '0|0'),
(247, 1, 17, 19370, '1431.75|1598.96|13.35', '0.00|90.00|0.00', '0|0'),
(248, 1, 17, 19370, '1431.75|1605.38|13.35', '0.00|90.00|0.00', '0|0'),
(249, 1, 18, 1502, '1432.24|1579.11|9.95', '0.00|0.00|90.19', '0|0'),
(250, 1, 18, 19449, '1427.38|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(251, 1, 18, 19357, '1420.96|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(252, 1, 18, 19449, '1427.38|1574.99|11.68', '0.00|0.00|89.99', '0|0'),
(253, 1, 18, 19357, '1420.96|1574.99|11.68', '0.00|0.00|89.99', '0|0'),
(254, 1, 18, 19449, '1419.45|1586.29|11.68', '0.00|0.00|0.00', '0|0'),
(255, 1, 18, 19357, '1419.46|1576.67|11.68', '0.00|0.00|0.00', '0|0'),
(256, 1, 18, 19357, '1419.46|1579.88|11.68', '0.00|0.00|0.00', '0|0'),
(257, 1, 18, 19449, '1432.09|1586.30|11.68', '0.00|0.00|0.00', '0|0'),
(258, 1, 18, 19387, '1432.09|1579.88|11.68', '0.00|0.00|0.00', '0|0'),
(259, 1, 18, 19357, '1432.09|1576.68|11.68', '0.00|0.00|0.00', '0|0'),
(260, 1, 18, 19379, '1424.77|1586.14|9.85', '0.00|90.00|0.00', '0|0'),
(261, 1, 18, 19370, '1421.21|1579.72|9.85', '0.00|90.00|0.00', '0|0'),
(262, 1, 18, 19370, '1421.21|1576.51|9.85', '0.00|90.00|0.00', '0|0'),
(263, 1, 18, 19370, '1424.71|1579.72|9.85', '0.00|90.00|0.00', '0|0'),
(264, 1, 18, 19370, '1424.71|1576.51|9.85', '0.00|90.00|0.00', '0|0'),
(265, 1, 18, 19370, '1428.18|1579.72|9.85', '0.00|90.00|0.00', '0|0'),
(266, 1, 18, 19370, '1428.18|1576.51|9.85', '0.00|90.00|0.00', '0|0'),
(267, 1, 18, 19370, '1431.68|1579.72|9.85', '0.00|90.00|0.00', '0|0'),
(268, 1, 18, 19370, '1431.68|1576.51|9.85', '0.00|90.00|0.00', '0|0'),
(269, 1, 18, 19370, '1431.75|1586.14|9.85', '0.00|90.00|0.00', '0|0'),
(270, 1, 18, 19370, '1431.75|1582.93|9.85', '0.00|90.00|0.00', '0|0'),
(271, 1, 18, 19370, '1431.75|1589.35|9.85', '0.00|90.00|0.00', '0|0'),
(272, 1, 18, 19379, '1424.77|1586.14|13.35', '0.00|90.00|0.00', '0|0'),
(273, 1, 18, 19370, '1421.21|1579.72|13.35', '0.00|90.00|0.00', '0|0'),
(274, 1, 18, 19370, '1421.21|1576.51|13.35', '0.00|90.00|0.00', '0|0'),
(275, 1, 18, 19370, '1424.71|1579.72|13.35', '0.00|90.00|0.00', '0|0'),
(276, 1, 18, 19370, '1424.71|1576.51|13.35', '0.00|90.00|0.00', '0|0'),
(277, 1, 18, 19370, '1428.18|1579.72|13.35', '0.00|90.00|0.00', '0|0'),
(278, 1, 18, 19370, '1428.18|1576.51|13.35', '0.00|90.00|0.00', '0|0'),
(279, 1, 18, 19370, '1431.68|1579.72|13.35', '0.00|90.00|0.00', '0|0'),
(280, 1, 18, 19370, '1431.68|1576.51|13.35', '0.00|90.00|0.00', '0|0'),
(281, 1, 18, 19370, '1431.75|1586.14|13.35', '0.00|90.00|0.00', '0|0'),
(282, 1, 18, 19370, '1431.75|1582.93|13.35', '0.00|90.00|0.00', '0|0'),
(283, 1, 18, 19370, '1431.75|1589.35|13.35', '0.00|90.00|0.00', '0|0'),
(284, 1, 19, 1536, '1432.10|1564.60|9.92', '0.00|0.00|-89.69', '0|0'),
(285, 1, 19, 19449, '1427.38|1574.96|11.68', '0.00|0.00|89.99', '0|0'),
(286, 1, 19, 19357, '1420.96|1574.96|11.68', '0.00|0.00|89.99', '0|0'),
(287, 1, 19, 19449, '1427.38|1558.93|11.68', '0.00|0.00|89.99', '0|0'),
(288, 1, 19, 19357, '1420.96|1558.93|11.68', '0.00|0.00|89.99', '0|0'),
(289, 1, 19, 19449, '1419.45|1570.23|11.68', '0.00|0.00|0.00', '0|0'),
(290, 1, 19, 19357, '1419.46|1560.61|11.68', '0.00|0.00|0.00', '0|0'),
(291, 1, 19, 19357, '1419.46|1563.82|11.68', '0.00|0.00|0.00', '0|0'),
(292, 1, 19, 19449, '1432.09|1570.24|11.68', '0.00|0.00|0.00', '0|0'),
(293, 1, 19, 19387, '1432.09|1563.82|11.68', '0.00|0.00|0.00', '0|0'),
(294, 1, 19, 19357, '1432.09|1560.62|11.68', '0.00|0.00|0.00', '0|0'),
(295, 1, 19, 19379, '1424.77|1570.09|9.85', '0.00|90.00|0.00', '0|0'),
(296, 1, 19, 19370, '1421.21|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(297, 1, 19, 19370, '1421.21|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(298, 1, 19, 19370, '1424.71|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(299, 1, 19, 19370, '1424.71|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(300, 1, 19, 19370, '1428.18|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(301, 1, 19, 19370, '1428.18|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(302, 1, 19, 19370, '1431.68|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(303, 1, 19, 19370, '1431.68|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(304, 1, 19, 19370, '1431.75|1570.08|9.85', '0.00|90.00|0.00', '0|0'),
(305, 1, 19, 19370, '1431.75|1566.87|9.85', '0.00|90.00|0.00', '0|0'),
(306, 1, 19, 19370, '1431.75|1573.29|9.85', '0.00|90.00|0.00', '0|0'),
(307, 1, 19, 19379, '1424.77|1570.09|13.35', '0.00|90.00|0.00', '0|0'),
(308, 1, 19, 19370, '1421.21|1563.67|13.35', '0.00|90.00|0.00', '0|0'),
(309, 1, 19, 19370, '1421.21|1560.46|13.35', '0.00|90.00|0.00', '0|0'),
(310, 1, 19, 19370, '1424.71|1563.67|13.35', '0.00|90.00|0.00', '0|0'),
(311, 1, 19, 19370, '1424.71|1560.46|13.35', '0.00|90.00|0.00', '0|0'),
(312, 1, 19, 19370, '1428.18|1563.67|13.35', '0.00|90.00|0.00', '0|0'),
(313, 1, 19, 19370, '1428.18|1560.46|13.35', '0.00|90.00|0.00', '0|0'),
(314, 1, 19, 19370, '1431.68|1563.67|13.35', '0.00|90.00|0.00', '0|0'),
(315, 1, 19, 19370, '1431.68|1560.46|13.35', '0.00|90.00|0.00', '0|0'),
(316, 1, 19, 19370, '1431.75|1570.08|13.35', '0.00|90.00|0.00', '0|0'),
(317, 1, 19, 19370, '1431.75|1566.87|13.35', '0.00|90.00|0.00', '0|0'),
(318, 1, 19, 19370, '1431.75|1573.29|13.35', '0.00|90.00|0.00', '0|0'),
(419, 1, 22, 1502, '1437.13|1596.69|9.94', '0.00|0.00|-90.00', '0|0'),
(420, 1, 22, 19449, '1437.26|1602.34|11.68', '0.00|0.00|0.00', '0|0'),
(421, 1, 22, 19387, '1437.26|1595.92|11.68', '0.00|0.00|0.00', '0|0'),
(422, 1, 22, 19357, '1437.26|1592.72|11.68', '0.00|0.00|0.00', '0|0'),
(423, 1, 22, 19449, '1445.19|1607.05|11.68', '0.00|0.00|89.99', '0|0'),
(424, 1, 22, 19357, '1438.77|1607.05|11.68', '0.00|0.00|89.99', '0|0'),
(425, 1, 22, 19449, '1445.19|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(426, 1, 22, 19357, '1438.77|1591.02|11.68', '0.00|0.00|89.99', '0|0'),
(427, 1, 22, 19449, '1449.91|1602.33|11.68', '0.00|0.00|0.00', '0|0'),
(428, 1, 22, 19357, '1449.92|1592.71|11.68', '0.00|0.00|0.00', '0|0'),
(429, 1, 22, 19357, '1449.92|1595.92|11.68', '0.00|0.00|0.00', '0|0'),
(430, 1, 22, 19379, '1441.18|1602.18|9.85', '0.00|90.00|0.00', '0|0'),
(431, 1, 22, 19370, '1437.62|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(432, 1, 22, 19370, '1437.62|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(433, 1, 22, 19370, '1441.12|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(434, 1, 22, 19370, '1441.12|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(435, 1, 22, 19370, '1444.59|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(436, 1, 22, 19370, '1444.59|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(437, 1, 22, 19370, '1448.09|1595.76|9.85', '0.00|90.00|0.00', '0|0'),
(438, 1, 22, 19370, '1448.09|1592.55|9.85', '0.00|90.00|0.00', '0|0'),
(439, 1, 22, 19370, '1448.16|1602.18|9.85', '0.00|90.00|0.00', '0|0'),
(440, 1, 22, 19370, '1448.16|1598.97|9.85', '0.00|90.00|0.00', '0|0'),
(441, 1, 22, 19370, '1448.16|1605.39|9.85', '0.00|90.00|0.00', '0|0'),
(442, 1, 22, 19379, '1441.18|1602.18|13.36', '0.00|90.00|0.00', '0|0'),
(443, 1, 22, 19370, '1437.62|1595.76|13.36', '0.00|90.00|0.00', '0|0'),
(444, 1, 22, 19370, '1437.62|1592.55|13.36', '0.00|90.00|0.00', '0|0'),
(445, 1, 22, 19370, '1441.12|1595.76|13.36', '0.00|90.00|0.00', '0|0'),
(446, 1, 22, 19370, '1441.12|1592.55|13.36', '0.00|90.00|0.00', '0|0'),
(447, 1, 22, 19370, '1444.59|1595.76|13.36', '0.00|90.00|0.00', '0|0'),
(448, 1, 22, 19370, '1444.59|1592.55|13.36', '0.00|90.00|0.00', '0|0'),
(449, 1, 22, 19370, '1448.09|1595.76|13.36', '0.00|90.00|0.00', '0|0'),
(450, 1, 22, 19370, '1448.09|1592.55|13.36', '0.00|90.00|0.00', '0|0'),
(451, 1, 22, 19370, '1448.16|1602.18|13.36', '0.00|90.00|0.00', '0|0'),
(452, 1, 22, 19370, '1448.16|1598.97|13.36', '0.00|90.00|0.00', '0|0'),
(453, 1, 22, 19370, '1448.16|1605.39|13.36', '0.00|90.00|0.00', '0|0'),
(454, 1, 23, 1502, '1437.10|1580.65|9.92', '0.00|0.00|-89.79', '0|0'),
(455, 1, 23, 19449, '1437.26|1586.28|11.68', '0.00|0.00|0.00', '0|0'),
(456, 1, 23, 19387, '1437.26|1579.86|11.68', '0.00|0.00|0.00', '0|0'),
(457, 1, 23, 19357, '1437.26|1576.66|11.68', '0.00|0.00|0.00', '0|0'),
(458, 1, 23, 19449, '1445.19|1590.99|11.68', '0.00|0.00|89.99', '0|0'),
(459, 1, 23, 19357, '1438.77|1590.99|11.68', '0.00|0.00|89.99', '0|0'),
(460, 1, 23, 19449, '1445.19|1574.96|11.68', '0.00|0.00|89.99', '0|0'),
(461, 1, 23, 19357, '1438.77|1574.96|11.68', '0.00|0.00|89.99', '0|0'),
(462, 1, 23, 19449, '1449.91|1586.27|11.68', '0.00|0.00|0.00', '0|0'),
(463, 1, 23, 19357, '1449.92|1576.65|11.68', '0.00|0.00|0.00', '0|0'),
(464, 1, 23, 19357, '1449.92|1579.86|11.68', '0.00|0.00|0.00', '0|0'),
(465, 1, 23, 19379, '1441.18|1586.12|9.85', '0.00|90.00|0.00', '0|0'),
(466, 1, 23, 19370, '1437.62|1579.70|9.85', '0.00|90.00|0.00', '0|0'),
(467, 1, 23, 19370, '1437.62|1576.49|9.85', '0.00|90.00|0.00', '0|0'),
(468, 1, 23, 19370, '1441.12|1579.70|9.85', '0.00|90.00|0.00', '0|0'),
(469, 1, 23, 19370, '1441.12|1576.49|9.85', '0.00|90.00|0.00', '0|0'),
(470, 1, 23, 19370, '1444.59|1579.70|9.85', '0.00|90.00|0.00', '0|0'),
(471, 1, 23, 19370, '1444.59|1576.49|9.85', '0.00|90.00|0.00', '0|0'),
(472, 1, 23, 19370, '1448.09|1579.70|9.85', '0.00|90.00|0.00', '0|0'),
(473, 1, 23, 19370, '1448.09|1576.49|9.85', '0.00|90.00|0.00', '0|0'),
(474, 1, 23, 19370, '1448.16|1586.12|9.85', '0.00|90.00|0.00', '0|0'),
(475, 1, 23, 19370, '1448.16|1582.90|9.85', '0.00|90.00|0.00', '0|0'),
(476, 1, 23, 19370, '1448.16|1589.33|9.85', '0.00|90.00|0.00', '0|0'),
(477, 1, 23, 19379, '1441.18|1586.12|13.36', '0.00|90.00|0.00', '0|0'),
(478, 1, 23, 19370, '1437.62|1579.70|13.36', '0.00|90.00|0.00', '0|0'),
(479, 1, 23, 19370, '1437.62|1576.49|13.36', '0.00|90.00|0.00', '0|0'),
(480, 1, 23, 19370, '1441.12|1579.70|13.36', '0.00|90.00|0.00', '0|0'),
(481, 1, 23, 19370, '1441.12|1576.49|13.36', '0.00|90.00|0.00', '0|0'),
(482, 1, 23, 19370, '1444.59|1579.70|13.36', '0.00|90.00|0.00', '0|0'),
(483, 1, 23, 19370, '1444.59|1576.49|13.36', '0.00|90.00|0.00', '0|0'),
(484, 1, 23, 19370, '1448.09|1579.70|13.36', '0.00|90.00|0.00', '0|0'),
(485, 1, 23, 19370, '1448.09|1576.49|13.36', '0.00|90.00|0.00', '0|0'),
(486, 1, 23, 19370, '1448.16|1586.12|13.36', '0.00|90.00|0.00', '0|0'),
(487, 1, 23, 19370, '1448.16|1582.90|13.36', '0.00|90.00|0.00', '0|0'),
(488, 1, 23, 19370, '1448.16|1589.33|13.36', '0.00|90.00|0.00', '0|0'),
(489, 1, 24, 1502, '1437.07|1564.60|9.96', '0.00|0.00|-89.09', '0|0'),
(490, 1, 24, 19449, '1437.26|1570.24|11.68', '0.00|0.00|0.00', '0|0'),
(491, 1, 24, 19387, '1437.26|1563.82|11.68', '0.00|0.00|0.00', '0|0'),
(492, 1, 24, 19357, '1437.26|1560.62|11.68', '0.00|0.00|0.00', '0|0'),
(493, 1, 24, 19449, '1445.19|1574.95|11.68', '0.00|0.00|89.99', '0|0'),
(494, 1, 24, 19357, '1438.77|1574.95|11.68', '0.00|0.00|89.99', '0|0'),
(495, 1, 24, 19449, '1445.19|1558.92|11.68', '0.00|0.00|89.99', '0|0'),
(496, 1, 24, 19357, '1438.77|1558.92|11.68', '0.00|0.00|89.99', '0|0'),
(497, 1, 24, 19449, '1449.91|1570.23|11.68', '0.00|0.00|0.00', '0|0'),
(498, 1, 24, 19357, '1449.92|1560.61|11.68', '0.00|0.00|0.00', '0|0'),
(499, 1, 24, 19357, '1449.92|1563.82|11.68', '0.00|0.00|0.00', '0|0'),
(500, 1, 24, 19379, '1441.18|1570.09|9.85', '0.00|90.00|0.00', '0|0'),
(501, 1, 24, 19370, '1437.62|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(502, 1, 24, 19370, '1437.62|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(503, 1, 24, 19370, '1441.12|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(504, 1, 24, 19370, '1441.12|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(505, 1, 24, 19370, '1444.59|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(506, 1, 24, 19370, '1444.59|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(507, 1, 24, 19370, '1448.09|1563.67|9.85', '0.00|90.00|0.00', '0|0'),
(508, 1, 24, 19370, '1448.09|1560.46|9.85', '0.00|90.00|0.00', '0|0'),
(509, 1, 24, 19370, '1448.16|1570.08|9.85', '0.00|90.00|0.00', '0|0'),
(510, 1, 24, 19370, '1448.16|1566.87|9.85', '0.00|90.00|0.00', '0|0'),
(511, 1, 24, 19370, '1448.16|1573.29|9.85', '0.00|90.00|0.00', '0|0'),
(512, 1, 24, 19379, '1441.18|1570.09|13.36', '0.00|90.00|0.00', '0|0'),
(513, 1, 24, 19370, '1437.62|1563.67|13.36', '0.00|90.00|0.00', '0|0'),
(514, 1, 24, 19370, '1437.62|1560.46|13.36', '0.00|90.00|0.00', '0|0'),
(515, 1, 24, 19370, '1441.12|1563.67|13.36', '0.00|90.00|0.00', '0|0'),
(516, 1, 24, 19370, '1441.12|1560.46|13.36', '0.00|90.00|0.00', '0|0'),
(517, 1, 24, 19370, '1444.59|1563.67|13.36', '0.00|90.00|0.00', '0|0'),
(518, 1, 24, 19370, '1444.59|1560.46|13.36', '0.00|90.00|0.00', '0|0'),
(519, 1, 24, 19370, '1448.09|1563.67|13.36', '0.00|90.00|0.00', '0|0'),
(520, 1, 24, 19370, '1448.09|1560.46|13.36', '0.00|90.00|0.00', '0|0'),
(521, 1, 24, 19370, '1448.16|1570.08|13.36', '0.00|90.00|0.00', '0|0'),
(522, 1, 24, 19370, '1448.16|1566.87|13.36', '0.00|90.00|0.00', '0|0'),
(523, 1, 24, 19370, '1448.16|1573.29|13.36', '0.00|90.00|0.00', '0|0'),
(524, 0, 0, 0, '0.00|0.00|0.00	', '0.00|0.00|0.00	', '0|0');

-- --------------------------------------------------------

--
-- Table structure for table `flat_weapon`
--

CREATE TABLE `flat_weapon` (
  `id` int(10) UNSIGNED NOT NULL,
  `flatroomid` int(10) UNSIGNED NOT NULL,
  `weaponid` tinyint(3) UNSIGNED NOT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `durability` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `furnitureID` int(11) NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(11) NOT NULL DEFAULT 0,
  `furnitureX` float NOT NULL DEFAULT 0,
  `furnitureY` float NOT NULL DEFAULT 0,
  `furnitureZ` float NOT NULL DEFAULT 0,
  `furnitureRX` float NOT NULL DEFAULT 0,
  `furnitureRY` float NOT NULL DEFAULT 0,
  `furnitureRZ` float NOT NULL DEFAULT 0,
  `furnitureType` int(11) NOT NULL DEFAULT 0,
  `furnitureUnused` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `furnitureStatus` int(10) UNSIGNED NOT NULL,
  `furnitureMaterials` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `furnobject`
--

CREATE TABLE `furnobject` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `storeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `materials` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnobject`
--

INSERT INTO `furnobject` (`id`, `model`, `name`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `price`, `stock`, `storeid`, `materials`) VALUES
(48, 2205, '{0000FF}Meja Belajar', 1464.33, 1791.55, 9.836, 0, 0, 89, 100, 3, 4, '1339|1339|0|0|0|0|0|0|0|0|0|0|0|'),
(49, 1715, 'kursi bar', 1465.28, 1792.26, 9.875, 0, 0, -87.901, 100, 5, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(54, 1797, 'Single Bed', 1467.28, 1783.54, 9.911, 0, 0.298, 89.9, 100, 10, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(118, 19787, 'Tv LED', 1484.54, 1777.87, 12.034, 0, 179.998, -90.597, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(121, 1736, 'Banteng Merah', 1484.38, 1775.03, 12.364, 0, 0, -89.097, 95, 10, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(122, 1745, 'Double Bed 2', 1467.29, 1787.95, 9.854, 0, 0, 89.999, 100, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(124, 2518, 'Wastafel', 1479.13, 1794.8, 10.116, 0, 0, -0.1, 100, 8, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(125, 2514, 'Closet', 1480.48, 1794.77, 9.885, 0, 0, -2.801, 100, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(126, 2522, 'Bathub', 1482.77, 1794.84, 9.855, 0, 0, 179.901, 100, 8, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(127, 2066, 'Cabinet Book', 1463.93, 1789.99, 9.906, 0, 0, -88.499, 100, 7, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(142, 1661, 'Kipas Gantung', 1473.71, 1778.54, 13.055, 0, 0, 0, 90, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(143, 2002, 'Dispenser', 1477.63, 1767.23, 9.895, 0, 0, -179.7, 80, 7, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(144, 2627, 'Treadmill', 1475.53, 1794.22, 9.866, 0, 0, 0.7, 100, 8, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(145, 2629, 'Bench Press', 1470.59, 1794.67, 9.864, 0, 0, -0.1, 100, 8, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(146, 2254, 'MAP', 1484.46, 1776.24, 12.324, 0, 0, -90.499, 90, 8, 4, '110|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(147, 1829, 'Brankas uang', 1468.78, 1794.56, 10.376, 0, 0, 0, 100, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(165, 2630, 'Sepeda Statis', 1472.81, 1794.58, 9.885, 0, 0, -178.9, 100, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(166, 2069, 'Lampu Batang', 1464.67, 1780.12, 9.944, 0, 0, 0, 85, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(169, 2106, 'Lampu Belajar', 1478.45, 1767.12, 10.944, 0, 0, 0, 80, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(189, 2517, 'Shower', 1483.85, 1793.76, 9.854, 0, 0, -0.199, 100, 8, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(215, 2820, 'Mangkuk Dan Gelas', 1473.83, 1775.94, 10.946, 0, 0, 0, 75, 9, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(451, 2259, '{9D00FF} [RZ] Frame Flower', 1468.08, 1794.83, 11.965, 0, 0, 0, 90, 23, 3, '5775|6429|229|0|0|0|0|0|0|0|0|0|'),
(453, 2267, '{9D00FF} [RZ] Frame Base', 1466.75, 1795.28, 12.446, 0, 0, -0.1, 90, 21, 3, '455|6193|0|0|0|0|0|0|0|0|0|0|0|0'),
(455, 2116, '{9D00FF} [RZ] Diner Table', 1479.64, 1779, 9.935, 0, 0, 90.499, 90, 21, 3, '300|300|0|0|0|0|0|0|0|0|0|0|0|0|'),
(456, 2357, '{9D00FF} [RZ] Long Table', 1478.48, 1779.27, 10.305, 0, 0, 90.097, 90, 27, 3, '4220|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(459, 1815, '{9D00FF} [RZ] Round Table', 1479.19, 1780.58, 9.925, 0, 0, 0, 90, 20, 3, '1162|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(463, 2293, '{9D00FF} [RZ] Single Sofa', 1478.9, 1783.55, 9.916, 0, 0, 0, 90, 21, 3, '5775|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(465, 2079, '{9D00FF} [RZ] Chair Simple', 1481.02, 1786.39, 10.595, 0, 0, 2.098, 90, 15, 3, '5986|5986|229|229|463|463|0|0|0|'),
(466, 2566, '{9D00FF} [RZ] Modern Bed', 1466.33, 1770.01, 10.295, 0, 0, 89.999, 1, 23, 3, '463|455|455|0|0|0|0|0|0|0|0|0|0|'),
(467, 14446, '{9D00FF} [RZ] Luxury Bed', 1465.56, 1776.09, 10.505, 0, 0, 90.097, 90, 19, 3, '1067|463|0|0|0|0|0|0|0|0|0|0|0|0'),
(478, 19787, '{9D00FF} [RZ] TV Small', 1478.54, 1770.45, 12.853, 0.499, -0.6, -179.899, 90, 13, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(479, 19786, '{9D00FF} [RZ] TV Big', 1476.59, 1770.39, 12.664, 0, 0, 179.998, 90, 12, 3, '455|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(480, 14720, '{9D00FF} [RZ] 1 Phair Kitchen', 1482.98, 1790.72, 9.833, 0, 0, 89.799, 100, 18, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(486, 2516, '{9D00FF} [RZ] Luxury Tub', 1466.24, 1790.98, 9.925, 0, 0, 89.899, 90, 16, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(489, 2525, '{9D00FF} [RZ] Medium Toilet', 1464.36, 1790.42, 9.965, 0, 0, 90.597, 90, 16, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(491, 2841, '{9D00FF} [RZ] Carpet Round', 1473.71, 1795.3, 11.404, 89.399, -11.097, 11.597, 90, 17, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(493, 11707, '{9D00FF} [RZ] Towels', 1463.86, 1793.35, 11.354, 0, 0, 90.097, 90, 12, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(494, 1661, '{9D00FF} [RZ] Rotating Fan', 1475.27, 1785.47, 12.895, 0, 0, 0, 90, 18, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(499, 2229, '{9D00FF} [RZ] Speaker Bass', 1484.37, 1774.62, 10.942, 0, 0, -89.899, 90, 17, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(503, 2576, '{9D00FF} [RZ] 2 Door Wardrobe', 1464.22, 1782.08, 9.916, 0, 0, 89.9, 90, 17, 3, '463|455|455|0|0|0|0|0|0|0|0|0|0|'),
(506, 2069, '{9D00FF} [RZ] Bowl Lamp', 1465.37, 1787.05, 9.965, 0, 0, 0, 90, 10, 3, '463|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(509, 2002, '{9D00FF} [RZ] Drinking Places', 1466.26, 1787.92, 9.876, 0, 0, 91.194, 90, 14, 3, '2453|2453|8703|8703|0|0|0|0|0|0|'),
(571, 2575, '{8B4513}[SYN] Modern Bed Set', 1466.3, 1781.45, 10.295, 0, 0, 89.999, 150, 20, 1, '463|8704|0|0|0|0|0|0|0|0|0|0|0|0'),
(572, 1797, '{8B4513}[SYN] Roundless Bed', 1467.31, 1785.34, 9.895, 0, 0, 89.999, 125, 20, 1, '463|8702|8704|0|0|0|0|0|0|0|0|0|'),
(577, 2576, '{8B4513}[SYN] Darktone Cabinet', 1464.28, 1788.41, 9.906, 0, 0, 90, 125, 20, 1, '8704|8698|8698|0|0|0|0|0|0|0|0|0'),
(578, 2067, '{8B4513}[SYN] Light Wood Rack', 1464.3, 1792.43, 9.885, 0, 0, 90.097, 125, 20, 1, '229|455|455|455|455|455|0|0|0|0|'),
(579, 2108, '{8B4513}[SYN] Wood Stand Lamp', 1464.16, 1793.48, 9.916, 0, 0, 0, 125, 20, 1, '463|1067|1310|0|0|0|0|0|0|0|0|0|'),
(580, 2069, '{8B4513}[SYN] Wood Frame Lamp', 1464.17, 1794.4, 9.965, 0, 0, 0, 125, 20, 1, '463|1067|0|0|0|0|0|0|0|0|0|0|0|0'),
(581, 2815, '{8B4513}[SYN] Long Mirror', 1466.45, 1795.31, 10.93, -0.398, -89.999, 89.999, 125, 20, 1, '220|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(582, 11737, '{8B4513}[SYN] Square Mirror', 1467.19, 1795.31, 11.423, 0, -89.899, 89.999, 125, 20, 1, '220|5266|0|0|0|0|0|0|8273|0|42|0'),
(584, 1753, '{8B4513}[SYN] Long Soft Sofa', 1468.68, 1794.76, 9.895, 0, 0, 0, 150, 20, 1, '229|4118|4118|4118|4118|4118|0|0'),
(585, 1713, '{8B4513}[SYN] Satin Long Sofa', 1471.9, 1794.76, 9.895, 0, 0, 0, 125, 20, 1, '455|1067|463|0|0|0|0|0|0|0|0|0|0'),
(586, 1754, '{8B4513}[SYN] Single Soft Sofa', 1470.67, 1793.75, 9.895, 0, 0, -90, 125, 20, 1, '229|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(587, 2293, '{8B4513}[SYN] Unrest Soft Sofa', 1470.67, 1792.74, 9.895, 0, 0, 0, 125, 20, 1, '229|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(588, 1708, '{8B4513}[SYN] Single Satin Sofa', 1474.58, 1794, 9.885, 0, 0, -90.097, 125, 20, 1, '455|1067|463|0|0|0|0|0|0|0|0|0|0'),
(589, 2632, '{8B4513}[SYN] Marble Carpet', 1468.61, 1793.51, 9.895, 0, 0, 0, 125, 20, 1, '4670|4118|4118|4118|4118|4118|4|'),
(590, 2315, '{8B4513}[SYN] Grey Round Table', 1467.69, 1793.48, 9.946, 0, 0, 0, 125, 20, 1, '8704|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(591, 2631, '{8B4513}[SYN] Abstract Carpet', 1473.22, 1793.59, 9.885, 0, 0, 0, 125, 20, 1, '7034|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(592, 2311, '{8B4513}[SYN] Classic Table', 1471.95, 1793.48, 9.935, 0, 0, 0, 125, 20, 1, '1868|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(600, 2184, 'Meja Kerja', 1465.31, 1770.89, 9.906, 0, 0, 55.098, 110, 8, 4, '455|52|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(604, 19786, 'TV 45 INCH', 1484.59, 1779.96, 12.126, 0.097, -179.699, -89.999, 110, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(605, 19999, 'Kursi Kerja', 1464.85, 1772.44, 9.885, 0, 0, 51.199, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(610, 14866, 'Double Bed', 1465.18, 1774.83, 10.496, 0, 0, 88.899, 100, 5, 4, '1328|463|0|287|287|455|455|0|0|0'),
(612, 2307, 'Vintage Cupbord', 1465.37, 1785.74, 9.906, 0, 0, 89.999, 100, 4, 4, '0|463|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(613, 2257, 'Picture', 1464.83, 1794.52, 10.845, -14.899, 0, 29.499, 90, 10, 4, '0|0|8357|0|0|0|0|0|0|0|0|0|0|0|0'),
(616, 2576, 'Cupboard White Set', 1484.01, 1785.07, 9.895, 0, 0, -89.499, 100, 5, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(618, 1788, 'Lgay DVD', 1484.19, 1780.47, 11.015, 0, 0, -90.399, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(621, 1703, 'Family Sofa Vintage', 1473.37, 1786.38, 9.906, 0, 0, 0, 110, 3, 4, '0|1339|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(624, 19786, '{8B4513}[SYN] LCD TV 32 Inch', 1477.27, 1795.44, 12.036, 0, 0, 0, 150, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(625, 19787, '{8B4513}[SYN] LCD TV 24 Inch', 1479.89, 1795.37, 11.916, 0, 0, 0, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(627, 2514, '{8B4513}[SYN] White Toilet', 1481.63, 1794.69, 9.895, 0, 0, 0, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(628, 2516, '{8B4513}[SYN] White Bathtub', 1482.61, 1794.88, 9.916, 0, 0, 0, 150, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(629, 2517, '{8B4513}[SYN] White Shower', 1483.82, 1792.54, 9.965, 0, 0, 0, 150, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(630, 2523, '{8B4513}[SYN] Stand White Sink', 1484.07, 1792, 9.965, 0, 0, -91.195, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(631, 2518, '{8B4513}[SYN] White Marble Sink', 1484.06, 1790.63, 10.196, 0, 0, -88.999, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(632, 1736, '{FFFFFF}Banteng PDIP', 1484.18, 1785.57, 12.064, 0, 0, -94.399, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(633, 2332, '{8B4513}[SYN] Big White Safe', 1484.09, 1785.47, 10.354, 0, 0, -90.5, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(634, 2229, '{8B4513}[SYN] \" I \" Speaker', 1479.11, 1795.42, 9.906, 0, 0, 4.8, 125, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(635, 19174, '{8B4513}[SYN] Big Map', 1484.48, 1783.19, 12.175, 0, 0, -89.999, 100, 20, 1, '110|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(636, 1808, '{8B4513}[SYN] Water Cooler', 1484.25, 1784.24, 9.916, 0, 0, -92.097, 130, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(638, 2269, '{8B4513}[SYN] Potrait 2', 1484.01, 1778.49, 11.765, 0, 0, -91.899, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(639, 19173, '{8B4513}[SYN] Potrait 1', 1484.51, 1780.33, 12.104, 0, 0, -90.097, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(641, 2820, '{8B4513}[SYN] Plate', 1482.48, 1767.27, 10.965, 0, 0, -45.395, 100, 20, 1, '463|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(644, 2030, '{8B4513}[SYN] Round Table', 1464.7, 1777.08, 10.305, 0, 0, 0, 80, 20, 1, '0|102|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(645, 2184, '{8B4513}[SYN] Desk', 1465.94, 1773.03, 9.916, 0, 0, 75.194, 200, 20, 1, '0|102|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(646, 19999, '{8B4513}[SYN] Office Chair', 1464.66, 1774.3, 9.895, 0, 0, 83.8, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(647, 11706, '{8B4513}[SYN] Trash Bin', 1484.28, 1768.4, 9.885, 0, 0, 90.597, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(648, 11707, '{8B4513}[SYN] Towel Hanging', 1483.08, 1795.24, 10.965, 0, 0, 0, 125, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(649, 2123, '{8B4513}[SYN] White Chair', 1464.83, 1776.16, 10.484, 0, 0, -95, 125, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(666, 1828, 'Tiger Coat', 1474.49, 1784.66, 9.906, 0, 0, 0, 100, 10, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(685, 2151, '{8B4513}[SYN] Kitchen 2', 1482.67, 1766.97, 9.906, 0, 0, 179.8, 125, 20, 1, '455|463|455|463|463|463|463|463|'),
(691, 2272, '{8B4513}[SYN] Potrait 7', 1483.99, 1773.1, 11.616, 0, 0, -89.799, 100, 20, 1, '463|528|0|0|0|0|0|0|0|0|0|0|0|0|'),
(692, 2263, '{8B4513}[SYN] Potrait 4', 1484.01, 1776.44, 11.746, 0, 0, -90.195, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(693, 2284, '{8B4513}[SYN] Potrait 5', 1484, 1775.44, 11.685, 0, 0, -90, 100, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(709, 2160, '{8B4513}[SYN] Kitchen Faucet', 1481.29, 1766.97, 9.895, 0, 0, -179.899, 125, 20, 1, '463|463|463|455|455|455|455|0|0|'),
(724, 2135, '{8B4513}[SYN] Kitchen Stove', 1479.94, 1767.16, 9.786, 0, 0, 180, 125, 20, 1, '97|463|455|463|463|463|0|0|0|0|0'),
(730, 2147, '{8B4513}[SYN] Fridge', 1478.93, 1767.17, 9.776, 0, 0, 179.5, 150, 20, 1, '1052|5708|5708|8273|138|10|10|1|'),
(750, 2149, '{8B4513}[SYN] Microwave', 1483.91, 1769.98, 11.126, 0, 0, -91.5, 125, 20, 1, '5708|5708|5708|5708|5708|5708|5|'),
(763, 2230, '{8B4513}[SYN] Air Conditioner', 1463.63, 1783.56, 12.715, 1.7, -90.097, 89.8, 200, 20, 1, '995|455|463|631|631|455|268|268|'),
(824, 2357, '{8B4513}[SYN] Long Marble Table', 1476.29, 1781.98, 10.345, 0, 0, 92.399, 125, 21, 1, '1339|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(848, 1828, '{8B4513}[SYN] Tiger Skin', 1465.98, 1779.42, 9.895, 0, 0, 0, 125, 20, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(860, 1828, '{9D00FF} [RZ] Tiger Carpet', 1474.49, 1784.01, 9.895, 0, 0, 0, 90, 22, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(861, 1760, '{9D00FF} [RZ] Fabric Sofa', 1478.94, 1786.55, 9.935, 0, 0, -89.3, 90, 15, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(862, 1755, '{9D00FF} [RZ] Leather Sofa', 1478.89, 1788.04, 9.895, 0, 0, -89.597, 90, 15, 3, '5775|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(863, 2124, '{9D00FF} [RZ] Luxury Sofa', 1481.02, 1785.52, 10.736, 0, 0, 1.802, 90, 18, 3, '455|463|0|0|0|0|0|0|0|0|0|0|0|0|'),
(864, 2066, '{9D00FF} [RZ] Cupboard', 1467.19, 1787.48, 9.866, 0, 0, 0, 90, 18, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(866, 2257, '{9D00FF} [RZ] Color Frame', 1469.87, 1795.29, 12.145, 0, 0, 0, 90, 12, 3, '463|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(867, 1736, '{9D00FF} [RZ] Ornate Horn', 1471.82, 1795.02, 12.645, 0, 0, 0, 90, 14, 3, '8113|8702|8702|0|0|0|0|0|0|0|0|0'),
(868, 1208, '{9D00FF} [RZ] Washer', 1466.15, 1793.39, 9.866, 0, 0, -96.999, 90, 14, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(869, 11737, '{9D00FF} [RZ] Carpet Welcome', 1472.49, 1795.32, 11.578, 89.899, 0.298, 0, 90, 17, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(872, 1702, '{9D00FF} [RZ] Luxury Sofa', 1480.05, 1788.62, 9.805, 0, 0, 178.899, 90, 16, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(879, 14866, '{9D00FF} [RZ] Bed 2 Pillows', 1465.06, 1779.01, 10.385, 0, 0, 89.9, 90, 14, 3, '277|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(880, 1805, '{9D00FF} [RZ] Short Chair', 1481.11, 1784.83, 10.095, 0, 0, 0, 90, 10, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(883, 2827, '{9D00FF} [RZ] Book', 1484.05, 1778.97, 10.975, 0, 0, -59.2, 90, 17, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(885, 19999, '{9D00FF} [RZ] Chair Work', 1481.13, 1784.08, 9.866, 0, 0, -92, 90, 17, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(886, 1743, '{9D00FF} [RZ] Decorative Cabine', 1468.38, 1785.56, 9.854, 0, 0, 89.299, 90, 11, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(919, 1742, '{9D00FF} [RZ] Book Cabinet', 1468.37, 1788.18, 9.916, 0, 0, -4.598, 90, 13, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(930, 1742, 'Wine rak', 1476.99, 1766.51, 10.906, 0, 0, 179.8, 200, 30, 1, '2709|2709|335|0|0|0|0|0|0|0|0|0|'),
(934, 2833, '{9D00FF} [RZ] Fur Mat', 1463.81, 1775.28, 12.682, -0.597, 90.499, 0, 90, 18, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(939, 2855, '{9D00FF} [RZ] News Book', 1484.11, 1780.03, 10.946, 0, 0, 0, 90, 18, 3, '229|206|455|206|455|455|455|455|'),
(942, 2108, '{9D00FF} [RZ] Prone Lamp', 1464.79, 1787.1, 9.876, 0, 0, -80.597, 90, 8, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(943, 2566, 'Kasur Serba Guna', 1466.63, 1779.53, 10.465, 0, 0, 88.698, 120, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(957, 2140, 'kithcenset 5', 1479.38, 1767.16, 9.854, 0, 0, 179.5, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(958, 2138, 'kithcenset 6', 1481.36, 1767.22, 9.906, 0, 0, 178.899, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(960, 2139, 'kithcenset 7', 1478.39, 1767.18, 9.852, 0, 0.097, -179.399, 90, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(961, 1706, 'Black Kursi Premium', 1474.93, 1782.99, 9.965, 0, 0, -179.6, 110, 3, 4, '0|0|8693|0|0|0|0|0|0|0|0|0|0|0|0'),
(962, 1704, 'Kursi Kecil Premium', 1476.64, 1783.49, 9.786, 0, 0, -151.899, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(963, 1705, 'Unnamed', 1472.94, 1783.07, 9.906, 0, 0, 145, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(965, 2109, 'meja bundar premium', 1474.33, 1784.76, 10.116, 0, 0, 0, 100, 3, 4, '1339|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(969, 2135, 'kithcenset 1', 1480.37, 1767.21, 9.876, 0, 0, 178.6, 100, 3, 4, '96|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(970, 2136, 'kithcenset 2', 1483.34, 1767.12, 9.895, 0, 0, 178.298, 100, 3, 4, '1339|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(973, 2108, 'lampu tiyang kecil', 1464.13, 1790.7, 9.876, 0, 0, 0, 80, 4, 4, '463|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(975, 2229, 'speaker', 1484.44, 1781.08, 10.946, 0, 0, -87.299, 100, 3, 4, '1339|287|0|0|0|0|0|0|0|0|0|0|0|0'),
(977, 2573, 'lemari dan meja', 1464.18, 1776.05, 9.776, 0, 0, 90.9, 120, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(978, 2632, 'karpet permadani motif', 1474.66, 1779.28, 9.906, 0, 0, 0, 100, 3, 4, '785|0|0|0|0|0|0|0|0|0|0|0|0|0|0|'),
(979, 11707, 'handuk', 1479.72, 1795.27, 11.956, 0, 0, 0, 85, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(980, 19173, 'lukisan pemandangan', 1484.51, 1773.49, 12.366, 0, 0, 89.699, 85, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(981, 2313, 'meja tv', 1475.07, 1777.27, 9.916, 0, 0, -179.899, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(982, 2008, '{9D00FF} [RZ] Table For Work', 1473.84, 1775.02, 9.855, 0, 0, 0.2, 90, 9, 3, '455|6219|0|0|0|0|0|0|0|0|0|0|0|0'),
(985, 2139, '{9D00FF} [RZ] Storage', 1478.96, 1794.81, 9.876, 0, 0, 0, 89, 19, 3, '463|5775|229|7484|0|0|0|0|0|0|0|'),
(986, 2140, '{9D00FF} [RZ] Kithcen Storage', 1479.93, 1794.81, 9.906, 0, 0, 0, 89, 20, 3, '463|8705|0|0|0|0|0|0|0|0|0|0|0|0'),
(988, 2153, '{9D00FF} [RZ] Refriegator', 1481.14, 1795.08, 9.715, 0, 0, 0, 89, 19, 3, '268|212|0|0|0|0|0|0|0|0|0|0|0|0|'),
(990, 2032, 'meja makan', 1473.92, 1775.1, 9.866, 0, 0, 0, 110, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(992, 2123, 'kursi', 1474.28, 1774.36, 10.476, 0, 0, -85.899, 100, 3, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(993, 2827, 'Komik Doujin', 1484.01, 1781.04, 10.986, 0, 0, 0, 80, 5, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(994, 2226, 'BoomBox', 1484.07, 1780.17, 10.916, 0.299, 0, -108.399, 80, 5, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(995, 2114, 'Bola Basket', 1484.08, 1779.14, 11.076, 0, 0, 0, 80, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(996, 2812, 'Piring&Gelas', 1472.87, 1778.97, 10.775, 0, 0, 82.298, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(997, 1828, 'Kulit Macan', 1471.96, 1772.3, 9.935, 0, 0, 0, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(998, 1481, 'BBQ Toast', 1484.02, 1791.81, 10.475, 0, 0, -90.401, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1000, 2135, 'Kitchen Set 1', 1478.99, 1794.81, 9.776, 0, 0, 0, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1001, 2136, 'Kitchen Set 2', 1476.97, 1794.81, 9.765, 0, 0, 0, 130, 6, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1002, 14720, 'Kitchen Set Besar', 1484, 1793.83, 9.876, 0, 0, -179, 150, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1006, 11706, 'Tempat Sampah', 1484.1, 1790.9, 9.869, 0, -2.099, -90.499, 100, 4, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1007, 2002, 'Dispenser', 1483.75, 1790.2, 9.806, 0, 0, -88.399, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1008, 2828, 'Foto Kenangan', 1484.15, 1778.3, 10.946, 0, 0, 84.499, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1009, 2566, 'Bed Set 1', 1464.19, 1792.8, 10.466, 0, 0, 0, 140, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1010, 2298, 'Bed Set 2', 1468.23, 1791.35, 9.886, 0, 0, 0, 140, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1012, 1797, 'Bed Set 3', 1472.02, 1791.83, 9.896, 0, 0, 0, 140, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1013, 2106, 'Lampu Tidur', 1468.12, 1795.1, 10.406, 0, 0, 0, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1014, 2069, 'Lampu Panjang', 1467.62, 1793.37, 10.016, 0, 0, 0, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1015, 2257, 'Picture 1', 1465.73, 1795.29, 12.165, 0, 48.999, 0, 110, 5, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1016, 2522, 'BathTub', 1464.38, 1784.36, 9.876, 0, 0, -91, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1018, 2517, 'Shower', 1465.33, 1785.77, 9.936, 0, 0, 88.399, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1020, 2514, 'Toilet', 1464.65, 1787.2, 9.896, 0, 0, 91.8, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1021, 2518, 'Wastafel', 1464.25, 1787.62, 9.943, 0, -2.399, 85.199, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1022, 11707, 'Handuk', 1463.86, 1788.98, 10.906, 0, 0, 90.2, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1023, 2066, 'Lemari Baju', 1471.12, 1793.54, 9.886, 0, 0, 0, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1024, 2025, 'Lemari Kayu', 1474.65, 1794.75, 10.006, 0, 0, 0, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1025, 2526, 'Bathub 2', 1465.49, 1790.11, 10.046, 0, 0, 178.8, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1026, 2184, 'Meja Kerja', 1466.08, 1778.44, 9.886, 0, 0, 88.199, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1027, 19999, 'Kursi Kerja', 1464.36, 1779.44, 9.916, 0, 0, 90.299, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1028, 2190, 'Computer', 1466.17, 1779.27, 10.616, 0, 0, -95.199, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1029, 2255, 'Picture 2', 1484.02, 1780.34, 12.016, 0, 0, -91.7, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1030, 19174, 'Picture 3', 1484.51, 1778.46, 12.216, 0, 0, -90, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1031, 19173, 'Picture 4', 1484.42, 1775.99, 12.106, 0, 0, -90.3, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1032, 19786, 'TV 18\"Inch', 1463.82, 1779.37, 12.386, 0, 0, 91.999, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1033, 19787, 'TV 12\"Inch', 1463.81, 1775.65, 12.366, 0, 0, 88.299, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1034, 2229, 'Speaker 1', 1463.77, 1777.78, 9.896, 0, 0, 93.399, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1035, 2230, 'Speaker 2', 1463.77, 1776.56, 9.936, 0, 0, 90.099, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1037, 1724, 'Small Sofa Modern', 1473.96, 1786.17, 9.836, 0, 0, 0.899, 120, 6, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1039, 1703, 'Sofa Modern', 1475.38, 1783.39, 9.866, 0, 0, -179.5, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1040, 2311, 'Tabble Modern', 1473.66, 1784.94, 9.866, 0, 0, 0, 124, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1041, 1736, 'Moose Head', 1470.65, 1768.5, 11.316, -89.999, 0, 179.2, 100, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1053, 19173, '{9D00FF} [RZ] Frame Background', 1467.43, 1795.3, 11.136, 0, 0, 0, 89, 0, 3, '455|463|463|463|463|463|463|463|'),
(1056, 2819, 'Tumpukan Baju', 1473.49, 1775.66, 11.546, 0, 0, -0.799, 120, 3, 6, '4220|455|4220|4220|0|0|0|0|0|0|0'),
(1057, 11737, 'Keset', 1464.77, 1768.27, 9.906, 0, 0, -90.9, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1059, 2818, 'Karpet Kotak\"', 1464.91, 1774.73, 9.926, 0, 0, 1.7, 120, 4, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1060, 2833, 'Sajadah', 1464.98, 1772.88, 9.926, 0, 0, 0, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1063, 2819, 'Tumpukan celana', 1474.5, 1775.6, 11.536, 0, 0, 0, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1064, 2357, 'Long Table', 1474.37, 1779.01, 10.326, 0, 0, 0, 130, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1065, 2120, 'Kursi makan', 1474.44, 1777.86, 10.446, 0, 0, -85.299, 110, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'),
(1066, 2028, 'PlayStation', 1465.77, 1778.56, 10.726, 0, 0, -98.4, 120, 3, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0');

-- --------------------------------------------------------

--
-- Table structure for table `furnstore`
--

CREATE TABLE `furnstore` (
  `id` int(10) UNSIGNED NOT NULL,
  `ownername` varchar(24) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `i_x` float NOT NULL,
  `i_y` float NOT NULL,
  `i_z` float NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `vault` int(11) NOT NULL,
  `employe1` tinyint(4) NOT NULL,
  `employe2` tinyint(4) NOT NULL,
  `employe3` tinyint(4) NOT NULL,
  `seal` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnstore`
--

INSERT INTO `furnstore` (`id`, `ownername`, `name`, `x`, `y`, `z`, `i_x`, `i_y`, `i_z`, `owner`, `price`, `vault`, `employe1`, `employe2`, `employe3`, `seal`) VALUES
(1, 'Guluu', '{8B4513}SYNTAGE Furniture', 1022.5, -1418, 13.5, 1464.3, 1768, 10.8, 181, 250000, 675, 127, 0, 0, 0),
(3, 'NONE', '{9209A5} Furniture House', 2050.8, -1802.5, 14.8, 1464.3, 1768, 10.8, 0, 500000, 0, 0, 0, 0, 1),
(4, 'Octo_Bastiand', '[Royall King]World Of Furniture', 776.2, -1036.3, 24.2, 1464.3, 1768, 10.8, 4712, 250000, 6564, 127, 0, 0, 1),
(6, 'NONE', 'Ideal Homie Store', 2351.3, -1412, 23.7, 1464.3, 1768, 10.8, 0, 500000, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `ID` int(11) NOT NULL,
  `model` int(11) NOT NULL DEFAULT 0,
  `password` varchar(36) NOT NULL DEFAULT '',
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `vip` tinyint(4) NOT NULL DEFAULT 0,
  `faction` tinyint(4) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `speed` float NOT NULL DEFAULT 2,
  `cX` float NOT NULL,
  `cY` float NOT NULL,
  `cZ` float NOT NULL,
  `cRX` float NOT NULL,
  `cRY` float NOT NULL,
  `cRZ` float NOT NULL,
  `oX` float NOT NULL,
  `oY` float NOT NULL,
  `oZ` float NOT NULL,
  `oRX` float NOT NULL,
  `oRY` float NOT NULL,
  `oRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`ID`, `model`, `password`, `admin`, `vip`, `faction`, `family`, `speed`, `cX`, `cY`, `cZ`, `cRX`, `cRY`, `cRZ`, `oX`, `oY`, `oZ`, `oRX`, `oRY`, `oRZ`) VALUES
(1, 19437, '22334455', 0, 0, 0, -1, 2, 1366.54, -1307.76, 830.88, 0, 0, 0, 1372.24, -1305.96, 830.88, 0, 0, 0),
(2, 989, '', 0, 0, 1, -1, 2, 1544.93, -1627.39, 13.9828, 0, 0, 20, 1544.93, -1627.39, 10.3828, 0, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `gstations`
--

CREATE TABLE `gstations` (
  `id` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 10000,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `gstations`
--

INSERT INTO `gstations` (`id`, `stock`, `posx`, `posy`, `posz`) VALUES
(0, 0, 1944.9, -1773.37, 13.3828),
(1, 0, -92.2154, -1174.04, 2.28273);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL DEFAULT '-',
  `address` varchar(50) DEFAULT 'None',
  `price` int(11) NOT NULL DEFAULT 500000,
  `type` int(11) NOT NULL DEFAULT 1,
  `locked` int(11) NOT NULL DEFAULT 1,
  `money` int(11) NOT NULL DEFAULT 0,
  `houseint` int(11) NOT NULL DEFAULT 0,
  `extvw` int(11) NOT NULL DEFAULT 0,
  `extint` int(11) NOT NULL DEFAULT 0,
  `extposx` float NOT NULL DEFAULT 0,
  `extposy` float NOT NULL DEFAULT 0,
  `extposz` float NOT NULL DEFAULT 0,
  `extposa` float NOT NULL DEFAULT 0,
  `intposx` float NOT NULL DEFAULT 0,
  `intposy` float NOT NULL DEFAULT 0,
  `intposz` float NOT NULL DEFAULT 0,
  `intposa` float NOT NULL DEFAULT 0,
  `visit` bigint(16) DEFAULT 0,
  `garage` int(11) NOT NULL DEFAULT 0,
  `garageposx` float NOT NULL DEFAULT 0,
  `garageposy` float NOT NULL DEFAULT 0,
  `garageposz` float NOT NULL DEFAULT 0,
  `houseBuilder` int(11) NOT NULL DEFAULT 0,
  `houseBuilderTime` int(11) NOT NULL DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `owner`, `address`, `price`, `type`, `locked`, `money`, `houseint`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intposx`, `intposy`, `intposz`, `intposa`, `visit`, `garage`, `garageposx`, `garageposy`, `garageposz`, `houseBuilder`, `houseBuilderTime`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`) VALUES
(0, '-', 'Richman', 18500000, 3, 1, 0, 1, 0, 0, 254.383, -1367.13, 53.1094, 308.929, 4577.82, -2527.82, 5.28, 262.63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, '-', 'Ganton', 1100000, 1, 0, 0, 3, 0, 0, 2244.67, -1637.69, 16.2379, 173.673, 387.78, 634.47, 1009.67, 91.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Jesse_Pope', 'Downtown Los Santos', 1100000, 2, 0, 2000000, 1, 0, 0, 1898.52, -1998.06, 13.5469, 174.253, 338.78, 1734.95, 1002.08, 268.46, 1702709577, 0, 0, 0, 0, 0, 0, 29, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '-', 'Temple', 1100000, 2, 1, 0, 5, 0, 0, 1103.39, -1069.53, 31.8828, 265.052, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '-', 'Temple', 1100000, 2, 1, 0, 5, 0, 0, 1103.4, -1092.62, 28.4688, 283.561, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '-', 'Temple', 1100000, 2, 1, 0, 5, 0, 0, 1051.04, -1058.63, 34.7966, 185.398, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '-', 'Temple', 1100000, 3, 1, 0, 1, 0, 0, 993.796, -1059.03, 33.6995, 184.527, 1855.38, -1709.12, 1720.06, 273.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '-', 'Temple', 1100000, 2, 1, 0, 5, 0, 0, 985.978, -1094.39, 27.6041, 12.4449, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '-', 'Marina', 1100000, 2, 1, 0, 5, 0, 0, 877.894, -1514.8, 14.3431, 310.582, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '-', 'Marina', 1100000, 2, 1, 0, 5, 0, 0, 761.139, -1564.11, 13.9219, 94.9112, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '-', 'Marina', 1100000, 2, 1, 0, 5, 0, 0, 841.377, -1471.38, 14.3071, 23.5443, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '-', 'Marina', 1100000, 2, 1, 0, 5, 0, 0, 898.487, -1472.83, 14.3402, 351.41, 1384.5, 1518.17, 10.95, 270.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `housestruct`
--

CREATE TABLE `housestruct` (
  `ID` int(11) NOT NULL,
  `HouseID` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL,
  `Material` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `housestruct`
--

INSERT INTO `housestruct` (`ID`, `HouseID`, `Model`, `PosX`, `PosY`, `PosZ`, `RotX`, `RotY`, `RotZ`, `Material`, `Color`, `Type`) VALUES
(1, 0, 970, 1396.82, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(2, 0, 970, 1392.63, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(3, 0, 970, 1388.43, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(4, 0, 970, 1384.23, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(5, 0, 19379, 1388.85, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(6, 0, 19379, 1388.85, 1523.01, 9.8724, 0, 90, 0, 0, 0, 1),
(7, 0, 19379, 1399.32, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(8, 0, 19379, 1399.32, 1523, 9.8724, 0, 90, 0, 0, 0, 1),
(9, 0, 19449, 1383.7, 1513.39, 11.6784, 0, 0, 0, 0, 0, 1),
(10, 0, 19449, 1383.7, 1523.01, 11.6784, 0, 0, 0, 0, 0, 1),
(11, 0, 19449, 1388.54, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(12, 0, 19449, 1398.16, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(13, 0, 19379, 1409.82, 1523, 9.8724, 0, 90, 0, 0, 0, 1),
(14, 0, 19449, 1407.78, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(15, 0, 19379, 1409.82, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(16, 0, 19357, 1414.2, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(17, 0, 19449, 1414.97, 1523.01, 11.6784, 0, 0, 0, 0, 0, 1),
(18, 0, 19449, 1414.97, 1513.38, 11.6784, 0, 0, 0, 0, 0, 1),
(19, 0, 19449, 1407.78, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(20, 0, 19357, 1414.2, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(21, 0, 19449, 1398.15, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(22, 0, 19449, 1388.54, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(23, 0, 19379, 1409.82, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(24, 0, 19379, 1399.36, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(25, 0, 19357, 1394.18, 1526.06, 11.6784, 0, 0, 0, 0, 0, 1),
(26, 0, 19387, 1394.18, 1522.86, 11.6784, 0, 0, 0, 0, 0, 1),
(27, 0, 19449, 1394.18, 1516.6, 11.6784, 0, 0, 0, 0, 0, 1),
(28, 0, 1502, 1394.13, 1523.64, 9.9384, 0, 0, -90, 0, 0, 1),
(29, 0, 19357, 1399.07, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(30, 0, 19379, 1404.16, 1513.39, 13.5125, 0, 90, 0, 0, 0, 1),
(31, 0, 19449, 1408.54, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(32, 0, 14414, 1397.08, 1509.77, 10.2284, 0, 0, 90, 0, 0, 1),
(33, 0, 19387, 1402.25, 1518.12, 11.6784, 0, 0, 90, 0, 0, 1),
(34, 0, 19357, 1395.87, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(35, 0, 19387, 1402.25, 1510.32, 11.6784, 0, 0, 180, 0, 0, 1),
(36, 0, 19370, 1397.16, 1516.58, 13.5125, 0, 90, 0, 0, 0, 1),
(37, 0, 19462, 1411.14, 1513.38, 13.5125, 0, 90, 0, 0, 0, 1),
(38, 0, 19462, 1414.63, 1513.38, 13.5125, 0, 90, 0, 0, 0, 1),
(39, 0, 19430, 1414.13, 1518.11, 11.6784, 0, 0, -90, 0, 0, 1),
(40, 0, 19357, 1400.56, 1511.83, 11.6784, 0, 0, 90, 0, 0, 1),
(41, 0, 19357, 1397.35, 1511.89, 11.6784, 0, 0, 90, 0, 0, 1),
(42, 0, 19430, 1395.04, 1511.89, 11.6784, 0, 0, -90, 0, 0, 1),
(43, 0, 19370, 1397.16, 1513.41, 13.5125, 0, 90, 0, 0, 0, 1),
(44, 0, 19449, 1414.97, 1523.01, 15.1684, 0, 0, 0, 0, 0, 1),
(45, 0, 19449, 1414.97, 1513.38, 15.1684, 0, 0, 0, 0, 0, 1),
(46, 0, 19379, 1388.87, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(47, 0, 19462, 1390.59, 1513.55, 13.5125, 0, 90, 270, 0, 0, 1),
(48, 0, 19462, 1390.59, 1517.03, 13.5125, 0, 90, 270, 0, 0, 1),
(49, 0, 19370, 1384.05, 1513.41, 13.5125, 0, 90, 0, 0, 0, 1),
(50, 0, 19449, 1383.7, 1523.01, 15.1684, 0, 0, 0, 0, 0, 1),
(51, 0, 19449, 1383.7, 1513.38, 15.1684, 0, 0, 0, 0, 0, 1),
(52, 0, 19449, 1407.78, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(53, 0, 19357, 1414.2, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(54, 0, 19449, 1398.18, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(55, 0, 19449, 1388.59, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(56, 0, 19449, 1388.54, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(57, 0, 19449, 1398.16, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(58, 0, 19449, 1407.79, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(59, 0, 19357, 1414.2, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(60, 0, 19379, 1388.85, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(61, 0, 19379, 1388.85, 1523.01, 16.9925, 0, 90, 0, 0, 0, 1),
(62, 0, 19379, 1399.32, 1523, 16.9925, 0, 90, 0, 0, 0, 1),
(63, 0, 19379, 1399.32, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(64, 0, 19379, 1409.82, 1523, 16.9925, 0, 90, 0, 0, 0, 1),
(65, 0, 19379, 1409.82, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(66, 0, 1502, 1403, 1518.13, 9.9384, 0, 0, -180, 0, 0, 1),
(154, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(155, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(156, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(157, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(158, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(159, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(160, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(161, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(162, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(163, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(164, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(165, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(166, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(167, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(168, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(169, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(170, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(171, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(172, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(173, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(174, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(175, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(176, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(177, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(178, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(179, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(180, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(181, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(182, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(183, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(184, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(185, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(186, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(187, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(188, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(189, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(190, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(191, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(192, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(193, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(194, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(195, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(196, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(197, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(198, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(199, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(200, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(201, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(202, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(203, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(204, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(205, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(206, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(207, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(208, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(209, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(210, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(211, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(212, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(213, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(214, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(215, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(216, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(217, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(218, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(219, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(220, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(221, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(222, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(223, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(224, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(225, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(226, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(227, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(228, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(229, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(230, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(231, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(232, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(233, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(234, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(235, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(236, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(237, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(238, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(239, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(240, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(241, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(242, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(243, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(244, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(245, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(246, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(247, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(248, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(249, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(250, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(251, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(252, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(253, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(254, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(255, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(256, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(257, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(258, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(259, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(260, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(261, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(262, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(263, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(264, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(265, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(266, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(267, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(268, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(269, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(270, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(271, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(272, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(273, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(274, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(275, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(276, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(277, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(278, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(279, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(280, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(281, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(282, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(283, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(284, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(285, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(286, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(287, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(288, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(289, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(290, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(291, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(292, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(293, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(294, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(295, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(296, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(297, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(298, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(299, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(300, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(301, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(302, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(303, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(304, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(305, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(306, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(307, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(308, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(309, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(310, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(311, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(312, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(313, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(314, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(315, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(316, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(317, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(318, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(319, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(320, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(321, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(322, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(323, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(324, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(325, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(326, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(327, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(328, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(329, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(330, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(331, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(332, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(333, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(334, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(335, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(336, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(337, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(338, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(339, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(340, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(341, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(342, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(343, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(344, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(345, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(346, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(347, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(348, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(349, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(350, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(351, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(373, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(374, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(375, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(376, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(377, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(378, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(379, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(380, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(381, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(382, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(383, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(384, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(385, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(386, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(387, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(388, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(389, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(390, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(391, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(392, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(393, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(394, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(395, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(396, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(397, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(398, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(399, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(400, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(401, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(402, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(403, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(404, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(405, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(406, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(407, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(408, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(409, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(410, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(411, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(412, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(413, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(414, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(415, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(416, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(417, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(418, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(419, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(420, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(421, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(422, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(423, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(424, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(425, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(426, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(427, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(428, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(429, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(430, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(431, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(432, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(433, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(434, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(435, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(436, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(437, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(438, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(460, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(461, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(462, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(463, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(464, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(465, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(466, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(467, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(468, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(469, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(470, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(471, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(472, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(473, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(474, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(475, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(476, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(477, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(478, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(479, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(480, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(481, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(482, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(483, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(484, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(485, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(486, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(487, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(488, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(489, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(490, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(491, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(492, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(493, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(494, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(495, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(496, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(497, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(498, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(499, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(500, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(501, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(502, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(503, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(504, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(505, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(506, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(507, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(508, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(509, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(510, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(511, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(512, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(513, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(514, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(515, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(516, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(517, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(518, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(519, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(520, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(521, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(522, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(523, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(524, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(525, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(526, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(527, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(528, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(529, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(530, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(531, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(532, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(533, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(534, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(535, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(536, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(537, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(538, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(539, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(540, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(541, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(542, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(543, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(544, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(545, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(546, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(547, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(548, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(549, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(550, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(551, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(552, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(553, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(554, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(555, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(556, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(557, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(558, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(559, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(560, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(561, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(562, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(584, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(585, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(586, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(587, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(588, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(589, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(590, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(591, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(592, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(593, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(594, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(595, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(596, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(597, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(598, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(599, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(600, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(601, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(602, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(603, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(604, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(605, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(606, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(607, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(608, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(609, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(610, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(611, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(612, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(613, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(614, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(615, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(616, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(617, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(618, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(619, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(620, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(621, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(622, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(623, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(624, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(625, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(626, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(627, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(628, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(629, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(630, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(631, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(632, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(633, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(634, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(635, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(636, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(637, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(638, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(639, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(640, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(641, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(642, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(643, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(644, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(645, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(646, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(647, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(648, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(649, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(650, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(651, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(652, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(653, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(654, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(655, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(656, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(657, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(658, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(659, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(660, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(661, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(662, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(663, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(664, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(665, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(666, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(667, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(668, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(669, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(670, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(671, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(672, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(673, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(674, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(675, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(676, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(677, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(678, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(679, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(680, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(681, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(682, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(683, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(684, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(685, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(686, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(687, 0, 19367, 433.064, 0.6629, 1000.88, -180, 0, 270, 0, 0, 1),
(688, 0, 19367, 431.692, 607.11, 1000.88, 180, 0.0189, 180, 0, 0, 1),
(689, 0, 19367, 431.687, 610.299, 1000.88, 180, 0, 180, 0, 0, 1),
(690, 0, 1505, 8492.21, -2183.37, 999.819, 0, 0, 0, 0, 0, 1),
(691, 0, 1505, 431.691, 611.874, 999.168, 0, 0, 90, 0, 0, 1),
(692, 0, 19367, 431.695, 614.996, 1000.88, 180, 0, 180, 0, 0, 1),
(693, 0, 19367, 431.699, 618.19, 1000.88, 180, 0, 180, 0, 0, 1),
(694, 0, 19367, 429.8, 618.376, 1000.88, 180, 0, 90, 0, 0, 1),
(695, 0, 19367, 426.595, 618.386, 1000.88, 180, 0, 90, 0, 0, 1),
(696, 0, 19367, 423.4, 618.399, 1000.88, 180, 0, 90, 0, 0, 1),
(697, 0, 19367, 426.527, 619.989, 1000.88, 180, 0, 180, 0, 0, 1),
(698, 0, 19367, 416.614, 620.03, 1000.87, 0, -180, 0, 0, 0, 1),
(699, 0, 19367, 416.265, 618.361, 1000.88, 180, 0, 90, 0, 0, 1),
(700, 0, 19367, 418.747, 618.353, 1000.88, 180, 0, 90, 0, 0, 1),
(701, 0, 19367, 413.304, 618.371, 1000.88, 180, 0, 90, 0, 0, 1),
(702, 0, 19367, 410.369, 618.39, 1000.88, 180, 0, 90, 0, 0, 1),
(703, 0, 19367, 416.13, 606.41, 1000.88, 180, 0, 90, 0, 0, 1),
(704, 0, 19367, 413.114, 606.416, 1000.88, 180, 0, 90, 0, 0, 1),
(705, 0, 19367, 411.55, 607.922, 1000.87, 0, -180.36, 0, 0, 0, 1),
(706, 0, 19367, 411.546, 611.113, 1000.87, 0, -180.36, 0, 0, 0, 1),
(707, 0, 19367, 411.545, 614.285, 1000.87, 0, -180.36, 0, 0, 0, 1),
(708, 0, 19367, 411.54, 617.329, 1000.87, 0, -180.36, 0, 0, 0, 1),
(709, 0, 19367, 417.767, 612.095, 1000.87, 0, -180.36, 0, 0, 0, 1),
(710, 0, 1491, 417.78, 613.683, 999.185, 0, 0, 90, 0, 0, 1),
(711, 0, 1491, 420.3, 618.362, 999.185, 0, 0, 0, 0, 0, 1),
(712, 0, 19367, 432.986, 618.375, 1000.88, 180, 0, 90, 0, 0, 1),
(713, 0, 19367, 420.929, 618.403, 1003.44, 180, -180, -90, 0, 0, 1),
(714, 0, 19367, 417.728, 614.346, 1003.42, 178, 180, 360, 0, 0, 1),
(715, 0, 19367, 431.165, 612.774, 1003.32, 0, -18.36, 359.799, 0, 0, 1),
(716, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(717, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(718, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(719, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(720, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(721, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(722, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(723, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(724, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(725, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(726, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(727, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(728, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(729, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(730, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(731, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(732, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(733, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(734, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(735, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(736, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(737, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(738, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(739, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(740, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(741, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(742, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(743, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(744, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(745, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(746, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(747, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(748, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(749, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(750, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(751, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(752, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(753, 0, 19379, 427.058, 602.686, 1002.68, 540, 990, 450, 0, 0, 1),
(754, 0, 19379, 427.058, 613.025, 1002.68, 540, 990, 450, 0, 0, 1),
(755, 0, 19379, 427.058, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(756, 0, 19379, 417.508, 623.415, 1002.68, 540, 990, 450, 0, 0, 1),
(757, 0, 19379, 417.508, 612.946, 1002.68, 540, 990, 450, 0, 0, 1),
(758, 0, 19379, 417.508, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(759, 0, 19379, 408.058, 602.546, 1002.68, 540, 990, 450, 0, 0, 1),
(760, 0, 19379, 408.058, 613.016, 1002.68, 540, 990, 450, 0, 0, 1),
(761, 0, 19379, 427.058, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(762, 0, 19379, 417.458, 613.145, 999.136, 540, 990, 450, 0, 0, 1),
(763, 0, 19379, 427.058, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(764, 0, 19379, 417.488, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(765, 0, 19379, 407.918, 602.686, 999.136, 540, 990, 450, 0, 0, 1),
(766, 0, 19379, 407.918, 613.085, 999.136, 540, 990, 450, 0, 0, 1),
(767, 0, 19379, 427.058, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(768, 0, 19379, 417.538, 623.546, 999.136, 540, 990, 450, 0, 0, 1),
(769, 0, 19367, 416.614, 623.171, 1000.87, 0, -180, 0, 0, 0, 1),
(770, 0, 19367, 416.614, 626.341, 1000.87, 0, -180, 0, 0, 0, 1),
(771, 0, 19367, 418.213, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(772, 0, 19367, 421.353, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(773, 0, 19367, 424.543, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(774, 0, 19367, 426.527, 623.14, 1000.88, 180, 0, 180, 0, 0, 1),
(775, 0, 19367, 426.527, 626.32, 1000.88, 180, 0, 180, 0, 0, 1),
(776, 0, 19367, 427.733, 627.912, 1000.87, 0, -180, 90, 0, 0, 1),
(777, 0, 19367, -922.011, 597.801, -0.2899, 0, 0, 0, 0, 0, 1),
(778, 0, 19367, 417.782, 616.789, 1000.87, 0, -180, 0, 0, 0, 1),
(779, 0, 19367, 417.774, 610.177, 1000.87, 0, -180.36, 0, 0, 0, 1),
(780, 0, 19367, 417.787, 606.978, 1000.87, 0, -180.36, 0, 0, 0, 1),
(781, 0, 19367, 419.409, 605.406, 1000.88, -180, 0, 270, 0, 0, 1),
(782, 0, 19367, 422.605, 605.411, 1000.88, -180, 0, 270, 0, 0, 1),
(783, 0, 19367, 425.797, 605.402, 1000.88, -180, 0, 270, 0, 0, 1),
(784, 0, 19367, 428.993, 605.394, 1000.88, -180, 0, 270, 0, 0, 1),
(785, 0, 19367, 417.775, 603.989, 1000.89, 0, -180.36, 0, 0, 0, 1),
(786, 0, 19367, 432.202, 605.396, 1000.88, -180, 0, 270, 0, 0, 1),
(787, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(788, 0, 19367, 5829.61, -4209.93, -6659.9, 0, 0, 0, 0, 0, 1),
(789, 0, 19367, 1683.82, -8018.71, -4805.49, 0, 0, 0, 0, 0, 1),
(819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(820, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(980, 0, 970, 1396.82, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(981, 0, 970, 1392.63, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(982, 0, 970, 1388.43, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(983, 0, 970, 1384.23, 1511.82, 14.1484, 0, 0, 0, 0, 0, 1),
(984, 0, 19379, 1388.85, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(985, 0, 19379, 1388.85, 1523.01, 9.8724, 0, 90, 0, 0, 0, 1),
(986, 0, 19379, 1399.32, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(987, 0, 19379, 1399.32, 1523, 9.8724, 0, 90, 0, 0, 0, 1),
(988, 0, 19449, 1383.7, 1513.39, 11.6784, 0, 0, 0, 0, 0, 1),
(989, 0, 19449, 1383.7, 1523.01, 11.6784, 0, 0, 0, 0, 0, 1),
(990, 0, 19449, 1388.54, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(991, 0, 19449, 1398.16, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(992, 0, 19379, 1409.82, 1523, 9.8724, 0, 90, 0, 0, 0, 1),
(993, 0, 19449, 1407.78, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(994, 0, 19379, 1409.82, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(995, 0, 19357, 1414.2, 1527.74, 11.6784, 0, 0, 90, 0, 0, 1),
(996, 0, 19449, 1414.97, 1523.01, 11.6784, 0, 0, 0, 0, 0, 1),
(997, 0, 19449, 1414.97, 1513.38, 11.6784, 0, 0, 0, 0, 0, 1),
(998, 0, 19449, 1407.78, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(999, 0, 19357, 1414.2, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(1000, 0, 19449, 1398.15, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(1001, 0, 19449, 1388.54, 1508.65, 11.6784, 0, 0, 90, 0, 0, 1),
(1002, 0, 19379, 1409.82, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(1003, 0, 19379, 1399.36, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(1004, 0, 19357, 1394.18, 1526.06, 11.6784, 0, 0, 0, 0, 0, 1),
(1005, 0, 19387, 1394.18, 1522.86, 11.6784, 0, 0, 0, 0, 0, 1),
(1006, 0, 19449, 1394.18, 1516.6, 11.6784, 0, 0, 0, 0, 0, 1),
(1007, 0, 1502, 1394.13, 1523.64, 9.9384, 0, 0, -90, 0, 0, 1),
(1008, 0, 19357, 1399.07, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(1009, 0, 19379, 1404.16, 1513.39, 13.5125, 0, 90, 0, 0, 0, 1),
(1010, 0, 19449, 1408.54, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(1011, 0, 14414, 1397.08, 1509.77, 10.2284, 0, 0, 90, 0, 0, 1),
(1012, 0, 19387, 1402.25, 1518.12, 11.6784, 0, 0, 90, 0, 0, 1),
(1013, 0, 19357, 1395.87, 1518.11, 11.6784, 0, 0, 90, 0, 0, 1),
(1014, 0, 19387, 1402.25, 1510.32, 11.6784, 0, 0, 180, 0, 0, 1),
(1015, 0, 19370, 1397.16, 1516.58, 13.5125, 0, 90, 0, 0, 0, 1),
(1016, 0, 19462, 1411.14, 1513.38, 13.5125, 0, 90, 0, 0, 0, 1),
(1017, 0, 19462, 1414.63, 1513.38, 13.5125, 0, 90, 0, 0, 0, 1),
(1018, 0, 19430, 1414.13, 1518.11, 11.6784, 0, 0, -90, 0, 0, 1),
(1019, 0, 19357, 1400.56, 1511.83, 11.6784, 0, 0, 90, 0, 0, 1),
(1020, 0, 19357, 1397.35, 1511.89, 11.6784, 0, 0, 90, 0, 0, 1),
(1021, 0, 19430, 1395.04, 1511.89, 11.6784, 0, 0, -90, 0, 0, 1),
(1022, 0, 19370, 1397.16, 1513.41, 13.5125, 0, 90, 0, 0, 0, 1),
(1023, 0, 19449, 1414.97, 1523.01, 15.1684, 0, 0, 0, 0, 0, 1),
(1024, 0, 19449, 1414.97, 1513.38, 15.1684, 0, 0, 0, 0, 0, 1),
(1025, 0, 19379, 1388.87, 1523, 13.5125, 0, 90, 0, 0, 0, 1),
(1026, 0, 19462, 1390.59, 1513.55, 13.5125, 0, 90, 270, 0, 0, 1),
(1027, 0, 19462, 1390.59, 1517.03, 13.5125, 0, 90, 270, 0, 0, 1),
(1028, 0, 19370, 1384.05, 1513.41, 13.5125, 0, 90, 0, 0, 0, 1),
(1029, 0, 19449, 1383.7, 1523.01, 15.1684, 0, 0, 0, 0, 0, 1),
(1030, 0, 19449, 1383.7, 1513.38, 15.1684, 0, 0, 0, 0, 0, 1),
(1031, 0, 19449, 1407.78, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(1032, 0, 19357, 1414.2, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(1033, 0, 19449, 1398.18, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(1034, 0, 19449, 1388.59, 1508.65, 15.1584, 0, 0, 90, 0, 0, 1),
(1035, 0, 19449, 1388.54, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(1036, 0, 19449, 1398.16, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(1037, 0, 19449, 1407.79, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(1038, 0, 19357, 1414.2, 1527.74, 15.1684, 0, 0, 90, 0, 0, 1),
(1039, 0, 19379, 1388.85, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(1040, 0, 19379, 1388.85, 1523.01, 16.9925, 0, 90, 0, 0, 0, 1),
(1041, 0, 19379, 1399.32, 1523, 16.9925, 0, 90, 0, 0, 0, 1),
(1042, 0, 19379, 1399.32, 1513.38, 16.9925, 0, 90, 0, 0, 0, 1),
(1043, 0, 19379, 1409.82, 1523, 16.9925, 0, 90, 0, 0, 0, 1),
(1044, 0, 19379, 1409.82, 1513.38, 9.8724, 0, 90, 0, 0, 0, 1),
(1045, 0, 1502, 1403, 1518.13, 9.9384, 0, 0, -180, 0, 0, 1),
(1046, 0, 1502, 1402.28, 1509.53, 9.9384, 0, 0, -270, 0, 0, 1),
(1047, 0, 19370, 1384.04, 1516.58, 13.5125, 0, 90, 0, 0, 0, 1),
(1048, 0, 19357, 1385.4, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1049, 0, 19387, 1388.61, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1050, 0, 19357, 1391.82, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1051, 0, 19387, 1395.03, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1052, 0, 19357, 1401.43, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1053, 0, 19357, 1398.23, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1054, 0, 19387, 1404.62, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1055, 0, 19357, 1407.83, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1056, 0, 19357, 1411.03, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1057, 0, 19387, 1414.24, 1518.27, 15.1784, 0, 0, 90, 0, 0, 1),
(1058, 0, 19449, 1393.24, 1523.05, 15.1784, 0, 0, 0, 0, 0, 1),
(1059, 0, 19449, 1402.26, 1523.05, 15.1784, 0, 0, 0, 0, 0, 1),
(1060, 0, 19449, 1411.66, 1523.05, 15.1784, 0, 0, 0, 0, 0, 1),
(1061, 0, 1502, 1389.36, 1518.31, 13.4184, 0, 0, -180, 0, 0, 1),
(1062, 0, 1502, 1395.78, 1518.31, 13.4184, 0, 0, -180, 0, 0, 1),
(1063, 0, 1502, 1405.36, 1518.31, 13.4184, 0, 0, -180, 0, 0, 1),
(1064, 0, 1502, 1414.99, 1518.31, 13.4184, 0, 0, -180, 0, 0, 1),
(1065, 0, 1504, 1383.78, 1518.19, 9.9484, 0, 0, 90, 0, 0, 1),
(1066, 0, 1504, 1383.78, 1518.22, 9.9484, 0, 0, 270, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jailrecord`
--

CREATE TABLE `jailrecord` (
  `id` int(12) NOT NULL,
  `owner` int(12) NOT NULL DEFAULT 0,
  `admin` varchar(32) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `time` int(8) NOT NULL DEFAULT 0,
  `date` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ladang`
--

CREATE TABLE `ladang` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `owner` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `price` int(11) NOT NULL DEFAULT 99999999,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `safex` float DEFAULT 0,
  `safey` float DEFAULT 0,
  `safez` float DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `white` int(11) NOT NULL DEFAULT 0,
  `orange` int(11) NOT NULL DEFAULT 0,
  `pegawai1` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pegawai2` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pegawai3` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ladang`
--

INSERT INTO `ladang` (`ID`, `name`, `owner`, `price`, `extposx`, `extposy`, `extposz`, `safex`, `safey`, `safez`, `product`, `white`, `orange`, `pegawai1`, `pegawai2`, `pegawai3`) VALUES
(0, '66DoraMaxwin', 'Jesse_Pope', 10, -980.768, -1285.35, 132.779, 0, 0, 0, 0, 0, 0, '', '', ''),
(1, 'No Name', '-', 2000000, -6.78747, -1214.07, 8.46321, 0, 0, 0, 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

CREATE TABLE `lockers` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `lockers`
--

INSERT INTO `lockers` (`id`, `type`, `posx`, `posy`, `posz`, `interior`) VALUES
(0, 3, 1468.16, -14.398, 1000.92, 1),
(1, 1, 1354.51, 750.168, 111.32, 10),
(2, 1, 1375.34, 1520.08, 1510.9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loglogin`
--

CREATE TABLE `loglogin` (
  `no` int(11) NOT NULL,
  `username` varchar(40) NOT NULL DEFAULT 'None',
  `reg_id` int(11) NOT NULL DEFAULT 0,
  `password` varchar(40) NOT NULL DEFAULT 'None',
  `time` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `logpay`
--

CREATE TABLE `logpay` (
  `player` varchar(40) NOT NULL DEFAULT 'None',
  `playerid` int(11) NOT NULL DEFAULT 0,
  `toplayer` varchar(40) NOT NULL DEFAULT 'None',
  `toplayerid` int(11) NOT NULL DEFAULT 0,
  `ammount` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `logpay`
--

INSERT INTO `logpay` (`player`, `playerid`, `toplayer`, `toplayerid`, `ammount`, `time`) VALUES
('Peater_Voiten', 19, 'Aldrich_Ainsley', 13, 10000, 1669296600),
('Angelo_Romani', 4, '', 0, 10000000, 1703158607),
('Jesse_Pope', 2, 'Leonardo_Maynard', 10, 10000, 1705826470),
('Leonardo_Maynard', 10, 'Jesse_Pope', 2, 10000000, 1705829206);

-- --------------------------------------------------------

--
-- Table structure for table `logstaff`
--

CREATE TABLE `logstaff` (
  `command` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `adminid` int(11) NOT NULL,
  `player` varchar(50) NOT NULL DEFAULT '*',
  `playerid` int(11) NOT NULL DEFAULT -1,
  `str` varchar(50) NOT NULL DEFAULT '*',
  `time` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `logstaff`
--

INSERT INTO `logstaff` (`command`, `admin`, `adminid`, `player`, `playerid`, `str`, `time`) VALUES
('SETLEADER', 'Jesse_Pope(neck)', 2, 'Jesse_Pope', 2, '0', 1706090338),
('SETMONEY', 'Jesse_Pope(neck)', 2, 'Jesse_Pope', 2, '400000', 1706090376),
('SETMONEY', 'Jesse_Pope(neck)', 2, 'Jesse_Pope', 2, '1000', 1706091868),
('SETMONEY', 'Jesse_Pope(neck)', 2, 'Jesse_Pope', 2, '400000', 1706091886),
('SETMONEY', 'Jesse_Pope(neck)', 2, 'Jesse_Pope', 2, '700000', 1706091901),
('SETADMINLEVEL', 'Jesse_Pope(neck)', 2, 'Angelo_Romani', 12, '6', 1706098310),
('SETMONEY', 'Leonardo_Maynard(ukimales)', 10, 'Leonardo_Maynard', 10, '10000000', 1706099538),
('SETMONEY', 'Jesse_Pope(neck)', 2, 'Leonardo_Maynard', 10, '700000', 1706099620),
('SETVIP', 'Jesse_Pope(neck)', 2, 'Leonardo_Maynard', 10, '1(15 days)', 1706101191);

-- --------------------------------------------------------

--
-- Table structure for table `logvehicle`
--

CREATE TABLE `logvehicle` (
  `vehicleName` varchar(50) NOT NULL,
  `destroyBy` varchar(50) NOT NULL DEFAULT '*',
  `vehicleOwner` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `ID` int(11) NOT NULL,
  `Model` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Vw` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Stream` float NOT NULL DEFAULT 300,
  `Materials` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `MatsColor` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `MatsText` int(11) NOT NULL DEFAULT 0,
  `MatsTextIndex` int(11) NOT NULL DEFAULT 0,
  `Text` varchar(256) DEFAULT NULL,
  `MatsTextSize` int(11) NOT NULL DEFAULT 0,
  `MatsTextFont` varchar(32) DEFAULT NULL,
  `MatsTextFontSize` int(11) NOT NULL DEFAULT 0,
  `MatsTextBold` int(11) NOT NULL DEFAULT 0,
  `MatsTextColor` int(11) NOT NULL DEFAULT 0,
  `MatsTextBackColor` int(11) NOT NULL DEFAULT 0,
  `MatsTextAlignment` int(11) NOT NULL DEFAULT 0,
  `House` int(11) NOT NULL DEFAULT 0,
  `Business` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`ID`, `Model`, `X`, `Y`, `Z`, `RotX`, `RotY`, `RotZ`, `Vw`, `Int`, `Stream`, `Materials`, `MatsColor`, `MatsText`, `MatsTextIndex`, `Text`, `MatsTextSize`, `MatsTextFont`, `MatsTextFontSize`, `MatsTextBold`, `MatsTextColor`, `MatsTextBackColor`, `MatsTextAlignment`, `House`, `Business`) VALUES
(1, 3077, 371.753, 631.456, 1008.68, 0, 0, 92.8333, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 1, -1),
(2, 19355, 2245.32, -1645.33, 14.3792, 0, 0, 75.1, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(3, 19355, 2242.23, -1644.51, 14.3792, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(4, 19355, 2246.04, -1645.52, 14.3792, 0, 0, 75.1, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(5, 19355, 2247.94, -1644.45, 14.3792, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(6, 19355, 2248.78, -1641.44, 14.3792, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(7, 19355, 2249.6, -1638.5, 14.3792, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(8, 11432, 2244.17, -1644.99, 14.2484, 0, 0, -13.4, 0, 0, 300, '8796|8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(9, 18664, 2244.1, -1645.14, 18.059, 0, 0, 77.1, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1, 0, '{3BBD44}Yuna {FF0000}Himeko', 120, 'Arial', 50, 1, -1, 0, 1, 0, -1),
(10, 18664, 2244.1, -1645.14, 17.719, 0, 0, 77.1, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1, 0, '{3BBD44}ggg{FFFFFF}ggg{FF0000}ggg', 100, 'Webdings', 25, 1, -1, 0, 1, 0, -1),
(11, 19355, 2239.3, -1643.75, 14.3792, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(12, 19355, 2238.93, -1643.66, 14.3792, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(13, 19355, 2231.54, -1640.06, 14.3792, 0, 0, 158.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(14, 19355, 2232.69, -1637.17, 14.3792, 0, 0, 158.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(15, 19355, 2233.82, -1634.31, 14.3792, 0, 0, 158.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(16, 19355, 2234.99, -1631.35, 14.3792, 0, 0, 158.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(17, 19355, 2235.55, -1628.34, 14.3792, 0, 0, -178.6, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(18, 19355, 2235.49, -1625.89, 14.3792, 0, 0, -178.6, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(19, 19355, 2242.23, -1644.51, 15.0392, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(20, 19355, 2245.15, -1645.27, 15.0392, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(21, 19355, 2246.01, -1645.49, 15.0392, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(22, 19355, 2239.23, -1643.74, 15.0392, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(23, 19355, 2239.04, -1643.69, 15.0392, 0, 0, 75.5, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(24, 19355, 2247.94, -1644.45, 15.0192, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(25, 19355, 2248.8, -1641.36, 15.0192, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(26, 19355, 2249.6, -1638.51, 15.0192, 0, 0, 164.4, 0, 0, 300, '8794|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(27, 638, 2242.42, -1645.04, 15.1197, 0, 0, 75.2, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(28, 638, 2246.29, -1646.07, 15.1197, 0, 0, 75.2, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(29, 1280, 2242.16, -1636.65, 15.2719, 0, 0, 69.6, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(30, 1281, 2242.96, -1642.23, 15.3328, 0, 0, -19.6, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(31, 1432, 2246.62, -1639.59, 14.9774, 0, 0, 0, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(32, 638, 2238.59, -1644.03, 15.1197, 0, 0, 75.2, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, 0, -1),
(33, 3250, 0, 0, 201.494, 0, 0, 78.032, 0, 0, 300, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 'Text Here', 90, 'Arial', 24, 1, -1, -16777216, 0, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `ores`
--

CREATE TABLE `ores` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0,
  `posrx` float DEFAULT 0,
  `posry` float DEFAULT 0,
  `posrz` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `parks`
--

CREATE TABLE `parks` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parks`
--

INSERT INTO `parks` (`id`, `posx`, `posy`, `posz`, `interior`, `world`) VALUES
(0, 1882.92, -2020.83, 13.3828, 0, 0),
(1, 1559.09, -2247.66, 13.5433, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `reg_id` int(11) UNSIGNED NOT NULL,
  `username` varchar(24) NOT NULL DEFAULT '',
  `adminname` varchar(24) NOT NULL DEFAULT 'None',
  `ucpname` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ip` varchar(24) NOT NULL DEFAULT '',
  `skey` varchar(55) NOT NULL DEFAULT '',
  `admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `helper` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `levelup` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cschar` int(11) NOT NULL DEFAULT 0,
  `vip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `gold` int(11) NOT NULL DEFAULT 0,
  `reg_date` varchar(30) NOT NULL DEFAULT '',
  `last_login` varchar(30) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT 5000,
  `bmoney` int(11) NOT NULL DEFAULT 10000,
  `brek` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `phone` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `phonecredit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hours` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minutes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seconds` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paycheck` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skin` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `facskin` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `newp` int(11) NOT NULL DEFAULT 0,
  `age` varchar(30) NOT NULL DEFAULT 'n/a',
  `indoor` mediumint(9) NOT NULL DEFAULT -1,
  `inbiz` mediumint(9) NOT NULL DEFAULT -1,
  `inhouse` mediumint(9) NOT NULL DEFAULT -1,
  `posx` float NOT NULL DEFAULT 829.78,
  `posy` float NOT NULL DEFAULT -1363.82,
  `posz` float NOT NULL DEFAULT -0.5,
  `posa` float NOT NULL DEFAULT 270,
  `interior` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `world` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `health` float NOT NULL DEFAULT 100,
  `armour` float NOT NULL DEFAULT 0,
  `hunger` smallint(6) NOT NULL DEFAULT 100,
  `energy` smallint(6) NOT NULL DEFAULT 100,
  `sick` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hospital` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `injured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `duty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dutytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `faction` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `factionrank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `factionlead` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `family` tinyint(4) NOT NULL DEFAULT -1,
  `familyrank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `jail` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jail_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arrest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `arrest_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `job` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `job2` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `jobtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sidejobtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exitjob` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxitime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `medicine` mediumint(9) NOT NULL DEFAULT 0,
  `medkit` mediumint(9) NOT NULL DEFAULT 0,
  `mask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `helmet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `snack` mediumint(9) NOT NULL DEFAULT 0,
  `sprunk` mediumint(9) NOT NULL DEFAULT 0,
  `vodca` smallint(6) NOT NULL DEFAULT 0,
  `kawa` smallint(6) NOT NULL DEFAULT 0,
  `redwine` smallint(6) NOT NULL DEFAULT 0,
  `wiskey` smallint(6) NOT NULL DEFAULT 0,
  `dark` smallint(6) NOT NULL DEFAULT 0,
  `gas` mediumint(9) NOT NULL DEFAULT 0,
  `bandage` mediumint(9) NOT NULL DEFAULT 0,
  `gps` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `material` mediumint(9) NOT NULL DEFAULT 0,
  `component` mediumint(9) NOT NULL DEFAULT 0,
  `food` int(11) NOT NULL DEFAULT 0,
  `seedwheat` int(11) NOT NULL DEFAULT 0,
  `seedonion` int(11) NOT NULL DEFAULT 0,
  `seedcarrot` int(11) NOT NULL DEFAULT 0,
  `seedpotato` int(11) NOT NULL DEFAULT 0,
  `seedcorn` int(11) NOT NULL DEFAULT 0,
  `wheat` int(11) NOT NULL DEFAULT 0,
  `onion` int(11) NOT NULL DEFAULT 0,
  `carrot` int(11) NOT NULL DEFAULT 0,
  `potato` int(11) NOT NULL DEFAULT 0,
  `corn` int(11) NOT NULL DEFAULT 0,
  `price1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `price2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `price3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `price4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `marijuana` int(11) NOT NULL DEFAULT 0,
  `crack` int(11) NOT NULL DEFAULT 0,
  `pot` int(11) NOT NULL DEFAULT 0,
  `plant` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `plant_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fishtool` tinyint(4) NOT NULL DEFAULT 0,
  `fish` mediumint(9) NOT NULL DEFAULT 0,
  `fish1` int(11) NOT NULL DEFAULT 0,
  `fish2` int(11) NOT NULL DEFAULT 0,
  `fish3` int(11) NOT NULL DEFAULT 0,
  `fish4` int(11) NOT NULL DEFAULT 0,
  `fishmax` int(11) NOT NULL DEFAULT 0,
  `worm` mediumint(9) NOT NULL DEFAULT 0,
  `drivelic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `drivelic_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `flylic` tinyint(3) NOT NULL DEFAULT 0,
  `flylic_time` bigint(20) NOT NULL DEFAULT 0,
  `boatlic` tinyint(3) NOT NULL DEFAULT 0,
  `boatlic_time` bigint(20) NOT NULL DEFAULT 0,
  `gunlic` tinyint(3) NOT NULL DEFAULT 0,
  `gunlic_time` bigint(20) NOT NULL DEFAULT 0,
  `trucker` tinyint(3) NOT NULL DEFAULT 0,
  `trucker_time` bigint(20) NOT NULL DEFAULT 0,
  `lumber` tinyint(3) NOT NULL DEFAULT 0,
  `lumber_time` bigint(20) NOT NULL DEFAULT 0,
  `hbemode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `togpm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `toglog` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `togads` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `togwt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `togradio` tinyint(4) NOT NULL DEFAULT 0,
  `togpaycheck` int(11) NOT NULL DEFAULT 0,
  `togseatbelt` int(11) NOT NULL DEFAULT 0,
  `togchat` int(11) NOT NULL DEFAULT 0,
  `toghelmet` int(11) NOT NULL DEFAULT 0,
  `togmask` int(11) NOT NULL DEFAULT 0,
  `togammo` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun11` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun12` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun13` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo1` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000000000,
  `Ammo2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo11` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo12` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo13` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pbanned` int(11) NOT NULL DEFAULT 0,
  `pbanreason` varchar(128) DEFAULT NULL,
  `pbanby` varchar(128) DEFAULT NULL,
  `workshop` tinyint(4) NOT NULL DEFAULT -1,
  `workshoprank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sidejobtimesweap` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sidejobtimebus` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `haulingtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rokok` mediumint(9) NOT NULL DEFAULT 0,
  `cgun` mediumint(9) NOT NULL DEFAULT 0,
  `trashtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forklifttime` int(11) NOT NULL DEFAULT 0,
  `smugglertime` int(11) NOT NULL DEFAULT 0,
  `fightstyle` mediumint(11) NOT NULL DEFAULT 0,
  `leveltrucker` mediumint(9) NOT NULL DEFAULT 0,
  `skilltrucker` mediumint(9) NOT NULL DEFAULT 1,
  `married` mediumint(9) NOT NULL DEFAULT 0,
  `marriedto` varchar(50) NOT NULL DEFAULT 'None',
  `paytoll` mediumint(9) NOT NULL DEFAULT 0,
  `levelfishing` int(11) NOT NULL DEFAULT 0,
  `delaytruckdeli` int(11) NOT NULL DEFAULT 0,
  `delayfishing` int(11) NOT NULL DEFAULT 0,
  `apart` int(11) NOT NULL DEFAULT -1,
  `ladang` tinyint(4) NOT NULL DEFAULT -1,
  `ladangrank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `maskid` int(11) NOT NULL DEFAULT 0,
  `wanted` int(11) NOT NULL DEFAULT 0,
  `adsdelay` int(11) NOT NULL DEFAULT 0,
  `inapart` mediumint(9) NOT NULL DEFAULT -1,
  `indoorflat` mediumint(9) NOT NULL DEFAULT -1,
  `mutewt` int(11) NOT NULL DEFAULT 0,
  `skillbuilder` int(11) NOT NULL DEFAULT 0,
  `skillmecha` int(11) NOT NULL DEFAULT 0,
  `rentveh` int(11) NOT NULL DEFAULT -1,
  `accent` text DEFAULT NULL,
  `furnstore` int(11) NOT NULL DEFAULT -1,
  `claimfunds` int(11) NOT NULL DEFAULT 0,
  `betapack` int(11) NOT NULL DEFAULT 0,
  `berry` int(11) NOT NULL DEFAULT 0,
  `canabis` int(111) NOT NULL DEFAULT 0,
  `metal` int(111) NOT NULL DEFAULT 0,
  `emas` int(11) NOT NULL DEFAULT 0,
  `schematic` int(11) NOT NULL DEFAULT 0,
  `compass` int(11) NOT NULL DEFAULT 0,
  `batucucian` int(11) NOT NULL DEFAULT 0,
  `koran` int(11) NOT NULL DEFAULT 0,
  `timenews` int(11) NOT NULL DEFAULT 0,
  `compen` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`reg_id`, `username`, `adminname`, `ucpname`, `ip`, `skey`, `admin`, `helper`, `level`, `levelup`, `cschar`, `vip`, `vip_time`, `gold`, `reg_date`, `last_login`, `money`, `bmoney`, `brek`, `phone`, `phonecredit`, `wt`, `hours`, `minutes`, `seconds`, `paycheck`, `skin`, `facskin`, `gender`, `newp`, `age`, `indoor`, `inbiz`, `inhouse`, `posx`, `posy`, `posz`, `posa`, `interior`, `world`, `health`, `armour`, `hunger`, `energy`, `sick`, `hospital`, `injured`, `duty`, `dutytime`, `faction`, `factionrank`, `factionlead`, `family`, `familyrank`, `jail`, `jail_time`, `arrest`, `arrest_time`, `warn`, `job`, `job2`, `jobtime`, `sidejobtime`, `exitjob`, `taxitime`, `medicine`, `medkit`, `mask`, `helmet`, `snack`, `sprunk`, `vodca`, `kawa`, `redwine`, `wiskey`, `dark`, `gas`, `bandage`, `gps`, `material`, `component`, `food`, `seedwheat`, `seedonion`, `seedcarrot`, `seedpotato`, `seedcorn`, `wheat`, `onion`, `carrot`, `potato`, `corn`, `price1`, `price2`, `price3`, `price4`, `marijuana`, `crack`, `pot`, `plant`, `plant_time`, `fishtool`, `fish`, `fish1`, `fish2`, `fish3`, `fish4`, `fishmax`, `worm`, `drivelic`, `drivelic_time`, `flylic`, `flylic_time`, `boatlic`, `boatlic_time`, `gunlic`, `gunlic_time`, `trucker`, `trucker_time`, `lumber`, `lumber_time`, `hbemode`, `togpm`, `toglog`, `togads`, `togwt`, `togradio`, `togpaycheck`, `togseatbelt`, `togchat`, `toghelmet`, `togmask`, `togammo`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `pbanned`, `pbanreason`, `pbanby`, `workshop`, `workshoprank`, `sidejobtimesweap`, `sidejobtimebus`, `haulingtime`, `rokok`, `cgun`, `trashtime`, `forklifttime`, `smugglertime`, `fightstyle`, `leveltrucker`, `skilltrucker`, `married`, `marriedto`, `paytoll`, `levelfishing`, `delaytruckdeli`, `delayfishing`, `apart`, `ladang`, `ladangrank`, `maskid`, `wanted`, `adsdelay`, `inapart`, `indoorflat`, `mutewt`, `skillbuilder`, `skillmecha`, `rentveh`, `accent`, `furnstore`, `claimfunds`, `betapack`, `berry`, `canabis`, `metal`, `emas`, `schematic`, `compass`, `batucucian`, `koran`, `timenews`, `compen`) VALUES
(1, 'Fahri_Maulana', 'Maulana', 'Nixxy', '255.255.255.255', 'XhEWPEfwnikLAsvWziPkHTqizRwP', 6, 0, 1, 0, 1, 2, 1708695084, 0, '1704609060', '2024-01-21 16:05:21', 4500000, 30000, 0, 0, 0, 0, 0, 29, 29, 1769, 2, 0, 1, 0, '30/04/1993', -1, -1, -1, -1541.68, 2614.53, 55.9883, 28.1891, 0, 0, 100, 0, 89, 87, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', 'NULL', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 3746, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Jesse_Pope', 'neck', 'neckurmine', '182.2.141.246', 'mpTwCAWVNhQacwrqqFtdjRfGeTlQ', 10, 0, 20, 8, 107, 4, 0, 160, '1704609560', '2024-01-26 23:31:47', 74785, 30000, 201283, 807867, 0, 1, 8, 20, 18, 30018, 240, 277, 1, 1, '14/04/1998', -1, -1, -1, 620.107, -1500.94, 15.1777, 340.917, 0, 0, 100, 0, 46, 32, 0, 0, 0, 0, 48, 1, 6, 1, 0, 6, 0, 0, 0, 0, 0, 12, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 7000, 9000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1707473296, 0, 0, 0, 0, 0, 0, 1, 1714039550, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 23, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 474, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', 'NULL', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 2086, 0, 0, -1, -1, 0, 0, 0, 4, '0', -1, 0, 0, 0, 0, 1, 0, 10, 0, 0, 0, 844, 0),
(4, 'Jixxy_Rodrigo', 'None', 'Nixxy', '255.255.255.255', 'ZlFPJkqhjKJaHWYCfnytXACnsVRJ', 0, 0, 1, 0, 1, 0, 0, 0, '1704617719', '2024-01-07 16:45:04', 10000, 30000, 0, 0, 0, 0, 0, 0, 52, 52, 91, 0, 0, 0, '30/06/1998', -1, -1, -1, 810.154, -1323.72, 13.8604, 119.733, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', 'NULL', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Joko_Ahmad', 'None', 'Jamal', '', 'aDdyfhzTLAwjoYIMZoyQpHfzuWCv', 0, 0, 1, 0, 0, 0, 0, 0, '1704800112', '', 10000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, '01/02/1998', -1, -1, -1, 829.78, -1363.82, -0.5, 270, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Nelson_Arkwood', 'None', 'Nixxy', '', 'zhLrpicMdkuXLYtfyejroJBZLeod', 0, 0, 1, 0, 1, 0, 0, 0, '1704875650', '', 10000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 1, 0, '31/12/1970', -1, -1, -1, 829.78, -1363.82, -0.5, 270, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Jerry_Pope', 'KingFaa', 'KingFaa', '114.125.244.60', 'CikPmUYrysSnwmKfvAqCRXVUgSNa', 6, 0, 15, 0, 0, 0, 0, 0, '1705060273', '2024-01-13 20:15:20', 750734, 30000, 0, 0, 0, 0, 0, 13, 44, 824, 7, 0, 1, 0, '14/04/1998', -1, -1, -1, 2548.72, -2404.24, 13.9371, 130.059, 0, 0, 98, 97, 56, 54, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', 'NULL', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Holt_Jasper', 'None', 'neckurmine', '', 'ZuqWeYEPOZwhvLuThZCDVpcJAajr', 0, 0, 1, 0, 0, 0, 0, 0, '1705155649', '', 10000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 1, 0, '14/04/1998', -1, -1, -1, 829.78, -1363.82, -0.5, 270, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Leonardo_Maynard', 'ukimales', 'Kepeytre', '255.255.255.255', 'itcMKPeTFLPOZnBWzirhCoFyBkkX', 6, 0, 1, 0, 0, 0, 0, 0, '1705825344', '2024-01-25 17:13:25', 35000, 10000, 603719, 0, 0, 0, 0, 31, 45, 819, 7, 0, 1, 1, '22/10/1989', -1, -1, -1, 315.341, -185.295, 1.87812, 121.08, 0, 0, 100, 0, 91, 88, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 1706185620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 'NULL', 'NULL', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0),
(11, 'Justin_Bieber', 'None', 'ninoganteng', '', 'tjkyPzqXypADNZLkrEvpRDukVilS', 0, 0, 1, 0, 0, 0, 0, 0, '1705892017', '', 10000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 1, 0, '14/04/1998', -1, -1, -1, 829.78, -1363.82, -0.5, 270, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '0', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Angelo_Romani', 'None', 'defuego', '255.255.255.255', 'ZDqAUZAgYLKZhJxbEYGLMidQedjS', 0, 0, 1, 0, 0, 0, 0, 0, '1706097907', '2024-01-24 19:34:44', 20000, 30000, 993792, 0, 0, 0, 0, 0, 42, 42, 2, 0, 1, 1, '08/09/1994', -1, -1, -1, 805.531, -1363.54, 13.8469, 78.8576, 0, 0, 100, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'WEAPON HACK', 'AlophyBot', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, -1, -1, 0, 0, 0, -1, '9', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rentplayer`
--

CREATE TABLE `rentplayer` (
  `rID` int(11) NOT NULL,
  `rX` float NOT NULL,
  `rY` float NOT NULL,
  `rZ` float NOT NULL,
  `rRX` float NOT NULL,
  `rRY` float NOT NULL,
  `rRZ` float NOT NULL,
  `rRA` float NOT NULL,
  `rType` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `rentplayer`
--

INSERT INTO `rentplayer` (`rID`, `rX`, `rY`, `rZ`, `rRX`, `rRY`, `rRZ`, `rRA`, `rType`) VALUES
(0, 824.177, -1346.17, 13.5197, 805.639, -1341.79, 13.5469, 351.462, 1),
(1, -64.5467, -1121.4, 1.07812, -44.4202, -1139.6, 1.07812, 67.9311, 2);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `owner` int(11) DEFAULT 0,
  `info` varchar(46) DEFAULT '',
  `money` int(11) NOT NULL DEFAULT 0,
  `date` varchar(36) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `id` int(11) NOT NULL DEFAULT 0,
  `component` int(11) NOT NULL DEFAULT 500,
  `fishstock` int(11) NOT NULL DEFAULT 1000,
  `timber` int(11) NOT NULL DEFAULT 1000,
  `crack` int(11) NOT NULL DEFAULT 0,
  `material` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `sch` int(11) NOT NULL DEFAULT 50
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`id`, `component`, `fishstock`, `timber`, `crack`, `material`, `product`, `sch`) VALUES
(0, 0, 0, 0, 0, 0, 0, 22);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(12) NOT NULL,
  `owner` int(12) NOT NULL DEFAULT -1,
  `message` varchar(64) NOT NULL DEFAULT 'ERROR  NO MSG',
  `type` int(3) NOT NULL DEFAULT 0,
  `number` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `speedcameras`
--

INSERT INTO `speedcameras` (`speedID`, `speedRange`, `speedLimit`, `speedX`, `speedY`, `speedZ`, `speedAngle`) VALUES
(0, 50, 70, 132.788, -1557.67, 8.227, 234.448),
(1, 10, 90, 1350.01, -1417.63, 12.3468, 355.13),
(2, 15, 100, 1369.77, -955.765, 33.1849, 172.215);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tagId` int(11) NOT NULL,
  `tagText` varchar(65) NOT NULL,
  `tagFont` varchar(24) NOT NULL,
  `tagCreated` varchar(24) NOT NULL,
  `tagColor` int(10) UNSIGNED NOT NULL,
  `tagFontsize` int(10) UNSIGNED NOT NULL,
  `tagBold` int(10) UNSIGNED NOT NULL,
  `tagOwner` int(10) UNSIGNED NOT NULL,
  `tagPosx` float NOT NULL,
  `tagPosy` float NOT NULL,
  `tagPosz` float NOT NULL,
  `tagRotx` float NOT NULL,
  `tagRoty` float NOT NULL,
  `tagRotz` float NOT NULL,
  `tagExpired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toll`
--

CREATE TABLE `toll` (
  `ID` int(11) NOT NULL,
  `model` int(11) NOT NULL DEFAULT 0,
  `speed` float NOT NULL DEFAULT 2,
  `cX` float NOT NULL,
  `cY` float NOT NULL,
  `cZ` float NOT NULL,
  `cRX` float NOT NULL,
  `cRY` float NOT NULL,
  `cRZ` float NOT NULL,
  `oX` float NOT NULL,
  `oY` float NOT NULL,
  `oZ` float NOT NULL,
  `oRX` float NOT NULL,
  `oRY` float NOT NULL,
  `oRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `Id` int(10) NOT NULL,
  `Owner` varchar(40) NOT NULL DEFAULT '',
  `Slot0_Model` int(8) NOT NULL DEFAULT 0,
  `Slot0_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot0_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot0_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot0_Dettach` int(11) NOT NULL DEFAULT 0,
  `Slot1_Model` int(8) NOT NULL DEFAULT 0,
  `Slot1_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot1_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot1_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot1_Dettach` int(11) NOT NULL DEFAULT 0,
  `Slot2_Model` int(8) NOT NULL DEFAULT 0,
  `Slot2_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot2_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot2_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot2_Dettach` int(11) NOT NULL DEFAULT 0,
  `Slot3_Model` int(8) NOT NULL DEFAULT 0,
  `Slot3_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot3_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot3_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot3_Dettach` int(11) NOT NULL DEFAULT 0,
  `Slot4_Model` int(8) NOT NULL DEFAULT 0,
  `Slot4_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot4_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot4_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot4_Dettach` int(11) NOT NULL DEFAULT 0,
  `Slot5_Model` int(8) NOT NULL DEFAULT 0,
  `Slot5_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot5_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_Color1` int(11) NOT NULL DEFAULT 0,
  `Slot5_Color2` int(11) NOT NULL DEFAULT 0,
  `Slot5_Dettach` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

CREATE TABLE `trees` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`id`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`) VALUES
(0, -1087.11, -1132.24, 128.219, 0, 0, 0),
(1, -1176.91, -1087.01, 128.219, 0, 0, 0),
(2, -1181.34, -1084.63, 128.219, 0, 0, 0),
(3, -1177.87, -1083.13, 128.219, 0, 0, 0),
(4, -1190.76, -880.637, 126.747, 0, 0, 0),
(5, -1198.26, -883.328, 127.088, 0, 0, 0),
(6, -1047.36, -856.742, 134.343, 0, 0, 0),
(7, -1049.01, -860.957, 134.53, 0, 0, 0),
(8, -1051.44, -853.821, 134.391, 0, 0, 0),
(9, -864.676, -1096.11, 95.1308, 0, 0, 0),
(10, -925.484, -1487.33, 121.414, 0, 0, 0),
(11, -925.782, -1482.96, 121.348, 0, 0, 0),
(12, -1541.17, -1789.75, 55.262, 0, 0, 0),
(13, -1560.05, -1806.12, 59.9437, 0, 0, 0),
(14, -1550.97, -1824.55, 65.9834, 0, 0, 0),
(15, -1562.89, -1830.23, 67.2863, 0, 0, 0),
(16, -1543.46, -1815.56, 62.762, 0, 0, 0),
(17, -1578.5, -1815.4, 60.6134, 0, 0, 0),
(18, -1600.49, -1833.57, 69.2442, 0, 0, 0),
(19, -1391.11, -1489.41, 101.047, 0, 0, 0),
(20, -1363.65, -1504.27, 101.376, 0, 0, 0),
(21, -1338.33, -1493.35, 101.223, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ucp`
--

CREATE TABLE `ucp` (
  `reg_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(24) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(50) NOT NULL DEFAULT '0',
  `special_key` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(77) NOT NULL DEFAULT '',
  `verifemail` int(11) DEFAULT NULL,
  `email` varchar(99) DEFAULT '',
  `profile` varchar(20) NOT NULL DEFAULT 'default.png',
  `sprunk` mediumint(9) NOT NULL DEFAULT 0,
  `verifcode` text DEFAULT NULL,
  `CharName` int(11) DEFAULT -1,
  `CharName2` int(11) DEFAULT -1,
  `CharName3` int(11) DEFAULT -1,
  `banned` int(11) DEFAULT NULL,
  `bannedby` varchar(128) DEFAULT NULL,
  `bannedreason` varchar(128) DEFAULT NULL,
  `pin` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) DEFAULT 0,
  `secure_login` int(11) DEFAULT 0,
  `DiscordID` bigint(20) DEFAULT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ucp`
--

INSERT INTO `ucp` (`reg_id`, `username`, `password`, `number`, `special_key`, `salt`, `verifemail`, `email`, `profile`, `sprunk`, `verifcode`, `CharName`, `CharName2`, `CharName3`, `banned`, `bannedby`, `bannedreason`, `pin`, `admin`, `secure_login`, `DiscordID`, `created_at`) VALUES
(24, 'defuego', '$2y$10$11a83e2adcf4671b26bccOKb6bYjq04Ue9NK1Ipq5dNghunP0o2Ua', '6289606032009', 'TcKSiceirtgeedJEKVQswRRxXUfZJTfkOkrFDXJHlvokEjBRtzfjDdJZUOttdEaEuAYQuAruSbC', '$2y$10$11a83e2adcf4671b26bccb', NULL, 'giurgiug43@gmail.com', 'default.png', 0, NULL, 12, -1, -1, NULL, NULL, NULL, 245742, 0, 0, NULL, '1706097621'),
(7, 'Nixxy', '$2y$10$e3a621e1099c866b40ce4ui7sUCVHECq9lUOEeNd6DYHQs9LRQN6O', '0', 'EpCQSAzYNFieClvZmSFlhNsOChmxIoVtDduasuFawJAZcefKHABsBerchpLQYKyATqaNRzvHzBB', '$2y$10$e3a621e1099c866b40ce45', NULL, 'areswayne234@gmail.com', 'CxNTnTUo.jpg', 0, NULL, 1, 4, 7, NULL, NULL, NULL, 625349, 1, 0, NULL, '1704557701'),
(8, 'neckurmine', '$2y$10$66a7626673c89de504b97uTPe7dlmo4nV9rmOQWCDIWZfnitUtKx2', '6281399952795', 'DwwGlkeBmfNenGYHYgkkwhHJrSqlYvrAKPuyPBORDgWpNvOHdRIRQRSzMhnAHRWgQBJFCQNqWyZ', '$2y$10$66a7626673c89de504b973', NULL, 'itzhanzzkunz32@gmail.com', 'default.png', 0, NULL, 2, 9, -1, NULL, NULL, NULL, 763862, 0, 0, NULL, '1704558278'),
(15, 'Jamal', '$2y$10$a0eb259b9a0d884adab62O29AjoW8RDipMPFhVod2DW/wSc1VroPa', '6285819478911', 'tFabPVjEqHRWlkEkkEaBYTwZEbwgPLgGqwKvHAfHZcIsWISRfNUaSKJvQHfYkdoggPCyeyrunQv', '$2y$10$a0eb259b9a0d884adab62a', NULL, 'nixhorwitz@gmail.com', 'default.png', 0, NULL, 6, -1, -1, NULL, NULL, NULL, 402631, 0, 0, NULL, '1704800032'),
(19, 'Kepeytre', '$2y$10$c42674255ccabc347ff3buBSEY7tUOFDlRC/BWK8/lJ6lAkyE8PBC', '6281328951360', 'YwbZCdKdYOUzIqqiztjIBypBzjuuMXItkNLduDllUusOHtkOgaEyJZPZssAElAgdUHyHVXlNMfu', '$2y$10$c42674255ccabc347ff3b7', NULL, 'twothree646@gmail.com', 'default.png', 0, NULL, 10, -1, -1, NULL, NULL, NULL, 792650, 0, 0, NULL, '1705820001'),
(22, 'Wisnu', '$2y$10$ybeAYnc5VBY.OkRn/DYUfOg1T1wBB9cP3B6Wy30xYkOKxIyH0yyY2', '6289609234641', 'OzkJl2=LY[B_IWLbsz=_/}55=|04dzz?sco1Wb@O{V1Q6vW:t7edtO\\iqlr[8OFX', '', NULL, 'yundopid@gmail.com', 'default.png', 0, NULL, -1, -1, -1, NULL, NULL, NULL, 777803, 0, 0, NULL, '1705938231');

-- --------------------------------------------------------

--
-- Table structure for table `ucp_loginlogs`
--

CREATE TABLE `ucp_loginlogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `useragent` text NOT NULL,
  `os` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` int(11) NOT NULL,
  `model` int(11) NOT NULL DEFAULT 0,
  `color1` int(11) NOT NULL DEFAULT 0,
  `color2` int(11) NOT NULL DEFAULT 0,
  `paintjob` int(11) NOT NULL DEFAULT -1,
  `neon` int(11) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `insu` int(11) NOT NULL DEFAULT 1,
  `claim` int(11) NOT NULL DEFAULT 0,
  `claim_time` bigint(20) NOT NULL DEFAULT 0,
  `plate` varchar(50) NOT NULL DEFAULT 'None',
  `plate_time` bigint(20) NOT NULL DEFAULT 0,
  `ticket` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 200000,
  `health` float NOT NULL DEFAULT 1000,
  `fuel` int(11) NOT NULL DEFAULT 1000,
  `upgrademesin` int(11) NOT NULL DEFAULT 0,
  `upgradebody` int(11) NOT NULL DEFAULT 0,
  `despawn` int(11) NOT NULL DEFAULT 0,
  `impound` int(11) NOT NULL DEFAULT 0,
  `crate` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `a` float NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `damage0` int(11) NOT NULL DEFAULT 0,
  `damage1` int(11) NOT NULL DEFAULT 0,
  `damage2` int(11) NOT NULL DEFAULT 0,
  `damage3` int(11) NOT NULL DEFAULT 0,
  `mod0` int(11) NOT NULL DEFAULT 0,
  `mod1` int(11) NOT NULL DEFAULT 0,
  `mod2` int(11) NOT NULL DEFAULT 0,
  `mod3` int(11) NOT NULL DEFAULT 0,
  `mod4` int(11) NOT NULL DEFAULT 0,
  `mod5` int(11) NOT NULL DEFAULT 0,
  `mod6` int(11) NOT NULL DEFAULT 0,
  `mod7` int(11) NOT NULL DEFAULT 0,
  `mod8` int(11) NOT NULL DEFAULT 0,
  `mod9` int(11) NOT NULL DEFAULT 0,
  `mod10` int(11) NOT NULL DEFAULT 0,
  `mod11` int(11) NOT NULL DEFAULT 0,
  `mod12` int(11) NOT NULL DEFAULT 0,
  `mod13` int(11) NOT NULL DEFAULT 0,
  `mod14` int(11) NOT NULL DEFAULT 0,
  `mod15` int(11) NOT NULL DEFAULT 0,
  `mod16` int(11) NOT NULL DEFAULT 0,
  `lumber` int(11) NOT NULL DEFAULT -1,
  `metal` int(11) NOT NULL DEFAULT 0,
  `coal` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `gasoil` int(11) NOT NULL DEFAULT 0,
  `rental` bigint(20) NOT NULL DEFAULT 0,
  `crack` int(11) NOT NULL DEFAULT 0,
  `material` int(11) NOT NULL DEFAULT 0,
  `component` int(11) NOT NULL DEFAULT 0,
  `cgun` int(11) NOT NULL DEFAULT 0,
  `gun1` int(12) DEFAULT 0,
  `ammo1` int(12) DEFAULT 0,
  `gun2` int(12) DEFAULT 0,
  `ammo2` int(12) DEFAULT 0,
  `gun3` int(12) DEFAULT 0,
  `ammo3` int(12) DEFAULT 0,
  `gun4` int(12) DEFAULT 0,
  `ammo4` int(12) DEFAULT 0,
  `gun5` int(12) DEFAULT 0,
  `ammo5` int(12) DEFAULT 0,
  `gun6` int(12) DEFAULT 0,
  `ammo6` int(12) DEFAULT 0,
  `gun7` int(12) DEFAULT 0,
  `ammo7` int(12) DEFAULT 0,
  `gun8` int(12) DEFAULT 0,
  `ammo8` int(12) DEFAULT 0,
  `gun9` int(12) DEFAULT 0,
  `ammo9` int(12) DEFAULT 0,
  `gun10` int(12) DEFAULT 0,
  `ammo10` int(12) DEFAULT 0,
  `park` int(11) NOT NULL DEFAULT -1,
  `cratecomponent` int(11) NOT NULL DEFAULT 0,
  `cratefish` int(11) NOT NULL DEFAULT 0,
  `wheat` int(11) NOT NULL DEFAULT 0,
  `onion` int(11) NOT NULL DEFAULT 0,
  `carrot` int(11) NOT NULL DEFAULT 0,
  `potato` int(11) NOT NULL DEFAULT 0,
  `corn` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `owner`, `model`, `color1`, `color2`, `paintjob`, `neon`, `locked`, `insu`, `claim`, `claim_time`, `plate`, `plate_time`, `ticket`, `price`, `health`, `fuel`, `upgrademesin`, `upgradebody`, `despawn`, `impound`, `crate`, `x`, `y`, `z`, `a`, `int`, `vw`, `damage0`, `damage1`, `damage2`, `damage3`, `mod0`, `mod1`, `mod2`, `mod3`, `mod4`, `mod5`, `mod6`, `mod7`, `mod8`, `mod9`, `mod10`, `mod11`, `mod12`, `mod13`, `mod14`, `mod15`, `mod16`, `lumber`, `metal`, `coal`, `product`, `gasoil`, `rental`, `crack`, `material`, `component`, `cgun`, `gun1`, `ammo1`, `gun2`, `ammo2`, `gun3`, `ammo3`, `gun4`, `ammo4`, `gun5`, `ammo5`, `gun6`, `ammo6`, `gun7`, `ammo7`, `gun8`, `ammo8`, `gun9`, `ammo9`, `gun10`, `ammo10`, `park`, `cratecomponent`, `cratefish`, `wheat`, `onion`, `carrot`, `potato`, `corn`) VALUES
(3, 10, 426, 68, 72, -1, 0, 0, 1, 0, 0, 'None', 0, 0, 290000, 799.183, 998, 0, 0, 0, 0, 0, 2862.89, -1323.45, 10.8223, 8.0124, 0, 0, 19988513, 33554946, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0),
(4, 2, 451, 3, 3, -1, 0, 0, 1, 0, 0, 'None', 0, 0, 200000, 407.587, 980, 0, 0, 0, 0, 0, 596.342, -1500.31, 15.5849, 162.309, 0, 0, 19988513, 67240448, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0),
(5, 2, 453, 0, 0, -1, 0, 0, 3, 0, 0, 'No Have', 0, 0, 350500, 2000, 976, 0, 0, 0, 0, 0, 131.08, -1918.65, 0.598564, 356.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0),
(6, 2, 499, 0, 0, -1, 0, 0, 3, 0, 0, 'No Have', 0, 0, 100000, 1933.07, 968, 0, 0, 0, 0, 0, 797.783, -594.963, 16.5799, 231.907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicledealer`
--

CREATE TABLE `vehicledealer` (
  `id` int(11) NOT NULL,
  `IDdealership` int(11) NOT NULL,
  `vehiclespawnx` float NOT NULL,
  `vehiclespawny` float NOT NULL DEFAULT 0,
  `vehiclespawnz` float NOT NULL DEFAULT 0,
  `vehiclespawna` float NOT NULL DEFAULT 0,
  `vehiclecost` int(11) NOT NULL DEFAULT 0,
  `vehicletype` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_object`
--

CREATE TABLE `vehicle_object` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` int(10) UNSIGNED DEFAULT NULL,
  `vehicle` int(10) UNSIGNED DEFAULT NULL,
  `color` int(24) DEFAULT NULL,
  `type` tinyint(2) UNSIGNED DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `text` varchar(32) DEFAULT 'Text',
  `font` varchar(24) DEFAULT NULL,
  `fontcolor` int(10) UNSIGNED DEFAULT NULL,
  `fontsize` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voicedata`
--

CREATE TABLE `voicedata` (
  `pID` int(11) UNSIGNED NOT NULL,
  `pUsername` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pRadio` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pTogRadio` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pTogMic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pFreqRadio` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pSfxTurnOn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pSfxTurnOff` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  `vip_time` int(11) NOT NULL DEFAULT 0,
  `gold` int(11) NOT NULL DEFAULT 0,
  `admin` varchar(16) NOT NULL DEFAULT 'None',
  `donature` varchar(16) NOT NULL DEFAULT 'None',
  `claim` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `Owner` int(11) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 44,
  `RotZ` float DEFAULT 0,
  `Bone` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `owner` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `price` int(11) NOT NULL DEFAULT 99999999,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `safex` float DEFAULT 0,
  `safey` float DEFAULT 0,
  `safez` float DEFAULT 0,
  `component` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `papanmt` int(11) NOT NULL DEFAULT 0,
  `text` varchar(515) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posmtx` float DEFAULT 0,
  `posmty` float DEFAULT 0,
  `posmtz` float DEFAULT 0,
  `posmtrotx` float DEFAULT 0,
  `posmtroty` float DEFAULT 0,
  `posmtrotz` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `aksesoris`
--
ALTER TABLE `aksesoris`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `apart`
--
ALTER TABLE `apart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `berry`
--
ALTER TABLE `berry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bisnis`
--
ALTER TABLE `bisnis`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `builder`
--
ALTER TABLE `builder`
  ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doorsflat`
--
ALTER TABLE `doorsflat`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `familys`
--
ALTER TABLE `familys`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flatroom`
--
ALTER TABLE `flatroom`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flat_furniture`
--
ALTER TABLE `flat_furniture`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flat_storage`
--
ALTER TABLE `flat_storage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `flat_structure`
--
ALTER TABLE `flat_structure`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flat_weapon`
--
ALTER TABLE `flat_weapon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Indexes for table `furnobject`
--
ALTER TABLE `furnobject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnstore`
--
ALTER TABLE `furnstore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `gstations`
--
ALTER TABLE `gstations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `housestruct`
--
ALTER TABLE `housestruct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jailrecord`
--
ALTER TABLE `jailrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ladang`
--
ALTER TABLE `ladang`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `loglogin`
--
ALTER TABLE `loglogin`
  ADD PRIMARY KEY (`no`) USING BTREE;

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ores`
--
ALTER TABLE `ores`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `parks`
--
ALTER TABLE `parks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`reg_id`,`sprunk`) USING BTREE;

--
-- Indexes for table `rentplayer`
--
ALTER TABLE `rentplayer`
  ADD PRIMARY KEY (`rID`) USING BTREE;

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagId`);

--
-- Indexes for table `toll`
--
ALTER TABLE `toll`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `id` (`Owner`);

--
-- Indexes for table `trees`
--
ALTER TABLE `trees`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ucp`
--
ALTER TABLE `ucp`
  ADD PRIMARY KEY (`reg_id`) USING BTREE;

--
-- Indexes for table `ucp_loginlogs`
--
ALTER TABLE `ucp_loginlogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vehicledealer`
--
ALTER TABLE `vehicledealer`
  ADD PRIMARY KEY (`IDdealership`);

--
-- Indexes for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voicedata`
--
ALTER TABLE `voicedata`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`Owner`,`WeaponID`) USING BTREE,
  ADD UNIQUE KEY `Owner` (`Owner`,`WeaponID`) USING BTREE;

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksesoris`
--
ALTER TABLE `aksesoris`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder`
--
ALTER TABLE `builder`
  MODIFY `mtID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cd`
--
ALTER TABLE `cd`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flat`
--
ALTER TABLE `flat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flatroom`
--
ALTER TABLE `flatroom`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `flat_furniture`
--
ALTER TABLE `flat_furniture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flat_storage`
--
ALTER TABLE `flat_storage`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flat_structure`
--
ALTER TABLE `flat_structure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT for table `flat_weapon`
--
ALTER TABLE `flat_weapon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furnobject`
--
ALTER TABLE `furnobject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1067;

--
-- AUTO_INCREMENT for table `furnstore`
--
ALTER TABLE `furnstore`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `housestruct`
--
ALTER TABLE `housestruct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1067;

--
-- AUTO_INCREMENT for table `jailrecord`
--
ALTER TABLE `jailrecord`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loglogin`
--
ALTER TABLE `loglogin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `reg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toys`
--
ALTER TABLE `toys`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ucp`
--
ALTER TABLE `ucp`
  MODIFY `reg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ucp_loginlogs`
--
ALTER TABLE `ucp_loginlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voicedata`
--
ALTER TABLE `voicedata`
  MODIFY `pID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
