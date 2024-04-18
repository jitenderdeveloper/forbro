-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2024 at 09:40 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u941666937_forbrodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `permission`, `created_at`, `updated_at`, `status`) VALUES
(1, 'vihustore', '40af873ad18c1b05860406d6403e0483', NULL, '2019-12-31 07:33:46', '2024-04-12 08:07:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` int(11) NOT NULL,
  `captcha_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(500) NOT NULL,
  `word` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(1, '0000-00-00 00:00:00', '139.5.252.254', '127817'),
(2, '0000-00-00 00:00:00', '139.5.252.254', '552253'),
(3, '0000-00-00 00:00:00', '139.5.252.254', '552253'),
(4, '0000-00-00 00:00:00', '139.5.252.254', '160934'),
(5, '0000-00-00 00:00:00', '139.5.252.254', '135055'),
(6, '0000-00-00 00:00:00', '139.5.252.254', '038363'),
(7, '0000-00-00 00:00:00', '139.5.252.254', '087326'),
(8, '0000-00-00 00:00:00', '139.5.252.254', '140686'),
(9, '0000-00-00 00:00:00', '139.5.252.254', '074090'),
(10, '0000-00-00 00:00:00', '139.5.252.254', '316774'),
(11, '0000-00-00 00:00:00', '139.5.252.254', '756825'),
(12, '0000-00-00 00:00:00', '139.5.252.254', '546208'),
(13, '0000-00-00 00:00:00', '139.5.252.254', '052498'),
(14, '0000-00-00 00:00:00', '139.5.252.254', '593565'),
(15, '0000-00-00 00:00:00', '139.5.252.254', '967406'),
(16, '0000-00-00 00:00:00', '139.5.252.254', '661517'),
(17, '0000-00-00 00:00:00', '139.5.252.254', '835342'),
(18, '0000-00-00 00:00:00', '139.5.252.254', '222661'),
(19, '0000-00-00 00:00:00', '139.5.252.254', '855208'),
(20, '0000-00-00 00:00:00', '139.5.252.254', '226526'),
(21, '0000-00-00 00:00:00', '139.5.252.254', '696051'),
(22, '0000-00-00 00:00:00', '139.5.252.254', '429801'),
(23, '0000-00-00 00:00:00', '139.5.252.254', '986186'),
(24, '0000-00-00 00:00:00', '139.5.252.254', '491880'),
(25, '0000-00-00 00:00:00', '139.5.252.254', '393115'),
(26, '0000-00-00 00:00:00', '139.5.252.254', '717028'),
(27, '0000-00-00 00:00:00', '139.5.252.254', '785417'),
(28, '0000-00-00 00:00:00', '146.196.37.252', '442423'),
(29, '0000-00-00 00:00:00', '103.211.17.15', '248124');

-- --------------------------------------------------------

--
-- Table structure for table `ci_cart`
--

CREATE TABLE `ci_cart` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_cart`
--

INSERT INTO `ci_cart` (`id`, `name`, `price`, `image`) VALUES
(1, 'apple', '100', 'apple.jpg'),
(2, 'banana', '200', 'banana.jpg'),
(3, 'grapes', '300', 'grapes.jpg'),
(4, 'pea', '500', 'pea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('f3523b6dbe9c3cf7de5aa0b413359392', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574163445, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('c0ecbc19e3df265fbd3b6c663fa5898c', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574163402, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('a8a0d2573fe7722e1143713573ab85c3', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574163395, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"222661\";}'),
('e3332e416e86bafffa546853bcbf6bb9', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574163205, 'a:3:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"835342\";s:13:\"cart_contents\";a:3:{s:32:\"924653dc1654bcc984543e80b4bf5f51\";a:7:{s:5:\"rowid\";s:32:\"924653dc1654bcc984543e80b4bf5f51\";s:2:\"id\";s:1:\"1\";s:3:\"qty\";s:1:\"1\";s:5:\"price\";s:3:\"799\";s:4:\"name\";s:52:\"VIHU women\'s cotton floral printed kurti for women\'s\";s:7:\"options\";a:2:{s:7:\"imgname\";s:16:\"1574163164-1.png\";s:5:\"varid\";s:1:\"0\";}s:8:\"subtotal\";i:799;}s:11:\"total_items\";i:1;s:10:\"cart_total\";i:799;}}'),
('3d315713ba05998c9ee85796e48746ab', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162469, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"127817\";}'),
('1cbf356a3781662d1c83c1557a016fbe', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162477, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('dc36b61dbd5f8c06704a00d2a7c99aab', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162600, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"160934\";}'),
('56a57859a39a4b117bc614bf5d12e3dd', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162624, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('64730b1a076da6744827edfe54b642ea', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162727, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"087326\";}'),
('6dd488775cfe63760589ccfef380c2b9', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574163261, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('ca1f50af24ae4ee5cffbc238452a9048', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574162911, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"316774\";}'),
('468682c846d3f7003c64d57e03d06eba', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574162918, 'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:2:{s:2:\"id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";}}'),
('4aeccead70b54e0c9b7559f0c046f51b', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574162840, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"074090\";}'),
('d50f69d7d9b9a634f1a84ed2196553a8', '139.5.252.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574164737, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"785417\";}'),
('6b4850f524d4d7807d1a413844a31ff7', '146.196.37.252', 'Mozilla/5.0 (Windows NT 6.3; rv:72.0) Gecko/20100101 Firefox/72.0', 1575715146, 'a:3:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"442423\";s:13:\"cart_contents\";a:3:{s:32:\"32278cf64c3fa0d5efc3c637b338dde0\";a:7:{s:5:\"rowid\";s:32:\"32278cf64c3fa0d5efc3c637b338dde0\";s:2:\"id\";s:1:\"1\";s:3:\"qty\";s:1:\"1\";s:5:\"price\";s:3:\"799\";s:4:\"name\";s:52:\"VIHU women\'s cotton floral printed kurti for women\'s\";s:7:\"options\";a:2:{s:7:\"imgname\";s:16:\"1574163560-3.png\";s:5:\"varid\";s:1:\"0\";}s:8:\"subtotal\";i:799;}s:11:\"total_items\";i:1;s:10:\"cart_total\";i:799;}}'),
('94c38952b26dd85f39a600f927000ac9', '139.5.252.254', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574163833, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"717028\";}'),
('2018aee8f24e89f496f70c86711c1482', '103.211.17.15', 'Mozilla/5.0 (Windows NT 6.3; rv:72.0) Gecko/20100101 Firefox/72.0', 1576137946, 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"248124\";}');

-- --------------------------------------------------------

--
-- Table structure for table `cmspage_tab`
--

CREATE TABLE `cmspage_tab` (
  `PageID` int(11) NOT NULL,
  `page_content` text NOT NULL,
  `page_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cmspage_tab`
--

INSERT INTO `cmspage_tab` (`PageID`, `page_content`, `page_name`) VALUES
(1, '<p ><span ><span ><strong><em><u>HAWK DENMART</u></em></strong></span></span></p>\n <p ><strong><u>COMMITMENT FOR SERVICE</u></strong></p>\n\n<p><strong><em><u>Home</u></em></strong></p>\n\n<p>We, Hawk Denmart introduces ourself as a leading company in Dental community having its offices in Delhi &amp; NCR.We carry out trading and retailing of high quality consumables and equipments. We believe in provide best quality product to the each and every Dental sector.</p>\n\n<p><strong><em><u>About us</u></em></strong></p>\n\n<p>Today we represent many of the leading innovators in Dental products and would like to thank them for their support such as Hanau, Meta biomed, SS White, GC, Kodak, 3M ESPE, 3M UNITEK, Lidayn, Kalabhai, Micromega, Villa India, Capri, DPI, Ivoclar vivadent, Voco, Novabone, Coltene Whaledent, Zhermach, &nbsp;Hygenic, Shofu &amp; Dentsply and others.</p>\n\n<p>We are proud for all the efforts and hard work of the entire Hawk team is doing.</p>\n\n<p>We look forward to participate in the future growth of the Dental profession with extreme gratitude and thank the Dental community</p>\n\n<p>Our moto is to give you better price and service and that is our commitment</p>\n\n<p><strong><em><u>Team</u></em></strong></p>\n\n<p>We believe in team work and to fulfill this purpose we have dynamic and experienced dental professionals, sales professionals, marketing professionals and delivery team.</p>\n\n<p><strong><em><u>Products</u></em></strong></p>\n\n<p>Dental Consumables, Orthodontic material, Dental Equipments, Lab Consumables, Equipments and Medical Lenins.</p>\n\n<p>&nbsp;</p>\n\n<p>Warm Regards</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>for Hawk Denmart</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 'About US'),
(2, '<h2>Terms&nbsp;</h2>\n\n<p>Here enter terms.</p>\n', 'Terms'),
(3, '<h2>Privacy</h2>\n\n<p>Coming Soon.</p>\n', 'Privacy'),
(4, '<h1>Refund Policy</h1>\n\n<p>Coming Soon</p>\n', 'Refund Policy');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `supervisorID` int(11) NOT NULL DEFAULT 1,
  `name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invi24_admin`
--

CREATE TABLE `invi24_admin` (
  `id` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invi24_admin`
--

INSERT INTO `invi24_admin` (`id`, `username`, `password`, `status`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invi24_coupon`
--

CREATE TABLE `invi24_coupon` (
  `cponid` int(11) NOT NULL,
  `cponcode` varchar(500) NOT NULL,
  `reuseablity` int(11) NOT NULL COMMENT '0 for single time and 1 for infinite',
  `amount_type` int(11) NOT NULL COMMENT '0 for percentage and 1 for fixed amt',
  `amount` int(11) NOT NULL,
  `maxcap` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invi24_coupon`
--

INSERT INTO `invi24_coupon` (`cponid`, `cponcode`, `reuseablity`, `amount_type`, `amount`, `maxcap`, `status`) VALUES
(1, 'test001', 1, 1, 50, 50, 1),
(2, 'test002', 1, 0, 10, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invi24_optiongroups`
--

CREATE TABLE `invi24_optiongroups` (
  `OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) DEFAULT NULL,
  `Optionglobal` tinyint(1) NOT NULL,
  `categoryid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `invi24_optiongroups`
--

INSERT INTO `invi24_optiongroups` (`OptionGroupID`, `OptionGroupName`, `Optionglobal`, `categoryid`, `status`) VALUES
(1, 'color', 1, '', 1),
(2, 'size', 1, '', 1),
(5, 'weight', 1, '', 1),
(7, 'test1', 0, '13', 1),
(8, 'test2', 0, '13', 1),
(9, 'test3', 0, '4', 1),
(10, 'test4', 0, '27', 1),
(15, 'test5', 0, '18', 0),
(16, 'test1', 0, '14', 0),
(17, 'test22', 1, '', 0),
(18, 'test23', 0, '19', 0),
(19, 'test 25', 0, '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invi24_options`
--

CREATE TABLE `invi24_options` (
  `OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `invi24_options`
--

INSERT INTO `invi24_options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES
(1, 1, 'red'),
(2, 1, 'blue'),
(3, 1, 'green'),
(4, 2, 'S'),
(5, 2, 'M'),
(6, 2, 'L'),
(7, 2, 'XL'),
(8, 2, 'XXL'),
(9, 7, 'option test'),
(10, 8, 'opt test2');

-- --------------------------------------------------------

--
-- Table structure for table `invi24_productoptions`
--

CREATE TABLE `invi24_productoptions` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `OptionID` int(10) UNSIGNED NOT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `invi24_productoptions`
--

INSERT INTO `invi24_productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES
(1, 1, 1, 0, 1),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 1),
(4, 1, 4, 0, 2),
(5, 1, 5, 0, 2),
(6, 1, 6, 0, 2),
(7, 1, 7, 2, 2),
(8, 1, 8, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `invi24_productoptions_new`
--

CREATE TABLE `invi24_productoptions_new` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `OptionGroupID` int(11) NOT NULL,
  `ProductOptionValue` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invi24_qoute`
--

CREATE TABLE `invi24_qoute` (
  `q_id` int(11) NOT NULL,
  `q_name` varchar(50) NOT NULL,
  `q_phone` int(50) NOT NULL,
  `q_email` varchar(150) NOT NULL,
  `q_city` varchar(150) NOT NULL,
  `q_comments` varchar(500) NOT NULL,
  `q_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invi24_qoute`
--

INSERT INTO `invi24_qoute` (`q_id`, `q_name`, `q_phone`, `q_email`, `q_city`, `q_comments`, `q_date`, `status`) VALUES
(8, 'vicky', 1231231233, 'vv@gmail.com', 'delhi', 'hi', '2015-07-13 20:05:45', 0),
(9, 'vicky', 2147483647, 'vv@gmail.com', 'delhi', 'raj', '2015-07-13 20:07:43', 0),
(10, 'vicky', 1231231233, 'vicky.webaxiso@gmail.com', 'delhi', 'welcome', '2015-07-13 20:12:56', 0),
(11, 'vicky', 1231231233, 'vicky.webaxiso@gmail.com', 'delhi', 'welcome', '2015-07-13 20:24:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invi24_users`
--

CREATE TABLE `invi24_users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(500) DEFAULT NULL,
  `UserPassword` varchar(500) DEFAULT NULL,
  `UserDisplayName` varchar(500) NOT NULL,
  `UserFirstName` varchar(50) DEFAULT NULL,
  `UserLastName` varchar(50) DEFAULT NULL,
  `UserGender` varchar(20) NOT NULL,
  `UserCity` varchar(90) DEFAULT NULL,
  `UserState` varchar(20) DEFAULT NULL,
  `UserZip` varchar(12) DEFAULT NULL,
  `UserEmailVerified` tinyint(1) DEFAULT 0,
  `reset_email` int(11) NOT NULL DEFAULT 0,
  `UserRegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `UserVerificationCode` varchar(500) DEFAULT NULL,
  `UserPassResetCode` varchar(500) NOT NULL,
  `UserPassReset` int(11) NOT NULL DEFAULT 0,
  `UserIP` varchar(50) DEFAULT NULL,
  `UserPhone` varchar(20) DEFAULT NULL,
  `UserLandline` varchar(20) DEFAULT NULL,
  `UserCountry` varchar(20) DEFAULT NULL,
  `UserAddress` varchar(100) DEFAULT NULL,
  `UserAddress2` varchar(50) DEFAULT NULL,
  `delete_status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `invi24_users`
--

INSERT INTO `invi24_users` (`UserID`, `UserEmail`, `UserPassword`, `UserDisplayName`, `UserFirstName`, `UserLastName`, `UserGender`, `UserCity`, `UserState`, `UserZip`, `UserEmailVerified`, `reset_email`, `UserRegistrationDate`, `UserVerificationCode`, `UserPassResetCode`, `UserPassReset`, `UserIP`, `UserPhone`, `UserLandline`, `UserCountry`, `UserAddress`, `UserAddress2`, `delete_status`) VALUES
(1, 'azharmohd1996@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 'AZHAR', 'MOHD', '', 'BSR', 'UP', '203001', 0, 0, '2019-11-19 11:41:17', NULL, '', 0, NULL, '8218255107', NULL, NULL, '83', 'TATARPUR', '');

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `parentId`, `name`) VALUES
(1, 0, 'Node 1'),
(2, 0, 'Node 2'),
(3, 0, 'Node 3'),
(4, 0, 'Node 4'),
(5, 1, 'Node 1.1'),
(6, 1, 'Node 1.2'),
(7, 5, 'Node 1.1.1'),
(8, 5, 'Node 1.1.2'),
(9, 5, 'Node 1.1.3');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `PassId` int(11) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password_link` varchar(500) NOT NULL,
  `used_live` int(11) NOT NULL DEFAULT 0,
  `creation_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `validity_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popup_offers`
--

CREATE TABLE `popup_offers` (
  `id` int(11) NOT NULL,
  `pop_img_path` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  `button` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `popup_offers`
--

INSERT INTO `popup_offers` (`id`, `pop_img_path`, `url`, `button`, `status`, `date`) VALUES
(5, '1576840687_offer4_-_copy.png', 'http://localhost/vihu/vihu-collection', 'By Now', 0, '2019-12-20 11:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'php'),
(2, 'php frameword'),
(3, 'php tutorial'),
(4, 'jquery'),
(5, 'ajax'),
(6, 'mysql'),
(7, 'wordpress'),
(8, 'wordpress theme'),
(9, 'xml');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pincode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` text NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `complete_address` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `user_id`, `name`, `mobile`, `pincode`, `address`, `country`, `state`, `city`, `complete_address`, `created_at`, `updated_at`, `status`) VALUES
(1, 6, 'MOHD AZHAR', '8218255107', '121102', 'B32 MAIN SALIMAR GARDEN', 'India', 'HARYANA', 'FARIDABAD', 'B32 MAIN SALIMAR GARDEN,FARIDABAD,HARYANA - 121102', '2019-12-26 13:25:07', '2020-01-02 09:56:32', 0),
(2, 6, 'MOHD IRFAN', '8218255107', '203001', 'Vill Tatarpur Post Naya Gaon', 'India', 'UTTAR PRADESH', 'BULANDSHAHR', 'Vill Tatarpur Post Naya Gaon,BULANDSHAHR,UTTAR PRADESH - 203001', '2019-12-27 08:30:37', '2020-01-02 09:56:02', 0),
(3, 5, 'MOHD AZHAR', '9897562619', '201005', 'Village tatrpur post naya gaon', 'India', 'UTTAR PRADESH', 'GHAZIABAD', 'Village Tatrpur Post Naya Gaon,GHAZIABAD,UTTAR PRADESH - 201005', '2020-01-04 12:13:21', '2020-01-04 12:13:21', 0),
(4, 1, 'Ajay', '9897562619', '203001', 'Village tatrpur post naya gaon', 'India', 'UTTAR PRADESH', 'BULANDSHAHR', 'Village Tatrpur Post Naya Gaon,BULANDSHAHR,UTTAR PRADESH - 203001', '2020-01-06 08:42:31', '2020-02-11 08:25:58', 0),
(5, 1, 'AZHAR MOHD', '8218255107', '201005', 'B32 MAIN SALIMAR GARDEN', 'India', 'UTTAR PRADESH', 'GHAZIABAD', 'B32 MAIN SALIMAR GARDEN,GHAZIABAD,UTTAR PRADESH - 201005', '2020-01-31 08:22:37', '2020-01-31 08:22:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandid` int(11) NOT NULL,
  `brand_name` varchar(500) NOT NULL,
  `brand_logo` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandid`, `brand_name`, `brand_logo`, `status`) VALUES
(1, 'Vihu', '1576837155.png', 1),
(2, 'FORBRO', '1707632848.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pagename` varchar(255) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `heading`, `text`, `pagename`, `imgpath`, `date`, `status`) VALUES
(4, 'Welcome to the exhilarating world of FORBRO®', '<h2 style=\"text-align:center\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Our Story</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Welcome to the exhilarating world of FORBRO&reg;, where dreams are woven into reality and fashion is more than just clothing. Our journey began with a spark of inspiration and a relentless pursuit of excellence.&nbsp;We delved deep into the market, uncovering the untold desires of fashion enthusiasts and trendsetters. Armed with this knowledge, we set out to create a brand that resonates with the soul of fashion.&nbsp;From concept to creation, we&#39;ve poured our hearts into every stitch, every fabric, and every design, ensuring that our products are not just garments, but stories waiting to be told.</span>&nbsp;<span style=\"font-family:Verdana,Geneva,sans-serif\">Eventually, in a world of fashion and flair, FORBRO&reg; was born. From humble beginnings to a roaring success, our clothing brand has conquered hearts and closets alike.&nbsp;With a passion for style and a touch of audacity, we&#39;ve crafted garments that tell stories, evoke emotions, and ignite the spirit of adventure.&nbsp;Join us on this thrilling ride as we redefine fashion and celebrate individuality with every stitch and seam.</span></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Our Vision</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">At FORBRO&reg;, we envision a world where fashion is a canvas for self-expression, a medium for empowerment, and a celebration of individuality.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Innovation</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">We push the boundaries of creativity, blending tradition with modernity to craft unique and captivating designs.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Quality</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">From fabric selection to finishing touches, we uphold the highest standards to deliver products that exude excellence.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Craftsmanship</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">Every garment is a masterpiece, meticulously crafted by skilled artisans who infuse passion and precision into every stitch.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Versatility</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">Our designs are versatile, and adaptable to diverse styles and occasions, ensuring that every individual finds their perfect fit.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Unleash Your Style</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">At FORBRO&reg;, we believe in fashion that empowers, inspires, and ignites the soul. Unleash your unique style and embrace the extraordinary with our exclusive collections.</span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\">Our clothing is designed to make a statement and leave a lasting impression. It&#39;s time to express yourself with FORBRO&reg;!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px; text-align:center\"><span style=\"font-size:16px\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">Join the fashion revolution and let your style speak volumes. With FORBRO&reg;, every outfit tells a story - what will yours say?</span></strong></span></div>\r\n', 'about-us', '1708421480.png', '2024-02-17 12:43:38', 0),
(8, 'Terms & Conditions', '<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>INTRODUCTION AND OVERVIEW OF FORBRO:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">This policy applies to all the FORBRO platforms (the &ldquo;Site&rdquo; or &ldquo;Web Site&rdquo; or &ldquo;Mobile Application&rdquo; or &ldquo;App&rdquo; or &ldquo;Us&rdquo; or &ldquo;We&rdquo; or &quot;Social Media Platforms&quot;), which is operated and owned by FRIENDS MART., marketed and/or managed by FRIENDS MART. It is FRIENDS MART&rsquo;s policy to comply with general laws for protecting user information and bank details shared for the purpose of availing FRIENDS MART services. This regulates the processing of information relating to you and grants you various rights in respect of your personal data.&nbsp;Any Images, Data or Files Uploaded on the website must not be used without the consent of the authorized personnel of the brand.&nbsp;The Web Site contains links to other websites over which we have no control. FRIENDS MART is not responsible for the privacy policies or practices of other web sites to which you choose to link from https://www.forbro.in/. We encourage you to review the privacy policies of those other web sites so you can understand how they collect, use and share your information.</span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-family:Verdana,Geneva,sans-serif\">&nbsp;<br />\r\n<strong>PRIVACY POLICY</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">This Privacy Policy is intended for all Users of https://www.forbro.in/. FRIENDS MART is dedicated to respecting and protecting the privacy of our Users. All information User provides, such as phone number, home address, current location, e-mail addresses or any additional personal information found on the site, will be used solely to support User relationship with FRIENDS MART. FRIENDS MART strives to develop innovative methods to serve Users even better. FRIENDS MART is designed to operate efficiently while keeping user&rsquo;s privacy in mind. This Privacy Policy outlines the types of personal information that FRIENDS MART gathers from its users and takes steps to safeguard it. In order to provide a personalized browsing experience, FRIENDS MART may collect information from you, which may include technical or other related information from the device used to access FRIENDS MART platforms including without limitation to your current location. By registering or using or visiting FRIENDS MART platforms, you explicitly accept, without limitation or qualification, the collection, use and transfer of the personal information provided by you in the manner described in the Terms &amp; Conditions and Privacy Policy. Kindly read the Terms &amp; Conditions and the Privacy Policy carefully as it affects your rights and liabilities under law. If you do not accept the Terms and Conditions and this Privacy Policy, PLEASE DO NOT USE FRIENDS MART SERVICES.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART reserves the right to take any rightful legal action against the customer if any fraudulent activity is identified such as multiple usage &amp; abuse of coupon code, wrong claims for orders etc.</span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-family:Verdana,Geneva,sans-serif\">&nbsp;<br />\r\n<strong>USER&rsquo;S CONSENT</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">By using or visiting FRIENDS MART platforms, you expressly consent to the Terms and conditions and our Privacy Policy and to FRIENDS MART processing of Personal Information for the purposes given under the Terms &amp; Conditions and this Privacy Policy, subject to the local laws, in the following ways such as;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to create a personalized account containing your contact information, email-id, address, bank details etc based on information you provide or imported from other sites or applications, or any information provided by third parties;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to contact you about any Website updates, informational and service-related communications, including important security updates</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to inform you of other services available from FRIENDS MART or its affiliates, if any. (&ldquo;Affiliates&rdquo; means entities that control or are controlled by or are under common control with FRIENDS MART); to enable you to provide feedback, and contact FRIENDS MART customer service in case of any problem with the services or emergency;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to conduct surveys, make promotions, advertise and to provide the results thereof such as success stories etc; to provide information about you and your experience to further promote our websites etc.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to help your friends, contacts, and potential customers find your profile and connect with you;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to allow you to share your experience and information with your connections;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">to give search engines access to public information; to detect, investigate and prevent activities that may violate our policies and are illegal; to provide certain information that enable users to network, post information on social media such as Facebook, twitter, Instagram etc.; to generate internal reports about the use of our platforms and many more related uses.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART uses the information provided by you to create its own database and networking and may enable third parties to see your personal information for marketing purposes. FRIENDS MART has certain hashtags such as #FRIENDSMART #FORBRO #BeBoldBeConfidentBeYou which will be provided to you while you purchase merchandise from FRIENDS MART platforms. If you upload a picture on social media such as Facebook or Instagram using these hashtags, the FRIENDS MART platforms will automatically link that picture to FRIENDS MART platforms. The picture will be solely used for marketing and promotional purposes and shall be visible to anyone who uses the FRIENDS MART platforms. Your Profile information may be used for networking with other community members or may be visible to service providers or customers who are using the Website. In addition, portions of your personal information may be made public for networking.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">You acknowledge that by providing your personal information, you have consented to your information being used as described here. We shall take measures to safeguard your information from unauthorized access or inappropriate use by third parties. However, FRIENDS MART has no control over third parties&#39; websites and is not responsible for any sort of misuse or any other liability. You acknowledge that by linking with third party web sites, you are aware of the potential misuse and risk involved.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">SECURITY</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">You are responsible for ensuring that your login credentials (your username and password) are kept confidential. In order to provide security measures, we have implemented technical and organizational measures specially designed to secure your personal information from accidental loss and unauthorized access, use, alteration or disclosure. However, due to the inherent open nature of the Internet and wireless communications, we do not provide guarantee that your personal information will be completely free from unauthorized access by third parties, because the transferring of money over or through FRIENDS MART&rsquo;s Platforms are not within our exclusive control.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Use of FRIENDS MART services implies Users acknowledgement and assumption of this risk involved. FRIENDS MART has made all reasonable efforts to put in place reasonable physical, electronic, and managerial procedures to safeguard the information we collect.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We seek to ensure compliance with the requirements of the Information Technology Act, 2000 as amended and rules made there under to ensure the protection and preservation of your privacy. However, it is your responsibility to not provide any sensitive data that you would not want to make public. You should be aware that your account may be monitored by the customers and service providers across the Websites.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We also use cookies to administer our platforms and deliver a personalized experience. For additional detailed information on each of these, please see below.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">COOKIES</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">&ldquo;Cookies&rdquo; are pieces of information that may be placed on User&rsquo;s device by a service provider for the purpose of facilitating and enhancing User communication and interaction. To the extent possible depending upon User&rsquo;s device, FRIENDS MART may use cookies (and similar items such as web beacons, tags, etc.) to customize User experience, to make usage of Apps more convenient or to enable FRIENDS MART to enhance its Services. FRIENDS MART may also use and place cookies on User devices from our third party service providers in connection with the User services, such as an analytics provider that helps User manage and analyze FRIENDS MART Services. User may stop or restrict the placement of cookies on certain devices or flush them from User&rsquo;s browser by adjusting User&rsquo;s web browser preferences. However, User may still use FRIENDS MART Services, but it may interfere with some of its functionality. Cookies and similar items are not used by FRIENDS MART, and may automatically retrieve personal information from Users device without User&rsquo;s knowledge. Cookies are device and browser specific, so if User makes a change to User&rsquo;s environment FRIENDS MART may reinstall a cookie.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We might utilize session ID cookies to enable certain features of the website, to better understand how you interact with the website and to monitor aggregate usage by FRIENDS MART users and web traffic routing on the Website. Unlike persistent cookies, session cookies are deleted from your computer/ device when you log off from the website and close your browser. Third party advertisers on the website may also place or read cookies on your browser. You can instruct your browser, by changing its options, to stop accepting cookies or to prompt you before accepting a cookie from the website you visit. If you do not accept cookies, however, you may not be able to use all portions of the website or Services.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We might utilize session ID cookies to enable certain features of the website, to better understand how you interact with the website and to monitor aggregate usage by FRIENDS MART users and web traffic routing on the Website. Unlike persistent cookies, session cookies are deleted from your computer/ device when you log off from the website and close your browser. Third party advertisers on the website may also place or read cookies on your browser. You can instruct your browser, by changing its options, to stop accepting cookies or to prompt you before accepting a cookie from the website you visit. If you do not accept cookies, however, you may not be able to use all portions of the website or Services.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We might also use tracking technologies which may record information such as internet domain and host names; internet protocol (IP) addresses; browser software and operating system types; click stream patterns; dates and times; and location from which the website is accessed. Our use of cookies and other tracking technologies allows us to improve our web site and your web experience. We may also analyze information that does not contain Personal Information for Trends and statistics.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">CHANGES TO THIS PRIVACY POLICY</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART, reserves the right, at its discretion, to change, modify, add, or remove portions from this Privacy Policy at any time. However, if at any time in the future FRIENDS MART plans to use personal information or location-based data in a way that materially differs from this Privacy Policy, such as sharing such information with more third parties, FRIENDS MART, will post such changes here and provide Users the opportunity to opt-out of such differing uses. Users, continuing to use our services, following the posting of any changes to this Privacy Policy means User&rsquo;s acceptance to such changes.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">POLICY TOWARDS CHILDREN</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">The Website is not directed to children under the age of 18 years. We do not knowingly collect personally identifiable information from individuals under the age of 18 years. We do not specifically collect information about children without parental consent or supervision. We encourage you to participate in your child&rsquo;s experience with FRIENDS MART.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">INFORMATION WE COLLECT AND DATA RETENTION</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We commit to respecting your online privacy and data. We further recognize your need for appropriate protection and management of any personally identifiable information (&ldquo;Personal Information&rdquo;) you share with us. The Personal Information is used for such purposes as mentioned in this privacy policy. FRIENDS MART shall collect from its User Private Information and Publicly Available information.<br />\r\nPrivate Information: &nbsp;Users full name, age, mobile number, permanent address, current location, e-mail address, bank details or any other information required for registering and creating and account and thereafter availing FRIENDS MART&rsquo;s services. We may share your Private Information only as described in this Privacy Policy and related documents.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Publicly-Available Information: The information made available to the public shall include:<br />\r\nName (as registered).<br />\r\nContact Information including email address, phone number and residential address.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART does not solicit any information provided by the User; however, if the information is required by any Central/State Authority for whatsoever purpose, information shall be shared by FRIENDS MART, without seeking Users prior permission. FRIENDS MART may send User service-related emails (e.g., account verification, changes/ updates to features of the Service, technical and security notices).&nbsp;We collect the following general types of information about you when you visit our Website: personal information, demographic information, behavioral information, and indirect information. In each case, however, it is indicated on the web site whether any personal or demographic information must be provided to use the requested services or not. Demographic information is information that is not unique to you in the sense that it refers to selected population characteristics, such as your ZIP code or postal code, age, preferences, gender, race or ethnicity, occupation etc. We also collect behavioural information regarding how you use our Website, the areas of our site that you visit, what services you access, geo-location, browser and operating system type, domain names, access times and referring Web Site addresses etc. This information is necessary for analyzing the use of resources, troubleshooting problems, preventing fraud, and improving our services.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We collect indirect information about the User when you use certain third party services on our Web Site and the collection of such information is considered necessary for that purpose. We collect financial information such as Bank Account details or Credit Card /Debit Card details or other payment related details; solely for the purpose of making payment to the service providers for the services availed by you.&nbsp;We do not collect sensitive personal information like physical and mental or other health conditions or medical records and history; Biometric information such as fingerprints, voice &amp; facial patterns and DNA any other sensitive information which is confidential or sensitive by its nature.&nbsp;We do not store information of users like the password of your email account or bank details. The password of your FRIENDS MART account automatically gets saved in the FRIENDS MART server when you create an account or register with FRIENDS MART.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">If you, choose to login with Facebook/ Google or similar sites, we import the information that you choose to share with us by installing the application or logging into that platform or Web Site, and we make it part of your account. Because FRIENDS MART allows you to share your information we make certain information about you publicly available by default. Such information may, for example, be accessed by everyone on the Internet, including users without accounts, and may appear in public search engine search results.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We may personalize the advertisement shown on our websites. In order to provide this personalization, in addition to information we collect about you on our sites, we acquire information (including personal, demographic, behavioural and indirect information) about the User from third parties who provide it to us.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We may also ask for your feedback after the services you avail in an effort to deliver the best possible experience in future. We might communicate with you regularly with tips, advice and survey information on using the Website to improve our services. However, we provide you with the opportunity to opt-out of these types of communications. If you choose to receive these types of communications at the time of registration, but later decide to refrain from receiving these communications, you may simply log into your account and edit your account by changing the option to &lsquo;Unsubscribe&rsquo;.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We retain your personal information to further provide you with better services. If you wish to delete or close your account, please contact us at support@forbro.in. &nbsp;An email will be sent to you to confirm that your personal information and bank details have been deleted. A repository copy of an email will be retained only for as long as FRIENDS MART reasonably considers necessary for its audit and record purposes.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART shall also retain logs, demographic, indirect, and statistical information that may relate to you but do not identify you personally. If your personal information was previously accessed by others using our Sites, we are not able to delete the information or copies thereof from their systems.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">If you do not want your information to be processed as described by this policy, you may revoke your consent to our Privacy Policy. If you wish to do so, please contact us. However, please note that if you do withdraw your consent, you may not be able to use the relevant services and your account will be deleted.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART holds the discretionary right to delete the data after the period of 60 days from the date of deletion of your account. Thereafter, FRIENDS MART may either delete your personal information or de-identify it so that it is anonymous and not attributed to your identity. For example, we may retain information to prevent, investigate, or identify possible wrongdoing in connection with the Service or to comply with legal obligations.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">NON-PERSONAL INFORMATION THAT FRIENDS MART COLLECTS</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART, automatically collects non-personal information from the User for the FRIENDS MART Services, such as IP host address, device-specific identifiers, computer or smart phones configurations, number of times page has been viewed and usage habits of the FRIENDS MART users or any similar data. It may be possible at times that while collecting non-personal information through automatic means, FRIENDS MART may unintentionally collect or receive personal information that is mixed in with the non-personal information. While FRIENDS MART will make reasonable efforts to prevent such incidental data collection, the possibility still exists. If FRIENDS MART does inadvertently collect personal information, we will not intentionally use such personal information for any purposes. FRIENDS MART shall not be responsible for the same if the information is collected unintentionally in such a scenario. FRIENDS MART may also aggregate demographic information collected from the Users (such as the number of users in a particular State) in a manner which does not identify any one individual.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">INFORMATION AND DATA USED</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Any of the information we collect from you may be used in one of the following ways but not restricted to:</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">To Improve Our Website and Foster Positive User Experience. We continually strive to improve our Website offerings based on the information and feedback we receive from you.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">To Improve Services and Respond to Queries Raised. Your information helps us to more effectively respond to User&rsquo;s service requests and support needs. The email address you provide may be used further to send you information and updates pertaining to your account or requests, in addition to receiving occasional FRIENDS MART news, updates, related product or service information, etc.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Legal Purposes:</strong> We may share your information when we believe in good faith that such sharing is reasonably necessary in order to investigate, prevent, or take action regarding possible illegal activities or to comply with legal process. We may also share your information to investigate and address threats or potential threats for the safety of public or any person, to investigate and address violations of this Privacy Policy or the Terms of Service, or to investigate and address violations of the rights of third parties and/or to protect the rights, property and safety of FRIENDS MART users, employees, or public. This may involve the sharing of your information with Law enforcement, Government Agencies, Courts, and/or other organizations on account of legal requests such as summons, court order or Government demand to comply with the Law.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Others:</strong> If we believe that disclosure is necessary or appropriate to protect the rights, property, or safety of FRIENDS MART, its User&rsquo;s or any other person for that matter. This includes exchanging information with other companies and organizations for the purposes of fraud protection and credit risk reduction.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">INFORMATION SHARING AND THIRD PARTY DISCLOSURES</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART uses the information we gather on the Web Site, whether personal, demographic, collective or technical, for the purposes of operating and improving the Web Site, fostering a positive user experience, and delivering the products and services that we offer.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">If you have provided consent to do so, we may also use the information gathered to inform you of other services available or our affiliated companies or to contact you for receiving feedback regarding current services or potential and services that may be offered. We may also provide additional communications and information on new services which may be of interest to you. The nature and frequency of these messages will vary depending upon the information we have about you. However, you may choose to refrain from receiving the same while opting out at the time of registration or may be later as and when you decide to do so.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Although we are committed to protecting your privacy, we do not promise, and you should not expect, that your personal information or private communications will always remain private. It may be shared to third parties as and when required. As a user of the platforms, understand and agree that you assume all responsibility and risk for your use of the platforms, the internet generally, and the documents you post or access and for your conduct on and off the Websites..</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We may share your information with third parties who help us in the delivery of our services to you. We disclose information to companies and individuals we employ to perform functions on our behalf.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of FRIENDS MART/ FRIENDS MART Apparels Pvt. Ltd. Terms of Use, or as otherwise required by law.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We transfer information about you if FRIENDS MART Apparels Pvt. Ltd./FRIENDS MART is acquired by or merged with another company. In this event, we will notify you before transferring or disclosing your personal information.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART may or may not provide links to third party services from within FRIENDS MART Service. FRIENDS MART is not responsible for the privacy practices or the content of these third party services and such links should not be construed as an endorsement of any such third party services by us.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART shall not be responsible for any act of the user&rsquo;s or third parties which is contrary to the Terms of Use or Laws. FRIENDS MART shall not be held responsible for the illegal act of the user towards the other.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">ACCESS TO PERSONAL INFORMATION</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">The User can gain access to the Personal Information you have provided by visiting our Website/Apps. If you need any assistance with respect to Log In, you can send us an email on support@forbro.in. In order to inquire about the privacy setting of your personal information with us, contact the relevant Officer/Authority on support@forbro.in. FRIENDS MART retains indefinitely all the information we gather about you in an effort to make your repeat use of the Web Site more efficient, practical and relevant. You can delete your account from FRIENDS MART&rsquo;s online database, at any time. This will remove all your personal details and bank account information with us.</span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-family:Verdana,Geneva,sans-serif\">&nbsp;<br />\r\n<strong>OPT-OUT PROCESS</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">The User may unsubscribe from FRIENDS MART advertisement/marketing messages. All unsubscribe or opt-out requests should be sent to us at support@forbro.in. and FRIENDS MART, will process the Users request within a reasonable time after receipt. However, FRIENDS MART is not responsible for removing Users personal information from the lists of any third party to whom User has shared information at his/her own discretion. The User should contact such third parties directly and if the user does contact, we assume that you have acknowledged all the risks involved therein.<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART TERMS OF SERVICE</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Use of the FRIENDS MART Service is governed by, and subject to, the Terms of Service. This Privacy Policy is incorporated into such terms.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-family:Verdana,Geneva,sans-serif\">CONTACT:</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">For questions or concerns relating to privacy, feel free to contact us at<br />\r\nAddress: Plot number 65, Sidharth Enclave Delhi Road, SONIPAT, Sonipat, Haryana, 131001<br />\r\nEmail Id : support@forbro.in<br />\r\n&nbsp;<br />\r\n<strong>DISCLAIMER:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Verdana,Geneva,sans-serif\">WE RESERVE THE RIGHT TO CHANGE THE TERMS AND PRIVACY POLICY FROM TIME TO TIME AS WE DEEM FIT, WITHOUT ANY PRIOR INTIMATION TO YOU. YOUR CONTINUED USE OF THE WEB SITE SIGNIFIES YOUR ACCEPTANCE OF ANY AMENDMENT TO THESE TERMS. YOU ARE THEREFORE ADVISED TO READ THE PRIVACY POLICY ON A REGULAR BASIS. IN CASE YOU DISAGREE WITH ANY OF THE TERMS AND PRIVACY POLICIES OR ANY AMENDMENTS THEREAFTER, YOU MAY TERMINATE YOUR USE OF THIS WEBSITE IMMEDIATELY. WE FOLLOW GENERALLY ACCEPTED STANDARDS TO PROTECT THE PERSONAL INFORMATION SUBMITTED TO US, INCLUDING THE USE OF SERVICES FORM THIRD PARTY SERVICE PROVIDERS. THEREFORE, WHILE WE STRIVE TO USE COMMERCIALLY ACCEPTABLE MEANS TO PROTECT YOUR PERSONAL INFORMATION, WE CANNOT GUARANTEE ABSOLUTE SECURITY AND THEREBY USAGE IN A MANNER THAT IS INCONSISTENT WITH THIS PRIVACY POLICY. WE ASSUME NO LIABILITY OR RESPONSIBILITY FOR DISCLOSURE OF YOUR INFORMATION DUE TO ERRORS IN TRANSMISSION, UNAUTHORIZED THIRD-PARTY ACCESS, OR OTHER CAUSES BEYOND OUR CONTROL. THE ONUS OF PROTECTING THE CLASSIFIED/ PERSONAL INFORMATION DETAILS OF EVERY USER SOLELY DEPENDS ON THEM AND WE SHALL TAKE NO LIABILITY IN CASE OF ANY BREACH THEREUPON. WE RECOMMEND YOU TO PROTECT YOUR PERSONAL INFORMATION BY NEVER PROVIDING YOU CREDIT CARD, DEBIT OR ANY OTHER BANK ACCOUNT DETAILS TO ANYONE. FRIENDS MART PROVIDES MAXIMUM CARE AS POSSIBLE TO ENSURE THAT ALL OR ANY DATA / INFORMATION IN RESPECT OF ELECTRONIC TRANSFER OF MONEY REMAIN SECURE. FOR COMPLETING ONLINE TRANSACTIONS INVOLVING PAYMENTS A USER IS DIRECTED TO A SECURED PAYMENT GATEWAY, FRIENDS MART/FRIENDS MART APPARELS PVT. LTD. DO NOT STORE OR KEEP FINANCIAL DATA SUCH AS CREDIT CARD NUMBERS/PASSWORDS/PINS ETC OR ANY &ldquo;PERSONAL ACCOUNT RELATED INFORMATION&rdquo; FOR ITS OWN USE. SINCE THE TRANSACTION HAPPENS ON A THIRD PARTY NETWORK NOT CONTROLLED BY FRIENDS MART/ FRIENDS MART APPARELS PVT. LTD., ONCE AN ONLINE TRANSACTION HAS BEEN COMPLETED, THE PERSONAL ACCOUNT RELATED INFORMATION IS NOT ACCESSIBLE TO ANYONE AT FRIENDS MART/FRIENDS MART APPARELS PVT. LTD., AT THE PAYMENT GATEWAY, AND THIS ENSURES MAXIMUM SECURITY. FRIENDS MART/FRIENDS MART APPARELS PVT. LTD. SHALL NOT BE LIABLE FOR ANY LOSS OR DAMAGE SUSTAINED BY REASON OF ANY DISCLOSURE (INADVERTENT OR OTHERWISE) OF ANY INFORMATION CONCERNING THE USER&rsquo;S ACCOUNT AND/ OR INFORMATION RELATING TO OR REGARDING ONLINE TRANSACTIONS USING CREDIT CARDS / DEBIT CARDS AND/ OR THEIR VERIFICATION PROCESS AND PARTICULARS NOR FOR ANY ERROR, OMISSION OR INACCURACY WITH RESPECT TO ANY INFORMATION SO DISCLOSED AND USED WHETHER OR NOT IN PURSUANCE OF A LEGAL PROCESS OR OTHERWISE. YOU PLAY AN IMPORTANT ROLE IN KEEPING YOUR PERSONAL INFORMATION SECURE. YOU SHOULD NOT SHARE YOUR USER NAME, PASSWORD, OR OTHER SECURITY INFORMATION OF YOUR FRIENDS MART ACCOUNT WITH ANYONE. IF WE RECEIVE INSTRUCTIONS USING YOUR USER NAME AND PASSWORD, WE WILL CONSIDER THAT YOU HAVE AUTHORIZED THE INSTRUCTIONS.</span><br />\r\n&nbsp;</p>\r\n', 'terms-condition', '1708422190.png', '2024-02-17 13:28:11', 0);
INSERT INTO `tbl_cms` (`id`, `heading`, `text`, `pagename`, `imgpath`, `date`, `status`) VALUES
(9, 'FAQ\'s', '<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>General Queries</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>IS CASH ON DELIVERY (COD) AVAILABLE?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Yes! COD is available for orders below INR 5000 on all serviceable pincodes.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW TO PLACE AN EXCHANGE REQUEST?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Visit the returns section on the website or (LINK) to raise a return request for your order</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Submit the required details in the empty fields</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Follow the instructions and select the item(s) you would want to exchange</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- Select the item(s) you would want to exchange them with</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">- A confirmation email would be shared once the exchange request is approved.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Please note that the exchange request needs to be raised within 7 days of the delivery date. Reverse pickup will be done in 2-3 working days by our courier partner. Once we receive the product, we will get in touch with you to confirm your request.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In addition, all returned products must be unused or unwashed, or undamaged and must be returned with the original packing and tags when we receive them. Items without tags will not be accepted. The new order will be on its way as soon as the exchange item is verified at our warehouse. The exchange process is subject to your exchange item meeting the above conditions.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>ARE THERE ANY ADDITIONAL CHARGES FOR RETURNS/EXCHANGE?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We do not charge any additional handling fee for returns.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW LONG WILL MY ORDER TAKE TO ARRIVE?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">The order usually takes 7-10 working days to reach all the metros and tier-I cities, however, for some pin codes it might take a little more time. In case of delay please write to us at support@forbro.in</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW WOULD I KNOW IF MY ORDER IS PLACED?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">You will get a confirmation of the placed order on your registered email ID and phone number. Besides, we will further notify you once it is dispatched from our warehouse.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>WHAT HAPPENS IF MY SHIPMENT DOES NOT GET DELIVERED ON TIME?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In case the order does not get delivered within 7-10 working days, you can write to us at support@forbro.in. We will do our best to get it delivered at the earliest.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>ARE THERE ANY SHIPPING CHARGES ON DELIVERY?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We charge a shipping fee of INR 100/- on all orders.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>DO WE SHIP OUTSIDE INDIA?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">At the moment, we do not deliver items outside India. However, you can make a purchase from anywhere in the world as long as the shipping address is within India.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Cancellation, Return &amp; Refund</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW CAN I CANCEL AN ORDER?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">To make a cancellation, please log into your account and book the cancellation of the requested order from the return and cancellation tab.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I RETURN / EXCHANGE A PRODUCT?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In case of returns/exchange, visit the returns/exchange section on the website or (LINK) to raise a return/exchange request for your order. You need to pack the product back in its original packing (with tags) and handover the packet to our courier person. As soon as we have it back in our warehouse, we will verify and issue a refund on the same account details used while making payment. Please note that no handling fee is charged for returns. In addition, free products received during any promotional events/offers are not eligible for returns.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>WHAT HAPPENS TO ORDERS WHERE PRODUCTS ARE RECEIVED IN DAMAGED CONDITION?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We strive to deliver the best quality standards, however, in case you receive a damaged / defective product, we should be notified within 24 hours of delivery. Also, we request you to email us a photograph of the damaged / defective product on support@forbro.in. Incase you fail to intimate about the same, return might not be processed.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>WHAT SHOULD I DO IF I RECEIVE A DIFFERENT ITEM FROM THE ONE THAT I HAVE ORDERED?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">We try our best to deliver the right products within time, however, in a few rare cases if you receive a different / wrong product, please visit the returns section on the website or (LINK) to raise a return request if you receive any wrong order.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>WITHIN HOW MANY DAYS OF PURCHASE CAN I RETURN MY ORDER?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Return request needs to be raised within 7 days of the delivery date.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>I HAVE REQUESTED A REPLACEMENT, WHEN WILL I GET IT?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">For return / exchange, the reverse pick up will be done in 2-3 days once the request is placed. It takes 7-10 days for the product to arrive at our warehouse, post which it undergoes a quality check. Once it passes the QC, the refund for return or the request for exchange will be initiated within 72 hours. Once the product is dispatched, it will take 7-10 working days to reach you. For further assistance please email us at support@forbro.in.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>CAN I RETURN ALL ITEMS?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Boxers, Socks, Perfumes and Face Masks cannot be returned keeping hygiene into consideration. In addition, orders including any free products received during promotional events/offers are not eligible for returns / exchanges.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>WHEN WILL I GET MY REFUND?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">It takes 7-10 days for the product to arrive at our warehouse after the reverse pickup is done, after which it undergoes a quality check. Once it passes the QC, the refund for return or the exchange request will be initiated within 72 hours.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Please note if any promotional/coupon code is redeemed during a purchase, the full amount will be refunded as store credit. In case of a non-promotional purchase, the full amount will be credited to the bank account.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I GET MY REFUND FOR DISCOUNTED ITEMS?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In case of orders placed with discount is returned, the discount will be waived of and the products will be billed on MRP. The balance amount will be refunded as store credit.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I GET MY REFUND FOR PREPAID ORDERS?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">For prepaid orders, the mode of refund depends on the mode of payment for the order. The amount would be credited to your account within 2-3 working days. If not, please get in touch with your respective bank.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Please note if any promotional/coupon code is redeemed during a purchase, the full amount will be refunded as store credit. In case of a non-promotional purchase, the full amount will be credited to the bank account.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I GET MY REFUND FOR CASH ON DELIVERY ORDERS?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Once the product(s) reaches us and passes the QC, a coupon code worth the Order Value will be sent to the registered email and whatsapp number which can be used in under 30 days from the issuance of the coupon code</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I CHECK THE STATUS FOR MY RETURNED ORDER?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">For further information on your returned order, you may log into your account or reach us at support@forbro.in.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Sizing Help</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HOW DO I DETERMINE THE CORRECT SIZE FOR ME?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">While placing your order you will find an option for the SIZE CHART on the product page which includes detailed information on sizes and fit. You may click on the same and find your perfect size.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Payments</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>MY PAYMENT WAS DEDUCTED FROM THE BANK ACCOUNT BUT THE ORDER WASN&rsquo;T PLACED. WHAT SHOULD I DO?</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">In most cases, the payment gets automatically credited back to you account within 2-3 business days. In case it does not, mail us the details of your transaction at support@forbro.in. We will verify and get back to you at the earliest.</span><br />\r\n&nbsp;</p>\r\n', 'faq', '1708423194.png', '2024-02-17 14:15:36', 0),
(10, 'RETURNS & EXCHANGE POLICY', '<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">1. We offer 7 days hassle-free returns &amp; exchange from the date of delivery and a further 5-7 days for the returned product(s) to reach us. We do not offer reverse pick-up services.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2. Pick-up will be attempted twice. If the courier company is unable to pick up the shipment. You will have to send the shipment back to the company address.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">3. For COD orders, a coupon code will be provided in the span of 5 working days from the day of return pickup on your registered e-mail address/contact number.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">4. Please return your product(s) in the same condition as it was shipped. If the products are returned in poor condition or have clearly been worn, a refund would not be provided.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">5. Kindly allow 7 days for the return to be processed and the amount to be shown in your bank account. PLEASE NOTE: REFUND / BANK TRANSFER ARE ONLY APPLICABLE FOR PREPAID ORDERS / ONLINE PAYMENTS MADE ON OUR WEBSITE.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">6. Payments made with COD option WILL RECEIVE A COUPON CODE WORTH THE SAME AS YOUR ORDER VALUE WHICH IS VALID FOR 1 YEAR FROM THE DATE OF ISSUANCE OF THE COUPON CODE.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">7. Shipping Charges are Non-Refundable</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">8. You can get in touch with us about any issues at our customer support portal or drop us a line at support@forbro.in and we will be happy to help. You can also reach us on +91 99993 32693. All queries will be solved between Monday-Saturday, 10am-&nbsp; 6pm. All pending queries will be solved on priority the next day.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">9. Please note that we do not solve customer queries on WhatsApp.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">10. Cancellations will only be possible till the order has not been dispatched from our warehouse.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">11. To maintain strict hygiene standards of our products, we do not accept returns on several product categories, including but not limited to masks, boxers, briefs, trunks and perfumes. FRIENDS MART may, at its discretion and without prior notice, change the products or categories to which this policy would apply.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">12. Once a product is exchanged and is delivered, no further actions such as exchange or refund would be applicable on that order.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>REFUNDS FOR FREE PRODUCT DEALS</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Any items purchased during a BOGO Sale (Buy 1 Get 1 Free) or any such promotions wherein free products are included, such orders will not be eligible for any returns or exchanges.&nbsp;<br />\r\n&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>SELF-SHIPPING OF ORDERS FOR RETURNS/EXCHANGE:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">1. In case your pincode is non-serviceable for a reverse pick up, you&rsquo;ll have courier the product(s) to the following address:</span>&nbsp;<span style=\"font-family:Verdana,Geneva,sans-serif\">FRIENDS MART WAREHOUSE:&nbsp;Plot number 65, Sidharth Enclave Delhi Road, SONIPAT, Sonipat, Haryana, 131001</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2. Please ensure the items are packed securely to prevent any loss or damage during transit and the ORDER ID and registered mobile number is mentioned on the packaging. All items must be in unused condition with all original tags attached and packaging intact. Within 48 hours of receiving the product(s), the complete amount + INR 100 (in lieu of courier charges) will be refunded to your bank account in case of prepaid and in the form of coupon code in case of COD.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>PLEASE NOTE: </strong>We request that you do not use The Professional Couriers for self return as they are not reliable and the package will not be accepted at the warehouse. Please make sure your courier costs do not exceed the amount stipulated above. We recommend using &lsquo;Speed Post&rsquo; as your courier service. Speed Post is a Government of India owned entity and has the most widely distributed postal network in India.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>TERMS AND CONDITIONS</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">1. Bank account details provided by the customer would be final and any error in the details provided by the customer would not be the responsibility of the brand.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">2. If you have received an SMS or EMAIL of order delivered status and if it&#39;s not received by you, please email or contact us within 24 hours.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;email:support@.forbro.in</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;phone no.: +91 99993 32693.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">3. The customer will be under an obligation to take utmost care of the product(s) whilst the products are in their possession. This includes all of the product(s) instructions, documents and wrappings while returning the product(s) in the same condition as received.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">4. In circumstances where the customer feels that the product does not conform to the standards at the time of delivery, they shall promptly contact us via our mail support@forbro.in with details of the product and its damage within 1 day of receiving the products; whereon, the customer will receive instructions from us.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif\">5. Upon return of the product, we will fully examine it and notify the customer of their right to a refund (if any) via e-mail within a reasonable period of time. We aim to process the refund as soon as possible and, in any case, within 30 working days from the day, we confirmed to the customer via e-mail that they are entitled to a refund.</span></p>\r\n', 'returns', '1708422483.png', '2024-02-17 14:27:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_upload`
--

CREATE TABLE `tbl_image_upload` (
  `fid` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `f_size` bigint(22) NOT NULL,
  `f_link` varchar(255) NOT NULL,
  `f_type` varchar(255) NOT NULL,
  `d_date` date NOT NULL,
  `context` varchar(100) NOT NULL,
  `refrence_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_image_upload`
--

INSERT INTO `tbl_image_upload` (`fid`, `f_name`, `f_size`, `f_link`, `f_type`, `d_date`, `context`, `refrence_id`) VALUES
(4, '1577175684.png', 325, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175684.png', 'image/png', '2019-12-24', 'product', 'img5e00610970e26'),
(5, '15771756841.png', 395, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771756841.png', 'image/png', '2019-12-24', 'product', 'img5e00610970e26'),
(6, '1577175766.jpg', 83, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175766.jpg', 'image/jpeg', '2019-12-24', 'product', 'img5dfccec938949'),
(7, '15771757661.jpg', 92, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771757661.jpg', 'image/jpeg', '2019-12-24', 'product', 'img5dfccec938949'),
(8, '1577175766.png', 50, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175766.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(9, '15771757661.png', 14, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771757661.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(10, '1577175766.gif', 49, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175766.gif', 'image/gif', '2019-12-24', 'product', 'img5dfccec938949'),
(11, '1577175767.png', 142, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175767.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(12, '15771757671.png', 7, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771757671.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(13, '1577175767.gif', 1787, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577175767.gif', 'image/gif', '2019-12-24', 'product', 'img5dfccec938949'),
(14, '15771757672.png', 5, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771757672.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(15, '15771757673.png', 25, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771757673.png', 'image/png', '2019-12-24', 'product', 'img5dfccec938949'),
(16, '1577188846.jpg', 31, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577188846.jpg', 'image/jpeg', '2019-12-24', 'product', 'imgox18383'),
(17, '15771888461.jpg', 34, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771888461.jpg', 'image/jpeg', '2019-12-24', 'product', 'imgox18383'),
(18, '15771888462.jpg', 46, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771888462.jpg', 'image/jpeg', '2019-12-24', 'product', 'imgox18383'),
(19, '1577188847.jpg', 34, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577188847.jpg', 'image/jpeg', '2019-12-24', 'product', 'imgox18383'),
(20, '1577190700.jpg', 76, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577190700.jpg', 'image/png', '2019-12-24', 'product', 'imgxxxxxxxx029393'),
(21, '1577190729.jpg', 74, 'http://localhost/ecom-pro/assets/uploads/admin/product/1577190729.jpg', 'image/png', '2019-12-24', 'product', 'imgxxxxxxxx029393'),
(22, '15771907291.jpg', 80, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771907291.jpg', 'image/png', '2019-12-24', 'product', 'imgxxxxxxxx029393'),
(23, '15771907292.jpg', 99, 'http://localhost/ecom-pro/assets/uploads/admin/product/15771907292.jpg', 'image/png', '2019-12-24', 'product', 'imgxxxxxxxx029393'),
(25, '1577252201.jpg', 34, 'http://localhost/ecommerce/assets/uploads/admin/product/1577252201.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f55fdbc20'),
(26, '15772522011.jpg', 46, 'http://localhost/ecommerce/assets/uploads/admin/product/15772522011.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f55fdbc20'),
(27, '15772522012.jpg', 34, 'http://localhost/ecommerce/assets/uploads/admin/product/15772522012.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f55fdbc20'),
(28, '1577252233.jpg', 33, 'http://localhost/ecommerce/assets/uploads/admin/product/1577252233.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f58177cd5'),
(29, '1577252234.jpg', 30, 'http://localhost/ecommerce/assets/uploads/admin/product/1577252234.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f58177cd5'),
(30, '15772522341.jpg', 31, 'http://localhost/ecommerce/assets/uploads/admin/product/15772522341.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f58177cd5'),
(31, '15772522342.jpg', 32, 'http://localhost/ecommerce/assets/uploads/admin/product/15772522342.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f58177cd5'),
(32, '1577253741.jpg', 36, 'http://localhost/ecommerce/assets/uploads/admin/product/1577253741.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f5a6b6c47'),
(33, '15772537411.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/15772537411.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f5a6b6c47'),
(34, '1577253776.jpg', 36, 'http://localhost/ecommerce/assets/uploads/admin/product/1577253776.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f5305c55f'),
(35, '15772537761.jpg', 36, 'http://localhost/ecommerce/assets/uploads/admin/product/15772537761.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02f5305c55f'),
(36, '1577254421.jpg', 31, 'http://localhost/ecommerce/assets/uploads/admin/product/1577254421.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02fdf072abc'),
(37, '15772544211.jpg', 34, 'http://localhost/ecommerce/assets/uploads/admin/product/15772544211.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02fdf072abc'),
(38, '1577254422.jpg', 32, 'http://localhost/ecommerce/assets/uploads/admin/product/1577254422.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02fdf072abc'),
(39, '1577254746.jpg', 34, 'http://localhost/ecommerce/assets/uploads/admin/product/1577254746.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02fe19de45b'),
(40, '15772547461.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/15772547461.jpg', 'image/jpeg', '2019-12-25', 'product', 'img5e02fe19de45b'),
(41, '1577777477.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/1577777477.jpg', 'image/jpeg', '2019-12-31', 'product', 'img5e0af93c43a86'),
(42, '15777774771.jpg', 34, 'http://localhost/ecommerce/assets/uploads/admin/product/15777774771.jpg', 'image/jpeg', '2019-12-31', 'product', 'img5e0af93c43a86'),
(43, '15777774772.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/15777774772.jpg', 'image/jpeg', '2019-12-31', 'product', 'img5e0af93c43a86'),
(44, '1578144274.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/1578144274.jpg', 'image/jpeg', '2020-01-04', 'product', 'img5e1092026e28b'),
(45, '15781442741.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/15781442741.jpg', 'image/jpeg', '2020-01-04', 'product', 'img5e1092026e28b'),
(46, '15781442742.jpg', 79, 'http://localhost/ecommerce/assets/uploads/admin/product/15781442742.jpg', 'image/png', '2020-01-04', 'product', 'img5e1092026e28b'),
(47, '1578307398.jpg', 37, 'http://localhost/ecommerce/assets/uploads/admin/product/1578307398.jpg', 'image/jpeg', '2020-01-06', 'product', 'img5e130f2b6450e'),
(48, '15783073981.jpg', 38, 'http://localhost/ecommerce/assets/uploads/admin/product/15783073981.jpg', 'image/jpeg', '2020-01-06', 'product', 'img5e130f2b6450e'),
(49, '15783073982.jpg', 42, 'http://localhost/ecommerce/assets/uploads/admin/product/15783073982.jpg', 'image/jpeg', '2020-01-06', 'product', 'img5e130f2b6450e'),
(52, '1578568638.jpg', 605, 'https://vihustore.com/assets/uploads/admin/product/1578568638.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170a6c6be4f'),
(53, '1578568639.jpg', 1637, 'https://vihustore.com/assets/uploads/admin/product/1578568639.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170a6c6be4f'),
(54, '1578568905.jpg', 511, 'https://vihustore.com/assets/uploads/admin/product/1578568905.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170ca2b2923'),
(55, '1578568906.jpg', 598, 'https://vihustore.com/assets/uploads/admin/product/1578568906.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170ca2b2923'),
(56, '1578568909.jpg', 1935, 'https://vihustore.com/assets/uploads/admin/product/1578568909.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170ca2b2923'),
(57, '1578569160.jpeg', 37, 'https://vihustore.com/assets/uploads/admin/product/1578569160.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170db940306'),
(58, '15785691601.jpeg', 106, 'https://vihustore.com/assets/uploads/admin/product/15785691601.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170db940306'),
(59, '1578569220.jpeg', 270, 'https://vihustore.com/assets/uploads/admin/product/1578569220.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170dfab16bf'),
(60, '1578569221.jpeg', 325, 'https://vihustore.com/assets/uploads/admin/product/1578569221.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170dfab16bf'),
(61, '1578569274.jpeg', 97, 'https://vihustore.com/assets/uploads/admin/product/1578569274.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170e332cae5'),
(62, '15785692741.jpeg', 124, 'https://vihustore.com/assets/uploads/admin/product/15785692741.jpeg', 'image/jpeg', '2020-01-09', 'product', 'img5e170e332cae5'),
(63, '1578569703.jpg', 1555, 'https://vihustore.com/assets/uploads/admin/product/1578569703.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170fbba76b0'),
(64, '1578569705.jpg', 642, 'https://vihustore.com/assets/uploads/admin/product/1578569705.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170fbba76b0'),
(65, '1578569706.jpg', 1251, 'https://vihustore.com/assets/uploads/admin/product/1578569706.jpg', 'image/jpeg', '2020-01-09', 'product', 'img5e170fbba76b0'),
(66, '1578897650.jpg', 37, 'https://vihustore.com/assets/uploads/admin/product/1578897650.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c10e8afa79'),
(67, '15788976501.jpg', 36, 'https://vihustore.com/assets/uploads/admin/product/15788976501.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c10e8afa79'),
(68, '15788976502.jpg', 42, 'https://vihustore.com/assets/uploads/admin/product/15788976502.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c10e8afa79'),
(69, '15788976503.jpg', 38, 'https://vihustore.com/assets/uploads/admin/product/15788976503.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c10e8afa79'),
(70, '1578897790.jpg', 605, 'https://vihustore.com/assets/uploads/admin/product/1578897790.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c115618ec0'),
(71, '1578897792.jpg', 1637, 'https://vihustore.com/assets/uploads/admin/product/1578897792.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c115618ec0'),
(72, '1578897793.jpg', 38, 'https://vihustore.com/assets/uploads/admin/product/1578897793.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1111b36fc'),
(73, '15788977931.jpg', 38, 'https://vihustore.com/assets/uploads/admin/product/15788977931.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1111b36fc'),
(74, '15788977932.jpg', 79, 'https://vihustore.com/assets/uploads/admin/product/15788977932.jpg', 'image/png', '2020-01-13', 'product', 'img5e1c1111b36fc'),
(75, '1578898010.jpg', 11, 'https://vihustore.com/assets/uploads/admin/product/1578898010.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c123372bc1'),
(76, '15788980101.jpg', 43, 'https://vihustore.com/assets/uploads/admin/product/15788980101.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c123372bc1'),
(77, '15788980102.jpg', 24, 'https://vihustore.com/assets/uploads/admin/product/15788980102.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c123372bc1'),
(78, '15788980103.jpg', 8, 'https://vihustore.com/assets/uploads/admin/product/15788980103.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c123372bc1'),
(79, '1578898142.jpg', 13, 'https://vihustore.com/assets/uploads/admin/product/1578898142.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c12c4145bb'),
(80, '15788981421.jpg', 62, 'https://vihustore.com/assets/uploads/admin/product/15788981421.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c12c4145bb'),
(81, '1578898299.jpeg', 69, 'https://vihustore.com/assets/uploads/admin/product/1578898299.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c135ff216b'),
(82, '15788982991.jpeg', 86, 'https://vihustore.com/assets/uploads/admin/product/15788982991.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c135ff216b'),
(83, '15788982992.jpeg', 58, 'https://vihustore.com/assets/uploads/admin/product/15788982992.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c135ff216b'),
(84, '1578898300.jpeg', 150, 'https://vihustore.com/assets/uploads/admin/product/1578898300.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c135ff216b'),
(85, '1578898492.jpg', 76, 'https://vihustore.com/assets/uploads/admin/product/1578898492.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c13a594b9a'),
(86, '1578898493.jpg', 402, 'https://vihustore.com/assets/uploads/admin/product/1578898493.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c13a594b9a'),
(87, '15788984931.jpg', 330, 'https://vihustore.com/assets/uploads/admin/product/15788984931.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c13a594b9a'),
(88, '1578898719.jpg', 300, 'https://vihustore.com/assets/uploads/admin/product/1578898719.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c151841289'),
(89, '1578898844.jpg', 311, 'https://vihustore.com/assets/uploads/admin/product/1578898844.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c153e85dc9'),
(90, '15788988441.jpg', 377, 'https://vihustore.com/assets/uploads/admin/product/15788988441.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c153e85dc9'),
(91, '15788988442.jpg', 299, 'https://vihustore.com/assets/uploads/admin/product/15788988442.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c153e85dc9'),
(92, '15788988443.jpg', 289, 'https://vihustore.com/assets/uploads/admin/product/15788988443.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c153e85dc9'),
(93, '1578898973.jpg', 311, 'https://vihustore.com/assets/uploads/admin/product/1578898973.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1613ce2fd'),
(94, '15788989731.jpg', 377, 'https://vihustore.com/assets/uploads/admin/product/15788989731.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1613ce2fd'),
(95, '15788989732.jpg', 289, 'https://vihustore.com/assets/uploads/admin/product/15788989732.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1613ce2fd'),
(96, '15788989733.jpg', 299, 'https://vihustore.com/assets/uploads/admin/product/15788989733.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c1613ce2fd'),
(97, '1578899636.png', 427, 'https://vihustore.com/assets/uploads/admin/product/1578899636.png', 'image/png', '2020-01-13', 'product', 'img5e1c167f2c6ba'),
(98, '15788996361.png', 119, 'https://vihustore.com/assets/uploads/admin/product/15788996361.png', 'image/png', '2020-01-13', 'product', 'img5e1c167f2c6ba'),
(99, '1578899637.png', 619, 'https://vihustore.com/assets/uploads/admin/product/1578899637.png', 'image/png', '2020-01-13', 'product', 'img5e1c167f2c6ba'),
(100, '1578899728.jpeg', 69, 'https://vihustore.com/assets/uploads/admin/product/1578899728.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c190158348'),
(101, '15788997281.jpeg', 86, 'https://vihustore.com/assets/uploads/admin/product/15788997281.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c190158348'),
(102, '1578899729.jpeg', 58, 'https://vihustore.com/assets/uploads/admin/product/1578899729.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c190158348'),
(103, '15788997291.jpeg', 150, 'https://vihustore.com/assets/uploads/admin/product/15788997291.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c190158348'),
(104, '1578899807.png', 515, 'https://vihustore.com/assets/uploads/admin/product/1578899807.png', 'image/png', '2020-01-13', 'product', 'img5e1c194d673fb'),
(105, '15788998071.png', 294, 'https://vihustore.com/assets/uploads/admin/product/15788998071.png', 'image/png', '2020-01-13', 'product', 'img5e1c194d673fb'),
(106, '1578899809.png', 420, 'https://vihustore.com/assets/uploads/admin/product/1578899809.png', 'image/png', '2020-01-13', 'product', 'img5e1c194d673fb'),
(107, '15788998091.png', 1589, 'https://vihustore.com/assets/uploads/admin/product/15788998091.png', 'image/png', '2020-01-13', 'product', 'img5e1c194d673fb'),
(112, '1578903280.png', 427, 'https://vihustore.com/assets/uploads/admin/product/1578903280.png', 'image/png', '2020-01-13', 'product', 'img5e1c26bf90f75'),
(113, '1578903281.png', 119, 'https://vihustore.com/assets/uploads/admin/product/1578903281.png', 'image/png', '2020-01-13', 'product', 'img5e1c26bf90f75'),
(114, '15789032811.png', 619, 'https://vihustore.com/assets/uploads/admin/product/15789032811.png', 'image/png', '2020-01-13', 'product', 'img5e1c26bf90f75'),
(115, '1578903433.jpeg', 69, 'https://vihustore.com/assets/uploads/admin/product/1578903433.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c27790c57a'),
(116, '15789034331.jpeg', 86, 'https://vihustore.com/assets/uploads/admin/product/15789034331.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c27790c57a'),
(117, '1578903434.jpeg', 58, 'https://vihustore.com/assets/uploads/admin/product/1578903434.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c27790c57a'),
(118, '15789034341.jpeg', 150, 'https://vihustore.com/assets/uploads/admin/product/15789034341.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c27790c57a'),
(119, '1578903754.jpeg', 69, 'https://vihustore.com/assets/uploads/admin/product/1578903754.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c28c182f95'),
(120, '15789037541.jpeg', 86, 'https://vihustore.com/assets/uploads/admin/product/15789037541.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c28c182f95'),
(121, '15789037542.jpeg', 58, 'https://vihustore.com/assets/uploads/admin/product/15789037542.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c28c182f95'),
(122, '15789037543.jpeg', 150, 'https://vihustore.com/assets/uploads/admin/product/15789037543.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c28c182f95'),
(123, '1578903938.png', 515, 'https://vihustore.com/assets/uploads/admin/product/1578903938.png', 'image/png', '2020-01-13', 'product', 'img5e1c297571172'),
(124, '15789039381.png', 294, 'https://vihustore.com/assets/uploads/admin/product/15789039381.png', 'image/png', '2020-01-13', 'product', 'img5e1c297571172'),
(125, '1578903939.png', 420, 'https://vihustore.com/assets/uploads/admin/product/1578903939.png', 'image/png', '2020-01-13', 'product', 'img5e1c297571172'),
(126, '15789039391.png', 1589, 'https://vihustore.com/assets/uploads/admin/product/15789039391.png', 'image/png', '2020-01-13', 'product', 'img5e1c297571172'),
(127, '1578910547.png', 453, 'https://vihustore.com/assets/uploads/admin/product/1578910547.png', 'image/png', '2020-01-13', 'product', 'img5e1c2a0044ffe'),
(128, '1578910549.png', 1961, 'https://vihustore.com/assets/uploads/admin/product/1578910549.png', 'image/png', '2020-01-13', 'product', 'img5e1c2a0044ffe'),
(129, '1578910550.png', 2039, 'https://vihustore.com/assets/uploads/admin/product/1578910550.png', 'image/png', '2020-01-13', 'product', 'img5e1c2a0044ffe'),
(130, '1578910715.jpeg', 84, 'https://vihustore.com/assets/uploads/admin/product/1578910715.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c43e6a231b'),
(131, '1578910716.jpeg', 125, 'https://vihustore.com/assets/uploads/admin/product/1578910716.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c43e6a231b'),
(132, '15789107161.jpeg', 121, 'https://vihustore.com/assets/uploads/admin/product/15789107161.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c43e6a231b'),
(133, '15789107162.jpeg', 216, 'https://vihustore.com/assets/uploads/admin/product/15789107162.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c43e6a231b'),
(134, '1578910844.png', 416, 'https://vihustore.com/assets/uploads/admin/product/1578910844.png', 'image/png', '2020-01-13', 'product', 'img5e1c446dbb413'),
(135, '15789108441.png', 119, 'https://vihustore.com/assets/uploads/admin/product/15789108441.png', 'image/png', '2020-01-13', 'product', 'img5e1c446dbb413'),
(136, '15789108442.png', 732, 'https://vihustore.com/assets/uploads/admin/product/15789108442.png', 'image/png', '2020-01-13', 'product', 'img5e1c446dbb413'),
(137, '1578910997.jpeg', 106, 'https://vihustore.com/assets/uploads/admin/product/1578910997.jpeg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c44f4cd154'),
(138, '1578910997.png', 150, 'https://vihustore.com/assets/uploads/admin/product/1578910997.png', 'image/png', '2020-01-13', 'product', 'img5e1c44f4cd154'),
(139, '1578910998.png', 691, 'https://vihustore.com/assets/uploads/admin/product/1578910998.png', 'image/png', '2020-01-13', 'product', 'img5e1c44f4cd154'),
(140, '15789109981.png', 376, 'https://vihustore.com/assets/uploads/admin/product/15789109981.png', 'image/png', '2020-01-13', 'product', 'img5e1c44f4cd154'),
(141, '1578911122.png', 262, 'https://vihustore.com/assets/uploads/admin/product/1578911122.png', 'image/png', '2020-01-13', 'product', 'img5e1c457eb2e50'),
(142, '15789111221.png', 586, 'https://vihustore.com/assets/uploads/admin/product/15789111221.png', 'image/png', '2020-01-13', 'product', 'img5e1c457eb2e50'),
(143, '1578911123.png', 717, 'https://vihustore.com/assets/uploads/admin/product/1578911123.png', 'image/png', '2020-01-13', 'product', 'img5e1c457eb2e50'),
(144, '1578912915.jpg', 76, 'https://vihustore.com/assets/uploads/admin/product/1578912915.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4c7d73bbe'),
(145, '15789129151.jpg', 427, 'https://vihustore.com/assets/uploads/admin/product/15789129151.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4c7d73bbe'),
(146, '15789129152.jpg', 402, 'https://vihustore.com/assets/uploads/admin/product/15789129152.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4c7d73bbe'),
(147, '1578912916.jpg', 330, 'https://vihustore.com/assets/uploads/admin/product/1578912916.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4c7d73bbe'),
(148, '15789129161.jpg', 300, 'https://vihustore.com/assets/uploads/admin/product/15789129161.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4c7d73bbe'),
(149, '1578913239.jpg', 289, 'https://vihustore.com/assets/uploads/admin/product/1578913239.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4d538f4b8'),
(150, '1578913240.jpg', 311, 'https://vihustore.com/assets/uploads/admin/product/1578913240.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4d538f4b8'),
(151, '15789132401.jpg', 299, 'https://vihustore.com/assets/uploads/admin/product/15789132401.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4d538f4b8'),
(152, '15789132402.jpg', 377, 'https://vihustore.com/assets/uploads/admin/product/15789132402.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4d538f4b8'),
(153, '1578913755.jpg', 910, 'https://vihustore.com/assets/uploads/admin/product/1578913755.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c4f4d7bbb2'),
(155, '1578914180.jpg', 644, 'https://vihustore.com/assets/uploads/admin/product/1578914180.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5086e4364'),
(156, '1578914187.jpg', 644, 'https://vihustore.com/assets/uploads/admin/product/1578914187.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5086e4364'),
(157, '1578914188.jpg', 1475, 'https://vihustore.com/assets/uploads/admin/product/1578914188.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5086e4364'),
(158, '1578914521.jpg', 594, 'https://vihustore.com/assets/uploads/admin/product/1578914521.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c52bccb4b3'),
(159, '1578914524.jpg', 594, 'https://vihustore.com/assets/uploads/admin/product/1578914524.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c52bccb4b3'),
(160, '1578914527.jpg', 1975, 'https://vihustore.com/assets/uploads/admin/product/1578914527.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c52bccb4b3'),
(161, '1578914677.jpg', 2016, 'https://vihustore.com/assets/uploads/admin/product/1578914677.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5355be711'),
(162, '1578914682.jpg', 1774, 'https://vihustore.com/assets/uploads/admin/product/1578914682.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5355be711'),
(163, '15789146821.jpg', 1992, 'https://vihustore.com/assets/uploads/admin/product/15789146821.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5355be711'),
(164, '1578914685.jpg', 2016, 'https://vihustore.com/assets/uploads/admin/product/1578914685.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c5355be711'),
(165, '1578915175.jpg', 264, 'https://vihustore.com/assets/uploads/admin/product/1578915175.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c521d3aed2'),
(166, '1578915257.jpg', 224, 'https://vihustore.com/assets/uploads/admin/product/1578915257.jpg', 'image/jpeg', '2020-01-13', 'product', 'img5e1c521d3aed2'),
(167, '1579239877.jpg', 1921, 'https://vihustore.com/assets/uploads/admin/product/1579239877.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e21499c9d906'),
(168, '1579239884.jpg', 1569, 'https://vihustore.com/assets/uploads/admin/product/1579239884.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e21499c9d906'),
(169, '1579239887.jpg', 1932, 'https://vihustore.com/assets/uploads/admin/product/1579239887.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e21499c9d906'),
(170, '1579239891.jpg', 1921, 'https://vihustore.com/assets/uploads/admin/product/1579239891.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e21499c9d906'),
(172, '1579242707.png', 895, 'https://vihustore.com/assets/uploads/admin/product/1579242707.png', 'image/png', '2020-01-17', 'product', 'img5e2146a105e14'),
(173, '1579242724.png', 1048, 'https://vihustore.com/assets/uploads/admin/product/1579242724.png', 'image/png', '2020-01-17', 'product', 'img5e2146a105e14'),
(174, '1579242728.png', 690, 'https://vihustore.com/assets/uploads/admin/product/1579242728.png', 'image/png', '2020-01-17', 'product', 'img5e2146a105e14'),
(175, '1579244222.png', 1045, 'https://vihustore.com/assets/uploads/admin/product/1579244222.png', 'image/png', '2020-01-17', 'product', 'img5e214a9656792'),
(176, '1579244232.png', 1135, 'https://vihustore.com/assets/uploads/admin/product/1579244232.png', 'image/png', '2020-01-17', 'product', 'img5e214a9656792'),
(177, '1579244234.png', 873, 'https://vihustore.com/assets/uploads/admin/product/1579244234.png', 'image/png', '2020-01-17', 'product', 'img5e214a9656792'),
(178, '1579244236.png', 748, 'https://vihustore.com/assets/uploads/admin/product/1579244236.png', 'image/png', '2020-01-17', 'product', 'img5e214a9656792'),
(180, '15792443471.jpg', 1692, 'https://vihustore.com/assets/uploads/admin/product/15792443471.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e215b27810ce'),
(181, '1579244588.png', 1032, 'https://vihustore.com/assets/uploads/admin/product/1579244588.png', 'image/png', '2020-01-17', 'product', 'img5e215bf71de56'),
(182, '1579244589.png', 1035, 'https://vihustore.com/assets/uploads/admin/product/1579244589.png', 'image/png', '2020-01-17', 'product', 'img5e215bf71de56'),
(183, '1579244590.png', 657, 'https://vihustore.com/assets/uploads/admin/product/1579244590.png', 'image/png', '2020-01-17', 'product', 'img5e215bf71de56'),
(184, '1579245399.jpg', 1565, 'https://vihustore.com/assets/uploads/admin/product/1579245399.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e215b27810ce'),
(185, '1579245603.jpg', 2016, 'https://vihustore.com/assets/uploads/admin/product/1579245603.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e215fd36376d'),
(186, '1579246163.jpg', 1682, 'https://vihustore.com/assets/uploads/admin/product/1579246163.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e2160bb5e47f'),
(187, '1579246168.jpg', 1221, 'https://vihustore.com/assets/uploads/admin/product/1579246168.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e2160bb5e47f'),
(188, '1579246172.jpg', 1919, 'https://vihustore.com/assets/uploads/admin/product/1579246172.jpg', 'image/jpeg', '2020-01-17', 'product', 'img5e2160bb5e47f'),
(197, '1580297372.jpg', 758, 'https://vihustore.com/assets/uploads/admin/product/1580297372.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316c639bdac'),
(198, '15802973721.jpg', 944, 'https://vihustore.com/assets/uploads/admin/product/15802973721.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316c639bdac'),
(199, '1580297376.jpg', 1136, 'https://vihustore.com/assets/uploads/admin/product/1580297376.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316c639bdac'),
(200, '15802973761.jpg', 896, 'https://vihustore.com/assets/uploads/admin/product/15802973761.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316c639bdac'),
(201, '1580297377.jpg', 682, 'https://vihustore.com/assets/uploads/admin/product/1580297377.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316c639bdac'),
(202, '1580297626.jpg', 1336, 'https://vihustore.com/assets/uploads/admin/product/1580297626.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316d8bd5199'),
(203, '1580297627.jpg', 1428, 'https://vihustore.com/assets/uploads/admin/product/1580297627.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316d8bd5199'),
(204, '1580297631.jpg', 1209, 'https://vihustore.com/assets/uploads/admin/product/1580297631.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316d8bd5199'),
(205, '1580297635.jpg', 833, 'https://vihustore.com/assets/uploads/admin/product/1580297635.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316d8bd5199'),
(206, '1580297814.jpg', 1428, 'https://vihustore.com/assets/uploads/admin/product/1580297814.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316e4bebcd4'),
(207, '15802978141.jpg', 1336, 'https://vihustore.com/assets/uploads/admin/product/15802978141.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316e4bebcd4'),
(208, '1580297818.jpg', 1209, 'https://vihustore.com/assets/uploads/admin/product/1580297818.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316e4bebcd4'),
(209, '1580297821.jpg', 833, 'https://vihustore.com/assets/uploads/admin/product/1580297821.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316e4bebcd4'),
(210, '1580298015.jpg', 957, 'https://vihustore.com/assets/uploads/admin/product/1580298015.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316f0823785'),
(211, '15802980151.jpg', 1101, 'https://vihustore.com/assets/uploads/admin/product/15802980151.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316f0823785'),
(212, '1580298033.jpg', 1308, 'https://vihustore.com/assets/uploads/admin/product/1580298033.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316f0823785'),
(213, '1580298039.jpg', 1858, 'https://vihustore.com/assets/uploads/admin/product/1580298039.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316f0823785'),
(214, '1580298040.jpg', 737, 'https://vihustore.com/assets/uploads/admin/product/1580298040.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316f0823785'),
(215, '1580298232.jpg', 1398, 'https://vihustore.com/assets/uploads/admin/product/1580298232.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316fe5d1faa'),
(216, '15802982321.jpg', 1605, 'https://vihustore.com/assets/uploads/admin/product/15802982321.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316fe5d1faa'),
(217, '1580298239.jpg', 1166, 'https://vihustore.com/assets/uploads/admin/product/1580298239.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316fe5d1faa'),
(218, '1580298245.jpg', 845, 'https://vihustore.com/assets/uploads/admin/product/1580298245.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e316fe5d1faa'),
(220, '1580298634.jpg', 907, 'https://vihustore.com/assets/uploads/admin/product/1580298634.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31717b4757c'),
(221, '1580298638.jpg', 766, 'https://vihustore.com/assets/uploads/admin/product/1580298638.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31717b4757c'),
(222, '1580298643.jpg', 651, 'https://vihustore.com/assets/uploads/admin/product/1580298643.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31717b4757c'),
(224, '1580298953.jpg', 857, 'https://vihustore.com/assets/uploads/admin/product/1580298953.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e3172be01a2b'),
(225, '1580298957.jpg', 976, 'https://vihustore.com/assets/uploads/admin/product/1580298957.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e3172be01a2b'),
(226, '15802989571.jpg', 1018, 'https://vihustore.com/assets/uploads/admin/product/15802989571.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e3172be01a2b'),
(227, '1580298959.jpg', 613, 'https://vihustore.com/assets/uploads/admin/product/1580298959.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e3172be01a2b'),
(228, '1580298960.jpg', 1124, 'https://vihustore.com/assets/uploads/admin/product/1580298960.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e3172be01a2b'),
(229, '1580299170.jpg', 868, 'https://vihustore.com/assets/uploads/admin/product/1580299170.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31738d0d1a0'),
(230, '15802991701.jpg', 1029, 'https://vihustore.com/assets/uploads/admin/product/15802991701.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31738d0d1a0'),
(231, '1580299175.jpg', 1063, 'https://vihustore.com/assets/uploads/admin/product/1580299175.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31738d0d1a0'),
(232, '1580299176.jpg', 1433, 'https://vihustore.com/assets/uploads/admin/product/1580299176.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31738d0d1a0'),
(233, '1580299177.jpg', 707, 'https://vihustore.com/assets/uploads/admin/product/1580299177.jpg', 'image/jpeg', '2020-01-29', 'product', 'img5e31738d0d1a0'),
(237, '1580379775.jpeg', 99, 'https://vihustore.com/assets/uploads/admin/product/1580379775.jpeg', 'image/jpeg', '2020-01-30', 'product', 'img5e32ae67f2236'),
(238, '15803797751.jpeg', 96, 'https://vihustore.com/assets/uploads/admin/product/15803797751.jpeg', 'image/jpeg', '2020-01-30', 'product', 'img5e32ae67f2236'),
(239, '1580379776.jpeg', 98, 'https://vihustore.com/assets/uploads/admin/product/1580379776.jpeg', 'image/jpeg', '2020-01-30', 'product', 'img5e32ae67f2236'),
(240, '15803797761.jpeg', 92, 'https://vihustore.com/assets/uploads/admin/product/15803797761.jpeg', 'image/jpeg', '2020-01-30', 'product', 'img5e32ae67f2236'),
(263, '1580732585.jpg', 1608, 'https://vihustore.com/assets/uploads/admin/product/1580732585.jpg', 'image/jpeg', '2020-02-03', 'product', 'img5e380f26c6751'),
(264, '15807325851.jpg', 1619, 'https://vihustore.com/assets/uploads/admin/product/15807325851.jpg', 'image/jpeg', '2020-02-03', 'product', 'img5e380f26c6751'),
(265, '1580732587.jpg', 1447, 'https://vihustore.com/assets/uploads/admin/product/1580732587.jpg', 'image/jpeg', '2020-02-03', 'product', 'img5e380f26c6751'),
(266, '1580732590.jpg', 2619, 'https://vihustore.com/assets/uploads/admin/product/1580732590.jpg', 'image/jpeg', '2020-02-03', 'product', 'img5e380f26c6751'),
(267, '1580732591.jpg', 1760, 'https://vihustore.com/assets/uploads/admin/product/1580732591.jpg', 'image/jpeg', '2020-02-03', 'product', 'img5e380f26c6751'),
(268, '1580732662.png', 702, 'https://vihustore.com/assets/uploads/admin/product/1580732662.png', 'image/png', '2020-02-03', 'product', 'img5e380a17b9816'),
(269, '1580732663.png', 665, 'https://vihustore.com/assets/uploads/admin/product/1580732663.png', 'image/png', '2020-02-03', 'product', 'img5e380a17b9816'),
(270, '1580732664.png', 517, 'https://vihustore.com/assets/uploads/admin/product/1580732664.png', 'image/png', '2020-02-03', 'product', 'img5e380a17b9816'),
(271, '1580732729.png', 4527, 'https://vihustore.com/assets/uploads/admin/product/1580732729.png', 'image/png', '2020-02-03', 'product', 'img5e3811201a50f'),
(272, '1580732732.png', 5057, 'https://vihustore.com/assets/uploads/admin/product/1580732732.png', 'image/png', '2020-02-03', 'product', 'img5e3811201a50f'),
(273, '1580732802.png', 768, 'https://vihustore.com/assets/uploads/admin/product/1580732802.png', 'image/png', '2020-02-03', 'product', 'img5e3811201a50f'),
(275, '1580732958.png', 4162, 'https://vihustore.com/assets/uploads/admin/product/1580732958.png', 'image/png', '2020-02-03', 'product', 'img5e3811e5992c0'),
(276, '1580733006.png', 759, 'https://vihustore.com/assets/uploads/admin/product/1580733006.png', 'image/png', '2020-02-03', 'product', 'img5e3811e5992c0'),
(278, '1580733145.png', 584, 'https://vihustore.com/assets/uploads/admin/product/1580733145.png', 'image/png', '2020-02-03', 'product', 'img5e38128deaefa'),
(279, '1580733146.png', 515, 'https://vihustore.com/assets/uploads/admin/product/1580733146.png', 'image/png', '2020-02-03', 'product', 'img5e38128deaefa'),
(280, '1580733151.png', 5113, 'https://vihustore.com/assets/uploads/admin/product/1580733151.png', 'image/png', '2020-02-03', 'product', 'img5e38128deaefa'),
(281, '1580800014.png', 795, 'https://vihustore.com/assets/uploads/admin/product/1580800014.png', 'image/png', '2020-02-04', 'product', 'img5e3811e5992c0'),
(283, '1580800648.png', 459, 'https://vihustore.com/assets/uploads/admin/product/1580800648.png', 'image/png', '2020-02-04', 'product', 'img5e3919f0ddff6'),
(284, '1580800651.png', 593, 'https://vihustore.com/assets/uploads/admin/product/1580800651.png', 'image/png', '2020-02-04', 'product', 'img5e3919f0ddff6'),
(285, '1580801027.png', 3751, 'https://vihustore.com/assets/uploads/admin/product/1580801027.png', 'image/png', '2020-02-04', 'product', 'img5e391bdbf2e3d'),
(286, '1580801034.png', 3511, 'https://vihustore.com/assets/uploads/admin/product/1580801034.png', 'image/png', '2020-02-04', 'product', 'img5e391bdbf2e3d'),
(287, '1580801039.png', 3361, 'https://vihustore.com/assets/uploads/admin/product/1580801039.png', 'image/png', '2020-02-04', 'product', 'img5e391bdbf2e3d'),
(288, '1580801166.png', 3909, 'https://vihustore.com/assets/uploads/admin/product/1580801166.png', 'image/png', '2020-02-04', 'product', 'img5e391c73dc037'),
(289, '1580801169.png', 4100, 'https://vihustore.com/assets/uploads/admin/product/1580801169.png', 'image/png', '2020-02-04', 'product', 'img5e391c73dc037'),
(290, '1580801547.png', 4523, 'https://vihustore.com/assets/uploads/admin/product/1580801547.png', 'image/png', '2020-02-04', 'product', 'img5e391de464718'),
(291, '1580801551.png', 4785, 'https://vihustore.com/assets/uploads/admin/product/1580801551.png', 'image/png', '2020-02-04', 'product', 'img5e391de464718'),
(292, '1580801558.png', 3808, 'https://vihustore.com/assets/uploads/admin/product/1580801558.png', 'image/png', '2020-02-04', 'product', 'img5e391de464718'),
(293, '1580801647.png', 593, 'https://vihustore.com/assets/uploads/admin/product/1580801647.png', 'image/png', '2020-02-04', 'product', 'img5e3919f0ddff6'),
(294, '1580801661.png', 556, 'https://vihustore.com/assets/uploads/admin/product/1580801661.png', 'image/png', '2020-02-04', 'product', 'img5e3919f0ddff6'),
(296, '1580802196.png', 451, 'https://vihustore.com/assets/uploads/admin/product/1580802196.png', 'image/png', '2020-02-04', 'product', 'img5e391f349962a'),
(297, '1580802201.png', 4254, 'https://vihustore.com/assets/uploads/admin/product/1580802201.png', 'image/png', '2020-02-04', 'product', 'img5e391f349962a'),
(298, '1580802982.png', 519, 'https://vihustore.com/assets/uploads/admin/product/1580802982.png', 'image/png', '2020-02-04', 'product', 'img5e391f349962a'),
(302, '1580803150.png', 748, 'https://vihustore.com/assets/uploads/admin/product/1580803150.png', 'image/png', '2020-02-04', 'product', 'img5e39230218ac1'),
(303, '1580803183.png', 775, 'https://vihustore.com/assets/uploads/admin/product/1580803183.png', 'image/png', '2020-02-04', 'product', 'img5e39230218ac1'),
(304, '1580803186.png', 633, 'https://vihustore.com/assets/uploads/admin/product/1580803186.png', 'image/png', '2020-02-04', 'product', 'img5e39230218ac1'),
(305, '1580803189.png', 3465, 'https://vihustore.com/assets/uploads/admin/product/1580803189.png', 'image/png', '2020-02-04', 'product', 'img5e39230218ac1'),
(306, '1580803442.png', 519, 'https://vihustore.com/assets/uploads/admin/product/1580803442.png', 'image/png', '2020-02-04', 'product', 'img5e392520ee558'),
(307, '1580803443.png', 813, 'https://vihustore.com/assets/uploads/admin/product/1580803443.png', 'image/png', '2020-02-04', 'product', 'img5e392520ee558'),
(308, '1580803445.png', 715, 'https://vihustore.com/assets/uploads/admin/product/1580803445.png', 'image/png', '2020-02-04', 'product', 'img5e392520ee558'),
(309, '1580803447.png', 1182, 'https://vihustore.com/assets/uploads/admin/product/1580803447.png', 'image/png', '2020-02-04', 'product', 'img5e392520ee558'),
(310, '1580803826.png', 3510, 'https://vihustore.com/assets/uploads/admin/product/1580803826.png', 'image/png', '2020-02-04', 'product', 'img5e392690b3c62'),
(311, '1580803828.png', 4014, 'https://vihustore.com/assets/uploads/admin/product/1580803828.png', 'image/png', '2020-02-04', 'product', 'img5e392690b3c62'),
(312, '1580803848.png', 3454, 'https://vihustore.com/assets/uploads/admin/product/1580803848.png', 'image/png', '2020-02-04', 'product', 'img5e392690b3c62'),
(313, '1580803853.png', 4654, 'https://vihustore.com/assets/uploads/admin/product/1580803853.png', 'image/png', '2020-02-04', 'product', 'img5e392690b3c62'),
(315, '1580804073.png', 3363, 'https://vihustore.com/assets/uploads/admin/product/1580804073.png', 'image/png', '2020-02-04', 'product', 'img5e39273f5821c'),
(316, '1580804086.png', 3307, 'https://vihustore.com/assets/uploads/admin/product/1580804086.png', 'image/png', '2020-02-04', 'product', 'img5e39273f5821c'),
(317, '1580804089.png', 2432, 'https://vihustore.com/assets/uploads/admin/product/1580804089.png', 'image/png', '2020-02-04', 'product', 'img5e39273f5821c'),
(318, '1580804238.png', 3427, 'https://vihustore.com/assets/uploads/admin/product/1580804238.png', 'image/png', '2020-02-04', 'product', 'img5e392864191b3'),
(319, '1580804240.png', 620, 'https://vihustore.com/assets/uploads/admin/product/1580804240.png', 'image/png', '2020-02-04', 'product', 'img5e392864191b3'),
(320, '1580804253.png', 3425, 'https://vihustore.com/assets/uploads/admin/product/1580804253.png', 'image/png', '2020-02-04', 'product', 'img5e392864191b3'),
(321, '1580804255.png', 3632, 'https://vihustore.com/assets/uploads/admin/product/1580804255.png', 'image/png', '2020-02-04', 'product', 'img5e392864191b3'),
(322, '1580810934.png', 529, 'https://vihustore.com/assets/uploads/admin/product/1580810934.png', 'image/png', '2020-02-04', 'product', 'img5e3942a107d36'),
(323, '1580810945.png', 3780, 'https://vihustore.com/assets/uploads/admin/product/1580810945.png', 'image/png', '2020-02-04', 'product', 'img5e3942a107d36'),
(324, '1580810947.png', 1178, 'https://vihustore.com/assets/uploads/admin/product/1580810947.png', 'image/png', '2020-02-04', 'product', 'img5e3942a107d36'),
(325, '1580810955.png', 3873, 'https://vihustore.com/assets/uploads/admin/product/1580810955.png', 'image/png', '2020-02-04', 'product', 'img5e3942a107d36'),
(327, '1580811376.png', 3725, 'https://vihustore.com/assets/uploads/admin/product/1580811376.png', 'image/png', '2020-02-04', 'product', 'img5e39437ec6989'),
(328, '1580811385.png', 3686, 'https://vihustore.com/assets/uploads/admin/product/1580811385.png', 'image/png', '2020-02-04', 'product', 'img5e39437ec6989'),
(329, '1580811560.png', 4356, 'https://vihustore.com/assets/uploads/admin/product/1580811560.png', 'image/png', '2020-02-04', 'product', 'img5e3945058074a'),
(330, '1580811561.png', 3808, 'https://vihustore.com/assets/uploads/admin/product/1580811561.png', 'image/png', '2020-02-04', 'product', 'img5e3945058074a'),
(331, '1580811569.png', 1583, 'https://vihustore.com/assets/uploads/admin/product/1580811569.png', 'image/png', '2020-02-04', 'product', 'img5e3945058074a'),
(332, '1580811571.png', 3589, 'https://vihustore.com/assets/uploads/admin/product/1580811571.png', 'image/png', '2020-02-04', 'product', 'img5e3945058074a'),
(333, '1580812356.png', 4285, 'https://vihustore.com/assets/uploads/admin/product/1580812356.png', 'image/png', '2020-02-04', 'product', 'img5e3945602f31d'),
(334, '1580812362.png', 698, 'https://vihustore.com/assets/uploads/admin/product/1580812362.png', 'image/png', '2020-02-04', 'product', 'img5e3945602f31d'),
(335, '1580812368.png', 4723, 'https://vihustore.com/assets/uploads/admin/product/1580812368.png', 'image/png', '2020-02-04', 'product', 'img5e3945602f31d'),
(336, '1580812398.png', 3768, 'https://vihustore.com/assets/uploads/admin/product/1580812398.png', 'image/png', '2020-02-04', 'product', 'img5e3945602f31d'),
(337, '1580812485.png', 4003, 'https://vihustore.com/assets/uploads/admin/product/1580812485.png', 'image/png', '2020-02-04', 'product', 'img5e3948a6f28bb'),
(338, '1580812487.png', 3384, 'https://vihustore.com/assets/uploads/admin/product/1580812487.png', 'image/png', '2020-02-04', 'product', 'img5e3948a6f28bb'),
(339, '1580812495.png', 1564, 'https://vihustore.com/assets/uploads/admin/product/1580812495.png', 'image/png', '2020-02-04', 'product', 'img5e3948a6f28bb'),
(340, '1580812496.png', 3359, 'https://vihustore.com/assets/uploads/admin/product/1580812496.png', 'image/png', '2020-02-04', 'product', 'img5e3948a6f28bb'),
(341, '1580812591.png', 4128, 'https://vihustore.com/assets/uploads/admin/product/1580812591.png', 'image/png', '2020-02-04', 'product', 'img5e39490f9cf9b'),
(342, '1580812593.png', 4848, 'https://vihustore.com/assets/uploads/admin/product/1580812593.png', 'image/png', '2020-02-04', 'product', 'img5e39490f9cf9b'),
(343, '1580812601.png', 3966, 'https://vihustore.com/assets/uploads/admin/product/1580812601.png', 'image/png', '2020-02-04', 'product', 'img5e39490f9cf9b'),
(344, '1580814548.jpeg', 112, 'https://vihustore.com/assets/uploads/admin/product/1580814548.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(345, '15808145481.jpeg', 135, 'https://vihustore.com/assets/uploads/admin/product/15808145481.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(346, '15808145482.jpeg', 123, 'https://vihustore.com/assets/uploads/admin/product/15808145482.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(347, '1580814549.jpeg', 193, 'https://vihustore.com/assets/uploads/admin/product/1580814549.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(348, '15808145491.jpeg', 76, 'https://vihustore.com/assets/uploads/admin/product/15808145491.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(349, '15808145492.jpeg', 113, 'https://vihustore.com/assets/uploads/admin/product/15808145492.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e394b5bcdd2e'),
(350, '1580815084.jpeg', 210, 'https://vihustore.com/assets/uploads/admin/product/1580815084.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3952d97d23b'),
(351, '1580815085.jpeg', 215, 'https://vihustore.com/assets/uploads/admin/product/1580815085.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3952d97d23b'),
(352, '1580815093.jpeg', 209, 'https://vihustore.com/assets/uploads/admin/product/1580815093.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3952d97d23b'),
(353, '15808150931.jpeg', 299, 'https://vihustore.com/assets/uploads/admin/product/15808150931.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3952d97d23b'),
(354, '1580815095.jpeg', 112, 'https://vihustore.com/assets/uploads/admin/product/1580815095.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3952d97d23b'),
(355, '1580815224.jpg', 1398, 'https://vihustore.com/assets/uploads/admin/product/1580815224.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(356, '1580815226.jpg', 1375, 'https://vihustore.com/assets/uploads/admin/product/1580815226.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(357, '1580815235.jpg', 1255, 'https://vihustore.com/assets/uploads/admin/product/1580815235.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(358, '1580815243.jpg', 880, 'https://vihustore.com/assets/uploads/admin/product/1580815243.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(359, '1580815244.jpg', 2019, 'https://vihustore.com/assets/uploads/admin/product/1580815244.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(360, '1580815253.jpg', 1184, 'https://vihustore.com/assets/uploads/admin/product/1580815253.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39535bbabf2'),
(361, '1580815465.jpg', 874, 'https://vihustore.com/assets/uploads/admin/product/1580815465.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(362, '1580815466.jpg', 880, 'https://vihustore.com/assets/uploads/admin/product/1580815466.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(363, '1580815473.jpg', 820, 'https://vihustore.com/assets/uploads/admin/product/1580815473.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(364, '1580815479.jpg', 1615, 'https://vihustore.com/assets/uploads/admin/product/1580815479.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(365, '1580815481.jpg', 911, 'https://vihustore.com/assets/uploads/admin/product/1580815481.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(366, '1580815483.jpg', 627, 'https://vihustore.com/assets/uploads/admin/product/1580815483.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39541470143'),
(367, '1580815626.jpg', 783, 'https://vihustore.com/assets/uploads/admin/product/1580815626.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(368, '15808156261.jpg', 815, 'https://vihustore.com/assets/uploads/admin/product/15808156261.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(369, '1580815628.jpg', 786, 'https://vihustore.com/assets/uploads/admin/product/1580815628.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(370, '1580815632.jpg', 806, 'https://vihustore.com/assets/uploads/admin/product/1580815632.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(371, '1580815633.jpg', 1731, 'https://vihustore.com/assets/uploads/admin/product/1580815633.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(372, '1580815634.jpg', 601, 'https://vihustore.com/assets/uploads/admin/product/1580815634.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3954f758430'),
(373, '1580815718.jpg', 1190, 'https://vihustore.com/assets/uploads/admin/product/1580815718.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955516a454'),
(375, '1580815724.jpg', 1180, 'https://vihustore.com/assets/uploads/admin/product/1580815724.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955516a454'),
(376, '15808157241.jpg', 1431, 'https://vihustore.com/assets/uploads/admin/product/15808157241.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955516a454');
INSERT INTO `tbl_image_upload` (`fid`, `f_name`, `f_size`, `f_link`, `f_type`, `d_date`, `context`, `refrence_id`) VALUES
(377, '1580815728.jpg', 828, 'https://vihustore.com/assets/uploads/admin/product/1580815728.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955516a454'),
(378, '1580815729.jpg', 1138, 'https://vihustore.com/assets/uploads/admin/product/1580815729.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955516a454'),
(379, '1580815824.jpg', 1955, 'https://vihustore.com/assets/uploads/admin/product/1580815824.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955bc67965'),
(380, '1580815825.jpg', 1711, 'https://vihustore.com/assets/uploads/admin/product/1580815825.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955bc67965'),
(381, '1580815831.jpg', 1889, 'https://vihustore.com/assets/uploads/admin/product/1580815831.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955bc67965'),
(382, '1580815839.jpg', 2261, 'https://vihustore.com/assets/uploads/admin/product/1580815839.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955bc67965'),
(383, '1580815840.jpg', 3402, 'https://vihustore.com/assets/uploads/admin/product/1580815840.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e3955bc67965'),
(384, '1580815970.jpg', 897, 'https://vihustore.com/assets/uploads/admin/product/1580815970.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(385, '15808159701.jpg', 879, 'https://vihustore.com/assets/uploads/admin/product/15808159701.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(386, '1580815973.jpg', 849, 'https://vihustore.com/assets/uploads/admin/product/1580815973.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(387, '1580815975.jpg', 1280, 'https://vihustore.com/assets/uploads/admin/product/1580815975.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(388, '1580815976.jpg', 865, 'https://vihustore.com/assets/uploads/admin/product/1580815976.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(389, '1580815977.jpg', 655, 'https://vihustore.com/assets/uploads/admin/product/1580815977.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e395652d07c3'),
(390, '1580816069.jpeg', 120, 'https://vihustore.com/assets/uploads/admin/product/1580816069.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3956af7f0c2'),
(391, '1580816079.jpeg', 77, 'https://vihustore.com/assets/uploads/admin/product/1580816079.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3956af7f0c2'),
(392, '1580816080.jpeg', 123, 'https://vihustore.com/assets/uploads/admin/product/1580816080.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3956af7f0c2'),
(393, '15808160801.jpeg', 129, 'https://vihustore.com/assets/uploads/admin/product/15808160801.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3956af7f0c2'),
(394, '15808160802.jpeg', 121, 'https://vihustore.com/assets/uploads/admin/product/15808160802.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3956af7f0c2'),
(395, '1580816176.jpeg', 117, 'https://vihustore.com/assets/uploads/admin/product/1580816176.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3957229c5f8'),
(396, '1580816177.jpeg', 79, 'https://vihustore.com/assets/uploads/admin/product/1580816177.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3957229c5f8'),
(397, '15808161771.jpeg', 116, 'https://vihustore.com/assets/uploads/admin/product/15808161771.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3957229c5f8'),
(398, '15808161772.jpeg', 112, 'https://vihustore.com/assets/uploads/admin/product/15808161772.jpeg', 'image/jpeg', '2020-02-04', 'product', 'img5e3957229c5f8'),
(399, '1580816297.jpg', 1168, 'https://vihustore.com/assets/uploads/admin/product/1580816297.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39577c99b3d'),
(400, '1580816300.jpg', 1621, 'https://vihustore.com/assets/uploads/admin/product/1580816300.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39577c99b3d'),
(401, '1580816303.jpg', 1002, 'https://vihustore.com/assets/uploads/admin/product/1580816303.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39577c99b3d'),
(402, '1580816306.jpg', 2578, 'https://vihustore.com/assets/uploads/admin/product/1580816306.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39577c99b3d'),
(403, '1580816311.jpg', 767, 'https://vihustore.com/assets/uploads/admin/product/1580816311.jpg', 'image/jpeg', '2020-02-04', 'product', 'img5e39577c99b3d'),
(407, '1580886640.png', 984, 'https://vihustore.com/assets/uploads/admin/product/1580886640.png', 'image/png', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(408, '1580886642.png', 1712, 'https://vihustore.com/assets/uploads/admin/product/1580886642.png', 'image/png', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(409, '1580886645.png', 1364, 'https://vihustore.com/assets/uploads/admin/product/1580886645.png', 'image/png', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(410, '1580886647.png', 1113, 'https://vihustore.com/assets/uploads/admin/product/1580886647.png', 'image/png', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(411, '1580886647.jpg', 572, 'https://vihustore.com/assets/uploads/admin/product/1580886647.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(412, '1580886649.png', 669, 'https://vihustore.com/assets/uploads/admin/product/1580886649.png', 'image/png', '2020-02-05', 'product', 'img5e3a69ab858c5'),
(413, '1580887070.jpeg', 114, 'https://vihustore.com/assets/uploads/admin/product/1580887070.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(414, '1580887071.jpeg', 103, 'https://vihustore.com/assets/uploads/admin/product/1580887071.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(415, '15808870711.jpeg', 115, 'https://vihustore.com/assets/uploads/admin/product/15808870711.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(416, '15808870712.jpeg', 77, 'https://vihustore.com/assets/uploads/admin/product/15808870712.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(417, '15808870713.jpeg', 111, 'https://vihustore.com/assets/uploads/admin/product/15808870713.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(418, '1580887113.jpeg', 82, 'https://vihustore.com/assets/uploads/admin/product/1580887113.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6c0dd6922'),
(419, '1580887270.jpg', 1252, 'https://vihustore.com/assets/uploads/admin/product/1580887270.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(420, '1580887271.jpg', 1170, 'https://vihustore.com/assets/uploads/admin/product/1580887271.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(421, '1580887275.jpg', 1185, 'https://vihustore.com/assets/uploads/admin/product/1580887275.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(422, '1580887279.jpg', 2031, 'https://vihustore.com/assets/uploads/admin/product/1580887279.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(423, '1580887281.jpg', 1270, 'https://vihustore.com/assets/uploads/admin/product/1580887281.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(424, '1580887282.jpg', 826, 'https://vihustore.com/assets/uploads/admin/product/1580887282.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6cce43276'),
(431, '1580887706.jpg', 1892, 'https://vihustore.com/assets/uploads/admin/product/1580887706.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(432, '1580887707.jpg', 1959, 'https://vihustore.com/assets/uploads/admin/product/1580887707.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(433, '1580887713.jpg', 1062, 'https://vihustore.com/assets/uploads/admin/product/1580887713.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(434, '1580887716.jpg', 551, 'https://vihustore.com/assets/uploads/admin/product/1580887716.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(435, '15808877161.jpg', 1764, 'https://vihustore.com/assets/uploads/admin/product/15808877161.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(436, '1580887723.jpg', 3109, 'https://vihustore.com/assets/uploads/admin/product/1580887723.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6d54c58c8'),
(437, '1580887785.jpg', 1712, 'https://vihustore.com/assets/uploads/admin/product/1580887785.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(438, '15808877851.jpg', 1788, 'https://vihustore.com/assets/uploads/admin/product/15808877851.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(439, '1580887791.jpg', 1616, 'https://vihustore.com/assets/uploads/admin/product/1580887791.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(440, '1580887798.jpg', 3517, 'https://vihustore.com/assets/uploads/admin/product/1580887798.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(441, '1580887799.jpg', 1847, 'https://vihustore.com/assets/uploads/admin/product/1580887799.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(442, '1580887801.jpg', 1093, 'https://vihustore.com/assets/uploads/admin/product/1580887801.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6ed75ec2a'),
(444, '1580887936.jpg', 1615, 'https://vihustore.com/assets/uploads/admin/product/1580887936.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(445, '1580887942.jpg', 2573, 'https://vihustore.com/assets/uploads/admin/product/1580887942.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(446, '1580887943.jpg', 1694, 'https://vihustore.com/assets/uploads/admin/product/1580887943.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(447, '1580887952.jpg', 1504, 'https://vihustore.com/assets/uploads/admin/product/1580887952.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(448, '1580887956.jpg', 1012, 'https://vihustore.com/assets/uploads/admin/product/1580887956.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(449, '1580887959.jpg', 1646, 'https://vihustore.com/assets/uploads/admin/product/1580887959.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6f64c7161'),
(450, '1580888234.jpg', 1804, 'https://vihustore.com/assets/uploads/admin/product/1580888234.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(451, '1580888235.jpg', 1636, 'https://vihustore.com/assets/uploads/admin/product/1580888235.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(452, '1580888240.jpg', 1501, 'https://vihustore.com/assets/uploads/admin/product/1580888240.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(453, '1580888246.jpg', 1742, 'https://vihustore.com/assets/uploads/admin/product/1580888246.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(454, '1580888250.jpg', 1104, 'https://vihustore.com/assets/uploads/admin/product/1580888250.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(455, '1580888253.jpg', 4251, 'https://vihustore.com/assets/uploads/admin/product/1580888253.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a6fe392883'),
(456, '1580888397.jpg', 1844, 'https://vihustore.com/assets/uploads/admin/product/1580888397.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(457, '15808883971.jpg', 1884, 'https://vihustore.com/assets/uploads/admin/product/15808883971.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(458, '1580888403.jpg', 1598, 'https://vihustore.com/assets/uploads/admin/product/1580888403.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(459, '1580888411.jpg', 1922, 'https://vihustore.com/assets/uploads/admin/product/1580888411.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(460, '1580888414.jpg', 3628, 'https://vihustore.com/assets/uploads/admin/product/1580888414.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(461, '1580888415.jpg', 1128, 'https://vihustore.com/assets/uploads/admin/product/1580888415.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a711335e38'),
(462, '1580889151.jpg', 1640, 'https://vihustore.com/assets/uploads/admin/product/1580889151.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(463, '1580889155.jpg', 1553, 'https://vihustore.com/assets/uploads/admin/product/1580889155.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(464, '1580889159.jpg', 1596, 'https://vihustore.com/assets/uploads/admin/product/1580889159.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(465, '1580889161.jpg', 2432, 'https://vihustore.com/assets/uploads/admin/product/1580889161.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(466, '1580889164.jpg', 1042, 'https://vihustore.com/assets/uploads/admin/product/1580889164.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(467, '1580889173.jpg', 1616, 'https://vihustore.com/assets/uploads/admin/product/1580889173.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a71e3972b2'),
(468, '1580890029.jpg', 1889, 'https://vihustore.com/assets/uploads/admin/product/1580890029.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(469, '1580890030.jpg', 1881, 'https://vihustore.com/assets/uploads/admin/product/1580890030.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(470, '1580890037.jpg', 1662, 'https://vihustore.com/assets/uploads/admin/product/1580890037.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(471, '1580890043.jpg', 3346, 'https://vihustore.com/assets/uploads/admin/product/1580890043.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(472, '1580890045.jpg', 1899, 'https://vihustore.com/assets/uploads/admin/product/1580890045.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(473, '1580890081.jpg', 1029, 'https://vihustore.com/assets/uploads/admin/product/1580890081.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a74bea2d1b'),
(474, '1580890248.jpg', 1570, 'https://vihustore.com/assets/uploads/admin/product/1580890248.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(475, '1580890249.jpg', 1601, 'https://vihustore.com/assets/uploads/admin/product/1580890249.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(476, '1580890254.jpg', 1472, 'https://vihustore.com/assets/uploads/admin/product/1580890254.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(477, '1580890262.jpg', 1609, 'https://vihustore.com/assets/uploads/admin/product/1580890262.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(478, '15808902621.jpg', 3285, 'https://vihustore.com/assets/uploads/admin/product/15808902621.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(479, '1580890264.jpg', 1030, 'https://vihustore.com/assets/uploads/admin/product/1580890264.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a786f81b67'),
(480, '1580890506.jpg', 1610, 'https://vihustore.com/assets/uploads/admin/product/1580890506.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(481, '1580890512.jpg', 1357, 'https://vihustore.com/assets/uploads/admin/product/1580890512.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(482, '1580890520.jpg', 1577, 'https://vihustore.com/assets/uploads/admin/product/1580890520.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(483, '1580890521.jpg', 2410, 'https://vihustore.com/assets/uploads/admin/product/1580890521.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(484, '1580890525.jpg', 997, 'https://vihustore.com/assets/uploads/admin/product/1580890525.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(485, '1580890535.jpg', 1658, 'https://vihustore.com/assets/uploads/admin/product/1580890535.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a795649423'),
(486, '1580890593.jpg', 2002, 'https://vihustore.com/assets/uploads/admin/product/1580890593.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(487, '1580890597.jpg', 1788, 'https://vihustore.com/assets/uploads/admin/product/1580890597.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(488, '1580890606.jpg', 1763, 'https://vihustore.com/assets/uploads/admin/product/1580890606.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(489, '1580890607.jpg', 3878, 'https://vihustore.com/assets/uploads/admin/product/1580890607.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(490, '1580890611.jpg', 1124, 'https://vihustore.com/assets/uploads/admin/product/1580890611.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(491, '1580890622.jpg', 1980, 'https://vihustore.com/assets/uploads/admin/product/1580890622.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a79cd3b3df'),
(492, '1580890785.jpg', 2154, 'https://vihustore.com/assets/uploads/admin/product/1580890785.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(493, '1580890786.jpg', 2198, 'https://vihustore.com/assets/uploads/admin/product/1580890786.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(494, '1580890795.jpg', 2056, 'https://vihustore.com/assets/uploads/admin/product/1580890795.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(495, '1580890803.jpg', 4249, 'https://vihustore.com/assets/uploads/admin/product/1580890803.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(496, '1580890805.jpg', 2325, 'https://vihustore.com/assets/uploads/admin/product/1580890805.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(497, '1580890815.jpg', 1218, 'https://vihustore.com/assets/uploads/admin/product/1580890815.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7a8a83d92'),
(498, '1580890908.jpg', 1709, 'https://vihustore.com/assets/uploads/admin/product/1580890908.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(499, '1580890909.jpg', 1858, 'https://vihustore.com/assets/uploads/admin/product/1580890909.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(500, '1580890914.jpg', 1788, 'https://vihustore.com/assets/uploads/admin/product/1580890914.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(501, '1580890922.jpg', 1859, 'https://vihustore.com/assets/uploads/admin/product/1580890922.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(502, '1580890926.jpg', 3998, 'https://vihustore.com/assets/uploads/admin/product/1580890926.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(503, '1580890927.jpg', 1109, 'https://vihustore.com/assets/uploads/admin/product/1580890927.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b0413074'),
(504, '1580891021.jpg', 2015, 'https://vihustore.com/assets/uploads/admin/product/1580891021.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(505, '1580891027.jpg', 1894, 'https://vihustore.com/assets/uploads/admin/product/1580891027.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(506, '1580891036.jpg', 2019, 'https://vihustore.com/assets/uploads/admin/product/1580891036.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(507, '1580891041.jpg', 4131, 'https://vihustore.com/assets/uploads/admin/product/1580891041.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(508, '1580891046.jpg', 1116, 'https://vihustore.com/assets/uploads/admin/product/1580891046.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(509, '1580891061.jpg', 2026, 'https://vihustore.com/assets/uploads/admin/product/1580891061.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7b76af762'),
(510, '1580891342.jpeg', 182, 'https://vihustore.com/assets/uploads/admin/product/1580891342.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7bf6bc520'),
(511, '1580891343.jpeg', 187, 'https://vihustore.com/assets/uploads/admin/product/1580891343.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7bf6bc520'),
(512, '15808913431.jpeg', 97, 'https://vihustore.com/assets/uploads/admin/product/15808913431.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7bf6bc520'),
(513, '1580891344.jpeg', 192, 'https://vihustore.com/assets/uploads/admin/product/1580891344.jpeg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7bf6bc520'),
(514, '1580893790.jpg', 2714, 'https://vihustore.com/assets/uploads/admin/product/1580893790.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7d05bf14d'),
(515, '1580893792.jpg', 92, 'https://vihustore.com/assets/uploads/admin/product/1580893792.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7d05bf14d'),
(516, '1580893808.jpg', 769, 'https://vihustore.com/assets/uploads/admin/product/1580893808.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7d05bf14d'),
(518, '1580893819.jpg', 831, 'https://vihustore.com/assets/uploads/admin/product/1580893819.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a7d05bf14d'),
(519, '1580894727.jpg', 511, 'https://vihustore.com/assets/uploads/admin/product/1580894727.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a88dee62da'),
(520, '15808947271.jpg', 598, 'https://vihustore.com/assets/uploads/admin/product/15808947271.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a88dee62da'),
(521, '1580894729.jpg', 295, 'https://vihustore.com/assets/uploads/admin/product/1580894729.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a88dee62da'),
(522, '1580894733.jpg', 1935, 'https://vihustore.com/assets/uploads/admin/product/1580894733.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a88dee62da'),
(523, '1580894803.jpg', 1148, 'https://vihustore.com/assets/uploads/admin/product/1580894803.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a88dee62da'),
(524, '1580896745.jpg', 175, 'https://vihustore.com/assets/uploads/admin/product/1580896745.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a8abd9af62'),
(525, '15808967451.jpg', 490, 'https://vihustore.com/assets/uploads/admin/product/15808967451.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a8abd9af62'),
(526, '1580896747.jpg', 580, 'https://vihustore.com/assets/uploads/admin/product/1580896747.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a8abd9af62'),
(527, '1580896751.jpg', 644, 'https://vihustore.com/assets/uploads/admin/product/1580896751.jpg', 'image/jpeg', '2020-02-05', 'product', 'img5e3a8abd9af62'),
(534, '1582958429.png', 1634, 'https://vihustore.com/assets/uploads/admin/product/1582958429.png', 'image/png', '2020-02-29', 'product', 'img5e5a065ed5d7b'),
(535, '1582977036.png', 908, 'https://vihustore.com/assets/uploads/admin/product/1582977036.png', 'image/png', '2020-02-29', 'product', 'img5e5a4ff2d9f64'),
(536, '1582977041.png', 690, 'https://vihustore.com/assets/uploads/admin/product/1582977041.png', 'image/png', '2020-02-29', 'product', 'img5e5a4ff2d9f64'),
(537, '1582977042.png', 1015, 'https://vihustore.com/assets/uploads/admin/product/1582977042.png', 'image/png', '2020-02-29', 'product', 'img5e5a4ff2d9f64'),
(538, '1582977045.png', 998, 'https://vihustore.com/assets/uploads/admin/product/1582977045.png', 'image/png', '2020-02-29', 'product', 'img5e5a4ff2d9f64'),
(539, '1582977315.png', 908, 'https://vihustore.com/assets/uploads/admin/product/1582977315.png', 'image/png', '2020-02-29', 'product', 'img5e5a510425b7b'),
(540, '1582977316.png', 968, 'https://vihustore.com/assets/uploads/admin/product/1582977316.png', 'image/png', '2020-02-29', 'product', 'img5e5a510425b7b'),
(541, '1582977317.png', 989, 'https://vihustore.com/assets/uploads/admin/product/1582977317.png', 'image/png', '2020-02-29', 'product', 'img5e5a510425b7b'),
(542, '1582977319.png', 910, 'https://vihustore.com/assets/uploads/admin/product/1582977319.png', 'image/png', '2020-02-29', 'product', 'img5e5a510425b7b'),
(543, '1582977457.png', 798, 'https://vihustore.com/assets/uploads/admin/product/1582977457.png', 'image/png', '2020-02-29', 'product', 'img5e5a517e6c730'),
(544, '1582977462.png', 842, 'https://vihustore.com/assets/uploads/admin/product/1582977462.png', 'image/png', '2020-02-29', 'product', 'img5e5a517e6c730'),
(545, '1582977463.png', 568, 'https://vihustore.com/assets/uploads/admin/product/1582977463.png', 'image/png', '2020-02-29', 'product', 'img5e5a517e6c730'),
(546, '1582977464.png', 1788, 'https://vihustore.com/assets/uploads/admin/product/1582977464.png', 'image/png', '2020-02-29', 'product', 'img5e5a517e6c730'),
(547, '1582977466.png', 807, 'https://vihustore.com/assets/uploads/admin/product/1582977466.png', 'image/png', '2020-02-29', 'product', 'img5e5a517e6c730'),
(548, '1582978287.png', 1578, 'https://vihustore.com/assets/uploads/admin/product/1582978287.png', 'image/png', '2020-02-29', 'product', 'img5e5a065ed5d7b'),
(549, '1582978288.png', 1634, 'https://vihustore.com/assets/uploads/admin/product/1582978288.png', 'image/png', '2020-02-29', 'product', 'img5e5a065ed5d7b'),
(550, '1582978419.png', 879, 'https://vihustore.com/assets/uploads/admin/product/1582978419.png', 'image/png', '2020-02-29', 'product', 'img5e5a55592fba6'),
(552, '1582978423.png', 944, 'https://vihustore.com/assets/uploads/admin/product/1582978423.png', 'image/png', '2020-02-29', 'product', 'img5e5a55592fba6'),
(553, '1582978425.png', 1089, 'https://vihustore.com/assets/uploads/admin/product/1582978425.png', 'image/png', '2020-02-29', 'product', 'img5e5a55592fba6'),
(554, '1582978426.png', 1179, 'https://vihustore.com/assets/uploads/admin/product/1582978426.png', 'image/png', '2020-02-29', 'product', 'img5e5a55592fba6'),
(555, '1582978563.png', 536, 'https://vihustore.com/assets/uploads/admin/product/1582978563.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(556, '1582978567.png', 888, 'https://vihustore.com/assets/uploads/admin/product/1582978567.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(557, '1582978575.png', 7787, 'https://vihustore.com/assets/uploads/admin/product/1582978575.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(558, '1582978578.png', 778, 'https://vihustore.com/assets/uploads/admin/product/1582978578.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(559, '1582978665.png', 977, 'https://vihustore.com/assets/uploads/admin/product/1582978665.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(560, '1582978671.png', 867, 'https://vihustore.com/assets/uploads/admin/product/1582978671.png', 'image/png', '2020-02-29', 'product', 'img5e5a55f1ce3e2'),
(561, '1582978798.png', 670, 'https://vihustore.com/assets/uploads/admin/product/1582978798.png', 'image/png', '2020-02-29', 'product', 'img5e5a56de81777'),
(562, '15829787981.png', 588, 'https://vihustore.com/assets/uploads/admin/product/15829787981.png', 'image/png', '2020-02-29', 'product', 'img5e5a56de81777'),
(563, '1582978800.png', 976, 'https://vihustore.com/assets/uploads/admin/product/1582978800.png', 'image/png', '2020-02-29', 'product', 'img5e5a56de81777'),
(564, '1582978803.png', 931, 'https://vihustore.com/assets/uploads/admin/product/1582978803.png', 'image/png', '2020-02-29', 'product', 'img5e5a56de81777'),
(565, '1582978804.png', 2315, 'https://vihustore.com/assets/uploads/admin/product/1582978804.png', 'image/png', '2020-02-29', 'product', 'img5e5a56de81777'),
(566, '1582978968.png', 824, 'https://vihustore.com/assets/uploads/admin/product/1582978968.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(567, '1582978969.png', 871, 'https://vihustore.com/assets/uploads/admin/product/1582978969.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(568, '1582978971.png', 898, 'https://vihustore.com/assets/uploads/admin/product/1582978971.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(569, '1582978972.png', 2104, 'https://vihustore.com/assets/uploads/admin/product/1582978972.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(570, '1582978974.png', 879, 'https://vihustore.com/assets/uploads/admin/product/1582978974.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(571, '1582978975.png', 786, 'https://vihustore.com/assets/uploads/admin/product/1582978975.png', 'image/png', '2020-02-29', 'product', 'img5e5a574c1d9d2'),
(572, '1582979011.png', 719, 'https://vihustore.com/assets/uploads/admin/product/1582979011.png', 'image/png', '2020-02-29', 'product', 'img5e5a57b6b6806'),
(573, '1582979012.png', 709, 'https://vihustore.com/assets/uploads/admin/product/1582979012.png', 'image/png', '2020-02-29', 'product', 'img5e5a57b6b6806'),
(574, '1582979014.png', 761, 'https://vihustore.com/assets/uploads/admin/product/1582979014.png', 'image/png', '2020-02-29', 'product', 'img5e5a57b6b6806'),
(575, '15829790141.png', 614, 'https://vihustore.com/assets/uploads/admin/product/15829790141.png', 'image/png', '2020-02-29', 'product', 'img5e5a57b6b6806'),
(576, '1582979205.png', 709, 'https://vihustore.com/assets/uploads/admin/product/1582979205.png', 'image/png', '2020-02-29', 'product', 'img5e5a57ebf14df'),
(577, '1582979206.png', 719, 'https://vihustore.com/assets/uploads/admin/product/1582979206.png', 'image/png', '2020-02-29', 'product', 'img5e5a57ebf14df'),
(578, '1582979207.png', 761, 'https://vihustore.com/assets/uploads/admin/product/1582979207.png', 'image/png', '2020-02-29', 'product', 'img5e5a57ebf14df'),
(579, '1582979209.png', 614, 'https://vihustore.com/assets/uploads/admin/product/1582979209.png', 'image/png', '2020-02-29', 'product', 'img5e5a57ebf14df'),
(580, '1582979346.png', 693, 'https://vihustore.com/assets/uploads/admin/product/1582979346.png', 'image/png', '2020-02-29', 'product', 'img5e5a58d74552c'),
(581, '1582979347.png', 832, 'https://vihustore.com/assets/uploads/admin/product/1582979347.png', 'image/png', '2020-02-29', 'product', 'img5e5a58d74552c'),
(582, '1582979348.png', 775, 'https://vihustore.com/assets/uploads/admin/product/1582979348.png', 'image/png', '2020-02-29', 'product', 'img5e5a58d74552c'),
(583, '1582979349.png', 827, 'https://vihustore.com/assets/uploads/admin/product/1582979349.png', 'image/png', '2020-02-29', 'product', 'img5e5a58d74552c'),
(584, '1582979350.png', 732, 'https://vihustore.com/assets/uploads/admin/product/1582979350.png', 'image/png', '2020-02-29', 'product', 'img5e5a58d74552c'),
(585, '1707633394.png', 395, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633394.png', 'image/png', '2024-02-11', 'product', 'img65c86a5395ee6'),
(586, '1707633395.png', 408, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633395.png', 'image/png', '2024-02-11', 'product', 'img65c86a5395ee6'),
(587, '1707633396.png', 861, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633396.png', 'image/png', '2024-02-11', 'product', 'img65c86a5395ee6'),
(588, '1707633397.png', 511, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633397.png', 'image/png', '2024-02-11', 'product', 'img65c86a5395ee6'),
(589, '1707633873.png', 179, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633873.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(590, '17076338731.png', 298, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17076338731.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(591, '1707633874.png', 184, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633874.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(592, '1707633875.png', 184, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633875.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(593, '17076338751.png', 179, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17076338751.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(594, '1707633876.png', 189, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707633876.png', 'image/png', '2024-02-11', 'product', 'img65c86c4871d4f'),
(595, '1707638140.png', 449, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638140.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(596, '1707638142.png', 400, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638142.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(597, '1707638143.png', 743, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638143.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(598, '1707638145.png', 724, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638145.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(599, '1707638146.png', 843, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638146.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(600, '1707638147.png', 671, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638147.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(601, '1707638148.png', 1284, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1707638148.png', 'image/png', '2024-02-11', 'product', 'img65c87cc1a0389'),
(602, '1708424322.jpg', 6752, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708424322.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d47c78c290e'),
(603, '1708424325.jpg', 6766, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708424325.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d47c78c290e'),
(604, '1708424327.jpg', 7141, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708424327.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d47c78c290e'),
(605, '1708424330.jpg', 6625, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708424330.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d47c78c290e'),
(611, '1708426829.jpg', 6596, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708426829.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d4857abafd2'),
(612, '1708426830.jpg', 6952, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708426830.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d4857abafd2'),
(613, '1708426832.jpg', 6580, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708426832.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d4857abafd2'),
(614, '1708426833.jpg', 6528, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708426833.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d4857abafd2'),
(615, '1708426835.jpg', 6681, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708426835.jpg', 'image/jpeg', '2024-02-20', 'product', 'img65d4857abafd2'),
(658, '1708511040.png', 399, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511040.png', 'image/png', '2024-02-21', 'product', 'img65d48664cc9dc'),
(659, '1708511041.png', 489, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511041.png', 'image/png', '2024-02-21', 'product', 'img65d48664cc9dc'),
(660, '1708511042.png', 425, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511042.png', 'image/png', '2024-02-21', 'product', 'img65d48664cc9dc'),
(661, '1708511043.png', 484, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511043.png', 'image/png', '2024-02-21', 'product', 'img65d48664cc9dc'),
(662, '17085110431.png', 416, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085110431.png', 'image/png', '2024-02-21', 'product', 'img65d48664cc9dc'),
(672, '1708511858.png', 474, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511858.png', 'image/png', '2024-02-21', 'product', 'img65d486ece7d6e'),
(673, '1708511860.png', 503, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511860.png', 'image/png', '2024-02-21', 'product', 'img65d486ece7d6e'),
(674, '1708511864.png', 449, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511864.png', 'image/png', '2024-02-21', 'product', 'img65d486ece7d6e'),
(675, '1708511865.png', 344, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511865.png', 'image/png', '2024-02-21', 'product', 'img65d486ece7d6e'),
(676, '1708511869.png', 452, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511869.png', 'image/png', '2024-02-21', 'product', 'img65d486ece7d6e'),
(677, '1708511921.png', 432, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511921.png', 'image/png', '2024-02-21', 'product', 'img65d47f42471a7'),
(678, '1708511923.png', 460, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511923.png', 'image/png', '2024-02-21', 'product', 'img65d47f42471a7'),
(679, '1708511924.png', 404, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511924.png', 'image/png', '2024-02-21', 'product', 'img65d47f42471a7'),
(680, '1708511925.png', 453, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511925.png', 'image/png', '2024-02-21', 'product', 'img65d47f42471a7'),
(681, '1708511930.png', 475, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708511930.png', 'image/png', '2024-02-21', 'product', 'img65d47f42471a7'),
(682, '1708512484.png', 238, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708512484.png', 'image/png', '2024-02-21', 'product', 'img65d48c0e340e1'),
(683, '17085124841.png', 258, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085124841.png', 'image/png', '2024-02-21', 'product', 'img65d48c0e340e1'),
(684, '1708512485.png', 256, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708512485.png', 'image/png', '2024-02-21', 'product', 'img65d48c0e340e1'),
(685, '1708512486.png', 235, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708512486.png', 'image/png', '2024-02-21', 'product', 'img65d48c0e340e1'),
(686, '17085124861.png', 255, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085124861.png', 'image/png', '2024-02-21', 'product', 'img65d48c0e340e1'),
(687, '1708514263.png', 479, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514263.png', 'image/png', '2024-02-21', 'product', 'img65d5d86cac148'),
(688, '1708514264.png', 461, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514264.png', 'image/png', '2024-02-21', 'product', 'img65d5d86cac148'),
(689, '1708514265.png', 454, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514265.png', 'image/png', '2024-02-21', 'product', 'img65d5d86cac148'),
(690, '17085142651.png', 239, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085142651.png', 'image/png', '2024-02-21', 'product', 'img65d5d86cac148'),
(691, '1708514266.png', 354, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514266.png', 'image/png', '2024-02-21', 'product', 'img65d5d86cac148'),
(697, '1708514473.png', 571, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514473.png', 'image/png', '2024-02-21', 'product', 'img65d5dc9aec270'),
(698, '1708514474.png', 514, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514474.png', 'image/png', '2024-02-21', 'product', 'img65d5dc9aec270'),
(699, '1708514475.png', 513, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514475.png', 'image/png', '2024-02-21', 'product', 'img65d5dc9aec270'),
(700, '1708514476.png', 279, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514476.png', 'image/png', '2024-02-21', 'product', 'img65d5dc9aec270'),
(701, '1708514479.png', 532, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708514479.png', 'image/png', '2024-02-21', 'product', 'img65d5dc9aec270'),
(703, '1708515235.png', 459, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515235.png', 'image/png', '2024-02-21', 'product', 'img65d5df8fd0c0d'),
(704, '1708515236.png', 306, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515236.png', 'image/png', '2024-02-21', 'product', 'img65d5df8fd0c0d'),
(705, '17085152361.png', 479, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085152361.png', 'image/png', '2024-02-21', 'product', 'img65d5df8fd0c0d'),
(706, '1708515237.png', 493, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515237.png', 'image/png', '2024-02-21', 'product', 'img65d5df8fd0c0d'),
(707, '1708515404.png', 490, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515404.png', 'image/png', '2024-02-21', 'product', 'img65d5e03e3282b'),
(708, '17085154041.png', 520, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085154041.png', 'image/png', '2024-02-21', 'product', 'img65d5e03e3282b'),
(709, '1708515406.png', 268, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515406.png', 'image/png', '2024-02-21', 'product', 'img65d5e03e3282b'),
(710, '17085154061.png', 512, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085154061.png', 'image/png', '2024-02-21', 'product', 'img65d5e03e3282b'),
(711, '1708515407.png', 469, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515407.png', 'image/png', '2024-02-21', 'product', 'img65d5e03e3282b'),
(712, '1708515524.png', 496, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515524.png', 'image/png', '2024-02-21', 'product', 'img65d5e0b588916'),
(713, '1708515525.png', 498, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515525.png', 'image/png', '2024-02-21', 'product', 'img65d5e0b588916'),
(714, '1708515526.png', 423, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515526.png', 'image/png', '2024-02-21', 'product', 'img65d5e0b588916'),
(715, '1708515528.png', 518, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515528.png', 'image/png', '2024-02-21', 'product', 'img65d5e0b588916'),
(716, '1708515529.png', 308, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515529.png', 'image/png', '2024-02-21', 'product', 'img65d5e0b588916'),
(717, '1708515652.png', 447, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708515652.png', 'image/png', '2024-02-21', 'product', 'img65d5df8fd0c0d'),
(718, '1708525467.png', 366, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708525467.png', 'image/png', '2024-02-21', 'product', 'img65d6075f92e01'),
(719, '1708525468.png', 377, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708525468.png', 'image/png', '2024-02-21', 'product', 'img65d6075f92e01'),
(720, '17085254681.png', 384, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17085254681.png', 'image/png', '2024-02-21', 'product', 'img65d6075f92e01'),
(721, '1708525469.png', 363, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708525469.png', 'image/png', '2024-02-21', 'product', 'img65d6075f92e01'),
(722, '1708525470.png', 257, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708525470.png', 'image/png', '2024-02-21', 'product', 'img65d6075f92e01'),
(723, '1708605796.png', 237, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708605796.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(724, '1708605797.png', 239, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708605797.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(725, '17086057971.png', 251, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086057971.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(726, '1708605799.png', 840, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708605799.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(727, '1708605800.png', 181, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708605800.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(728, '1708605801.png', 843, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708605801.png', 'image/png', '2024-02-22', 'product', 'img65d493752a6b9'),
(729, '1708606090.png', 386, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606090.png', 'image/png', '2024-02-22', 'product', 'img65d5dc3335263'),
(730, '1708606091.png', 359, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606091.png', 'image/png', '2024-02-22', 'product', 'img65d5dc3335263'),
(731, '1708606092.png', 425, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606092.png', 'image/png', '2024-02-22', 'product', 'img65d5dc3335263'),
(732, '17086060921.png', 394, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086060921.png', 'image/png', '2024-02-22', 'product', 'img65d5dc3335263'),
(733, '1708606093.png', 365, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606093.png', 'image/png', '2024-02-22', 'product', 'img65d5dc3335263'),
(734, '1708606285.png', 190, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606285.png', 'image/png', '2024-02-22', 'product', ''),
(735, '17086062851.png', 204, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086062851.png', 'image/png', '2024-02-22', 'product', ''),
(736, '1708606286.png', 223, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606286.png', 'image/png', '2024-02-22', 'product', ''),
(737, '1708606287.png', 228, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606287.png', 'image/png', '2024-02-22', 'product', ''),
(738, '17086062871.png', 744, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086062871.png', 'image/png', '2024-02-22', 'product', ''),
(739, '1708606551.png', 204, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606551.png', 'image/png', '2024-02-22', 'product', 'img65d7433855660'),
(740, '1708606552.png', 190, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606552.png', 'image/png', '2024-02-22', 'product', 'img65d7433855660'),
(741, '1708606553.png', 223, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606553.png', 'image/png', '2024-02-22', 'product', 'img65d7433855660'),
(742, '1708606554.png', 744, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606554.png', 'image/png', '2024-02-22', 'product', 'img65d7433855660'),
(743, '1708606555.png', 228, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708606555.png', 'image/png', '2024-02-22', 'product', 'img65d7433855660'),
(744, '1708607680.png', 209, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607680.png', 'image/png', '2024-02-22', 'product', ''),
(745, '1708607681.png', 198, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607681.png', 'image/png', '2024-02-22', 'product', ''),
(746, '1708607682.png', 797, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607682.png', 'image/png', '2024-02-22', 'product', ''),
(747, '1708607683.png', 220, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607683.png', 'image/png', '2024-02-22', 'product', ''),
(748, '1708607685.png', 349, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607685.png', 'image/png', '2024-02-22', 'product', ''),
(749, '1708607894.png', 224, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607894.png', 'image/png', '2024-02-22', 'product', ''),
(750, '1708607895.png', 218, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607895.png', 'image/png', '2024-02-22', 'product', ''),
(751, '1708607896.png', 257, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607896.png', 'image/png', '2024-02-22', 'product', ''),
(752, '1708607897.png', 226, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607897.png', 'image/png', '2024-02-22', 'product', ''),
(753, '1708607898.png', 921, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607898.png', 'image/png', '2024-02-22', 'product', ''),
(754, '1708607980.png', 232, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607980.png', 'image/png', '2024-02-22', 'product', ''),
(755, '17086079801.png', 238, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086079801.png', 'image/png', '2024-02-22', 'product', ''),
(756, '1708607981.png', 237, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607981.png', 'image/png', '2024-02-22', 'product', ''),
(757, '1708607982.png', 223, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708607982.png', 'image/png', '2024-02-22', 'product', ''),
(758, '17086079821.png', 901, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086079821.png', 'image/png', '2024-02-22', 'product', ''),
(759, '1708608058.png', 232, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608058.png', 'image/png', '2024-02-22', 'product', 'img65d7499fd7b7b'),
(760, '1708608059.png', 238, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608059.png', 'image/png', '2024-02-22', 'product', 'img65d7499fd7b7b'),
(761, '17086080591.png', 237, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086080591.png', 'image/png', '2024-02-22', 'product', 'img65d7499fd7b7b'),
(762, '1708608060.png', 901, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608060.png', 'image/png', '2024-02-22', 'product', 'img65d7499fd7b7b'),
(763, '1708608061.png', 223, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608061.png', 'image/png', '2024-02-22', 'product', 'img65d7499fd7b7b'),
(764, '1708608085.png', 224, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608085.png', 'image/png', '2024-02-22', 'product', 'img65d74923aa325'),
(765, '1708608086.png', 218, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608086.png', 'image/png', '2024-02-22', 'product', 'img65d74923aa325'),
(766, '17086080861.png', 257, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086080861.png', 'image/png', '2024-02-22', 'product', 'img65d74923aa325'),
(767, '1708608087.png', 921, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608087.png', 'image/png', '2024-02-22', 'product', 'img65d74923aa325'),
(768, '1708608088.png', 226, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608088.png', 'image/png', '2024-02-22', 'product', 'img65d74923aa325'),
(769, '1708608108.png', 198, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608108.png', 'image/png', '2024-02-22', 'product', 'img65d748b1ddee9'),
(770, '17086081081.png', 209, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086081081.png', 'image/png', '2024-02-22', 'product', 'img65d748b1ddee9');
INSERT INTO `tbl_image_upload` (`fid`, `f_name`, `f_size`, `f_link`, `f_type`, `d_date`, `context`, `refrence_id`) VALUES
(771, '1708608109.png', 797, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608109.png', 'image/png', '2024-02-22', 'product', 'img65d748b1ddee9'),
(772, '1708608110.png', 220, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708608110.png', 'image/png', '2024-02-22', 'product', 'img65d748b1ddee9'),
(773, '17086081101.png', 349, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086081101.png', 'image/png', '2024-02-22', 'product', 'img65d748b1ddee9'),
(774, '1708610547.png', 204, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610547.png', 'image/png', '2024-02-22', 'product', ''),
(775, '17086105471.png', 328, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086105471.png', 'image/png', '2024-02-22', 'product', ''),
(776, '1708610548.png', 250, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610548.png', 'image/png', '2024-02-22', 'product', ''),
(777, '1708610549.png', 335, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610549.png', 'image/png', '2024-02-22', 'product', ''),
(778, '17086105491.png', 312, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086105491.png', 'image/png', '2024-02-22', 'product', ''),
(779, '1708610574.png', 204, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610574.png', 'image/png', '2024-02-22', 'product', 'img65d74ec05aaf5'),
(780, '17086105741.png', 328, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086105741.png', 'image/png', '2024-02-22', 'product', 'img65d74ec05aaf5'),
(781, '1708610575.png', 250, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610575.png', 'image/png', '2024-02-22', 'product', 'img65d74ec05aaf5'),
(782, '17086105751.png', 335, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086105751.png', 'image/png', '2024-02-22', 'product', 'img65d74ec05aaf5'),
(783, '1708610576.png', 312, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708610576.png', 'image/png', '2024-02-22', 'product', 'img65d74ec05aaf5'),
(784, '1708672470.png', 365, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672470.png', 'image/png', '2024-02-23', 'product', ''),
(785, '1708672471.png', 244, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672471.png', 'image/png', '2024-02-23', 'product', ''),
(786, '17086724711.png', 300, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086724711.png', 'image/png', '2024-02-23', 'product', ''),
(787, '1708672475.png', 670, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672475.png', 'image/png', '2024-02-23', 'product', ''),
(788, '1708672583.png', 244, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672583.png', 'image/png', '2024-02-23', 'product', ''),
(789, '1708672584.png', 300, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672584.png', 'image/png', '2024-02-23', 'product', ''),
(790, '1708672585.png', 670, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672585.png', 'image/png', '2024-02-23', 'product', ''),
(791, '1708672587.png', 365, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672587.png', 'image/png', '2024-02-23', 'product', ''),
(794, '1708672797.png', 244, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672797.png', 'image/png', '2024-02-23', 'product', 'img65d84635d85c9'),
(797, '1708672912.png', 300, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672912.png', 'image/png', '2024-02-23', 'product', 'img65d84635d85c9'),
(798, '1708672914.png', 670, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708672914.png', 'image/png', '2024-02-23', 'product', 'img65d84635d85c9'),
(799, '17086729141.png', 365, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086729141.png', 'image/png', '2024-02-23', 'product', 'img65d84635d85c9'),
(805, '1708673800.png', 256, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708673800.png', 'image/png', '2024-02-23', 'product', 'img65d8499cb81a7'),
(806, '1708673801.png', 437, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708673801.png', 'image/png', '2024-02-23', 'product', 'img65d8499cb81a7'),
(807, '1708673802.png', 327, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708673802.png', 'image/png', '2024-02-23', 'product', 'img65d8499cb81a7'),
(808, '17086738021.png', 324, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086738021.png', 'image/png', '2024-02-23', 'product', 'img65d8499cb81a7'),
(809, '1708674030.png', 316, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708674030.png', 'image/png', '2024-02-23', 'product', 'img65d847f570b09'),
(810, '1708674034.png', 305, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708674034.png', 'image/png', '2024-02-23', 'product', 'img65d847f570b09'),
(811, '1708674037.png', 324, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708674037.png', 'image/png', '2024-02-23', 'product', 'img65d847f570b09'),
(812, '1708674038.png', 617, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708674038.png', 'image/png', '2024-02-23', 'product', 'img65d847f570b09'),
(813, '1708674041.png', 325, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708674041.png', 'image/png', '2024-02-23', 'product', 'img65d847f570b09'),
(814, '1708690912.png', 254, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708690912.png', 'image/png', '2024-02-23', 'product', 'img65d88d19620d0'),
(815, '1708690913.png', 435, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708690913.png', 'image/png', '2024-02-23', 'product', 'img65d88d19620d0'),
(816, '17086909131.png', 520, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086909131.png', 'image/png', '2024-02-23', 'product', 'img65d88d19620d0'),
(817, '1708690914.png', 375, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708690914.png', 'image/png', '2024-02-23', 'product', 'img65d88d19620d0'),
(818, '1708690915.png', 487, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708690915.png', 'image/png', '2024-02-23', 'product', 'img65d88d19620d0'),
(819, '1708691078.png', 303, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691078.png', 'image/png', '2024-02-23', 'product', ''),
(820, '1708691079.png', 577, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691079.png', 'image/png', '2024-02-23', 'product', ''),
(821, '1708691080.png', 546, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691080.png', 'image/png', '2024-02-23', 'product', ''),
(822, '1708691081.png', 759, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691081.png', 'image/png', '2024-02-23', 'product', ''),
(823, '1708691083.png', 487, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691083.png', 'image/png', '2024-02-23', 'product', ''),
(824, '1708691192.png', 303, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691192.png', 'image/png', '2024-02-23', 'product', 'img65d88e7095cc8'),
(825, '1708691193.png', 577, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691193.png', 'image/png', '2024-02-23', 'product', 'img65d88e7095cc8'),
(826, '1708691194.png', 759, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691194.png', 'image/png', '2024-02-23', 'product', 'img65d88e7095cc8'),
(827, '1708691195.png', 546, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691195.png', 'image/png', '2024-02-23', 'product', 'img65d88e7095cc8'),
(828, '1708691196.png', 487, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691196.png', 'image/png', '2024-02-23', 'product', 'img65d88e7095cc8'),
(829, '1708691587.png', 350, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691587.png', 'image/png', '2024-02-23', 'product', 'img65d8900aa1806'),
(830, '1708691588.png', 336, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691588.png', 'image/png', '2024-02-23', 'product', 'img65d8900aa1806'),
(831, '1708691589.png', 309, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691589.png', 'image/png', '2024-02-23', 'product', 'img65d8900aa1806'),
(832, '1708691590.png', 508, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691590.png', 'image/png', '2024-02-23', 'product', 'img65d8900aa1806'),
(837, '1708691624.png', 257, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691624.png', 'image/png', '2024-02-23', 'product', 'img65d88f58a8467'),
(838, '1708691678.png', 311, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691678.png', 'image/png', '2024-02-23', 'product', 'img65d88f58a8467'),
(839, '17086916781.png', 322, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086916781.png', 'image/png', '2024-02-23', 'product', 'img65d88f58a8467'),
(840, '1708691679.png', 323, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708691679.png', 'image/png', '2024-02-23', 'product', 'img65d88f58a8467'),
(841, '17086916791.png', 291, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086916791.png', 'image/png', '2024-02-23', 'product', 'img65d88f58a8467'),
(842, '1708692420.png', 284, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692420.png', 'image/png', '2024-02-23', 'product', 'img65d89349a4248'),
(843, '1708692421.png', 546, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692421.png', 'image/png', '2024-02-23', 'product', 'img65d89349a4248'),
(844, '17086924211.png', 624, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086924211.png', 'image/png', '2024-02-23', 'product', 'img65d89349a4248'),
(845, '1708692422.png', 740, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692422.png', 'image/png', '2024-02-23', 'product', 'img65d89349a4248'),
(846, '1708692423.png', 487, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692423.png', 'image/png', '2024-02-23', 'product', 'img65d89349a4248'),
(847, '1708692491.png', 304, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692491.png', 'image/png', '2024-02-23', 'product', 'img65d89152bb0d7'),
(848, '1708692492.png', 532, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692492.png', 'image/png', '2024-02-23', 'product', 'img65d89152bb0d7'),
(849, '1708692493.png', 676, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692493.png', 'image/png', '2024-02-23', 'product', 'img65d89152bb0d7'),
(850, '1708692494.png', 487, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1708692494.png', 'image/png', '2024-02-23', 'product', 'img65d89152bb0d7'),
(851, '17086924941.png', 858, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17086924941.png', 'image/png', '2024-02-23', 'product', 'img65d89152bb0d7'),
(852, '1709029847.png', 211, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709029847.png', 'image/png', '2024-02-27', 'product', 'img65ddb891dc112'),
(853, '1709029848.png', 150, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709029848.png', 'image/png', '2024-02-27', 'product', 'img65ddb891dc112'),
(854, '1709029849.png', 270, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709029849.png', 'image/png', '2024-02-27', 'product', 'img65ddb891dc112'),
(855, '1709029850.png', 160, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709029850.png', 'image/png', '2024-02-27', 'product', 'img65ddb891dc112'),
(856, '1709029851.png', 192, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709029851.png', 'image/png', '2024-02-27', 'product', 'img65ddb891dc112'),
(857, '1709030605.png', 215, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709030605.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(858, '17090306051.png', 205, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090306051.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(859, '1709030607.png', 269, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709030607.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(860, '1709030608.png', 264, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709030608.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(861, '1709030609.png', 390, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709030609.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(862, '1709030610.png', 261, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709030610.png', 'image/png', '2024-02-27', 'product', 'img65ddbc1e8e7a3'),
(863, '1709032227.png', 270, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032227.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(864, '1709032228.png', 324, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032228.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(865, '1709032229.png', 293, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032229.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(866, '1709032230.png', 798, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032230.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(867, '1709032231.png', 348, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032231.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(868, '1709032232.png', 314, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032232.png', 'image/png', '2024-02-27', 'product', 'img65ddc24cc119e'),
(869, '1709032254.png', 104, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032254.png', 'image/png', '2024-02-27', 'product', 'img65ddc27ef0149'),
(870, '1709032255.png', 118, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032255.png', 'image/png', '2024-02-27', 'product', 'img65ddc27ef0149'),
(871, '17090322551.png', 132, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090322551.png', 'image/png', '2024-02-27', 'product', 'img65ddc27ef0149'),
(872, '1709032256.png', 308, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032256.png', 'image/png', '2024-02-27', 'product', 'img65ddc27ef0149'),
(873, '1709032257.png', 118, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032257.png', 'image/png', '2024-02-27', 'product', 'img65ddc27ef0149'),
(874, '1709032286.png', 270, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032286.png', 'image/png', '2024-02-27', 'product', 'img65ddc2bc0b8a4'),
(875, '17090322861.png', 245, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090322861.png', 'image/png', '2024-02-27', 'product', 'img65ddc2bc0b8a4'),
(876, '1709032287.png', 657, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032287.png', 'image/png', '2024-02-27', 'product', 'img65ddc2bc0b8a4'),
(877, '1709032288.png', 328, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709032288.png', 'image/png', '2024-02-27', 'product', 'img65ddc2bc0b8a4'),
(878, '17090322881.png', 224, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090322881.png', 'image/png', '2024-02-27', 'product', 'img65ddc2bc0b8a4'),
(879, '1709037802.png', 424, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709037802.png', 'image/png', '2024-02-27', 'product', 'img65ddd87fbca05'),
(880, '1709037803.png', 410, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709037803.png', 'image/png', '2024-02-27', 'product', 'img65ddd87fbca05'),
(881, '1709037804.png', 481, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709037804.png', 'image/png', '2024-02-27', 'product', 'img65ddd87fbca05'),
(882, '17090378041.png', 219, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090378041.png', 'image/png', '2024-02-27', 'product', 'img65ddd87fbca05'),
(883, '1709037806.png', 439, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709037806.png', 'image/png', '2024-02-27', 'product', 'img65ddd87fbca05'),
(885, '1709038094.png', 425, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709038094.png', 'image/png', '2024-02-27', 'product', 'img65ddd96204ae0'),
(886, '1709038095.png', 311, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709038095.png', 'image/png', '2024-02-27', 'product', 'img65ddd96204ae0'),
(887, '17090380951.png', 292, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090380951.png', 'image/png', '2024-02-27', 'product', 'img65ddd96204ae0'),
(888, '1709038096.png', 288, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709038096.png', 'image/png', '2024-02-27', 'product', 'img65ddd96204ae0'),
(889, '1709038135.png', 310, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709038135.png', 'image/png', '2024-02-27', 'product', 'img65ddd96204ae0'),
(890, '1709039134.png', 392, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039134.png', 'image/png', '2024-02-27', 'product', 'img65ddda607129c'),
(891, '1709039135.png', 457, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039135.png', 'image/png', '2024-02-27', 'product', 'img65ddda607129c'),
(892, '1709039136.png', 495, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039136.png', 'image/png', '2024-02-27', 'product', 'img65ddda607129c'),
(893, '17090391361.png', 375, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090391361.png', 'image/png', '2024-02-27', 'product', 'img65ddda607129c'),
(894, '1709039137.png', 524, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039137.png', 'image/png', '2024-02-27', 'product', 'img65ddda607129c'),
(899, '1709039194.png', 274, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039194.png', 'image/png', '2024-02-27', 'product', 'img65dddae15c9ea'),
(900, '1709039225.png', 872, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039225.png', 'image/png', '2024-02-27', 'product', 'img65dddae15c9ea'),
(901, '1709039226.png', 397, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039226.png', 'image/png', '2024-02-27', 'product', 'img65dddae15c9ea'),
(902, '1709039227.png', 373, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039227.png', 'image/png', '2024-02-27', 'product', 'img65dddae15c9ea'),
(903, '1709039228.png', 414, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039228.png', 'image/png', '2024-02-27', 'product', 'img65dddae15c9ea'),
(904, '1709039266.png', 423, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039266.png', 'image/png', '2024-02-27', 'product', 'img65dddb384c5fa'),
(905, '1709039267.png', 532, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039267.png', 'image/png', '2024-02-27', 'product', 'img65dddb384c5fa'),
(906, '1709039268.png', 406, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039268.png', 'image/png', '2024-02-27', 'product', 'img65dddb384c5fa'),
(907, '1709039269.png', 450, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039269.png', 'image/png', '2024-02-27', 'product', 'img65dddb384c5fa'),
(908, '1709039270.png', 425, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039270.png', 'image/png', '2024-02-27', 'product', 'img65dddb384c5fa'),
(909, '1709039301.png', 511, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039301.png', 'image/png', '2024-02-27', 'product', 'img65dddc8ea7172'),
(910, '1709039302.png', 436, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039302.png', 'image/png', '2024-02-27', 'product', 'img65dddc8ea7172'),
(911, '1709039303.png', 222, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039303.png', 'image/png', '2024-02-27', 'product', 'img65dddc8ea7172'),
(912, '1709039304.png', 432, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039304.png', 'image/png', '2024-02-27', 'product', 'img65dddc8ea7172'),
(913, '1709039305.png', 378, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039305.png', 'image/png', '2024-02-27', 'product', 'img65dddc8ea7172'),
(914, '1709039348.png', 284, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039348.png', 'image/png', '2024-02-27', 'product', 'img65dddd93481d2'),
(915, '1709039349.png', 299, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039349.png', 'image/png', '2024-02-27', 'product', 'img65dddd93481d2'),
(916, '17090393491.png', 310, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090393491.png', 'image/png', '2024-02-27', 'product', 'img65dddd93481d2'),
(917, '1709039350.png', 323, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/1709039350.png', 'image/png', '2024-02-27', 'product', 'img65dddd93481d2'),
(918, '17090393501.png', 295, 'https://cobaltzebra.com/forbro/assets/uploads/admin/product/17090393501.png', 'image/png', '2024-02-27', 'product', 'img65dddd93481d2'),
(919, '1709550707.png', 330, 'https://forbro.in/assets/uploads/admin/product/1709550707.png', 'image/png', '2024-03-04', 'product', 'img65e5ab98cb590'),
(920, '1709550708.png', 343, 'https://forbro.in/assets/uploads/admin/product/1709550708.png', 'image/png', '2024-03-04', 'product', 'img65e5ab98cb590'),
(921, '1709550754.png', 335, 'https://forbro.in/assets/uploads/admin/product/1709550754.png', 'image/png', '2024-03-04', 'product', 'img65e5ab98cb590'),
(922, '1709550755.png', 317, 'https://forbro.in/assets/uploads/admin/product/1709550755.png', 'image/png', '2024-03-04', 'product', 'img65e5ab98cb590'),
(923, '1709550756.png', 334, 'https://forbro.in/assets/uploads/admin/product/1709550756.png', 'image/png', '2024-03-04', 'product', 'img65e5ab98cb590'),
(925, '17095514651.png', 416, 'https://forbro.in/assets/uploads/admin/product/17095514651.png', 'image/png', '2024-03-04', 'product', 'img65e5acbd9a297'),
(926, '1709551466.png', 360, 'https://forbro.in/assets/uploads/admin/product/1709551466.png', 'image/png', '2024-03-04', 'product', 'img65e5acbd9a297'),
(927, '1709551468.png', 455, 'https://forbro.in/assets/uploads/admin/product/1709551468.png', 'image/png', '2024-03-04', 'product', 'img65e5acbd9a297'),
(928, '17095514681.png', 458, 'https://forbro.in/assets/uploads/admin/product/17095514681.png', 'image/png', '2024-03-04', 'product', 'img65e5acbd9a297'),
(929, '1709551489.png', 271, 'https://forbro.in/assets/uploads/admin/product/1709551489.png', 'image/png', '2024-03-04', 'product', 'img65e5acbd9a297'),
(934, '1709551558.png', 606, 'https://forbro.in/assets/uploads/admin/product/1709551558.png', 'image/png', '2024-03-04', 'product', 'img65e5ad202acb6'),
(935, '1709551604.png', 344, 'https://forbro.in/assets/uploads/admin/product/1709551604.png', 'image/png', '2024-03-04', 'product', 'img65e5ad202acb6'),
(936, '1709551605.png', 774, 'https://forbro.in/assets/uploads/admin/product/1709551605.png', 'image/png', '2024-03-04', 'product', 'img65e5ad202acb6'),
(937, '1709551648.png', 792, 'https://forbro.in/assets/uploads/admin/product/1709551648.png', 'image/png', '2024-03-04', 'product', 'img65e5ad202acb6'),
(938, '1709551649.png', 1249, 'https://forbro.in/assets/uploads/admin/product/1709551649.png', 'image/png', '2024-03-04', 'product', 'img65e5ad202acb6'),
(939, '1709551689.png', 513, 'https://forbro.in/assets/uploads/admin/product/1709551689.png', 'image/png', '2024-03-04', 'product', 'img65e5ad7237474'),
(940, '1709551690.png', 585, 'https://forbro.in/assets/uploads/admin/product/1709551690.png', 'image/png', '2024-03-04', 'product', 'img65e5ad7237474'),
(941, '1709551717.png', 694, 'https://forbro.in/assets/uploads/admin/product/1709551717.png', 'image/png', '2024-03-04', 'product', 'img65e5ad7237474'),
(942, '17095517171.png', 895, 'https://forbro.in/assets/uploads/admin/product/17095517171.png', 'image/png', '2024-03-04', 'product', 'img65e5ad7237474'),
(943, '1709551737.png', 614, 'https://forbro.in/assets/uploads/admin/product/1709551737.png', 'image/png', '2024-03-04', 'product', 'img65e5ad7237474'),
(944, '1709551807.png', 863, 'https://forbro.in/assets/uploads/admin/product/1709551807.png', 'image/png', '2024-03-04', 'product', 'img65e5adb7cdef8'),
(945, '1709551808.png', 1287, 'https://forbro.in/assets/uploads/admin/product/1709551808.png', 'image/png', '2024-03-04', 'product', 'img65e5adb7cdef8'),
(946, '1709551816.png', 713, 'https://forbro.in/assets/uploads/admin/product/1709551816.png', 'image/png', '2024-03-04', 'product', 'img65e5adb7cdef8'),
(947, '1709551817.png', 833, 'https://forbro.in/assets/uploads/admin/product/1709551817.png', 'image/png', '2024-03-04', 'product', 'img65e5adb7cdef8'),
(948, '1709551868.png', 559, 'https://forbro.in/assets/uploads/admin/product/1709551868.png', 'image/png', '2024-03-04', 'product', 'img65e5adfced282'),
(949, '1709551869.png', 540, 'https://forbro.in/assets/uploads/admin/product/1709551869.png', 'image/png', '2024-03-04', 'product', 'img65e5adfced282'),
(950, '1709551873.png', 537, 'https://forbro.in/assets/uploads/admin/product/1709551873.png', 'image/png', '2024-03-04', 'product', 'img65e5adfced282'),
(951, '1709551874.png', 973, 'https://forbro.in/assets/uploads/admin/product/1709551874.png', 'image/png', '2024-03-04', 'product', 'img65e5adfced282'),
(952, '1709551875.png', 289, 'https://forbro.in/assets/uploads/admin/product/1709551875.png', 'image/png', '2024-03-04', 'product', 'img65e5adfced282'),
(953, '1709551912.png', 593, 'https://forbro.in/assets/uploads/admin/product/1709551912.png', 'image/png', '2024-03-04', 'product', 'img65e5ae3b7874f'),
(954, '1709551913.png', 656, 'https://forbro.in/assets/uploads/admin/product/1709551913.png', 'image/png', '2024-03-04', 'product', 'img65e5ae3b7874f'),
(955, '1709551915.png', 788, 'https://forbro.in/assets/uploads/admin/product/1709551915.png', 'image/png', '2024-03-04', 'product', 'img65e5ae3b7874f'),
(956, '1709551916.png', 1387, 'https://forbro.in/assets/uploads/admin/product/1709551916.png', 'image/png', '2024-03-04', 'product', 'img65e5ae3b7874f'),
(957, '1709551917.png', 361, 'https://forbro.in/assets/uploads/admin/product/1709551917.png', 'image/png', '2024-03-04', 'product', 'img65e5ae3b7874f'),
(959, '17095519421.png', 515, 'https://forbro.in/assets/uploads/admin/product/17095519421.png', 'image/png', '2024-03-04', 'product', 'img65e5ae824c764'),
(960, '1709551945.png', 576, 'https://forbro.in/assets/uploads/admin/product/1709551945.png', 'image/png', '2024-03-04', 'product', 'img65e5ae824c764'),
(961, '1709551946.png', 733, 'https://forbro.in/assets/uploads/admin/product/1709551946.png', 'image/png', '2024-03-04', 'product', 'img65e5ae824c764'),
(962, '1709551947.png', 513, 'https://forbro.in/assets/uploads/admin/product/1709551947.png', 'image/png', '2024-03-04', 'product', 'img65e5ae824c764'),
(963, '1709551960.png', 304, 'https://forbro.in/assets/uploads/admin/product/1709551960.png', 'image/png', '2024-03-04', 'product', 'img65e5ae824c764'),
(965, '1709551990.png', 735, 'https://forbro.in/assets/uploads/admin/product/1709551990.png', 'image/png', '2024-03-04', 'product', 'img65e5aec5c245d'),
(966, '1709551999.png', 806, 'https://forbro.in/assets/uploads/admin/product/1709551999.png', 'image/png', '2024-03-04', 'product', 'img65e5aec5c245d'),
(967, '1709552000.png', 1295, 'https://forbro.in/assets/uploads/admin/product/1709552000.png', 'image/png', '2024-03-04', 'product', 'img65e5aec5c245d'),
(968, '1709552002.png', 742, 'https://forbro.in/assets/uploads/admin/product/1709552002.png', 'image/png', '2024-03-04', 'product', 'img65e5aec5c245d'),
(969, '1709552025.png', 340, 'https://forbro.in/assets/uploads/admin/product/1709552025.png', 'image/png', '2024-03-04', 'product', 'img65e5aec5c245d'),
(970, '1709552047.png', 321, 'https://forbro.in/assets/uploads/admin/product/1709552047.png', 'image/png', '2024-03-04', 'product', 'img65e5af10a2062'),
(971, '1709552048.png', 370, 'https://forbro.in/assets/uploads/admin/product/1709552048.png', 'image/png', '2024-03-04', 'product', 'img65e5af10a2062'),
(972, '1709552049.png', 364, 'https://forbro.in/assets/uploads/admin/product/1709552049.png', 'image/png', '2024-03-04', 'product', 'img65e5af10a2062'),
(973, '17095520491.png', 214, 'https://forbro.in/assets/uploads/admin/product/17095520491.png', 'image/png', '2024-03-04', 'product', 'img65e5af10a2062'),
(974, '1709552050.png', 374, 'https://forbro.in/assets/uploads/admin/product/1709552050.png', 'image/png', '2024-03-04', 'product', 'img65e5af10a2062');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `product_color` varchar(100) DEFAULT NULL,
  `order_shipped1` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:pending,1:sent,2:delivered',
  `deliver_date1` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `product_size`, `product_color`, `order_shipped1`, `deliver_date1`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 2, 'VI-KU-CT-BU-ED-D3', 999, '1', NULL, NULL, 1, '2020-01-13 11:28:01', '2020-01-13 09:25:14', '2020-01-13 11:28:01', 0),
(2, 2, 32, 'VI-SRT-CP-BU-D18', 500, '1', '91', '', 2, '2020-02-12 07:36:05', '2020-01-31 10:09:48', '2020-02-12 07:36:05', 0),
(3, 2, 32, 'VI-SRT-CP-BU-D18', 500, '2', '92', '', 2, '2020-02-12 07:36:05', '2020-01-31 10:09:48', '2020-02-12 07:36:05', 0),
(4, 2, 32, 'VI-SRT-CP-BU-D18', 500, '3', '93', '', 2, '2020-02-12 07:36:05', '2020-01-31 10:09:48', '2020-02-12 07:36:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `custom_order_no` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `order_user_id` int(11) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `order_amount` float NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_shipped` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:pending,1:sent,2:delivered',
  `deliver_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_tracking_number` varchar(80) DEFAULT NULL,
  `payment_mode` int(11) NOT NULL DEFAULT 1 COMMENT '1:cod,2:credit,3:debit,4:netbanking,5:emi',
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '0:hold,1: Pending, 2: processing, 3: completed,4:return'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `custom_order_no`, `order_user_id`, `address_id`, `order_amount`, `order_date`, `order_shipped`, `deliver_date`, `updated_at`, `order_tracking_number`, `payment_mode`, `order_status`) VALUES
(1, '9387434233463985', 1, 4, 999, '2020-01-12 21:25:14', 1, '0000-00-00 00:00:00', '2020-01-13 11:28:12', 'VIHU5203123889170454', 1, 2),
(2, '6598429275184713', 1, 5, 3000, '2020-01-30 22:09:48', 2, '0000-00-00 00:00:00', '2020-02-12 07:36:16', 'VIHU5152776318857134', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productcategories`
--

CREATE TABLE `tbl_productcategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `path_slug` varchar(500) DEFAULT NULL,
  `Cateogy_slug` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `parent_catid` varchar(250) NOT NULL,
  `Img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `tbl_productcategories`
--

INSERT INTO `tbl_productcategories` (`CategoryID`, `CategoryName`, `path_slug`, `Cateogy_slug`, `Description`, `parent_catid`, `Img`, `status`) VALUES
(21, 'Women', NULL, 'women', 'Products for Women', '0', '1708946781.png', 1),
(22, 'Accessories', NULL, 'accessories', 'Accessories are items that can contribute to an outfit and complement a person\'s look. They can also help express an individual\'s identity and personality.', '0', '1708666636.jpg', 1),
(31, 'Belts', NULL, 'belts', '', '22', 'sub-cat1708943773.png', 1),
(32, 'Wallets', NULL, 'wallets', '', '22', 'sub-cat1708943793.png', 1),
(13, 'Men', NULL, 'men', 'For Men', '0', '1708946769.png', 1),
(40, 'Tracksuits', NULL, 'tracksuits', '', '13', 'sub-cat1709021608.png', 1),
(41, 'Jackets', NULL, 'jackets', '', '13', 'sub-cat1709021626.png', 1),
(39, 'Lowers', NULL, 'lowers', '', '13', 'sub-cat1709021588.png', 1),
(38, 'Tops & Tunics', NULL, 'tops-tunics', '', '21', 'sub-cat1709021571.png', 1),
(37, 'Kurtas & Kurtis', NULL, 'kurtas-kurtis', '', '21', 'sub-cat1709021550.png', 1),
(36, 'Pants & Palazzos', NULL, 'pants-palazzos', '', '21', 'sub-cat1709021528.png', 1),
(34, 'Shorts', NULL, 'shorts', '', '13', 'sub-cat1709021488.png', 1),
(33, 'Tshirts', NULL, 'tshirts', '', '13', 'sub-cat1709021467.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `ProductID` int(12) NOT NULL,
  `hexa_id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ProductSKU` varchar(50) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `ProductPrice` float NOT NULL,
  `Productsaleprice` float NOT NULL,
  `Featured` int(11) NOT NULL DEFAULT 0,
  `top_sale` int(11) NOT NULL DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `Recent` int(11) NOT NULL DEFAULT 1,
  `ProductWeight` float NOT NULL,
  `ProductCartDesc` varchar(250) DEFAULT NULL,
  `ProductShortDesc` text NOT NULL,
  `ProductLongDesc` mediumtext DEFAULT NULL,
  `product_brand` int(11) NOT NULL,
  `ProductThumb` varchar(100) DEFAULT NULL,
  `ProductImage` varchar(100) DEFAULT '0',
  `ProductUrl` varchar(500) NOT NULL,
  `ProductCategoryID` int(11) DEFAULT NULL,
  `sub_category` bigint(20) NOT NULL,
  `ProductStock` float DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `ProductLive` tinyint(1) DEFAULT 1,
  `ProductUnlimited` tinyint(1) DEFAULT 1,
  `ProductLocation` varchar(250) DEFAULT NULL,
  `Productvariable` int(11) NOT NULL,
  `productvariableheading` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`ProductID`, `hexa_id`, `user_id`, `ProductSKU`, `ProductName`, `hsn`, `ProductPrice`, `Productsaleprice`, `Featured`, `top_sale`, `special`, `Recent`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `product_brand`, `ProductThumb`, `ProductImage`, `ProductUrl`, `ProductCategoryID`, `sub_category`, `ProductStock`, `keyword`, `tags`, `ProductLive`, `ProductUnlimited`, `ProductLocation`, `Productvariable`, `productvariableheading`, `created_at`, `updated_at`, `status`) VALUES
(1, 'c4ca4238a0b923820dcc509a6f75849b356a192b7913b04c54574d18c28d46e6395428ab', 1, 'VI-KU-CT-BK-PR-D6', 'VIHU Women\'s Fashionable Black Color Printed Kurti For Women\'s', '', 2200, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n• Black color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n• Black color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', 1, NULL, 'img5e1c26bf90f75', '', 8, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 08:16:55', '2020-01-13 08:16:55', b'0'),
(2, 'c81e728d9d4c2f636f067f89cc14862cda4b9237bacccdf19c0760cab7aec4a8359010b0', 1, 'VI-KU-CT-BU-ED-D3', 'VIHU Women\'s Fashionable Kurti Special For Women\'s Blue Colored Embroidered Kurti', '', 2300, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n• Made from cotton fabric\r\n• Red color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n• Made from cotton fabric\r\n• Red color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', 1, NULL, 'img5e1c28c182f95', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 08:25:23', '2020-01-13 08:25:23', b'0'),
(3, 'eccbc87e4b5ce2fe28308fd9f2a7baf377de68daecd823babbb58edb1c8e14d7106e83bb', 1, 'VI-KU-CT-BU-ED-D8', 'VIHU Women\'s Fashionable Kurti Special For Women\'s Blue Colored Embroidered Kurti For Women\'s', '', 2100, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n• Made from cotton fabric\r\n• Red color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n• Made from cotton fabric\r\n• Red color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n\r\n', 1, NULL, 'img5e1c297571172', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 08:27:42', '2020-01-13 08:27:42', b'0'),
(4, 'a87ff679a2f3e71d9181a67b7542122c1b6453892473a467d07372d45eb05abc2031647a', 1, 'VI-KU-CT-BU-PR-D5', 'VIHU Women\'s Fashionable Kurti Special for Women\'s Blue Colored Printed Kurti For Women\'s', '', 2200, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Blue color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Blue color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', 1, NULL, 'img5e1c2a0044ffe', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:18:12', '2020-01-13 10:18:12', b'0'),
(5, 'e4da3b7fbbce2345d7772b0674a318d5ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 1, 'VI-KU-CT-BW-ED-D2', 'VIHU Women\'s Stylish Kurti 3/4th Sleeve Boat Neck Brown Color Kurti For Women\'s', '', 2200, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Brown color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Brown color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', 1, NULL, 'img5e1c43e6a231b', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:20:27', '2020-01-21 10:56:29', b'0'),
(6, '1679091c5a880faf6fb5e6087eb1b2dcc1dfd96eea8cc2b62785275bca38ac261256e278', 1, 'VI-KU-CT-PK-D4', 'VIHU Women\'s Stylish Kurti Special For Women\'s Pink Color Printed Kurti For Women\'s', '', 2999, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Pink color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Pink color Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', 1, NULL, 'img5e1c446dbb413', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:22:43', '2020-01-21 10:53:35', b'0'),
(7, '8f14e45fceea167a5a36dedd4bea2543902ba3cda1883801594b6e1b452790cc53948fda', 1, 'VI-KU-CT-YL-CH-D1', 'VIHU Women\'s Fashionable Checks Kurti Special For Women\'s Boat Neck 3/4th Sleeve Kurti', '', 2100, 899, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Multicolor Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Multicolor Printed work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', 1, NULL, 'img5e1c44f4cd154', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:25:01', '2020-01-13 10:25:01', b'0'),
(8, 'c9f0f895fb98ab9159f51fd0297e236dfe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 1, 'VI-KU-CT-YL-D7', 'VIHU Womens fashionable kurti special for womens mustard color embroidered kurti for womens ', '', 1999, 999, 1, 1, 1, 1, 300, NULL, '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Mustard color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', '• Amazing And Nice collection of Kurti for Women By \"VIHU\" .\r\n• The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look..\r\n•  Available size\'s of this kurti  (Medium)(Large)(X-Large)(Free-Size)\r\n•Made from cotton fabric\r\n•Mustard color Embroidered work kurti\r\n•  Product Length 44.\r\nNOTE : Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage\r\n', 1, NULL, 'img5e1c457eb2e50', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:28:13', '2020-01-13 10:28:13', b'0'),
(10, 'd3d9446802a44259755d38e6d163e820b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 1, 'VI-P-RA-NG-BU-D50', 'VIHU Women\'s Stylish Top Special For Women\'s Off Shoulder 3/4th sleeve Top For Women\'s', '', 999, 420, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. \r\nLook Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Rayon, Off  Shoulder\'s ,Blue color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, \r\nAvailable size\'s of this top,(Small,Medium,Large,)', 'Casual Women Top Special For Women & Young Youth. \r\nLook Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Rayon, Off  Shoulder\'s ,Blue color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, \r\nAvailable size\'s of this top,(Small,Medium,Large,)', 1, NULL, 'img5e1c4c7d73bbe', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 10:57:59', '2020-01-13 10:58:23', b'0'),
(11, '6512bd43d9caa6e02c990b0a82652dca17ba0791499db908433b80f37c5fbc89b870084b', 1, 'VI-RA-TP-WH-D27', 'VIHU Women\'s Top Special For Women\'s White Color Chinese Collar top 3/4th Sleeve Top For Women\'s', '', 999, 399, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Chinese Collar ,White color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Chinese Collar ,White color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 1, NULL, 'img5e1c4d538f4b8', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:04:25', '2020-01-13 11:04:25', b'0'),
(18, '6f4922f45568161a8cdf4ad2299f6d239e6a55b6b4563e652a23be9d623ca5055c356940', 1, 'VI-DR-CT-MT-D2', 'Fashionable Women\'s Kurti Multicolor Boat Neck 3/4th Sleeve Kurti For Women\'s', '', 2100, 699, 1, 1, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade from cotton fabric  Multicolor floral printed.\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade from cotton fabric  Multicolor floral printed.\r\n', 1, NULL, 'img5e2146a105e14', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 05:43:54', '2020-01-17 05:43:54', b'0'),
(13, 'c51ce410c124a10e0db5e4b97fc2af39bd307a3ec329e10a2cff8fb87480823da114f8f4', 1, 'VI-TP-CDM-BK-D11', 'VIHU Women\'s Fashionable Combo Set Top Denim Jacket With Cotton Inner Black Color Special For Women\'', '', 999, 480, 1, 1, 1, 1, 300, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.  Made From Rayon, Boat Neck  ,Black  color,  This Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. NOTE  Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.  Available size\'s of this top,(Small,Medium,Large,)', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.  Made From Rayon, Boat Neck  ,Black  color,  This Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. NOTE  Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.  Available size\'s of this top,(Small,Medium,Large,)', 1, NULL, 'img5e1c4f4d7bbb2', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:12:05', '2020-01-13 11:12:05', b'0'),
(14, 'aab3238922bcc25a6f606eb525ffdc56fa35e192121eabf3dabf9f5ea6abdbcbc107ac3b', 1, 'VI-TP-CDM-BU-D10', 'VIHU Women\'s Fashionable Combo Set Denim Jacket With Cotton Inner Top Blue Colored Top For Womens ', '', 999, 489, 1, 1, 1, 1, 300, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Denim, Boat Neck  ,Blue color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Denim, Boat Neck  ,Blue color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 1, NULL, 'img5e1c5086e4364', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:18:51', '2020-01-13 11:18:51', b'0'),
(15, '9bf31c7ff062936a96d3c8bd1f8f2ff3f1abd670358e036c31296e66b3b66c382ac00812', 1, 'VI-TP-CDM-PK-D9', 'VIHU Women\'s Combo Set Top Denim Jacket With Cotton Inner Top For Women\'s', '', 999, 490, 1, 1, 1, 1, 300, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Denim,\r\n Boat Neck,\r\n Pink color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Denim,\r\n Boat Neck,\r\n Pink color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 1, NULL, 'img5e1c521d3aed2', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:21:31', '2020-01-13 11:21:31', b'0'),
(16, 'c74d97b01eae257e44aa9d5bade97baf1574bddb75c78a6fd2251d61e2993b5146201319', 1, 'VI-TP-CDM-RD-D8', 'VIHU Women\'s Combot Set Top Denim Jacket With Inner Rd Colored Sleeveless Top For Women\'s', '', 999, 492, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon\r\n Boat Neck \r\nRed color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon\r\n Boat Neck \r\nRed color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 1, NULL, 'img5e1c52bccb4b3', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:24:04', '2020-01-13 11:24:04', b'0'),
(17, '70efdf2ec9b086079795c442636b55fb0716d9708d321ffb6a00818614779e779925365c', 1, 'VI-TP-CT-BK-D34', 'VIHU Women\'s Embroidered Top Black Color Boat Neck Bell Sleeve Top For Women\'s ', '', 999, 390, 1, 1, 1, 1, 300, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon.\r\nBoat Neck.\r\nBlack  color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon.\r\nBoat Neck.\r\nBlack  color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look.\r\nNOTE\r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this top,(Small,Medium,Large,)\r\n', 1, NULL, 'img5e1c5355be711', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-13 11:26:31', '2020-01-13 11:26:31', b'0'),
(19, '1f0e3dad99908345f7439f8ffabdffc4b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f', 1, 'VI-TP-CT-BK-D62', 'Vihu Women\'s Top Black Color Round Neck Top For Women\'s', '', 999, 399, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Black color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Black color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 1, NULL, 'img5e21499c9d906', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 05:48:04', '2020-01-17 05:48:04', b'0'),
(20, '98f13708210194c475687be6106a3b8491032ad7bbcb6cf72875e8e8207dcfba80173f7c', 1, 'VI-DR-CT-MT-D4', 'Vihu Women\'s  Stylish Kurti Multicolor Floral Printed Kurti Boat Neck 3/4th Sleeve Kurti For Women\'s', '', 1700, 699, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Black color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 1, NULL, 'img5e214a9656792', '', 10, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 06:06:22', '2020-01-17 06:06:22', b'0'),
(21, '3c59dc048e8850243be8079a5c74d079472b07b9fcf2c2451e8781e944bf5f77cd8457c8', 1, 'VI-TP-CT-PK-D16', 'VIHU Women\'s Top Pink Color Round Neck Embroidered Top For Women\'s', '', 1200, 399, 0, 1, 0, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Pink color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Pink color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 1, NULL, 'img5e215b27810ce', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 07:02:13', '2020-01-17 07:02:13', b'0'),
(22, 'b6d767d2f8ed5d21a44b0e5886680cb912c6fc06c99a462375eeb3f43dfd832b08ca9e17', 1, 'VI-DR-CT-MT-D5', 'VIHU Women\'s Long Kurti Special For Women\'s Blue Color Printed Kurti', '', 2200, 899, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (Medium,Large,X-Large,)\r\nMade from cotton fabric Blue floral printed.\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (Medium,Large,X-Large,)\r\nMade from cotton fabric Blue floral printed.\r\n', 1, NULL, 'img5e215bf71de56', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 07:05:15', '2020-01-17 07:05:15', b'0'),
(23, '37693cfc748049e45d87b8c7d8b9aacdd435a6cdd786300dff204ee7c2ef942d3e9034e2', 1, 'VI-TP-CT-RD-D35', 'VIHU Women\'s Red Color Top For Women\'s Boat Neck 3/4th Sleeve Top', '', 1200, 399, 1, 1, 0, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Red color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,X_Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,Red color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,X_Small)\r\n', 1, NULL, 'img5e215fd36376d', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 07:22:33', '2020-01-17 07:22:33', b'0'),
(24, '1ff1de774005f8da13f42943881c655f4d134bc072212ace2df385dae143139da74ec0ef', 1, 'VI-TP-CT-WH-D15', 'VIHU Women\'s Top 3/4th Sleeve Top For Women\'s White Color Top', '', 1200, 420, 0, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,White color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff.\r\n Made From Rayon, Round Neck  ,White color, \r\nThis Top is a Comfortable and Triendly any Weather Wear That Can Transform Your Look. \r\nNOTE”\r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage, Available size\'s of this top,(Small,Medium,Large)\r\n', 1, NULL, 'img5e2160bb5e47f', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-17 07:31:19', '2020-01-17 07:31:19', b'0'),
(25, '8e296a067a37563370ded05f5a3bf3ecf6e1126cedebf23e1463aee73f9df08783640400', 1, 'VI-TP-CT-BK-D6', 'Vihu Women\'s Fashionable Top For women\'s black Colored Top', '', 1990, 490, 0, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester fabric, V- Neck , Black color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester fabric, V- Neck , Black color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e316c639bdac', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:33:30', '2020-01-29 11:33:30', b'0'),
(26, '4e732ced3463d06de0ca9a15b6153677887309d048beef83ad3eabf2a79a64a389ab1c9f', 1, 'VI-TP-CT-CH-MT-D2', 'Vihu women\'s Checks Top for Women\'s Green Colored Half SleeveTtop ', '', 1900, 490, 1, 1, 0, 1, 200, NULL, '\r\nCasual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, round  Neck , Green color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', '\r\nCasual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, round  Neck , Green color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e316e4bebcd4', '', 5, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:38:39', '2020-01-29 11:38:39', b'0'),
(27, '02e74f10e0327ad868d138f2b4fdd6f0bc33ea4e26e5e1af1408321416956113a4658763', 1, 'VI-TP-CT-CH-MT-D8', 'Vihu women\'s Fashionable Checks Top For Women\'s Half Sleeve Top ', '', 1920, 500, 0, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, Chinese Neck , Multi color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, Chinese Neck , Multi color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e316f0823785', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:42:01', '2020-01-29 11:42:01', b'0'),
(28, '33e75ff09dd601bbe69f3510391521890a57cb53ba59c46fc4b692527a38a87c78d84028', 1, 'VI-TP-CT-MT-PR-D3', 'Vihu Women\'s Casual top For Women\'s half Sleeve Printed  Top ', '', 1990, 499, 1, 1, 0, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, round  Neck , Multi color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric, round  Neck , Multi color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e316fe5d1faa', '', 5, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:49:38', '2020-01-29 11:49:38', b'0'),
(29, '6ea9ab1baa0efb9e19094440c317e21b7719a1c782a1ba91c031a682a0a2f8658209adbf', 1, 'VI-TP-CT-RD-D4', 'Vihu Women\'s Solid Red Color Top For Women\'s Half Sleeve boat Neck Top ', '', 1900, 499, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester fabric, Boat Neck , Red color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester fabric, Boat Neck , Red color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e31717b4757c', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:54:38', '2020-01-29 11:54:38', b'0'),
(30, '34173cb38f07f89ddbebc2ac9128303f22d200f8670dbdb3e253a90eee5098477c95c23d', 1, 'VI-TP-GT-BU-D1', 'Vihu Women\'s Casual Blue Colored Top For Women\'s U-Neck Sleeveless', '', 1800, 499, 1, 1, 0, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric,u- Neck , Blue color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Cotton fabric,u- Neck , Blue color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e3172be01a2b', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 11:59:07', '2020-01-29 11:59:07', b'0'),
(31, 'c16a5320fa475530d9583c34fd356ef5632667547e7cd3e0466547863e1207a8c0c0c549', 1, 'VI-TP-GT-MT-D7', 'Vihu Women\'s Casual purple Top For Women\'s V-Neck Full Sleeve', '', 1800, 490, 1, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Spandex fabric, V-Neck , Purple color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Spandex fabric, V-Neck , Purple color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e31738d0d1a0', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-29 12:01:59', '2020-01-29 12:01:59', b'0'),
(32, '6364d3f0f495b6ab9dcf8d3b5c6e0b01cb4e5208b4cd87268b208e49452ed6e89a68e0b8', 1, 'VI-SRT-CP-BU-D18', 'Vihu Women\'s Casual Top Blue Color For Women\'s', '', 1200, 500, 0, 1, 1, 1, 200, NULL, 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester  fabric ,Mandarin Collar Neck , Navy blue color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 'Casual Women Top Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Casual Top From Showoff. Made From Polyester  fabric ,Mandarin Collar Neck , Navy blue color. This Top is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: \r\n Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage. Available size\'s of this top,(Small, Medium, Large, X-Small)\r\n', 1, NULL, 'img5e32ae67f2236', '', 5, 0, 8, NULL, NULL, 1, 1, NULL, 0, '', '2020-01-30 10:25:00', '2020-01-30 10:25:00', b'0'),
(33, '182be0c5cdcd5072bb1864cdee4d3d6eb6692ea5df920cad691c20319a6fffd7a4a766b8', 1, 'VI-DR-CT-MT-D6', 'Vihu Women\'s Kurti Boat Neck 3/4th Sleeve Blue Colored Kurti For Women\'s', '', 2200, 649, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 1, NULL, 'img5e380a17b9816', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-03 11:59:05', '2020-02-03 11:59:05', b'0'),
(34, 'e369853df766fa44e1ed0ff613f563bdf1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59', 1, 'VI-TU-CT-BU-D2', 'Vihu Women\'s Tunic Blue Colored Checkered Tunic For Women\'s', '', 2200, 420, 1, 1, 1, 1, 200, NULL, 'Tunic for Women Waist belt for better fit. 3/4th Sleeves Approx Length: 36\". Sleeve: 15\" Fabric: Cotton. Care Instructions: Separate first wash.\r\nNote: \r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 'Tunic for Women Waist belt for better fit. 3/4th Sleeves Approx Length: 36\". Sleeve: 15\" Fabric: Cotton. Care Instructions: Separate first wash.\r\nNote: \r\nBe kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 1, NULL, 'img5e380f26c6751', '', 5, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-03 12:19:09', '2020-02-03 12:19:09', b'0'),
(35, '1c383cd30b7c298ab50293adfecb7b18972a67c48192728a34979d9a35164c1295401b71', 1, 'VI-DR-CT-MT-D7', 'Vihu Women\'s Mustard Printed Kurti For Women\'s', '', 2200, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 1, NULL, 'img5e3811201a50f', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-03 12:28:19', '2020-02-03 12:28:19', b'0'),
(36, '19ca14e7ea6328a42e0eb13d585e4c22fc074d501302eb2b93e2554793fcaf50b3bf7291', 1, 'VI-DR-CT-MT-D8', 'Vihu Women\'s Multicolored Boat Neck kurti For Women\'s', '', 2200, 589, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 1, NULL, 'img5e3811e5992c0', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-03 12:31:08', '2020-02-03 12:31:08', b'0'),
(37, 'a5bfc9e07964f8dddeb95fc584cd965dcb7a1d775e800fd1ee4049f7dca9e041eb9ba083', 1, 'VI-DR-CT-MT-D12', 'Vihu Women\'s Fashionable Sky Blue Colored Kurti For Women\'s boat Neck', '', 2200, 599, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\n', 1, NULL, 'img5e38128deaefa', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-03 12:33:36', '2020-02-03 12:33:36', b'0'),
(38, 'a5771bce93e200c36f7cd9dfd0e5deaa5b384ce32d8cdef02bc3a139d4cac0a22bb029e8', 1, 'VI-DR-CT-OR-D11', 'Vihu Women\'s Fashionable kurti  Dress Boat Neck 3/4th Sleeve Dress For Women\'s ', '', 2200, 599, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade From Cotton.', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade From Cotton.\r\n', 1, NULL, 'img5e3919f0ddff6', '', 10, 0, 8, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 07:23:05', '2020-02-04 07:23:05', b'0'),
(39, 'd67d8ab4f4c10bf22aa353e27879133cca3512f4dfa95a03169c5a670a4c91a19b3077b4', 1, 'VI-DR-CT-PK-D10', 'Vihu Women\'s Kurti Pink Color Boat Neck Kurti For Women\'s ', '', 2200, 599, 1, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade from cotton pink color.', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n Available size\'s of this kurti dress (M,L,XL,)\r\nMade from cotton pink color.', 1, NULL, 'img5e391bdbf2e3d', '', 10, 0, 8, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 07:25:38', '2020-02-04 07:25:38', b'0'),
(40, 'd645920e395fedad7bbbed0eca3fe2e0af3e133428b9e25c55bc59fe534248e6a0c0f17b', 1, 'VI-DR-CT-PK-PR-D17', 'Vihu Women\'s Fashionable Kurta For Women\'s Pink Color Mandarin Collar', '', 2200, 599, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Yellow\r\nPack of: 1', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Yellow\r\nPack of: 1\r\n', 1, NULL, 'img5e391c73dc037', '', 10, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 07:31:46', '2020-02-04 07:31:46', b'0');
INSERT INTO `tbl_products` (`ProductID`, `hexa_id`, `user_id`, `ProductSKU`, `ProductName`, `hsn`, `ProductPrice`, `Productsaleprice`, `Featured`, `top_sale`, `special`, `Recent`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `product_brand`, `ProductThumb`, `ProductImage`, `ProductUrl`, `ProductCategoryID`, `sub_category`, `ProductStock`, `keyword`, `tags`, `ProductLive`, `ProductUnlimited`, `ProductLocation`, `Productvariable`, `productvariableheading`, `created_at`, `updated_at`, `status`) VALUES
(41, '3416a75f4cea9109507cacd8e2f2aefc761f22b2c1593d0bb87e0b606f990ba4974706de', 1, 'VI-DR-CT-SBU-D9', 'Vihu Women\'s Fashionable Dress Kurti For Women\'s Boat Neck 3/4th Sleeve', '', 2230, 599, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Grey\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Grey\r\nPack of: 1\r\n', 1, NULL, 'img5e391de464718', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 07:37:22', '2020-02-04 07:37:22', b'0'),
(42, 'a1d0c6e83f027327d8461063f4ac58a692cfceb39d57d914ed8b14d0e37643de0797ae56', 1, 'VI-DS-CT-MT-D10', 'Vihu Women\'s Trendy Kurti Long Dress Special For Women\'s ', '', 760, 2500, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Green\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Green\r\nPack of: 1\r\n', 1, NULL, 'img5e391f349962a', '', 10, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 07:53:36', '2020-02-04 07:53:36', b'0'),
(43, '17e62166fc8586dfa4d1bc0e1742c08b0286dd552c9bea9a69ecb3759e7b94777635514b', 1, 'VI-DS-CT-MT-D10_SKL', 'Vihu Women\'s Trendy Fashionable Printed Long Dress Kurti For Women\'s', '', 2300, 760, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: printed\r\nColor: multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: printed\r\nColor: multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e39230218ac1', '', 10, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 08:02:39', '2020-02-04 08:02:39', b'0'),
(44, 'f7177163c833dff4b38fc8d2872f1ec698fbc42faedc02492397cb5962ea3a3ffc0a9243', 1, 'VI-KU-CT-GR-D21', 'Vihu Women\'s Trendy Embroidered Kurta Special For Women\'s', '', 2200, 630, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Green\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Green\r\nPack of: 1\r\n', 1, NULL, 'img5e392520ee558', '', 10, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 08:08:46', '2020-02-04 08:08:46', b'0'),
(45, '6c8349cc7260ae62e3b1396831a8398ffb644351560d8296fe6da332236b1f8d61b2828a', 1, 'VI-KU-CT-MT-D22', 'Vihu Women\'s Trendy Printed Kurta Special For Women\'s Boat Neck', '', 1500, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e392690b3c62', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 08:11:41', '2020-02-04 08:11:41', b'0'),
(46, 'd9d4f495e875a2e075a1a4a6e1b9770ffe2ef495a1152561572949784c16bf23abb28057', 1, 'VI-KU-CT-MT-D24', 'Vihu Women\'s Trendy Printed Boat neck Kurta Special For Women\'s ', '', 2200, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e39273f5821c', '', 10, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 08:16:34', '2020-02-04 08:16:34', b'0'),
(47, '67c6a1e7ce56d3d6fa748ab6d9af3fd7827bfc458708f0b442009c9c9836f7e4b65557fb', 1, 'VI-KU-CT-MT-D45', 'Vihu Women\'s Trendy Stylish Kurta Boat Neck Black Color Special For Women\'s ', '', 2200, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Black\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Black\r\nPack of: 1\r\n', 1, NULL, 'img5e392864191b3', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 08:24:14', '2020-02-04 08:24:14', b'0'),
(48, '642e92efb79421734881b53e1e1b18b664e095fe763fc62418378753f9402623bea9e227', 1, 'VI-KU-CT-NBU-D20', 'Vihu Women\'s Trendy Kurta Embroidered Special For Women\'s ', '', 2200, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: blue\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: blue\r\nPack of: 1\r\n', 1, NULL, 'img5e3942a107d36', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:12:13', '2020-02-04 10:12:13', b'0'),
(49, 'f457c545a9ded88f18ecee47145a72c02e01e17467891f7c933dbaa00e1459d23db3fe4f', 1, 'VI-KU-CT-PCH-PR-D16', 'Vihu Women\'s Trendy Kurta peach Colored Special For Women\'s ', '', 2200, 630, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurta dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Peach\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurta dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Peach\r\nPack of: 1\r\n', 1, NULL, 'img5e39437ec6989', '', 10, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:18:43', '2020-02-04 10:18:43', b'0'),
(50, 'c0c7c76d30bd3dcaefc96f40275bdc0ae1822db470e60d090affd0956d743cb0e7cdf113', 1, 'VI-KU-CT-RD-D18', 'Vihu Women\'s Trendy Kurta Red Colored Special For Women\'s ', '', 2200, 652, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Peach\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Peach\r\nPack of: 1\r\n', 1, NULL, 'img5e3945058074a', '', 10, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:20:14', '2020-02-04 10:20:14', b'0'),
(51, '2838023a778dfaecdc212708f721b788b7eb6c689c037217079766fdb77c3bac3e51cb4c', 1, 'VI-KU-CT-SBU-PR-D15', 'Vihu Women\'s Trendy Kurta Blue Colored Special For Women\'s ', '', 2200, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurta dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Blue\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurta dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Blue\r\nPack of: 1\r\n', 1, NULL, 'img5e3945602f31d', '', 10, 0, 30, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:34:13', '2020-02-04 10:34:13', b'0'),
(52, '9a1158154dfa42caddbd0694a4e9bdc8a9334987ece78b6fe8bf130ef00b74847c1d3da6', 1, 'VI-KU-CT-YW-D19', 'Vihu Women\'s Trendy Kurta yellow Special For Women\'s ', '', 1500, 599, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Yellow\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Yellow\r\nPack of: 1\r\n', 1, NULL, 'img5e3948a6f28bb', '', 10, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:35:57', '2020-02-04 10:35:57', b'0'),
(53, 'd82c8d1619ad8176d665453cfb2e55f0c5b76da3e608d34edb07244cd9b875ee86906328', 1, 'VI-KU-GR-PR-D14', 'Vihu Women\'s Trendy Kurta Green Colored Special For Women\'s ', '', 2200, 620, 0, 1, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Green\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this kurti dress (M,L,XL,)\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Embroidered\r\nColor: Green\r\nPack of: 1\r\n', 1, NULL, 'img5e39490f9cf9b', '', 10, 0, 4, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 10:45:46', '2020-02-04 10:45:46', b'0'),
(54, 'a684eceee76fc522773286a895bc843680e28a51cbc26fa4bd34938c5e593b36146f5e0c', 1, 'VI-TP-CP-BW-D18', 'Vihu Women\'s Trendy Top Brown Colored Top Special For Women\'s ', '', 1200, 420, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Brown\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Brown\r\nPack of: 1\r\n', 1, NULL, 'img5e394b5bcdd2e', '', 5, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:17:43', '2020-02-04 11:17:43', b'0'),
(55, 'b53b3a3d6ab90ce0268229151c9bde118effee409c625e1a2d8f5033631840e6ce1dcb64', 1, 'VI-TP-CP-MT-D13', 'Vihu Women\'s Fashionable Printed Top Special For Women\'s ', '', 1200, 420, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Mustard\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Mustard\r\nPack of: 1\r\n', 1, NULL, 'img5e3952d97d23b', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:19:53', '2020-02-04 11:19:53', b'0'),
(56, '9f61408e3afb633e50cdf1b20de6f46654ceb91256e8190e474aa752a6e0650a2df5ba37', 1, 'VI-TP-CP-MT-PRI-AD6', 'Vihu Women\'s Trendy Printed White Top Special For Women\'s ', '', 1200, 410, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: Half Sleeves\r\nWork: Printed\r\nColor: White\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: Half Sleeves\r\nWork: Printed\r\nColor: White\r\nPack of: 1\r\n', 1, NULL, 'img5e39535bbabf2', '', 5, 0, 1, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:22:58', '2020-02-04 11:22:58', b'0'),
(57, '72b32a1f754ba1c09b3695e0cb6cde7f9109c85a45b703f87f1413a405549a2cea9ab556', 1, 'VI-TP-GT-BW-AD3', 'Vihu Women\'s Trendy Solid brown Top Special For Women\'s ', '', 1200, 410, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Brown\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Brown\r\nPack of: 1\r\n', 1, NULL, 'img5e39541470143', '', 5, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:26:45', '2020-02-04 11:26:45', b'0'),
(58, '66f041e16a60928b05a7e228a89c3799667be543b02294b7624119adc3a725473df39885', 1, 'VI-TP-GT-OR-AD4', 'Vihu Women\'s Trendy Solid Orange Top Special For Women\'s ', '', 1500, 420, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Orange\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Orange\r\nPack of: 1\r\n', 1, NULL, 'img5e3954f758430', '', 5, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:28:15', '2020-02-04 11:28:15', b'0'),
(59, '093f65e080a295f8076b1c5722a46aa25a5b0f9b7d3f8fc84c3cef8fd8efaaa6c70d75ab', 1, 'VI-TP-PLY-BK-AD7', 'Vihu Women\'s Trendy Solid Black Top Boat Special For Women\'s ', '', 1500, 449, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Black\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Black\r\nPack of: 1\r\n', 1, NULL, 'img5e3955516a454', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:30:02', '2020-02-04 11:30:02', b'0'),
(60, '072b030ba126b2f4b2374f342be9ed44e6c3dd630428fd54834172b8fd2735fed9416da4', 1, 'VI-TP-PLY-MT-AD5', 'Vihu Women\'s Trendy Printed Multi Color Top Special For Women\'s ', '', 1500, 449, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e3955bc67965', '', 5, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:32:32', '2020-02-04 11:32:32', b'0'),
(61, '7f39f8317fbdb1988ef4c628eba025916c1e671f9af5b46d9c1a52067bdf0e53685674f7', 1, 'VI-TP-PLY-PCH-AD2', 'Vihu Women\'s Trendy Solid Peach Top Special For Women\'s ', '', 1500, 459, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Peach\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Peach\r\nPack of: 1\r\n', 1, NULL, 'img5e395652d07c3', '', 5, 0, 13, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:34:05', '2020-02-04 11:34:05', b'0'),
(62, '44f683a84163b3523afe57c2e008bc8c511a418e72591eb7e33f703f04c3fa16df6c90bd', 1, 'VI-TP-PLY-RD-D16', 'Vihu Women\'s Trendy Solid Red Colored Top Special For Women\'s ', '', 1200, 460, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Red\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Red\r\nPack of: 1\r\n', 1, NULL, 'img5e3956af7f0c2', '', 5, 0, 12, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:36:00', '2020-02-04 11:36:00', b'0'),
(63, '03afdbd66e7929b125f8597834fa83a4a17554a0d2b15a664c0e73900184544f19e70227', 1, 'VI-TP-PLY-YL-D14', 'Vihu Women\'s Trendy Solid Yellow Colored Top Special For Women\'s ', '', 1200, 460, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: Half Sleeve\r\nWork: Solid\r\nColor: Yellow\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: Half Sleeve\r\nWork: Solid\r\nColor: Yellow\r\nPack of: 1\r\n', 1, NULL, 'img5e3957229c5f8', '', 5, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:37:30', '2020-02-04 11:37:30', b'0'),
(64, 'ea5d2f1c4608232e07d3aa3d998e5135c66c65175fecc3103b3b587be9b5b230889c8628', 1, 'VI-TP-POL-MT-D5', 'Vihu Women\'s Trendy Floral Printed Black Top Special For Women\'s ', '', 1500, 490, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Black\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (M,L,XL,)\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Printed\r\nColor: Black\r\nPack of: 1\r\n', 1, NULL, 'img5e39577c99b3d', '', 5, 0, 12, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-04 11:44:10', '2020-02-04 11:44:10', b'0'),
(65, 'fc490ca45c00b1249bbe3554a4fdf6fb2a459380709e2fe4ac2dae5733c73225ff6cfee1', 1, 'VI-TP-RA-CH-D70', 'Vihu Women\'s Trendy Checkered Red Top Special For Women\'s ', '', 1400, 430, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (S,M,L,XL,)\r\nFabric: Rayon\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nAvailable size\'s of this Top (S,M,L,XL,)\r\nFabric: Rayon\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 1, NULL, 'img5e3a69ab858c5', '', 5, 0, 12, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:17:31', '2020-02-05 07:17:31', b'0'),
(66, '3295c76acbf4caaed33c36b1b5fc2cb159129aacfb6cebbe2c52f30ef3424209f7252e82', 1, 'VI-TP-RD-PLY-D17', 'Vihu Women\'s Trendy Printed White Top Special For Women\'s', '', 1400, 410, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\nFurther more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Red\r\nPack of: 1', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\nFurther more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Red\r\nPack of: 1', 1, NULL, 'img5e3a6c0dd6922', '', 5, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:20:44', '2020-02-05 07:20:44', b'0'),
(67, '735b90b4568125ed6c3f678819b6e0584d89d294cd4ca9f2ca57dc24a53ffb3ef5303122', 1, 'VI-TP-SX-WH-AD1', 'Vihu Women\'s Trendy New Design Solid White Colored Top Special For Women\'s ', '', 1200, 430, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: White\r\nPack of: 1\r\n', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: White\r\nPack of: 1\r\n', 1, NULL, 'img5e3a6cce43276', '', 5, 0, 17, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:22:58', '2020-02-05 07:22:58', b'0'),
(68, 'a3f390d88e4c41f2747bfa2f1b5f87dbb4c96d80854dd27e76d8cc9e21960eebda52e962', 1, 'VI-TU-CT-MT-D1', 'Vihu Women\'s Trendy Checkered multi colored Tunic Special For Women\'s ', '', 2200, 549, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Multi colored\r\nPack of: 1', 'Amazing And Nice collection of top for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Crepe\r\nSleeve Length: 3/4th Sleeves\r\nWork: Solid\r\nColor: Multi colored\r\nPack of: 1', 1, NULL, 'img5e3a6d54c58c8', '', 11, 0, 8, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:26:42', '2020-02-05 07:26:42', b'0'),
(69, '14bfa6bb14875e45bba028a21ed38046a72b20062ec2c47ab2ceb97ac1bee818f8b6c6cb', 1, 'VI-TU-CT-MT-D3', 'Vihu Women\'s Trendy Checks Multi color tunic Special For Women\'s ', '', 2200, 540, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e3a6ed75ec2a', '', 11, 0, 9, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:31:47', '2020-02-05 07:31:47', b'0'),
(70, '7cbbc409ec990f19c78c75bd1e06f215b7103ca278a75cad8f7d065acda0c2e80da0b7dc', 1, 'VI-TU-CT-MT-D4', 'Vihu Women\'s Trendy Checks White Tunic Special For Women\'s ', '', 2200, 540, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: White\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: White\r\nPack of: 1\r\n', 1, NULL, 'img5e3a6f64c7161', '', 11, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:33:53', '2020-02-05 07:33:53', b'0'),
(71, 'e2c420d928d4bf8ce0ff2ec19b371514d02560dd9d7db4467627745bd6701e809ffca6e3', 1, 'VI-TU-CT-MT-D5', 'Vihu Women\'s Trendy New Design Checkered Multi colored Tunic Special For Women\'s ', '', 2200, 555, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e3a6fe392883', '', 11, 0, 17, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:38:57', '2020-02-05 07:38:57', b'0'),
(72, '32bb90e8976aab5298d5da10fe66f21dc097638f92de80ba8d6c696b26e6e601a5f61eb7', 1, 'VI-TU-CT-MT-D6', 'Vihu Women\'s Trendy New Design Checks Multi Colored Tunic Special For Women\'s ', '', 2200, 540, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi\r\nPack of: 1\r\n', 1, NULL, 'img5e3a711335e38', '', 11, 0, 12, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:42:25', '2020-02-05 07:42:25', b'0'),
(73, 'd2ddea18f00665ce8623e36bd4e3c7c535e995c107a71caeb833bb3b79f9f54781b33fa1', 1, 'VI-TU-CT-MT-D7', 'Vihu Women\'s Trendy New Design Checks Red color Tunic Special For Women\'s ', '', 2300, 545, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 1, NULL, 'img5e3a71e3972b2', '', 11, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 07:54:36', '2020-02-05 07:54:36', b'0'),
(74, 'ad61ab143223efbc24c7d2583be692511f1362ea41d1bc65be321c0a378a20159f9a26d0', 1, 'VI-TU-CT-MT-D8', 'Vihu Women\'s Trendy New Design Checks Yellow Color Tunic Special For Women\'s ', '', 2200, 545, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Yellow\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Yellow\r\nPack of: 1\r\n', 1, NULL, 'img5e3a74bea2d1b', '', 11, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:10:21', '2020-02-05 08:10:21', b'0');
INSERT INTO `tbl_products` (`ProductID`, `hexa_id`, `user_id`, `ProductSKU`, `ProductName`, `hsn`, `ProductPrice`, `Productsaleprice`, `Featured`, `top_sale`, `special`, `Recent`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `product_brand`, `ProductThumb`, `ProductImage`, `ProductUrl`, `ProductCategoryID`, `sub_category`, `ProductStock`, `keyword`, `tags`, `ProductLive`, `ProductUnlimited`, `ProductLocation`, `Productvariable`, `productvariableheading`, `created_at`, `updated_at`, `status`) VALUES
(75, 'd09bf41544a3365a46c9077ebb5e35c3450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1, 'VI-TU-CT-MT-D9', 'Vihu Women\'s Trendy New Design Checks Multi color Tunic Special For Women\'s ', '', 2200, 539, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi \r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi \r\nPack of: 1\r\n', 1, NULL, 'img5e3a786f81b67', '', 11, 0, 8, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:14:12', '2020-02-05 08:14:12', b'0'),
(76, 'fbd7939d674997cdb4692d34de8633c4d54ad009d179ae346683cfc3603979bc99339ef7', 1, 'VI-TU-CT-MT-D10', 'Vihu Women\'s Trendy New Design Checks Red color Tunic Special For Women\'s ', '', 2200, 530, 0, 0, 0, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1\r\n', 1, NULL, 'img5e3a795649423', '', 11, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:16:11', '2020-02-05 08:16:11', b'0'),
(77, '28dd2c7955ce926456240b2ff0100bded321d6f7ccf98b51540ec9d933f20898af3bd71e', 1, 'VI-TU-CT-MT-D11', 'Vihu Women\'s Trendy New Design Checks Yellow Color Tunic Special For Women\'s ', '', 2200, 545, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Yellow\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Yellow\r\nPack of: 1\r\n', 1, NULL, 'img5e3a79cd3b3df', '', 11, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:19:20', '2020-02-05 08:19:20', b'0'),
(78, '35f4a8d465e6e1edc05f3d8ab658c551eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f', 1, 'VI-TU-CT-MT-D12', 'Vihu Women\'s Trendy New Design Checks White color Tunic Special For Women\'s ', '', 2200, 599, 1, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: White\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: White\r\nPack of: 1\r\n', 1, NULL, 'img5e3a7a8a83d92', '', 11, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:21:22', '2020-02-05 08:21:22', b'0'),
(79, 'd1fe173d08e959397adf34b1d77e88d7b74f5ee9461495ba5ca4c72a7108a23904c27a05', 1, 'VI-TU-CT-MT-D13', 'Vihu Women\'s Trendy New Design Checks Multi color Tunic Special For Women\'s ', '', 2100, 530, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi color\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Multi color\r\nPack of: 1\r\n', 1, NULL, 'img5e3a7b0413074', '', 11, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:23:16', '2020-02-05 08:23:16', b'0'),
(80, 'f033ab37c30201f73f142449d037028db888b29826bb53dc531437e723738383d8339b56', 1, 'VI-TU-CT-PK-D13', 'Vihu Women\'s Trendy New Design Checks Red color Tunic Special For Women\'s ', '', 2500, 580, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Cotton\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Red\r\nPack of: 1', 1, NULL, 'img5e3a7b76af762', '', 11, 0, 9, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:25:24', '2020-02-05 08:25:24', b'0'),
(81, '43ec517d68b6edd3015b3edc9a11367b1d513c0bcbe33b2e7440e5e14d0b22ef95c9d673', 1, 'VI-TU-PLY-BU-D13', 'Vihu Women\'s Trendy New Design Checks Blue color Tunic Special For Women\'s ', '', 2500, 499, 0, 0, 1, 1, 200, NULL, 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Blue\r\nPack of: 1\r\n', 'Amazing And Nice collection of tunic for Women By \"VIHU\" . The fabric is very soft to touch and fits perfectly, It is perfect for day and night outing and for any occasion Such as Party , Collage Wear or any festival, Team it up with accessories for a complete look.\r\nNOTE”\r\n Further more it is recommended to be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\nSize (In Inches): S-36, M-38, L-40, XL-42, XXL-44\r\nFabric: Polyester\r\nSleeve Length: 3/4th Sleeves\r\nWork: Checks\r\nColor: Blue\r\nPack of: 1\r\n', 1, NULL, 'img5e3a7bf6bc520', '', 11, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 08:29:55', '2020-02-05 08:29:55', b'0'),
(82, '9778d5d219c5080b9a6a17bef029331c76546f9a641ede2beab506b96df1688d889e629a', 1, 'VI-LR-CT-PK-D1', 'Vihu Women\'s Cotton Hosiery Soft Fabric Lounge wear Regular Fit Pajama for Girls Teenagers Women', '', 1200, 390, 0, 0, 0, 1, 200, NULL, 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery fabric, This Lower is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: - Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery fabric, This Lower is a Comfortable and Trendy any Weather Wear That Can Transform Your Look.\r\nNote: - Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.\r\n', 1, NULL, 'img5e3a7d05bf14d', '', 7, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-05 09:20:29', '2020-02-05 09:20:29', b'0'),
(86, '93db85ed909c13838ff95ccfa94cebd93c26dffc8a2e8804dfe2c8a1195cfaa5ef6d0014', 1, 'VI-PL-CT-PK-D11', 'Vihu Women\'s Fashionable Palazzo For Women', '', 800, 399, 0, 0, 0, 1, 200, NULL, 'Casual Women Palazzo Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton fabric,This Palazzo is a Comfortable and Trendy any Weather Wear That Can Transform Your Look. Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.', 'Casual Women Palazzo Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton fabric,This Palazzo is a Comfortable and Trendy any Weather Wear That Can Transform Your Look. Be kept away from extreme heat, fire and corrosive liquids to avoid any form of damage.', 1, NULL, 'img5e5a065ed5d7b', '', 9, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 06:59:11', '2020-02-29 06:59:11', b'0'),
(87, 'c7e1249ffc03eb9ded908c236bd1996de62d7f1eb43d87c202d2f164ba61297e71be80f4', 1, 'VI-PL-RA-PK-D10', 'Vihu Women\'s Comfortable Palazzo For Women\'s', '', 990, 399, 0, 0, 0, 1, 200, NULL, 'Wash Care Normal hand wash or machine wash with cold water. Iron with medium heat as required. Fashion Tip Pair this Palazzo with a pair of stylish Kurti, ethnic wear for a complete casual look for a casual event, a party or an evening with friends.', 'Wash Care Normal hand wash or machine wash with cold water. Iron with medium heat as required. Fashion Tip Pair this Palazzo with a pair of stylish Kurti, ethnic wear for a complete casual look for a casual event, a party or an evening with friends.', 1, NULL, 'img5e5a4ff2d9f64', '', 9, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 11:54:42', '2020-02-29 11:54:42', b'0'),
(88, '2a38a4a9316c49e5a833517c45d31070b37f6ddcefad7e8657837d3177f9ef2462f98acf', 1, 'VI-PL-RA-WT-D9', 'Vihu Women\'s Comfortable Palazzo For Women\'s ', '', 990, 399, 0, 0, 0, 1, 200, NULL, 'Wash Care Normal hand wash or machine wash with cold water. Iron with medium heat as required. Fashion Tip Pair this Palazzo with a pair of stylish Kurti, ethnic wear for a complete casual look for a casual event, a party or an evening with friends.', 'Wash Care Normal hand wash or machine wash with cold water. Iron with medium heat as required. Fashion Tip Pair this Palazzo with a pair of stylish Kurti, ethnic wear for a complete casual look for a casual event, a party or an evening with friends.', 1, NULL, 'img5e5a510425b7b', '', 9, 0, 5, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 11:56:44', '2020-02-29 11:56:44', b'0'),
(89, '7647966b7343c29048673252e490f73616b06bd9b738835e2d134fe8d596e9ab0086a985', 1, 'VI-PT-CT-BK-D1', 'Vihu Women\'s Comfortable Trousers Pant For Women\'s', '', 999, 399, 0, 0, 0, 1, 200, NULL, 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.\r\nColor : Black\r\nFabric : Cotton', 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.\r\nColor : Black\r\nFabric : Cotton', 1, NULL, 'img5e5a517e6c730', '', 12, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:00:38', '2020-02-29 12:00:38', b'0'),
(90, '8613985ec49eb8f757ae6439e879bb2a2d0c8af807ef45ac17cafb2973d866ba8f38caa9', 1, 'VI-PT-CT-BU-D5', 'Vihu Women\'s Fashionable Trousers Pant For Women\'s', '', 799, 450, 0, 0, 0, 1, 200, NULL, 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Blue Fabric : Rayon', 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Blue Fabric : Rayon', 1, NULL, 'img5e5a55592fba6', '', 12, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:15:44', '2020-02-29 12:15:44', b'0'),
(91, '54229abfcfa5649e7003b83dd47552944cd66dfabbd964f8c6c4414b07cdb45dae692e19', 1, 'VI-PT-CT-PK-D3', 'Vihu Women\'s Fashionable trousers Pant For Women\'s', '', 990, 420, 0, 0, 0, 1, 200, NULL, 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Pink Fabric : Cotton', 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Pink Fabric : Cotton', 1, NULL, 'img5e5a55f1ce3e2', '', 12, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:19:40', '2020-02-29 12:19:40', b'0'),
(92, '92cc227532d17e56e07902b254dfad108ee51caaa2c2f4ee2e5b4b7ef5a89db7df1068d7', 1, 'VI-PT-CT-GR-D4', 'Vihu Women\'s Fashionable Trousers Pant For Women\'s ', '', 990, 420, 0, 0, 0, 1, 200, NULL, 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Green Fabric : Cotton', 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Green Fabric : Cotton', 1, NULL, 'img5e5a56de81777', '', 12, 0, 9, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:21:30', '2020-02-29 12:21:30', b'0'),
(93, '98dce83da57b0395e163467c9dae521b08a35293e09f508494096c1c1b3819edb9df50db', 1, 'VI-PT-CT-MN-D2', 'Vihu Women\'s Fashionable Trouser Pant For Women\'s Maroon Colored ', '', 990, 420, 0, 0, 0, 1, 200, NULL, 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Maroon Fabric : Cotton', 'Casual Women Trouser Pant Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Cotton Fabric, This Trouser Pant Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage. Color : Maroon Fabric : Cotton', 1, NULL, 'img5e5a574c1d9d2', '', 12, 0, 6, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:23:16', '2020-02-29 12:23:16', b'0'),
(94, 'f4b9ec30ad9f68f89b29639786cb62ef215bb47da8fac3342b858ac3db09b033c6c46e0b', 1, 'VI-LR-CT-BK-D6', 'Vihu Women\'s Cotton Hosiery Soft Fabric Lounge Wear Regular Fit Pajama For Girls Teenagers Women', '', 990, 399, 0, 0, 0, 1, 200, NULL, 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery Fabric, This Lower Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.', 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery Fabric, This Lower Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.', 1, NULL, 'img5e5a57ebf14df', '', 7, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:28:05', '2020-02-29 12:28:05', b'0'),
(95, '812b4ba287f5ee0bc9d43bbf5bbe87fb8e63fd3e77796b102589b1ba1e4441c7982e4132', 1, 'VI-LR-CT-GR-D7', 'Vihu Women\'s Cotton Hosiery Soft Fabric Lounge Wear Regular Fit Pajama For Girls Teenagers Women', '', 990, 399, 0, 0, 0, 1, 200, NULL, 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery Fabric, This Lower Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.', 'Casual Women Lower Special For Women & Young Youth. Look Stylish Every Time You Step Out Of Your Home By Wearing This Lower From Showoff. Made From Hosiery Fabric, This Lower Is A Comfortable And Trendy Any Weather Wear That Can Transform Your Look. Note: - Be Kept Away From Extreme Heat, Fire And Corrosive Liquids To Avoid Any Form Of Damage.', 1, NULL, 'img5e5a58d74552c', '', 7, 0, 7, NULL, NULL, 1, 1, NULL, 0, '', '2020-02-29 12:29:19', '2020-02-29 12:29:19', b'0'),
(99, 'ac627ab1ccbdb62ec96e702f07f6425b9a79be611e0267e1d943da0737c6c51be67865a0', 1, 'JK', 'FORBRO® Men Full Zipper Upper (Blue)', '61011010', 1999, 549, 0, 0, 0, 1, 0.45, NULL, 'Elevate Your Fitness Wardrobe: Explore and Buy Stylish & Comfortable Jackets for Men', 'Full Front Zip, Ultra-Lightweight, This Zipper Upper is so soft and fully stretchable that one can wear it while running, working out in the gym, or playing any sport, Breathable, Dust repellant keeps one comfortable during all seasons. Stylish Reflector Brand Logo, Sporty design, Durable Stitching and Finish.\r\n\r\nIf you’re thinking of a casual outing with your friends or an evening walk through the park with your partner, then you’re at the right place. This jacket is ideal for any casual occasion.\r\n\r\nStylish | Comfortable | Lycra | Machine Washable | Lightweight | Stretchable\r\n\r\nFabric: Polyester Lycra blend\r\nType: Jacket\r\nProduct Length: Regular\r\nPack: Pack of 1\r\nNumber of Pockets: 2\r\nReversible: No\r\nClosure: Zip\r\nSleeves Length: Full Sleeves\r\nSports: Running\r\nHood: Without Hood\r\nWash Care: Machine Wash Cold\r\nCountry of Origin: India\r\n', 2, NULL, 'img65d47f42471a7', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-20 10:41:57', '2024-02-27 08:39:35', b'0'),
(100, 'f899139df5e1059396431415e770c6dd310b86e0b62b828562fc91c7be5380a992b2786a', 1, 'JK-M', 'FORBRO® Men Full Zipper Upper (Maroon)', '61011010', 1999, 549, 1, 0, 0, 1, 0.45, NULL, 'Elevate Your Fitness Wardrobe: Explore And Buy Stylish & Comfortable Jackets For Men', 'Full Front Zip, Ultra-Lightweight, This Zipper Upper Is So Soft And Fully Stretchable That One Can Wear It While Running, Working Out In The Gym, Or Playing Any Sport, Breathable, Dust Repellant Keeps One Comfortable During All Seasons. Stylish Reflector Brand Logo, Sporty Design, Durable Stitching And Finish. If You’re Thinking Of A Casual Outing With Your Friends Or An Evening Walk Through The Park With Your Partner, Then You’re At The Right Place. This Jacket Is Ideal For Any Casual Occasion. \r\n\r\n\r\nFabric: Polyester Lycra Blend | Type: Jacket | Product Length: Regular | Fit: Regular | Pack: Pack Of 1 | Number Of Pockets: 2 | Reversible: No | Closure: Zip |  Sleeves Length: Full Sleeves | Sports: Running | Hood: Without Hood | Wash Care: Machine Wash Cold |  Country Of Origin: India', 2, NULL, 'img65d48664cc9dc', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-20 11:01:07', '2024-02-27 09:04:49', b'0'),
(101, '38b3eff8baf56627478ec76a704e9b52dbc0f004854457f59fb16ab863a3a1722cef553f', 1, 'JK-R', 'FORBRO® Men Full Zipper Upper (Red)', '61011010', 1999, 549, 1, 0, 0, 1, 0.45, NULL, 'Elevate Your Fitness Wardrobe: Explore And Buy Stylish & Comfortable Jackets For Men', 'Full Front Zip, Ultra-Lightweight, This Zipper Upper Is So Soft And Fully Stretchable That One Can Wear It While Running, Working Out In The Gym, Or Playing Any Sport, Breathable, Dust Repellant Keeps One Comfortable During All Seasons. Stylish Reflector Brand Logo, Sporty Design, Durable Stitching And Finish. If You’re Thinking Of A Casual Outing With Your Friends Or An Evening Walk Through The Park With Your Partner, Then You’re At The Right Place. This Jacket Is Ideal For Any Casual Occasion.\r\n\r\n\r\nFabric: Polyester Lycra Blend | Type: Jacket | Product Length: Regular | Fit: Regular | Pack: Pack Of 1 | Number Of Pockets: 2 | Reversible: No | Closure: Zip | Sleeves Length: Full Sleeves | Sports: Running | Hood: Without Hood | Wash Care: Machine Wash Cold | Country Of Origin: India', 2, NULL, 'img65d486ece7d6e', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-20 11:05:20', '2024-02-27 08:42:43', b'0'),
(102, 'ec8956637a99787bd197eacd77acce5ec8306ae139ac98f432932286151dc0ec55580eca', 1, 'TS-LYCRA B', 'FORBRO® Men Classic Tracksuit (Black)', '62011100', 3999, 999, 1, 1, 1, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits for Gym and Casual Wear\r\n\r\nFORBRO® Tracksuits are made for active comfort and effortless style, whether you’re working out or just chilling out.\r\n', 'FORBRO® Tracksuits are made for active comfort and effortless style, whether you’re working out or just chilling out. Now you don’t need to go far to find a full outfit for your daily exercise routine. Because here you have the FORBRO® collection of men\'s tracksuits. From top to bottom, you’ll find everything here & that too at a reasonable price.\r\n\r\nFit: Slim Fit | Pack: Pack of 1 | Number of Pocket: 2 | Color: Black | Lining: No | Neck Shape: High | Neck Pattern: Color block | Wash Care: Hand Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Knitted | Waist Closure: Elasticated | Jacket Closure: Zip  | Pattern Coverage: Full Front | Pattern or Print Type: Colorblock | Sport: Running. \r\n\r\nThe product may vary from the images due to various reasons like monitor setting or photographic lighting sources or handiwork & craftmanship.\r\n\r\n\r\n', 2, NULL, 'img65d48c0e340e1', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-20 11:52:42', '2024-02-27 08:44:56', b'0'),
(103, '6974ce5ac660610b44d9b9fed0ff9548934385f53d1bd0c1b8493e44d0dfd4c8e88a04bb', 1, 'TS -B', 'FORBRO® - Relaxed Fit Men\'s Tracksuit (Black)', '62011100', 3999, 999, 1, 1, 0, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits For Gym And Casual Wear. FORBRO® Tracksuits Are Made For Active Comfort And Effortless Style, Whether You’re Working Out Or Just Chilling Out.', 'This Tracksuit is a type of athletic wear that typically consists of a matching jacket and pants made from lightweight material Lycra NS. They are designed to be comfortable and provide freedom of movement for various physical activities, such as jogging, running, and working out.  Include features like designs and stripes on both sides of the top and bottom, logo, and pockets.  Also, have zippers on the top, allowing for easy on and off access.\r\n\r\nFit: Relaxed Fit | Pack: Pack of 1 | Number of Pocket: Multiple Pockets | Fabric: Polyester | Color: Black | Lining: No | Neck Shape: High | Neck Pattern: Color block | Wash Care: Machine Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Woven | Waist Closure: Elasticated | Jacket Closure: Zip | Pattern Coverage: Full Front | Pattern or Print Type: Vertical Striped | Sport: Running | Country of Origin: India\r\n\r\nThe product may vary from the images due to various reasons like monitor setting, or photographic lighting sources, or handiwork & craftmanship.\r\n', 2, NULL, 'img65d493752a6b9', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-20 12:05:46', '2024-02-27 08:43:46', b'0'),
(104, 'c9e1074f5b3f9fc8ea15d152add0729478a8efcbaaa1a9a30f9f327aa89d0b6acaaffb03', 1, 'WC B', 'FORBRO® Men Windcheater (Black)', '62011100', 3999, 999, 1, 1, 1, 1, 0.6, NULL, 'This FORBRO® windcheater is a lightweight garment made to withstand light rain and wind chill.', 'This FORBRO® A windcheater is a lightweight garment made to withstand light rain and wind chill. This fashionable, adjustable piece with a full zip keeps you cosy throughout the changing seasons. protects you from wind and rain. An essential item for any man\'s wardrobe.\r\n\r\nType: Windcheater Jacket | Fit: Regular Fit | Pack: Pack of 1 | Color: Black | Wash Care: Machine Wash | Pattern: Printed | Neck Shape: High Neck | Hood: Without Hood | Season: Winter | Hemline: Straight | Closure: Zip | Features: Good Looking Nice Fitting | Number of Pockets: 2 | Print Type: Brand Logo | Product Length: Regular | Sleeves Length: Full Sleeves | Reversible: No | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.', 2, NULL, 'img65d5d86cac148', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:18:02', '2024-02-27 08:46:07', b'0'),
(105, '65b9eea6e1cc6bb9f0cd2a47751a186fe114c448f4ab8554ad14eff3d66dfeb3965ce8fc', 1, 'WC O', 'FORBRO® Men Windcheater (Olive Green)', '62011100', 3999, 999, 0, 0, 0, 1, 0.6, NULL, 'This FORBRO® windcheater is a lightweight garment made to withstand light rain and wind chill.', 'This FORBRO® A windcheater is a lightweight garment made to withstand light rain and wind chill. This fashionable, adjustable piece with a full zip keeps you cosy throughout the changing seasons. protects you from wind and rain. An essential item for any man\'s wardrobe.\r\n\r\nType: Windcheater Jacket | Fit: Regular Fit | Pack: Pack of 1 | Color: Olive Green | Wash Care: Machine Wash | Pattern: Printed | Neck Shape: High Neck | Hood: Without Hood | Season: Winter | Hemline: Straight | Closure: Zip | Features: Good Looking Nice Fitting | Number of Pockets: 2 | Print Type: Brand Logo | Product Length: Regular | Sleeves Length: Full Sleeves | Reversible: No | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.', 2, NULL, 'img65d5dc3335263', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:20:44', '2024-02-27 08:40:00', b'0'),
(106, 'f0935e4cd5920aa6c7c996a5ee53a70f7224f997fc148baa0b7f81c1eda6fcc3fd003db0', 1, 'WC M', 'FORBRO® Men Windcheater (Maroon)', '62011100', 3999, 999, 0, 0, 0, 1, 0.6, NULL, 'This FORBRO® windcheater is a lightweight garment made to withstand light rain and wind chill.', 'This FORBRO® A windcheater is a lightweight garment made to withstand light rain and wind chill. This fashionable, adjustable piece with a full zip keeps you cosy throughout the changing seasons. protects you from wind and rain. An essential item for any man\'s wardrobe.\r\n\r\nType: Windcheater Jacket | Fit: Regular Fit | Pack: Pack of 1 | Color: Maroon | Wash Care: Machine Wash | Pattern: Printed | Neck Shape: High Neck | Hood: Without Hood | Season: Winter | Hemline: Straight | Closure: Zip | Features: Good Looking Nice Fitting | Number of Pockets: 2 | Print Type: Brand Logo | Product Length: Regular | Sleeves Length: Full Sleeves | Reversible: No | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d5dc9aec270', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:22:07', '2024-02-27 08:39:03', b'0'),
(107, 'a97da629b098b75c294dffdc3e463904524e05dc77239f3a15dab766aaa59a9e432efde7', 1, 'HD B', 'FORBRO® Men Sleeveless Attractive Hoodie (Black)', '61011010', 1999, 349, 1, 0, 1, 1, 0.37, NULL, 'This sleeveless hoodie from FORBRO® is cosy for running, the gym, and everyday wear.  ', 'This sleeveless hoodie is cosy for running, the gym, and everyday wear.  To offer warmth and weather protection, the hood can be drawn up over the head. Usually composed of Lycra polyester, this hoodie is renowned for its relaxed and comfy design. It comes in a range of colours and features two front pockets. People of all ages enjoy wearing hoodies, which are frequently worn with streetwear or athletic apparel.\r\n\r\nType: Sleeveless Sports Jacket | Sleeves Length: Sleeveless | Pattern Coverage: All Over | Season: Summer | Wash Care: Machine Wash | Number of Pockets: 2 | Pattern: Solid | Neck Shape: Hooded | Color: Black | Fabric: Polyester | Closure: Zip | Pack: Pack of 1 | Fit Type: Regular Fit | Shop By Occasion: Work, Party, Travel | Length: Regular | Features: Stretchable | Country of Origin: India.	\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d5df8fd0c0d', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:36:18', '2024-02-27 08:44:35', b'0'),
(108, 'a3c65c2974270fd093ee8a9bf8ae7d0b17503a6b2326f09fbc4e3a7c03874c7333002038', 1, 'HD O', 'FORBRO® Men Sleeveless Attractive Hoodie (Olive)', '61011010', 1999, 349, 0, 0, 0, 1, 0.37, NULL, 'This sleeveless hoodie from FORBRO® is cosy for running, the gym, and everyday wear.  ', 'This sleeveless hoodie is cosy for running, the gym, and everyday wear.  To offer warmth and weather protection, the hood can be drawn up over the head. Usually composed of Lycra polyester, this hoodie is renowned for its relaxed and comfy design. It comes in a range of colours and features two front pockets. People of all ages enjoy wearing hoodies, which are frequently worn with streetwear or athletic apparel.\r\n\r\nType: Sleeveless Sports Jacket | Sleeves Length: Sleeveless | Pattern Coverage: All Over | Season: Summer | Wash Care: Machine Wash | Number of Pockets: 2 | Pattern: Solid | Neck Shape: Hooded | Color: Olive | Fabric: Polyester | Closure: Zip | Pack: Pack of 1 | Fit Type: Regular Fit | Shop By Occasion: Work, Party, Travel | Length: Regular | Features: Stretchable | Country of Origin: India.	\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d5e03e3282b', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:38:15', '2024-02-27 08:42:01', b'0'),
(109, '2723d092b63885e0d7c260cc007e8b9da1422e6a168630cdd214ac5e31ca01ae1bee8d92', 1, 'HD G', 'FORBRO® Men Sleeveless Attractive Hoodie (Grey)', '61011010', 1999, 349, 0, 0, 0, 1, 0.37, NULL, 'This sleeveless hoodie from FORBRO® is cosy for running, the gym, and everyday wear.  ', 'This sleeveless hoodie is cosy for running, the gym, and everyday wear.  To offer warmth and weather protection, the hood can be drawn up over the head. Usually composed of Lycra polyester, this hoodie is renowned for its relaxed and comfy design. It comes in a range of colours and features two front pockets. People of all ages enjoy wearing hoodies, which are frequently worn with streetwear or athletic apparel.\r\n\r\nType: Sleeveless Sports Jacket | Sleeves Length: Sleeveless | Pattern Coverage: All Over | Season: Summer | Wash Care: Machine Wash | Number of Pockets: 2 | Pattern: Solid | Neck Shape: Hooded | Color: Grey | Fabric: Polyester | Closure: Zip | Pack: Pack of 1 | Fit Type: Regular Fit | Shop By Occasion: Work, Party, Travel | Length: Regular | Features: Stretchable | Country of Origin: India.	\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d5e0b588916', '', 13, 41, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-21 11:39:40', '2024-02-27 08:42:24', b'0'),
(110, '5f93f983524def3dca464469d2cf9f3e5e796e48332af4142b10ca0f86e65d9bfdb05884', 1, 'RFTS - OG', 'FORBRO® - Relaxed Fit Men\'s Tracksuit (Dark Grey)', '62011100', 3999, 999, 1, 0, 0, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits For Gym And Casual Wear. FORBRO® Tracksuits Are Made For Active Comfort And Effortless Style, Whether You’re Working Out Or Just Chilling Out.', 'This Tracksuit Is A Type Of Athletic Wear That Typically Consists Of A Matching Jacket And Pants Made From Lightweight Material Lycra NS. They Are Designed To Be Comfortable And Provide Freedom Of Movement For Various Physical Activities, Such As Jogging, Running, And Working Out. Include Features Like Designs And Stripes On Both Sides Of The Top And Bottom, Logo, And Pockets. Also, Have Zippers On The Top, Allowing For Easy On And Off Access. \r\n\r\nFit: Relaxed Fit | Pack: Pack Of 1 | Number Of Pocket: Multiple Pockets | Fabric: Polyester | Color: Dark Grey | Lining: No | Neck Shape: High | Neck Pattern: Color Block | Wash Care: Machine Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Woven | Waist Closure: Elasticated | Jacket Closure: Zip | Pattern Coverage: Full Front | Pattern Or Print Type: Vertical Striped | Sport: Running | Country Of Origin: India The Product May Vary From \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.', 2, NULL, 'img65d7433855660', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-22 12:55:04', '2024-02-27 08:41:35', b'0'),
(111, '698d51a19d8a121ce581499d7b7016686216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 1, 'RFTS - NB', 'FORBRO® - Relaxed Fit Men\'s Tracksuit (Navy Blue)', '62011100', 3999, 999, 0, 0, 0, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits For Gym And Casual Wear. FORBRO® Tracksuits Are Made For Active Comfort And Effortless Style, Whether You’re Working Out Or Just Chilling Out.', 'This Tracksuit Is A Type Of Athletic Wear That Typically Consists Of A Matching Jacket And Pants Made From Lightweight Material Lycra NS. They Are Designed To Be Comfortable And Provide Freedom Of Movement For Various Physical Activities, Such As Jogging, Running, And Working Out. Include Features Like Designs And Stripes On Both Sides Of The Top And Bottom, Logo, And Pockets. Also, Have Zippers On The Top, Allowing For Easy On And Off Access. Fit: Relaxed Fit | Pack: Pack Of 1 | Number Of Pocket: Multiple Pockets | Fabric: Polyester | Color: Navy Blue | Lining: No | Neck Shape: High | Neck Pattern: Color Block | Wash Care: Machine Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Woven | Waist Closure: Elasticated | Jacket Closure: Zip | Pattern Coverage: Full Front | Pattern Or Print Type: Vertical Striped | Sport: Running | Country Of Origin: India The Product May Vary From The Images Due To Various Reasons Like Monitor Setting, Or Photographic Lighting Sources, Or Handiwork & Craftmanship.', 2, NULL, 'img65d748b1ddee9', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-22 13:16:17', '2024-02-27 08:41:11', b'0'),
(112, '7f6ffaa6bb0b408017b62254211691b5601ca99d55f00a2e8e736676b606a4d31d374fdd', 1, 'RFTS - LG', 'FORBRO® - Relaxed Fit Men\'s Tracksuit (Light Grey)', '62011100', 3999, 999, 1, 0, 0, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits For Gym And Casual Wear. FORBRO® Tracksuits Are Made For Active Comfort And Effortless Style, Whether You’re Working Out Or Just Chilling Out.', 'This Tracksuit Is A Type Of Athletic Wear That Typically Consists Of A Matching Jacket And Pants Made From Lightweight Material Lycra NS. They Are Designed To Be Comfortable And Provide Freedom Of Movement For Various Physical Activities, Such As Jogging, Running, And Working Out. Include Features Like Designs And Stripes On Both Sides Of The Top And Bottom, Logo, And Pockets. Also, Have Zippers On The Top, Allowing For Easy On And Off Access. Fit: Relaxed Fit | Pack: Pack Of 1 | Number Of Pocket: Multiple Pockets | Fabric: Polyester | Color: Light Grey | Lining: No | Neck Shape: High | Neck Pattern: Color Block | Wash Care: Machine Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Woven | Waist Closure: Elasticated | Jacket Closure: Zip | Pattern Coverage: Full Front | Pattern Or Print Type: Vertical Striped | Sport: Running | Country Of Origin: India The Product May Vary From The Images Due To Various Reasons Like Monitor Setting, Or Photographic Lighting Sources, Or Handiwork & Craftmanship.', 2, NULL, 'img65d74923aa325', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-22 13:18:21', '2024-02-27 08:43:06', b'0'),
(113, '73278a4a86960eeb576a8fd4c9ec6997e993215bfdaa515f6ea00fafc1918f549119f993', 1, 'RFTS - OGR', 'FORBRO® - Relaxed Fit Men\'s Tracksuit (Olive Green)', '62011100', 3999, 999, 0, 0, 0, 1, 0.91, NULL, 'Elevate Your Style: Explore And Buy Stylish & Comfortable Men’s Tracksuits For Gym And Casual Wear. FORBRO® Tracksuits Are Made For Active Comfort And Effortless Style, Whether You’re Working Out Or Just Chilling Out.', 'This Tracksuit Is A Type Of Athletic Wear That Typically Consists Of A Matching Jacket And Pants Made From Lightweight Material Lycra NS. They Are Designed To Be Comfortable And Provide Freedom Of Movement For Various Physical Activities, Such As Jogging, Running, And Working Out. Include Features Like Designs And Stripes On Both Sides Of The Top And Bottom, Logo, And Pockets. Also, Have Zippers On The Top, Allowing For Easy On And Off Access. Fit: Relaxed Fit | Pack: Pack Of 1 | Number Of Pocket: Multiple Pockets | Fabric: Polyester | Color: Olive Green | Lining: No | Neck Shape: High | Neck Pattern: Color Block | Wash Care: Machine Wash | Season: Spring | Waist Rise: Mid-Rise | Sleeves Length: Full Sleeves | Weave Type: Woven | Waist Closure: Elasticated | Jacket Closure: Zip | Pattern Coverage: Full Front | Pattern Or Print Type: Vertical Striped | Sport: Running | Country Of Origin: India The Product May Vary From The Images Due To Various Reasons Like Monitor Setting, Or Photographic Lighting Sources, Or Handiwork & Craftmanship.', 2, NULL, 'img65d7499fd7b7b', '', 13, 40, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-22 13:20:41', '2024-02-27 08:40:39', b'0'),
(114, '5fd0b37cd7dbbb00f97ba6ce92bf5addecb7937db58ec9dea0c47db88463d85e81143032', 1, 'LW - TENNIS W', 'FORBRO® Men Stylish Lower | Track Pant (White-Blue)', '62011100', 1999, 599, 1, 1, 1, 1, 0.33, NULL, 'Excellent grade, very durable polyester is used to make these sports track pants, the specialist in Sportswear ', 'This Men\'s Track Pant from FORBRO®, the specialist in Sportswear. Excellent grade, very durable polyester is used to make these sports track pants. One pair of Sports Track Pants will be sent to you with your order. Additional characteristics include:  NS Lycra fabric; moisture-absorbing materials throughout to keep your skin dry; and a unique lightweight, full-length design. Guaranteed amazing quality and flawless fit at the most affordable price.\r\n\r\nColor: White | Fabric: Polyester Blend | Fit: Regular | Pattern: Colorblock  | Waist Closure: Drawstring | Lining: No	| Wash Care: Machine Wash | Shop By Occasion: Casual, Travel | Number of Pockets: Multiple Pockets | Key Feature: NEW DESIGN | Weave Type: Knitted | Waist Rise: Mid-Rise | Technology: Dry Fit | Type: Joggers | Season: Summer | Pack: Pack of 1 | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.', 2, NULL, 'img65d74ec05aaf5', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-22 14:02:33', '2024-02-27 08:44:09', b'0'),
(115, '2b44928ae11fb9384c4cf38708677c48efa6e44dfa0145249be273ecd84a97f534b04920', 1, 'SH B', 'FORBRO® Dry-Fit Sports Shorts (Black)', '61011010', 899, 399, 0, 0, 0, 1, 0.15, NULL, 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort.', 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort. The shorts are composed of exceptionally sturdy and high-quality polyester. Additional characteristics include NS Lycra fabric; an all-around moisture-absorbing substance; and a unique, full-length, lightweight design. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. Purchase now at a remarkably low cost.\r\n\r\nStylish and comfy shorts that may be worn for running, working out at the gym, or casual wear.\r\n\r\nColor: Black | Fabric: Polyester Lycra | Fit: Regular Fit | Pattern: Plain| Waist Closure: Drawstring | Pocket: Double Pocke | Lining: No | Sports: Fitness\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d84635d85c9', '', 13, 34, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 07:19:33', '2024-02-27 08:38:16', b'0'),
(116, 'c45147dee729311ef5b5c3003946c48f683e725c03a87baaad2623231644e944e537acab', 1, 'SH M', 'FORBRO® Dry-Fit Sports Shorts (Maroon)', '61011010', 899, 399, 0, 0, 0, 1, 0.15, NULL, 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort.', 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort. The shorts are composed of exceptionally sturdy and high-quality polyester. Additional characteristics include NS Lycra fabric; an all-around moisture-absorbing substance; and a unique, full-length, lightweight design. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. Purchase now at a remarkably low cost.\r\n\r\nStylish and comfy shorts that may be worn for running, working out at the gym, or casual wear.\r\n\r\nColor: Maroon | Fabric: Polyester Lycra | Fit: Regular Fit| Pattern: Plain| Waist Closure: Drawstring | Pocket: Double Pocke | Lining: No | Sports: Fitness\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d847f570b09', '', 13, 34, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 07:24:57', '2024-02-27 08:38:31', b'0'),
(117, 'eb160de1de89d9058fcb0b968dbbbd68d0e2dbb0bac1917d360aaf52c01a2a4b669e8cdb', 1, 'LW - TENNIS B', 'FORBRO® Men Stylish Men Lower | Track Pant (Black-Olive)', '62011100', 1999, 599, 0, 0, 0, 1, 0.33, NULL, 'Excellent Grade, Very Durable Polyester Is Used To Make These Sports Track Pants, The Specialist In Sportswear', 'This Men\'s Track Pant from FORBRO®, the specialist in Sportswear. Excellent grade, very durable polyester is used to make these sports track pants. One pair of Sports Track Pants will be sent to you with your order. Additional characteristics include:  NS Lycra fabric; moisture-absorbing materials throughout to keep your skin dry; and a unique lightweight, full-length design. Guaranteed amazing quality and flawless fit at the most affordable price.\r\n\r\nColor: Black-Olive | Fabric: Polyester Blend | Fit: Regular | Pattern: Colorblock  | Waist Closure: Drawstring | Lining: No	| Wash Care: Machine Wash | Shop By Occasion: Casual, Travel | Number of Pockets: Multiple Pockets | Key Feature: NEW DESIGN | Weave Type: Knitted | Waist Rise: Mid-Rise | Technology: Dry Fit | Type: Joggers | Season: Summer | Pack: Pack of 1 | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n	\r\n', 2, NULL, 'img65d8499cb81a7', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 07:35:18', '2024-02-27 08:37:58', b'0');
INSERT INTO `tbl_products` (`ProductID`, `hexa_id`, `user_id`, `ProductSKU`, `ProductName`, `hsn`, `ProductPrice`, `Productsaleprice`, `Featured`, `top_sale`, `special`, `Recent`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `product_brand`, `ProductThumb`, `ProductImage`, `ProductUrl`, `ProductCategoryID`, `sub_category`, `ProductStock`, `keyword`, `tags`, `ProductLive`, `ProductUnlimited`, `ProductLocation`, `Productvariable`, `productvariableheading`, `created_at`, `updated_at`, `status`) VALUES
(118, '5ef059938ba799aaa845e1c2e8a762bd12f0de3dc76e067d21ed85125716e02e9f1e69f0', 1, 'MNECK B', 'FORBRO® Men Stylish T-shirt (Black)', '61011010', 499, 349, 1, 1, 0, 1, 0.23, NULL, 'Elevate your everyday style with our FORBRO® T-shirt! Crafted from a comfortable cotton blend fabric, this shirt features half sleeves and a trendy mandarin collar.', 'Looking for a stylish yet comfortable shirt? Look no further than FORBRO®! Made with a soft cotton blend fabric, this shirt is designed with half sleeves and a chic mandarin collar. Whether you\'re dressing up for a dinner date or heading to a casual brunch, this shirt will keep you looking sharp and feeling great.\r\n\r\nColor: Black | Fabric: Cotton Blend | Fit: Regular Fit | Neck Shape - Mandarin Collar | Sleeves Length: Half Sleeves | Closure: Button | Wash Care: Machine Wash | Pattern: Plain | Lining: No | Season: Summer | Country of Origin: India\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d88d19620d0', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:21:22', '2024-02-27 08:16:14', b'0'),
(119, '07e1cd7dca89a1678042477183b7ac3fa2e33d344f272e100d4a8efeabc7ae8a60a8ba7a', 1, 'MNECK O', 'FORBRO® Men Stylish T-shirt (Olive Green)', '61011010', 499, 349, 0, 0, 0, 1, 0.23, NULL, 'Elevate your everyday style with our FORBRO® T-shirt! Crafted from a comfortable cotton blend fabric, this shirt features half sleeves and a trendy mandarin collar.', 'Looking for a stylish yet comfortable shirt? Look no further than FORBRO®! Made with a soft cotton blend fabric, this shirt is designed with half sleeves and a chic mandarin collar. Whether you\'re dressing up for a dinner date or heading to a casual brunch, this shirt will keep you looking sharp and feeling great.\r\n\r\nColor: Olive Green| Fabric: Cotton Blend | Fit: Regular Fit | Neck Shape - Mandarin Collar | Sleeves Length: Half Sleeves | Closure: Button | Wash Care: Machine Wash | Pattern: Plain | Lining: No | Season: Summer | Country of Origin: India\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d88e7095cc8', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:26:10', '2024-02-27 08:30:28', b'0'),
(120, 'da4fb5c6e93e74d3df8527599fa62642775bc5c30e27f0e562115d136e7f7edbd3cead89', 1, 'SH W', 'FORBRO® Dry-Fit Sports Shorts (White)', '61011010', 899, 399, 0, 0, 0, 1, 0.15, NULL, 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort.', 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort. The shorts are composed of exceptionally sturdy and high-quality polyester. Additional characteristics include: NS Lycra fabric; all-around moisture-absorbing substance; and a unique, full-length, lightweight design. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. Purchase now at a remarkably low cost.\r\n\r\nStylish and comfy shorts that may be worn for running, working out at the gym, or casual wear.\r\n\r\nColor: White | Fabric: Polyester Lycra | Fit: Regular Fit| Pattern: Plain| Waist Closure: Drawstring | Pocket: Double Pocke | Lining: No | Sports: Fitness\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d88f58a8467', '', 13, 34, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:31:04', '2024-02-27 08:30:09', b'0'),
(121, '4c56ff4ce4aaf9573aa5dff913df997a8bd7954c40c1e59a900f71ea3a266732609915b1', 1, 'SH O', 'FORBRO® Dry-Fit Sports Shorts (Olive Green)', '61011010', 899, 399, 1, 0, 0, 1, 0.15, NULL, 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort.', 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort. The shorts are composed of exceptionally sturdy and high-quality polyester. Additional characteristics include: NS Lycra fabric; all-around moisture-absorbing substance; and a unique, full-length, lightweight design. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. Purchase now at a remarkably low cost.\r\n\r\nStylish and comfy shorts that may be worn for running, working out at the gym, or casual wear.\r\n\r\nColor: Olive Green | Fabric: Polyester Lycra | Fit: Regular Fit| Pattern: Plain| Waist Closure: Drawstring | Pocket: Double Pocke | Lining: No | Sports: Fitness\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d8900aa1806', '', 13, 34, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:32:30', '2024-02-27 08:29:53', b'0'),
(122, 'a0a080f42e6f13b3a2df133f073095dd05a8ea5382b9fd885261bb3eed0527d1d3b07262', 1, 'MNECK MY', 'FORBRO® Men Stylish T-shirt (Mustard Yellow)', '61011010', 499, 349, 1, 1, 1, 1, 0.23, NULL, 'Elevate your everyday style with our FORBRO® T-shirt! Crafted from a comfortable cotton blend fabric, this shirt features half sleeves and a trendy mandarin collar.', 'Looking for a stylish yet comfortable shirt? Look no further than FORBRO®! Made with a soft cotton blend fabric, this shirt is designed with half sleeves and a chic mandarin collar. Whether you\'re dressing up for a dinner date or heading to a casual brunch, this shirt will keep you looking sharp and feeling great.\r\n\r\nColor: Mustard Yellow | Fabric: Cotton Blend | Fit: Regular Fit | Neck Shape - Mandarin Collar | Sleeves Length: Half Sleeves | Closure: Button | Wash Care: Machine Wash | Pattern: Plain | Lining: No | Season: Summer | Country of Origin: India\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d89152bb0d7', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:44:48', '2024-02-27 08:46:39', b'0'),
(123, '202cb962ac59075b964b07152d234b7040bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 'MNECK M', 'FORBRO® Men Stylish Tshirt (Maroon)', '61011010', 499, 349, 0, 0, 0, 1, 0.23, NULL, 'Elevate your everyday style with our FORBRO® T-shirt! Crafted from a comfortable cotton blend fabric, this shirt features half sleeves and a trendy mandarin collar.', 'Looking for a stylish yet comfortable shirt? Look no further than FORBRO®! Made with a soft cotton blend fabric, this shirt is designed with half sleeves and a chic mandarin collar. Whether you\'re dressing up for a dinner date or heading to a casual brunch, this shirt will keep you looking sharp and feeling great.\r\n\r\nColor: Maroon | Fabric: Cotton Blend | Fit: Regular Fit | Neck Shape - Mandarin Collar | Sleeves Length: Half Sleeves | Closure: Button | Wash Care: Machine Wash | Pattern: Plain | Lining: No | Season: Summer | Country of Origin: India\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65d89349a4248', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-23 12:46:25', '2024-02-27 08:15:41', b'0'),
(124, 'c8ffe9a587b126f152ed3d89a146b445f38cfe2e2facbcc742bad63f91ad55637300cb45', 1, 'TP B DP', 'FORBRO® Cotton Blend Men\'s Lower | Trackpants (Black)', '62011100', 1999, 449, 0, 0, 0, 1, 0.3, NULL, 'Say goodbye to sweat stains and hello to ultimate comfort with FORBRO®’s moisture-absorbing trackpants.', 'Completely moisture-absorbing material with a unique lightweight, full-length design trackpants/lower to keep your skin dry. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price.\r\nThe lightweight material allows you to move freely, while the flawless fit will have you looking and feeling your best. And best of all, they\'re affordable, so you can stock up without breaking the bank.\r\n\r\nColor: Black | Fit: Regular | Lining: No | Fabric: Cotton Blend | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Running | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddb891dc112', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 10:30:15', '2024-02-27 10:32:04', b'0'),
(125, '3def184ad8f4755ff269862ea77393dd0ca9277f91e40054767f69afeb0426711ca0fddd', 1, 'TP DP NB', 'FORBRO® Cotton Blend Men\'s Lower | Trackpants (Navy Blue)', '62011100', 1999, 449, 0, 1, 0, 1, 0.3, NULL, 'Say goodbye to sweat stains and hello to ultimate comfort with FORBRO®’s moisture-absorbing trackpants. ', 'Completely moisture-absorbing material with a unique lightweight, full-length design trackpants/lower to keep your skin dry. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. The lightweight material allows you to move freely, while the flawless fit will have you looking and feeling your best. And best of all, they\'re affordable, so you can stock up without breaking the bank.\r\n\r\nColor: Navy Blue | Fit: Regular | Lining: No | Fabric: Cotton Blend | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Running | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddbc1e8e7a3', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 10:42:57', '2024-02-27 10:42:57', b'0'),
(126, '069059b7ef840f0c74a814ec9237b6ec114d4eefde1dae3983e7a79f04c72feb9a3a7efd', 1, 'TP DP LG', 'FORBRO® Cotton Blend Men\'s Lower | Trackpants (Light Grey)', '62011100', 1999, 449, 0, 0, 0, 1, 0.3, NULL, 'Say goodbye to sweat stains and hello to ultimate comfort with FORBRO®’s moisture-absorbing trackpants. ', 'Completely moisture-absorbing material with a unique lightweight, full-length design trackpants/lower to keep your skin dry. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. The lightweight material allows you to move freely, while the flawless fit will have you looking and feeling your best. And best of all, they\'re affordable, so you can stock up without breaking the bank.\r\n\r\nColor: Light Grey | Fit: Regular | Lining: No | Fabric: Cotton Blend | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Running | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddc24cc119e', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 11:07:41', '2024-02-27 11:07:41', b'0'),
(127, 'ec5decca5ed3d6b8079e2e7e7bacc9f2008451a05e1e7aa32c75119df950d405265e0904', 1, 'TP DP GY', 'FORBRO® Cotton Blend Men\'s Lower | Trackpants (Grey)', '62011100', 1999, 449, 0, 0, 0, 1, 0.3, NULL, 'Say goodbye to sweat stains and hello to ultimate comfort with FORBRO®’s moisture-absorbing trackpants. ', 'Completely moisture-absorbing material with a unique lightweight, full-length design trackpants/lower to keep your skin dry. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. The lightweight material allows you to move freely, while the flawless fit will have you looking and feeling your best. And best of all, they\'re affordable, so you can stock up without breaking the bank.\r\n\r\nColor: Grey | Fit: Regular | Lining: No | Fabric: Cotton Blend | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Running | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddc27ef0149', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 11:08:42', '2024-02-27 11:08:42', b'0'),
(128, '76dc611d6ebaafc66cc0879c71b5db5cb4182bff4b3cf75f9e54f4990f9bd153c0c2973c', 1, 'TP DP MR', 'FORBRO® Cotton Blend Men\'s Lower | Trackpants (Maroon)', '62011100', 1999, 449, 0, 0, 0, 1, 0.3, NULL, 'Say goodbye to sweat stains and hello to ultimate comfort with FORBRO®’s moisture-absorbing trackpants. ', 'Completely moisture-absorbing material with a unique lightweight, full-length design trackpants/lower to keep your skin dry. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. The lightweight material allows you to move freely, while the flawless fit will have you looking and feeling your best. And best of all, they\'re affordable, so you can stock up without breaking the bank.\r\n\r\nColor: Maroon | Fit: Regular | Lining: No | Fabric: Cotton Blend | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Running | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddc2bc0b8a4', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 11:09:36', '2024-02-27 11:09:36', b'0'),
(129, 'd1f491a404d6854880943e5c3cd9ca258b7471f4ae0bf59f5f0a425068c05d96f4801b9e', 1, 'TS RN W', 'FORBRO® Men\'s Regular Fit Round Neck T-Shirt (White)', '62011100', 699, 249, 1, 0, 0, 1, 0.24, NULL, 'Meet your new go-to piece for any occasion - our round neck T-shirt is the ultimate blend of comfort and style. Whether you\'re pumping iron at the gym or grabbing coffee with friends, this versatile top has got you covered.', 'This FORBRO® T-shirt is stylish and appropriate for both day and night wear. Pair it with some trendy FORBRO® track pants or shorts. You can choose this T-shirt for any occasion. This T-shirt has the feel you need and the look you want. long-lasting comfort. Stitching that is really sturdy. traditional fashion. The FORBRO® T-Shirt is an extraordinary, must-have staple.\r\n\r\nColor: White | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Round Neck T-Shirt | Closure: Pullover | Sleeves Length: Half Sleeves | Sport: Cycling | Neck Shape: Round Neck | Pattern: Solid | Pattern or Print Type: Brand Logo | Pattern Coverage: Chest | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.	\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddd87fbca05', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 12:42:56', '2024-02-27 12:45:14', b'0'),
(130, '9b8619251a19057cff70779273e95aa62a7541babb57434e5631ffa2b5639e24f8ce84fc', 1, 'TP FB N', 'FORBRO® Men\'s Sports Trackpants | Lower (Navy Blue)', '62011100', 1999, 499, 0, 1, 0, 1, 0.3, NULL, 'Consider updating your collection with these chic and comfy FORBRO® sportswear trousers. You appear fashionable and exude confidence when you wear this lower with its lovely design.', 'Take on your day with confidence in our fashionable FORBRO® trackpants. Whether you\'re hitting the gym or just lounging around, these trackpants will effortlessly elevate your sportswear look. With a modern design and comfortable fit, you\'ll feel ready to conquer anything that comes your way.\r\n\r\nColor: Navy Blue | Fit: Regular | Lining: No | Fabric: Lycra NS | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Cycling | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddd96204ae0', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 12:47:42', '2024-02-27 12:47:42', b'0'),
(131, '1afa34a7f984eeabdbb0a7d494132ee5e794a80eb109162d579df51db6d52e223bb0e9be', 1, 'TS RN Y', 'FORBRO® Men\'s Regular Fit Round Neck T-Shirt (Yellow)', '62011100', 699, 249, 0, 1, 0, 1, 0.24, NULL, 'Meet your new go-to piece for any occasion - our round neck T-shirt is the ultimate blend of comfort and style. Whether you\'re pumping iron at the gym or grabbing coffee with friends, this versatile top has got you covered.', 'This FORBRO® T-shirt is stylish and appropriate for both day and night wear. Pair it with some trendy FORBRO® track pants or shorts. You can choose this T-shirt for any occasion. This T-shirt has the feel you need and the look you want. long-lasting comfort. Stitching that is really sturdy. traditional fashion. The FORBRO® T-Shirt is an extraordinary, must-have staple.\r\n\r\nColor: Yellow | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Round Neck T-Shirt | Closure: Pullover | Sleeves Length: Half Sleeves | Sport: Cycling | Neck Shape: Round Neck | Pattern: Solid | Pattern or Print Type: Brand Logo | Pattern Coverage: Chest | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.	\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65ddda607129c', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 12:51:43', '2024-02-27 12:51:43', b'0'),
(132, '65ded5353c5ee48d0b7d48c591b8f43091dfde1d6e005e422f64a59776234f1f4c80b5e4', 1, 'TP GP LGR', 'FORBRO® Men\'s Trendy Sports Trackpants | Lower (Light Green)', '62011100', 1999, 549, 0, 0, 0, 1, 0.3, NULL, 'This FORBRO® trackpants has a stylish appearance and is ideal for wear during the day or at night. Put it on with some chic T-shirts or workout vests. ', 'These trackpants are the perfect addition to your sportswear collection! Made for workouts, they are lightweight and comfortable, with a handy gum pocket for convenience. This Trackpants will be your choice for any occasion. This Trackpants has the feel you need and the look you want. And the best part? They\'re totally affordable!\r\n\r\nColor: Light Green | Fit: Regular | Lining: No | Fabric: Lycra NS | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Cycling | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India. \r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.', 2, NULL, 'img65dddae15c9ea', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 12:53:10', '2024-02-27 12:53:10', b'0'),
(133, '9fc3d7152ba9336a670e36d0ed79bc43d30f79cf7fef47bd7a5611719f936539bec0d2e9', 1, 'TS RN B', 'FORBRO® Men\'s Regular Fit Round Neck T-Shirt (Blue)', '62011100', 699, 249, 0, 0, 0, 1, 0.24, NULL, 'Meet your new go-to piece for any occasion - our round neck T-shirt is the ultimate blend of comfort and style. Whether you\'re pumping iron at the gym or grabbing coffee with friends, this versatile top has got you covered.', 'This FORBRO® T-shirt is stylish and appropriate for both day and night wear. Pair it with some trendy FORBRO® track pants or shorts. You can choose this T-shirt for any occasion. This T-shirt has the feel you need and the look you want. long-lasting comfort. Stitching that is really sturdy. traditional fashion. The FORBRO® T-Shirt is an extraordinary, must-have staple.\r\n\r\nColor: Blue | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Round Neck T-Shirt | Closure: Pullover | Sleeves Length: Half Sleeves | Sport: Cycling | Neck Shape: Round Neck | Pattern: Solid | Pattern or Print Type: Brand Logo | Pattern Coverage: Chest | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.	\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65dddb384c5fa', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 12:58:52', '2024-02-27 12:58:52', b'0'),
(134, '02522a2b2726fb0a03bb19f2d8d9524d95e815d1541bf6f358cfffbe66ab3af0d0c09d09', 1, 'TS RN BL', 'FORBRO® Men\'s Regular Fit Round Neck T-Shirt (Black)', '62011100', 699, 249, 0, 0, 1, 1, 0.24, NULL, 'Meet your new go-to piece for any occasion - our round neck T-shirt is the ultimate blend of comfort and style. Whether you\'re pumping iron at the gym or grabbing coffee with friends, this versatile top has got you covered.', 'This FORBRO® T-shirt is stylish and appropriate for both day and night wear. Pair it with some trendy FORBRO® track pants or shorts. You can choose this T-shirt for any occasion. This T-shirt has the feel you need and the look you want. long-lasting comfort. Stitching that is really sturdy. traditional fashion. The FORBRO® T-Shirt is an extraordinary, must-have staple.\r\n\r\nColor: Black | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Round Neck T-Shirt | Closure: Pullover | Sleeves Length: Half Sleeves | Sport: Cycling | Neck Shape: Round Neck | Pattern: Solid | Pattern or Print Type: Brand Logo | Pattern Coverage: Chest | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.	\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65dddc8ea7172', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 13:03:13', '2024-02-27 13:03:13', b'0'),
(135, '7f1de29e6da19d22b51c68001e7e0e5440f7c01f4189510031adccd9c604a128adaf9b00', 1, 'TP FB BL', 'FORBRO® Men\'s Sports Trackpants | Lower (Black)', '62011100', 1999, 499, 1, 1, 1, 1, 0.3, NULL, 'Consider updating your collection with these chic and comfy sportswear FORBRO® trousers. You appear fashionable and exude confidence when you wear this lower with its lovely design.', 'Take on your day with confidence in our fashionable trackpants. Whether you\'re hitting the gym or just lounging around, these trackpants will effortlessly elevate your sportswear look. With a modern design and comfortable fit, you\'ll feel ready to conquer anything that comes your way.\r\n\r\nColor: Black | Fit: Regular | Lining: No | Fabric: Lycra NS | Pack: Pack of 1 | Number of Pocket: 2 | Sport: Cycling | Technology: Stretch | Type: Trackpants | Waist Closure: Drawstring | Season: Summer | Pattern or Print Type: Brand Logo | Pattern: Solid | Weave Type: Woven | Wash Care: Hand Wash | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65dddd93481d2', '', 13, 39, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-02-27 13:04:44', '2024-02-27 13:10:04', b'0'),
(136, '42a0e188f5033bc65bf8d78622277c4e9e071a3a594a8964cbefe784f8a6afaa94c0de17', 1, 'SH NB', 'FORBRO® Dry-Fit Sports Shorts (Navy Blue)', '61011010', 899, 399, 0, 0, 0, 1, 0.15, NULL, 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort.', 'This pair of FORBRO® shorts combines style, coolness, and extreme comfort. The shorts are composed of exceptionally sturdy and high-quality polyester. Additional characteristics include: NS Lycra fabric; all-around moisture-absorbing substance; and a unique, full-length, lightweight design. Guaranteed to fit flawlessly and be of exceptional quality at the most affordable price. Purchase now at a remarkably low cost.\r\n\r\nStylish and comfy shorts that may be worn for running, working out at the gym, or casual wear.\r\n\r\nColor: Navy Blue | Fabric: Polyester Lycra | Fit: Regular Fit| Pattern: Plain| Waist Closure: Drawstring | Pocket: Double Pocke | Lining: No | Sports: Fitness\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5ab98cb590', '', 13, 34, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:11:14', '2024-03-04 11:11:14', b'0'),
(137, '3988c7f88ebcb58c6ce932b957b6f332e1a864f0b77f6c89794827a9035355dc8d052622', 1, 'TS PL BLK', 'FORBRO® Men\'s Regular Fit Polo T-Shirt (Black)', '62011100', 899, 599, 0, 0, 1, 1, 0.24, NULL, 'Introducing our classic FORBRO® Polo Tshirt - a must-have for your wardrobe! ', 'Made from a comfortable cotton blend, this shirt features a stylish polo collar and a regular fit that is perfect for any occasion. Whether you\'re dressing it up or down, this polo tee is the perfect wear for any day. This versatile piece is a must-have for those who appreciate quality and style.\r\n\r\nColor: Black | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5acbd9a297', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:14:38', '2024-03-04 11:14:38', b'0'),
(138, '013d407166ec4fa56eb1e1f8cbe183b956ad4d4deaec98465c419b4a8ea7bfc1ed38c4d9', 1, 'TS PC GRN', 'FORBRO® Men\'s Regular Fit Popcorn T-Shirt (Green)', '62011100', 899, 599, 0, 1, 0, 1, 0.24, NULL, 'Introducing our must-have FORBRO® Popcorn Tshirt, perfect for any occasion.', 'This fun and stylish polo collar tee features a unique popcorn design, a versatile piece that is a must-have for any fashion enthusiast. The playful popcorn design adds a touch of whimsy to this classic polo collar tee. Made from a soft cotton blend, the regular fit ensures a comfortable and stylish look every time you wear it.\r\n\r\nColor: Green | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5ad202acb6', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:16:00', '2024-03-04 11:16:00', b'0'),
(139, 'e00da03b685a0dd18fb6a08af0923de0fa755791d0509bb06ae715a2072de724815ed84d', 1, 'TS PL GRY', 'FORBRO® Men\'s Regular Fit Polo T-Shirt (Grey)', '62011100', 899, 599, 1, 0, 0, 1, 0.24, NULL, 'Introducing our classic FORBRO® Polo Tshirt - a must-have for your wardrobe! ', 'Made from a comfortable cotton blend, this shirt features a stylish polo collar and a regular fit that is perfect for any occasion. Whether you\'re dressing it up or down, this polo tee is the perfect wear for any day. This versatile piece is a must-have for those who appreciate quality and style.\r\n\r\nColor: Grey | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5ad7237474', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:17:10', '2024-03-04 11:17:10', b'0'),
(140, '1385974ed5904a438616ff7bdb3f7439c28aca23f1ef3718a464383d925c66842078edaa', 1, 'TS PC MSY', 'FORBRO® Men\'s Regular Fit Popcorn T-Shirt (Mustard Yellow)', '62011100', 899, 599, 0, 0, 0, 1, 0.24, NULL, 'Introducing our must-have FORBRO® Popcorn Tshirt, perfect for any occasion.', 'This fun and stylish polo collar tee features a unique popcorn design, a versatile piece that is a must-have for any fashion enthusiast. The playful popcorn design adds a touch of whimsy to this classic polo collar tee. Made from a soft cotton blend, the regular fit ensures a comfortable and stylish look every time you wear it.\r\n\r\nColor: Mustard Yellow | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5adb7cdef8', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:18:19', '2024-03-04 11:18:19', b'0'),
(141, '0f28b5d49b3020afeecd95b4009adf4cc9ca442765657fc90e9e779c34d0d2259d2c3c5b', 1, 'TS PL MRN', 'FORBRO® Men\'s Regular Fit Polo T-Shirt (Maroon)', '62011100', 899, 599, 0, 0, 0, 1, 0.24, NULL, 'Introducing our classic FORBRO® Polo Tshirt - a must-have for your wardrobe! ', 'Made from a comfortable cotton blend, this shirt features a stylish polo collar and a regular fit that is perfect for any occasion. Whether you\'re dressing it up or down, this polo tee is the perfect wear for any day. This versatile piece is a must-have for those who appreciate quality and style.\r\n\r\nColor: Maroon | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5adfced282', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:19:21', '2024-03-04 11:19:21', b'0'),
(142, 'a8baa56554f96369ab93e4f3bb068c222a2b47bf21a372f267deccbb420567f3d450b3c0', 1, 'TS PC PNK', 'FORBRO® Men\'s Regular Fit Popcorn T-Shirt (Pink)', '62011100', 899, 599, 1, 0, 0, 1, 0.24, NULL, 'Introducing our must-have FORBRO® Popcorn Tshirt, perfect for any occasion.', 'This fun and stylish polo collar tee features a unique popcorn design, a versatile piece that is a must-have for any fashion enthusiast. The playful popcorn design adds a touch of whimsy to this classic polo collar tee. Made from a soft cotton blend, the regular fit ensures a comfortable and stylish look every time you wear it.\r\n\r\nColor: Pink | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5ae3b7874f', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:20:32', '2024-03-04 11:20:32', b'0'),
(143, '903ce9225fca3e988c2af215d4e544d3f47aea8bdcbd1179a1f3d91e6afeeb259488f2d1', 1, 'TS PL SKY', 'FORBRO® Men\'s Regular Fit Polo T-Shirt (Sky Blue)', '62011100', 899, 599, 0, 0, 0, 1, 0.24, NULL, 'Introducing our classic FORBRO® Polo Tshirt - a must-have for your wardrobe! ', 'Made from a comfortable cotton blend, this shirt features a stylish polo collar and a regular fit that is perfect for any occasion. Whether you\'re dressing it up or down, this polo tee is the perfect wear for any day. This versatile piece is a must-have for those who appreciate quality and style.\r\n\r\nColor: Sky Blue | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5ae824c764', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:21:39', '2024-03-04 11:21:39', b'0'),
(144, '0a09c8844ba8f0936c20bd791130d6b67320828c9153b2a9848d6bc45d3544236b22fc48', 1, 'TS PC RED', 'FORBRO® Men\'s Regular Fit Popcorn T-Shirt (Red)', '62011100', 899, 599, 0, 0, 0, 1, 0.24, NULL, 'Introducing our must-have FORBRO® Popcorn Tshirt, perfect for any occasion.', 'This fun and stylish polo collar tee features a unique popcorn design, a versatile piece that is a must-have for any fashion enthusiast. The playful popcorn design adds a touch of whimsy to this classic polo collar tee. Made from a soft cotton blend, the regular fit ensures a comfortable and stylish look every time you wear it.\r\n\r\nColor: Red | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Button | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5aec5c245d', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:22:55', '2024-03-04 11:22:55', b'0'),
(145, '2b24d495052a8ce66358eb576b8912c850336bc687eb161ee9fb0ddb8cf2b7e65bad865f', 1, 'TS RN MRN', 'FORBRO® Men\'s Regular Fit Round Neck T-Shirt (Maroon)', '62011100', 699, 399, 1, 0, 0, 1, 0.24, NULL, 'Introducing FORBRO® Regular Fit Round Neck T-Shirt for men and boys who prefer to go out in style.', 'Made from a high-quality cotton blend, these shirts are pre-shrunk, and bio washed for the perfect fit and feel. With a regular fit design, these Tshirts are ideal for everyday wear and will quickly become a staple in your wardrobe. \r\n\r\nColor: Maroon | Pack: Pack of 1 | Season: Summer | Fabric: Cotton Blend | Type: Polo T-Shirt | Closure: Pullover | Sleeves Length: Half Sleeves | Neck Shape: Polo Neck | Pattern: Solid | Wash Care: Machine Wash | Fit Type: Regular Fit | Product Length: Regular | Number of Pocket: No Pocket | Country of Origin: India.\r\n\r\nDue to a variety of factors, including monitor settings, photography lighting sources, and artistry and craftsmanship, the product may differ from the photographs.\r\n', 2, NULL, 'img65e5af10a2062', '', 13, 33, 10, NULL, NULL, 1, 1, NULL, 0, '', '2024-03-04 11:23:50', '2024-03-04 11:23:50', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productvariation`
--

CREATE TABLE `tbl_productvariation` (
  `varid` int(11) NOT NULL,
  `type` varchar(500) NOT NULL,
  `ProductID` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `data` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_productvariation`
--

INSERT INTO `tbl_productvariation` (`varid`, `type`, `ProductID`, `price`, `data`) VALUES
(5, 'size', '16', 490, 'S'),
(6, 'size', '16', 490, 'M'),
(7, 'size', '16', 490, 'L'),
(8, 'size', '14', 490, 'S'),
(9, 'size', '14', 490, 'M'),
(10, 'size', '14', 490, 'XS'),
(11, 'size', '17', 490, 'S'),
(12, 'size', '17', 490, 'M'),
(13, 'size', '17', 490, 'L'),
(19, 'size', '24', 420, 'S'),
(20, 'size', '24', 420, 'M'),
(21, 'size', '24', 420, 'XS'),
(22, 'size', '23', 399, 'XS'),
(23, 'size', '23', 399, 'S'),
(24, 'size', '23', 399, 'M'),
(25, 'size', '22', 899, 'M'),
(26, 'size', '22', 899, 'L'),
(27, 'size', '22', 899, 'XL'),
(28, 'size', '21', 399, 'XS'),
(29, 'size', '21', 399, 'S'),
(30, 'size', '21', 399, 'M'),
(31, 'size', '20', 699, 'M'),
(32, 'size', '20', 699, 'L'),
(33, 'size', '20', 699, 'XL'),
(34, 'size', '19', 399, 'XS'),
(35, 'size', '19', 399, 'S'),
(36, 'size', '19', 399, 'M'),
(37, 'size', '18', 699, 'M'),
(38, 'size', '18', 699, 'L'),
(39, 'size', '18', 699, 'XL'),
(40, 'size', '11', 399, 'XS'),
(41, 'size', '11', 399, 'S'),
(42, 'size', '11', 399, 'M'),
(43, 'size', '10', 420, 'XS'),
(44, 'size', '10', 420, 'S'),
(45, 'size', '10', 420, 'M'),
(46, 'size', '8', 999, 'M'),
(47, 'size', '8', 890, 'L'),
(48, 'size', '8', 890, 'XL'),
(49, 'size', '7', 899, 'M'),
(50, 'size', '7', 899, 'L'),
(51, 'size', '7', 899, 'XL'),
(52, 'size', '6', 1200, 'M'),
(53, 'size', '6', 1200, 'L'),
(54, 'size', '6', 1200, 'XL'),
(55, 'size', '5', 999, 'M'),
(56, 'size', '5', 999, 'L'),
(57, 'size', '5', 999, 'XL'),
(58, 'size', '4', 999, 'M'),
(59, 'size', '4', 999, 'L'),
(60, 'size', '4', 999, 'XL'),
(61, 'size', '3', 999, 'M'),
(62, 'size', '3', 999, 'L'),
(63, 'size', '3', 999, 'XL'),
(64, 'size', '2', 999, 'M'),
(65, 'size', '2', 999, 'L'),
(66, 'size', '2', 999, 'XL'),
(67, 'size', '1', 999, 'M'),
(68, 'size', '1', 999, 'L'),
(69, 'size', '1', 999, 'XL'),
(70, 'size', '25', 490, 'Small'),
(71, 'size', '25', 490, 'Medium'),
(72, 'size', '25', 490, 'Large'),
(73, 'size', '26', 490, 'Small'),
(74, 'size', '26', 490, 'Medium'),
(75, 'size', '26', 490, 'Large'),
(76, 'size', '27', 500, 'Small'),
(77, 'size', '27', 500, 'Medium'),
(78, 'size', '27', 500, 'Large'),
(79, 'size', '28', 510, 'Small'),
(80, 'size', '28', 510, 'medium'),
(81, 'size', '28', 510, 'Large'),
(82, 'size', '29', 499, 'Small'),
(83, 'size', '29', 499, 'Medium'),
(84, 'size', '29', 499, 'Large'),
(85, 'size', '30', 510, 'Small'),
(86, 'size', '30', 510, 'Medium'),
(87, 'size', '30', 499, 'Large'),
(88, 'size', '31', 499, 'Small'),
(89, 'size', '31', 499, 'Medium'),
(90, 'size', '31', 499, 'Large'),
(91, 'size', '32', 1200, 'S'),
(92, 'size', '32', 1200, 'L'),
(93, 'size', '32', 1200, 'XL'),
(94, 'size', '33', 2200, 'M'),
(95, 'size', '33', 2200, 'L'),
(96, 'size', '33', 2200, 'XL'),
(97, 'size', '34', 2200, 'S'),
(98, 'size', '34', 2200, 'M'),
(99, 'size', '34', 2200, 'L'),
(100, 'size', '34', 2200, 'XL'),
(101, 'size', '35', 2200, 'M'),
(102, 'size', '35', 2200, 'L'),
(103, 'size', '35', 2200, 'XL'),
(104, 'size', '36', 2200, 'M'),
(105, 'size', '36', 2200, 'L'),
(106, 'size', '36', 2200, 'XL'),
(107, 'size', '37', 2200, 'M'),
(108, 'size', '37', 2200, 'L'),
(109, 'size', '37', 2200, 'XL'),
(110, 'size', '38', 2200, 'M'),
(111, 'size', '38', 2200, 'L'),
(112, 'size', '38', 2200, 'XL'),
(113, 'size', '39', 2200, 'M'),
(114, 'size', '39', 2200, 'L'),
(115, 'size', '39', 2200, 'XL'),
(116, 'size', '40', 2200, 'M'),
(117, 'size', '40', 2200, 'L'),
(118, 'size', '40', 2200, 'XL'),
(119, 'size', '41', 2230, 'M'),
(120, 'size', '41', 2230, 'L'),
(121, 'size', '41', 2230, 'XL'),
(122, 'size', '41', 2230, 'XXL'),
(123, 'size', '42', 760, 'M'),
(124, 'size', '42', 760, 'L'),
(125, 'size', '42', 760, 'XL'),
(126, 'size', '43', 2300, 'M'),
(127, 'size', '43', 2300, 'L'),
(128, 'size', '43', 2300, 'XL'),
(129, 'size', '44', 2200, 'M'),
(130, 'size', '44', 2200, 'L'),
(131, 'size', '44', 2200, 'XL'),
(132, 'size', '45', 1500, 'M'),
(133, 'size', '45', 1500, 'L'),
(134, 'size', '45', 1500, 'XL'),
(135, 'size', '46', 2200, 'M'),
(136, 'size', '46', 2200, 'L'),
(137, 'size', '46', 2200, 'XL'),
(138, 'size', '47', 2200, 'M'),
(139, 'size', '47', 2200, 'L'),
(140, 'size', '47', 2200, 'XL'),
(141, 'size', '48', 2200, 'M'),
(142, 'size', '48', 2200, 'L'),
(143, 'size', '48', 2200, 'XL'),
(144, 'size', '49', 2200, 'M'),
(145, 'size', '49', 2200, 'L'),
(146, 'size', '49', 2200, 'XL'),
(147, 'size', '49', 2200, 'XXL'),
(148, 'size', '50', 2200, 'M'),
(149, 'size', '50', 2200, 'L'),
(150, 'size', '50', 2200, 'XL'),
(151, 'size', '51', 2200, 'M'),
(152, 'size', '51', 2200, 'L'),
(153, 'size', '51', 2200, 'XL'),
(154, 'size', '52', 1500, 'M'),
(155, 'size', '52', 1500, 'L'),
(156, 'size', '52', 1500, 'XL'),
(157, 'size', '53', 2200, 'M'),
(158, 'size', '53', 2200, 'L'),
(159, 'size', '53', 2200, 'XL'),
(160, 'size', '54', 1200, 'XS'),
(161, 'size', '54', 1200, 'S'),
(162, 'size', '54', 1200, 'M'),
(163, 'size', '54', 1200, 'L'),
(164, 'size', '54', 1200, 'XL'),
(165, 'size', '55', 1200, 'XS'),
(166, 'size', '55', 1200, 'S'),
(167, 'size', '55', 1200, 'M'),
(168, 'size', '55', 1200, 'L'),
(169, 'size', '55', 1200, 'XL'),
(170, 'size', '56', 1200, 'XS'),
(171, 'size', '56', 1200, 'S'),
(172, 'size', '56', 1200, 'M'),
(173, 'size', '56', 1200, 'L'),
(174, 'size', '56', 1200, 'XL'),
(175, 'size', '57', 1200, 'XS'),
(176, 'size', '57', 1200, 'S'),
(177, 'size', '57', 1200, 'M'),
(178, 'size', '57', 1200, 'L'),
(179, 'size', '57', 1200, 'XL'),
(180, 'size', '58', 1500, 'XS'),
(181, 'size', '58', 1500, 'S'),
(182, 'size', '58', 1500, 'M'),
(183, 'size', '58', 1500, 'L'),
(184, 'size', '58', 1500, 'XL'),
(185, 'size', '59', 1500, 'XS'),
(186, 'size', '59', 1500, 'S'),
(187, 'size', '59', 1500, 'M'),
(188, 'size', '59', 1500, 'L'),
(189, 'size', '59', 1500, 'XL'),
(190, 'size', '60', 1500, 'XS'),
(191, 'size', '60', 1500, 'S'),
(192, 'size', '60', 1500, 'M'),
(193, 'size', '60', 1500, 'L'),
(194, 'size', '60', 1500, 'XL'),
(195, 'size', '61', 1500, 'XS'),
(196, 'size', '61', 1500, 'S'),
(197, 'size', '61', 1500, 'M'),
(198, 'size', '61', 1500, 'L'),
(199, 'size', '61', 1500, 'XL'),
(200, 'size', '62', 1200, 'XS'),
(201, 'size', '62', 1200, 'S'),
(202, 'size', '62', 1200, 'M'),
(203, 'size', '62', 1200, 'L'),
(204, 'size', '62', 1200, 'XL'),
(205, 'size', '63', 1200, 'XS'),
(206, 'size', '63', 1200, 'S'),
(207, 'size', '63', 1200, 'M'),
(208, 'size', '63', 1200, 'L'),
(209, 'size', '63', 1200, 'XL'),
(210, 'size', '64', 1500, 'S'),
(211, 'size', '64', 1500, 'M'),
(212, 'size', '64', 1500, 'L'),
(213, 'size', '64', 1500, 'XL'),
(214, 'size', '65', 1400, 'XS'),
(215, 'size', '65', 1400, 'S'),
(216, 'size', '65', 1400, 'M'),
(217, 'size', '65', 1400, 'L'),
(218, 'size', '65', 1400, 'XL'),
(219, 'size', '66', 1400, 'XS'),
(220, 'size', '66', 1400, 'S'),
(221, 'size', '66', 1400, 'M'),
(222, 'size', '66', 1400, 'L'),
(223, 'size', '66', 1400, 'XL'),
(224, 'size', '67', 1200, 'S'),
(225, 'size', '67', 1200, 'M'),
(226, 'size', '67', 1200, 'L'),
(227, 'size', '67', 1200, 'XL'),
(228, 'size', '68', 2200, 'S'),
(229, 'size', '68', 2200, 'M'),
(230, 'size', '68', 2200, 'L'),
(231, 'size', '68', 2200, 'XL'),
(232, 'size', '69', 2200, 'S'),
(233, 'size', '69', 2200, 'M'),
(234, 'size', '69', 2200, 'L'),
(235, 'size', '69', 2200, 'XL'),
(236, 'size', '70', 2200, 'XS'),
(237, 'size', '70', 2200, 'S'),
(238, 'size', '70', 2200, 'M'),
(239, 'size', '70', 2200, 'L'),
(240, 'size', '70', 2200, 'XL'),
(241, 'size', '71', 2200, 'S'),
(242, 'size', '71', 2200, 'M'),
(243, 'size', '71', 2200, 'L'),
(244, 'size', '71', 2200, 'XL'),
(245, 'size', '72', 2200, 'S'),
(246, 'size', '72', 2200, 'M'),
(247, 'size', '72', 2200, 'L'),
(248, 'size', '72', 2200, 'XL'),
(249, 'size', '73', 2300, 'S'),
(250, 'size', '73', 2300, 'M'),
(251, 'size', '73', 2300, 'L'),
(252, 'size', '73', 2300, 'XL'),
(253, 'size', '74', 2200, 'S'),
(254, 'size', '74', 2200, 'M'),
(255, 'size', '74', 2200, 'L'),
(256, 'size', '74', 2200, 'XL'),
(257, 'size', '75', 2200, 'S'),
(258, 'size', '75', 2200, 'M'),
(259, 'size', '75', 2200, 'L'),
(260, 'size', '75', 2200, 'XL'),
(261, 'size', '76', 2200, 'S'),
(262, 'size', '76', 2200, 'M'),
(263, 'size', '76', 2200, 'L'),
(264, 'size', '76', 2200, 'XL'),
(265, 'size', '77', 2200, 'S'),
(266, 'size', '77', 2200, 'M'),
(267, 'size', '77', 2200, 'L'),
(268, 'size', '77', 2200, 'XL'),
(269, 'size', '78', 2200, 'S'),
(270, 'size', '78', 2200, 'M'),
(271, 'size', '78', 2200, 'L'),
(272, 'size', '78', 2200, 'XL'),
(273, 'size', '79', 2100, 'S'),
(274, 'size', '79', 2100, 'M'),
(275, 'size', '79', 2100, 'L'),
(276, 'size', '79', 2100, 'XL'),
(277, 'size', '80', 2500, 'S'),
(278, 'size', '80', 2500, 'M'),
(279, 'size', '80', 2500, 'L'),
(280, 'size', '80', 2500, 'XL'),
(281, 'size', '81', 2500, 'XS'),
(282, 'size', '81', 2500, 'S'),
(283, 'size', '81', 2500, 'M'),
(284, 'size', '81', 2500, 'L'),
(285, 'size', '81', 2500, 'XL'),
(286, 'size', '81', 2500, 'XXL'),
(287, 'size', '82', 1200, 'XS'),
(288, 'size', '82', 1200, 'S'),
(289, 'size', '82', 1200, 'M'),
(290, 'size', '86', 800, 'S'),
(291, 'size', '86', 800, 'M'),
(292, 'size', '86', 800, 'XL'),
(293, 'size', '86', 800, 'XXL'),
(294, 'size', '87', 990, 'S'),
(295, 'size', '87', 990, 'M'),
(296, 'size', '87', 990, 'L'),
(297, 'size', '87', 990, 'XL'),
(298, 'size', '87', 990, 'XXL'),
(299, 'size', '88', 990, 'S'),
(300, 'size', '88', 990, 'M'),
(301, 'size', '88', 990, 'L'),
(302, 'size', '88', 990, 'XL'),
(303, 'size', '88', 990, 'XXL'),
(304, 'size', '89', 999, 'S'),
(305, 'size', '89', 999, 'M'),
(306, 'size', '89', 999, 'L'),
(307, 'size', '89', 999, 'XL'),
(308, 'size', '90', 799, 'S'),
(309, 'size', '90', 799, 'M'),
(310, 'size', '90', 799, 'L'),
(311, 'size', '90', 799, 'XL'),
(312, 'size', '91', 990, 'S'),
(313, 'size', '91', 990, 'M'),
(314, 'size', '91', 990, 'L'),
(315, 'size', '91', 990, 'XL'),
(316, 'size', '92', 990, 'S'),
(317, 'size', '92', 990, 'M'),
(318, 'size', '92', 990, 'L'),
(319, 'size', '92', 990, 'XL'),
(320, 'size', '93', 990, 'S'),
(321, 'size', '93', 990, 'M'),
(322, 'size', '93', 990, 'L'),
(323, 'size', '93', 990, 'XL'),
(324, 'size', '94', 990, 'XS'),
(325, 'size', '94', 990, 'S'),
(326, 'size', '94', 990, 'M'),
(327, 'size', '94', 990, 'L'),
(328, 'size', '94', 990, 'XL'),
(329, 'size', '95', 990, 'XS'),
(330, 'size', '95', 990, 'S'),
(331, 'size', '95', 990, 'M'),
(332, 'size', '95', 990, 'L'),
(333, 'size', '95', 990, 'XL'),
(346, 'size', '99', 1999, 'M'),
(347, 'size', '99', 1999, 'L'),
(348, 'size', '99', 1999, 'XL'),
(349, 'size', '99', 1999, 'XXL'),
(350, 'size', '100', 1999, 'M'),
(351, 'size', '100', 1999, 'L'),
(352, 'size', '100', 1999, 'XL'),
(353, 'size', '100', 1999, 'XXL'),
(354, 'size', '101', 1999, 'M'),
(355, 'size', '101', 1999, 'L'),
(356, 'size', '101', 1999, 'XL'),
(357, 'size', '101', 1999, 'XXL'),
(358, 'size', '102', 3999, 'M'),
(359, 'size', '102', 3999, 'L'),
(360, 'size', '102', 3999, 'XL'),
(361, 'size', '102', 3999, 'XXL'),
(362, 'size', '103', 3999, 'M'),
(363, 'size', '103', 3999, 'L'),
(364, 'size', '103', 3999, 'XL'),
(365, 'size', '103', 3999, 'XXL'),
(367, 'size', '104', 3999, 'M'),
(368, 'size', '104', 3999, 'L'),
(369, 'size', '104', 3999, 'XL'),
(370, 'size', '104', 3999, 'XXL'),
(371, 'size', '105', 3999, 'M'),
(372, 'size', '105', 3999, 'L'),
(373, 'size', '105', 3999, 'XL'),
(374, 'size', '105', 3999, 'XXL'),
(375, 'size', '106', 3999, 'M'),
(376, 'size', '106', 3999, 'L'),
(377, 'size', '106', 3999, 'XL'),
(378, 'size', '106', 3999, 'XXL'),
(379, 'size', '107', 1999, 'M'),
(380, 'size', '107', 1999, 'L'),
(381, 'size', '107', 1999, 'XL'),
(382, 'size', '107', 1999, 'XXL'),
(383, 'size', '108', 1999, 'M'),
(384, 'size', '108', 1999, 'L'),
(385, 'size', '108', 1999, 'XL'),
(386, 'size', '108', 1999, 'XXL'),
(387, 'size', '109', 1999, 'M'),
(388, 'size', '109', 1999, 'L'),
(389, 'size', '109', 1999, 'XL'),
(390, 'size', '109', 1999, 'XXL'),
(391, 'size', '110', 3999, 'M'),
(392, 'size', '110', 3999, 'L'),
(393, 'size', '110', 3999, 'XL'),
(394, 'size', '110', 3999, 'XXL'),
(395, 'size', '111', 3999, 'M'),
(396, 'size', '111', 3999, 'L'),
(397, 'size', '111', 3999, 'XL'),
(398, 'size', '111', 3999, 'XXL'),
(399, 'size', '112', 3999, 'M'),
(400, 'size', '112', 3999, 'L'),
(401, 'size', '112', 3999, 'XL'),
(402, 'size', '112', 3999, 'XXL'),
(403, 'size', '113', 3999, 'M'),
(404, 'size', '113', 3999, 'L'),
(405, 'size', '113', 3999, 'XL'),
(406, 'size', '113', 3999, 'XXL'),
(407, 'size', '114', 1999, 'M'),
(408, 'size', '114', 1999, 'L'),
(409, 'size', '114', 1999, 'XL'),
(410, 'size', '114', 1999, 'XXL'),
(411, 'size', '115', 899, 'M'),
(412, 'size', '115', 899, 'L'),
(413, 'size', '115', 899, 'XL'),
(414, 'size', '115', 899, 'XXL'),
(415, 'size', '116', 899, 'M'),
(416, 'size', '116', 899, 'L'),
(417, 'size', '116', 899, 'XL'),
(418, 'size', '116', 899, 'XXL'),
(419, 'size', '117', 1999, 'M'),
(420, 'size', '117', 1999, 'L'),
(421, 'size', '117', 1999, 'XL'),
(422, 'size', '117', 1999, 'XXL'),
(423, 'size', '118', 499, 'M'),
(424, 'size', '118', 499, 'L'),
(425, 'size', '118', 499, 'XL'),
(426, 'size', '118', 499, 'XXL'),
(427, 'size', '119', 499, 'M'),
(428, 'size', '119', 499, 'L'),
(429, 'size', '119', 499, 'XL'),
(430, 'size', '119', 499, 'XXL'),
(431, 'size', '120', 899, 'M'),
(432, 'size', '120', 899, 'L'),
(433, 'size', '120', 899, 'XL'),
(434, 'size', '120', 899, 'XXL'),
(435, 'size', '121', 899, 'M'),
(436, 'size', '121', 899, 'L'),
(437, 'size', '121', 899, 'XL'),
(438, 'size', '121', 899, 'XXL'),
(439, 'size', '122', 499, 'M'),
(440, 'size', '122', 499, 'L'),
(441, 'size', '122', 499, 'XL'),
(442, 'size', '122', 499, 'XXL'),
(443, 'size', '123', 499, 'M'),
(444, 'size', '123', 499, 'L'),
(445, 'size', '123', 499, 'XL'),
(446, 'size', '123', 499, 'XXL'),
(447, 'size', '124', 1999, 'M'),
(448, 'size', '124', 1999, 'L'),
(449, 'size', '124', 1999, 'XL'),
(450, 'size', '124', 1999, 'XXL'),
(451, 'size', '125', 1999, 'M'),
(452, 'size', '125', 1999, 'L'),
(453, 'size', '125', 1999, 'XL'),
(454, 'size', '125', 1999, 'XXL'),
(455, 'size', '126', 1999, 'M'),
(456, 'size', '126', 1999, 'L'),
(457, 'size', '126', 1999, 'XL'),
(458, 'size', '126', 1999, 'XXL'),
(459, 'size', '127', 1999, 'M'),
(460, 'size', '127', 1999, 'L'),
(461, 'size', '127', 1999, 'XL'),
(462, 'size', '127', 1999, 'XXL'),
(463, 'size', '128', 1999, 'M'),
(464, 'size', '128', 1999, 'L'),
(465, 'size', '128', 1999, 'XL'),
(466, 'size', '128', 1999, 'XXL'),
(467, 'size', '129', 699, 'M'),
(468, 'size', '129', 699, 'L'),
(469, 'size', '129', 699, 'XL'),
(470, 'size', '129', 699, 'XXL'),
(471, 'size', '130', 1999, 'M'),
(472, 'size', '130', 1999, 'L'),
(473, 'size', '130', 1999, 'XL'),
(474, 'size', '130', 1999, 'XXL'),
(475, 'size', '131', 699, 'M'),
(476, 'size', '131', 699, 'L'),
(477, 'size', '131', 699, 'XL'),
(478, 'size', '131', 699, 'XXL'),
(479, 'size', '132', 1999, 'M'),
(480, 'size', '132', 1999, 'L'),
(481, 'size', '132', 1999, 'XL'),
(482, 'size', '132', 1999, 'XXL'),
(483, 'size', '133', 699, 'M'),
(484, 'size', '133', 699, 'L'),
(485, 'size', '133', 699, 'XL'),
(486, 'size', '133', 699, 'XXL'),
(487, 'size', '134', 699, 'M'),
(488, 'size', '134', 699, 'L'),
(489, 'size', '134', 699, 'XL'),
(490, 'size', '134', 699, 'XXL'),
(491, 'size', '135', 1999, 'M'),
(492, 'size', '135', 1999, 'L'),
(493, 'size', '135', 1999, 'XL'),
(494, 'size', '135', 1999, 'XXL'),
(495, 'size', '136', 899, 'M'),
(496, 'size', '136', 899, 'L'),
(497, 'size', '136', 899, 'XL'),
(498, 'size', '136', 899, 'XXL'),
(499, 'size', '137', 899, 'M'),
(500, 'size', '137', 899, 'L'),
(501, 'size', '137', 899, 'XL'),
(502, 'size', '137', 899, 'XXL'),
(503, 'size', '138', 899, 'M'),
(504, 'size', '138', 899, 'L'),
(505, 'size', '138', 899, 'XL'),
(506, 'size', '138', 899, 'XXL'),
(507, 'size', '139', 899, 'M'),
(508, 'size', '139', 899, 'L'),
(509, 'size', '139', 899, 'XL'),
(510, 'size', '139', 899, 'XXL'),
(511, 'size', '140', 899, 'M'),
(512, 'size', '140', 899, 'L'),
(513, 'size', '140', 899, 'XL'),
(514, 'size', '140', 899, 'XXL'),
(515, 'size', '141', 899, 'M'),
(516, 'size', '141', 899, 'L'),
(517, 'size', '141', 899, 'XL'),
(518, 'size', '141', 899, 'XXL'),
(519, 'size', '142', 899, 'M'),
(520, 'size', '142', 899, 'L'),
(521, 'size', '142', 899, 'XL'),
(522, 'size', '142', 899, 'XXL'),
(523, 'size', '143', 899, 'M'),
(524, 'size', '143', 899, 'L'),
(525, 'size', '143', 899, 'XL'),
(526, 'size', '143', 899, 'XXL'),
(527, 'size', '144', 899, 'M'),
(528, 'size', '144', 899, 'L'),
(529, 'size', '144', 899, 'XL'),
(530, 'size', '144', 899, 'XXL'),
(531, 'size', '145', 699, 'M'),
(532, 'size', '145', 699, 'L'),
(533, 'size', '145', 699, 'XL'),
(534, 'size', '145', 699, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(125) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` text DEFAULT NULL,
  `pin_code` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `complete_address` text DEFAULT NULL,
  `gst_no` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `profile_pic` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_profile_pic` bit(1) NOT NULL DEFAULT b'0',
  `mobile_verify` tinyint(4) NOT NULL DEFAULT 0,
  `email_verify` tinyint(4) NOT NULL DEFAULT 0,
  `token1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_pwd_change` tinyint(4) NOT NULL DEFAULT 0,
  `token2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `email`, `mobile`, `name`, `password`, `address`, `pin_code`, `city`, `state`, `country`, `complete_address`, `gst_no`, `profile_pic`, `is_profile_pic`, `mobile_verify`, `email_verify`, `token1`, `is_pwd_change`, `token2`, `created_at`, `updated_at`, `status`) VALUES
(1, 'azharmohd1996@gmail.com', '8218255107', 'MOHAMMAD AZHAR', 'e10adc3949ba59abbe56e057f20f883e', 'B32 Main Salimar Garden', '203001', 'GHAZIABAD', 'UTTAR PRADESH', 'India', 'B32 Main Salimar Garden,GHAZIABAD,UTTAR PRADESH - 203001', '', '1-profile.jpg', b'1', 1, 1, 'b86ad6ee40ee922b05dec5f4d4953c3a', 1, '84d1cfc125a1ce7a1ad0eccf1f5863f8074c5a57', '2020-01-07 06:30:25', '2020-01-13 11:48:27', 0),
(2, 'efficient.computers@gmail.com', '9873002693', 'GIRISH KUMAR', 'cd61a91f3c6d2af81ad05851ac70c6a3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 1, 0, 'de72f30d2ec26985fa584e766159577c', 0, '2eb2390f901b7e58b90fc9467eecdd25c12c0060', '2024-02-22 02:43:57', '2024-02-22 02:43:57', 0),
(3, 'sunilkatyal84@gmail.com', '9812098411', 'sunny', '13cfecda07843ac899908374eac468b5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 1, 0, 'c6b8806a2202ad2039c4695164fc95d9', 0, '9a2ba714de94c4cbd66efb97f3cee071146eba1a', '2024-03-01 05:51:07', '2024-03-01 05:51:07', 0),
(4, 'vicky1.webaxiso@gmail.com', '9891555739', 'vikeshkumar', '6a38883d7a9f196ab0504dcc14ade956', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 1, 0, 'e5eaebbf68fdc9dba6938d512645b651', 0, '2aee6ea8b35a31ff274db451e3b78259acee668c', '2024-03-02 08:26:28', '2024-03-06 17:41:11', 0),
(5, 'friendsmart00610061@gmail.com', '9873002664', 'GIRISH KUMAR', 'f7ea9ba23f40c2ee8b8cadcdf5c70bc6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 1, 0, '96a993ee543493b8892a8078f04fb915', 0, '83e68cebeca06917be6e66181fc4724d42e34e97', '2024-03-05 08:32:26', '2024-03-05 08:32:26', 0),
(6, 'davidstark0741@gmail.com', '9991909116', 'jitu', '4badaee57fed5610012a296273158f5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', 1, 0, '11f29635345634a3d049aafd0583c999', 0, '70e4b6758af85627e6391d63b37ca818315ab8f6', '2024-03-10 09:18:12', '2024-03-10 09:18:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `ProductID`, `name`, `email`, `title`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 32, 'MOHAMMAD AZHAR', 'azharmohd1996@gmail.com', 'Good Product', 'Product Is good', b'0', '2020-01-31 07:27:09', '2020-01-31 07:27:27'),
(2, 26, 'MOHD AZHAR', 'azharmohd1996@gmail.com', 'Review About Product', 'This is good product n this price.', b'0', '2020-01-31 08:18:16', '2020-01-31 08:18:16'),
(3, 29, 'MOHD SHAKIR', 'shakirsaifi@gmail.com', 'About Product', 'This is good product in reasonable price.', b'0', '2020-01-31 09:19:59', '2020-01-31 09:19:59'),
(4, 34, 'MOHAMMAD AZHAR', 'azharmohd1996@gmail.com', 'IT Job Consultancy in Gurgaon', 'hi', b'0', '2020-02-04 07:03:33', '2020-02-04 07:03:33'),
(5, 73, 'Nidhi', 'vihustore99@gmail.com', 'Delighted to find vihu Product. Full of comfort and ease.', 'Really comfortable to wear. Easy to wash and clean. I received compliment wearing this product, Thanks to Vihu Store!!!!', b'0', '2020-02-05 08:00:48', '2020-02-05 08:00:48'),
(6, 79, 'sivam', 'sivam@gmail.com', 'Mel ut impetus suscipit tincidunt. Cum id ullum laboramus persequeris.', 'Mel ut impetus suscipit tincidunt. Cum id ullum laboramus persequeris.', b'0', '2020-02-11 05:02:42', '2020-02-11 05:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `SlideId` int(11) NOT NULL,
  `imgpath` varchar(500) NOT NULL,
  `S_head` varchar(500) NOT NULL,
  `S_head2` varchar(500) DEFAULT NULL,
  `Price_tag` varchar(500) DEFAULT NULL,
  `Button_Label` varchar(500) DEFAULT NULL,
  `Button_Link` varchar(500) NOT NULL DEFAULT '#',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`SlideId`, `imgpath`, `S_head`, `S_head2`, `Price_tag`, `Button_Label`, `Button_Link`, `created_at`, `updated_at`, `Status`) VALUES
(30, '1708434590.jpg', 'FORBRO', 'DISCOVER YOUR ACTIVENESS', '', '', '', '2024-02-20 13:09:50', '2024-02-20 13:09:50', 1),
(33, '1708437311.png', 'FORBRO', 'SALE', '', '', '', '2024-02-20 13:55:11', '2024-02-20 13:55:11', 1),
(35, '1708438064.png', 'FORBRO', 'SALE', '', '', '', '2024-02-20 14:07:44', '2024-02-20 14:07:44', 1),
(36, '1709634479.png', 'Polo Tshirts', '', '', '', '', '2024-03-05 10:27:59', '2024-03-05 10:27:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `in_qty` bigint(20) NOT NULL,
  `out_qty` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`id`, `user_id`, `product_id`, `in_qty`, `out_qty`, `created_at`, `updated_at`, `status`) VALUES
(14, 1, 13, 3, 0, '2020-01-09 11:25:32', '2020-01-09 11:25:32', 0),
(15, 1, 14, 3, 0, '2020-01-09 11:26:42', '2020-01-09 11:26:42', 0),
(16, 1, 15, 4, 0, '2020-01-09 11:27:39', '2020-01-09 11:27:39', 0),
(18, 1, 13, 2, 0, '2020-01-13 06:41:19', '2020-01-13 06:41:19', 0),
(19, 1, 14, 1, 0, '2020-01-13 06:43:42', '2020-01-13 06:43:42', 0),
(20, 1, 15, 3, 0, '2020-01-13 06:44:17', '2020-01-13 06:44:17', 0),
(21, 1, 16, 3, 0, '2020-01-13 06:47:32', '2020-01-13 06:47:32', 0),
(22, 1, 17, 1, 0, '2020-01-13 06:49:42', '2020-01-13 06:49:42', 0),
(23, 1, 18, 4, 0, '2020-01-13 06:52:19', '2020-01-13 06:52:19', 0),
(24, 1, 19, 3, 0, '2020-01-13 06:55:43', '2020-01-13 06:55:43', 0),
(25, 1, 20, 2, 0, '2020-01-13 06:59:08', '2020-01-13 06:59:08', 0),
(26, 1, 21, 1, 0, '2020-01-13 07:01:17', '2020-01-13 07:01:17', 0),
(27, 1, 22, 4, 0, '2020-01-13 07:04:29', '2020-01-13 07:04:29', 0),
(28, 1, 23, 2, 0, '2020-01-13 07:15:11', '2020-01-13 07:15:11', 0),
(29, 1, 24, 4, 0, '2020-01-13 07:16:27', '2020-01-13 07:16:27', 0),
(30, 1, 25, 3, 0, '2020-01-13 07:17:47', '2020-01-13 07:17:47', 0),
(31, 1, 1, 4, 0, '2020-01-13 08:16:55', '2020-01-13 08:16:55', 0),
(32, 1, 2, 4, 0, '2020-01-13 08:25:23', '2020-01-13 08:25:23', 0),
(33, 1, 3, 4, 0, '2020-01-13 08:27:42', '2020-01-13 08:27:42', 0),
(34, 1, 2, 0, 1, '2020-01-13 09:25:14', '2020-01-13 09:25:14', 0),
(35, 1, 4, 4, 0, '2020-01-13 10:18:12', '2020-01-13 10:18:12', 0),
(36, 1, 5, 4, 0, '2020-01-13 10:20:27', '2020-01-13 10:20:27', 0),
(37, 1, 6, 5, 0, '2020-01-13 10:22:43', '2020-01-13 10:22:43', 0),
(38, 1, 7, 4, 0, '2020-01-13 10:25:01', '2020-01-13 10:25:01', 0),
(39, 1, 8, 4, 0, '2020-01-13 10:28:13', '2020-01-13 10:28:13', 0),
(41, 1, 10, 5, 0, '2020-01-13 10:57:59', '2020-01-13 10:57:59', 0),
(42, 1, 11, 5, 0, '2020-01-13 11:04:25', '2020-01-13 11:04:25', 0),
(44, 1, 13, 5, 0, '2020-01-13 11:12:05', '2020-01-13 11:12:05', 0),
(45, 1, 14, 5, 0, '2020-01-13 11:18:51', '2020-01-13 11:18:51', 0),
(46, 1, 15, 5, 0, '2020-01-13 11:21:31', '2020-01-13 11:21:31', 0),
(47, 1, 16, 5, 0, '2020-01-13 11:24:04', '2020-01-13 11:24:04', 0),
(48, 1, 17, 4, 0, '2020-01-13 11:26:31', '2020-01-13 11:26:31', 0),
(49, 1, 18, 4, 0, '2020-01-17 05:43:54', '2020-01-17 05:43:54', 0),
(50, 1, 19, 5, 0, '2020-01-17 05:48:04', '2020-01-17 05:48:04', 0),
(51, 1, 20, 6, 0, '2020-01-17 06:06:22', '2020-01-17 06:06:22', 0),
(52, 1, 21, 4, 0, '2020-01-17 07:02:13', '2020-01-17 07:02:13', 0),
(53, 1, 22, 4, 0, '2020-01-17 07:05:15', '2020-01-17 07:05:15', 0),
(54, 1, 23, 4, 0, '2020-01-17 07:22:33', '2020-01-17 07:22:33', 0),
(55, 1, 24, 4, 0, '2020-01-17 07:31:19', '2020-01-17 07:31:19', 0),
(56, 1, 25, 5, 0, '2020-01-29 11:33:30', '2020-01-29 11:33:30', 0),
(57, 1, 26, 6, 0, '2020-01-29 11:38:39', '2020-01-29 11:38:39', 0),
(58, 1, 27, 4, 0, '2020-01-29 11:42:01', '2020-01-29 11:42:01', 0),
(59, 1, 28, 6, 0, '2020-01-29 11:49:38', '2020-01-29 11:49:38', 0),
(60, 1, 29, 5, 0, '2020-01-29 11:54:38', '2020-01-29 11:54:38', 0),
(61, 1, 30, 4, 0, '2020-01-29 11:59:07', '2020-01-29 11:59:07', 0),
(62, 1, 31, 4, 0, '2020-01-29 12:01:59', '2020-01-29 12:01:59', 0),
(63, 1, 32, 8, 0, '2020-01-30 10:25:00', '2020-01-30 10:25:00', 0),
(64, 1, 32, 0, 1, '2020-01-31 10:09:48', '2020-01-31 10:09:48', 0),
(65, 1, 32, 0, 2, '2020-01-31 10:09:48', '2020-01-31 10:09:48', 0),
(66, 1, 32, 0, 3, '2020-01-31 10:09:48', '2020-01-31 10:09:48', 0),
(67, 1, 33, 5, 0, '2020-02-03 11:59:05', '2020-02-03 11:59:05', 0),
(68, 1, 34, 4, 0, '2020-02-03 12:19:09', '2020-02-03 12:19:09', 0),
(69, 1, 35, 4, 0, '2020-02-03 12:28:19', '2020-02-03 12:28:19', 0),
(70, 1, 36, 5, 0, '2020-02-03 12:31:08', '2020-02-03 12:31:08', 0),
(71, 1, 37, 5, 0, '2020-02-03 12:33:36', '2020-02-03 12:33:36', 0),
(72, 1, 38, 8, 0, '2020-02-04 07:23:05', '2020-02-04 07:23:05', 0),
(73, 1, 39, 8, 0, '2020-02-04 07:25:38', '2020-02-04 07:25:38', 0),
(74, 1, 40, 7, 0, '2020-02-04 07:31:46', '2020-02-04 07:31:46', 0),
(75, 1, 41, 4, 0, '2020-02-04 07:37:22', '2020-02-04 07:37:22', 0),
(76, 1, 42, 6, 0, '2020-02-04 07:53:36', '2020-02-04 07:53:36', 0),
(77, 1, 43, 6, 0, '2020-02-04 08:02:39', '2020-02-04 08:02:39', 0),
(78, 1, 44, 6, 0, '2020-02-04 08:08:46', '2020-02-04 08:08:46', 0),
(79, 1, 45, 5, 0, '2020-02-04 08:11:41', '2020-02-04 08:11:41', 0),
(80, 1, 46, 7, 0, '2020-02-04 08:16:34', '2020-02-04 08:16:34', 0),
(81, 1, 47, 5, 0, '2020-02-04 08:24:14', '2020-02-04 08:24:14', 0),
(82, 1, 48, 5, 0, '2020-02-04 10:12:13', '2020-02-04 10:12:13', 0),
(83, 1, 49, 6, 0, '2020-02-04 10:18:43', '2020-02-04 10:18:43', 0),
(84, 1, 50, 5, 0, '2020-02-04 10:20:14', '2020-02-04 10:20:14', 0),
(85, 1, 51, 30, 0, '2020-02-04 10:34:13', '2020-02-04 10:34:13', 0),
(86, 1, 52, 7, 0, '2020-02-04 10:35:57', '2020-02-04 10:35:57', 0),
(87, 1, 53, 4, 0, '2020-02-04 10:45:46', '2020-02-04 10:45:46', 0),
(88, 1, 54, 6, 0, '2020-02-04 11:17:43', '2020-02-04 11:17:43', 0),
(89, 1, 55, 5, 0, '2020-02-04 11:19:53', '2020-02-04 11:19:53', 0),
(90, 1, 56, 1, 0, '2020-02-04 11:22:58', '2020-02-04 11:22:58', 0),
(91, 1, 57, 6, 0, '2020-02-04 11:26:45', '2020-02-04 11:26:45', 0),
(92, 1, 58, 7, 0, '2020-02-04 11:28:15', '2020-02-04 11:28:15', 0),
(93, 1, 59, 5, 0, '2020-02-04 11:30:02', '2020-02-04 11:30:02', 0),
(94, 1, 60, 6, 0, '2020-02-04 11:32:33', '2020-02-04 11:32:33', 0),
(95, 1, 61, 13, 0, '2020-02-04 11:34:05', '2020-02-04 11:34:05', 0),
(96, 1, 62, 12, 0, '2020-02-04 11:36:00', '2020-02-04 11:36:00', 0),
(97, 1, 63, 7, 0, '2020-02-04 11:37:30', '2020-02-04 11:37:30', 0),
(98, 1, 64, 12, 0, '2020-02-04 11:44:10', '2020-02-04 11:44:10', 0),
(99, 1, 65, 12, 0, '2020-02-05 07:17:31', '2020-02-05 07:17:31', 0),
(100, 1, 66, 5, 0, '2020-02-05 07:20:44', '2020-02-05 07:20:44', 0),
(101, 1, 67, 17, 0, '2020-02-05 07:22:58', '2020-02-05 07:22:58', 0),
(102, 1, 68, 8, 0, '2020-02-05 07:26:42', '2020-02-05 07:26:42', 0),
(103, 1, 69, 9, 0, '2020-02-05 07:31:47', '2020-02-05 07:31:47', 0),
(104, 1, 70, 6, 0, '2020-02-05 07:33:53', '2020-02-05 07:33:53', 0),
(105, 1, 71, 17, 0, '2020-02-05 07:38:57', '2020-02-05 07:38:57', 0),
(106, 1, 72, 12, 0, '2020-02-05 07:42:25', '2020-02-05 07:42:25', 0),
(107, 1, 73, 5, 0, '2020-02-05 07:54:36', '2020-02-05 07:54:36', 0),
(108, 1, 74, 5, 0, '2020-02-05 08:10:21', '2020-02-05 08:10:21', 0),
(109, 1, 75, 8, 0, '2020-02-05 08:14:12', '2020-02-05 08:14:12', 0),
(110, 1, 76, 6, 0, '2020-02-05 08:16:11', '2020-02-05 08:16:11', 0),
(111, 1, 77, 6, 0, '2020-02-05 08:19:20', '2020-02-05 08:19:20', 0),
(112, 1, 78, 6, 0, '2020-02-05 08:21:22', '2020-02-05 08:21:22', 0),
(113, 1, 79, 6, 0, '2020-02-05 08:23:16', '2020-02-05 08:23:16', 0),
(114, 1, 80, 9, 0, '2020-02-05 08:25:24', '2020-02-05 08:25:24', 0),
(115, 1, 81, 7, 0, '2020-02-05 08:29:55', '2020-02-05 08:29:55', 0),
(116, 1, 82, 5, 0, '2020-02-05 09:20:29', '2020-02-05 09:20:29', 0),
(117, 1, 86, 5, 0, '2020-02-29 06:59:11', '2020-02-29 06:59:11', 0),
(118, 1, 87, 5, 0, '2020-02-29 11:54:42', '2020-02-29 11:54:42', 0),
(119, 1, 88, 5, 0, '2020-02-29 11:56:44', '2020-02-29 11:56:44', 0),
(120, 1, 89, 6, 0, '2020-02-29 12:00:38', '2020-02-29 12:00:38', 0),
(121, 1, 90, 6, 0, '2020-02-29 12:15:44', '2020-02-29 12:15:44', 0),
(122, 1, 91, 6, 0, '2020-02-29 12:19:40', '2020-02-29 12:19:40', 0),
(123, 1, 92, 9, 0, '2020-02-29 12:21:30', '2020-02-29 12:21:30', 0),
(124, 1, 93, 6, 0, '2020-02-29 12:23:16', '2020-02-29 12:23:16', 0),
(125, 1, 94, 7, 0, '2020-02-29 12:28:05', '2020-02-29 12:28:05', 0),
(126, 1, 95, 7, 0, '2020-02-29 12:29:19', '2020-02-29 12:29:19', 0),
(130, 1, 99, 10, 0, '2024-02-20 10:41:57', '2024-02-20 10:41:57', 0),
(131, 1, 100, 10, 0, '2024-02-20 11:01:07', '2024-02-20 11:01:07', 0),
(132, 1, 101, 10, 0, '2024-02-20 11:05:20', '2024-02-20 11:05:20', 0),
(133, 1, 102, 10, 0, '2024-02-20 11:52:42', '2024-02-20 11:52:42', 0),
(134, 1, 103, 10, 0, '2024-02-20 12:05:46', '2024-02-20 12:05:46', 0),
(135, 1, 104, 10, 0, '2024-02-21 11:18:02', '2024-02-21 11:18:02', 0),
(136, 1, 105, 10, 0, '2024-02-21 11:20:44', '2024-02-21 11:20:44', 0),
(137, 1, 106, 10, 0, '2024-02-21 11:22:07', '2024-02-21 11:22:07', 0),
(138, 1, 107, 10, 0, '2024-02-21 11:36:18', '2024-02-21 11:36:18', 0),
(139, 1, 108, 10, 0, '2024-02-21 11:38:15', '2024-02-21 11:38:15', 0),
(140, 1, 109, 10, 0, '2024-02-21 11:39:40', '2024-02-21 11:39:40', 0),
(141, 1, 110, 10, 0, '2024-02-22 12:55:04', '2024-02-22 12:55:04', 0),
(142, 1, 111, 10, 0, '2024-02-22 13:16:17', '2024-02-22 13:16:17', 0),
(143, 1, 112, 10, 0, '2024-02-22 13:18:21', '2024-02-22 13:18:21', 0),
(144, 1, 113, 10, 0, '2024-02-22 13:20:41', '2024-02-22 13:20:41', 0),
(145, 1, 114, 10, 0, '2024-02-22 14:02:33', '2024-02-22 14:02:33', 0),
(146, 1, 115, 10, 0, '2024-02-23 07:19:33', '2024-02-23 07:19:33', 0),
(147, 1, 116, 10, 0, '2024-02-23 07:24:57', '2024-02-23 07:24:57', 0),
(148, 1, 117, 10, 0, '2024-02-23 07:35:18', '2024-02-23 07:35:18', 0),
(149, 1, 118, 10, 0, '2024-02-23 12:21:22', '2024-02-23 12:21:22', 0),
(150, 1, 119, 10, 0, '2024-02-23 12:26:10', '2024-02-23 12:26:10', 0),
(151, 1, 120, 10, 0, '2024-02-23 12:31:04', '2024-02-23 12:31:04', 0),
(152, 1, 121, 10, 0, '2024-02-23 12:32:30', '2024-02-23 12:32:30', 0),
(153, 1, 122, 10, 0, '2024-02-23 12:44:48', '2024-02-23 12:44:48', 0),
(154, 1, 123, 10, 0, '2024-02-23 12:46:25', '2024-02-23 12:46:25', 0),
(155, 1, 124, 10, 0, '2024-02-27 10:30:15', '2024-02-27 10:30:15', 0),
(156, 1, 125, 10, 0, '2024-02-27 10:42:57', '2024-02-27 10:42:57', 0),
(157, 1, 126, 10, 0, '2024-02-27 11:07:41', '2024-02-27 11:07:41', 0),
(158, 1, 127, 10, 0, '2024-02-27 11:08:42', '2024-02-27 11:08:42', 0),
(159, 1, 128, 10, 0, '2024-02-27 11:09:36', '2024-02-27 11:09:36', 0),
(160, 1, 129, 10, 0, '2024-02-27 12:42:56', '2024-02-27 12:42:56', 0),
(161, 1, 130, 10, 0, '2024-02-27 12:47:42', '2024-02-27 12:47:42', 0),
(162, 1, 131, 10, 0, '2024-02-27 12:51:43', '2024-02-27 12:51:43', 0),
(163, 1, 132, 10, 0, '2024-02-27 12:53:10', '2024-02-27 12:53:10', 0),
(164, 1, 133, 10, 0, '2024-02-27 12:58:52', '2024-02-27 12:58:52', 0),
(165, 1, 134, 10, 0, '2024-02-27 13:03:13', '2024-02-27 13:03:13', 0),
(166, 1, 135, 10, 0, '2024-02-27 13:04:44', '2024-02-27 13:04:44', 0),
(167, 0, 95, -7, 0, '2024-02-28 07:08:32', '2024-02-28 07:08:32', 0),
(168, 0, 94, -7, 0, '2024-02-28 07:09:15', '2024-02-28 07:09:15', 0),
(169, 1, 136, 10, 0, '2024-03-04 11:11:14', '2024-03-04 11:11:14', 0),
(170, 1, 137, 10, 0, '2024-03-04 11:14:38', '2024-03-04 11:14:38', 0),
(171, 1, 138, 10, 0, '2024-03-04 11:16:00', '2024-03-04 11:16:00', 0),
(172, 1, 139, 10, 0, '2024-03-04 11:17:10', '2024-03-04 11:17:10', 0),
(173, 1, 140, 10, 0, '2024-03-04 11:18:19', '2024-03-04 11:18:19', 0),
(174, 1, 141, 10, 0, '2024-03-04 11:19:21', '2024-03-04 11:19:21', 0),
(175, 1, 142, 10, 0, '2024-03-04 11:20:32', '2024-03-04 11:20:32', 0),
(176, 1, 143, 10, 0, '2024-03-04 11:21:39', '2024-03-04 11:21:39', 0),
(177, 1, 144, 10, 0, '2024-03-04 11:22:55', '2024-03-04 11:22:55', 0),
(178, 1, 145, 10, 0, '2024-03-04 11:23:50', '2024-03-04 11:23:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_no` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `payment_mode` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `txn_status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `txn_date` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gateway_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bank_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `checksum` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usercart`
--

CREATE TABLE `tbl_usercart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `size` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `qty` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_usercart`
--

INSERT INTO `tbl_usercart` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 17, '', '', 1, '2020-01-13 06:50:01', '2020-01-13 06:50:01', 0),
(2, 1, 13, '', '', 1, '2020-01-13 11:51:32', '2020-01-13 11:51:32', 0),
(3, 1, 11, '', '', 1, '2020-01-16 13:31:40', '2020-01-16 13:31:40', 0),
(4, 1, 11, '', '', 1, '2020-01-16 13:31:43', '2020-01-16 13:31:43', 0),
(5, 1, 11, '', '', 1, '2020-01-16 13:31:51', '2020-01-16 13:31:51', 0),
(6, 1, 19, '', '34', 1, '2020-01-27 08:16:18', '2020-01-27 08:16:18', 0),
(7, 1, 24, '', '19', 1, '2020-01-27 08:27:05', '2020-01-27 08:27:05', 0),
(8, 1, 5, '', '55', 1, '2020-01-27 09:06:50', '2020-01-27 09:06:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wish_id` bigint(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `pname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pprice` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`);

--
-- Indexes for table `ci_cart`
--
ALTER TABLE `ci_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `cmspage_tab`
--
ALTER TABLE `cmspage_tab`
  ADD PRIMARY KEY (`PageID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invi24_admin`
--
ALTER TABLE `invi24_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invi24_coupon`
--
ALTER TABLE `invi24_coupon`
  ADD PRIMARY KEY (`cponid`),
  ADD UNIQUE KEY `cponcode` (`cponcode`);

--
-- Indexes for table `invi24_optiongroups`
--
ALTER TABLE `invi24_optiongroups`
  ADD PRIMARY KEY (`OptionGroupID`);

--
-- Indexes for table `invi24_options`
--
ALTER TABLE `invi24_options`
  ADD PRIMARY KEY (`OptionID`);

--
-- Indexes for table `invi24_productoptions`
--
ALTER TABLE `invi24_productoptions`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indexes for table `invi24_productoptions_new`
--
ALTER TABLE `invi24_productoptions_new`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indexes for table `invi24_qoute`
--
ALTER TABLE `invi24_qoute`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `invi24_users`
--
ALTER TABLE `invi24_users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD UNIQUE KEY `UserEmail_2` (`UserEmail`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popup_offers`
--
ALTER TABLE `popup_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image_upload`
--
ALTER TABLE `tbl_image_upload`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_productcategories`
--
ALTER TABLE `tbl_productcategories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`ProductID`),
  ADD UNIQUE KEY `hexa_id` (`hexa_id`);

--
-- Indexes for table `tbl_productvariation`
--
ALTER TABLE `tbl_productvariation`
  ADD PRIMARY KEY (`varid`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`SlideId`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_usercart`
--
ALTER TABLE `tbl_usercart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ci_cart`
--
ALTER TABLE `ci_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cmspage_tab`
--
ALTER TABLE `cmspage_tab`
  MODIFY `PageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invi24_admin`
--
ALTER TABLE `invi24_admin`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invi24_coupon`
--
ALTER TABLE `invi24_coupon`
  MODIFY `cponid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invi24_optiongroups`
--
ALTER TABLE `invi24_optiongroups`
  MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invi24_options`
--
ALTER TABLE `invi24_options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invi24_productoptions`
--
ALTER TABLE `invi24_productoptions`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invi24_productoptions_new`
--
ALTER TABLE `invi24_productoptions_new`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invi24_qoute`
--
ALTER TABLE `invi24_qoute`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invi24_users`
--
ALTER TABLE `invi24_users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `popup_offers`
--
ALTER TABLE `popup_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_image_upload`
--
ALTER TABLE `tbl_image_upload`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975;

--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_productcategories`
--
ALTER TABLE `tbl_productcategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tbl_productvariation`
--
ALTER TABLE `tbl_productvariation`
  MODIFY `varid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `SlideId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_usercart`
--
ALTER TABLE `tbl_usercart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wish_id` bigint(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
