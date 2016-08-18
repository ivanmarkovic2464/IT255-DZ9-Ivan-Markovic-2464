-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2016 at 10:36 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `it255-dz8`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`ID`, `Korisnicko ime`, `Lozinka`, `Ime`, `Prezime`, `Email`) VALUES
(1, 'Vanceto', '81dc9bdb52d04dc20036', 'Ivan', 'Markovic', 'ivan@markovic.com'),
(7, 'asd', 'asd', 'asd', 'asd', 'asd@asd.com'),
(8, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe@qwe.com'),
(9, 'zxc', 'zxc', 'zxc', 'zxc', 'zxc@zxc.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
