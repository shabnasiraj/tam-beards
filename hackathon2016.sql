-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2016 at 10:19 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `hack_language_list`
--

CREATE TABLE IF NOT EXISTS `hack_language_list` (
  `hack_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `hack_language_name` varchar(64) NOT NULL,
  `hack_language_code` varchar(16) NOT NULL,
  `hack_language_show` varchar(1) NOT NULL,
  `hack_language_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hack_language_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hack_language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hack_language_list`
--

INSERT INTO `hack_language_list` (`hack_language_id`, `hack_language_name`, `hack_language_code`, `hack_language_show`, `hack_language_created_at`, `hack_language_updated_at`) VALUES
(1, 'ARABIC', 'AR', '1', '2016-11-19 14:14:26', '0000-00-00 00:00:00'),
(2, 'ENGLISH', 'EN', '1', '2016-11-19 14:14:26', '0000-00-00 00:00:00'),
(3, 'RUSSIAN', 'RU', '1', '2016-11-19 16:53:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hack_qr_language_ads`
--

CREATE TABLE IF NOT EXISTS `hack_qr_language_ads` (
  `hack_qr_language_ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `hack_language_id` int(11) NOT NULL,
  `hack_qr_id` int(11) NOT NULL,
  `hack_qr_ad` varchar(516) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`hack_qr_language_ad_id`),
  KEY `hack_language_id` (`hack_language_id`),
  KEY `hack_qr_id` (`hack_qr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `hack_qr_language_ads`
--

INSERT INTO `hack_qr_language_ads` (`hack_qr_language_ad_id`, `hack_language_id`, `hack_qr_id`, `hack_qr_ad`) VALUES
(1, 1, 1001, 'وهذا هو النص العربي'),
(2, 1, 1003, 'التنفس! التنفس في الهواء'),
(4, 3, 1004, 'доброе утро'),
(5, 3, 1005, 'All hail Putin'),
(6, 2, 1028, 'Just put it.'),
(7, 2, 1029, 'This is NORMAL TEXT'),
(8, 2, 1031, 'This is a sample text'),
(9, 2, 1032, 'This is a sample shit'),
(10, 2, 1033, 'This is a test bed'),
(11, 2, 1033, 'This is a test bed'),
(12, 2, 1035, 'THis is another test for Val n Rafiul'),
(13, 2, 1036, 'Hello, sunshine'),
(14, 2, 1039, 'Did you watch Futurama?'),
(15, 2, 1044, 'This is test from cell 1'),
(16, 2, 1046, 'This is something'),
(17, 1, 1047, 'صباح الخير!'),
(18, 3, 1047, 'Доброе утро!'),
(19, 2, 1048, 'Hello World'),
(20, 2, 1052, 'Contains pork');

-- --------------------------------------------------------

--
-- Table structure for table `hack_qr_list`
--

CREATE TABLE IF NOT EXISTS `hack_qr_list` (
  `hack_qr_id` int(11) NOT NULL AUTO_INCREMENT,
  `rand` varchar(16) NOT NULL,
  `hack_qr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hack_qr_modified_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hack_qr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1053 ;

--
-- Dumping data for table `hack_qr_list`
--

INSERT INTO `hack_qr_list` (`hack_qr_id`, `rand`, `hack_qr_created_at`, `hack_qr_modified_at`) VALUES
(1001, '', '2016-11-19 12:50:27', '0000-00-00 00:00:00'),
(1002, '', '2016-11-19 16:48:37', '0000-00-00 00:00:00'),
(1003, '', '2016-11-19 16:48:42', '0000-00-00 00:00:00'),
(1004, '', '2016-11-19 16:48:46', '0000-00-00 00:00:00'),
(1005, '', '2016-11-19 16:48:51', '0000-00-00 00:00:00'),
(1006, 'random', '2016-11-19 19:14:48', '0000-00-00 00:00:00'),
(1007, 'random', '2016-11-19 19:16:34', '0000-00-00 00:00:00'),
(1008, 'random', '2016-11-19 19:19:15', '0000-00-00 00:00:00'),
(1009, 'random', '2016-11-19 19:31:36', '0000-00-00 00:00:00'),
(1010, 'random', '2016-11-19 19:31:52', '0000-00-00 00:00:00'),
(1011, 'random', '2016-11-19 19:34:10', '0000-00-00 00:00:00'),
(1012, 'random', '2016-11-19 19:35:50', '0000-00-00 00:00:00'),
(1013, 'random', '2016-11-19 19:36:36', '0000-00-00 00:00:00'),
(1014, 'random', '2016-11-19 19:36:49', '0000-00-00 00:00:00'),
(1015, 'random', '2016-11-19 19:37:59', '0000-00-00 00:00:00'),
(1016, 'random', '2016-11-19 19:38:59', '0000-00-00 00:00:00'),
(1017, 'random', '2016-11-19 19:39:10', '0000-00-00 00:00:00'),
(1018, 'random', '2016-11-19 19:40:17', '0000-00-00 00:00:00'),
(1019, 'random', '2016-11-19 19:41:44', '0000-00-00 00:00:00'),
(1020, 'random', '2016-11-19 19:50:33', '0000-00-00 00:00:00'),
(1021, 'random', '2016-11-19 19:51:47', '0000-00-00 00:00:00'),
(1022, 'random', '2016-11-19 19:52:13', '0000-00-00 00:00:00'),
(1023, 'random', '2016-11-19 19:53:05', '0000-00-00 00:00:00'),
(1024, 'random', '2016-11-19 19:55:16', '0000-00-00 00:00:00'),
(1025, 'random', '2016-11-19 20:00:40', '0000-00-00 00:00:00'),
(1026, 'random', '2016-11-19 20:04:07', '0000-00-00 00:00:00'),
(1027, 'random', '2016-11-19 20:05:37', '0000-00-00 00:00:00'),
(1028, 'random', '2016-11-19 20:06:18', '0000-00-00 00:00:00'),
(1029, 'random', '2016-11-19 20:24:52', '0000-00-00 00:00:00'),
(1030, 'random', '2016-11-19 20:31:27', '0000-00-00 00:00:00'),
(1031, 'random', '2016-11-19 20:34:11', '0000-00-00 00:00:00'),
(1032, 'random', '2016-11-19 20:35:18', '0000-00-00 00:00:00'),
(1033, 'random', '2016-11-19 20:36:18', '0000-00-00 00:00:00'),
(1034, 'random', '2016-11-19 20:40:16', '0000-00-00 00:00:00'),
(1035, 'random', '2016-11-19 20:44:35', '0000-00-00 00:00:00'),
(1036, 'random', '2016-11-19 21:06:52', '0000-00-00 00:00:00'),
(1037, 'random', '2016-11-19 21:34:57', '0000-00-00 00:00:00'),
(1038, 'random', '2016-11-19 21:35:06', '0000-00-00 00:00:00'),
(1039, 'random', '2016-11-19 21:36:28', '0000-00-00 00:00:00'),
(1040, 'random', '2016-11-19 21:41:25', '0000-00-00 00:00:00'),
(1041, 'random', '2016-11-19 22:36:16', '0000-00-00 00:00:00'),
(1042, 'random', '2016-11-20 00:23:36', '0000-00-00 00:00:00'),
(1043, 'random', '2016-11-20 00:34:59', '0000-00-00 00:00:00'),
(1044, 'random', '2016-11-20 00:35:22', '0000-00-00 00:00:00'),
(1045, 'random', '2016-11-20 07:08:25', '0000-00-00 00:00:00'),
(1046, 'random', '2016-11-20 07:27:36', '0000-00-00 00:00:00'),
(1047, '', '2016-11-20 07:34:56', '0000-00-00 00:00:00'),
(1048, 'random', '2016-11-20 08:54:02', '0000-00-00 00:00:00'),
(1049, 'random', '2016-11-20 08:58:42', '0000-00-00 00:00:00'),
(1050, 'random', '2016-11-20 09:30:56', '0000-00-00 00:00:00'),
(1051, 'random', '2016-11-20 09:53:00', '0000-00-00 00:00:00'),
(1052, 'random', '2016-11-20 10:00:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hack_users`
--

CREATE TABLE IF NOT EXISTS `hack_users` (
  `hack_company_id` int(11) NOT NULL AUTO_INCREMENT,
  `hack_company_name` varchar(256) NOT NULL,
  `hack_company_location` varchar(64) NOT NULL,
  `hack_user_name` varchar(64) NOT NULL,
  `hack_user_password` varchar(256) NOT NULL,
  `hack_company_show` varchar(2) NOT NULL,
  `hack_company_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hack_company_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hack_company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hack_qr_language_ads`
--
ALTER TABLE `hack_qr_language_ads`
  ADD CONSTRAINT `hack_qr_language_ads_ibfk_1` FOREIGN KEY (`hack_language_id`) REFERENCES `hack_language_list` (`hack_language_id`),
  ADD CONSTRAINT `hack_qr_language_ads_ibfk_2` FOREIGN KEY (`hack_qr_id`) REFERENCES `hack_qr_list` (`hack_qr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
