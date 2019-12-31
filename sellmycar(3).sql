-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 02:32 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sellmycar`
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
(1, 3, 5, 1, '2019-12-17 10:05:27', '2019-12-17 04:35:27'),
(2, 2, 1, 1, '2019-12-17 10:18:31', '2019-12-17 09:10:23'),
(3, 3, 5, 1, '2019-12-17 13:07:13', '2019-12-17 07:37:13'),
(4, 3, 5, 1, '2019-12-17 13:27:06', '2019-12-18 06:54:10'),
(5, 4, 1, 1, '2019-12-18 06:55:44', '2019-12-18 01:25:44');

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
(5, 'en', 'App Filter', '1576652144-55507786.png', 5, 1, NULL, 'http://carmarket.projectstatus.in/');

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
(8, 'new', 1, 0, NULL, '2019-11-26 05:08:34', '2019-11-26 05:08:34', NULL),
(18, 'used', 1, 0, NULL, '2019-11-28 04:24:07', '2019-11-28 04:24:07', NULL),
(21, 'gdfgdfgfgh-fghdfghfdgh', 1, 0, NULL, '2019-12-21 00:01:55', '2019-12-21 00:01:55', NULL),
(22, '6456-fghfgh-dsfsdf-fhgfdgh-6786', 1, 0, NULL, '2019-12-21 00:35:35', '2019-12-21 00:35:35', NULL);

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
(1, 'en', 1, 'demo'),
(2, 'kh', 1, 'វេលារប'),
(3, 'en', 2, 'demo 1'),
(4, 'kh', 2, 'df'),
(5, 'en', 3, 'Forrest Robles'),
(6, 'kh', 3, 'Dahlia Rush'),
(7, 'en', 4, 'រដ្ឋាភិបាលកំណត់យកថ្ងៃទី២០ ខែវិច្ឆិកា ជាថ្ងៃកាន់ព្រះរាជមរណទុក្ខជាផ្លូវការនៃមរណភាពសម្តេចរាជបុត្រី ព្រះរៀមនរោត្តម បុប្ផាទេវី'),
(8, 'kh', 4, 'រដ្ឋាភិបាលកំណត់យកថ្ងៃទី២០ ខែវិច្ឆិកា ជាថ្ងៃកាន់ព្រះរាជមរណទុក្ខជាផ្លូវការនៃមរណភាពសម្តេចរាជបុត្រី ព្រះរៀមនរោត្តម បុប្ផាទេវី'),
(9, 'en', 5, '1'),
(10, 'kh', 5, '1'),
(11, 'en', 6, '1 1'),
(12, 'kh', 6, '1 1'),
(13, 'en', 7, '1    1'),
(14, 'kh', 7, '1       1'),
(15, 'en', 8, 'New'),
(16, 'kh', 8, '<h1>Rhoda Albert</h1>'),
(17, 'en', 9, 'Merrill Salinas'),
(18, 'kh', 9, 'Cole Hale'),
(19, 'en', 10, 'Ainsley Vaughan'),
(20, 'kh', 10, 'Bertha Montoya'),
(21, 'en', 11, 'John Alvarado'),
(22, 'kh', 11, 'Mikayla Munoz'),
(23, 'en', 12, '2 2'),
(24, 'kh', 12, '2 2'),
(25, 'en', 13, 'Johhj'),
(26, 'kh', 13, '2'),
(27, 'en', 14, 'Johnsfd'),
(28, 'kh', 14, 'John dfdf'),
(29, 'en', 15, 'Eleanor Haney'),
(30, 'kh', 15, 'Cooper Hoffman'),
(31, 'en', 16, '5 5'),
(32, 'kh', 16, '5 5'),
(33, 'en', 17, '55'),
(34, 'kh', 17, 'Kimberley Middleton'),
(35, 'en', 18, 'Used'),
(36, 'kh', 18, 'User'),
(37, 'en', 19, 'All'),
(38, 'kh', 19, 'All'),
(39, 'en', 20, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា'),
(40, 'kh', 20, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា'),
(41, 'en', 21, 'gdfgdfgfgh fghdfghfdgh fdg df45'),
(42, 'kh', 21, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌'),
(43, 'en', 22, '6456 fghfgh-dsfsdf_fhgfdgh 6786'),
(44, 'kh', 22, '6456 fghfgh-dsfsdf_fhgfdgh 678645fg');

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
(7, 'welcome_mail_to_user', 1, 1, '2019-12-17 12:11:42', NULL, NULL);

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
(12, 'kh', 7, 'Welcome', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hi <span style=\"color:#d8322d;\">##NAME</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\"><br />\r\n			Welcome to the CarMarket.com. Your account has been created. Please use the below OTP to verify your account.<br />\r\n			<br />\r\n			Your OTP is: ##OTP##.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Member Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');

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
(17, '5', 'nulokepej@Yopmail.com', 'Accusamus velit nisi dolor reprehenderit quis au', 'Unde dignissimos eligendi fugit pariatur Sint aasdf asdf asdfasdf  asdf asdf asdf asdf asdf asdf asd', '2019-12-18 01:51:06', '2019-12-18 01:51:06');

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
(1, '2019-12-23', '1576509344-1352876794.jpg', 1, '2019-12-02 11:48:43', '2019-12-16 15:15:44', NULL),
(2, '2019-12-19', '1576509247-367462357.jpg', 1, '2019-12-16 05:37:34', '2019-12-16 15:14:07', NULL),
(3, '2019-12-19', '1576509232-1372750147.jpg', 1, '2019-12-16 06:03:56', '2019-12-17 14:30:48', NULL),
(4, '2019-12-25', '1576509214-2062566511.jpg', 1, '2019-12-16 06:08:58', '2019-12-16 15:13:34', NULL);

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
(8, 'kh', 4, 'Honda Civic is launching soon', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;</p>');

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
('03d196f04acdb9f1fdc60da7db3846d118dddb2ebf7cc55ad4dbe36b6e9ae1a4e45cb59484438bc9', 18, 1, 'MyApp', '[]', 0, '2019-12-16 23:53:06', '2019-12-16 23:53:06', '2020-12-17 05:23:06'),
('06cbf7e361c9345a1f858d0c2ed9d0f9127803f0b5188259b0ba5235d4971f1efd46888a5b8e5275', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:50:38', '2019-12-18 03:50:38', '2020-12-18 09:20:38'),
('07223f57681b3cbc1786b13ce3d2e9247602eb0b93e4d07b0e5a304a63dcabaf2784d1a286caf4ad', 31, 1, 'Personal Access Token', '[]', 0, '2019-12-17 10:08:02', '2019-12-17 10:08:02', '2020-12-17 15:38:02'),
('0772dffbcd96371bae362395ac7df96fc71866ddb0504fa320b40252d39cfa937546e710f7ec1505', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:57:29', '2019-12-18 01:57:29', '2020-12-18 07:27:29'),
('08af61d8b814df2775b75898059e48f73338bb8713acbd78675f38d16363936e39526244198ce11e', 57, 1, 'MyApp', '[]', 0, '2019-12-18 03:39:01', '2019-12-18 03:39:01', '2020-12-18 09:09:01'),
('0af1704007a08ec8dd519f28989f3dfc59901a7343a35607e581c73e1c69e94f249653d8b4f2b6f9', 33, 1, 'Personal Access Token', '[]', 0, '2019-12-17 10:19:19', '2019-12-17 10:19:19', '2020-12-17 15:49:19'),
('12f9ff5bcdcc825a044911798c74fbac789f872a0a5379cd6762a21b149bc54090a051c076bed36a', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:40:21', '2019-12-17 09:40:21', '2020-12-17 15:10:21'),
('13c98e9f37c9cba2fce5dd191306acecfdeac0a27ebac25ce969db5cfd1283bbcf8820ecf502fe74', 55, 1, 'MyApp', '[]', 0, '2019-12-18 03:15:42', '2019-12-18 03:15:42', '2020-12-18 08:45:42'),
('16d16e87ea3b38d3f70ec3477642a7f3070edd2d517debc99d937858b05a85d53689f439b03a9b53', 55, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:23:14', '2019-12-18 03:23:14', '2020-12-18 08:53:14'),
('1751c93ca5e36abe41aff44433060d1bbb64eaa21825a4cee3c54a4df956d306f6cb5e9c2b690221', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:37:26', '2019-12-17 09:37:26', '2020-12-17 15:07:26'),
('204e79d78366a7bf6eb87e7d6847f5ca0b072b88f85f210f2db176c4c14354fe84a451f01b9ed399', 36, 1, 'MyApp', '[]', 0, '2019-12-17 09:51:00', '2019-12-17 09:51:00', '2020-12-17 15:21:00'),
('24ba90928b97bc5bd22a0aea401dc348d8379d19bf387bc89bd2e9f7154ff376a766c122f5fd9ede', 22, 1, 'MyApp', '[]', 0, '2019-12-17 07:45:09', '2019-12-17 07:45:09', '2020-12-17 13:15:09'),
('2f0d40796b951cb7c308c0daf4aa123b0f1543d04b68639fcf5a14049e52b179bc4ca8b20b4155ea', 10, 1, 'MyApp', '[]', 0, '2019-12-16 09:04:58', '2019-12-16 09:04:58', '2020-12-16 14:34:58'),
('42897a704178fbc707acb5e53a0e2d70a7722286a77cd4e27e1630bf7185950c7070fad8941c115f', 41, 1, 'MyApp', '[]', 0, '2019-12-17 10:18:02', '2019-12-17 10:18:02', '2020-12-17 15:48:02'),
('485ecec58f131c097020034fbec74e518428e7450cb08050b3c963b32051ac89bd007d2d4c757790', 38, 1, 'MyApp', '[]', 0, '2019-12-17 10:09:00', '2019-12-17 10:09:00', '2020-12-17 15:39:00'),
('50b01f16d448880c1589bafb457a8cf483c10e2321cdb6e821ff36f7284f60ba0885e15ce85dcd2c', 33, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:33:15', '2019-12-18 01:33:15', '2020-12-18 07:03:15'),
('523f52e5d30cf95c40e89879f6ccef7af59ff9f7fc6b9e5f033023f77af411c62640d1f11f59d82e', 56, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:34:41', '2019-12-18 03:34:41', '2020-12-18 09:04:41'),
('524cc538f371330de688eb1a2e1d1896dc227ee1bb360e69b1b8675da25091989c64d63c7fa37fc8', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:57:18', '2019-12-18 01:57:18', '2020-12-18 07:27:18'),
('52d7c45cb966260687668f7c84a6a26634bbb29858c63ed2cb7db20a188a463fb84f2d093f5a312e', 34, 1, 'MyApp', '[]', 0, '2019-12-17 09:49:23', '2019-12-17 09:49:23', '2020-12-17 15:19:23'),
('5303393eeaf71ae077dc95284d2cc3f42af80eedbd106fe6f1cab388ad23bad7097d08d3d687c04c', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:45:49', '2019-12-18 03:45:49', '2020-12-18 09:15:49'),
('5a138f921e0352305a358532178be4806b838486b9b7df2c86ef2de8a66d325f121753da6520ece3', 39, 1, 'MyApp', '[]', 0, '2019-12-17 10:16:44', '2019-12-17 10:16:44', '2020-12-17 15:46:44'),
('5c96a29a9d019ea420fc9c32a448a0c4dffa75dda18803bba92dce0fe792b9be9348753ba5c5b3c3', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:25', '2019-12-17 09:33:25', '2020-12-17 15:03:25'),
('6341ed5c3045cd6c2403a432951bcd7863d679fe9d8e038de437bb437ac489a24b72c93b6ecd655f', 9, 1, 'Personal Access Token', '[]', 0, '2019-12-16 07:31:18', '2019-12-16 07:31:18', '2020-12-16 13:01:18'),
('66a7883fe6c25da6eb815c8e631fb9048831a073abb7f34444bf1d9e1f2471cfa1bf4173dd927696', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 04:03:52', '2019-12-18 04:03:52', '2020-12-18 09:33:52'),
('68a7d0e908966f84565ca53ce39bb6ff6713dbd065c4212044a48cee20d5143624eae49e0ebca0ec', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:27', '2019-12-17 09:33:27', '2020-12-17 15:03:27'),
('6b64fa142aa97135d923246ff7826429a5e3873a0de6f988addee42324d4a30a982a46b7bfee6871', 54, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:13:05', '2019-12-18 03:13:05', '2020-12-18 08:43:05'),
('74cc32f97c2019663ce88090bf391b0e592e13a2f24c51ac4998c17219a62e33fbecea3a262d4c24', 35, 1, 'MyApp', '[]', 0, '2019-12-17 09:49:41', '2019-12-17 09:49:41', '2020-12-17 15:19:41'),
('7b584f527e25c0630b7b65ff0db300b6978e77609f09f7c0e963f5ac82ecfe93b0446e46330736a6', 56, 1, 'MyApp', '[]', 0, '2019-12-18 03:29:00', '2019-12-18 03:29:00', '2020-12-18 08:59:00'),
('7bd9be2502ee8af9299b3da5cf7ab0cdd9f48b69de108318eb3f59909ed9657563bee2223f649f15', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:56:06', '2019-12-18 01:56:06', '2020-12-18 07:26:06'),
('8c46c28bfeaf2721f9668f747927f2e8166158cc41d2b11e5938331428d20e0e1170a0f1dcf9e432', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:42:48', '2019-12-17 09:42:48', '2020-12-17 15:12:48'),
('92bef1d219131b26e6d872a948ad80716d8198b74f7a6d4bcdc641e23a9bef354c1b941d1b4fb04b', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:58:34', '2019-12-17 09:58:34', '2020-12-17 15:28:34'),
('94e23d0c32c48b05c76d5a93de0d60a131965dc30b47ede908bcc211200631c7e20688b5942ee86a', 33, 1, 'MyApp', '[]', 0, '2019-12-17 09:47:26', '2019-12-17 09:47:26', '2020-12-17 15:17:26'),
('99b8b0fbbd5fb97497f27af3d5afaec7908940c7b71e286045e6ff4a1c26d0d9ea8a7f85d3e5ff3c', 37, 1, 'MyApp', '[]', 0, '2019-12-17 10:07:51', '2019-12-17 10:07:51', '2020-12-17 15:37:51'),
('acab82bdae328d6e01365643040cec7a49b69cbe8037bca926f8cd2ad07816dd75b2d600a862446f', 56, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:34:33', '2019-12-18 03:34:33', '2020-12-18 09:04:33'),
('b1a81c66a70afa3289257fc95220ac47445606151b7aa52225437487e9b4b930a6ae8576502bcdd9', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 00:24:51', '2019-12-18 00:24:51', '2020-12-18 05:54:51'),
('bbd96d389c9f6eec115647818567f74caca4e90bbe76a7bd85bdd07c304617ea4980395e5a479d70', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:20', '2019-12-17 09:33:20', '2020-12-17 15:03:20'),
('c651c417f04081a3516e1df889655d6c2fd40ef06caef6f359897f02d3f7b9481dc9698b10a242e7', 39, 1, 'Personal Access Token', '[]', 0, '2019-12-18 01:39:17', '2019-12-18 01:39:17', '2020-12-18 07:09:17'),
('c7b2626086dd09c6c20b741876ac5ce1838fd4c7a5bbbdc718a40a3a065cf357bf5dffaaad8f5c8c', 19, 1, 'MyApp', '[]', 0, '2019-12-17 00:05:00', '2019-12-17 00:05:00', '2020-12-17 05:35:00'),
('c87ad568af91b3226bc243e702a0ba86571fd4385d6cb432438132d9811aba0e4f719cb0a7fa9f3d', 54, 1, 'MyApp', '[]', 0, '2019-12-18 03:07:16', '2019-12-18 03:07:16', '2020-12-18 08:37:16'),
('c9858aba8a58982d9dff32dacb27be96f14caef5c1620c9d05521686568b3d02a38d1eec436dff8c', 11, 1, 'MyApp', '[]', 0, '2019-12-16 09:05:42', '2019-12-16 09:05:42', '2020-12-16 14:35:42'),
('d0870613aa1701ac8c86bb0a2c033ce1d4317d6111f438741c1035f30d8532dceda37a3aa9c39c0d', 28, 1, 'MyApp', '[]', 0, '2019-12-17 09:32:01', '2019-12-17 09:32:01', '2020-12-17 15:02:01'),
('d27150f8a8d5f391dfcad0206123eaa468c16f871da009792efd6e3f5f642bc6d52cbc3cf98a80ab', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:43:56', '2019-12-18 03:43:56', '2020-12-18 09:13:56'),
('dda4a36fac74795edd5f1b85cce5d1e0c995d1e4727f85b312afe567813da6463d11613b74c184a4', 28, 1, 'Personal Access Token', '[]', 0, '2019-12-17 09:33:47', '2019-12-17 09:33:47', '2020-12-17 15:03:47'),
('de02639fc2b02b9494fa398705b41d7b3a2f0beb20372174281760b8427f56792742a37ba7d81a78', 58, 1, 'MyApp', '[]', 0, '2019-12-18 03:41:53', '2019-12-18 03:41:53', '2020-12-18 09:11:53'),
('e3dda95808752a78969ea0376ef9e9f0daf424af9238604e0cf91ccd096d70679298ed229d35cbd6', 12, 1, 'MyApp', '[]', 0, '2019-12-16 09:05:56', '2019-12-16 09:05:56', '2020-12-16 14:35:56'),
('eefc7062308076e4ea743b228f9a124d4157d5998a7be0c28ef6c7dd70436ceb05ccbbc6ff3ceac7', 58, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:42:22', '2019-12-18 03:42:22', '2020-12-18 09:12:22'),
('f0e1a253300a3ee15fc83d4548d9335e56bf62d97eb7f9c8a2f0e32845221f8b0c1f6329276cfa0f', 50, 1, 'MyApp', '[]', 0, '2019-12-18 00:00:21', '2019-12-18 00:00:21', '2020-12-18 05:30:21'),
('f578602868ed121b21f14113b151cf9db62a308c1bf07de1eae3bbaefed84f6b93d3edc406d16ab5', 54, 1, 'Personal Access Token', '[]', 0, '2019-12-18 03:09:24', '2019-12-18 03:09:24', '2020-12-18 08:39:24'),
('fd240fd1e537157ee8d5f9441cddfd3e3d445ab1709ab635a80030bd7d00ab335b06ee51a7a94e10', 40, 1, 'MyApp', '[]', 0, '2019-12-17 10:17:07', '2019-12-17 10:17:07', '2020-12-17 15:47:07'),
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
(5, 'support', NULL, 1, 2, '2019-12-16 01:42:30', '2019-12-16 01:42:30');

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
(10, 5, 'kh', 'Support', NULL, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Support', 'Support', 'Support');

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
('kiran@yopmail.com', '$2y$10$6p2ySreizP2CT111mxbdxOXEEbPXERDr5UrFhovgPL67EgY8U9j0.', '2019-11-27 04:49:11');

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
(2, 'Customer', 'customers', 1, 1, '2019-11-25 11:06:47', NULL, NULL),
(3, 'Dealers', 'dealers', 1, 1, '2019-11-20 05:23:44', NULL, NULL),
(4, 'Sellers', 'sellers', 1, 1, '2019-11-20 05:23:44', NULL, NULL);

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
(3, 4),
(4, 5),
(3, 11);

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
(1, 'Website Name', 'SYSTEM_APPLICATION_NAME', 'S.P Car Market', 'general', 'text', '2019-02-27 06:03:36', '2019-12-17 09:27:08'),
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
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `period` float DEFAULT '0',
  `period_type` enum('Days','Weeks','Months','Years') DEFAULT 'Days',
  `price` decimal(16,2) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `listings` smallint(6) DEFAULT '0',
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `period`, `period_type`, `price`, `is_private`, `is_featured`, `listings`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Days', NULL, 0, 0, 0, NULL, 1, '2019-11-26 12:38:57', '2019-11-26 12:38:57', NULL),
(2, 4, 'Days', NULL, 0, 0, 0, NULL, 1, '2019-11-26 12:39:22', '2019-11-26 12:39:22', NULL),
(3, 7, 'Months', '100.00', 0, 1, 20, NULL, 1, '2019-12-03 10:24:11', '2019-12-03 10:25:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_translations`
--

