-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2014 at 01:44 AM
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_category_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `category` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_category_Insert`(IN _category_name varchar(250))
BEGIN
   INSERT INTO `category`
   (`category_name` )
         VALUES(_category_name );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_category_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `category_name` FROM `category` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_category_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `category_name` FROM `category` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_category_UpdateRow`(IN _id int, IN _category_name varchar(250))
BEGIN
   UPDATE `category`
   SET `category_name` = _category_name 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_centers_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `centers` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_centers_Insert`(IN _center_name varchar(250), IN _center_manager varchar(250), IN _discount int, IN _price int, IN _address text, IN _tel varchar(250), IN _mobile varchar(250), IN _website varchar(250), IN _mail varchar(250), IN _left_date bigint, IN _google_map varchar(250), IN _code int, IN _type_id int, IN _city_id int, IN _category_id int)
BEGIN
   INSERT INTO `centers`
   (`center_name` , `center_manager` , `discount` , `price` , `address` , `tel` , `mobile` , `website` , `mail` , `left_date` , `google_map` , `code` , `type_id` , `city_id` , `category_id` )
         VALUES(_center_name , _center_manager , _discount , _price , _address , _tel , _mobile , _website , _mail , _left_date , _google_map , _code , _type_id , _city_id , _category_id );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_centers_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `center_name`, `center_manager`, `discount`, `price`, `address`, `tel`, `mobile`, `website`, `mail`, `left_date`, `google_map`, `code`, `type_id`, `city_id`, `category_id` FROM `centers` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_centers_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `center_name`, `center_manager`, `discount`, `price`, `address`, `tel`, `mobile`, `website`, `mail`, `left_date`, `google_map`, `code`, `type_id`, `city_id`, `category_id` FROM `centers` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_centers_UpdateRow`(IN _id int, IN _center_name varchar(250), IN _center_manager varchar(250), IN _discount int, IN _price int, IN _address text, IN _tel varchar(250), IN _mobile varchar(250), IN _website varchar(250), IN _mail varchar(250), IN _left_date bigint, IN _google_map varchar(250), IN _code int, IN _type_id int, IN _city_id int, IN _category_id int)
BEGIN
   UPDATE `centers`
   SET `center_name` = _center_name, `center_manager` = _center_manager, `discount` = _discount, `price` = _price, `address` = _address, `tel` = _tel, `mobile` = _mobile, `website` = _website, `mail` = _mail, `left_date` = _left_date, `google_map` = _google_map, `code` = _code, `type_id` = _type_id, `city_id` = _city_id, `category_id` = _category_id 
        WHERE `id` = _id;
END$$

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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_types_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `types` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_types_Insert`(IN _name varchar(250))
BEGIN
   INSERT INTO `types`
   (`name` )
         VALUES(_name );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_types_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `name` FROM `types` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_types_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `name` FROM `types` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_types_UpdateRow`(IN _id int, IN _name varchar(250))
BEGIN
   UPDATE `types`
   SET `name` = _name 
        WHERE `id` = _id;
END$$

DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE IF NOT EXISTS `centers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(250) NOT NULL,
  `center_manager` varchar(250) NOT NULL,
  `discount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `address` text NOT NULL,
  `tel` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `website` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `left_date` bigint(20) NOT NULL,
  `google_map` varchar(250) NOT NULL,
  `code` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persian_name` varchar(250) NOT NULL,
  `latin_name` varchar(250) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `persian_name`, `latin_name`, `admin_id`) VALUES
(1, 'آذربایجان شرقی', 'azarbayejan_sharghi', 0),
(2, 'آذربایجان غربی', 'azarbayejan_gharbi', 0),
(3, 'اردبیل', 'ardabil', 0),
(4, 'اصفهان', 'esfahan', 0),
(5, 'البرز', 'alborz', 0),
(6, 'ایلام', 'ilam', 0),
(7, 'بوشهر', 'boushehr', 0),
(8, 'تهران', 'tehran', 0),
(9, 'چهار محال و بختیاری', 'charmahal', 0),
(10, 'خراسان جنوبی', 'khorasane_jonoobi', 0),
(11, 'خراسان رضوی', 'khorasane_razavi', 0),
(12, 'خراسان شمالی', 'khorasane_shomali', 0),
(13, 'خوزستان', 'khozestan', 0),
(14, 'زنجان', 'zanjan', 0),
(15, 'سمنان', 'semnan', 0),
(16, 'سیستان و بلوچستان', 'sistan', 0),
(17, 'فارس', 'fars', 0),
(18, 'قزوین', 'qazvin', 0),
(19, 'قم', 'qom', 0),
(20, 'کردستان', 'kordestan', 0),
(21, 'کرمان', 'kerman', 0),
(22, 'کرمانشاه', 'kermanshah', 0),
(23, 'کهگیلویه و بویراحمد', 'kohgilooye', 0),
(24, 'گلستان', 'golestan', 0),
(25, 'گیلان', 'gilan', 0),
(26, 'لرستان', 'lorestan', 0),
(27, 'مازندران', 'mazandaran', 0),
(28, 'مرکزی', 'markazi', 0),
(29, 'هرمزگان', 'hormozgan', 0),
(30, 'همدان', 'hamedan', 0),
(31, 'یزد', 'yazd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `center_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(250) NOT NULL,
  `center_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'خدمات رفاهی'),
(2, 'خدمات پزشکی'),
(3, 'خدمات خرید کالا');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `city_id` int(11) NOT NULL,
  `register_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
