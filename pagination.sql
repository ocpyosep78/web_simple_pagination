-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2011 at 08:22 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `isi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`) VALUES
(1, 'judul 1', 'adsadsa'),
(2, 'judul 2', 'dasdsadsa'),
(3, 'judul 3', 'dsadsadsadsadasd'),
(4, 'judul 4', 'asdasdasdasdasdsa'),
(5, 'judul 5', 'asdsadasd'),
(6, 'judul 6', 'herupurwito.com'),
(7, 'judul 7', 'qweqweqweqweqwe'),
(8, 'judul 8', 'qweqweqweqwe'),
(9, 'judul 9', 'wqeqweqwe'),
(10, 'judul 10', 'qweqwewqe'),
(11, 'judul 11', 'akjsdsadsad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
