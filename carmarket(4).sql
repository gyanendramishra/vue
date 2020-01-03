-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2020 at 07:58 PM
-- Server version: 5.7.25
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `adsence_advertisements`
--

CREATE TABLE `adsence_advertisements` (
  `id` int(11) NOT NULL,
  `page_location_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adsence_advertisements`
--

INSERT INTO `adsence_advertisements` (`id`, `page_location_id`, `position_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 1, '2019-12-17 10:05:27', '2019-12-24 14:02:48'),
(2, 2, 1, 1, '2019-12-17 10:18:31', '2019-12-24 14:02:47'),
(3, 3, 5, 1, '2019-12-17 13:07:13', '2019-12-24 14:03:16'),
(4, 3, 5, 1, '2019-12-17 13:27:06', '2019-12-24 14:03:18'),
(5, 4, 1, 1, '2019-12-18 06:55:44', '2019-12-24 14:00:40'),
(6, 3, 2, 1, '2019-12-18 13:59:28', '2019-12-24 14:03:20'),
(7, 3, 1, 1, '2019-12-18 14:00:55', '2019-12-24 14:03:21'),
(8, 2, 6, 1, '2019-12-24 13:51:04', '2019-12-24 08:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `adsence_advertisement_translations`
--

CREATE TABLE `adsence_advertisement_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ad_id` int(11) NOT NULL,
  `image_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=image,2=scripts',
  `image_scripts` text CHARACTER SET utf8 COLLATE utf8_bin,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adsence_advertisement_translations`
--

INSERT INTO `adsence_advertisement_translations` (`id`, `locale`, `title`, `image`, `ad_id`, `image_type`, `image_scripts`, `url`) VALUES
(1, 'en', 'Home', '1576581540-114703475.jpeg', 1, 1, NULL, 'http://carmarket.projectstatus.in/'),
(2, 'en', 'Vehical Listing', '1576581528-213200867.png', 2, 1, NULL, 'http://carmarket.projectstatus.in/'),
(3, 'en', 'test 1', '1576588033-1862431276.jpeg', 3, 1, NULL, 'http://test.com'),
(4, 'en', 'Advertisment 1', '1576593293-1414698072.jpg', 4, 1, NULL, 'http://test.com'),
(5, 'en', 'App Filter', '1576652144-55507786.png', 5, 1, NULL, 'http://carmarket.projectstatus.in/'),
(6, 'en', 'asdfasdfasdf', '1576677568-1932688219.jpg', 6, 1, NULL, 'https://www.google.com'),
(7, 'en', 'adfasdfasd asf asdfasdf', '1576677655-1683265296.jpg', 7, 1, '<h1>HTML</H>', 'http://www.google.com'),
(8, 'en', 'Ad1', '1577195464-1416999110.jpg', 8, 1, NULL, 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `front_view` tinyint(1) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `status`, `front_view`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'new', 1, 0, NULL, '2020-01-03 01:59:39', '2020-01-03 01:59:39', NULL),
(2, 'used', 1, 0, NULL, '2020-01-03 01:59:47', '2020-01-03 01:59:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `locale`, `category_id`, `name`) VALUES
(1, 'en', 1, 'New'),
(2, 'kh', 1, 'New'),
(3, 'en', 2, 'Used'),
(4, 'kh', 2, 'Used');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0->inactive, 1->active',
  `is_html` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `status`, `is_html`, `created_at`, `deleted_at`, `updated_at`) VALUES
(4, 'inquiry_mail', 1, 1, '2019-12-16 16:26:41', NULL, NULL),
(6, 'vehicle_inquiry_mail_to_admin', 1, 1, '2019-12-17 12:11:36', NULL, NULL),
(7, 'welcome_mail_to_user', 1, 1, '2019-12-17 12:11:42', NULL, NULL),
(8, 'vehicle_report_ad_mail_to_admin', 1, 1, '2019-12-27 03:43:13', NULL, '2019-12-27 03:43:13'),
(9, 'vehicle_added_mail_to_admin', 1, 1, '2020-01-03 01:35:44', NULL, '2020-01-03 01:35:44'),
(10, 'vehicle_added_mail_to_user', 1, 1, '2020-01-03 01:44:13', NULL, '2020-01-03 01:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_translations`
--

CREATE TABLE `email_template_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(222) NOT NULL,
  `email_template_id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template_translations`
--

INSERT INTO `email_template_translations` (`id`, `locale`, `email_template_id`, `subject`, `template`) VALUES
(7, 'en', 4, 'Inquiry mail', '<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\">\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">\r\n                                    Hello <span style=\"color:#d8322d;\">Admin</span>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">\r\n                                    Inquiry from :- Carmarket Ltd.\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n                                    Inquiry Information\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Email:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##EMAIL##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Enquiry relates to:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##ENQUIRY_RELATES_TO##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Subject:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##SUBJECT##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Message:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##MESSAGE##\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>'),
(8, 'kh', 4, 'Inquiry mail', '<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\">\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">\r\n                                    Hello <span style=\"color:#d8322d;\">Admin</span>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">\r\n                                    Inquiry from :- Carmarket Ltd.\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n                                    Inquiry Information\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Email:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##EMAIL##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Enquiry relates to:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##ENQUIRY_RELATES_TO##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Subject:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##SUBJECT##\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                Message:\r\n                                            </td>\r\n                                            <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                                                ##MESSAGE##\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>'),
(9, 'en', 6, 'Vehicle Inquiry', '<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\">\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">\r\n            Hello <span style=\"color:#d8322d;\">Admin</span>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">\r\n            Inquiry from :- Carmarket Ltd.\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n            Inquiry Information\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Vehicle title:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##VEHICLE_TITLE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Vehicle code:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##VEHICLE_CODE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Name:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##NAME##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Email:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##EMAIL##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Phone:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##PHONE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Post code:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##POST_CODE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Is trade in:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##IS_TRADE_IN##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Is dealer response:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##IS_DEALER_RESPONSE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Message:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##MESSAGE##\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>'),
(10, 'kh', 6, 'Vehicle Inquiry', '<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\">\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">\r\n            Hello <span style=\"color:#d8322d;\">Admin</span>\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">\r\n            Inquiry from :- Carmarket Ltd.\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n            Inquiry Information\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Vehicle title:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##VEHICLE_TITLE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Vehicle code:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##VEHICLE_CODE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Name:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##NAME##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Email:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##EMAIL##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Phone:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##PHONE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Post code:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##POST_CODE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Is trade in:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##IS_TRADE_IN##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Is dealer response:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##IS_DEALER_RESPONSE##\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td valign=\"top\" width=\"25%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        Message:\r\n                    </td>\r\n                    <td valign=\"top\" width=\"75%\" style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\">\r\n                        ##MESSAGE##\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>'),
(11, 'en', 7, 'Welcome', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hi <span style=\"color:#d8322d;\">##NAME##</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\"><br />\r\n			Welcome to the CarMarket.com. Your account has been created. Please use the below OTP to verify your account.<br />\r\n			<br />\r\n			Your OTP is: ##OTP##.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Member Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(12, 'kh', 7, 'Welcome', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hi <span style=\"color:#d8322d;\">##NAME</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\"><br />\r\n			Welcome to the CarMarket.com. Your account has been created. Please use the below OTP to verify your account.<br />\r\n			<br />\r\n			Your OTP is: ##OTP##.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Member Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(13, 'en', 8, 'Vehicle Report Ad', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Report Ad from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Report Ad Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Report Type:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##TYPE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(14, 'kh', 8, 'Vehicle Report Ad', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Report Ad from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Report Ad Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Report Type:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##TYPE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(15, 'en', 9, 'New Vehicle Added For Approve', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">New Vehicle Added&nbsp; :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">New ##VEHICLE_TITLE## Added Please verify and approve it for show on listing.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(16, 'kh', 9, 'New Vehicle Added For Approve', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">New Vehicle Added&nbsp; :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">##Vehicle## Added Please verify and approve it for show on listing.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(17, 'en', 10, 'Vehicle Added', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"color: rgb(74, 90, 90);\">Hello </span><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">New Vehicle Added&nbsp; :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Your ##Vehicle## Added successfully, We will verify and updated You with in 24 hours.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(18, 'kh', 10, 'Vehicle Added', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"color: rgb(74, 90, 90);\">Hello </span><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">New Vehicle Added&nbsp; :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Your ##Vehicle## Added successfully, We will verify and updated u with in 24 hours.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `type`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, '0', 'gyan@yopmail.com', 'Testing', 'testing', '2019-12-09 07:14:29', '2019-12-09 07:14:29'),
(9, '1', 'gayn1@yopmail.com', 'Testing', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing', '2019-12-17 01:46:39', '2019-12-17 01:46:39'),
(10, '1', 'testinguser001@yopmail.com', 'Please tell us what your enquiry relates to', 'Please tell us what your enquiry relates to  Please tell us what your enquiry relates to  Please tell us what your enquiry relates to', '2019-12-17 01:51:01', '2019-12-17 01:51:01'),
(11, '3', 'jizuq@Yopmail.com', 'Quisquam ex sunt ullamco ut quam incididunt', 'Error nostrum et iusto aut libero omnis irure dolo dadsf asdf asdfasd asd fasd fasdf asd asdf asdf asdf asdfs d', '2019-12-17 04:35:55', '2019-12-17 04:35:55'),
(12, '1', 'jacksmith@yopmail.com', 'Regarding car sale', 'Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale Regarding car sale', '2019-12-17 10:24:05', '2019-12-17 10:24:05'),
(13, '3', 'asaaaaaaaaasdlfjalsdfjlasdkjflasdkjfldskjflkasjdflkadjslfkjjlsdk@gmail.com', 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា', 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជាអាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជាអាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជាអាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជាអាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋានfsdsdf sdfs sd s s s', '2019-12-18 01:15:00', '2019-12-18 01:15:00'),
(14, '1', 'asdf.asdf.asdf.asdf@gmail.com', 'eweqweqw', 'qweqwewq qwe qwe qwe  qwe qwe qwe qwe qwe qwe  qwe                                              s   qwq', '2019-12-18 01:16:53', '2019-12-18 01:16:53'),
(15, '3', 'william@yopmail.com', 'Regarding car purchase', 'i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car i want to purchase car', '2019-12-18 01:29:36', '2019-12-18 01:29:36'),
(16, '0', 'Brian.dots@dotsquares.com', 'I want to contact to the admin user about some feedback.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-12-18 01:46:17', '2019-12-18 01:46:17'),
(17, '5', 'nulokepej@Yopmail.com', 'Accusamus velit nisi dolor reprehenderit quis au', 'Unde dignissimos eligendi fugit pariatur Sint aasdf asdf asdfasdf  asdf asdf asdf asdf asdf asdf asd', '2019-12-18 01:51:06', '2019-12-18 01:51:06'),
(18, '1', 'vaibhav@yopmail.com', 'vaibhav', 'vfdvdvfdv gbfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '2019-12-23 00:53:05', '2019-12-23 00:53:05'),
(19, '1', 'vaibhav@yopmail.com', 'vaibhav', 'vfdvdvfdv gbfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '2019-12-23 00:56:18', '2019-12-23 00:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newss`
--

CREATE TABLE `newss` (
  `id` int(11) NOT NULL,
  `publish_date` date DEFAULT NULL,
  `image` char(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newss`
--

INSERT INTO `newss` (`id`, `publish_date`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2019-12-23', '1576509344-1352876794.jpg', 0, '2019-12-02 11:48:43', '2019-12-16 15:15:44', NULL),
(2, '2019-12-19', '1576509247-367462357.jpg', 1, '2019-12-16 05:37:34', '2019-12-16 15:14:07', NULL),
(3, '2019-12-19', '1576509232-1372750147.jpg', 1, '2019-12-16 06:03:56', '2019-12-17 14:30:48', NULL),
(4, '2019-12-18', '1576509214-2062566511.jpg', 1, '2019-12-16 06:08:58', '2019-12-16 15:13:34', NULL),
(5, '2019-06-18', '1576676741-1153619779.jpg', 1, '2019-12-18 12:34:24', '2019-12-18 13:45:41', NULL),
(6, '2020-01-04', '1576738312-2082372598.png', 1, '2019-12-19 06:51:52', '2019-12-19 06:53:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_translations`
--

CREATE TABLE `news_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `news_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_translations`
--

INSERT INTO `news_translations` (`id`, `locale`, `news_id`, `title`, `description`) VALUES
(1, 'en', 1, 'Car Market is going to live', '<p>test kh</p>'),
(2, 'kh', 1, 'test kh', '<p>test kh</p>'),
(3, 'en', 2, 'Toyota Yaris GR-4 debut delayed', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'kh', 2, 'Toyota Yaris GR-4 debut delayed', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'en', 3, 'Audi Q7 with uplift version', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;</p>'),
(6, 'kh', 3, 'Audi Q7 with uplift version', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the audi</p>'),
(7, 'en', 4, 'Honda Civic is launching soon', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;&nbsp;</p>'),
(8, 'kh', 4, 'Honda Civic is launching soon', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;</p>'),
(9, 'en', 5, 'Sorry, you can\'t add the title more than the 200 characters in English', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(10, 'kh', 5, 'Sorry, you can\'t add the title more than the 200 characters in English language.', '<p>Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.</p>'),
(11, 'en', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>'),
(12, 'kh', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('018e4ca53618f36a20e2976a3bd43c4273d867670c2854cff0c9683dd2913e50540f6502aa853f4c', 62, 1, 'MyApp', '[]', 0, '2019-12-18 05:13:55', '2019-12-18 05:13:55', '2020-12-18 10:43:55'),
('02354713ba3814b87cc2fd2cfc871170098dc7237239c886b6324c0ec42e4b98af1ff0f1aa633388', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:10:44', '2019-12-23 06:10:44', '2020-12-23 11:40:44'),
('03d196f04acdb9f1fdc60da7db3846d118dddb2ebf7cc55ad4dbe36b6e9ae1a4e45cb59484438bc9', 18, 1, 'MyApp', '[]', 0, '2019-12-16 23:53:06', '2019-12-16 23:53:06', '2020-12-17 05:23:06'),
('065b8f1b380fafe46ec4d0ce0008781b70c2e7455fef3f86393d32c48ee0f2d7477629f5c489962a', 66, 1, 'Personal Access Token', '[]', 0, '2019-12-18 06:00:03', '2019-12-18 06:00:03', '2020-12-18 11:30:03'),
('06cbf7e361c9345a1f858d0c2ed9d0f9127803f0b5188259b0ba5235d4971f1efd46888a5b8e5275', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:50:38', '2019-12-18 03:50:38', '2020-12-18 09:20:38'),
('07223f57681b3cbc1786b13ce3d2e9247602eb0b93e4d07b0e5a304a63dcabaf2784d1a286caf4ad', 31, 1, 'Personal Access Token', '[]', 0, '2019-12-17 10:08:02', '2019-12-17 10:08:02', '2020-12-17 15:38:02'),
('0772dffbcd96371bae362395ac7df96fc71866ddb0504fa320b40252d39cfa937546e710f7ec1505', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:57:29', '2019-12-18 01:57:29', '2020-12-18 07:27:29'),
('08af61d8b814df2775b75898059e48f73338bb8713acbd78675f38d16363936e39526244198ce11e', 57, 1, 'MyApp', '[]', 0, '2019-12-18 03:39:01', '2019-12-18 03:39:01', '2020-12-18 09:09:01'),
('09211d190c9991234a761c80faf14006b7090b6194978b5a0ac08f0791ee7766ba1116fac975c4ca', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:17:05', '2019-12-23 06:17:05', '2020-12-23 11:47:05'),
('0af1704007a08ec8dd519f28989f3dfc59901a7343a35607e581c73e1c69e94f249653d8b4f2b6f9', 33, 1, 'Personal Access Token', '[]', 0, '2019-12-17 10:19:19', '2019-12-17 10:19:19', '2020-12-17 15:49:19'),
('0c71a3e51357505bd046558eb312b67a4e7fce209106014564c67fe38e5a06b61b02ad3fa8de415a', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:26:04', '2019-12-23 07:26:04', '2020-12-23 12:56:04'),
('0da48c03a62e5fd1a23762d2eafb8025c0804e5980713ddd94ef754df12b410742ae09b971e6b470', 104, 1, 'Personal Access Token', '[]', 0, '2020-01-03 05:10:37', '2020-01-03 05:10:37', '2021-01-03 10:40:37'),
('0f5683173289b02f84c8974b7952dce0b86193008cebf4ccbacecd39ef7f24d2a7fb935073486e73', 101, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:52:15', '2020-01-03 07:52:15', '2021-01-03 13:22:15'),
('12f9ff5bcdcc825a044911798c74fbac789f872a0a5379cd6762a21b149bc54090a051c076bed36a', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:40:21', '2019-12-17 09:40:21', '2020-12-17 15:10:21'),
('13c98e9f37c9cba2fce5dd191306acecfdeac0a27ebac25ce969db5cfd1283bbcf8820ecf502fe74', 55, 1, 'MyApp', '[]', 0, '2019-12-18 03:15:42', '2019-12-18 03:15:42', '2020-12-18 08:45:42'),
('149fe3d497f94912cad42a96f3192e877c8fb8edadd19f5375db33a6c9458e7075117d5307c71e63', 59, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:01:36', '2019-12-18 05:01:36', '2020-12-18 10:31:36'),
('14fc2771ed4aba6ef1173cba81154e6503141d826e70eb4f4111b472792f62d91f125fb53f6055d1', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:02:17', '2019-12-23 08:02:17', '2020-12-23 13:32:17'),
('16d16e87ea3b38d3f70ec3477642a7f3070edd2d517debc99d937858b05a85d53689f439b03a9b53', 55, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:23:14', '2019-12-18 03:23:14', '2020-12-18 08:53:14'),
('1751c93ca5e36abe41aff44433060d1bbb64eaa21825a4cee3c54a4df956d306f6cb5e9c2b690221', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:37:26', '2019-12-17 09:37:26', '2020-12-17 15:07:26'),
('17a843a0ff8dd8ff065c0b18cec30ea15107f87ea34c9bbb6db3da168904756f5068c16406d71889', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 05:36:23', '2019-12-24 05:36:23', '2020-12-24 11:06:23'),
('18c5553fc9a1f6fff59de24bc07a67cf758588de03b679902c108c4684d9318480e33443bc09df99', 92, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:19:17', '2019-12-20 07:19:17', '2020-12-20 12:49:17'),
('1a0047dd112a2fd2d02fdfca3ca18c1053b44f608d2da7f96eae5122ba8105cee8d3113857e5ffe4', 68, 1, 'Personal Access Token', '[]', 0, '2019-12-18 07:37:56', '2019-12-18 07:37:56', '2020-12-18 13:07:56'),
('1d3039c8bd6889466d6d22891fd268d8ccb5f6d930bd81bdd8c5535f5774f461b1945c6bf3717749', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 00:29:19', '2019-12-24 00:29:19', '2020-12-24 05:59:19'),
('1eeac3a95c672df86f37cb8b3d1b20a8fb4356bd79be3d4d3366dc58dfdd178b539167e28ee5540d', 90, 1, 'Personal Access Token', '[]', 0, '2019-12-20 06:38:07', '2019-12-20 06:38:07', '2020-12-20 12:08:07'),
('1fea7217fcca6329da2fe83bad7bde83b0676d396c059038d5be146e53fe964f3bcbd49467d55f99', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 04:27:08', '2019-12-24 04:27:08', '2020-12-24 09:57:08'),
('204e79d78366a7bf6eb87e7d6847f5ca0b072b88f85f210f2db176c4c14354fe84a451f01b9ed399', 36, 1, 'MyApp', '[]', 0, '2019-12-17 09:51:00', '2019-12-17 09:51:00', '2020-12-17 15:21:00'),
('2112f755db2f77f19b1e04ad39171231328a65a2b3a0d5b16014d42fdfc2c82b24127f9ae9d6c01a', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 08:57:27', '2020-01-02 08:57:27', '2021-01-02 14:27:27'),
('2240d249113fb13faeca5043b3401aafb56d78f2f93aa8c69e3cae59a91559c2b49281ab04b8d843', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-24 05:02:36', '2019-12-24 05:02:36', '2020-12-24 10:32:36'),
('23049188aa0e58508c1222284e3f1deacb867e10aca700d4399503894b89dc39140f348ff4e689d4', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:14:53', '2019-12-23 06:14:53', '2020-12-23 11:44:53'),
('2324b9fe9d543a8e94549a4a4460673b0c55b52c5afd05f76307a5457b7f348619ea09716daf2b53', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:54:46', '2019-12-18 04:54:46', '2020-12-18 10:24:46'),
('23c6235a9d81dc56b65142eab391f648cd078ced9ff781f38db5a55c0a3f962cffe1cd05cf335190', 74, 1, 'MyApp', '[]', 0, '2019-12-19 03:37:44', '2019-12-19 03:37:44', '2020-12-19 09:07:44'),
('23ed6c22523d1f34b1ecbf57b5593b56e33496014a22778ddd9c8ae54cf72a201be5d5c37b0f38a0', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 01:13:59', '2020-01-02 01:13:59', '2021-01-02 06:43:59'),
('24ba30de4cbc8f9ebc498ab453b7138bc2f62a93db8dfab838a083fa1cff72b65f0b3df62c818aae', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:48:59', '2020-01-03 07:48:59', '2021-01-03 13:18:59'),
('24ba90928b97bc5bd22a0aea401dc348d8379d19bf387bc89bd2e9f7154ff376a766c122f5fd9ede', 22, 1, 'MyApp', '[]', 0, '2019-12-17 07:45:09', '2019-12-17 07:45:09', '2020-12-17 13:15:09'),
('2615b1d7e5fd186b474f4eabcf02d7ed815fc69c9d7fba01084b7e8d8feaae70efc165d50f535278', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-24 04:44:35', '2019-12-24 04:44:35', '2020-12-24 10:14:35'),
('29fa0dd641158c77cb844217387b21e6889aba4c30720831d8a54f3ec798ad54e262b6c090b0f28d', 90, 1, 'Personal Access Token', '[]', 0, '2019-12-23 01:06:11', '2019-12-23 01:06:11', '2020-12-23 06:36:11'),
('2bffa8b9f7841da2ead5d7fa2a9a6544221adffd539d7464fec5001141579680157aca385bc7f5d7', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 00:02:37', '2019-12-24 00:02:37', '2020-12-24 05:32:37'),
('2f0d40796b951cb7c308c0daf4aa123b0f1543d04b68639fcf5a14049e52b179bc4ca8b20b4155ea', 10, 1, 'MyApp', '[]', 0, '2019-12-16 09:04:58', '2019-12-16 09:04:58', '2020-12-16 14:34:58'),
('306cb384d3ca7f22b08ddb3fd4be90a59665afbaa4564ab900c0ca1ba6a2ded124de40139e514556', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:32:15', '2019-12-18 04:32:15', '2020-12-18 10:02:15'),
('344d1ca5c5896788e95dcd68c72d4f8894bc5b7a154a25bbd31c7a785036d7915ff24e5d61594b99', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-30 00:13:10', '2019-12-30 00:13:10', '2020-12-30 05:43:10'),
('36471f40ca94fbc432b5c5b317cdd9312aae623b9cc388c89f14a4b39128d72ca3221781610c7c5d', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:53:18', '2019-12-23 08:53:18', '2020-12-23 14:23:18'),
('379edb1b102712ca0a4b4d7f19d32c0f461090f326a6fb8dbdcf3bb6d4714212149f06301f3dd4ae', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 05:38:58', '2019-12-23 05:38:58', '2020-12-23 11:08:58'),
('3a41a1fa7f7b661f9143ca97fc127587bd9a1ecf8afb5667edc7e6dd00c25883a02475440c91f9fa', 94, 1, 'Personal Access Token', '[]', 0, '2019-12-23 03:57:05', '2019-12-23 03:57:05', '2020-12-23 09:27:05'),
('3b0a951f9234b3892d160971624355a611293ed2802946775313ff7d617995dd78b2c6df6ec7ec5c', 61, 1, 'MyApp', '[]', 0, '2019-12-18 05:05:31', '2019-12-18 05:05:31', '2020-12-18 10:35:31'),
('3bac160b308a21ee312823337d89cf9f6d2bee5b5787e8a31c4de41888b8884203e02dd19e55a8ee', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 05:16:09', '2019-12-24 05:16:09', '2020-12-24 10:46:09'),
('3d4384778910327363bbbb9a2831861cee412131b741386273f9e6ab2d1eb2c0e04a4de072dacffe', 73, 1, 'MyApp', '[]', 0, '2019-12-19 03:34:54', '2019-12-19 03:34:54', '2020-12-19 09:04:54'),
('3dd88abdcdc67ec8947a599a99222015696de0a448ea6fcb77c00f04cf2373dcbb7ba44e85821614', 91, 1, 'MyApp', '[]', 0, '2019-12-20 07:15:29', '2019-12-20 07:15:29', '2020-12-20 12:45:29'),
('3de366fde573dd9258dcfb3741b0b383869706739bff041a84b1799536a326728c03f7ee7b2b0579', 69, 1, 'MyApp', '[]', 0, '2019-12-18 07:39:22', '2019-12-18 07:39:22', '2020-12-18 13:09:22'),
('41448267f5b90ec081aec1aa5ee9792f4e70ca6d12aa79d0c42fbab2e94022383582daa43949cc6e', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:38:47', '2020-01-03 04:38:47', '2021-01-03 10:08:47'),
('41487d3402b75d27c2be5cb9353da4c2f7c3147cd5cd83f71c8332063129d2a6a2612fe490bef3ae', 65, 1, 'MyApp', '[]', 0, '2019-12-18 05:48:10', '2019-12-18 05:48:10', '2020-12-18 11:18:10'),
('42897a704178fbc707acb5e53a0e2d70a7722286a77cd4e27e1630bf7185950c7070fad8941c115f', 41, 1, 'MyApp', '[]', 0, '2019-12-17 10:18:02', '2019-12-17 10:18:02', '2020-12-17 15:48:02'),
('485c88ce1fa23208e1ebaf95bc4d86fd5d83b0865314f2eb9170d26e2982ec7b7777cd84baca7e2e', 93, 1, 'Personal Access Token', '[]', 0, '2019-12-23 01:21:04', '2019-12-23 01:21:04', '2020-12-23 06:51:04'),
('485ecec58f131c097020034fbec74e518428e7450cb08050b3c963b32051ac89bd007d2d4c757790', 38, 1, 'MyApp', '[]', 0, '2019-12-17 10:09:00', '2019-12-17 10:09:00', '2020-12-17 15:39:00'),
('48f8955ae5301719087132b3a7e1d4271a05e4061fa422015ae38157f868128f136383dbc32696ab', 92, 1, 'Personal Access Token', '[]', 0, '2019-12-23 01:07:56', '2019-12-23 01:07:56', '2020-12-23 06:37:56'),
('4c1bd693e976bd4cebe3fc3f48669fe010adba8c50448323fe5d1f0d95c4ea2883fb9aab73a8e01b', 95, 1, 'MyApp', '[]', 0, '2019-12-23 06:15:58', '2019-12-23 06:15:58', '2020-12-23 11:45:58'),
('5035369229b763ba11a2cce4035c7c828a5706fb6a0d93302fe788d88384176a50c59d7ae15037da', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:24:00', '2019-12-23 06:24:00', '2020-12-23 11:54:00'),
('50b01f16d448880c1589bafb457a8cf483c10e2321cdb6e821ff36f7284f60ba0885e15ce85dcd2c', 33, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:33:15', '2019-12-18 01:33:15', '2020-12-18 07:03:15'),
('50f470d5892ffc6f022425cbac0271bf6ee22ada860a53f44336ee1124e9eb1b25bdc0316c37d869', 92, 1, 'MyApp', '[]', 0, '2019-12-20 07:18:47', '2019-12-20 07:18:47', '2020-12-20 12:48:47'),
('523f52e5d30cf95c40e89879f6ccef7af59ff9f7fc6b9e5f033023f77af411c62640d1f11f59d82e', 56, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:34:41', '2019-12-18 03:34:41', '2020-12-18 09:04:41'),
('524cc538f371330de688eb1a2e1d1896dc227ee1bb360e69b1b8675da25091989c64d63c7fa37fc8', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:57:18', '2019-12-18 01:57:18', '2020-12-18 07:27:18'),
('526afbaf4ba18ea699ff826a0cd5e3d5606e4b9f505a11e3ea9e0dfe27a02b4e19e1c18863e17838', 90, 1, 'MyApp', '[]', 0, '2019-12-20 06:37:55', '2019-12-20 06:37:55', '2020-12-20 12:07:55'),
('527a04bfea16eee656a89ee7f1b7256217b5445fe80202bb6845e967ead90b7df4de7e7991b8735b', 91, 1, 'MyApp', '[]', 0, '2019-12-23 01:05:25', '2019-12-23 01:05:25', '2020-12-23 06:35:25'),
('52d7c45cb966260687668f7c84a6a26634bbb29858c63ed2cb7db20a188a463fb84f2d093f5a312e', 34, 1, 'MyApp', '[]', 0, '2019-12-17 09:49:23', '2019-12-17 09:49:23', '2020-12-17 15:19:23'),
('5303393eeaf71ae077dc95284d2cc3f42af80eedbd106fe6f1cab388ad23bad7097d08d3d687c04c', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:45:49', '2019-12-18 03:45:49', '2020-12-18 09:15:49'),
('542efc5e3c748ddb011ec8b1953f20525e11d2c7f182ba46a7f71a07fc1c77f8d6029249bd3579c3', 69, 1, 'Personal Access Token', '[]', 0, '2019-12-19 07:49:17', '2019-12-19 07:49:17', '2020-12-19 13:19:17'),
('56759a25dc44722ddee8c605741ec4c423d8d7e507fd3dc484744c89b6350a78e00d1bd4141d8a2d', 3, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:57:12', '2020-01-03 07:57:12', '2021-01-03 13:27:12'),
('59880fe4dc72ac55fc9d87a2a0173aadb9b35488934d65695ca21f653c5e3cb6b00070deb1a71f31', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:04:31', '2019-12-23 08:04:31', '2020-12-23 13:34:31'),
('5a138f921e0352305a358532178be4806b838486b9b7df2c86ef2de8a66d325f121753da6520ece3', 39, 1, 'MyApp', '[]', 0, '2019-12-17 10:16:44', '2019-12-17 10:16:44', '2020-12-17 15:46:44'),
('5c96a29a9d019ea420fc9c32a448a0c4dffa75dda18803bba92dce0fe792b9be9348753ba5c5b3c3', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:25', '2019-12-17 09:33:25', '2020-12-17 15:03:25'),
('5d4f5c79f73cb3a617ff89d565561737ee8d5438b5612bca5362a4fb098d400df1dd0d16e35c5e55', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-31 05:12:01', '2019-12-31 05:12:01', '2020-12-31 10:42:01'),
('5e58a9f62eb90c38548daededd80618aff7e8d17d402dbb053f20d15319dd73067726f93e5cae9a8', 104, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:59:46', '2020-01-03 07:59:46', '2021-01-03 13:29:46'),
('615372cd9285cf3099da98bfe8f099875bf6894715436c75f307288916000a21da427bd32d4172df', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:59:50', '2019-12-23 07:59:50', '2020-12-23 13:29:50'),
('622ce31d65e2e1fe318f34b54c0548e1d81e6f3e79717d5e049251e5743b812e71bc4c45fb4b4fe3', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-01 23:34:00', '2020-01-01 23:34:00', '2021-01-02 05:04:00'),
('62475c7fd4fe4c000bf9cb4a4764ab3fcc07fc008334b57d6a18409398b42fef79e9da35c524b242', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-02 00:53:00', '2020-01-02 00:53:00', '2021-01-02 06:23:00'),
('6341ed5c3045cd6c2403a432951bcd7863d679fe9d8e038de437bb437ac489a24b72c93b6ecd655f', 9, 1, 'Personal Access Token', '[]', 0, '2019-12-16 07:31:18', '2019-12-16 07:31:18', '2020-12-16 13:01:18'),
('63c9196b025d8edfb32adc8085105c8439b093d4ca1b96467322ed821d6c98b1405d54e26e0f4c0c', 63, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:23:01', '2019-12-18 05:23:01', '2020-12-18 10:53:01'),
('66a7883fe6c25da6eb815c8e631fb9048831a073abb7f34444bf1d9e1f2471cfa1bf4173dd927696', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:03:52', '2019-12-18 04:03:52', '2020-12-18 09:33:52'),
('686c5264b9c86cd07c10a5daf35e422a15c4e3eb5947b79967e63a6acf56a3f4f8711bcd3350f5ca', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 01:40:21', '2020-01-02 01:40:21', '2021-01-02 07:10:21'),
('68a0f8b2bd7ca422a7ba9b09425522ab5a409aa35993b58960113c93d7597e7cc3b0db39a2244a80', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 04:34:54', '2019-12-23 04:34:54', '2020-12-23 10:04:54'),
('68a7d0e908966f84565ca53ce39bb6ff6713dbd065c4212044a48cee20d5143624eae49e0ebca0ec', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:27', '2019-12-17 09:33:27', '2020-12-17 15:03:27'),
('68b10f08242727563b2c416b8d625a8199eca891926c6cd7a6f7f293bb253774bff46b6f76ad3128', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-03 08:07:24', '2020-01-03 08:07:24', '2021-01-03 13:37:24'),
('6993c9df2f0c3ad24577124b35b4161778a24b7163ea690fcd7f68b2e47072e5cc3343a7da50bf0d', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-24 03:16:03', '2019-12-24 03:16:03', '2020-12-24 08:46:03'),
('6b64fa142aa97135d923246ff7826429a5e3873a0de6f988addee42324d4a30a982a46b7bfee6871', 54, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:13:05', '2019-12-18 03:13:05', '2020-12-18 08:43:05'),
('706b6fa9e12fbb1333c629691f60eb093709a7797b83a402f668911603e43e19434842fd44e5d27f', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 01:12:08', '2019-12-24 01:12:08', '2020-12-24 06:42:08'),
('709afddc3a93b01c6fd6409ac6c2438c035636ef51aa0c17273aa8c7ae27da27ff1a485da2239a56', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 08:52:22', '2020-01-02 08:52:22', '2021-01-02 14:22:22'),
('70e93db83bd4b21c82ce23c12cb0dbb75e4569057a6d1327f774a2f1f84d8fa02cfb6c7a918472c3', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:09:09', '2019-12-23 08:09:09', '2020-12-23 13:39:09'),
('723ef8130c568fd2e7b7cbfa03bcb878a6357a5d18c8c535484cf756d000f9483f596b466cb091b4', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:18:16', '2019-12-23 06:18:16', '2020-12-23 11:48:16'),
('72864f3cebbc35aba22339f57ad0d34ece57435fc36187347063bf5154b98a52c821c30756fa8bfc', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 23:32:21', '2019-12-23 23:32:21', '2020-12-24 05:02:21'),
('74cc32f97c2019663ce88090bf391b0e592e13a2f24c51ac4998c17219a62e33fbecea3a262d4c24', 35, 1, 'MyApp', '[]', 0, '2019-12-17 09:49:41', '2019-12-17 09:49:41', '2020-12-17 15:19:41'),
('7789a763a443ac96a2c691956cc945aa0c593a1e6b798fddf698711c64d2d7c5590cf303b7ef4a29', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-31 06:27:43', '2019-12-31 06:27:43', '2020-12-31 11:57:43'),
('78b31f2d33b0f4128e2e479cb849aeb9682d466d2364a6688e6342383839dd94d5eb799750495db5', 94, 1, 'MyApp', '[]', 0, '2019-12-23 03:55:19', '2019-12-23 03:55:19', '2020-12-23 09:25:19'),
('7962039404219e36bb7262569e3360dc6dbcb59f143c7ab4cecc004a8f1368bbe5c4b634645b95e4', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-27 06:12:16', '2019-12-27 06:12:16', '2020-12-27 11:42:16'),
('7b1757bc4d311971249002495d2d0b4f90f4c97fe6e4fd31bb911730c887f2bdfbf67a10c54eb5b6', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 09:12:35', '2020-01-02 09:12:35', '2021-01-02 14:42:35'),
('7b584f527e25c0630b7b65ff0db300b6978e77609f09f7c0e963f5ac82ecfe93b0446e46330736a6', 56, 1, 'MyApp', '[]', 0, '2019-12-18 03:29:00', '2019-12-18 03:29:00', '2020-12-18 08:59:00'),
('7ba30e5f479ed598b6440c422d86ccd616c5bdf73201ef7f9b2f0cee5d65aec379c6696363c0e2f0', 72, 1, 'MyApp', '[]', 0, '2019-12-19 02:01:34', '2019-12-19 02:01:34', '2020-12-19 07:31:34'),
('7bd5df8cf91373d9e3c7810fd522ea178b60edaba3733c7b43eaba2e8191e95af9ed740cbf5842c6', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:23:13', '2019-12-23 08:23:13', '2020-12-23 13:53:13'),
('7bd9be2502ee8af9299b3da5cf7ab0cdd9f48b69de108318eb3f59909ed9657563bee2223f649f15', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:56:06', '2019-12-18 01:56:06', '2020-12-18 07:26:06'),
('7c0f918ad86cd31fd4264be5b08c4e3e7684a4747af8a8a87b431f0c037d77b00af92f90e68b73a1', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-27 07:24:58', '2019-12-27 07:24:58', '2020-12-27 12:54:58'),
('7de649beba6173afa51cd360e44da81c9e4857c51c7926ce55a4c14d3909ccb77509a1e5801b7780', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 05:07:17', '2019-12-24 05:07:17', '2020-12-24 10:37:17'),
('7f9ece1bfca6e7acef30d25e61f5d92535a5d6b369abcf591a03f43d791559be33f2f806215ab115', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 05:07:20', '2019-12-23 05:07:20', '2020-12-23 10:37:20'),
('8043abbee995868bd484635bb11b9d619865a57febc56f51c0f4e1a6636a420b7c4fe728be1c4e17', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 00:09:30', '2020-01-02 00:09:30', '2021-01-02 05:39:30'),
('83ddbeede9d68c2b69dda5d87739f37a7b94968f48f67226b343e29e968a238a4345e2294db8ff6a', 101, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:54:29', '2020-01-03 07:54:29', '2021-01-03 13:24:29'),
('8485ba5ab10cbcfdfb7e07af7d7e12deec57ffcfa5b200971af03962528bc272269bb5d287c6a48e', 90, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:11:35', '2019-12-20 07:11:35', '2020-12-20 12:41:35'),
('84adeb5669ca6fb5286a3df9bf1cc123ea01baa458769be966375019dac484b11f0b71e0bd58ec32', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:17:51', '2019-12-23 06:17:51', '2020-12-23 11:47:51'),
('86d871908cf5cde33ae08690ae460eb5ffe6c54de0fe6f1382d971c04a7a705ef37b73051445fcb3', 84, 1, 'MyApp', '[]', 0, '2019-12-19 20:09:39', '2019-12-19 20:09:39', '2020-12-20 01:39:39'),
('8861a64b83900d918ec74a6b807384b1285a4bb30b7a1850fe6a5588636adebdde1e66ee9419fa95', 60, 1, 'MyApp', '[]', 0, '2019-12-18 05:02:49', '2019-12-18 05:02:49', '2020-12-18 10:32:49'),
('88e28bcb84a9dce9524dce116f9d38fc5e365f214665f01db58c73d368937c168475ba0bb3987556', 82, 1, 'MyApp', '[]', 0, '2019-12-19 07:11:26', '2019-12-19 07:11:26', '2020-12-19 12:41:26'),
('89f527d3c3e46d58efcc12928833bb740ac1160b48f7e31f1a239e8914716a0ce64900a51734ff58', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:38:55', '2020-01-03 04:38:55', '2021-01-03 10:08:55'),
('8bd1bb6b1d0c0281ac4d4e85d9ebfbf8c5abd400f760ea281240d12820097ced4ba1d90f0566fd98', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 03:22:17', '2020-01-02 03:22:17', '2021-01-02 08:52:17'),
('8c46c28bfeaf2721f9668f747927f2e8166158cc41d2b11e5938331428d20e0e1170a0f1dcf9e432', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:42:48', '2019-12-17 09:42:48', '2020-12-17 15:12:48'),
('8d2c26044c7f08f186f38bfb6241f1c9e210d171b5b2a263d86905fa9ff93b7ff54e45a86a39576a', 92, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:54:01', '2019-12-20 07:54:01', '2020-12-20 13:24:01'),
('8db1d768e67a28013236ed33a6f80535ac948c2a81e4c4660d8d5dc7c86ba9a4cead2cc3117da11d', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-27 06:12:30', '2019-12-27 06:12:30', '2020-12-27 11:42:30'),
('8f833361ebb6c2cff021393b8106b86635ca0e3ba4e85f1a4532a1ab17a4710389e8775b02df0dff', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:35:55', '2019-12-23 07:35:55', '2020-12-23 13:05:55'),
('92bef1d219131b26e6d872a948ad80716d8198b74f7a6d4bcdc641e23a9bef354c1b941d1b4fb04b', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:58:34', '2019-12-17 09:58:34', '2020-12-17 15:28:34'),
('93b9116ae1f414ab7bbb5807d20164482eb86b2438cf21ed5cee6d936af1f5aa29682260e661d642', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:19:01', '2019-12-23 07:19:01', '2020-12-23 12:49:01'),
('94e23d0c32c48b05c76d5a93de0d60a131965dc30b47ede908bcc211200631c7e20688b5942ee86a', 33, 1, 'MyApp', '[]', 0, '2019-12-17 09:47:26', '2019-12-17 09:47:26', '2020-12-17 15:17:26'),
('94eb80010f0b8c0baacfa47c6cba60ecd05fe4b16f342756abb489f2993802d9b6ae72db0748c16d', 68, 1, 'MyApp', '[]', 0, '2019-12-18 07:37:28', '2019-12-18 07:37:28', '2020-12-18 13:07:28'),
('9920de35a29503c058b66e8d1ed2a23265ec9b9445745bd6f6df24cb45e634cd50fb2b75319760df', 90, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:04:22', '2019-12-20 07:04:22', '2020-12-20 12:34:22'),
('99b8b0fbbd5fb97497f27af3d5afaec7908940c7b71e286045e6ff4a1c26d0d9ea8a7f85d3e5ff3c', 37, 1, 'MyApp', '[]', 0, '2019-12-17 10:07:51', '2019-12-17 10:07:51', '2020-12-17 15:37:51'),
('9b6c3a41e3c5b0f89974e588db46083efe00d5113ee081ca40e137d6b85a5dd8eab21324612ff80d', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:51:40', '2020-01-03 04:51:40', '2021-01-03 10:21:40'),
('9baacf7b457f14a98c6ac8f6a51652f69e6b79c4230f6b1c8996a78d2d01e9dd04187828f1f8c486', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:49:55', '2020-01-03 04:49:55', '2021-01-03 10:19:55'),
('9fa3286643520da652b808d07bd65e59d40f489332406e7dde425bed26714ca2d706fba23346e0a1', 65, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:48:28', '2019-12-18 05:48:28', '2020-12-18 11:18:28'),
('a0784311e77d78af98b7e936adcaf673d7b9d23b296767f2d9b67075160a1194fc2dd8ab8cdeb976', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 00:13:22', '2020-01-02 00:13:22', '2021-01-02 05:43:22'),
('a13bb99e324bc803940c37e199a5e039cc45dda67ad64c72e0902edcf84fb04d7d83532f2a54b64e', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-31 01:03:17', '2019-12-31 01:03:17', '2020-12-31 06:33:17'),
('a4ab6180ba8828bde25a2fd523b472831ff224b36020be23b2421b5fe1c2a795ce3c27bf1530c9a3', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 23:50:24', '2019-12-23 23:50:24', '2020-12-24 05:20:24'),
('a7c0c958b4646db4043b8ef526052d913cf8ebf357b79f88f1fab1bee49a8c764a378b287b5b86e0', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:52:03', '2020-01-03 04:52:03', '2021-01-03 10:22:03'),
('a98004710e350f9e335c15bf441e04e0236ce73ac5b56fe590a2a0ce4eefc78df211799ee29ae902', 66, 1, 'MyApp', '[]', 0, '2019-12-18 05:59:52', '2019-12-18 05:59:52', '2020-12-18 11:29:52'),
('a9f2f1906825fd3a0bf11cd42b023c37312a19fa40d7d8893204c94074cf5767ac2a9996c4c6d463', 1, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:52:35', '2020-01-03 07:52:35', '2021-01-03 13:22:35'),
('acab82bdae328d6e01365643040cec7a49b69cbe8037bca926f8cd2ad07816dd75b2d600a862446f', 56, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:34:33', '2019-12-18 03:34:33', '2020-12-18 09:04:33'),
('add7dc3ae2c3a85d41d3a37f087625d4807fd2b7e70b6e4b2af3378a0299e2c053b62244c6376d19', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-27 05:57:42', '2019-12-27 05:57:42', '2020-12-27 11:27:42'),
('aeddac8deddf656a232ff8249cf656f3d59db73fab3da88442c2678e3d24f5e3cd6a6faa8f18c9b0', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-23 23:47:00', '2019-12-23 23:47:00', '2020-12-24 05:17:00'),
('af0ab7f7e762cbceee0734bdafd30b88702c7658f08505b2f7128ddf7c673bcf8c334a3104df3ed0', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-02 05:10:19', '2020-01-02 05:10:19', '2021-01-02 10:40:19'),
('b0d08ae3202ea008588ac4d6103a3fb581a5c0dc0f3b69f8783f570b7e330bcc50e9f029f4021429', 101, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:51:30', '2020-01-03 07:51:30', '2021-01-03 13:21:30'),
('b10b92fefc3fc322762854ad943424fd5c32a11c2e084a565ecde0e65cc1f80dd0cab56e47073573', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-31 06:28:13', '2019-12-31 06:28:13', '2020-12-31 11:58:13'),
('b12de2b3b5dac51694150ec342ee23293abdf9ed37c0c2269d2dc5d23da7d29983c3d20f02c6870c', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-02 09:03:21', '2020-01-02 09:03:21', '2021-01-02 14:33:21'),
('b1a81c66a70afa3289257fc95220ac47445606151b7aa52225437487e9b4b930a6ae8576502bcdd9', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 00:24:51', '2019-12-18 00:24:51', '2020-12-18 05:54:51'),
('b229ffd461d7badbf53852d390653dece9f5ba4ba058a07080e1508be45efe2509c25e51c1506d8f', 64, 1, 'MyApp', '[]', 0, '2019-12-18 05:41:10', '2019-12-18 05:41:10', '2020-12-18 11:11:10'),
('b55c3e2bc3be000b2782243c293d3c6f0f4bc088e4f093a2378fa2435f4e3568ed45cca0f58245de', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 08:14:48', '2019-12-23 08:14:48', '2020-12-23 13:44:48'),
('b5e93acb1b379076a2eefa88502d2280f9a6b7c5d65589815cbbd0828371338ee651664c6335eb6d', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:34:15', '2019-12-18 04:34:15', '2020-12-18 10:04:15'),
('b90f68c47295b5b1f7b88897c6a615b48e0ced7e43bc902587d1f54a8a1ffc40be3e764e3cc99db0', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-24 08:22:42', '2019-12-24 08:22:42', '2020-12-24 13:52:42'),
('bbd96d389c9f6eec115647818567f74caca4e90bbe76a7bd85bdd07c304617ea4980395e5a479d70', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:20', '2019-12-17 09:33:20', '2020-12-17 15:03:20'),
('bc23966b98fe6e03d75f3485e8c503d66c32a0a4f92d5285bd63fa61b4bd6b3947bb4c1c35cb6f6c', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-03 08:00:22', '2020-01-03 08:00:22', '2021-01-03 13:30:22'),
('bd0cb29df304221e191f12362e7c99ee0a24cddafb742ee18e5a1e77c36f991ffe7c0938004d8210', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 06:44:37', '2020-01-02 06:44:37', '2021-01-02 12:14:37'),
('bff72bf8676cd1f8270fb1a6e9b2eb5b0e4f14cef8f4387ce24a2a73d7c89b3f52c3fb73c3cab5e5', 63, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:25:50', '2019-12-18 05:25:50', '2020-12-18 10:55:50'),
('c2f25011d8a23507593568df2c96c360eaea86c4c527e60b815bcb17d2db51b120f7cc8cea53086f', 96, 1, 'MyApp', '[]', 0, '2019-12-23 23:46:47', '2019-12-23 23:46:47', '2020-12-24 05:16:47'),
('c452e49c7c17f24b8923f89f515dc831c1de82979ee2c821e62ccce2dff66069696ecc5d384d97bd', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:38:40', '2019-12-23 06:38:40', '2020-12-23 12:08:40'),
('c4f38ecfba9f780a2064c575c833dd3cd4fe8fe07d85ea36f15036c935e4c7f0301eddc5eea267aa', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:54:54', '2020-01-03 04:54:54', '2021-01-03 10:24:54'),
('c651c417f04081a3516e1df889655d6c2fd40ef06caef6f359897f02d3f7b9481dc9698b10a242e7', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:39:17', '2019-12-18 01:39:17', '2020-12-18 07:09:17'),
('c7b2626086dd09c6c20b741876ac5ce1838fd4c7a5bbbdc718a40a3a065cf357bf5dffaaad8f5c8c', 19, 1, 'MyApp', '[]', 0, '2019-12-17 00:05:00', '2019-12-17 00:05:00', '2020-12-17 05:35:00'),
('c87ad568af91b3226bc243e702a0ba86571fd4385d6cb432438132d9811aba0e4f719cb0a7fa9f3d', 54, 1, 'MyApp', '[]', 0, '2019-12-18 03:07:16', '2019-12-18 03:07:16', '2020-12-18 08:37:16'),
('c9858aba8a58982d9dff32dacb27be96f14caef5c1620c9d05521686568b3d02a38d1eec436dff8c', 11, 1, 'MyApp', '[]', 0, '2019-12-16 09:05:42', '2019-12-16 09:05:42', '2020-12-16 14:35:42'),
('cd5ab342838ff7aa44ddab449c2698564cedc33fd282b7ca613eefb159d84263022cc148b25a04dd', 69, 1, 'Personal Access Token', '[]', 0, '2019-12-18 07:39:51', '2019-12-18 07:39:51', '2020-12-18 13:09:51'),
('ce51919838b12eff02acaca4c4117dda9a99b42943bb1c6baa1ffb729c979cf0e50668dbdfafd99d', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 06:50:02', '2020-01-03 06:50:02', '2021-01-03 12:20:02'),
('d083538b9b34763a82f6f7af0dd060a5c22206f1e0d04dd39bec2588e72462982332f566654c311f', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:38:47', '2020-01-03 04:38:47', '2021-01-03 10:08:47'),
('d0870613aa1701ac8c86bb0a2c033ce1d4317d6111f438741c1035f30d8532dceda37a3aa9c39c0d', 28, 1, 'MyApp', '[]', 0, '2019-12-17 09:32:01', '2019-12-17 09:32:01', '2020-12-17 15:02:01'),
('d27150f8a8d5f391dfcad0206123eaa468c16f871da009792efd6e3f5f642bc6d52cbc3cf98a80ab', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:43:56', '2019-12-18 03:43:56', '2020-12-18 09:13:56'),
('d274e2b92d101aabc5eb8149caaca08994e905b9a9ba9d2d9d3b27a2e80f12e3c2f49603c1a39395', 75, 1, 'MyApp', '[]', 0, '2019-12-19 03:39:24', '2019-12-19 03:39:24', '2020-12-19 09:09:24'),
('d316c0073d25fb9d667923e1c2cde44aa0c6d49507e42fc026844a87399e910bf9e1ae6ecbcb215e', 67, 1, 'MyApp', '[]', 0, '2019-12-18 07:30:29', '2019-12-18 07:30:29', '2020-12-18 13:00:29'),
('d3560456ef449cc23d121f1edb69e69a277258470a27c499505af7f233f0a6198ee3b7f45b672493', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 19:38:47', '2019-12-23 19:38:47', '2020-12-24 01:08:47'),
('d3f6f5d27f2bfe2b6d33b25a600365c5ed77fe8436d89d9813dd6ea1a8ac8336e695b2a0b2d57ea0', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 05:37:46', '2019-12-23 05:37:46', '2020-12-23 11:07:46'),
('d59a22fabdf1f0d41e6ea381a978ca718401bbcfc7e63aac38a5d4ff5026f1ad5fdac22dc39c20e4', 95, 1, 'Personal Access Token', '[]', 0, '2020-01-02 04:37:46', '2020-01-02 04:37:46', '2021-01-02 10:07:46'),
('d5b8552c29dcf29d409ec6dc009fea1650313783073a789af458826c83e5972569985cb3f319ef41', 89, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:03:46', '2019-12-23 06:03:46', '2020-12-23 11:33:46'),
('d797007265f354020a54d714ba61e71143536be5e91b1902492bb42d1dd45bd1ffc2c50f2ab13505', 92, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:56:08', '2019-12-20 07:56:08', '2020-12-20 13:26:08'),
('d825d005a904e1ca60864ffbbaf9b475f2778d45c2129e926304b6dd19b78ecd22af371d19e90b4e', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:48:25', '2019-12-23 07:48:25', '2020-12-23 13:18:25'),
('d8921dabb75f797dd46e408ef02c5fd16d94ef671381c2318a7bb4fb0963d3dbbd8cad48db90de08', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 07:43:55', '2019-12-23 07:43:55', '2020-12-23 13:13:55'),
('da001c5793952a89d20124540683a55b34d4b719c3000f3d360cadaa7eadfe07867411a134b68752', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-23 06:16:04', '2019-12-23 06:16:04', '2020-12-23 11:46:04'),
('dc10c8b9b85212352554d959e86d8d665883c964fda1f9eaf24db8316104672cf740a812ca721ff8', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:39:13', '2019-12-18 04:39:13', '2020-12-18 10:09:13'),
('dda4a36fac74795edd5f1b85cce5d1e0c995d1e4727f85b312afe567813da6463d11613b74c184a4', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:47', '2019-12-17 09:33:47', '2020-12-17 15:03:47'),
('de02639fc2b02b9494fa398705b41d7b3a2f0beb20372174281760b8427f56792742a37ba7d81a78', 58, 1, 'MyApp', '[]', 0, '2019-12-18 03:41:53', '2019-12-18 03:41:53', '2020-12-18 09:11:53'),
('de2adf10691c20680eefcb1df980451fa51098ab81356392829c6ce8138ef516c29a20887bbd7739', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-02 03:30:55', '2020-01-02 03:30:55', '2021-01-02 09:00:55'),
('df25e0b58db9b43aeeef9cbfe396ebe9dc7573b5ea08fba856d5bea79274b692cee415fa0c99eb11', 94, 1, 'Personal Access Token', '[]', 0, '2019-12-23 03:55:31', '2019-12-23 03:55:31', '2020-12-23 09:25:31'),
('e34836f08e254932b6899f4550adb09ef4134c24d25b055cbbc86b17f154aa056b1f07ffa40a2f67', 93, 1, 'MyApp', '[]', 0, '2019-12-23 01:20:58', '2019-12-23 01:20:58', '2020-12-23 06:50:58'),
('e3494c48a7a28595c0d954dd0cb6fb7ebbdd52aec2d74ef01e04979c9607338f533b6d3c489aea00', 3, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:57:44', '2020-01-03 07:57:44', '2021-01-03 13:27:44'),
('e3dda95808752a78969ea0376ef9e9f0daf424af9238604e0cf91ccd096d70679298ed229d35cbd6', 12, 1, 'MyApp', '[]', 0, '2019-12-16 09:05:56', '2019-12-16 09:05:56', '2020-12-16 14:35:56'),
('e4cdd4b24282e415fd01367ab9e1bd41f8f7175af1c2e17cf6f59eb61c2b2a3b01fa32987ec53a91', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 04:50:42', '2020-01-03 04:50:42', '2021-01-03 10:20:42'),
('e4eb278cb51c5f29f2ae2f3ff66e2cc8b148ccb1a3073b4c20a0cb70ab60a6cc76d884754f9223a4', 90, 1, 'MyApp', '[]', 0, '2019-12-23 01:03:44', '2019-12-23 01:03:44', '2020-12-23 06:33:44'),
('e52d2e4142bc519a3975f8a75a51f82d9151464ab9af964d7e2acc9728a9ae396ee25f9260d44da9', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 04:49:22', '2019-12-24 04:49:22', '2020-12-24 10:19:22'),
('e54ff10673bf2312e3586fe53a46136bf76e3385aaa80de96a2734690d15bd5971b31df369347e03', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-03 00:46:44', '2020-01-03 00:46:44', '2021-01-03 06:16:44'),
('e5abd5b8f9f6a0bbeffc790bdce1ee87955b9d2715e5974de33191833900a8e975fd22d23817eaba', 92, 1, 'MyApp', '[]', 0, '2019-12-23 01:07:44', '2019-12-23 01:07:44', '2020-12-23 06:37:44'),
('eb512b2298ce732e1e132488197c2a1054c1890ab69cccf0da54f44364a9da98a30e3e9ec15ed076', 101, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:54:55', '2020-01-03 07:54:55', '2021-01-03 13:24:55'),
('ec6a49225de8ad7baa4fe59cc615c3b25aad5543a20a48c765f0961a909119c92fcd015cd66195b7', 59, 1, 'MyApp', '[]', 0, '2019-12-18 04:57:50', '2019-12-18 04:57:50', '2020-12-18 10:27:50'),
('ee843672801f73610366524bd74cc637cbde54e93fc5389a45e61b7f2364cadd15dfb45f786a13fe', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 00:26:36', '2019-12-24 00:26:36', '2020-12-24 05:56:36'),
('eefc7062308076e4ea743b228f9a124d4157d5998a7be0c28ef6c7dd70436ceb05ccbbc6ff3ceac7', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:42:22', '2019-12-18 03:42:22', '2020-12-18 09:12:22'),
('ef91455eaec97da72be68e7be8a5f97f3acf72df06aaa0995bfb2758e0f0d1b7621fc61c9fbadae7', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-27 07:49:57', '2019-12-27 07:49:57', '2020-12-27 13:19:57'),
('f0e1a253300a3ee15fc83d4548d9335e56bf62d97eb7f9c8a2f0e32845221f8b0c1f6329276cfa0f', 50, 1, 'MyApp', '[]', 0, '2019-12-18 00:00:21', '2019-12-18 00:00:21', '2020-12-18 05:30:21'),
('f115cc4c18e060e5445c611a74d7d1d1448ccd0470a262e1ea688908adcc734bff8e79c557d88366', 103, 1, 'Personal Access Token', '[]', 0, '2020-01-03 06:50:13', '2020-01-03 06:50:13', '2021-01-03 12:20:13'),
('f1d4907f6fb3814d62e6939c5254bddb71d8133c75a9ecec9db3749a313cf93788cbc8d88a17619e', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-27 07:20:37', '2019-12-27 07:20:37', '2020-12-27 12:50:37'),
('f23ede38b9d03a653eaef1adb99c4cf0870947a33a4e78d92e87e925869f5a880e1d9d4d00c90454', 96, 1, 'Personal Access Token', '[]', 0, '2020-01-03 08:52:53', '2020-01-03 08:52:53', '2021-01-03 14:22:53'),
('f34c4f672c749ef9564fc7c2043e18dd90b4e263e3e13c0a481179b7d0da660274aff1e63e0b22ba', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 00:19:41', '2019-12-24 00:19:41', '2020-12-24 05:49:41'),
('f362afbdc6694d4a283419acfbacaca4e414a7a0599028d5f6a3ea9d8f5db57a3ac85cfe95f5fb66', 91, 1, 'Personal Access Token', '[]', 0, '2019-12-20 07:15:57', '2019-12-20 07:15:57', '2020-12-20 12:45:57'),
('f578602868ed121b21f14113b151cf9db62a308c1bf07de1eae3bbaefed84f6b93d3edc406d16ab5', 54, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:09:24', '2019-12-18 03:09:24', '2020-12-18 08:39:24'),
('f5ef40fc8ccbcfd8d242f3f5116419a84e4daee09c8f00483c1b8fe03745d92997335b2e056b2447', 82, 1, 'Personal Access Token', '[]', 0, '2019-12-19 07:16:57', '2019-12-19 07:16:57', '2020-12-19 12:46:57'),
('f81dc57e5ac130149c766547e51f3d7429961a5b8ca98bcd066fceae59a0c9e546ff3c9d94c6bd11', 63, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:21:58', '2019-12-18 05:21:58', '2020-12-18 10:51:58'),
('f85d62a830b30a322fe41e2f1156513501b0f173fb156ee3fd4fb92ee5c0d0602ae4b9127335fc11', 96, 1, 'Personal Access Token', '[]', 0, '2019-12-24 01:47:36', '2019-12-24 01:47:36', '2020-12-24 07:17:36'),
('f9498b8894180f6f6e8c80f41089e35c6308bd11dc87403b2bd7fcd8343db1ede039db72b734ed81', 63, 1, 'MyApp', '[]', 0, '2019-12-18 05:21:52', '2019-12-18 05:21:52', '2020-12-18 10:51:52'),
('fa0cd9eb4f6d14331fc5e718d1f7cdc2466d8952a7b68814157e8a2a10b1a906cc2fc68bc5986cfb', 106, 1, 'Personal Access Token', '[]', 0, '2020-01-03 07:58:33', '2020-01-03 07:58:33', '2021-01-03 13:28:33'),
('face04014dfb6a0b83bdfd46910590abcd4bcd49c615e4e6457671e25995f9d9878a18f313cfd70c', 61, 1, 'Personal Access Token', '[]', 0, '2019-12-18 05:12:34', '2019-12-18 05:12:34', '2020-12-18 10:42:34'),
('fc9a563c58bf4750cd1a007f5ac3202744147c692a6c6a1ca558810a5418a834dbaa3655919a2cf2', 82, 1, 'Personal Access Token', '[]', 0, '2019-12-19 07:13:20', '2019-12-19 07:13:20', '2020-12-19 12:43:20'),
('fd240fd1e537157ee8d5f9441cddfd3e3d445ab1709ab635a80030bd7d00ab335b06ee51a7a94e10', 40, 1, 'MyApp', '[]', 0, '2019-12-17 10:17:07', '2019-12-17 10:17:07', '2020-12-17 15:47:07'),
('ff48a3f35e45b21a93e27d686f23e741f1a6e6cfd6b25e52dff774e309ca45515055c63532710c42', 95, 1, 'Personal Access Token', '[]', 0, '2019-12-24 04:32:45', '2019-12-24 04:32:45', '2020-12-24 10:02:45'),
('ffabcf157da4cda41a34936e1b96eb414ffafc9599a1a877f7c530012e043f03f8879e2975c1ded2', 55, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:21:07', '2019-12-18 03:21:07', '2020-12-18 08:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CarMarket Personal Access Client', 'Y4syMJdL1hCRHvVkoqmYg6E0l67udYAaZajLRgSx', 'http://localhost', 1, 0, 0, '2019-12-16 07:31:13', '2019-12-16 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-16 07:31:13', '2019-12-16 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active, 0=in active',
  `position` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=copyright,2=Footer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `banner`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 'about-us', NULL, 1, 2, '2019-12-16 00:53:25', '2019-12-16 00:56:55'),
(2, 'privacy-policy', NULL, 1, 2, '2019-12-16 01:32:13', '2019-12-16 01:32:13'),
(3, 'terms-and-conditions', NULL, 1, 2, '2019-12-16 01:32:59', '2019-12-16 01:32:59'),
(4, 'help', NULL, 1, 2, '2019-12-16 01:34:27', '2019-12-16 01:34:27'),
(5, 'support', NULL, 1, 2, '2019-12-16 01:42:30', '2019-12-16 01:42:30'),
(6, 'car-deals', NULL, 1, 2, '2020-01-03 06:19:00', '2020-01-03 06:19:00'),
(7, 'dealership-offers', NULL, 1, 2, '2020-01-03 06:20:20', '2020-01-03 06:20:20'),
(8, 'car-warranty', NULL, 1, 2, '2020-01-03 06:21:38', '2020-01-03 06:21:38'),
(9, 'car-inspection', NULL, 1, 2, '2020-01-03 06:23:10', '2020-01-03 06:23:10'),
(10, 'help-buying-a-car', NULL, 1, 2, '2020-01-03 06:24:24', '2020-01-03 06:24:24'),
(11, 'find-a-dealer', NULL, 1, 2, '2020-01-03 06:26:34', '2020-01-03 06:26:34'),
(12, 'general-help', NULL, 1, 2, '2020-01-03 08:11:11', '2020-01-03 08:11:11'),
(13, 'safer-buying-tips', NULL, 1, 2, '2020-01-03 08:12:22', '2020-01-03 08:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_locations`
--

CREATE TABLE `page_locations` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_locations`
--

INSERT INTO `page_locations` (`id`, `slug`, `name`, `created`, `modified`) VALUES
(1, 'vehicle_detail', 'Vehicle Detail', '2018-01-05 00:00:00', '2019-12-17 15:57:50'),
(2, 'vehicle_listing', 'Vehicle Listing', '2018-01-05 00:00:00', '2019-12-17 14:46:31'),
(3, 'home', 'Home', '0000-00-00 00:00:00', '2019-11-26 09:53:27'),
(4, 'app_filter', 'App Filter', '0000-00-00 00:00:00', '2019-12-18 06:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL,
  `page_id` int(11) UNSIGNED NOT NULL,
  `locale` varchar(222) NOT NULL,
  `title` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sub_title` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_bin,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_title` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `sub_title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 1, 'en', 'About Us', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'About Us', 'About Us', 'About Us'),
(2, 1, 'kh', 'About Us', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'About Us', 'About Us', 'About Us'),
(3, 2, 'en', 'Privacy Policy', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy'),
(4, 2, 'kh', 'Privacy Policy', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy'),
(5, 3, 'en', 'Terms And Conditions', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Terms And Conditions', 'Terms And Conditions', 'Terms And Conditions'),
(6, 3, 'kh', 'Terms And Conditions', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Terms And Conditions', 'Terms And Conditions', 'Terms And Conditions'),
(7, 4, 'en', 'Help', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Help', 'Help', 'Help'),
(8, 4, 'kh', 'Help', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Help', 'Help', 'Help'),
(9, 5, 'en', 'Support', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Support', 'Support', 'Support'),
(10, 5, 'kh', 'Support', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Support', 'Support', 'Support'),
(11, 6, 'en', 'CAR DEALS', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'CAR DEALS', 'CAR DEALS', 'CAR DEALS'),
(12, 6, 'kh', 'CAR DEALS', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'CAR DEALS', 'CAR DEALS', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `sub_title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(13, 7, 'en', 'Dealership offers', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Dealership offers', 'Dealership offers', 'Dealership offers'),
(14, 7, 'kh', 'Dealership offers', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Dealership offers', 'Dealership offers', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(15, 8, 'en', 'Car Warranty', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Car Warranty', 'Car Warranty', 'Car Warranty'),
(16, 8, 'kh', 'Car Warranty', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Car Warranty', 'Car Warranty', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(17, 9, 'en', 'Car Inspection', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Car Inspection', 'Car Inspection', 'Car Inspection'),
(18, 9, 'kh', 'Car Inspection', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Car Inspection', 'Car Inspection', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(19, 10, 'en', 'Help Buying A Car', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Help Buying A Car', 'Help Buying A Car', 'Help Buying A Car'),
(20, 10, 'kh', 'Help Buying A Car', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Help Buying A Car', 'Help Buying A Car', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(21, 11, 'en', 'Find A Dealer', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Find A Dealer', 'Find A Dealer', 'Find A Dealer');
INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `sub_title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(22, 11, 'kh', 'Find A Dealer', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'Find A Dealer', 'Find A Dealer', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(23, 12, 'en', 'General Help', NULL, NULL, '<p>&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;<br />\r\n&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;</p>', 'General Help', 'General Help', 'General Help'),
(24, 12, 'kh', 'General Help', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'General Help', 'General Help', 'General Help'),
(25, 13, 'en', 'Safer buying tips', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Safer buying tips', 'Safer buying tips', 'Safer buying tips'),
(26, 13, 'kh', 'Safer buying tips', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Safer buying tips', 'Safer buying tips', 'Safer buying tips');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kiran@yopmail.com', '$2y$10$6p2ySreizP2CT111mxbdxOXEEbPXERDr5UrFhovgPL67EgY8U9j0.', '2019-11-27 04:49:11'),
('!@mailinator.com', '$2y$10$jVBz/fOXLbh/0Bayx5DvuO6dBx5m99eG1pyVLueCEsZfbgxNUU7ae', '2019-12-19 04:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `status`, `created`, `modified`) VALUES
(1, 'Top', 1, '2018-01-24 00:00:00', '2018-01-24 00:00:00'),
(2, 'Side Left', 1, '2018-01-24 00:00:00', '2018-01-24 00:00:00'),
(3, 'Side Right', 1, '2018-01-18 00:00:00', '2018-01-18 00:00:00'),
(5, 'Mid', 1, '2019-12-16 00:00:00', '2019-12-16 00:00:00'),
(6, 'Bottom', 1, '2019-12-16 00:00:00', '2019-12-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `is_menu` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_menu`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 0, 1, '2019-11-12 12:44:31', NULL, NULL),
(2, 'Buyer', 'buyer', 1, 1, '2019-12-24 13:55:02', NULL, NULL),
(3, 'Dealer', 'dealer', 1, 1, '2019-12-24 14:23:05', NULL, NULL),
(4, 'Seller', 'seller', 1, 1, '2019-12-24 14:23:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 3),
(2, 90),
(2, 95),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 106),
(3, 4),
(3, 89),
(3, 96),
(3, 100),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `save_vehicles`
--

CREATE TABLE `save_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `slug`, `config_value`, `manager`, `field_type`, `created_at`, `updated_at`) VALUES
(1, 'Website Name', 'SYSTEM_APPLICATION_NAME', 'S.P Car Market', 'general', 'text', '2019-02-27 06:03:36', '2019-12-24 01:25:23'),
(2, 'Admin Email', 'ADMIN_EMAIL', 'kiran@yopmail.com', 'general', 'text', '2019-02-27 06:03:36', '2019-11-25 00:42:33'),
(4, 'Owner Name', 'WEBSITE_OWNER', 'Kiran', 'general', 'text', '2019-02-27 06:03:36', '2019-11-25 00:42:55'),
(6, 'Admin Page Limit', 'ADMIN_PAGE_LIMIT', '20', 'general', 'text', '2019-02-27 06:03:36', '2019-11-26 03:04:23'),
(8, 'Admin Date Format', 'ADMIN_DATE_FORMAT', 'd F, Y H:i A', 'general', 'text', '2019-02-27 06:03:36', '2019-11-26 04:57:15'),
(9, 'Admin Date Time Format', 'ADMIN_DATE_TIME_FORMAT', 'd F, Y H:i A', 'general', 'text', '2019-02-27 06:03:36', '2019-02-27 06:03:36'),
(47, 'Main Favicon', 'MAIN_FAVICON', 'qE3MG0PosiEuCyfS3sCPox4etiGvAJG8LYUIDOiX.png', 'theme_images', 'text', '2019-02-28 02:39:43', '2019-11-28 04:24:49'),
(48, 'MAIN LOGO', 'MAIN_LOGO', 'AIj9OartxNNDhJa51KY0V4CWueO2PO9O9scc27Yp.png', 'theme_images', 'text', '2019-02-28 02:39:43', '2019-12-16 09:42:47'),
(54, 'Linkedin Url', 'LINKEDIN_URL', 'https://in.linkedin.com/', 'general', 'text', '2019-03-26 00:59:59', '2019-10-09 00:19:24'),
(56, 'Facebook Url', 'FACEBOOK_URL', 'https://www.facebook.com/', 'general', 'text', '2019-03-26 01:00:43', '2019-10-09 00:19:03'),
(60, 'Dealer car', 'HOME_DEALER_CAR', '<p>test Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. </p>', 'general', 'text', '2019-08-02 03:56:23', '2019-12-18 00:56:28'),
(61, 'About us', 'HOME_ABOUT_US', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>\r\n                            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. </p>', 'general', 'text', '2019-09-19 18:30:00', '2019-11-25 00:44:14'),
(62, 'Instagram Url', 'INSTAGRAM_URL', 'https://www.instagram.com/', 'general', 'text', '2019-09-23 18:30:00', '2019-10-09 00:19:43'),
(63, 'Phone', 'PHONE1', '1234567890', 'general', 'text', '2019-09-23 18:30:00', '2019-11-25 00:43:13'),
(64, 'Phone 2', 'PHONE2', '1234567890', 'general', 'text', '2019-09-23 18:30:00', '2019-11-25 00:43:23'),
(65, 'Address', 'ADDRESS', '60 Grant Avenue, Carteret NJ 07089', 'general', 'text', '2019-09-23 18:30:00', '2019-12-18 01:27:30'),
(66, 'Copyright footer text', 'COPYRIGHT', 'Copyright © 2019-2020', 'general', 'text', NULL, '2019-11-26 03:02:40'),
(67, 'Postal Address', 'POSTAL_ADDRESS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'general', 'text', '2019-12-17 07:54:26', '2019-12-17 07:54:26'),
(68, 'Youtube Url', 'YOUTUBE_URL', 'https://youtube.com', 'general', 'text', '2019-12-16 18:30:00', '2019-12-16 18:30:00'),
(69, 'Twitter Url', 'TWITTER_URL', 'https://twitter.com', 'general', 'text', '2019-12-16 18:30:00', '2019-12-16 18:30:00'),
(70, 'Seller car', 'HOME_SELLER_CAR', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. </p>', 'general', 'text', '2019-08-02 03:56:23', '2019-11-25 00:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `duration_type` enum('Days','Weeks','Months','Years','Unlimited') DEFAULT 'Days',
  `price` decimal(16,2) DEFAULT NULL,
  `minimum_price` double(16,2) DEFAULT NULL,
  `total_on_sale_count` tinyint(1) DEFAULT '0',
  `total_featured_count` tinyint(1) DEFAULT '0',
  `total_listing_count` smallint(6) DEFAULT '0',
  `count_of_until_sold` tinyint(2) DEFAULT '0',
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort_order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `slug`, `user_type`, `duration`, `duration_type`, `price`, `minimum_price`, `total_on_sale_count`, `total_featured_count`, `total_listing_count`, `count_of_until_sold`, `image`, `status`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'premium', 'Dealer', 1, 'Months', '22.00', NULL, 0, 3, 10, 0, '1577190003-336169213.jpg', 1, 1, '2019-12-24 11:50:59', '2020-01-03 05:15:22', NULL),
(3, 'lite', 'Dealer', 1, 'Months', '2.50', NULL, NULL, NULL, 1, 0, '1577190114-1584056352.jpg', 1, 1, '2019-12-24 12:21:54', '2020-01-03 05:15:19', NULL),
(4, 'standard', 'Dealer', 1, 'Months', '10.00', NULL, NULL, NULL, 5, 0, NULL, 1, 3, '2019-12-26 00:17:41', '2020-01-03 13:07:59', NULL),
(5, 'ultimate', 'Dealer', 1, 'Months', '50.00', NULL, 3, 15, 20, 3, NULL, 1, 4, '2020-01-02 06:17:48', '2020-01-03 13:08:12', NULL),
(6, 'free', 'Seller', 7, 'Days', '0.00', 3000.00, NULL, NULL, 1, NULL, NULL, 1, 1, '2020-01-03 06:47:57', '2020-01-03 06:47:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_translations`
--

CREATE TABLE `subscription_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_translations`
--

INSERT INTO `subscription_translations` (`id`, `locale`, `subscription_id`, `title`, `description`) VALUES
(2, 'en', 2, 'Premium', 'Premium'),
(3, 'kh', 2, 'Free1', 'Free'),
(4, 'en', 3, 'Lite', 'Lite'),
(5, 'kh', 3, 'Lite', 'Lite'),
(6, 'en', 4, 'Standard', NULL),
(7, 'kh', 4, 'មហាពិសេស', NULL),
(8, 'en', 5, 'Ultimate', 'Ultimate'),
(9, 'kh', 5, 'Ultimate', NULL),
(10, 'en', 6, 'Free', 'Free'),
(11, 'kh', 6, 'Free', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) DEFAULT NULL,
  `is_otp_verified` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '1',
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `facebook_id`, `google_id`, `email_verified_at`, `is_email_verified`, `is_otp_verified`, `password`, `remember_token`, `verify_email_token`, `phone`, `country_code`, `address`, `city`, `state`, `country`, `postcode`, `latitude`, `longitude`, `profile_image`, `status`, `admin`, `api_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ratanakpisith CarMarket Admin', 'ratanakpisith.dotsquares@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$hO7J5njnOdMEMNVAmBinuuCMOUs1sEHLFUbQmwW1ET2sr.CcvXxau', 'RmT7PgSeIOp1CqZodKlCMP3CJQZcs7TDvPD13QPUlC4SfUMpBAmY6V3tHFgk', NULL, '1245678894', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1576731393.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-12-24 00:48:38', NULL),
(3, 'kiran Buyer', 'kiranbuyer@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '9696969696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(4, 'kiran Dealer', 'kirandealer@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '969692619696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(5, 'kiran Seller', 'kiranseller@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '96969639696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(6, 'kiran Buyer', 'kiranbuyer1@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '96964969696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(7, 'kiran Seller', 'kiranseller1@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '96969669696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(8, 'kiran Dealer', 'kirandeale1r@yopmail.com', NULL, NULL, NULL, 1, 0, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', NULL, NULL, '96969569696', NULL, 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(89, 'Brian Maxwell', 'Brian.dots@yopmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$uH3F3wNXILrItUluF9U/q.LPD0c.gUdd.jRih41860mEWWpAt7OxG', NULL, NULL, '80030708164', '+91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjcwZTkzZGI4M2JkNGIyMWM4MmNlMjNjMTJjYjBkYmI3NWU0NTY5MDU3YTZkMTMyN2Y3NzRhMmYxZjg0ZDhmYTAyY2ZiNmM3YTkxODQ3MmMzIn0.eyJhdWQiOiIxIiwianRpIjoiNzBlOTNkYjgzYmQ0YjIxYzgyY2UyM2MxMmNiMGRiYjc1ZTQ1NjkwNTdhNmQxMzI3Zjc3NGEyZjFmODRkOGZhMDJjZmI2YzdhOTE4NDcyYzMiLCJpYXQiOjE1NzcxMDgzNDksIm5iZiI6MTU3NzEwODM0OSwiZXhwIjoxNjA4NzMwNzQ5LCJzdWIiOiI4OSIsInNjb3BlcyI6W119.XVy6rGbF7iX2hdlYh-mvlvd_nsPJ_TqjybaXX4wU1ATPkFEo7CgjHs-n3LSUiQDMpTTe3o6AwSNWFRjzpYKWm9rjcsARZHS3qgmlkny-xWPKJU9YOGfujb-j5JNzP0XtaQfGev5RqPuhnLIWUXw6IYkQpuq5HCRsx0UW0tOJ24knGB2AbMKDU1hms4an_GxQWanwA0oHzAh4Tu1f-P9XrtMOdGck_FSSTpTH44WCQgAUpKXj-rQV2ZdKTfc651WOsD62qHE18VgjI8SNT6vHnW2e9XRNjbWM6bzIq7H3YZA9YjoG0SCLfKViqRnfoiTJh6_G_LDbpkNSXLyJIdJ7IyF9CnNRtqay6WLwdRLbd53nM13D4MfI0bA8eKSDfynryAKfj4yBvdVHEw95cYKMR9o3yfO9AC0UmD7C5hgu8nbnePZlG-Om9rSciRtGwU-6c5OAowy32vaK709aT66Vpmdqk8t0J0Cnqg-m4jOV2eVKGbUdGvmZL35UlCg0XpiaEywdT9qdDH3EFZFUrYU8bIRkNIVb6qUffdRJZybs6v8rj6IRFb-PvpqShSbaDsNHz1Z4L0hISCq6vpIYN24INvhiYbmOG_Iy-41o2LM1ba1Dccjb1giLuwek9F0TEbwu_E50aHCYNMNKSOpw9GvXi0nKuS2UzoxlwgVSKY8Pt-4', '2019-12-20 05:14:48', '2019-12-23 08:09:09', NULL),
(90, 'Tester Android', 'testerandroid@yopmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$bkXCDxxIYtJy6Oa9UO.kpuH0tviV.OZNXO3.BYS6UNGdfMuHMpOHi', NULL, NULL, '9828418365', '+91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2019-12-23 01:03:44', '2019-12-23 01:06:11', NULL),
(95, 'Kalpesh', 'rey619@yopmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$MX0XJgA1u3v9P0wWuHrSeOcyZwp5cnV2csZN9IXOwYQAinyV7JNee', NULL, NULL, '9950660054', '+91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjY4YjEwZjA4MjQyNzI3NTYzYjJjNDE2YjhkNjI1YTgxOTllY2E4OTE5MjZjNmNkN2E2ZjdmMjkzYmIyNTM3NzRiZmY0NmI2Zjc2YWQzMTI4In0.eyJhdWQiOiIxIiwianRpIjoiNjhiMTBmMDgyNDI3Mjc1NjNiMmM0MTZiOGQ2MjVhODE5OWVjYTg5MTkyNmM2Y2Q3YTZmN2YyOTNiYjI1Mzc3NGJmZjQ2YjZmNzZhZDMxMjgiLCJpYXQiOjE1NzgwNTg2NDQsIm5iZiI6MTU3ODA1ODY0NCwiZXhwIjoxNjA5NjgxMDQ0LCJzdWIiOiI5NSIsInNjb3BlcyI6W119.tvILkDsTdMqHA-1GKnjsOGpIICjhRzmN063uDJIehKEj7ehZzQm6fwopWnw9HOyxoapPVGLCtwZ_zBhpkqnxcEg7Pbgm7wk9feaPmCi4g_vPIoGluxnlaicCpig3_WjaNS5uJAba8vauQGSoDV2YTdmSBILEoMIpflNGxIDxPzJ6mdel-NGIa1D8BbSu7XQZoxyhIDYI6Ez8RZU-wFvcAdD6K2cZHeEEes2uNB9inTmEFLrwtXfsjnRM-u0dEPwuqVF54lLJJELMZkH-pV1jPDw2HUeMmZyK7dJvdzTyLxfpQcZD7WwJfQaOMrTmNFja_Y-OCJJEg02-Jx_PImnXli_gTJS-xskkhf3gwfFs8A_tSZ7LEzXHWoT9GPIRYOFhzFEMnn46dJQO9_0b6YcyVFyp26-Gu2s20KJEn3ULwHgazA4B02E3En6ZLEvKKcgq4X34E_OcgiWM3IxWD4ALP9X2B2Qlr67G0uRsFDFZPCRoN_hXg6qv5bWBlNAJw1WTkuMoxAJPqkQh5ceLTekrMoh4UPv0w1Oc5i6hzzUXlb5-9EqY7mS6iNekVkF1Q1NC-hszQFUvkx7PD-4sLYsV5y834jaT5HkPdsSPy8oSW1ZuMfXmcXq9wlGJw5rVEXVVGocOdsvHHNEBNj23wwKtRneHx6STcbTat9BoivUO7Ec', '2019-12-23 06:15:58', '2020-01-03 08:07:24', NULL),
(96, 'Rohan', 'rohan@yopmail.com', NULL, NULL, NULL, NULL, 1, '$2y$10$m19rVYH.1i3kGCKJQ/V.ZukXf07fXwV5GhN5K8Bn0Zx38mjt/Uu3u', NULL, NULL, '9694728151', '+91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatars/TGU97zNHj1rBefi5c7kvHeL2yFgwcfTXh0oiiY0L.jpeg', 1, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImYyM2VkZTM4YjlkMDNhNjUzZWFlZjFhZGI5OWM0Y2YwODcwOTQ3YTMzYTRlNzhkOTJlODdlOTI1ODY5ZjVhODgwZTFkOWQ0ZDAwYzkwNDU0In0.eyJhdWQiOiIxIiwianRpIjoiZjIzZWRlMzhiOWQwM2E2NTNlYWVmMWFkYjk5YzRjZjA4NzA5NDdhMzNhNGU3OGQ5MmU4N2U5MjU4NjlmNWE4ODBlMWQ5ZDRkMDBjOTA0NTQiLCJpYXQiOjE1NzgwNjEzNzQsIm5iZiI6MTU3ODA2MTM3NCwiZXhwIjoxNjA5NjgzNzczLCJzdWIiOiI5NiIsInNjb3BlcyI6W119.CJkGYAGuj25INnUkBibsI9V3tkiwFcmZ21zV5jfzlUECeodcbBJKf9ADFvfofZsc86Jvuei6jqpLfRw9D7jNnr1OUQ1gh8QaW__PpfkEkHm08v4JIjf1OTfjJ2WeXZ7-Q9XjE3O_xi3eALFTreU96RZzmCzzHUI28re7qbA3-6q3u9bElqdlOPbe8YPBaOOalmzgV9GN_SsqBmzsDgnsd410c8-GJ4Nsc0fz4SsMReFX8wMNKBsE4Kgd11mS01o6B_HoQD_DJE7DrUGXQ6xKs23pTGeVbEE6I2SzoZc0jSXubrf0_wk3D72fhI5MsPQjC8C_ZT4v-9DIMG4Mo5xW9CMKq_4d16YkCooaJbw9Ahq7KPoEyyO_KYfhfiDQCaTzJFdqMSv6-sH7M_K9JdHx5TaSe0okOMUFtGRhEySLEXcG-tixJdMZRRwwQCee8cWO9t5QHzR1jPXCPnYXK6623BJFC8zd4Z4Id5if00qMd9ccSLYEkXPzmnqmoliDf648z4NqgvklN6HsCj4BL3f0DGkFTx0lr5Oz_QcqxaNeJU0UvJQs4KarI_I9Ic9gnkeEWEMnqcJu7dOBwdSrLN8rW_LSno8h4uXTGz5BpGS_BC1mN6l1voUhmW2H41GX-Wzky5hfpC-_6cIKGfxYhnpw-FrkVp4dmPzL73bftcGfeK0', '2019-12-23 23:46:47', '2020-01-03 08:52:54', NULL),
(100, 'C.dotsquares', 'c.dotsquares@yopmail.com', NULL, NULL, NULL, NULL, 0, '$2y$10$gQLFoOBL0r2w1cXVqWdHT.8H9dU2y8umkRJXwLXoNkJvLkkMiKoFm', NULL, NULL, '8003070864', '+91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2019-12-24 01:38:24', '2019-12-24 01:38:24', NULL),
(101, 'Arnav Kumar Jain', 'utestit14053@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2019-12-24 05:08:30', '2019-12-24 05:08:30', NULL),
(102, 'Php Team', 'phpteam.ds@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2019-12-27 08:01:32', '2019-12-27 08:01:32', NULL),
(103, 'scscdsacd', 'vaibhav@yopmail.com', NULL, 'nghdscdsacds', NULL, NULL, 1, NULL, NULL, NULL, '96947281511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-01-03 04:38:46', '2020-01-03 06:50:12', NULL),
(104, 'Dotsquares Ltd.', 'dstesting2016@gmail.com', NULL, '100483112226021118932', NULL, NULL, 1, NULL, NULL, NULL, '9876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-01-03 05:10:37', '2020-01-03 05:10:37', NULL),
(106, 'bgfbv', 'vk@yopmail.com', 'hbfgbfdgb', NULL, NULL, NULL, 1, NULL, NULL, NULL, '9696969600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2020-01-03 07:58:32', '2020-01-03 07:58:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle`
--

CREATE TABLE `user_vehicle` (
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `is_favourite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_vehicle`
--

INSERT INTO `user_vehicle` (`user_id`, `vehicle_id`, `is_favourite`) VALUES
(89, 1001, 1),
(89, 1009, 0),
(89, 1010, 1),
(93, 1007, 0),
(93, 1009, 1),
(95, 1003, 0),
(95, 1004, 1),
(95, 1005, 0),
(95, 1007, 0),
(95, 1008, 0),
(95, 1009, 1),
(95, 1010, 1),
(95, 1011, 0),
(95, 1012, 0),
(95, 1014, 1),
(95, 1046, 0),
(95, 1047, 1),
(95, 1051, 1),
(95, 1055, 0),
(95, 1057, 0),
(96, 1003, 1),
(96, 1004, 0),
(96, 1005, 1),
(96, 1007, 1),
(96, 1008, 1),
(96, 1009, 0),
(96, 1010, 0),
(96, 1011, 0),
(96, 1012, 0),
(96, 1014, 1),
(96, 1045, 0),
(96, 1047, 0),
(96, 1048, 1),
(96, 1051, 1),
(96, 1056, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_verifications`
--

CREATE TABLE `user_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_type` tinyint(4) DEFAULT '0' COMMENT '1=register,2=forgot',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_verifications`
--

INSERT INTO `user_verifications` (`id`, `user_id`, `otp`, `otp_type`, `created_at`, `updated_at`) VALUES
(113, 89, 123456, 2, '2019-12-23 10:03:57', '2019-12-23 10:03:57'),
(118, 95, 123456, 2, '2019-12-24 06:19:19', '2019-12-24 06:19:19'),
(126, 100, 123456, 1, '2019-12-24 07:08:24', '2019-12-24 07:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `makes_id` int(11) DEFAULT NULL,
  `models_id` int(11) DEFAULT NULL,
  `badge_id` int(11) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `body_styles_id` int(11) DEFAULT NULL,
  `drive_types_id` int(11) DEFAULT NULL,
  `fuel_types_id` int(11) DEFAULT NULL,
  `engine_type_id` int(11) DEFAULT NULL,
  `suspensions_id` int(11) DEFAULT NULL,
  `transmissions_id` int(11) DEFAULT NULL,
  `interior_colour_id` int(11) DEFAULT NULL,
  `exterior_colour_id` int(11) DEFAULT NULL,
  `lifestyle_id` int(11) DEFAULT NULL,
  `cylinders_id` int(11) DEFAULT NULL,
  `fuel_economy_id` varchar(191) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` text,
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` double(9,2) DEFAULT NULL,
  `discount_price` double(9,2) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `month_build` varchar(10) DEFAULT NULL,
  `plate_number` varchar(191) DEFAULT NULL,
  `chassis_number` varchar(191) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `gears` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `year_build` varchar(200) DEFAULT NULL,
  `year_complied` varchar(200) DEFAULT NULL,
  `engine_capacity` int(11) DEFAULT NULL,
  `turbo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `odometer` bigint(20) UNSIGNED DEFAULT NULL,
  `expiry_month` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expiry_year` year(4) DEFAULT NULL,
  `written_off` tinyint(1) DEFAULT NULL,
  `roadworthy` tinyint(1) DEFAULT NULL,
  `is_registered` tinyint(1) DEFAULT '0',
  `role` varchar(191) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `car_of_the_week` tinyint(1) NOT NULL DEFAULT '0',
  `steps` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `category_id`, `makes_id`, `models_id`, `badge_id`, `series_id`, `body_styles_id`, `drive_types_id`, `fuel_types_id`, `engine_type_id`, `suspensions_id`, `transmissions_id`, `interior_colour_id`, `exterior_colour_id`, `lifestyle_id`, `cylinders_id`, `fuel_economy_id`, `country_id`, `region_id`, `city_id`, `city`, `state`, `country`, `address`, `title`, `slug`, `price`, `discount_price`, `year`, `month_build`, `plate_number`, `chassis_number`, `doors`, `gears`, `seats`, `year_build`, `year_complied`, `engine_capacity`, `turbo`, `odometer`, `expiry_month`, `expiry_year`, `written_off`, `roadworthy`, `is_registered`, `role`, `name`, `email`, `phone`, `postcode`, `latitude`, `longitude`, `is_featured`, `sort_order`, `status`, `car_of_the_week`, `steps`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1004, 101, 8, 1, 1, 4, 10, 2, 3, 2, NULL, NULL, 4, 2, 1, 1, 6, '2', 106, 1864, 1314982, NULL, NULL, NULL, NULL, 'Hyundai - Grand I10 - Nios - QS', 'hyundai-grand-i10-nios-qs', 10000.00, NULL, 2014, NULL, 'RJ14CA4855', 'atr1234t', 5, 5, 5, '06/2019', '02/2019', 1200, 'turbo', 80000, 'June', 2025, 1, 1, 1, 'Seller', 'Arnav Kumar Jain', 'utestit14053@gmail.com', 9694728151, '3020', '38.778495', '-97.615151', 0, NULL, 1, 0, 0, '2019-12-17 15:15:50', '2020-01-03 07:32:40', NULL),
(1047, 96, 1, 10, 11, 14, 14, 4, 3, 4, NULL, NULL, 4, 2, 2, 3, 5, '4', NULL, NULL, NULL, 'Kukas', 'RJ undefined', 'India', 'Jaipur Engineering College Rd, Kukas, Rajasthan 302028, India', '1959 TATA Gravitas', 'tata-gravitas-2016-123', 5500.00, 2020.00, NULL, '04', '999999999', '66666666666666666', 5, 4, 3, '1959', '2002', 5000, '1', 55000, '03', 2020, 1, 1, 1, NULL, NULL, NULL, 9876543210, '302028', '27.0309059', '75.89309219999996', 0, NULL, 1, 0, 5, '2020-01-02 09:46:14', '2020-01-03 07:32:40', NULL),
(1048, 96, 1, 2, 2, 1, 1, 5, 3, 2, NULL, NULL, 4, 2, 2, 3, 4, NULL, NULL, NULL, NULL, 'xyz', 'xyz', 'xyz', 'Jaipur, Rajasthan, India', 'Audi Q7 300 800', 'audi-q7-300-800', 565656.00, NULL, NULL, '6', '649495995959', '55555555555555555', 5, 5, 4, '1957', '2004', 1000, '1', 50000, 'June', 2022, 1, 1, 1, NULL, NULL, NULL, 9876543210, '332021', '26.9124336', '75.7872709', 0, NULL, 1, 0, 4, '2020-01-02 10:09:08', '2020-01-03 07:32:40', NULL),
(1050, 96, 1, 2, 2, 1, 1, 3, 3, 2, NULL, NULL, 4, 2, 2, 1, 6, NULL, NULL, NULL, NULL, 'xyz', 'xyz', 'xyz', 'Jaipur, Rajasthan, India', 'Audi Q7 300 800', 'audi-q7-300-800-1', 700000.00, NULL, NULL, '7', '555555', '747377337HHHHHHHH', 4, 6, 6, '1960', '2005', 5000, '1', 50000, 'July', 2023, 1, 1, 1, NULL, NULL, NULL, 9876543210, '332021', '26.9124336', '75.7872709', 0, NULL, 1, 0, 4, '2020-01-02 11:08:26', '2020-01-03 07:32:40', NULL),
(1051, 96, 1, 1, 1, 4, 10, 3, 1, 1, NULL, NULL, 3, 1, 1, 6, 7, NULL, NULL, NULL, NULL, 'xyz', 'xyz', 'xyz', 'Gopalbari, Jaipur, Rajasthan 302016, India', 'Hyundai Grand I10 Nios QS', 'hyundai-grand-i10-nios-qs-9', 750000.00, NULL, NULL, '5', '454564654654654', '465465465dsafdsaf', 4, 4, 5, '1961', '2003', 5000, '1', 50000, 'May', 2025, 1, 1, 1, NULL, NULL, NULL, 9876543210, '332021', '26.9197546', '75.78826049999999', 0, NULL, 1, 0, 4, '2020-01-02 12:15:54', '2020-01-03 07:32:40', NULL),
(1056, 96, 1, 1, 1, 4, 10, 1, 3, 1, NULL, NULL, 4, 2, 1, 3, 8, '2', NULL, NULL, NULL, 'Jaipur', 'RJ undefined', 'India', 'Jhalana Quary Rd, Jhalana Institutional Area, Jhalana Doongri, Jaipur, Rajasthan 302004, India', '2013 Hyundai Grand I10', '2013-hyundai-grand-i10', 10000.00, 8500.00, NULL, '03', 'RJ13X2188', 'VIN123456', 5, 5, 5, '2013', '2020', 1200, '1', 25000, '03', 2021, 1, 0, 1, 'Dealer', NULL, NULL, 9886587854, '302004', '26.871405', '75.82014079999999', 0, NULL, 1, 1, 5, '2020-01-03 12:42:11', '2020-01-03 07:32:40', NULL),
(1057, 95, 1, 5, 6, 6, 4, 1, 1, 1, NULL, NULL, 3, 1, 2, 2, 7, NULL, NULL, NULL, NULL, 'Jaipur', 'Rajasthan', 'India', '89,raghunath puri 1 ,shoepur road,sanganer, pratap nagar, Tonk Rd, Maruti Nagar, Jaipur, Rajasthan 302033, India', 'Abarth 124 Spider 348', 'abarth-124-spider-348', 2500.00, 250.00, NULL, '6', 'RJ 23 SQ 0366', '1234567890', 7, 3, 4, '1905', '2006', 2500, '0', 2500, '6', 2028, 1, 1, 1, NULL, NULL, NULL, 9950660054, '302033', '26.8112695', '75.8066367', 0, NULL, 0, 0, 3, '2020-01-03 13:19:57', '2020-01-03 08:08:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_audio_communications`
--

CREATE TABLE `vehicle_audio_communications` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_audio_communications`
--

INSERT INTO `vehicle_audio_communications` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574429884-1710971185.png', '2019-11-22 08:08:04', '2019-11-22 08:08:04', NULL),
(2, 0, NULL, '2019-11-26 05:25:58', '2019-11-26 05:25:58', NULL),
(3, 1, NULL, '2019-11-26 07:00:23', '2019-11-26 07:00:23', NULL),
(4, 0, NULL, '2019-11-27 06:35:46', '2019-11-27 06:35:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_audio_communication_translations`
--

CREATE TABLE `vehicle_audio_communication_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(200) NOT NULL,
  `vehicle_audio_communication_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_audio_communication_translations`
--

INSERT INTO `vehicle_audio_communication_translations` (`id`, `name`, `locale`, `vehicle_audio_communication_id`) VALUES
(1, 'demo', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Anjolie Lucas', 'en', 2),
(4, 'Jameson Bryan', 'kh', 2),
(5, 'asasd', 'en', 3),
(6, 'sas', 'kh', 3),
(7, 'Sacha Willis', 'en', 4),
(8, 'Rhea Summers', 'kh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_badges`
--

CREATE TABLE `vehicle_badges` (
  `id` int(11) NOT NULL,
  `makes_id` int(11) DEFAULT NULL,
  `models_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_badges`
--

INSERT INTO `vehicle_badges` (`id`, `makes_id`, `models_id`, `slug`, `icon`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, '300', NULL, 1, '2019-12-06 07:56:06', '2019-12-16 09:44:42', NULL),
(2, 4, 3, 'ertica', NULL, 1, '2019-12-11 09:09:27', '2019-12-11 09:09:27', NULL),
(3, 4, 3, 'ertica12345', NULL, 1, '2019-12-11 09:09:39', '2019-12-11 09:09:39', NULL),
(4, 1, 1, 'sssss', NULL, 1, '2019-12-12 03:08:56', '2019-12-17 09:30:37', NULL),
(5, 4, 4, 'rrrrrrr', NULL, 1, '2019-12-12 03:10:18', '2019-12-12 03:10:18', NULL),
(6, 5, 6, 'spider', NULL, 1, '2019-12-12 03:33:10', '2019-12-12 03:33:10', NULL),
(7, 5, 6, 'spider-launch-edition', NULL, 1, '2019-12-12 03:33:32', '2019-12-12 03:33:32', NULL),
(8, 5, 6, 'spider-monza-edition', NULL, 1, '2019-12-12 03:34:03', '2019-12-12 03:34:03', NULL),
(9, 5, 7, 'esseesse', NULL, 1, '2019-12-12 03:34:23', '2019-12-12 03:34:23', NULL),
(10, 5, 7, 'esseesse-c', NULL, 1, '2019-12-12 03:34:39', '2019-12-12 03:34:39', NULL),
(11, 8, 9, 'elite', '1576668223-1884990351.jpg', 1, '2019-12-18 05:53:43', '2019-12-18 05:53:43', NULL),
(12, 9, 10, '2018', '1576733241-1828820614.jpg', 1, '2019-12-18 23:57:21', '2019-12-18 23:57:21', NULL),
(13, 9, 10, '2017', '1576733706-741650349.jpg', 1, '2019-12-19 00:05:06', '2019-12-19 00:05:06', NULL),
(14, 10, 11, '2016', '1576734033-1886000941.jpg', 1, '2019-12-19 00:10:33', '2019-12-19 00:10:33', NULL),
(15, 11, 12, 'test-badge', '1576821267-117850106.jpg', 1, '2019-12-20 00:24:27', '2019-12-20 00:24:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_badge_translations`
--

CREATE TABLE `vehicle_badge_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_badge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_badge_translations`
--

INSERT INTO `vehicle_badge_translations` (`id`, `name`, `locale`, `vehicle_badge_id`) VALUES
(1, '300', 'en', 1),
(2, 'Q7 300', 'kh', 1),
(3, 'ertica', 'en', 2),
(4, 'ertica', 'kh', 2),
(5, 'ertica12345', 'en', 3),
(6, 'ertica12345', 'kh', 3),
(7, 'Nios', 'en', 4),
(8, 'sssss', 'kh', 4),
(9, 'rrrrrrr', 'en', 5),
(10, 'rrrrrrr', 'kh', 5),
(11, 'Spider', 'en', 6),
(12, 'Spider', 'kh', 6),
(13, 'Spider Launch Edition', 'en', 7),
(14, 'Spider Launch Edition', 'kh', 7),
(15, 'Spider Monza Edition', 'en', 8),
(16, 'Spider Monza Edition', 'kh', 8),
(17, 'Esseesse', 'en', 9),
(18, 'Esseesse', 'kh', 9),
(19, 'Esseesse C', 'en', 10),
(20, 'Esseesse C', 'kh', 10),
(21, 'Elite', 'en', 11),
(22, 'Elite', 'kh', 11),
(23, '2018', 'en', 12),
(24, '2018', 'kh', 12),
(25, '2017', 'en', 13),
(26, '2017', 'kh', 13),
(27, '2016', 'en', 14),
(28, '2016', 'kh', 14),
(29, 'Test_badge', 'en', 15),
(30, 'Test_badge', 'kh', 15);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_bodies`
--

CREATE TABLE `vehicle_bodies` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_bodies`
--

INSERT INTO `vehicle_bodies` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1574429983-933457097.png', '2019-11-22 08:09:43', '2019-11-22 08:09:43', NULL),
(2, 0, '1574773756-443393945.jpg', '2019-11-26 05:26:36', '2019-11-26 07:39:16', NULL),
(3, 1, '1574918765-1234796725.png', '2019-11-27 06:34:00', '2019-11-27 23:56:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_body_styles`
--

CREATE TABLE `vehicle_body_styles` (
  `id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_body_styles`
--

INSERT INTO `vehicle_body_styles` (`id`, `slug`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'suv', 1, '1576508678-1869686636.jpg', '2019-11-22 08:05:13', '2019-12-16 09:34:38', NULL),
(2, 'hatchback', 1, '1576508662-1313110930.jpg', '2019-11-26 05:25:15', '2019-12-16 09:34:22', NULL),
(3, 'sedan', 1, '1576508627-1639196227.jpg', '2019-12-13 08:59:10', '2019-12-16 09:33:47', NULL),
(4, 'wagon', 1, '1576508717-875423917.jpg', '2019-12-16 09:35:17', '2019-12-16 09:35:17', NULL),
(5, 'convertible', 1, '1576508776-1954502629.jpg', '2019-12-16 09:36:16', '2019-12-16 09:36:16', NULL),
(6, 'muv', 1, '1576651383-23701244.jpg', '2019-12-18 01:13:03', '2019-12-18 01:13:03', NULL),
(7, 'fhfgh-gfh', 0, NULL, '2019-12-18 04:13:49', '2019-12-21 00:43:23', NULL),
(8, 'test-add-vehicle', 1, '1576825711-381718388.jpg', '2019-12-20 01:38:32', '2019-12-20 01:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_body_style_translations`
--

CREATE TABLE `vehicle_body_style_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(222) NOT NULL,
  `vehicle_body_style_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_body_style_translations`
--

INSERT INTO `vehicle_body_style_translations` (`id`, `name`, `locale`, `vehicle_body_style_id`) VALUES
(1, 'SUV', 'en', 1),
(2, 'SUV', 'kh', 1),
(3, 'Hatchback', 'en', 2),
(4, 'Hatchback', 'kh', 2),
(5, 'Sedan', 'en', 3),
(6, 'Sedan', 'kh', 3),
(7, 'Wagon', 'en', 4),
(8, 'Wagon', 'kh', 4),
(9, 'Convertible', 'en', 5),
(10, 'Convertible', 'kh', 5),
(11, 'MUV', 'en', 6),
(12, 'MUV', 'kh', 6),
(13, 'fhfgh gfh', 'en', 7),
(14, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា', 'kh', 7),
(15, 'Test_add_vehicle', 'en', 8),
(16, 'Test_add_vehicle', 'kh', 8);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_body_translations`
--

CREATE TABLE `vehicle_body_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_body_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_body_translations`
--

INSERT INTO `vehicle_body_translations` (`id`, `name`, `locale`, `vehicle_body_id`) VALUES
(1, 'safty', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Malcolm Yang', 'en', 2),
(4, 'Christine Wiley', 'kh', 2),
(5, 'Melinda Solomon', 'en', 3),
(6, 'Rae Morrow', 'kh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_colors`
--

CREATE TABLE `vehicle_colors` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_colors`
--

INSERT INTO `vehicle_colors` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-12-02 23:42:21', '2019-12-02 23:42:21', NULL),
(2, 1, '2019-12-13 09:00:07', '2019-12-13 09:00:07', NULL),
(3, 1, '2019-12-18 05:54:20', '2019-12-18 05:54:20', NULL),
(4, 1, '2019-12-20 01:39:16', '2019-12-20 01:39:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_colors_translations`
--

CREATE TABLE `vehicle_colors_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_colors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_colors_translations`
--

INSERT INTO `vehicle_colors_translations` (`id`, `name`, `locale`, `vehicle_colors_id`) VALUES
(1, 'Red', 'en', 1),
(2, 'ក្រហម', 'kh', 1),
(3, 'Z Black', 'en', 2),
(4, 'Z Black', 'kh', 2),
(5, 'Sparking Black', 'en', 3),
(6, 'Sparking Black', 'kh', 3),
(7, 'Test_colors', 'en', 4),
(8, 'Test_colors', 'kh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_comfort_conveniences`
--

CREATE TABLE `vehicle_comfort_conveniences` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_comfort_conveniences`
--

INSERT INTO `vehicle_comfort_conveniences` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574430010-125146372.png', '2019-11-22 08:10:10', '2019-11-22 08:10:14', NULL),
(2, 0, NULL, '2019-11-25 08:19:07', '2019-11-25 08:19:07', NULL),
(3, 0, NULL, '2019-11-26 05:26:47', '2019-11-26 05:26:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_comfort_convenience_translations`
--

CREATE TABLE `vehicle_comfort_convenience_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(222) NOT NULL,
  `vehicle_comfort_convenience_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_comfort_convenience_translations`
--

INSERT INTO `vehicle_comfort_convenience_translations` (`id`, `name`, `locale`, `vehicle_comfort_convenience_id`) VALUES
(1, 'demo', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Hedley Mccullough', 'en', 2),
(4, 'Xavier Duffy', 'kh', 2),
(5, 'Jin Singleton', 'en', 3),
(6, 'Adam Crawford', 'kh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_cylinders`
--

CREATE TABLE `vehicle_cylinders` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_cylinders`
--

INSERT INTO `vehicle_cylinders` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574429758-1138520243.png', '2019-11-22 08:05:58', '2019-11-22 08:05:58', NULL),
(2, 0, NULL, '2019-11-25 08:18:46', '2019-11-25 08:18:46', NULL),
(3, 0, NULL, '2019-11-26 05:25:22', '2019-11-26 05:25:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_cylinders_translations`
--

CREATE TABLE `vehicle_cylinders_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(200) NOT NULL,
  `vehicle_cylinders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_cylinders_translations`
--

INSERT INTO `vehicle_cylinders_translations` (`id`, `name`, `locale`, `vehicle_cylinders_id`) VALUES
(1, 'demo', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Baker Barr', 'en', 2),
(4, 'Felicia Sanford', 'kh', 2),
(5, 'Hedy Mullins', 'en', 3),
(6, 'Brynn Carlson', 'kh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_drive_types`
--

CREATE TABLE `vehicle_drive_types` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_drive_types`
--

INSERT INTO `vehicle_drive_types` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574429052-865791095.png', '2019-11-22 07:54:12', '2019-11-22 07:54:12', NULL),
(2, 0, NULL, '2019-11-26 05:24:51', '2019-11-26 05:24:51', NULL),
(3, 1, NULL, '2019-12-13 08:49:23', '2019-12-13 08:49:23', NULL),
(4, 1, NULL, '2019-12-18 05:54:01', '2019-12-18 05:54:01', NULL),
(5, 1, NULL, '2019-12-20 00:25:10', '2019-12-20 00:25:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_drive_types_translations`
--

CREATE TABLE `vehicle_drive_types_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vehicle_drive_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_drive_types_translations`
--

INSERT INTO `vehicle_drive_types_translations` (`id`, `locale`, `name`, `vehicle_drive_types_id`) VALUES
(1, 'en', 'We pride f', 1),
(2, 'kh', 'ពេ', 1),
(3, 'en', 'Martina Garrett', 2),
(4, 'kh', 'Hillary Ferrell', 2),
(5, 'en', '4x2', 3),
(6, 'kh', '4x2', 3),
(7, 'en', '2 by 2', 4),
(8, 'kh', '2 by 2', 4),
(9, 'en', 'Test_Left', 5),
(10, 'kh', 'Test_Left', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_engine_capacities`
--

CREATE TABLE `vehicle_engine_capacities` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_engine_capacities`
--

INSERT INTO `vehicle_engine_capacities` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574430037-69577417.png', '2019-11-22 08:10:37', '2019-11-22 08:10:42', NULL),
(2, 0, NULL, '2019-11-25 08:19:00', '2019-11-25 08:19:00', NULL),
(3, 0, NULL, '2019-11-26 05:26:59', '2019-11-26 05:26:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_engine_capacity_translations`
--

CREATE TABLE `vehicle_engine_capacity_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(222) NOT NULL,
  `vehicle_engine_capacity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_engine_capacity_translations`
--

INSERT INTO `vehicle_engine_capacity_translations` (`id`, `name`, `locale`, `vehicle_engine_capacity_id`) VALUES
(1, 'demo', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Tyler Watson', 'en', 2),
(4, 'Howard Cannon', 'kh', 2),
(5, '1000 cc', 'en', 3),
(6, 'Keely Chang', 'kh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_engine_types`
--

CREATE TABLE `vehicle_engine_types` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_engine_types`
--

INSERT INTO `vehicle_engine_types` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-12-10 12:25:32', '2019-12-10 12:25:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_engine_type_translations`
--

CREATE TABLE `vehicle_engine_type_translations` (
  `id` int(11) NOT NULL,
  `vehicle_engine_type_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `locale` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_engine_type_translations`
--

INSERT INTO `vehicle_engine_type_translations` (`id`, `vehicle_engine_type_id`, `name`, `locale`) VALUES
(1, 1, 'Petrol', 'en'),
(2, 1, 'Petrol1', 'kh');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_enquires`
--

CREATE TABLE `vehicle_enquires` (
  `id` int(11) UNSIGNED NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `details` text CHARACTER SET utf8 NOT NULL,
  `is_dealer_response` tinyint(4) NOT NULL DEFAULT '0',
  `is_trade_in` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_enquires`
--

INSERT INTO `vehicle_enquires` (`id`, `vehicle_id`, `postcode`, `name`, `email`, `phone`, `details`, `is_dealer_response`, `is_trade_in`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1004, '302012', 'Jack Smith', 'jacksmith@yopmail.com', '9887312731', 'Hi i want to buy this car. Please contact. Hi i want to buy this car. Please contact.', 1, 1, '2019-12-17 10:01:30', '2019-12-17 15:31:30', NULL),
(8, 1004, '302017', 'Testing user3', 'testinguser3@yopmail.com', '123456781290', 'Testinguser3 message', 1, 0, '2019-12-18 01:23:37', '2019-12-18 06:53:37', NULL),
(9, 1004, '302012', 'Adam Smith', 'Adam@yopmail.com', '9694728151', 'I am interested in this car. Please contact.', 1, 1, '2019-12-18 01:40:55', '2019-12-18 07:10:55', NULL),
(10, 1004, '201305', 'vivek choudhary', 'eager-admin@yopmail.com', '09876543210', 'rtrttreter', 1, 1, '2019-12-20 01:32:23', '2019-12-20 07:02:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_enquiry_responses`
--

CREATE TABLE `vehicle_enquiry_responses` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `details` text,
  `action` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_exteriors`
--

CREATE TABLE `vehicle_exteriors` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_exteriors`
--

INSERT INTO `vehicle_exteriors` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1574429906-1112574770.png', '2019-11-22 08:08:26', '2019-11-22 08:08:30', NULL),
(2, 0, NULL, '2019-11-25 08:18:53', '2019-11-25 08:18:53', NULL),
(3, 0, NULL, '2019-11-26 05:26:06', '2019-11-26 05:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_exterior_translations`
--

CREATE TABLE `vehicle_exterior_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(222) NOT NULL,
  `vehicle_exterior_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_exterior_translations`
--

INSERT INTO `vehicle_exterior_translations` (`id`, `name`, `locale`, `vehicle_exterior_id`) VALUES
(1, 'demo', 'en', 1),
(2, 'វេលារប', 'kh', 1),
(3, 'Ramona Emerson', 'en', 2),
(4, 'Mohammad Stephenson', 'kh', 2),
(5, 'Veda Hays', 'en', 3),
(6, 'Heidi Blanchard', 'kh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_features`
--

CREATE TABLE `vehicle_features` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_features`
--

INSERT INTO `vehicle_features` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '2019-12-05 14:49:19', '2019-12-05 14:49:19', NULL),
(2, 1, NULL, '2019-12-11 10:02:34', '2019-12-11 10:02:34', NULL),
(3, 1, NULL, '2019-12-11 10:02:42', '2019-12-11 10:02:42', NULL),
(4, 1, NULL, '2019-12-11 10:02:52', '2019-12-11 10:02:52', NULL),
(5, 1, NULL, '2019-12-11 10:03:03', '2019-12-11 10:03:03', NULL),
(6, 1, NULL, '2019-12-11 10:03:10', '2019-12-11 10:03:10', NULL),
(7, 1, NULL, '2019-12-11 10:03:20', '2019-12-11 10:03:20', NULL),
(8, 1, NULL, '2019-12-18 07:08:47', '2019-12-18 07:08:47', NULL),
(9, 1, NULL, '2019-12-18 12:22:07', '2019-12-18 12:22:07', NULL),
(10, 1, NULL, '2019-12-20 07:11:37', '2019-12-20 07:11:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_feature_translations`
--

CREATE TABLE `vehicle_feature_translations` (
  `id` int(11) NOT NULL,
  `vehicle_feature_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `locale` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_feature_translations`
--

INSERT INTO `vehicle_feature_translations` (`id`, `vehicle_feature_id`, `name`, `locale`) VALUES
(1, 1, 'Rear AC', 'en'),
(2, 1, 'Rear AC', 'kh'),
(3, 2, 'Side Airbags', 'en'),
(4, 2, 'Side Airbags', 'kh'),
(5, 3, 'Front Airbags', 'en'),
(6, 3, 'Front Airbags', 'kh'),
(7, 4, 'Central Locking', 'en'),
(8, 4, 'Central Locking', 'kh'),
(9, 5, 'Touchscreen Music', 'en'),
(10, 5, 'Touchscreen Music', 'kh'),
(11, 6, 'Fog Lamp', 'en'),
(12, 6, 'Fog Lamp', 'kh'),
(13, 7, 'AC', 'en'),
(14, 7, 'AC', 'kh'),
(15, 8, 'Leather seats', 'en'),
(16, 8, 'Leather seats', 'kh'),
(17, 9, 'Feature Feature Feature Feature Feature Feature Feature', 'en'),
(18, 9, 'Feature Feature Feature Feature Feature Feature Feature Feature Feature Feature Feature Feature Feature Feature', 'kh'),
(19, 10, 'Test_Feature', 'en'),
(20, 10, 'Test_Feature', 'kh');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fuel_types`
--

CREATE TABLE `vehicle_fuel_types` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `slug` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_fuel_types`
--

INSERT INTO `vehicle_fuel_types` (`id`, `status`, `slug`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'diesel', '1574429329-1237987877.png', '2019-11-22 07:55:04', '2019-12-13 08:53:09', NULL),
(2, 1, 'petrol', NULL, '2019-11-26 05:24:59', '2019-12-13 08:52:55', NULL),
(3, 1, 'electric', NULL, '2019-12-13 08:55:01', '2019-12-13 08:55:01', NULL),
(4, 0, 'test-fuel', NULL, '2019-12-20 00:25:40', '2019-12-20 00:25:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fuel_types_translations`
--

CREATE TABLE `vehicle_fuel_types_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_fuel_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_fuel_types_translations`
--

INSERT INTO `vehicle_fuel_types_translations` (`id`, `name`, `locale`, `vehicle_fuel_types_id`) VALUES
(1, 'Diesel', 'en', 1),
(2, 'Diesel', 'kh', 1),
(3, 'Petrol', 'en', 2),
(4, 'Petrol', 'kh', 2),
(5, 'Electric', 'en', 3),
(6, 'Electric', 'kh', 3),
(7, 'Test_fuel', 'en', 4),
(8, 'Test_fuel', 'kh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_images`
--

CREATE TABLE `vehicle_images` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `sort_order` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` text,
  `image_type` enum('front','rear','side','other') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_images`
--

INSERT INTO `vehicle_images` (`id`, `vehicle_id`, `sort_order`, `image`, `caption`, `image_type`, `created_at`, `updated_at`) VALUES
(87, 1047, '0', '15779585740.png', 'Image', 'front', '2020-01-02 09:49:37', '2020-01-02 04:19:37'),
(88, 1047, '1', '15779585741.png', 'Image', 'rear', '2020-01-02 09:49:37', '2020-01-02 04:19:37'),
(89, 1048, '0', '15779598360.png', 'Image', 'front', '2020-01-02 10:10:38', '2020-01-02 04:40:38'),
(90, 1048, '1', '15779598361.png', 'Image', 'rear', '2020-01-02 10:10:38', '2020-01-02 04:40:38'),
(91, 1048, '2', '15779598362.png', 'Image', 'rear', '2020-01-02 10:10:38', '2020-01-02 04:40:38'),
(92, 1048, '3', '15779598373.png', 'Image', 'rear', '2020-01-02 10:10:38', '2020-01-02 04:40:38'),
(93, 1048, '4', '15779598374.png', 'Image', 'rear', '2020-01-02 10:10:38', '2020-01-02 04:40:38'),
(102, 1050, '0', '15779634710.png', 'Image', 'front', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(103, 1050, '1', '15779634721.png', 'Image', 'rear', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(104, 1050, '2', '15779634732.png', 'Image', 'rear', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(105, 1050, '3', '15779634733.png', 'Image', 'rear', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(106, 1050, '4', '15779634744.png', 'Image', 'rear', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(107, 1050, '5', '15779634745.png', 'Image', 'rear', '2020-01-02 11:11:14', '2020-01-02 05:41:14'),
(108, 1051, '0', '15779674260.png', 'Image', 'front', '2020-01-02 12:17:07', '2020-01-02 06:47:07'),
(109, 1051, '1', '15779674271.png', 'Image', 'rear', '2020-01-02 12:17:07', '2020-01-02 06:47:07'),
(110, 1051, '2', '15779674272.png', 'Image', 'rear', '2020-01-02 12:17:07', '2020-01-02 06:47:07'),
(111, 1004, '0', 'BHXYnTxtOii5H3hIht0NCoARLikwqciMEOaNzQHv.jpeg', NULL, 'front', '2020-01-02 12:32:16', '2020-01-02 07:02:16'),
(112, 1004, '1', 'gsP3HrEQ4jRRDr4m9uAVf1Cm0Tcmz51XCH8goirk.jpeg', NULL, 'front', '2020-01-02 12:32:17', '2020-01-02 07:02:17'),
(113, 1004, '2', 'Iwazve0nte4FJcDuj6myXA6nOqtCp0DAFKMSFVRF.jpeg', NULL, 'front', '2020-01-02 12:32:17', '2020-01-02 07:02:17'),
(118, 1047, '3', '3_Hydrangeas.jpg', 'image', 'rear', '2020-01-03 11:28:15', '2020-01-03 05:58:15'),
(119, 1047, '4', '4_Jellyfish.jpg', 'image', 'rear', '2020-01-03 11:28:25', '2020-01-03 05:58:25'),
(122, 1056, '1', '1_Hyundai-Grand-i10-Test-Drive-Review.jpg', 'image', 'front', '2020-01-03 12:47:39', '2020-01-03 07:17:39'),
(123, 1056, '2', '2_i10.jpg', 'image', 'rear', '2020-01-03 12:47:47', '2020-01-03 07:17:47'),
(125, 1056, '4', '4_nios-grand-i10-1021x574.jpg', 'image', 'rear', '2020-01-03 12:48:03', '2020-01-03 07:18:03'),
(126, 1056, '4', '4_20190730023710_2019-Audi-Q7-front-action.jpg', 'image', 'rear', '2020-01-03 12:48:26', '2020-01-03 07:18:26'),
(127, 1057, '0', '15780576940.jpg', 'Image', 'front', '2020-01-03 13:21:35', '2020-01-03 07:51:35'),
(128, 1057, '1', '15780576951.jpg', 'Image', 'rear', '2020-01-03 13:21:35', '2020-01-03 07:51:35'),
(129, 1057, '0', '15780579330.jpg', 'Image', 'front', '2020-01-03 13:25:34', '2020-01-03 07:55:34'),
(130, 1057, '1', '15780579331.jpg', 'Image', 'rear', '2020-01-03 13:25:34', '2020-01-03 07:55:34'),
(131, 1057, '2', '15780579342.jpg', 'Image', 'rear', '2020-01-03 13:25:34', '2020-01-03 07:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_instruments_controls`
--

CREATE TABLE `vehicle_instruments_controls` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_interiors`
--

CREATE TABLE `vehicle_interiors` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_interiors`
--

INSERT INTO `vehicle_interiors` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, '2019-11-15 00:41:44', '2019-11-15 00:42:12', NULL),
(2, 0, '1573894452-183375827.jpg', '2019-11-16 03:24:12', '2019-11-16 03:24:12', NULL),
(3, 1, '1573894463-900911349.jpg', '2019-11-16 03:24:12', '2019-11-16 03:24:23', NULL),
(4, 1, '1574146730-1480871749.png', '2019-11-19 01:28:50', '2019-11-19 01:28:59', NULL),
(5, 1, '1574429962-1889441172.png', '2019-11-22 08:09:22', '2019-11-22 08:09:22', NULL),
(6, 0, NULL, '2019-11-26 05:26:20', '2019-11-26 05:26:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_interior_translations`
--

CREATE TABLE `vehicle_interior_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(150) NOT NULL,
  `vehicle_interior_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_interior_translations`
--

INSERT INTO `vehicle_interior_translations` (`id`, `name`, `locale`, `vehicle_interior_id`) VALUES
(1, 'mjuhmyguj', 'en', 2),
(2, 'cdscsc', 'kh', 2),
(3, 'mjuhmyguj', 'en', 3),
(4, 'cdscsc', 'kh', 3),
(5, 'នៅខាងក្រៅ', 'en', 4),
(6, 'នៅខាងក្រៅ', 'kh', 4),
(7, 'demo', 'en', 5),
(8, 'វេលារប', 'kh', 5),
(9, 'Sophia Cole', 'en', 6),
(10, 'Veda York', 'kh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_lifestyles`
--

CREATE TABLE `vehicle_lifestyles` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_lifestyles`
--

INSERT INTO `vehicle_lifestyles` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-12-06 12:48:08', '2019-12-06 12:48:08', NULL),
(2, 1, '2019-12-13 14:35:11', '2019-12-13 14:35:11', NULL),
(3, 1, '2019-12-13 14:35:19', '2019-12-13 14:35:19', NULL),
(4, 1, '2019-12-18 12:21:32', '2019-12-18 12:21:32', NULL),
(5, 1, '2019-12-18 12:22:41', '2019-12-18 12:22:41', NULL),
(6, 1, '2019-12-20 07:12:10', '2019-12-20 07:12:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_lifestyle_translations`
--

CREATE TABLE `vehicle_lifestyle_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `vehicle_lifestyle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_lifestyle_translations`
--

INSERT INTO `vehicle_lifestyle_translations` (`id`, `name`, `locale`, `vehicle_lifestyle_id`) VALUES
(1, 'Family', 'en', 1),
(2, 'Family', 'kh', 1),
(3, 'First Car', 'en', 2),
(4, 'First Car', 'kh', 2),
(5, 'Green', 'en', 3),
(6, 'Green', 'kh', 3),
(7, 'sports sports sports sports sports sports sports sports sports sports sports sports', 'en', 4),
(8, 'asdfa sasdf asdfasdfasd sdaf sdasdfa sasdf asdfasdfasd sdaf sdasdfa sasdf asdfasdfasd sdaf sdasdfa sasdf asdfasdfasd sdaf sd', 'kh', 4),
(9, 'Vehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle Lifestyle', 'en', 5),
(10, 'Vehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle LifestyleVehicle Lifestyle', 'kh', 5),
(11, 'Test_lifestyle', 'en', 6),
(12, 'Test_lifestyle', 'kh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_light_windows`
--

CREATE TABLE `vehicle_light_windows` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_light_windows`
--

INSERT INTO `vehicle_light_windows` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '2019-11-15 00:30:13', '2019-11-15 00:31:06', NULL),
(2, 1, '1573894978-519267412.jpg', '2019-11-16 03:32:49', '2019-11-16 03:32:58', NULL),
(3, 1, '1574139296-569606479.png', '2019-11-18 23:24:56', '2019-11-18 23:24:56', NULL),
(4, 1, '1574170553-1459220832.jpg', '2019-11-19 08:05:53', '2019-11-19 08:05:53', NULL),
(5, 1, '1574429828-520309698.png', '2019-11-22 08:07:08', '2019-11-22 08:07:08', NULL),
(6, 0, NULL, '2019-11-26 05:25:39', '2019-11-26 05:25:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_light_windows_translations`
--

CREATE TABLE `vehicle_light_windows_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_light_windows_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_light_windows_translations`
--

INSERT INTO `vehicle_light_windows_translations` (`id`, `name`, `locale`, `vehicle_light_windows_id`) VALUES
(1, 'bhjmgmjg', 'en', 2),
(2, 'vfdscascdsa', 'kh', 2),
(3, 'Light', 'en', 3),
(4, 'Demo Ds', 'kh', 3),
(5, 'asfsadf', 'en', 4),
(6, 'sadd', 'kh', 4),
(7, 'demo', 'en', 5),
(8, 'វេលារប', 'kh', 5),
(9, 'Dexter Russo', 'en', 6),
(10, 'Lani Ware', 'kh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_makes`
--

CREATE TABLE `vehicle_makes` (
  `id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_makes`
--

INSERT INTO `vehicle_makes` (`id`, `slug`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hyundai', 1, '1576509011-117945433.png', '2019-12-06 07:54:45', '2019-12-16 09:40:11', NULL),
(2, 'audi', 1, '1576508889-272608864.png', '2019-12-06 07:54:56', '2019-12-16 09:38:09', NULL),
(3, 'honda', 1, '1576508975-1044654804.png', '2019-12-11 09:07:50', '2019-12-16 09:39:35', NULL),
(4, 'maruti', 1, '1576509001-848347596.png', '2019-12-11 09:08:03', '2019-12-16 09:40:01', NULL),
(5, 'abarth', 1, '1576508934-1628980898.png', '2019-12-12 03:31:58', '2019-12-16 09:38:54', NULL),
(6, 'ford', 1, '1576508914-1982932060.png', '2019-12-13 08:41:49', '2019-12-16 09:38:34', NULL),
(7, 'kia', 1, '1576572279-1838924276.jpg', '2019-12-17 03:14:39', '2019-12-17 03:14:39', NULL),
(8, 'ford-1', 1, '1576664042-1916955978.jpg', '2019-12-18 04:44:02', '2019-12-18 04:44:02', NULL),
(9, 'mahindara', 1, '1576733087-1891681310.png', '2019-12-18 23:54:47', '2019-12-18 23:54:47', NULL),
(10, 'tata', 1, '1576733923-2098928367.png', '2019-12-19 00:08:43', '2019-12-19 00:08:43', NULL),
(11, 'test-make', 1, '1576821162-887211736.jpg', '2019-12-20 00:22:42', '2019-12-20 00:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make_translations`
--

CREATE TABLE `vehicle_make_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_make_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_make_translations`
--

INSERT INTO `vehicle_make_translations` (`id`, `locale`, `vehicle_make_id`, `name`) VALUES
(1, 'en', 1, 'Hyundai'),
(2, 'kh', 1, 'Hyundai'),
(3, 'en', 2, 'Audi'),
(4, 'kh', 2, 'Audi'),
(5, 'en', 3, 'BMW'),
(6, 'kh', 3, 'BMW'),
(7, 'en', 4, 'Chevrolet'),
(8, 'kh', 4, 'Chevrolet'),
(9, 'en', 5, 'Abarth'),
(10, 'kh', 5, 'Abarth'),
(11, 'en', 6, 'Fiat'),
(12, 'kh', 6, 'Fiat'),
(13, 'en', 7, 'Kia'),
(14, 'kh', 7, 'Kia'),
(15, 'en', 8, 'Ford'),
(16, 'kh', 8, 'Ford'),
(17, 'en', 9, 'Mahindra'),
(18, 'kh', 9, 'Mahindra'),
(19, 'en', 10, 'TATA'),
(20, 'kh', 10, 'TATA'),
(21, 'en', 11, 'Test_make'),
(22, 'kh', 11, 'Test_make');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` int(11) NOT NULL,
  `makes_id` int(11) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `makes_id`, `slug`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'grand-i10', 1, NULL, '2019-12-06 07:55:21', '2019-12-17 09:31:15', NULL),
(2, 2, '', 1, NULL, '2019-12-06 07:55:35', '2019-12-06 07:55:35', NULL),
(3, 4, 'ertica', 1, NULL, '2019-12-11 09:08:27', '2019-12-11 09:08:27', NULL),
(4, 4, 'baleno', 1, NULL, '2019-12-11 09:08:42', '2019-12-11 09:08:42', NULL),
(5, 2, 'model-1', 1, NULL, '2019-12-12 03:08:19', '2019-12-12 03:08:19', NULL),
(6, 5, '124', 1, NULL, '2019-12-12 03:32:16', '2019-12-12 03:32:16', NULL),
(7, 5, '500', 1, NULL, '2019-12-12 03:32:39', '2019-12-12 03:32:39', NULL),
(8, 6, 'figo', 1, NULL, '2019-12-13 08:43:43', '2019-12-13 08:43:43', NULL),
(9, 8, 'capri', 1, '1576664094-539431207.jpg', '2019-12-18 04:44:54', '2019-12-18 04:44:54', NULL),
(10, 9, 'scorpio', 1, '1576733136-1703877873.jpg', '2019-12-18 23:55:36', '2019-12-18 23:55:36', NULL),
(11, 10, 'gravitas', 1, '1576733967-1126061991.jpg', '2019-12-19 00:09:27', '2019-12-19 00:09:27', NULL),
(12, 11, 'test-vehicle', 1, NULL, '2019-12-20 00:23:34', '2019-12-20 00:23:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model_translations`
--

CREATE TABLE `vehicle_model_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vehicle_model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_model_translations`
--

INSERT INTO `vehicle_model_translations` (`id`, `locale`, `name`, `vehicle_model_id`) VALUES
(1, 'en', 'Grand i10', 1),
(2, 'kh', 'Grand I10', 1),
(3, 'en', 'Q7', 2),
(4, 'kh', 'Q7', 2),
(5, 'en', 'Ertica', 3),
(6, 'kh', 'Ertica', 3),
(7, 'en', 'Baleno', 4),
(8, 'kh', 'Baleno', 4),
(9, 'en', 'Model 1', 5),
(10, 'kh', 'Model 1', 5),
(11, 'en', '124', 6),
(12, 'kh', '124', 6),
(13, 'en', '500', 7),
(14, 'kh', '500', 7),
(15, 'en', 'Figo', 8),
(16, 'kh', 'Figo', 8),
(17, 'en', 'Capri', 9),
(18, 'kh', 'Capri', 9),
(19, 'en', 'Scorpio', 10),
(20, 'kh', 'Scorpio', 10),
(21, 'en', 'Gravitas', 11),
(22, 'kh', 'Gravitas', 11),
(23, 'en', 'Test_vehicle', 12),
(24, 'kh', 'Test_vehicle', 12);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_safety_securities`
--

CREATE TABLE `vehicle_safety_securities` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_safety_securities`
--

INSERT INTO `vehicle_safety_securities` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, '2019-11-15 00:33:24', '2019-11-15 00:33:55', NULL),
(2, 1, '1573895352-1028266444.jpg', '2019-11-16 03:39:12', '2019-11-16 03:39:20', NULL),
(3, 1, '1574146275-1397295997.png', '2019-11-19 01:21:15', '2019-11-19 01:21:28', NULL),
(4, 1, '1574429860-1553996965.png', '2019-11-22 08:07:40', '2019-11-22 08:07:40', NULL),
(5, 0, NULL, '2019-11-26 05:25:47', '2019-11-26 05:25:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_safety_security_translations`
--

CREATE TABLE `vehicle_safety_security_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_safety_security_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_safety_security_translations`
--

INSERT INTO `vehicle_safety_security_translations` (`id`, `name`, `locale`, `vehicle_safety_security_id`) VALUES
(1, 'cdxcsc', 'en', 2),
(2, 'nhgngngf', 'kh', 2),
(3, 'safty', 'en', 3),
(4, 'សុវត្ថិភាព', 'kh', 3),
(5, 'demo', 'en', 4),
(6, 'វេលារប', 'kh', 4),
(7, 'Kristen Ward', 'en', 5),
(8, 'Melanie Yates', 'kh', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_seriess`
--

CREATE TABLE `vehicle_seriess` (
  `id` int(11) NOT NULL,
  `makes_id` int(11) DEFAULT NULL,
  `models_id` int(11) NOT NULL,
  `badges_id` int(11) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_seriess`
--

INSERT INTO `vehicle_seriess` (`id`, `makes_id`, `models_id`, `badges_id`, `slug`, `icon`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, 1, '800', NULL, 1, '2019-12-06 07:56:58', '2019-12-16 09:51:26', NULL),
(2, 4, 3, 3, 'ertica1234524', NULL, 1, '2019-12-11 09:10:03', '2019-12-11 09:10:03', NULL),
(3, 4, 3, 3, 'ertica1234524g', NULL, 1, '2019-12-11 09:10:15', '2019-12-11 09:10:15', NULL),
(4, 5, 6, 6, '348', NULL, 1, '2019-12-12 03:36:12', '2019-12-12 03:36:12', NULL),
(5, 5, 6, 6, '348-series-1', NULL, 1, '2019-12-12 03:36:44', '2019-12-12 03:36:44', NULL),
(6, 5, 6, 7, '348-model', NULL, 1, '2019-12-12 03:38:34', '2019-12-12 03:38:34', NULL),
(7, 5, 6, 8, '348-series-1-1', NULL, 1, '2019-12-12 03:39:47', '2019-12-12 03:39:47', NULL),
(8, 5, 7, 9, 'series-1', NULL, 1, '2019-12-12 03:40:22', '2019-12-12 03:40:22', NULL),
(9, 5, 7, 10, 'series-2', NULL, 1, '2019-12-12 03:40:58', '2019-12-12 03:40:58', NULL),
(10, 1, 1, 4, 'qs', NULL, 1, '2019-12-17 09:33:17', '2019-12-17 09:33:17', NULL),
(11, 8, 9, 11, 'a-3', '1576668290-413958074.jpg', 1, '2019-12-18 05:54:50', '2019-12-18 05:54:50', NULL),
(12, 8, 9, 11, 'a-3a-3a-3a-3a-3a-3a-3a-3a-3a-3', NULL, 1, '2019-12-18 06:51:15', '2019-12-18 06:51:15', NULL),
(13, 9, 10, 12, 'aaaa-bbb-ccc', '1576733837-800369010.jpg', 1, '2019-12-19 00:07:17', '2019-12-19 00:07:17', NULL),
(14, 10, 11, 14, '123', '1576734103-2129511471.jpg', 1, '2019-12-19 00:11:43', '2019-12-19 00:11:43', NULL),
(15, 9, 10, 13, 'asasassas-12313123131231313', '1576736869-1323067204.jpg', 1, '2019-12-19 00:57:49', '2019-12-19 00:58:32', NULL),
(16, 11, 12, 15, 'test-series', '1576825855-1208381397.jpg', 1, '2019-12-20 01:40:55', '2019-12-20 01:40:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_series_translations`
--

CREATE TABLE `vehicle_series_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_series_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_series_translations`
--

INSERT INTO `vehicle_series_translations` (`id`, `name`, `locale`, `vehicle_series_id`) VALUES
(1, '800', 'en', 1),
(2, 'Test', 'kh', 1),
(3, 'ertica1234524', 'en', 2),
(4, 'ertica1234524', 'kh', 2),
(5, 'ertica1234524g', 'en', 3),
(6, 'ertica12345244', 'kh', 3),
(7, '348', 'en', 4),
(8, '348', 'kh', 4),
(9, '348 Series 1', 'en', 5),
(10, '348 Series 1', 'kh', 5),
(11, '348_Model', 'en', 6),
(12, '348_Model', 'kh', 6),
(13, '348_Series_1', 'en', 7),
(14, '348_Series_1', 'kh', 7),
(15, 'Series_1', 'en', 8),
(16, 'Series_1', 'kh', 8),
(17, 'Series_2', 'en', 9),
(18, 'Series_2', 'kh', 9),
(19, 'QS', 'en', 10),
(20, 'QS', 'kh', 10),
(21, 'A#3', 'en', 11),
(22, 'A#3', 'kh', 11),
(23, 'A#3A#3A#3A#3A#3A#3A#3A#3A#3A#3', 'en', 12),
(24, 'A#3A#3A#3A#3A#3A#3A#3A#3A#3A#3', 'kh', 12),
(25, 'AAAA BBB CCC', 'en', 13),
(26, 'AAAA BBB CCC', 'kh', 13),
(27, '123#####', 'en', 14),
(28, '123#####', 'kh', 14),
(29, 'ASASASSAS 12313123131231313', 'en', 15),
(30, 'ASASASSAS 12313123131231313', 'kh', 15),
(31, 'Test_series', 'en', 16),
(32, 'Test_series', 'kh', 16);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_suspensions`
--

CREATE TABLE `vehicle_suspensions` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_suspensions`
--

INSERT INTO `vehicle_suspensions` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, '2019-11-15 00:28:06', '2019-11-15 00:28:28', NULL),
(2, 0, '1573895706-1552177215.jpg', '2019-11-16 03:44:52', '2019-11-16 03:45:06', NULL),
(3, 1, '1574085750-1976600659.png', '2019-11-18 08:32:30', '2019-11-18 08:32:30', NULL),
(4, 0, '1574429796-1935797829.png', '2019-11-22 08:06:36', '2019-11-22 08:06:45', NULL),
(5, 0, NULL, '2019-11-26 05:25:31', '2019-11-26 05:25:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_suspension_translations`
--

CREATE TABLE `vehicle_suspension_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_suspension_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_suspension_translations`
--

INSERT INTO `vehicle_suspension_translations` (`id`, `name`, `locale`, `vehicle_suspension_id`) VALUES
(1, 'nhgbngfbhgf', 'en', 2),
(2, 'xsaxaxax', 'kh', 2),
(3, 'car', 'en', 3),
(4, 'sd', 'kh', 3),
(5, 'demo', 'en', 4),
(6, 'fsdgswgshgdsfhd', 'kh', 4),
(7, 'Fuller Shepard', 'en', 5),
(8, 'Tana Ochoa', 'kh', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_translations`
--

CREATE TABLE `vehicle_translations` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_translations`
--

INSERT INTO `vehicle_translations` (`id`, `vehicle_id`, `locale`, `description`) VALUES
(11, 1004, 'en', 'Buy a pre-owned car with confidence at a one of Melbourne\'s oldest dealer groups dating back over 100 years. We are conveniently located just off the Monash Freeway and a stones throw away from Shopping Centre.\r\n\r\nWhen you purchase a car from us you become part of the family and we look after your investment for life - Most of our vehicles come with a 1 Year Mechanical Protection Plan, 7 Day Exchange Policy and 1 Year Roadside Assist.\r\n\r\nNeed help with finance and insurance Beat the Banks and save thousands with our in store easy approval finance and insurance options. Have a car that you\'d like to sell We have access to Victoria\'s top valuers, who can appraise your car and offer you top dollar! Enquire today'),
(12, 1004, 'kh', 'Buy a pre-owned car with confidence at a one of Melbourne\'s oldest dealer groups dating back over 100 years. We are conveniently located just off the Monash Freeway and a stones throw away from Shopping Centre.\r\n\r\nWhen you purchase a car from us you become part of the family and we look after your investment for life - Most of our vehicles come with a 1 Year Mechanical Protection Plan, 7 Day Exchange Policy and 1 Year Roadside Assist.\r\n\r\nNeed help with finance and insurance Beat the Banks and save thousands with our in store easy approval finance and insurance options. Have a car that you\'d like to sell We have access to Victoria\'s top valuers, who can appraise your car and offer you top dollar! Enquire today'),
(95, 1047, 'en', 'Sfghghjj'),
(96, 1047, 'kh', 'Gghhhbhhfv'),
(97, 1048, 'en', 'Snbddb'),
(98, 1048, 'kh', 'Ndnsjdjd'),
(101, 1050, 'en', 'Bnnfbnk'),
(102, 1050, 'kh', 'I bbvnmnxb'),
(103, 1051, 'en', 'Asdfdasfsdafds'),
(104, 1051, 'kh', 'asdfasdfdsaf'),
(113, 1047, 'en', 'Sfghghjj'),
(114, 1047, 'kh', 'Sfghghjj'),
(115, 1056, 'en', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(116, 1056, 'kh', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(117, 1056, 'en', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(118, 1056, 'kh', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(119, 1056, 'en', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(120, 1056, 'kh', 'Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition Grand i10 in new condition'),
(121, 1057, 'en', 'Engineer and'),
(122, 1057, 'kh', 'Ff');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_transmissions`
--

CREATE TABLE `vehicle_transmissions` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_transmissions`
--

INSERT INTO `vehicle_transmissions` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 0, '1573896313-1548698192.jpg', '2019-11-16 03:55:13', '2019-11-16 03:55:21', NULL),
(3, 0, '1574085451-412139584.png', '2019-11-18 08:27:31', '2019-11-18 08:27:31', NULL),
(4, 1, '1574429566-1334680477.png', '2019-11-22 08:02:46', '2019-11-22 08:02:54', NULL),
(5, 1, NULL, '2019-11-26 05:25:07', '2019-11-26 05:25:07', NULL),
(6, 1, NULL, '2019-12-20 01:37:24', '2019-12-20 01:37:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_transmissions_translations`
--

CREATE TABLE `vehicle_transmissions_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_transmissions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_transmissions_translations`
--

INSERT INTO `vehicle_transmissions_translations` (`id`, `name`, `locale`, `vehicle_transmissions_id`) VALUES
(1, 'v dcasdca', 'en', 2),
(2, 'vcdsacsacxsdcasdc', 'kh', 2),
(3, 'car', 'en', 3),
(4, 'sdgdg', 'kh', 3),
(5, 'Manual', 'en', 4),
(6, 'Manual', 'kh', 4),
(7, 'Automatic', 'en', 5),
(8, 'Automatic', 'kh', 5),
(9, 'Test_transmissions', 'en', 6),
(10, 'Test_transmissions', 'kh', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_turbo_superchargies`
--

CREATE TABLE `vehicle_turbo_superchargies` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_vehicle_feature`
--

CREATE TABLE `vehicle_vehicle_feature` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_vehicle_feature`
--

INSERT INTO `vehicle_vehicle_feature` (`vehicle_id`, `vehicle_feature_id`) VALUES
(1004, 1),
(1004, 2),
(1004, 3),
(1004, 6),
(1004, 7),
(1047, 1),
(1047, 2),
(1047, 3),
(1047, 4),
(1047, 10),
(1048, 3),
(1048, 4),
(1048, 6),
(1048, 8),
(1050, 1),
(1050, 2),
(1050, 3),
(1050, 4),
(1051, 2),
(1051, 3),
(1051, 4),
(1051, 5),
(1056, 1),
(1056, 2),
(1056, 3),
(1056, 4),
(1056, 5),
(1056, 8),
(1057, 2),
(1057, 4),
(1057, 6),
(1057, 8),
(1057, 10);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_wheels_tyres`
--

CREATE TABLE `vehicle_wheels_tyres` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_wheels_tyres`
--

INSERT INTO `vehicle_wheels_tyres` (`id`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '2019-11-15 00:39:27', '2019-11-15 00:39:49', NULL),
(2, 1, '1573896900-115178736.jpg', '2019-11-16 04:04:24', '2019-11-16 04:05:00', NULL),
(3, 0, '1574146621-47357339.png', '2019-11-19 01:27:01', '2019-11-19 01:27:08', NULL),
(4, 0, '1574429940-1766782656.png', '2019-11-22 08:08:54', '2019-11-22 08:09:00', NULL),
(5, 0, NULL, '2019-11-26 05:26:12', '2019-11-26 05:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_wheels_tyre_translations`
--

CREATE TABLE `vehicle_wheels_tyre_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_wheels_tyre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_wheels_tyre_translations`
--

INSERT INTO `vehicle_wheels_tyre_translations` (`id`, `name`, `locale`, `vehicle_wheels_tyre_id`) VALUES
(1, 'cdsc vsdfvfdsv', 'en', 2),
(2, 'cscds bgfb', 'kh', 2),
(3, 'នៅខាងក្រៅ', 'en', 3),
(4, 'នៅខាងក្រៅ', 'kh', 3),
(5, 'demo', 'en', 4),
(6, 'វេលារប', 'kh', 4),
(7, 'Kieran Cooke', 'en', 5),
(8, 'Camden Howell', 'kh', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adsence_advertisements`
--
ALTER TABLE `adsence_advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_location` (`page_location_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_template_id` (`email_template_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newss`
--
ALTER TABLE `newss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_translations`
--
ALTER TABLE `news_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_locations`
--
ALTER TABLE `page_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `save_vehicles`
--
ALTER TABLE `save_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_slug_unique` (`slug`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_translations`
--
ALTER TABLE `subscription_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD PRIMARY KEY (`user_id`,`vehicle_id`);

--
-- Indexes for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `vehicle_audio_communications`
--
ALTER TABLE `vehicle_audio_communications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_audio_communication_translations`
--
ALTER TABLE `vehicle_audio_communication_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_badges`
--
ALTER TABLE `vehicle_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_badge_translations`
--
ALTER TABLE `vehicle_badge_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_bodies`
--
ALTER TABLE `vehicle_bodies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_body_styles`
--
ALTER TABLE `vehicle_body_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_body_style_translations`
--
ALTER TABLE `vehicle_body_style_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_body_translations`
--
ALTER TABLE `vehicle_body_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_comfort_conveniences`
--
ALTER TABLE `vehicle_comfort_conveniences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_comfort_convenience_translations`
--
ALTER TABLE `vehicle_comfort_convenience_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_cylinders`
--
ALTER TABLE `vehicle_cylinders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_cylinders_translations`
--
ALTER TABLE `vehicle_cylinders_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_drive_types`
--
ALTER TABLE `vehicle_drive_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_engine_capacities`
--
ALTER TABLE `vehicle_engine_capacities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_engine_capacity_translations`
--
ALTER TABLE `vehicle_engine_capacity_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_engine_types`
--
ALTER TABLE `vehicle_engine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_engine_type_translations`
--
ALTER TABLE `vehicle_engine_type_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_enquires`
--
ALTER TABLE `vehicle_enquires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_enquiry_responses`
--
ALTER TABLE `vehicle_enquiry_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_id` (`enquiry_id`);

--
-- Indexes for table `vehicle_exteriors`
--
ALTER TABLE `vehicle_exteriors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_exterior_translations`
--
ALTER TABLE `vehicle_exterior_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_fuel_types_translations`
--
ALTER TABLE `vehicle_fuel_types_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_instruments_controls`
--
ALTER TABLE `vehicle_instruments_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_interiors`
--
ALTER TABLE `vehicle_interiors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_interior_translations`
--
ALTER TABLE `vehicle_interior_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_lifestyles`
--
ALTER TABLE `vehicle_lifestyles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_light_windows`
--
ALTER TABLE `vehicle_light_windows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_light_windows_translations`
--
ALTER TABLE `vehicle_light_windows_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_make_id` (`vehicle_make_id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model_translations`
--
ALTER TABLE `vehicle_model_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_safety_securities`
--
ALTER TABLE `vehicle_safety_securities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_safety_security_translations`
--
ALTER TABLE `vehicle_safety_security_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_seriess`
--
ALTER TABLE `vehicle_seriess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_series_translations`
--
ALTER TABLE `vehicle_series_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_suspensions`
--
ALTER TABLE `vehicle_suspensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_suspension_translations`
--
ALTER TABLE `vehicle_suspension_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_translations`
--
ALTER TABLE `vehicle_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_transmissions`
--
ALTER TABLE `vehicle_transmissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_transmissions_translations`
--
ALTER TABLE `vehicle_transmissions_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_turbo_superchargies`
--
ALTER TABLE `vehicle_turbo_superchargies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_vehicle_feature`
--
ALTER TABLE `vehicle_vehicle_feature`
  ADD PRIMARY KEY (`vehicle_id`,`vehicle_feature_id`);

--
-- Indexes for table `vehicle_wheels_tyres`
--
ALTER TABLE `vehicle_wheels_tyres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_wheels_tyre_translations`
--
ALTER TABLE `vehicle_wheels_tyre_translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adsence_advertisements`
--
ALTER TABLE `adsence_advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newss`
--
ALTER TABLE `newss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_translations`
--
ALTER TABLE `news_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `page_locations`
--
ALTER TABLE `page_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `save_vehicles`
--
ALTER TABLE `save_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscription_translations`
--
ALTER TABLE `subscription_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;

--
-- AUTO_INCREMENT for table `vehicle_audio_communications`
--
ALTER TABLE `vehicle_audio_communications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_audio_communication_translations`
--
ALTER TABLE `vehicle_audio_communication_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_badges`
--
ALTER TABLE `vehicle_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicle_badge_translations`
--
ALTER TABLE `vehicle_badge_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicle_bodies`
--
ALTER TABLE `vehicle_bodies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_body_styles`
--
ALTER TABLE `vehicle_body_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_body_style_translations`
--
ALTER TABLE `vehicle_body_style_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vehicle_body_translations`
--
ALTER TABLE `vehicle_body_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_comfort_conveniences`
--
ALTER TABLE `vehicle_comfort_conveniences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_comfort_convenience_translations`
--
ALTER TABLE `vehicle_comfort_convenience_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_cylinders`
--
ALTER TABLE `vehicle_cylinders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_cylinders_translations`
--
ALTER TABLE `vehicle_cylinders_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_drive_types`
--
ALTER TABLE `vehicle_drive_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_engine_capacities`
--
ALTER TABLE `vehicle_engine_capacities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_engine_capacity_translations`
--
ALTER TABLE `vehicle_engine_capacity_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_engine_types`
--
ALTER TABLE `vehicle_engine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_engine_type_translations`
--
ALTER TABLE `vehicle_engine_type_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_enquires`
--
ALTER TABLE `vehicle_enquires`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_enquiry_responses`
--
ALTER TABLE `vehicle_enquiry_responses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_exteriors`
--
ALTER TABLE `vehicle_exteriors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_exterior_translations`
--
ALTER TABLE `vehicle_exterior_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_fuel_types_translations`
--
ALTER TABLE `vehicle_fuel_types_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `vehicle_instruments_controls`
--
ALTER TABLE `vehicle_instruments_controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_interiors`
--
ALTER TABLE `vehicle_interiors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_interior_translations`
--
ALTER TABLE `vehicle_interior_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_lifestyles`
--
ALTER TABLE `vehicle_lifestyles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicle_light_windows`
--
ALTER TABLE `vehicle_light_windows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_light_windows_translations`
--
ALTER TABLE `vehicle_light_windows_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicle_model_translations`
--
ALTER TABLE `vehicle_model_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vehicle_safety_securities`
--
ALTER TABLE `vehicle_safety_securities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_safety_security_translations`
--
ALTER TABLE `vehicle_safety_security_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_seriess`
--
ALTER TABLE `vehicle_seriess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vehicle_series_translations`
--
ALTER TABLE `vehicle_series_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vehicle_suspensions`
--
ALTER TABLE `vehicle_suspensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_suspension_translations`
--
ALTER TABLE `vehicle_suspension_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_translations`
--
ALTER TABLE `vehicle_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `vehicle_transmissions`
--
ALTER TABLE `vehicle_transmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_transmissions_translations`
--
ALTER TABLE `vehicle_transmissions_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_turbo_superchargies`
--
ALTER TABLE `vehicle_turbo_superchargies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_wheels_tyres`
--
ALTER TABLE `vehicle_wheels_tyres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_wheels_tyre_translations`
--
ALTER TABLE `vehicle_wheels_tyre_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  ADD CONSTRAINT `adsence_advertisement_translations_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `adsence_advertisements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  ADD CONSTRAINT `email_template_translations_ibfk_1` FOREIGN KEY (`email_template_id`) REFERENCES `email_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD CONSTRAINT `user_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_enquires`
--
ALTER TABLE `vehicle_enquires`
  ADD CONSTRAINT `vehicle_enquires_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD CONSTRAINT `vehicle_images_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  ADD CONSTRAINT `vehicle_make_translations_ibfk_1` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_translations`
--
ALTER TABLE `vehicle_translations`
  ADD CONSTRAINT `vehicle_translations_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_vehicle_feature`
--
ALTER TABLE `vehicle_vehicle_feature`
  ADD CONSTRAINT `vehicle_vehicle_feature_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
