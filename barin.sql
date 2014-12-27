-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2014 at 08:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barin`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `forms` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_Insert`(IN _latin_name varchar(250), IN _persian_name varchar(250), IN _activate tinyint)
BEGIN
   INSERT INTO `forms`
   (`latin_name` , `persian_name` , `activate` )
         VALUES(_latin_name , _persian_name , _activate );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `latin_name`, `persian_name`, `activate` FROM `forms` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_SelectAllWhereActivate`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `latin_name`, `persian_name`, `activate` FROM `forms` WHERE `activate`=1  ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `latin_name`, `persian_name`, `activate` FROM `forms` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_SelectRowByLatinName`(IN _latin_name VARCHAR(250))
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `latin_name`, `persian_name`, `activate` FROM `forms` WHERE `latin_name` = _latin_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_UpdateActivate`(IN _id int, IN _activate tinyint)
BEGIN
   UPDATE `forms`
   SET  `activate` = _activate 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_forms_UpdateRow`(IN _id int, IN _latin_name varchar(250), IN _persian_name varchar(250), IN _activate tinyint)
BEGIN
   UPDATE `forms`
   SET `latin_name` = _latin_name, `persian_name` = _persian_name, `activate` = _activate 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `form_content` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_Insert`(IN _name varchar(250), IN _label varchar(250), IN _text tinyint, IN _textarea tinyint, IN _forms_id int)
BEGIN
   INSERT INTO `form_content`
   (`name` , `label` , `text` , `textarea` , `forms_id` )
         VALUES(_name , _label , _text , _textarea , _forms_id );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `name`, `label`, `text`, `textarea`, `forms_id` FROM `form_content` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `name`, `label`, `text`, `textarea`, `forms_id` FROM `form_content` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_SelectRowByFormId`(IN _forms_id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `name`, `label`, `text`, `textarea`, `forms_id` FROM `form_content` WHERE `forms_id` = _forms_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_form_content_UpdateRow`(IN _id int, IN _name varchar(250), IN _label varchar(250), IN _text tinyint, IN _textarea tinyint, IN _forms_id int)
BEGIN
   UPDATE `form_content`
   SET `name` = _name, `label` = _label, `text` = _text, `textarea` = _textarea, `forms_id` = _forms_id 
        WHERE `id` = _id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latin_name` varchar(250) NOT NULL,
  `persian_name` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `latin_name` (`latin_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `latin_name`, `persian_name`, `activate`) VALUES
(27, 'last_test', 'لست تست', 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_content`
--

CREATE TABLE IF NOT EXISTS `form_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `label` varchar(250) NOT NULL,
  `text` tinyint(1) NOT NULL,
  `textarea` tinyint(1) NOT NULL,
  `forms_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `form_content`
--

INSERT INTO `form_content` (`id`, `name`, `label`, `text`, `textarea`, `forms_id`) VALUES
(45, 'text1', 'نام', 1, 0, 27),
(46, 'text2', 'نام 2 ', 1, 0, 27),
(47, 'text3', 'نام 3', 1, 0, 27),
(48, 'textarea1', 'آدرس', 0, 1, 27),
(49, 'textarea2', 'شسبشسب', 0, 1, 27),
(50, 'textarea3', 'شسبشسب', 0, 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `last_test`
--

CREATE TABLE IF NOT EXISTS `last_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text1` varchar(250) DEFAULT NULL,
  `text2` varchar(250) DEFAULT NULL,
  `text3` varchar(250) DEFAULT NULL,
  `textarea1` varchar(250) DEFAULT NULL,
  `textarea2` varchar(250) DEFAULT NULL,
  `textarea3` varchar(250) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `last_test`
--

INSERT INTO `last_test` (`id`, `text1`, `text2`, `text3`, `textarea1`, `textarea2`, `textarea3`, `user_id`) VALUES
(1, 'sdvsdh', 'sdh', 'sdh', 'sdh', 'sdh', 'sdh', 1),
(2, 'dfhfdgjfgj', 'fgkfgkf', 'kfgkfgkf', 'fgkfgk', 'fgkfgkfgk', 'fgkfgkfgk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `big_address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `name`, `big_address`) VALUES
(1, 'شسب', 'شسبشسب');

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE IF NOT EXISTS `rss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date_published` datetime NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `url`, `title`, `image`, `date_published`, `category`, `description`) VALUES
(1, 'sds', 'sdsd', 'sds', '1000-00-00 00:00:00', 'ds', 'sdsd'),
(2, 'sds', 'sdsd', 'sds', '0000-00-00 00:00:00', 'ds', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
