-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2016 at 11:49 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `korisnici`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE IF NOT EXISTS `korisnici` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Korisnicko ime` varchar(20) COLLATE utf8_bin NOT NULL,
  `Lozinka` varchar(20) COLLATE utf8_bin NOT NULL,
  `Ime` varchar(20) COLLATE utf8_bin NOT NULL,
  `Prezime` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ID`, `Korisnicko ime`, `Lozinka`, `Ime`, `Prezime`, `Email`) VALUES
(1, 'Vanceto', '81dc9bdb52d04dc20036', 'Ivan', 'Markovic', 'ivan@markovic.com'),
(7, 'asd', 'asd', 'asd', 'asd', 'asd@asd.com'),
(8, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe@qwe.com'),
(9, 'zxc', 'zxc', 'zxc', 'zxc', 'zxc@zxc.com'),
(10, '123', '123', '123', '123', '123@123.com');

-- --------------------------------------------------------

--
-- Table structure for table `sobe`
--

CREATE TABLE IF NOT EXISTS `sobe` (
  `id` int(11) NOT NULL,
  `tipSobe` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `kvadrata` varchar(50) DEFAULT NULL,
  `brojKreveta` varchar(50) DEFAULT NULL,
  `pogledNa` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobe`
--

INSERT INTO `sobe` (`id`, `tipSobe`, `kvadrata`, `brojKreveta`, `pogledNa`) VALUES
(1, 'duplex', '20', '4', 'more'),
(2, 'apartman', '25', '3', 'more'),
(3, 'apartman', '15', '2', 'grad'),
(4, 'duplex', '40', '5', 'grad'),
(5, 'apartman', '10', '1', 'more');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
