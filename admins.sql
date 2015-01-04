-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2015 at 09:19 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `melli_code` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `permission` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `melli_code`, `mobile`, `mail`, `password`, `permission`, `city_id`) VALUES
(1, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 1),
(2, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 2),
(3, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 3),
(4, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 4),
(5, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 5),
(6, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 6),
(7, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 7),
(8, '', 'بابایی', '', '', 'info@barincard.ir', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 8),
(9, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 9),
(10, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 10),
(11, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 11),
(12, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 12),
(13, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 13),
(14, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 14),
(15, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 15),
(16, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 16),
(17, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 17),
(18, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 18),
(19, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 19),
(20, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 20),
(21, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 21),
(22, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 22),
(23, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 23),
(24, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 24),
(25, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 25),
(26, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 26),
(27, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 27),
(28, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 28),
(29, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 29),
(30, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 30),
(31, '', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