CREATE TABLE `subscription_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_translations`
--

INSERT INTO `subscription_translations` (`id`, `locale`, `subscription_id`, `title`, `description`) VALUES
(1, 'en', 1, 'fvfv', 'fvfv'),
(2, 'kh', 1, 'fvfv', 'fvfv'),
(3, 'en', 2, '4 4', 'vfd'),
(4, 'kh', 2, '4  4', 'cdsac'),
(5, 'en', 3, 'test', 'dsfsdf'),
(6, 'kh', 3, 'test kh', 'sdfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(11) UNSIGNED DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '1',
  `is_email_verified` tinyint(1) DEFAULT NULL,
  `is_otp_verified` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_email_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `name`, `email`, `phone`, `password`, `address`, `country`, `state`, `city`, `postcode`, `country_code`, `latitude`, `longitude`, `profile_image`, `status`, `admin`, `is_email_verified`, `is_otp_verified`, `remember_token`, `verify_email_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'CarMarket Admin', 'ratanakpisith@yopmail.com', 1245678894, '$2y$10$LD3ypoSIPMfPTJ5bm6pJq.jhb5hMZzq9iI/86qboqmKv/56tydauW', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1574861954.jpg', 1, 1, 1, 0, '149xYQHklppc1e8aL73nE1eFZzxGaEnVTzCF8MK039Fvd7imPbSZw02SBVzF', NULL, NULL, '2019-11-24 19:33:08', '2019-11-28 00:43:52', NULL),
(3, NULL, 'kiran Buyer', 'kiranbuyer@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(4, NULL, 'kiran Dealer', 'kirandealer879@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(5, NULL, 'kiran Seller', 'kiranseller11@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(6, NULL, 'kiran Buyer', 'kiranbuyer6561@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(7, NULL, 'kiran Seller', 'kiranseller134@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(8, NULL, 'kiran Dealer', 'kirandeale1dfg@yopmail.com', NULL, '$2y$10$Vyh0m6g4A8cRgD0b0aUlwOh5CmSQYM.TXRR5yfvVKg4cV6XQLSoJi', 'cscsdcs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_1573625753.jpg', 1, 1, 1, 0, NULL, NULL, NULL, '2019-11-24 19:33:08', '2019-11-13 00:45:53', NULL),
(11, NULL, 'Gyan Mishra', 'gyan130@yopmail.com', 9694728151, '$2y$10$VQPRBZa/K9KEA2MotXSHA.Q8U7gFvhMd5yO//BBfkEKaMC/vDK7sG', 'Witjira SA 5734, Australia', NULL, NULL, NULL, NULL, '+91', NULL, NULL, 'avatars/sWwQafM3YdM8f9KA7snzfMEaUIRSiW8EQiJouwWu.jpeg', 1, 1, NULL, 1, NULL, NULL, NULL, '2019-12-23 06:50:52', '2019-12-24 06:58:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle`
--

CREATE TABLE `user_vehicle` (
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `is_favourite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body_styles_id` int(11) DEFAULT NULL,
  `year_build` varchar(200) DEFAULT NULL,
  `drive_types_id` int(11) DEFAULT NULL,
  `engine_capacity` int(11) DEFAULT NULL,
  `engine_type_id` int(11) DEFAULT NULL,
  `year_complied` varchar(200) DEFAULT NULL,
  `fuel_types_id` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `makes_id` int(11) DEFAULT NULL,
  `models_id` int(11) DEFAULT NULL,
  `badge_id` int(11) NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `lifestyle_id` int(11) DEFAULT NULL,
  `month_build` varchar(4) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `discount_price` double(9,2) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `suspensions_id` int(11) DEFAULT NULL,
  `transmissions_id` int(11) DEFAULT NULL,
  `interior_colour_id` int(11) DEFAULT NULL,
  `exterior_colour_id` int(11) DEFAULT NULL,
  `chassis_number` varchar(191) DEFAULT NULL,
  `plate_number` varchar(191) DEFAULT NULL,
  `gears` int(11) DEFAULT NULL,
  `cylinders_id` int(11) DEFAULT NULL,
  `fuel_economy_id` varchar(191) DEFAULT NULL,
  `turbo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `odometer` bigint(20) UNSIGNED DEFAULT NULL,
  `expiry_month` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expiry_year` year(4) DEFAULT NULL,
  `written_off` tinyint(1) DEFAULT NULL,
  `roadworthy` tinyint(1) DEFAULT NULL,
  `is_registered` tinyint(1) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `address` text,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `car_of_the_week` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 =>''inactive'',1=active,2=is_feature',
  `steps` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `category_id`, `title`, `slug`, `user_id`, `body_styles_id`, `year_build`, `drive_types_id`, `engine_capacity`, `engine_type_id`, `year_complied`, `fuel_types_id`, `doors`, `makes_id`, `models_id`, `badge_id`, `series_id`, `lifestyle_id`, `month_build`, `price`, `discount_price`, `seats`, `suspensions_id`, `transmissions_id`, `interior_colour_id`, `exterior_colour_id`, `chassis_number`, `plate_number`, `gears`, `cylinders_id`, `fuel_economy_id`, `turbo`, `odometer`, `expiry_month`, `expiry_year`, `written_off`, `roadworthy`, `is_registered`, `role`, `name`, `email`, `phone`, `postcode`, `address`, `country_id`, `region_id`, `city_id`, `country`, `state`, `city`, `latitude`, `longitude`, `sort_order`, `is_featured`, `car_of_the_week`, `status`, `steps`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1018, 1, '', NULL, 11, 1, '2016/04', 2, 1235, NULL, '2015', 3, 4, 1, 1, 4, 10, NULL, '2016', NULL, NULL, 4, NULL, 4, NULL, NULL, '3454365', NULL, 5, 5, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2019-12-30 13:53:31', '2019-12-30 08:23:31', NULL),
(1019, 2, '', NULL, 11, 4, '2016/05', 1, 46456, NULL, '2016', 3, 4, 1, 1, 4, 10, NULL, '2016', NULL, NULL, 4, NULL, 4, NULL, NULL, '3454365', NULL, 5, 5, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2019-12-30 13:56:30', '2019-12-30 08:26:30', NULL),
(1020, 1, '', NULL, 11, 1, '2016/03', 3, 1235, NULL, '2018', 3, 4, 1, 1, 4, 10, NULL, '2016', NULL, NULL, 4, NULL, 4, NULL, NULL, '3454365', NULL, 4, 3, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2019-12-30 13:57:51', '2019-12-30 08:27:51', NULL),
(1021, 1, '2016 Hyundai Grand I10', '2016-hyundai-grand-i10', 11, 1, '2016/04', 1, 1235, NULL, '2015', 1, 4, 1, 1, 4, 10, NULL, '2016', NULL, NULL, 4, NULL, 4, NULL, NULL, '3454365', NULL, 4, 4, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2019-12-30 14:10:27', '2019-12-30 08:40:27', NULL),
(1022, 1, '2016 Hyundai Grand I10', '2016-hyundai-grand-i10-1', 11, 1, '2016/04', 1, 1235, NULL, '2015', 1, 4, 1, 1, 4, 10, NULL, '2016', NULL, NULL, 4, NULL, 4, NULL, NULL, '3454365', NULL, 4, 4, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2019-12-30 14:11:47', '2019-12-30 08:41:47', NULL),
(1023, 1, '2016 Hyundai Grand I10', '2016-hyundai-grand-i10-2', 11, 1, '2016', 1, 45435, NULL, '2015', 1, 4, 1, 1, 4, 10, 2, '02', '456456', 456456.00, 4, NULL, 4, 1, 2, '45645656', '45645656', 4, 3, '4', '1', 1234530, '01', 2020, 1, 1, 1, NULL, NULL, NULL, 456456, '302028', 'Jaipur Engineering College Rd, Kukas, Rajasthan 302028, India', NULL, NULL, NULL, 'India', 'RJ undefined', 'Kukas', '27.0309059', '75.89309219999996', NULL, 0, 0, 0, 3, '2019-12-31 05:10:49', '2019-12-31 07:09:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles___`
--

CREATE TABLE `vehicles___` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body_styles_id` int(11) DEFAULT NULL,
  `year_build` varchar(200) DEFAULT NULL,
  `drive_types_id` int(11) DEFAULT NULL,
  `engine_capacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `engine_type_id` int(11) DEFAULT NULL,
  `year_complied` varchar(200) DEFAULT NULL,
  `fuel_types_id` int(11) DEFAULT NULL,
  `doors` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `makes_id` int(11) DEFAULT NULL,
  `models_id` int(11) DEFAULT NULL,
  `badge_id` int(11) NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `lifestyle_id` int(11) DEFAULT NULL,
  `year` varchar(191) DEFAULT NULL,
  `price` double(9,2) DEFAULT NULL,
  `seats` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `suspensions_id` int(11) DEFAULT NULL,
  `transmissions_id` int(11) DEFAULT NULL,
  `interior_colour_id` int(11) DEFAULT NULL,
  `exterior_colour_id` int(11) DEFAULT NULL,
  `chassis_number` varchar(191) DEFAULT NULL,
  `plate_number` varchar(191) DEFAULT NULL,
  `gears` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cylinders_id` int(11) DEFAULT NULL,
  `fuel_economy_id` varchar(191) DEFAULT NULL,
  `turbo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `odometer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expiry_month` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expiry_year` year(4) DEFAULT NULL,
  `written_off` tinyint(1) DEFAULT NULL,
  `roadworthy` tinyint(1) DEFAULT NULL,
  `approved_certified` tinyint(1) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `car_of_the_week` tinyint(1) NOT NULL DEFAULT '0',
  `is_favourite` tinyint(4) NOT NULL DEFAULT '0',
  `step_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles___`
--

INSERT INTO `vehicles___` (`id`, `category_id`, `title`, `slug`, `user_id`, `body_styles_id`, `year_build`, `drive_types_id`, `engine_capacity`, `engine_type_id`, `year_complied`, `fuel_types_id`, `doors`, `makes_id`, `models_id`, `badge_id`, `series_id`, `lifestyle_id`, `year`, `price`, `seats`, `suspensions_id`, `transmissions_id`, `interior_colour_id`, `exterior_colour_id`, `chassis_number`, `plate_number`, `gears`, `cylinders_id`, `fuel_economy_id`, `turbo`, `odometer`, `expiry_month`, `expiry_year`, `written_off`, `roadworthy`, `approved_certified`, `role`, `name`, `email`, `phone`, `postcode`, `country_id`, `region_id`, `city_id`, `latitude`, `longitude`, `sort_order`, `status`, `is_featured`, `car_of_the_week`, `is_favourite`, `step_flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1001, 18, 'Audi - Q7 - Q7 300 - Q7 800', 'audi-q7', 3, 2, '06/2019', 1, '100', 1, '02/2019', 1, '1', 2, 2, 1, 1, 1, '2010', 50.00, '1', NULL, 4, 1, 1, '5451325221', '5455451221', '1', 1, '1', 'turbo', '55', 'Janaury', 2015, 1, 1, 1, 'Seller', 'kiran Buyer', 'kiranbuyer@yopmail.com', '9696969696', '22222', 106, 1860, 1314820, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2019-12-11 11:46:21', '2019-12-16 10:39:42', NULL),
(1002, 8, 'Audi - Q7 - Q7 300 - Q7 800', 'audi-q7-1', 4, 2, '11/2019', 3, '1500', 1, '01/2019', 1, '4', 2, 2, 1, 1, 1, '2018', 125500.00, '6', NULL, 4, 1, 2, 'FBDND456465', 'RJ144855', '5', 6, '2', 'turbo', '50000', 'May', 2018, 1, 0, 1, 'Dealer', 'kiran Dealer', 'kirandealer@yopmail.com', '9696969696', '302012', 12, 139, 127460, '26.9556924', '75.6882696', NULL, 1, 0, 0, 0, 0, '2019-12-13 14:50:58', '2019-12-20 08:34:37', NULL),
(1003, 8, 'Audi - Q7 - 300 - 800 Qwas Asd Asd Asdsa', 'audi-q7-300-800-qwas-asd-asd-asdsa', 33, 1, '12/2019', 1, '121', NULL, '04/2019', 1, '2', 2, 2, 1, 1, 1, '2010', 12000.00, '1', NULL, 4, 1, 1, '12121212', '12121212', '1', 1, '1', 'turbo', '1212', 'February', 2015, 1, 1, 1, 'Dealer', 'Kalpesh', 'kk@yopmail.com', '1234567890', '302012', 12, 139, 131341, '26.9556924', '75.6882696', NULL, 1, 0, 0, 0, 0, '2019-12-17 10:52:39', '2019-12-18 01:02:04', NULL),
(1004, 8, 'Hyundai - Grand I10 - Nios - QS', 'hyundai-grand-i10-nios-qs', 22, 2, '06/2019', 3, '1200', NULL, '02/2019', 2, '5', 1, 1, 4, 10, 1, '2014', 10000.00, '5', NULL, 4, 2, 1, 'atr1234t', 'RJ14CA4855', '5', 6, '2', 'turbo', '80000', 'June', 2025, 1, 1, 1, 'Seller', 'Kalpesh Kumawat', 'rey619@yopmail.com', '9950660054', '302012', 106, 1864, 1314982, '26.9556924', '75.6882696', NULL, 1, 0, 0, 0, 0, '2019-12-17 15:15:50', '2019-12-17 09:45:50', NULL);

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
(11, 7, 10, 'f-vfdgh-436545b', NULL, 1, '2019-12-21 00:40:04', '2019-12-21 00:40:04', NULL);

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
(21, 'F VFDGH 436545B _ -', 'en', 11),
(22, 'DSGFDFG', 'kh', 11);

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
(8, 'fghfgjgh-ghjhgjg-gfjhghj-fgjhgfjh-dfg-1', 1, NULL, '2019-12-20 23:45:58', '2019-12-20 23:45:58', NULL);

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
(15, 'fghfgjgh ghjhgjg gfjhghj fgjhgfjh- dfg_1', 'en', 8),
(16, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា', 'kh', 8);

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
(2, 1, '2019-12-13 09:00:07', '2019-12-13 09:00:07', NULL);

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
(4, 'Z Black', 'kh', 2);

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
(2, 1, NULL, '2019-11-26 05:24:51', '2019-11-26 05:24:51', NULL),
(3, 1, NULL, '2019-12-13 08:49:23', '2019-12-13 08:49:23', NULL);

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
(6, 'kh', '4x2', 3);

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
(1, 1002, '12345', 'Testing user', 'testinguser2@yopmail.com', '123456781290', 'Testing', 1, 1, '2019-12-17 01:27:17', '2019-12-17 06:57:17', NULL),
(2, 1002, '12345', 'Gyan', 'testinguser2@yopmail.com', '123456781290', 'Testing 1', 1, 1, '2019-12-17 02:52:05', '2019-12-17 08:22:05', NULL),
(3, 1001, '12345', 'Gyan', 'gyan@yopmail.com', '123456781290', 'testing message', 1, 1, '2019-12-17 07:01:04', '2019-12-17 12:31:04', NULL),
(4, 1001, '12345', 'Gyan', 'testinguser2@yopmail.com', '123456781290', 'dgf fhgh fghfgh fgh', 1, 1, '2019-12-17 07:13:07', '2019-12-17 12:43:07', NULL),
(5, 1004, '302012', 'Jack Smith', 'jacksmith@yopmail.com', '9887312731', 'Hi i want to buy this car. Please contact. Hi i want to buy this car. Please contact.', 1, 1, '2019-12-17 10:01:30', '2019-12-17 15:31:30', NULL),
(6, 1001, '123456', 'asdfa', 'sdf@asdf.com', '9667000000', 'fasdfasdf', 1, 1, '2019-12-18 00:57:15', '2019-12-18 06:27:15', NULL),
(7, 1001, '302017', 'Testing User 2', 'testinguser2@yopmail.com', '123456781290', 'Testing the inquiry', 1, 1, '2019-12-18 01:19:47', '2019-12-18 06:49:47', NULL),
(8, 1004, '302017', 'Testing user3', 'testinguser3@yopmail.com', '123456781290', 'Testinguser3 message', 1, 0, '2019-12-18 01:23:37', '2019-12-18 06:53:37', NULL),
(9, 1004, '302012', 'Adam Smith', 'Adam@yopmail.com', '9694728151', 'I am interested in this car. Please contact.', 1, 1, '2019-12-18 01:40:55', '2019-12-18 07:10:55', NULL);

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
(8, 1, NULL, '2019-12-18 07:08:47', '2019-12-18 07:08:47', NULL);

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
(16, 8, 'Leather seats', 'kh');

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
(4, 1, 'dfgdfg-456-dfgdfg', NULL, '2019-12-21 00:40:36', '2019-12-21 00:40:36', NULL);

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
(7, 'DFGDFG  456 DFGDFG', 'en', 4),
(8, 'FDGDFG', 'kh', 4);

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
(9, 1, '0', 'e4ObFySGfl8IEMQ4XuIAICE6c8AabbUXYwETcmUY.jpeg', NULL, 'front', '2019-12-16 06:59:51', '2019-12-16 01:29:51'),
(10, 1, '1', 'Y6dtUW0T9wPjrAserEOeEbmQCdZNu5UCZSrMDOo4.jpeg', NULL, 'front', '2019-12-16 06:59:51', '2019-12-16 01:29:51'),
(11, 1, '2', 'dsKPTGZhPTIHluSXxGqvWAtxdw1h4JibRgbEbAxY.jpeg', NULL, 'front', '2019-12-16 06:59:51', '2019-12-16 01:29:51'),
(12, 2, '0', 'hOKnAJkDxQeTtvQZ6rkUbI8xp0Ijwl4hGCVuEwbR.jpeg', NULL, 'front', '2019-12-16 07:02:42', '2019-12-16 01:32:42'),
(13, 2, '1', 'KgO0YEXCHhYFQJNO9JZ8Ozsleiokiwr0gcZEt5Us.jpeg', NULL, 'front', '2019-12-16 07:02:42', '2019-12-16 01:32:42'),
(14, 2, '2', 'DZE1LaQ2ga6lmCgUcbH73cUw3NZxgfHIEzLxRmQP.jpeg', NULL, 'front', '2019-12-16 07:02:43', '2019-12-16 01:32:43'),
(15, 1002, '0', 'Ms2JI5tudZBJ99o0zEvh9dV883GCNKzSpIwRrrev.jpeg', 'fgfdhghgghgh', 'front', '2019-12-16 16:08:46', '2019-12-16 10:38:46'),
(16, 1001, '0', 'X5dZJMFRSlIi8cwRZOJK97kZkLADIqOANIf90O0I.jpeg', 'bgvb', 'front', '2019-12-16 16:09:43', '2019-12-16 10:39:43'),
(17, 1003, '0', 'jeVm9iyoIMB3EbrhhwdFIROSTOQIUHgLALPuxCtH.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'front', '2019-12-17 10:53:59', '2019-12-18 01:02:04'),
(18, 1003, '1', 'XjmU2EsOJ9IaiQKB1GG6TwK9dD9niWpuVgrAvS5L.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'rear', '2019-12-17 10:53:59', '2019-12-18 01:02:04'),
(19, 1003, '2', 'WudjXI1CQkNW2L1628Cm72QoEauHJRIreMRqrKiP.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'side', '2019-12-17 10:53:59', '2019-12-18 01:02:04'),
(20, 1004, '0', 'hobNi69pva7Z4KRJzOIZdILWmejXKnVWVEcgaDdM.jpeg', 'front', 'front', '2019-12-17 15:15:50', '2019-12-17 09:48:53'),
(21, 1004, '1', 'EerPsjfUyoyBKCzCmHlJGSutYsnje81NL2SFd5sY.jpeg', 'down', 'rear', '2019-12-17 15:15:50', '2019-12-17 09:48:53'),
(22, 1004, '2', 'wmbwAttMuC5SoSsn68Tr8c56V93atQjJS6oFsQVG.jpeg', 'side', 'side', '2019-12-17 15:15:50', '2019-12-17 09:48:53');

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
(3, 1, '2019-12-13 14:35:19', '2019-12-13 14:35:19', NULL);

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
(6, 'Green', 'kh', 3);

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
(8, 'sdf-dfghfgh-fghfgh', 1, NULL, '2019-12-21 00:05:32', '2019-12-21 00:05:32', NULL),
(9, 'dsfdsfg-456', 1, NULL, '2019-12-21 00:37:22', '2019-12-21 00:37:22', NULL);

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
(15, 'en', 8, 'sdf dfghfgh fghfgh dfg'),
(16, 'kh', 8, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា'),
(17, 'en', 9, 'DSFDSFG 456 _ -54'),
(18, 'kh', 9, 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​');

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
(9, 8, 'dgfghfd-nbn', 1, NULL, '2019-12-21 00:11:01', '2019-12-21 00:11:01', NULL),
(10, 7, '546bvcb-fgh-fcghfdhg', 1, NULL, '2019-12-21 00:38:38', '2019-12-21 00:38:38', NULL),
(11, 1, 'v-800', 1, NULL, '2019-12-21 00:39:14', '2019-12-21 00:39:14', NULL),
(12, 7, '546546', 1, NULL, '2019-12-21 00:39:30', '2019-12-21 00:39:30', NULL);

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
(17, 'en', 'dgfghfd nbn', 9),
(18, 'kh', 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើង​ពី​លទ្ធភាព​ការតាំង​មូលដ្ឋាន​ទ័ព​បរទេស​នៅ​កម្ពុជា', 9),
(19, 'en', '546BVCB FGH FCGHFDHG HGFH', 10),
(20, 'kh', 'អាមេរិក​បង្ហាញ​កង្វល់​ជា​ថ្មី​ចំពោះ​ព័ត៌មាន​លើក​ឡើ', 10),
(21, 'en', 'V 800', 11),
(22, 'kh', 'SDAF', 11),
(23, 'en', '546546', 12),
(24, 'kh', 'GH546', 12);

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
(11, 1, 1, 4, '456vcbfdghcv-678678', NULL, 1, '2019-12-21 00:41:48', '2019-12-21 00:41:48', NULL);

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
(21, '456VCBFDGHCV 678678', 'en', 11),
(22, 'XCVDFG5', 'kh', 11);

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
(1, 1, 'en', 'bgfb'),
(2, 1, 'kh', 'bgfd'),
(3, 2, 'en', 'this is my firs ford figo'),
(4, 2, 'kh', 'this is my firs ford figo car'),
(5, 1002, 'en', NULL),
(6, 1002, 'kh', NULL),
(7, 1001, 'en', NULL),
(8, 1001, 'kh', NULL),
(9, 1003, 'en', 'asdfasdfasdfasdf'),
(10, 1003, 'kh', 'asdfasdfasd'),
(11, 1004, 'en', 'Buy a pre-owned car with confidence at a one of Melbourne\'s oldest dealer groups dating back over 100 years. We are conveniently located just off the Monash Freeway and a stones throw away from Shopping Centre.\r\n\r\nWhen you purchase a car from us you become part of the family and we look after your investment for life - Most of our vehicles come with a 1 Year Mechanical Protection Plan, 7 Day Exchange Policy and 1 Year Roadside Assist.\r\n\r\nNeed help with finance and insurance Beat the Banks and save thousands with our in store easy approval finance and insurance options. Have a car that you\'d like to sell We have access to Victoria\'s top valuers, who can appraise your car and offer you top dollar! Enquire today'),
(12, 1004, 'kh', 'Buy a pre-owned car with confidence at a one of Melbourne\'s oldest dealer groups dating back over 100 years. We are conveniently located just off the Monash Freeway and a stones throw away from Shopping Centre.\r\n\r\nWhen you purchase a car from us you become part of the family and we look after your investment for life - Most of our vehicles come with a 1 Year Mechanical Protection Plan, 7 Day Exchange Policy and 1 Year Roadside Assist.\r\n\r\nNeed help with finance and insurance Beat the Banks and save thousands with our in store easy approval finance and insurance options. Have a car that you\'d like to sell We have access to Victoria\'s top valuers, who can appraise your car and offer you top dollar! Enquire today'),
(13, 1023, 'en', '456456'),
(14, 1023, 'kh', '456456'),
(15, 1023, 'en', '456456'),
(16, 1023, 'kh', '456456'),
(17, 1023, 'en', '456456'),
(18, 1023, 'kh', '456456');

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
(3, 1, '1574085451-412139584.png', '2019-11-18 08:27:31', '2019-11-18 08:27:31', NULL),
(4, 1, '1574429566-1334680477.png', '2019-11-22 08:02:46', '2019-11-22 08:02:54', NULL),
(5, 1, NULL, '2019-11-26 05:25:07', '2019-11-26 05:25:07', NULL);

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
(8, 'Automatic', 'kh', 5);

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
(1, 1),
(1, 6),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(2, 4),
(2, 6),
(1003, 1),
(1003, 2),
(1003, 3),
(1003, 4),
(1003, 5),
(1003, 6),
(1003, 7),
(1004, 1),
(1004, 2),
(1004, 3),
(1004, 6),
(1004, 7),
(1023, 1),
(1023, 2),
(1023, 3),
(1023, 4),
(1023, 5);

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
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `vehicles___`
--
ALTER TABLE `vehicles___`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newss`
--
ALTER TABLE `newss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news_translations`
--
ALTER TABLE `news_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_locations`
--
ALTER TABLE `page_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_translations`
--
ALTER TABLE `subscription_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `vehicles___`
--
ALTER TABLE `vehicles___`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_badge_translations`
--
ALTER TABLE `vehicle_badge_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_series_translations`
--
ALTER TABLE `vehicle_series_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vehicle_transmissions`
--
ALTER TABLE `vehicle_transmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_transmissions_translations`
--
ALTER TABLE `vehicle_transmissions_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `vehicle_enquires_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles___` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  ADD CONSTRAINT `vehicle_make_translations_ibfk_1` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
