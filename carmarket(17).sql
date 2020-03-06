-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 03:13 PM
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
-- Database: `carmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `module` varchar(191) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `display_name`, `module`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'Vehicle', 'Add', 1, '2020-02-05 05:23:39', NULL, NULL),
(2, '', 'Vehicle', 'Edit', 1, '2020-02-04 14:02:49', NULL, NULL),
(3, '', 'Vehicle', 'Delete', 1, '2020-02-04 14:02:55', NULL, NULL),
(4, '', 'Vehicle', 'Listing', 1, '2020-02-04 14:02:55', NULL, NULL),
(5, '', 'User', 'Listing', 1, '2020-02-04 14:02:55', NULL, NULL),
(6, '', 'User', 'Add', 1, '2020-02-04 14:02:55', NULL, NULL),
(7, '', 'News', 'Add', 1, '2020-02-04 14:02:55', NULL, NULL),
(8, '', 'User', 'Edit', 1, '2020-02-04 14:02:55', NULL, NULL),
(9, '', 'User', 'Delete', 1, '2020-02-04 14:02:55', NULL, NULL),
(10, '', 'News', 'Edit', 1, '2020-02-11 04:59:22', NULL, NULL),
(11, '', 'News', 'Delete', 1, '2020-02-11 04:59:22', NULL, NULL),
(12, '', 'News', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(13, '', 'Staff', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(14, '', 'Staff', 'Add', 1, '2020-02-11 04:59:22', NULL, NULL),
(15, '', 'Staff', 'Edit', 1, '2020-02-11 04:59:22', NULL, NULL),
(16, '', 'Staff', 'Delete', 1, '2020-02-11 04:59:22', NULL, NULL),
(17, '', 'Role', 'Delete', 1, '2020-02-11 04:59:22', NULL, NULL),
(18, '', 'Role', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(19, '', 'Role', 'Add', 1, '2020-02-11 04:59:22', NULL, NULL),
(20, '', 'Role', 'Edit', 1, '2020-02-11 04:59:22', NULL, NULL),
(21, '', 'Category', 'Edit', 1, '2020-02-11 04:59:22', NULL, NULL),
(22, '', 'Category', 'Add', 1, '2020-02-11 04:59:22', NULL, NULL),
(23, '', 'Category', 'Edit', 1, '2020-02-11 04:59:22', NULL, NULL),
(24, '', 'Category', 'Delete', 1, '2020-02-11 04:59:22', NULL, NULL),
(25, '', 'Vehicle Enquiries', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(26, '', 'Enquiries', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(27, '', 'User', 'View', 1, '2020-02-11 04:59:22', NULL, NULL),
(29, '', 'Category', 'Listing', 1, '2020-02-11 04:59:22', NULL, NULL),
(30, '', 'Make', 'Listing', 1, '2020-02-12 10:45:33', NULL, NULL),
(31, '', 'Make', 'Add', 1, '2020-02-12 10:45:30', NULL, NULL),
(32, '', 'Make', 'Edit', 1, '2020-02-12 10:45:28', NULL, NULL),
(33, '', 'Make', 'Delete', 1, '2020-02-12 10:46:59', NULL, NULL),
(34, '', 'Make', 'View', 1, '2020-02-12 10:47:01', NULL, NULL),
(35, '', 'Model', 'Listing', 1, '2020-02-12 10:47:03', NULL, NULL),
(36, '', 'Model', 'Add', 1, '2020-02-12 10:47:05', NULL, NULL),
(37, '', 'Model', 'Edit', 1, '2020-02-12 10:47:06', NULL, NULL),
(38, '', 'Model', 'Delete', 1, '2020-02-12 10:47:13', NULL, NULL),
(39, '', 'Model', 'View', 1, '2020-02-12 10:47:14', NULL, NULL),
(40, '', 'Badge', 'Listing', 1, '2020-02-12 06:54:32', NULL, NULL),
(41, '', 'Badge', 'Add', 1, '2020-02-12 06:54:32', NULL, NULL),
(42, '', 'Badge', 'Edit', 1, '2020-02-12 06:54:32', NULL, NULL),
(43, '', 'Badge', 'Delete', 1, '2020-02-12 06:54:32', NULL, NULL),
(44, '', 'Badge', 'View', 1, '2020-02-12 06:54:32', NULL, NULL),
(45, '', 'DriveType', 'Listing', 1, '2020-02-12 06:55:35', NULL, NULL),
(46, '', 'DriveType', 'Add', 1, '2020-02-12 06:55:35', NULL, NULL),
(47, '', 'DriveType', 'Edit', 1, '2020-02-12 06:55:35', NULL, NULL),
(48, '', 'DriveType', 'Delete', 1, '2020-02-12 06:55:35', NULL, NULL),
(49, '', 'DriveType', 'View', 1, '2020-02-12 06:55:35', NULL, NULL),
(50, '', 'FuelType', 'Listing', 1, '2020-02-12 06:56:30', NULL, NULL),
(51, '', 'FuelType', 'Add', 1, '2020-02-12 06:56:30', NULL, NULL),
(52, '', 'FuelType', 'Edit', 1, '2020-02-12 06:56:30', NULL, NULL),
(53, '', 'FuelType', 'Delete', 1, '2020-02-12 06:56:30', NULL, NULL),
(54, '', 'FuelType', 'View', 1, '2020-02-12 06:56:30', NULL, NULL),
(55, '', 'Transmission', 'Listing', 1, '2020-02-12 06:57:18', NULL, NULL),
(56, '', 'Transmission', 'Add', 1, '2020-02-12 06:57:18', NULL, NULL),
(57, '', 'Transmission', 'Edit', 1, '2020-02-12 06:57:18', NULL, NULL),
(58, '', 'Transmission', 'Delete', 1, '2020-02-12 06:57:18', NULL, NULL),
(59, '', 'Transmission', 'View', 1, '2020-02-12 06:57:18', NULL, NULL),
(60, '', 'BodyType', 'Listing', 1, '2020-02-12 06:58:18', NULL, NULL),
(61, '', 'BodyType', 'Add', 1, '2020-02-12 06:58:18', NULL, NULL),
(62, '', 'BodyType', 'Edit', 1, '2020-02-12 06:58:18', NULL, NULL),
(63, '', 'BodyType', 'Delete', 1, '2020-02-12 06:58:18', NULL, NULL),
(64, '', 'BodyType', 'View', 1, '2020-02-12 06:58:18', NULL, NULL),
(65, '', 'Color', 'Listing', 1, '2020-02-12 06:59:06', NULL, NULL),
(66, '', 'Color', 'Add', 1, '2020-02-12 06:59:06', NULL, NULL),
(67, '', 'Color', 'Edit', 1, '2020-02-12 06:59:06', NULL, NULL),
(68, '', 'Color', 'Delete', 1, '2020-02-12 06:59:06', NULL, NULL),
(69, '', 'Color', 'View', 1, '2020-02-12 06:59:06', NULL, NULL),
(70, '', 'Series', 'Listing', 1, '2020-02-12 06:59:53', NULL, NULL),
(71, '', 'Series', 'Add', 1, '2020-02-12 06:59:53', NULL, NULL),
(72, '', 'Series', 'Edit', 1, '2020-02-12 06:59:53', NULL, NULL),
(73, '', 'Series', 'Delete', 1, '2020-02-12 06:59:53', NULL, NULL),
(74, '', 'Series', 'View', 1, '2020-02-12 06:59:53', NULL, NULL),
(75, '', 'Feature', 'Listing', 1, '2020-02-12 07:00:41', NULL, NULL),
(76, '', 'Feature', 'Add', 1, '2020-02-12 07:00:41', NULL, NULL),
(77, '', 'Feature', 'Edit', 1, '2020-02-12 07:00:41', NULL, NULL),
(78, '', 'Feature', 'Delete', 1, '2020-02-12 07:00:41', NULL, NULL),
(79, '', 'Feature', 'View', 1, '2020-02-12 07:00:41', NULL, NULL),
(80, '', 'Lifestyle', 'Listing', 1, '2020-02-12 07:01:22', NULL, NULL),
(81, '', 'Lifestyle', 'Add', 1, '2020-02-12 07:01:22', NULL, NULL),
(82, '', 'Lifestyle', 'Edit', 1, '2020-02-12 07:01:22', NULL, NULL),
(83, '', 'Lifestyle', 'Delete', 1, '2020-02-12 07:01:22', NULL, NULL),
(84, '', 'Lifestyle', 'View', 1, '2020-02-12 07:01:22', NULL, NULL),
(85, '', 'SubscriptionManager', 'Listing', 1, '2020-02-12 07:02:31', NULL, NULL),
(86, '', 'SubscriptionManager', 'Add', 1, '2020-02-12 07:02:31', NULL, NULL),
(87, '', 'SubscriptionManager', 'Edit', 1, '2020-02-12 07:02:31', NULL, NULL),
(88, '', 'SubscriptionManager', 'Delete', 1, '2020-02-12 07:02:31', NULL, NULL),
(89, '', 'SubscriptionManager', 'View', 1, '2020-02-12 07:02:31', NULL, NULL),
(90, '', 'CmsPages', 'Listing', 1, '2020-02-12 07:03:17', NULL, NULL),
(91, '', 'CmsPages', 'Add', 1, '2020-02-12 07:03:17', NULL, NULL),
(92, '', 'CmsPages', 'Edit', 1, '2020-02-12 07:03:17', NULL, NULL),
(93, '', 'CmsPages', 'Delete', 1, '2020-02-12 07:03:17', NULL, NULL),
(94, '', 'CmsPages', 'View', 1, '2020-02-12 07:03:17', NULL, NULL),
(95, '', 'NewsManager', 'Listing', 1, '2020-02-12 07:04:19', NULL, NULL),
(96, '', 'NewsManager', 'Add', 1, '2020-02-12 07:04:19', NULL, NULL),
(97, '', 'NewsManager', 'Edit', 1, '2020-02-12 07:04:19', NULL, NULL),
(98, '', 'NewsManager', 'Delete', 1, '2020-02-12 07:04:19', NULL, NULL),
(99, '', 'NewsManager', 'View', 1, '2020-02-12 07:04:19', NULL, NULL),
(100, '', 'AdsManager', 'Listing', 1, '2020-02-12 07:05:07', NULL, NULL),
(101, '', 'AdsManager', 'Add', 1, '2020-02-12 07:05:07', NULL, NULL),
(102, '', 'AdsManager', 'Edit', 1, '2020-02-12 07:05:07', NULL, NULL),
(103, '', 'AdsManager', 'Delete', 1, '2020-02-12 07:05:07', NULL, NULL),
(104, '', 'AdsManager', 'View', 1, '2020-02-12 07:05:07', NULL, NULL),
(105, '', 'EmailTemplates', 'Listing', 1, '2020-02-12 07:05:56', NULL, NULL),
(106, '', 'EmailTemplates', 'Add', 1, '2020-02-12 07:05:56', NULL, NULL),
(107, '', 'EmailTemplates', 'Edit', 1, '2020-02-12 07:05:56', NULL, NULL),
(108, '', 'EmailTemplates', 'Delete', 1, '2020-02-12 07:05:56', NULL, NULL),
(109, '', 'EmailTemplates', 'View', 1, '2020-02-12 07:05:56', NULL, NULL),
(110, '', 'VehicleReview', 'Listing', 1, '2020-02-12 07:06:42', NULL, NULL),
(111, '', 'VehicleReview', 'Add', 1, '2020-02-12 07:06:42', NULL, NULL),
(112, '', 'VehicleReview', 'Edit', 1, '2020-02-12 07:06:42', NULL, NULL),
(113, '', 'VehicleReview', 'Delete', 1, '2020-02-12 07:06:42', NULL, NULL),
(114, '', 'VehicleReview', 'View', 1, '2020-02-12 07:06:42', NULL, NULL),
(115, '', 'VehicleInspection', 'Listing', 1, '2020-02-12 07:07:32', NULL, NULL),
(116, '', 'VehicleInspection', 'Add', 1, '2020-02-12 07:07:32', NULL, NULL),
(117, '', 'VehicleInspection', 'Edit', 1, '2020-02-12 07:07:32', NULL, NULL),
(118, '', 'VehicleInspection', 'Delete', 1, '2020-02-12 07:07:32', NULL, NULL),
(119, '', 'VehicleInspection', 'View', 1, '2020-02-12 07:07:32', NULL, NULL),
(120, '', 'FAQ', 'Listing', 1, '2020-02-12 07:08:12', NULL, NULL),
(121, '', 'FAQ', 'Add', 1, '2020-02-12 07:08:12', NULL, NULL),
(122, '', 'FAQ', 'Edit', 1, '2020-02-12 07:08:12', NULL, NULL),
(123, '', 'FAQ', 'Delete', 1, '2020-02-12 07:08:12', NULL, NULL),
(124, '', 'FAQ', 'View', 1, '2020-02-12 07:08:12', NULL, NULL),
(125, '', 'DiscountCoupon', 'Listing', 1, '2020-02-12 07:09:00', NULL, NULL),
(126, '', 'DiscountCoupon', 'Add', 1, '2020-02-12 07:09:00', NULL, NULL),
(127, '', 'DiscountCoupon', 'Edit', 1, '2020-02-12 07:09:00', NULL, NULL),
(128, '', 'DiscountCoupon', 'Delete', 1, '2020-02-12 07:09:00', NULL, NULL),
(129, '', 'DiscountCoupon', 'View', 1, '2020-02-12 07:09:00', NULL, NULL),
(130, '', 'BanList', 'Listing', 1, '2020-02-12 07:09:50', NULL, NULL),
(131, '', 'BanList', 'Add', 1, '2020-02-12 07:09:50', NULL, NULL),
(132, '', 'BanList', 'Edit', 1, '2020-02-12 07:09:50', NULL, NULL),
(133, '', 'BanList', 'Delete', 1, '2020-02-12 07:09:50', NULL, NULL),
(134, '', 'BanList', 'View', 1, '2020-02-12 07:09:50', NULL, NULL),
(135, '', 'Settings', 'Listing', 1, '2020-02-12 07:10:39', NULL, NULL),
(136, '', 'Settings', 'Add', 1, '2020-02-12 07:10:39', NULL, NULL),
(137, '', 'Settings', 'Edit', 1, '2020-02-12 07:10:39', NULL, NULL),
(138, '', 'Settings', 'Delete', 1, '2020-02-12 07:10:39', NULL, NULL),
(139, '', 'Settings', 'View', 1, '2020-02-12 07:10:39', NULL, NULL),
(140, '', 'Staff', 'View', 1, '2020-02-11 04:59:22', NULL, NULL),
(141, '', 'Role', 'View', 1, '2020-02-11 04:59:22', NULL, NULL),
(142, '', 'Vehicle', 'View', 1, '2020-02-04 14:02:55', NULL, NULL),
(143, '', 'News', 'View', 1, '2020-02-04 14:02:55', NULL, NULL),
(144, '', 'Inquiry', 'Add', 0, '2020-02-12 13:06:56', NULL, NULL),
(145, '', 'Inquiry', 'Edit', 0, '2020-02-12 13:06:56', NULL, NULL),
(146, '', 'Inquiry', 'View', 1, '2020-02-12 13:07:48', NULL, NULL),
(147, '', 'Inquiry', 'Listing', 0, '2020-02-12 13:07:48', NULL, NULL),
(148, '', 'Settings', 'General Listing', 1, '2020-02-12 07:10:39', NULL, NULL),
(149, '', 'Settings', 'Logo Listing', 1, '2020-02-12 07:10:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permission_admin_role`
--

CREATE TABLE `admin_permission_admin_role` (
  `admin_role_id` bigint(20) UNSIGNED NOT NULL,
  `admin_permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_permission_admin_role`
--

INSERT INTO `admin_permission_admin_role` (`admin_role_id`, `admin_permission_id`) VALUES
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 19),
(1, 140),
(1, 148),
(1, 149),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Accounts', 'accounts', 1, '2020-02-10 09:40:36', '2020-02-06 01:31:10', NULL),
(2, 'Payroll', 'payroll', 1, '2020-02-10 09:40:39', '2020-02-06 04:47:45', NULL),
(3, 'Admin', 'admin', 1, '2020-02-10 09:50:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_admin_user`
--

CREATE TABLE `admin_role_admin_user` (
  `admin_role_id` bigint(20) UNSIGNED NOT NULL,
  `admin_user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role_admin_user`
--

INSERT INTO `admin_role_admin_user` (`admin_role_id`, `admin_user_id`) VALUES
(1, 5),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `phone`, `profile_image`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ratanakpisith CarMarket Admin', 'ratanakpisith.dotsquares@yopmail.com', '$2y$10$cPQE1OfGtFuEta1zj1nDJ.EJlKcn0JyGiMZWbiQA9HpOAfR1ILdAa', 9696969696, '4_1581083116.jpg', 1, 'pSSEiQ3nJWhlI15qeawm7pBajNYdaM40vjqB48oRykA6gVt3NErOpmVVFWi5', NULL, '2020-02-07 08:16:07', NULL),
(5, 'Accounts', 'accounts@yopmail.com', '$2y$10$HPXiouIPMWi8DP3zpWRA9u8.Qxj..nuDuKwssl3uHMmeLBPVvCQpG', 9696969696, NULL, 1, NULL, '2020-02-10 04:24:45', '2020-02-10 04:24:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_vehicle_reviews`
--

CREATE TABLE `admin_vehicle_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_type` tinyint(1) DEFAULT '0' COMMENT '0=image,1=video',
  `image` varchar(191) DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_vehicle_reviews`
--

INSERT INTO `admin_vehicle_reviews` (`id`, `review_type`, `image`, `video`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, '1582548798-977976645.jpeg', 'https://www.youtube.com/embed/sWC0jwNyl2s', 'toyota-mirai-review-test-drive-fuel-cell-electric-vehicles', 1, '2020-02-24 12:51:32', '2020-02-24 15:38:30', NULL),
(3, 0, '1582549728-931701331.jpeg', NULL, 'the-hoda-kwid-will-always-hold-a-special-place-in-our-motoring', 0, '2020-02-24 13:01:57', '2020-02-24 13:08:48', NULL),
(4, 0, '1582558679-1797980429.jpg', NULL, 'chiclet-is-what-santosh-has-named-the-newest-member-in-our-carwale', 1, '2020-02-24 13:15:18', '2020-02-24 15:37:59', NULL),
(6, 0, '1582558581-1205787776.jpg', NULL, 'volkswagen-tiguan-review-pros-and-cons', 1, '2020-02-24 13:33:57', '2020-02-24 15:36:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_vehicle_review_translations`
--

CREATE TABLE `admin_vehicle_review_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `admin_vehicle_review_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `excerpt` text NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_vehicle_review_translations`
--

INSERT INTO `admin_vehicle_review_translations` (`id`, `locale`, `admin_vehicle_review_id`, `title`, `excerpt`, `description`) VALUES
(3, 'en', 2, 'Toyota Mirai review, test drive Fuel cell electric vehicles', 'Short Toyota Mirai review, test drive Fuel cell electric vehicles', '<p>Description Toyota Mirai review, test drive Fuel cell electric vehicles</p>'),
(4, 'kh', 2, 'The Hyundai Grand i10 was a game changer', 'The Hyundai Grand i10 was a game changer', '<p>The <a href=\"https://www.carwale.com/hyundai-cars/grand-i10/\">Hyundai Grand i10</a> was a game changer when it arrived at the end of 2013. With more legroom and features than all of its competition, it raised the bar in terms of what buyers could expect from their compact hatchbacks. Well, here we are back again six years later and this time with this car, the <a href=\"https://www.carwale.com/hyundai-cars/grand-i10-nios/\">Grand i10 Nios</a>, which, as its Latin name suggests, is a <a href=\"https://www.carwale.com/hyundai-cars/grand-i10/\">Grand i10</a> with &ldquo;more&rdquo; to offer.</p>'),
(5, 'en', 3, 'The Hoda Kwid will always hold a special place in our motoring', 'The Hoda  Kwid will always hold a special place in our motoring', '<p>The <a href=\"https://www.carwale.com/renault-cars/kwid/\">Renault Kwid</a> will always hold a special place in our motoring lore as the car that brought the SUV body style to the entry-level buyer. With its cutesy larger than life looks, it marked <a href=\"https://www.carwale.com/renault-cars/\">Renault</a>&rsquo;s entry into the competitive A and A+ segments of the Indian car market.</p>'),
(6, 'kh', 3, 'The Hoda Kwid will always hold a special place in our motoring', 'The Hoda  Kwid will always hold a special place in our motoring', '<p>The Hoda&nbsp; Kwid will always hold a special place in our motoring</p>'),
(7, 'en', 4, 'Chiclet – is what Santosh has named the newest member in our CarWalexx', 'Chiclet – is what Santosh has named the newest member in our CarWalexx', '<p>Chiclet &ndash; is what Santosh has named the newest member in our CarWale long-term garage, the <a href=\"https://www.carwale.com/marutisuzuki-cars/s-presso/\">Maruti Suzuki S-Presso</a>. Now, I know not what the word exactly means, but the sound of it does resemble what the <a href=\"https://www.carwale.com/marutisuzuki-cars/s-presso/\">S-Presso</a> actually is. Maruti likes to call it &lsquo;<a href=\"https://www.carwale.com/mini-cars/\">mini</a> SUV&rsquo;,</p>'),
(8, 'kh', 4, 'Chiclet – is what Santosh has named the newest member in our CarWalexx', 'Chiclet – is what Santosh has named the newest member in our CarWalexx', '<p>Chiclet &ndash; is what Santosh has named the newest member in our CarWale long-term garage, the <a href=\"https://www.carwale.com/marutisuzuki-cars/s-presso/\">Maruti Suzuki S-Presso</a>. Now, I know not what the word exactly means, but the sound of it does resemble what the <a href=\"https://www.carwale.com/marutisuzuki-cars/s-presso/\">S-Presso</a> actually is. Maruti likes to call it &lsquo;<a href=\"https://www.carwale.com/mini-cars/\">mini</a> SUV&rsquo;,</p>'),
(11, 'en', 6, 'Volkswagen Tiguan Review: Pros and Cons', 'Volkswagen Tiguan Review: Pros and Cons', '<p>Like the exterior, there&rsquo;s nothing flashy, brash, or over the top about the Tiguan&rsquo;s interior either. In fact, some might even call it a tad boring. But</p>'),
(12, 'kh', 6, 'Volkswagen Tiguan Review: Pros and Cons', 'Volkswagen Tiguan Review: Pros and Cons', '<p>Volkswagen Tiguan Review: Pros and Cons</p>');

-- --------------------------------------------------------

--
-- Table structure for table `adsence_advertisements`
--

CREATE TABLE `adsence_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_location_id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adsence_advertisements`
--

INSERT INTO `adsence_advertisements` (`id`, `page_location_id`, `position_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-12-17 10:05:27', '2020-01-07 20:12:48'),
(2, 2, 1, 1, '2019-12-17 10:18:31', '2020-01-07 19:10:07'),
(3, 3, 5, 1, '2019-12-17 13:07:13', '2020-01-07 19:10:01'),
(4, 3, 5, 1, '2019-12-17 13:27:06', '2020-01-08 00:39:42'),
(5, 4, 1, 1, '2019-12-18 06:55:44', '2020-01-08 00:39:32'),
(6, 1, 6, 1, '2019-12-18 13:59:28', '2020-01-07 20:13:16'),
(7, 3, 1, 1, '2019-12-18 14:00:55', '2020-01-07 19:09:13'),
(8, 2, 6, 1, '2019-12-24 13:51:04', '2020-01-07 19:58:31'),
(9, 2, 1, 1, '2020-01-06 14:01:45', '2020-01-07 19:06:42'),
(10, 3, 5, 1, '2020-01-07 07:16:44', '2020-01-06 20:16:44'),
(11, 3, 5, 1, '2020-01-07 07:20:51', '2020-01-06 20:22:30'),
(12, 3, 5, 1, '2020-01-07 07:21:23', '2020-01-07 02:19:36'),
(13, 3, 5, 1, '2020-01-07 07:22:58', '2020-01-06 20:22:58'),
(14, 3, 4, 1, '2020-02-25 13:37:23', '2020-02-25 08:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `adsence_advertisement_translations`
--

CREATE TABLE `adsence_advertisement_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `image_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=image,2=scripts',
  `image_scripts` text CHARACTER SET utf8 COLLATE utf8_bin,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adsence_advertisement_translations`
--

INSERT INTO `adsence_advertisement_translations` (`id`, `locale`, `title`, `image`, `ad_id`, `image_type`, `image_scripts`, `url`) VALUES
(1, 'en', 'Home', '1576581540-114703475.jpeg', 1, 1, NULL, 'http://carmarket.projectstatus.in/'),
(2, 'en', '13', '1576581528-213200867.png', 2, 1, NULL, 'http://carmarket.projectstatus.in/'),
(3, 'en', '12', '1576588033-1862431276.jpeg', 3, 1, NULL, 'http://test.com'),
(4, 'en', '11', '1576593293-1414698072.jpg', 4, 1, NULL, 'http://test.com'),
(5, 'en', '9', '1576652144-55507786.png', 5, 1, NULL, 'http://carmarket.projectstatus.in/'),
(6, 'en', '8', '1578463759-497937034.jpg', 6, 1, NULL, 'https://www.google.com'),
(7, 'en', '7', '1576677655-1683265296.jpg', 7, 1, '<h1>HTML</H>', 'http://www.google.com'),
(8, 'en', '6', '1578467683-107172878.jpg', 8, 1, NULL, 'https://www.google.com/'),
(9, 'en', '5', '1578467668-881841068.jpg', 9, 1, NULL, 'https://carmarket.projectstatus.in/'),
(10, 'en', '4', '1578411049-1903384452.jpg', 10, 1, NULL, 'https://carmarket.projectstatus.in/'),
(11, 'en', '3', '1578411036-1240106460.jpg', 11, 1, NULL, 'https://carmarket.projectstatus.in/'),
(12, 'en', '2', '1578411028-544371229.png', 12, 1, NULL, 'https://carmarket.projectstatus.in/'),
(13, 'en', '1', '1578411126-1391784892.jpg', 13, 1, NULL, 'https://carmarket.projectstatus.in/'),
(14, 'en', 'Test add', '1582637843-827657677.jpg', 14, 1, NULL, 'https://carmarketkh.com/');

-- --------------------------------------------------------

--
-- Table structure for table `auto_approvals`
--

CREATE TABLE `auto_approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `watch_hours` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_approvals`
--

INSERT INTO `auto_approvals` (`id`, `watch_hours`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2020-02-19 11:18:32', '2020-02-19 14:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `ban_lists`
--

CREATE TABLE `ban_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ban_item` varchar(191) NOT NULL,
  `ban_type` enum('IP Address','Email Address') NOT NULL DEFAULT 'IP Address',
  `comment` mediumtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ban_lists`
--

INSERT INTO `ban_lists` (`id`, `ban_item`, `ban_type`, `comment`, `created_at`, `updated_at`) VALUES
(1, '192.168.5.47', 'IP Address', 'this ip has been blocked', '2020-02-01 06:32:08', '2020-02-01 06:32:08'),
(2, '127.2.0.1', 'IP Address', 'this ip has been blocked', '2020-02-01 06:34:14', '2020-02-01 06:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'new', 1, 0, NULL, '2020-01-21 00:26:02', '2020-01-21 00:26:02', NULL),
(2, 'used', 1, 0, NULL, '2020-01-21 00:26:28', '2020-01-21 00:26:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `locale`, `category_id`, `name`) VALUES
(1, 'en', 1, 'New'),
(2, 'kh', 1, 'រថយន្តថ្មី'),
(3, 'en', 2, 'Used'),
(4, 'kh', 2, 'រថយន្តមួយទឹក');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `type` enum('private','vehicle') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vehicle',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `vehicle_id`, `type`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 'vehicle', '2018 Audi 360 300 Q7', '2020-01-21 05:04:15', '2020-01-21 05:04:15'),
(2, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Mayank Mishra)', '2020-01-29 23:54:28', '2020-01-29 23:54:28'),
(3, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Mayank Mishra)', '2020-01-29 23:54:43', '2020-01-29 23:54:43'),
(4, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Mayank Mishra)', '2020-01-29 23:58:29', '2020-01-29 23:58:29'),
(5, 6, 'vehicle', '2019 Hyundai Accent(Gyan Dealer-Arnav Jain)', '2020-01-30 00:01:06', '2020-01-30 00:01:06'),
(7, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Ansul Mishra)', '2020-01-30 03:59:23', '2020-01-30 03:59:23'),
(8, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Ansul1 Mishra)', '2020-01-30 03:59:47', '2020-01-30 03:59:47'),
(9, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Ansul1 Mishra)', '2020-01-30 04:00:49', '2020-01-30 04:00:49'),
(10, 8, 'vehicle', '2016 Hyundai Accent(Gyan Dealer-Ansul1 Mishra)', '2020-01-30 04:01:03', '2020-01-30 04:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_messages`
--

CREATE TABLE `conversation_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversation_messages`
--

INSERT INTO `conversation_messages` (`id`, `conversation_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2020-01-21 05:04:15', '2020-01-21 05:04:15'),
(3, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2020-01-29 23:46:11', '2020-01-29 23:46:11'),
(4, 1, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2020-01-29 23:46:50', '2020-01-29 23:46:50'),
(5, 1, 1, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source', '2020-01-29 23:47:11', '2020-01-29 23:47:11'),
(6, 1, 3, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2020-01-29 23:47:33', '2020-01-29 23:47:33'),
(7, 2, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2020-01-29 23:54:28', '2020-01-29 23:54:28'),
(8, 3, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2020-01-29 23:54:43', '2020-01-29 23:54:43'),
(9, 4, 2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2020-01-29 23:58:29', '2020-01-29 23:58:29'),
(10, 5, 2, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2020-01-30 00:01:06', '2020-01-30 00:01:06'),
(11, 4, 3, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2020-01-30 00:01:44', '2020-01-30 00:01:44'),
(12, 4, 3, 'Lorem ipsum dolor sit amet design sample', '2020-01-30 00:16:11', '2020-01-30 00:16:11'),
(13, 6, 2, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2020-01-30 00:27:52', '2020-01-30 00:27:52'),
(14, 6, 3, 'Hi', '2020-01-30 00:35:43', '2020-01-30 00:35:43'),
(15, 6, 3, 'Lorem ipsum', '2020-01-30 00:35:52', '2020-01-30 00:35:52'),
(16, 5, 2, 'Testing message', '2020-01-30 03:20:28', '2020-01-30 03:20:28'),
(17, 5, 2, 'Hi how are u', '2020-01-30 03:29:56', '2020-01-30 03:29:56'),
(18, 5, 2, 'hi testing', '2020-01-30 03:30:39', '2020-01-30 03:30:39'),
(19, 5, 3, 'Hi how are u', '2020-01-30 03:33:25', '2020-01-30 03:33:25'),
(20, 4, 3, 'Hellow', '2020-01-30 03:38:55', '2020-01-30 03:38:55'),
(21, 7, 2, 'Testing', '2020-01-30 03:59:23', '2020-01-30 03:59:23'),
(22, 8, 2, 'Testing 2', '2020-01-30 03:59:47', '2020-01-30 03:59:47'),
(23, 9, 2, 'testing 3', '2020-01-30 04:00:49', '2020-01-30 04:00:49'),
(24, 10, 2, 'Testing 4', '2020-01-30 04:01:03', '2020-01-30 04:01:03'),
(25, 10, 3, 'hi', '2020-01-30 08:29:10', '2020-01-30 08:29:10'),
(26, 10, 3, 'fdhgfghgh', '2020-01-31 00:42:07', '2020-01-31 00:42:07'),
(27, 10, 3, 'sds', '2020-01-31 04:26:28', '2020-01-31 04:26:28'),
(28, 10, 3, 'fdsfsd', '2020-01-31 04:26:41', '2020-01-31 04:26:41'),
(29, 10, 3, 'sdsad', '2020-01-31 07:29:29', '2020-01-31 07:29:29'),
(30, 10, 3, 'uiuuuu', '2020-01-31 07:32:29', '2020-01-31 07:32:29'),
(31, 10, 3, 'hi', '2020-01-31 09:00:31', '2020-01-31 09:00:31'),
(32, 10, 3, 'hi', '2020-01-31 09:04:30', '2020-01-31 09:04:30'),
(33, 10, 3, 'hi', '2020-01-31 09:04:50', '2020-01-31 09:04:50'),
(34, 10, 3, 'Hello', '2020-01-31 09:05:20', '2020-01-31 09:05:20'),
(35, 1, 3, 'hey', '2020-02-25 04:18:14', '2020-02-25 04:18:14'),
(36, 1, 3, 'how r u', '2020-02-25 04:19:24', '2020-02-25 04:19:24'),
(37, 1, 3, 'how r u', '2020-02-25 04:20:26', '2020-02-25 04:20:26'),
(38, 1, 3, 'dsfdfgg', '2020-02-25 04:25:18', '2020-02-25 04:25:18'),
(39, 1, 3, 'dsfdfggfgfg', '2020-02-25 04:26:05', '2020-02-25 04:26:05'),
(40, 1, 3, 'sdfsdfsdf', '2020-02-25 04:27:07', '2020-02-25 04:27:07'),
(41, 1, 3, 'sdfsdfsdf fgdg', '2020-02-25 04:27:39', '2020-02-25 04:27:39'),
(42, 1, 3, 'sdfsdfsdf fgdg fgfdgf', '2020-02-25 04:28:09', '2020-02-25 04:28:09'),
(43, 1, 3, 'how r u', '2020-02-25 04:29:02', '2020-02-25 04:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_participants`
--

CREATE TABLE `conversation_participants` (
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversation_participants`
--

INSERT INTO `conversation_participants` (`conversation_id`, `user_id`, `name`, `email`, `phone`) VALUES
(1, 1, 'Ratanakpisith CarMarket Admin', 'ratanakpisith.dotsquares@yopmail.com', 1245678894),
(1, 3, 'Gyan Seller', 'gyanseller@yopmail.com', 9694728151),
(2, 2, 'Mayank Mishra', 'mayank@yopmail.com', 1111111111111),
(2, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(3, 2, 'Mayank Mishra', 'mayank@yopmail.com', 1111111111111),
(3, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(4, 2, 'Mayank Mishra', 'mayank@yopmail.com', 1111111111111),
(4, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(5, 2, 'Arnav Jain', 'arnav1@yopmail.com', 222222),
(5, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(6, 2, 'Arnav Jain', 'arnav@yopmail.com', 222222),
(6, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(7, 2, 'Ansul Mishra', 'anshul@yopmail.com', 123456789),
(7, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(8, 2, 'Ansul1 Mishra', 'anshul1@yopmail.com', 1234567891),
(8, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(9, 2, 'Ansul1 Mishra', 'anshul11@yopmail.com', 12345678911),
(9, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151),
(10, 2, 'Ansul1 Mishra', 'anshul111@yopmail.com', 123456789111),
(10, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', 9694728151);

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `discount` int(10) NOT NULL,
  `discount_type` enum('percentage','amount') NOT NULL DEFAULT 'percentage',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_publish` tinyint(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `name`, `code`, `discount`, `discount_type`, `start_date`, `end_date`, `is_publish`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'bhb', 55, 'percentage', '2020-01-03', '2020-01-09', 0, '2020-01-31 12:59:02', '2020-01-31 12:59:02'),
(4, 'Admin', 'bhb', 55, 'percentage', '2020-01-03', '2020-01-09', 1, '2020-01-31 12:59:44', '2020-01-31 13:30:05'),
(5, 'ngfbfg', 'cdsc', 3, 'percentage', '2020-01-17', '2020-01-23', 1, '2020-01-31 13:02:04', '2020-01-31 13:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'inquiry_mail', 1, 1, '2020-01-21 05:05:38', NULL, '2020-01-21 05:05:38'),
(2, 'vehicle_inquiry_mail_to_admin', 1, 1, '2020-01-21 05:06:24', NULL, '2020-01-21 05:06:24'),
(3, 'welcome_mail_to_user', 1, 1, '2020-01-21 05:06:59', NULL, '2020-01-21 05:06:59'),
(4, 'vehicle_report_ad_mail_to_admin', 1, 1, '2020-01-21 05:07:59', NULL, '2020-01-21 05:07:59'),
(5, 'vehicle_added_mail_to_admin', 1, 1, '2020-01-21 05:09:18', NULL, '2020-01-21 05:09:18'),
(6, 'vehicle_added_mail_to_user', 1, 1, '2020-01-21 05:10:30', NULL, '2020-01-21 05:10:30'),
(7, 'vehicle_approve_mail_to_user', 1, 1, '2020-01-21 05:11:18', NULL, '2020-01-21 05:11:18'),
(8, 'vehicle_disapprove_mail_to_user', 1, 1, '2020-01-21 05:11:58', NULL, '2020-01-21 05:11:58'),
(9, 'vehicle_review_approve_mail_to_selle/dealer', 1, 1, '2020-01-21 05:12:33', NULL, '2020-01-21 05:12:33'),
(10, 'vehicle_review_disapprove_mail_to_user', 1, 1, '2020-01-21 05:13:10', NULL, '2020-01-21 05:13:10'),
(11, 'vehicle_inspection_mail_to_admin', 1, 1, '2020-01-29 08:57:57', NULL, NULL),
(12, 'vehicle_inspection_mail_to_owner', 1, 1, '2020-01-29 08:57:57', NULL, NULL),
(13, 'vehicle_message_mail_to_receiver', 1, 1, '2020-02-01 08:13:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_translations`
--

CREATE TABLE `email_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(222) NOT NULL,
  `email_template_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template_translations`
--

INSERT INTO `email_template_translations` (`id`, `locale`, `email_template_id`, `subject`, `template`) VALUES
(1, 'en', 1, 'Inquiry mail', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Inquiry from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n                    <tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Enquiry relates to:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##ENQUIRY_RELATES_TO##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Subject:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##SUBJECT##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(2, 'kh', 1, 'Inquiry mail', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Inquiry from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n                    <tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Enquiry relates to:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##ENQUIRY_RELATES_TO##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Subject:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##SUBJECT##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(3, 'en', 2, 'Vehicle Inquiry', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Inquiry from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Is trade in:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##IS_TRADE_IN##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Is dealer response:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##IS_DEALER_RESPONSE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(4, 'kh', 2, 'Vehicle Inquiry', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Inquiry from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Is trade in:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##IS_TRADE_IN##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Is dealer response:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##IS_DEALER_RESPONSE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(5, 'en', 3, 'Welcome', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hi <span style=\"color:#d8322d;\">##NAME##</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\"><br />\r\n			Welcome to the CarMarket.com. Your account has been created. Please use the below OTP to verify your account.<br />\r\n			<br />\r\n			Your OTP is: ##OTP##.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Member Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(6, 'kh', 3, 'Welcome', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hi <span style=\"color:#d8322d;\">##NAME##</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\"><br />\r\n			Welcome to the CarMarket.com. Your account has been created. Please use the below OTP to verify your account.<br />\r\n			<br />\r\n			Your OTP is: ##OTP##.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Member Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(7, 'en', 4, 'Vehicle Report Ad', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Report Ad from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Report Ad Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Report Type:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##TYPE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(8, 'kh', 4, 'Vehicle Report Ad', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Report Ad from :- Carmarket Ltd.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Report Ad Information</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Report Type:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##TYPE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(9, 'en', 5, 'New vehicle added for approval :- ##VEHICLE_TITLE##', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Dear&nbsp; <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">A new vehicle ##VEHICLE_TITLE## has been added successfully at SP Car Market. Kindly review and update status as approve/disapprove.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(10, 'kh', 5, 'New vehicle added for approval :- ##VEHICLE_TITLE##', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Dear&nbsp; <span style=\"color:#d8322d;\">Admin</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">A new vehicle ##VEHICLE_TITLE## has been added successfully at SP Car Market. Kindly review and update status as approve/disapprove.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Post code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##POST_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(11, 'en', 6, 'Thanks, ##VEHICLE_TITLE## added successfully', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"color: rgb(74, 90, 90);\">Hello </span><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been added successfully at SP Car Market and Admin approval is pending. Our team will review it next 48 hours and get back to you.</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(12, 'kh', 6, 'Thanks, ##VEHICLE_TITLE## added successfully', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"color: rgb(74, 90, 90);\">Hello </span><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been added successfully at SP Car Market and Admin approval is pending. Our team will review it next 48 hours and get back to you.</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(13, 'en', 7, 'Congratulations, ##VEHICLE_TITLE## approved !!', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been approved&nbsp; successfully&nbsp;by SP Car Market team. Now it is available to all other users to browse.</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(14, 'kh', 7, 'Congratulations, ##VEHICLE_TITLE## approved !!', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been approved&nbsp; successfully&nbsp;by SP Car Market team. Now it is available to all other users to browse.</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(15, 'en', 8, 'Unfortunately,  ##VEHICLE_TITLE##  disapproved   !!', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been disapproved&nbsp;recently by SP Car Market team. Now it is available to all other users to browse.</p>\r\n\r\n			<p>Reason of disapproval :-</p>\r\n\r\n			<p>##DISAPPROVED_REASON##</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(16, 'kh', 8, 'Unfortunately,  ##VEHICLE_TITLE##  disapproved   !!', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>Your vehicle ##VEHICLE_TITLE## has been disapproved&nbsp;recently by SP Car Market team. Now it is available to all other users to browse.</p>\r\n\r\n			<p>Reason of disapproval :-</p>\r\n\r\n			<p>##DISAPPROVED_REASON##</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(17, 'en', 9, 'Review Approved By Admin', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##CARSELLER/DEALER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>A review posted by ##USER## on your car has been approved recently by SP Car market team</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(18, 'kh', 9, 'Review Approved By Admin', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##CARSELLER/DEALER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>A review posted by ##USER## on your car has been approved recently by SP Car market team</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');
INSERT INTO `email_template_translations` (`id`, `locale`, `email_template_id`, `subject`, `template`) VALUES
(19, 'en', 10, 'Review UnApproved By Admin', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>A review posted by You&nbsp;on ##VEHICLE_TITLE## car has been unapproved unfortunately by SP Car market team</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(20, 'kh', 10, 'Review UnApproved By Admin', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family: Arial, Helvetica, sans-serif; font-size: 18px;\"><font color=\"#4a5a5a\">Dear&nbsp;</font><font color=\"#d8322d\">##USER##</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">\r\n			<p>A review posted by You&nbsp;on ##VEHICLE_TITLE## car has been unapproved unfortunately by SP Car market team</p>\r\n\r\n			<p>If you have any query or need assistance, Kindly call us at 1800180180 or email us at contact@spcarmarket.com.au</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n						<td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(21, 'en', 11, 'Vehicle Inspection', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Vehicle Inspection Inquiry from :- Carmarket Ltd.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                        <tbody>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##(##ROLE##)</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n                                            </tr>\r\n                                        </tbody>\r\n                                    </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>'),
(22, 'kh', 11, 'Vehicle Inspection', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">Admin</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Vehicle Inspection Inquiry from :- Carmarket Ltd.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                        <tbody>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##(##ROLE##)</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n                                            </tr>\r\n                                        </tbody>\r\n                                    </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>'),
(23, 'en', 12, 'Vehicle Inspection', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">##OWNER##</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Vehicle Inspection Inquiry from :- Carmarket Ltd.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                        <tbody>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##(##ROLE##)</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n                                            </tr>\r\n                                        </tbody>\r\n                                    </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>'),
(24, 'kh', 12, 'Vehicle Inspection', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">##OWNER##</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">Vehicle Inspection Inquiry from :- Carmarket Ltd.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a; padding-top:20px;\">Inquiry Information</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                        <tbody>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle title:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_TITLE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Vehicle code:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##VEHICLE_CODE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Name:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##NAME##(##ROLE##)</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Email:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##EMAIL##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Phone:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##PHONE##</td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"25%\">Message:</td>\r\n                                                <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"75%\">##MESSAGE##</td>\r\n                                            </tr>\r\n                                        </tbody>\r\n                                    </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>'),
(25, 'en', 13, 'New Message', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">##USER##</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">You have received new message for ##VEHICLE_TITLE##.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                            <tbody>\r\n                                                <tr>\r\n                                                    <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"100%%\">##MESSAGE##</td>\r\n                                                </tr>\r\n                                            </tbody>\r\n                                        </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>'),
(26, 'kh', 13, 'New Message', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#fff; padding:20px;\" width=\"100%\">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#4a5a5a;\">Hello <span style=\"color:#d8322d;\">##USER##</span></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding:5px 0 20px; border-bottom:1px solid #e5e5e5;\">You have received new message for ##VEHICLE_TITLE##.</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style=\"font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px; padding-top:20px;\">\r\n                                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                                            <tbody>\r\n                                                <tr>\r\n                                                    <td style=\"border-bottom:1px solid #e3e3e3;font-family:Arial, Helvetica, sans-serif; color:#4a5a5a; font-size:15px;padding:5px 0;\" valign=\"top\" width=\"100%%\">##MESSAGE##</td>\r\n                                                </tr>\r\n                                            </tbody>\r\n                                        </table>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '2020-01-30 13:12:57', '2020-01-30 13:12:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `faq_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `answer` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `locale`, `faq_id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 4, 'What we do and why we do it? s', '<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, conse libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.ctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo inctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo inctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo inctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo inctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo inctetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in</p>', '2020-01-30 18:42:57', NULL, NULL),
(2, 'kh', 4, 'What we do and why we do it?', '<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac&nbsp;<a>tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.</p>', '2020-01-30 18:42:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(939, 'default', '{\"displayName\":\"App\\\\Jobs\\\\HandleVehicleApproval\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\HandleVehicleApproval\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\HandleVehicleApproval\\\":8:{s:10:\\\"\\u0000*\\u0000vehicle\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:39:\\\"Modules\\\\VehicleManager\\\\Entities\\\\Vehicle\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2020-02-27 14:00:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1582812000, 1582635061);

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
(2, '2019_05_03_000001_create_customer_columns', 2),
(3, '2020_02_24_095959_create_jobs_table', 3),
(4, '2020_02_24_100145_create_failed_jobs_table', 4),
(5, '2019_05_03_000002_create_subscriptions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'gyanendra.kumar@dotsquares.com', '2020-01-31 06:22:33', '2020-01-31 06:22:33'),
(2, 'vikas@dotsquares.com', '2020-02-05 12:18:03', '2020-02-05 12:18:03'),
(3, 'gyanseller@yopmail.com', '2020-02-20 10:38:01', '2020-02-20 10:38:01'),
(4, 'gyanseller1@yopmail.com', '2020-02-20 10:39:32', '2020-02-20 10:39:32'),
(5, 'arnav.jain@dotsquares.com', '2020-02-24 07:09:16', '2020-02-24 07:09:16'),
(6, 'chirag.patel@dotsquares.com', '2020-02-24 07:10:04', '2020-02-24 07:10:04'),
(7, 'arnav1.jain@dotsquares.com', '2020-02-24 07:18:40', '2020-02-24 07:18:40'),
(8, 'arnav12.jain@dotsquares.com', '2020-02-24 07:19:10', '2020-02-24 07:19:10'),
(9, 'arnav123.jain@dotsquares.com', '2020-02-24 08:33:37', '2020-02-24 08:33:37'),
(10, 'arnav.jain11@dotsquares.com', '2020-02-24 08:33:53', '2020-02-24 08:33:53'),
(11, 'arnav.jain1111@dotsquares.com', '2020-02-24 08:35:00', '2020-02-24 08:35:00'),
(12, 'arnav123456.jain@dotsquares.com', '2020-02-24 08:37:26', '2020-02-24 08:37:26'),
(13, 'arnav1123456.jain@dotsquares.com', '2020-02-24 08:37:53', '2020-02-24 08:37:53'),
(14, 'arnav11a23456.jain@dotsquares.com', '2020-02-24 08:38:57', '2020-02-24 08:38:57'),
(15, 'arnav11a23a456.jain@dotsquares.com', '2020-02-24 08:40:04', '2020-02-24 08:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `newss`
--

CREATE TABLE `newss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_type` tinyint(1) DEFAULT '0' COMMENT '0=image,1=video',
  `image` varchar(191) DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newss`
--

INSERT INTO `newss` (`id`, `news_type`, `image`, `video`, `start_date`, `end_date`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1576509344-1352876794.jpg', NULL, '2019-12-23', '2020-03-31', 'news-1', 0, '2019-12-02 11:48:43', '2019-12-16 15:15:44', NULL),
(2, 0, '1576509247-367462357.jpg', NULL, '2019-12-19', '2020-03-31', 'news-2', 0, '2019-12-16 05:37:34', '2019-12-16 15:14:07', NULL),
(3, 0, '1576509232-1372750147.jpg', NULL, '2019-12-19', '2020-03-31', 'news-3', 0, '2019-12-16 06:03:56', '2019-12-17 14:30:48', NULL),
(4, 0, '1576509214-2062566511.jpg', NULL, '2019-12-18', '2020-03-31', 'news-4', 0, '2019-12-16 06:08:58', '2019-12-16 15:13:34', NULL),
(5, 0, '1576676741-1153619779.jpg', NULL, '2019-06-18', '2020-03-31', 'news-5', 0, '2019-12-18 12:34:24', '2019-12-18 13:45:41', NULL),
(6, 0, '1576738312-2082372598.png', NULL, '2020-01-04', '2020-03-31', 'news-6', 0, '2019-12-19 06:51:52', '2019-12-19 06:53:57', NULL),
(7, 0, '1578411419-806291614.jpg', NULL, '2020-01-07', '2020-03-31', 'news-7', 1, '2020-01-07 06:49:01', '2020-01-07 15:36:59', NULL),
(8, 0, '1578411549-1550049890.jpg', NULL, '2020-01-07', '2020-03-31', 'news-8', 1, '2020-01-07 06:56:45', '2020-01-07 15:39:09', NULL),
(9, 0, '1578411574-1234549418.jpg', NULL, '2020-01-07', '2020-03-31', 'news-9', 1, '2020-01-07 06:57:55', '2020-01-07 15:39:34', NULL),
(10, 0, '1578411337-1661644040.jpg', NULL, '2020-01-07', '2020-03-31', 'news-10', 1, '2020-01-07 06:58:52', '2020-01-07 15:35:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_translations`
--

CREATE TABLE `news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_translations`
--

INSERT INTO `news_translations` (`id`, `locale`, `news_id`, `title`, `excerpt`, `description`) VALUES
(1, 'en', 1, 'Car Market is going to live', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>test kh</p>'),
(2, 'kh', 1, 'test kh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>test kh</p>'),
(3, 'en', 2, 'Toyota Yaris GR-4 debut delayed', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'kh', 2, 'Toyota Yaris GR-4 debut delayed', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'en', 3, 'Audi Q7 with uplift version', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;</p>'),
(6, 'kh', 3, 'Audi Q7 with uplift version', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the audi</p>'),
(7, 'en', 4, 'Honda Civic is launching soon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;&nbsp;</p>'),
(8, 'kh', 4, 'Honda Civic is launching soon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the&nbsp;</p>'),
(9, 'en', 5, 'Sorry, you can\'t add the title more than the 200 characters in English', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(10, 'kh', 5, 'Sorry, you can\'t add the title more than the 200 characters in English language.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.Sorry, you can&#39;t add the title more than the 200 characters in English language.</p>'),
(11, 'en', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>'),
(12, 'kh', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(13, 'en', 7, '2020 Hyundai Creta India launch confirmed for mid-March', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>We&rsquo;re now less than a month away from Auto Expo 2020, and we can now confirm the date for one of the most significant unveils at this year&#39;s show. The second-gen Hyundai Creta will make its global debut on February 6, which is the second press day at the Expo, and will be unveiled by Hyundai brand ambassador and Bollywood superstar Shah Rukh Khan.</p>\r\n\r\n<p>However, Hyundai will not launch the new Creta at Auto Expo 2020. What will be shown on February 6 is only the exterior design of the 2020 Hyundai Creta, with the interior being blacked-out, similar to what Hyundai did with the unveil of the Aura compact sedan. The reason for it? Hyundai will reveal the new Creta&#39;s interior and more details about the second-gen SUV closer to its market launch, which we can also confirm is slated for mid-March 2020.</p>\r\n\r\n<p>Based on the second-gen ix25 revealed in China last year, the second-gen Hyundai Creta is expected to get India-specific design changes, including a new grille, different alloy wheels and a few more cosmetic tweaks on the inside. However, the India-spec model is expected to retain the split head- and tail-light setups, as well as the squarish wheel arches, large panoramic sunroof and the 10.25-inch portrait-oriented touchscreen infotainment system as seen on the ix25.</p>\r\n\r\n<p>In terms of powertrains, the all-new Hyundai Creta will borrow its engines and gearboxes from the hugely popular Kia Seltos and could also get the Seltos GT Line&#39;s 1.4-litre turbo-petrol option.</p>\r\n\r\n<p>For years, the Hyundai Creta enjoyed a largely unchallenged run in the Indian market, but it now faces stiff competition from its own sibling, the Kia Seltos, and there&rsquo;s also the MG Hector, which has found plenty of takers already. Action in the midsize SUV segment will only intensify with the arrival of the next-gen Mahindra XUV500, and other Chinese carmakers such as Great Wall Motors and Haima Automobile also eyeing the space. It&rsquo;s safe to say the Creta will surely have its work cut out, but armed to the teeth with features, along with an attractive price tag (Rs 10-16 lakh, estimated, ex-showroom), the second-gen Creta will have the goods to take the fight to its rivals.</p>'),
(14, 'kh', 7, '2020 Hyundai Creta India launch confirmed for mid-March', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>We&rsquo;re now less than a month away from Auto Expo 2020, and we can now confirm the date for one of the most significant unveils at this year&#39;s show. The second-gen Hyundai Creta will make its global debut on February 6, which is the second press day at the Expo, and will be unveiled by Hyundai brand ambassador and Bollywood superstar Shah Rukh Khan.</p>\r\n\r\n<p>However, Hyundai will not launch the new Creta at Auto Expo 2020. What will be shown on February 6 is only the exterior design of the 2020 Hyundai Creta, with the interior being blacked-out, similar to what Hyundai did with the unveil of the Aura compact sedan. The reason for it? Hyundai will reveal the new Creta&#39;s interior and more details about the second-gen SUV closer to its market launch, which we can also confirm is slated for mid-March 2020.</p>\r\n\r\n<p>Based on the second-gen ix25 revealed in China last year, the second-gen Hyundai Creta is expected to get India-specific design changes, including a new grille, different alloy wheels and a few more cosmetic tweaks on the inside. However, the India-spec model is expected to retain the split head- and tail-light setups, as well as the squarish wheel arches, large panoramic sunroof and the 10.25-inch portrait-oriented touchscreen infotainment system as seen on the ix25.</p>\r\n\r\n<p>In terms of powertrains, the all-new Hyundai Creta will borrow its engines and gearboxes from the hugely popular Kia Seltos and could also get the Seltos GT Line&#39;s 1.4-litre turbo-petrol option.</p>\r\n\r\n<p>For years, the Hyundai Creta enjoyed a largely unchallenged run in the Indian market, but it now faces stiff competition from its own sibling, the Kia Seltos, and there&rsquo;s also the MG Hector, which has found plenty of takers already. Action in the midsize SUV segment will only intensify with the arrival of the next-gen Mahindra XUV500, and other Chinese carmakers such as Great Wall Motors and Haima Automobile also eyeing the space. It&rsquo;s safe to say the Creta will surely have its work cut out, but armed to the teeth with features, along with an attractive price tag (Rs 10-16 lakh, estimated, ex-showroom), the second-gen Creta will have the goods to take the fight to its rivals.</p>'),
(15, 'en', 8, 'Vitara Brezza petrol new details revealed', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Vitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealedVitara Brezza petrol new details revealed</p>'),
(16, 'kh', 8, '121', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>121212</p>'),
(17, 'en', 9, 'Hyundai Tucson facelift launch at Auto Expo 2020', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020</p>'),
(18, 'kh', 9, '121 1 21 212121 1 21 212121 1 21 212121 1 21 212121 1 21 212121 1 21 212121 1 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020Hyundai Tucson facelift launch at Auto Expo 2020</p>'),
(19, 'en', 10, 'Mercedes Vision AVTR concept revealed at CES 2020', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Road tripping on the grandest scale possible</strong></p>\r\n\r\n<p>Every stellar story that exists today contains a great journey. Not just a philosophical one, but an actual physical journey where the protagonists travel significant distances in a bid to complete their quest and change their view on life. Well, that&rsquo;s pretty much an easy way to define&nbsp;<a href=\"https://www.carwale.com/toyota-cars/\">Toyota</a>&rsquo;s 5 Continent drive. Nothing short of an epic journey, it saw multiple teams from Toyota drive different vehicles from the Toyota stable, across different countries in multiple continents.</p>\r\n\r\n<p>In the last few decades, going on massive road trips has become easy due to the development of roads and facilities. However, with Toyota, it is about so much more as their quest is a journey in progress to understand the individual needs of each specific market where the drive has taken place. &nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"Toyota Yaris Exterior \" data-original=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-5.jpeg\" src=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-5.jpeg\" title=\"Toyota Yaris Exterior \" /></p>\r\n\r\n<p><strong>First-hand look&nbsp;</strong></p>\r\n\r\n<p>Running a car manufacturing company has changed so much over the many decades. Gone are the days of adding fancy, pointless, features. Today it is about so much more &mdash; with the highest priority being given to the people who buy the cars and the roads they manoeuvre. To get a better understanding of this and answer the question, &#39;What makes a car better?&#39;, Toyota came up with the idea of the 5 Continent Drive.</p>\r\n\r\n<p>Put simply, it&rsquo;s Toyota&rsquo;s quest to see and experience the roads, people and conditions first hand. Since this is a global initiative, it also provides an excellent opportunity for Toyota to allow its employees from around the world to interact with each other and get a perspective of other markets and the challenges of selling cars in that environment.&nbsp;</p>\r\n\r\n<p><img alt=\"Toyota Yaris Exterior \" data-original=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-6.jpeg\" src=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-6.jpeg\" title=\"Toyota Yaris Exterior \" /></p>\r\n\r\n<p><strong>Up until this point&nbsp;</strong></p>\r\n\r\n<p>Toyota began its 5 Continent Drive in 2014 in Australia. The drivers were divided into three teams which circumnavigated the island continent over 72 days starting at Melbourne and travelling along the coast and finally returning to the city. This was followed by the North American leg in 2015 that saw four teams traverse roads in both US and Canada. The Latin America leg in 2016, at 20,000 km, was one of the longest and saw the teams cover all major nations of the continent. Looking to raise the bar even further, the European leg, in 2017, saw the teams drive 21,000 km with Portugal as the start point and Russia as the end. The year 2018 saw the teams enter Africa and despite being a smaller leg with just 10,600 km, they visited quite a few places and used a large number of SUVs as a part of the convoy. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>Hello India!&nbsp;</strong></p>\r\n\r\n<p>2019 was Asia&rsquo;s year and on that route is of course, India &ndash; a crucial market for the Japanese automaker. In September, Toyota, backed by its philosophy of QDR &mdash; Quality, Durability and Reliability &mdash; ventured out on a Quest to Discover the Real India. The ultimate aim was to understand the needs of their customers across the nation.</p>\r\n\r\n<p>The 10-day quest started from Toyota Kirloskar Motor&rsquo;s India plant at Bidadi in Karnataka and took them on a route that included Madikeri, Davanagere, Kolhapur, Mumbai, Surat, Ahmedabad, Udaipur and Ajmer, before coming to a close in New Delhi. At the heart of this drive was the idea of &lsquo;Roads train people and people build cars.&rsquo; The convoy travelled across diverse terrains in India, understood the needs of its customers and dealers, witnessed the nature of Indian roads and of course enjoyed themselves. India&#39;s leg turned out to be even more special as the Toyota employees were joined by members from Suzuki Motor Corporation.&nbsp;</p>\r\n\r\n<p><img alt=\"Toyota Yaris Exterior \" data-original=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-7.jpeg\" src=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-7.jpeg\" title=\"Toyota Yaris Exterior \" /></p>\r\n\r\n<p><strong>QDR</strong></p>\r\n\r\n<p>When you put quality, durability and reliability as the core reason for venturing out across a country, to understand it better, you are on the right track. What better way to find out and improve your products than to see them in action &mdash; understand what&rsquo;s missing or lacking and work towards a solution that ensures customer satisfaction.</p>\r\n\r\n<p>Fuelling this process was the Japanese philosophy &lsquo;Genchi Genbutsu&rsquo; a.k.a the go-and-see approach &mdash; which is not just a term but a way of life at Toyota. Aided by this philosophy, Toyota&rsquo;s engineers gained an in-depth understanding of real-life Indian road conditions &mdash;enabling them to improvise upon the smallest of issues, and improve the Toyota ownership experience.&nbsp;</p>\r\n\r\n<p><strong>The stars of the show&nbsp;</strong></p>\r\n\r\n<p>No quest is complete without crediting the stars and the stars of this show were quite a few. The head of the pack was, of course, a&nbsp;<a href=\"https://www.carwale.com/toyota-cars/land-cruiser/\">Toyota Land Cruiser</a>&nbsp;200 which was the symbol for this drive. Behind the LC200 was a massive convoy comprising of the&nbsp;<a href=\"https://www.carwale.com/toyota-cars/innova-crysta/\">Innova Crysta</a>, Innova Touring Sport,&nbsp;<a href=\"https://www.carwale.com/toyota-cars/fortuner/\">Fortuner</a>,&nbsp;<a href=\"https://www.carwale.com/toyota-cars/yaris/\">Yaris</a>,&nbsp;<a href=\"https://www.carwale.com/toyota-cars/corolla-altis/\">Corolla Altis</a>,&nbsp;<a href=\"https://www.carwale.com/toyota-cars/camry/\">Camry</a>&nbsp;Hybrid, the recently launched&nbsp;<a href=\"https://www.carwale.com/toyota-cars/glanza/\">Glanza</a>&nbsp;and the Suzuki&nbsp;<a href=\"https://www.carwale.com/marutisuzuki-cars/vitara-brezza/\">Vitara Brezza</a>&nbsp;&mdash; with each one representing various aspects of the Toyota thought process, in terms of the cars on offer in India.&nbsp;</p>\r\n\r\n<p><img alt=\"Toyota Yaris Exterior \" data-original=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-8.jpeg\" src=\"https://imgd.aeplcdn.com//642x361//n/cw/ec/44447/toyota-yaris-exterior-8.jpeg\" title=\"Toyota Yaris Exterior \" /></p>\r\n\r\n<p><strong>Learning for the future&nbsp;</strong></p>'),
(20, 'kh', 10, 'Based on the second-gen ix25 revealed in China', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Based on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in ChinaBased on the second-gen ix25 revealed in China</p>');

-- --------------------------------------------------------

--
-- Table structure for table `non_working_days`
--

CREATE TABLE `non_working_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auto_approval_id` bigint(20) NOT NULL,
  `non_working_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_working_days`
--

INSERT INTO `non_working_days` (`id`, `auto_approval_id`, `non_working_date`, `created_at`, `updated_at`) VALUES
(90, 1, '2020-02-22', '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(91, 1, '2020-02-16', '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(92, 1, '2020-02-26', '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(94, 1, '2020-02-11', '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(95, 1, '2020-02-06', '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(96, 1, '2020-02-25', '2020-02-25 17:36:45', NULL);

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
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'about-us', NULL, 1, 2, '2019-12-15 19:23:25', '2019-12-15 19:26:55'),
(2, 'privacy-policy', NULL, 1, 2, '2019-12-15 20:02:13', '2019-12-15 20:02:13'),
(3, 'terms-and-conditions', NULL, 1, 2, '2019-12-15 20:02:59', '2019-12-15 20:02:59'),
(4, 'help', NULL, 1, 2, '2019-12-15 20:04:27', '2019-12-15 20:04:27'),
(5, 'support', NULL, 1, 2, '2019-12-15 20:12:30', '2019-12-15 20:12:30'),
(6, 'car-deals', NULL, 1, 2, '2020-01-03 00:49:00', '2020-01-03 00:49:00'),
(7, 'dealership-offers', NULL, 1, 2, '2020-01-03 00:50:20', '2020-01-03 00:50:20'),
(8, 'car-warranty', NULL, 1, 2, '2020-01-03 00:51:38', '2020-01-03 00:51:38'),
(9, 'car-inspection', NULL, 1, 2, '2020-01-03 00:53:10', '2020-01-03 00:53:10'),
(10, 'help-buying-a-car', NULL, 1, 2, '2020-01-03 00:54:24', '2020-01-03 00:54:24'),
(11, 'find-a-dealer', NULL, 1, 2, '2020-01-03 00:56:34', '2020-01-03 00:56:34'),
(12, 'general-help', NULL, 1, 2, '2020-01-03 02:41:11', '2020-01-03 02:41:11'),
(13, 'safer-buying-tips', NULL, 1, 2, '2020-01-03 02:42:22', '2020-01-03 02:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_locations`
--

CREATE TABLE `page_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_locations`
--

INSERT INTO `page_locations` (`id`, `slug`, `name`, `created`, `modified`) VALUES
(1, 'vehicle_detail', 'Vehicle Detail', '2020-01-21 00:00:00', '2020-01-21 10:47:50'),
(2, 'vehicle_listing', 'Vehicle Listing', '2020-01-21 00:00:00', '2020-01-21 10:47:50'),
(3, 'home', 'Home', '2020-01-21 00:00:00', '2020-01-21 10:48:30'),
(4, 'app_filter', 'App Filter', '2020-01-21 00:00:00', '2020-01-21 10:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `status`, `created`, `modified`) VALUES
(1, 'Top', 1, '2020-01-21 00:00:00', '0000-00-00 00:00:00'),
(2, 'Side Left', 1, '2020-01-21 00:00:00', '0000-00-00 00:00:00'),
(3, 'Side Right', 1, '2020-01-21 00:00:00', '0000-00-00 00:00:00'),
(4, 'Mid', 1, '2020-01-21 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bottom', 1, '2020-01-21 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin', 0, 1, '2020-01-21 05:33:29', '2020-01-20 18:30:00', NULL),
(2, 'Buyer', 'buyer', 1, 1, '2020-01-21 05:33:29', '2020-01-20 18:30:00', NULL),
(3, 'Dealer', 'dealer', 1, 1, '2020-01-21 05:34:15', '2020-01-20 18:30:00', NULL),
(4, 'Seller', 'seller', 1, 1, '2020-01-21 05:34:15', '2020-01-20 18:30:00', NULL),
(5, 'Guest', 'guest', 1, 1, '2020-01-21 05:34:38', '2020-01-20 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `slug`, `manager`, `field_type`, `created_at`, `updated_at`) VALUES
(1, 'Website Name', 'SITE_NAME', 'general', 'text', '2019-02-27 06:03:36', '2019-12-24 01:25:23'),
(2, 'Admin Email', 'ADMIN_EMAIL', 'general', 'text', '2019-02-27 06:03:36', '2020-01-08 00:11:36'),
(4, 'Owner Name', 'WEBSITE_OWNER', 'general', 'text', '2019-02-27 06:03:36', '2019-11-25 00:42:55'),
(5, 'Phone', 'PHONE1', 'general', 'text', '2019-09-23 18:30:00', '2019-11-25 00:43:13'),
(6, 'Address', 'ADDRESS', 'general', 'text', '2019-09-23 18:30:00', '2019-12-18 01:27:30'),
(7, 'Postal Address', 'POSTAL_ADDRESS', 'general', 'text', '2019-12-17 07:54:26', '2019-12-17 07:54:26'),
(8, 'Opening Hours', 'OPENING_HOURS', 'general', 'text', '2020-02-16 18:30:00', NULL),
(9, 'Main Favicon', 'MAIN_FAVICON', 'theme_images', 'text', '2019-02-28 02:39:43', '2019-11-28 04:24:49'),
(10, 'MAIN LOGO', 'MAIN_LOGO', 'theme_images', 'text', '2019-02-28 02:39:43', '2020-02-03 05:11:27'),
(11, 'Copyright footer text', 'COPYRIGHT', 'general', 'text', NULL, '2019-11-26 03:02:40'),
(12, 'About us', 'HOME_ABOUT_US', 'general', 'text', '2019-09-19 18:30:00', '2020-01-13 04:59:40'),
(13, 'Dealer car', 'HOME_DEALER_CAR', 'general', 'text', '2019-08-02 03:56:23', '2019-12-18 00:56:28'),
(14, 'Seller car', 'HOME_SELLER_CAR', 'general', 'text', '2019-08-02 03:56:23', '2019-11-25 00:44:34'),
(15, 'Facebook Url', 'FACEBOOK_URL', 'general', 'text', '2019-03-26 01:00:43', '2020-01-13 05:03:34'),
(16, 'Instagram Url', 'INSTAGRAM_URL', 'general', 'text', '2019-09-23 18:30:00', '2019-10-09 00:19:43'),
(17, 'Youtube Url', 'YOUTUBE_URL', 'general', 'text', '2019-12-16 18:30:00', '2019-12-16 18:30:00'),
(18, 'Twitter Url', 'TWITTER_URL', 'general', 'text', '2019-12-16 18:30:00', '2019-12-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` bigint(20) NOT NULL,
  `locale` varchar(50) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'S.P Car Market', '2020-02-14 15:29:01', NULL),
(2, 1, 'kh', 'ផ្សាររថយន្តអេសភីភី', '2020-02-14 15:29:01', NULL),
(3, 2, 'en', 'carmarket@yopmail.com', '2020-02-14 15:29:14', NULL),
(4, 2, 'kh', 'carmarket@yopmail.com', '2020-02-14 15:29:14', NULL),
(5, 3, 'en', 'carmarket@yopmail.com', '2020-02-14 15:42:49', NULL),
(6, 3, 'kh', 'carmarket@yopmail.com', '2020-02-14 15:42:49', NULL),
(7, 4, 'en', 'Car Market Admin', '2020-02-17 15:19:28', NULL),
(8, 4, 'kh', 'រដ្ឋបាលផ្សារឡាន', '2020-02-17 15:19:28', NULL),
(9, 5, 'en', '1234567890 ', '2020-02-17 15:19:28', NULL),
(10, 5, 'kh', '1234567890 ', '2020-02-17 15:19:28', NULL),
(11, 6, 'en', '60 Grant Avenue, Carteret NJ 07089 ', '2020-02-17 15:35:33', NULL),
(12, 6, 'kh', 'ផ្លូវ ៦០ ក្រេឌីតកាថេតអិច ០៧០៨៩', '2020-02-17 15:35:33', NULL),
(13, 7, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2020-02-17 15:35:43', NULL),
(14, 7, 'kh', 'ឡូមអ៊ីមសឺមគឺជាអត្ថបទអត់ចេះសោះនៃឧស្សាហកម្មបោះពុម្ពនិងវាយលេខ។', '2020-02-17 15:35:43', NULL),
(15, 8, 'en', 'Mon-Fri: 8am-6pm', '2020-02-17 15:35:51', NULL),
(16, 8, 'kh', 'ច័ន្ទ - សុក្រៈម៉ោង ៨ ព្រឹក -៦ ល្ងាច', '2020-02-17 15:35:51', NULL),
(17, 9, 'en', '9SHgWKLnPP9Db05NhibyNgUoQxdlmU17zRqt1wgq.png', '2020-02-17 15:35:59', NULL),
(18, 9, 'kh', '9SHgWKLnPP9Db05NhibyNgUoQxdlmU17zRqt1wgq.png', '2020-02-17 15:35:59', NULL),
(19, 10, 'en', 'uNIZDKTcVw9TNspFYOoU47L9YpsvcEizFIdcfxcj.png', '2020-02-17 15:36:12', NULL),
(20, 10, 'kh', 'uNIZDKTcVw9TNspFYOoU47L9YpsvcEizFIdcfxcj.png', '2020-02-17 15:36:12', NULL),
(21, 11, 'en', 'All Rights Reserved 2020-2021', '2020-02-17 15:36:20', NULL),
(22, 11, 'kh', 'រក្សាសិទ្ធិគ្រប់យ៉ាង ២០២០-២០២១', '2020-02-17 15:36:20', NULL),
(23, 12, 'en', 'Carmarket.com.kh was founded in 2019 to help Cambodian people in unlocking their purchasing and selling potential. Carmarket.com.kh is an interactive platform that allows its users to search for, inquire, contact, and set up purchases and sales.\r\n\r\nCarmarket.com.kh envision a much more efficient future for vehicle buyer and seller in Cambodia. We believe that buyers should be able to make the maximum use of their budget to purchase for their dream car, and not having to spend valuable time and money to tirelessly search for their dream vehicle. Furthermore, we envisage a future where vehicle sellers regardless of being private or dealer are able to effectively and efficiently reach their target audience. ', '2020-02-17 15:36:29', NULL),
(24, 12, 'kh', 'Carmarket.com.kh ត្រូវបានបង្កើតឡើងក្នុងឆ្នាំ ២០១៩ ដើម្បីជួយប្រជាជនកម្ពុជាក្នុងការដោះសោសក្តានុពលនៃការទិញនិងលក់។ Carmarket.com.kh គឺជាវេទិកាអន្តរកម្មមួយដែលអនុញ្ញាតឱ្យអ្នកប្រើប្រាស់អាចស្វែងរកសួរទាក់ទងនិងរៀបចំការទិញនិងលក់។\r\n\r\nCarmarket.com.kh គិតអំពីអនាគតប្រកបដោយប្រសិទ្ធភាពសម្រាប់អ្នកទិញនិងអ្នកលក់យានយន្តនៅកម្ពុជា។ យើងជឿជាក់ថាអ្នកទិញគួរតែមានលទ្ធភាពប្រើប្រាស់ថវិការអតិបរិមាដើម្បីទិញរថយន្តសុបិន្តរបស់ពួកគេហើយមិនចាំបាច់ចំណាយពេលវេលានិងថវិការដើម្បីស្វែងរកយានជំនិះក្នុងក្តីសុបិនរបស់ពួកគេដោយមិននឿយហត់ឡើយ។ លើសពីនេះទៀតយើងផ្តោតលើអនាគតដែលអ្នកលក់យានយន្តមិនថាឯកជនឬអ្នកចែកបៀអាចឈានដល់គោលដៅគោលដៅរបស់ពួកគេប្រកបដោយប្រសិទ្ធភាព។', '2020-02-17 15:36:29', NULL),
(25, 13, 'en', 'test Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. ', '2020-02-17 15:36:38', NULL),
(26, 13, 'kh', 'ការធ្វើតេស្តនេះបានគ្រប់គ្រងល្អ, consectetur ត្រួតពិនិត្យបញ្ជី, ខាងសាច់ឈាម sed និងទិន្នន័យសំខាន់, ដូច្នេះអ្នកដែលនឿយហត់និងទុក្ខព្រួយ, អ្វីដែលសំខាន់មួយចំនួនដើម្បីធ្វើការ eiusmod ។ តើនរណាជាអ្នកផ្ដល់អនុសាសន៍បាល់បោះមានផ្ទៃពោះនោះ។ ញញឹមសូមទាញរថក្រោះស្រទាប់ Maecenas ឬសារធាតុប្រឆាំងអុកស៊ីតកម្ម។\r\n\r\nគ្រប់គ្រងល្អ, consectetur ត្រួតពិនិត្យបញ្ជី, ខាងសាច់ឈាម sed និងទិន្នន័យសំខាន់, ដូច្នេះអ្នកដែលនឿយហត់និងទុក្ខព្រួយ, អ្វីដែលសំខាន់មួយចំនួនដើម្បីធ្វើការ eiusmod ។ តើនរណាជាអ្នកផ្ដល់អនុសាសន៍បាល់បោះមានផ្ទៃពោះនោះ។', '2020-02-17 15:36:38', NULL),
(27, 14, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. ', '2020-02-17 15:36:49', NULL),
(28, 14, 'kh', 'គ្រប់គ្រងល្អ, consectetur ត្រួតពិនិត្យបញ្ជី, ខាងសាច់ឈាម sed និងទិន្នន័យសំខាន់, ដូច្នេះអ្នកដែលនឿយហត់និងទុក្ខព្រួយ, អ្វីដែលសំខាន់មួយចំនួនដើម្បីធ្វើការ eiusmod ។ តើនរណាជាអ្នកផ្ដល់អនុសាសន៍បាល់បោះមានផ្ទៃពោះនោះ។ ញញឹមសូមទាញរថក្រោះស្រទាប់ Maecenas ឬសារធាតុប្រឆាំងអុកស៊ីតកម្ម។\r\n\r\nគ្រប់គ្រងល្អ, consectetur ត្រួតពិនិត្យបញ្ជី, ខាងសាច់ឈាម sed និងទិន្នន័យសំខាន់, ដូច្នេះអ្នកដែលនឿយហត់និងទុក្ខព្រួយ, អ្វីដែលសំខាន់មួយចំនួនដើម្បីធ្វើការ eiusmod ។ តើនរណាជាអ្នកផ្ដល់អនុសាសន៍បាល់បោះមានផ្ទៃពោះនោះ។', '2020-02-17 15:36:49', NULL),
(29, 15, 'en', 'https://www.facebook.com', '2020-02-17 15:37:03', NULL),
(30, 15, 'kh', 'https://www.facebook.com', '2020-02-17 15:37:03', NULL),
(31, 16, 'en', 'https://www.instagram.com', '2020-02-17 15:37:10', NULL),
(32, 16, 'kh', 'https://www.instagram.com', '2020-02-17 15:37:10', NULL),
(33, 17, 'en', 'https://www.youtube.com', '2020-02-17 15:37:21', NULL),
(34, 17, 'kh', 'https://www.youtube.com', '2020-02-17 15:37:21', NULL),
(35, 18, 'en', 'https://www.twitter.com', '2020-02-17 15:37:29', NULL),
(36, 18, 'kh', 'https://www.twitter.com', '2020-02-17 15:37:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `plan_title` varchar(191) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `plan_type` enum('Free','Paid') NOT NULL DEFAULT 'Paid',
  `duration` int(11) DEFAULT '0',
  `duration_type` enum('Days','Weeks','Months','Years','Unlimited') DEFAULT 'Days',
  `price` decimal(16,2) DEFAULT NULL,
  `minimum_price` double(16,2) DEFAULT NULL,
  `total_on_sale_count` smallint(6) NOT NULL DEFAULT '0',
  `total_featured_count` smallint(6) NOT NULL DEFAULT '0',
  `total_listing_count` smallint(6) NOT NULL DEFAULT '0',
  `count_of_until_sold` smallint(6) NOT NULL DEFAULT '0',
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort_order` smallint(6) NOT NULL DEFAULT '1',
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `stripe_id`, `plan_title`, `user_type`, `plan_type`, `duration`, `duration_type`, `price`, `minimum_price`, `total_on_sale_count`, `total_featured_count`, `total_listing_count`, `count_of_until_sold`, `image`, `status`, `sort_order`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plan_Gas0OjlRYlo6E2', 'Dealer Ultimate', 'Dealer', 'Paid', 1, 'Months', '50.00', 0.00, 3, 15, 20, 10, NULL, 1, 1, 'dealer-ultimate', '2020-01-21 06:02:29', '2020-01-21 08:40:46', NULL),
(2, 'plan_GarPUrySlVmTAz', 'Dealer Premium', 'Dealer', 'Paid', 1, 'Months', '22.00', 0.00, 0, 3, 10, 0, NULL, 1, 2, 'dealer-premium', '2020-01-21 06:03:28', '2020-01-21 08:40:05', NULL),
(3, 'plan_GardyxgyjS7Gex', 'Seller Premium', 'Seller', 'Paid', 1, 'Months', '10.00', 0.00, 0, 1, 1, 1, NULL, 1, 6, 'seller-premium', '2020-01-21 08:37:24', '2020-01-21 08:37:24', NULL),
(4, 'plan_Gare0MH2uKkKMe', 'Seller Standard', 'Seller', 'Paid', 1, 'Months', '5.00', 0.00, 0, 1, 1, 0, NULL, 1, 5, 'seller-standard', '2020-01-21 08:36:43', '2020-01-21 08:36:43', NULL),
(5, 'plan_GarffgZmu147kk', 'Seller Lite', 'Seller', 'Paid', 1, 'Months', '2.50', 0.00, 0, 0, 1, 0, NULL, 1, 4, 'seller-lite', '2020-01-21 08:31:38', '2020-01-21 08:31:38', NULL),
(6, NULL, 'Seller Free', 'Seller', 'Free', 7, 'Days', '0.00', 3000.00, 0, 0, 1, 0, NULL, 1, 3, 'seller-free', '2020-01-21 08:30:36', '2020-01-21 08:30:36', NULL),
(7, 'plan_GarY8bwIvJfwQJ', 'Dealer Standard', 'Dealer', 'Paid', 1, 'Months', '5.00', 0.00, 0, 0, 5, 0, NULL, 1, 8, 'dealer-standard', '2020-01-21 08:39:13', '2020-01-21 08:39:13', NULL),
(8, 'plan_Garc6qSsGeV3yW', 'Dealer Lite', 'Dealer', 'Paid', 1, 'Months', '2.50', 0.00, 0, 0, 1, 0, NULL, 1, 7, 'dealer-lite', '2020-01-21 08:38:26', '2020-01-21 08:38:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plan_translations`
--

CREATE TABLE `subscription_plan_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_plan_translations`
--

INSERT INTO `subscription_plan_translations` (`id`, `locale`, `subscription_plan_id`, `type`, `title`, `description`) VALUES
(1, 'en', 1, 'Dealer', 'Ultimate', NULL),
(2, 'kh', 1, 'Dealer', 'Ultimate', NULL),
(3, 'en', 2, 'Dealer', 'Premium', NULL),
(4, 'kh', 2, 'Dealer', 'Premium', NULL),
(5, 'en', 6, 'Seller', 'Free', NULL),
(6, 'kh', 6, 'Seller', 'Free', NULL),
(7, 'en', 5, 'Seller', 'Lite', NULL),
(8, 'kh', 5, 'Seller', 'Lite', NULL),
(9, 'en', 4, 'Seller', 'Standard', NULL),
(10, 'kh', 4, 'Seller', 'Standard', NULL),
(11, 'en', 3, 'Seller', 'Premium', NULL),
(12, 'kh', 3, 'Seller', 'Premium', NULL),
(13, 'en', 8, 'Dealer', 'Lite', NULL),
(14, 'kh', 8, 'Dealer', 'Lite', NULL),
(15, 'en', 7, 'Dealer', 'Standard', NULL),
(16, 'kh', 7, 'Dealer', 'Standard', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '1',
  `is_otp_verified` tinyint(4) NOT NULL DEFAULT '0',
  `last_seen_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `google_id`, `name`, `email`, `password`, `phone`, `company_name`, `address`, `city`, `state`, `country`, `country_code`, `postcode`, `latitude`, `longitude`, `profile_image`, `remember_token`, `api_token`, `status`, `admin`, `is_otp_verified`, `last_seen_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, 'Ratanakpisith CarMarket Admin', 'ratanakpisith.dotsquares@yopmail.com', '$2y$10$s6z6Rc8Cv1A7sFxungxM8eWupvRrigSf2/pbC5aWVopEBpLAg0NpO', 1245678894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F1qAHeiR5mlMXHXoP0tWgOB854OCbCMRteR7NDoWZX1KU5otatNj7N3RMj8k', NULL, 1, 1, 1, NULL, '2020-01-20 18:30:00', '2020-01-20 18:30:00', NULL),
(2, NULL, NULL, 'Guest', 'carmarketguest@yopmail.com', '43645vd34655475467', 234324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, '2020-01-20 18:30:00', '2020-01-20 18:30:00', NULL),
(3, NULL, NULL, 'Gyan Mishra', NULL, '$2y$10$zdnsM3au357FIhHKH5YkXejAFn7X9byBuCJetB94QN.qj.Gt/T1.a', 9694728151, 'Dotsquares Limited', 'Jail Rd, Nashik, Maharashtra, India', 'Nashik', 'MH undefined', NULL, NULL, NULL, '19.9753217', '73.84120089999999', 'avatars/1vcAMLyKaHn893OmO0uhpT5K14y5AoKS8EZNdXWg.jpeg', NULL, NULL, 1, 0, 1, '2020-03-06 13:07:00', '2020-01-20 18:30:00', '2020-03-06 07:37:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_id` bigint(20) UNSIGNED NOT NULL,
  `provider_subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` enum('none','stripe','unionpay','paybay','wing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle`
--

CREATE TABLE `user_vehicle` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `is_favourite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_vehicle`
--

INSERT INTO `user_vehicle` (`user_id`, `vehicle_id`, `is_favourite`) VALUES
(3, 1, 1),
(3, 6, 1),
(3, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_verifications`
--

CREATE TABLE `user_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT '0',
  `makes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `models_id` bigint(20) UNSIGNED DEFAULT NULL,
  `badge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `series_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body_styles_id` bigint(20) UNSIGNED DEFAULT NULL,
  `drive_types_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fuel_types_id` bigint(20) UNSIGNED DEFAULT NULL,
  `engine_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transmissions_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interior_colour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exterior_colour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lifestyle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cylinders_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fuel_economy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `price` double(9,2) DEFAULT NULL,
  `discount_price` double(9,2) DEFAULT NULL,
  `month_build` varchar(10) DEFAULT NULL,
  `year_build` varchar(200) DEFAULT NULL,
  `expiry_month` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expiry_year` year(4) DEFAULT NULL,
  `plate_number` varchar(191) DEFAULT NULL,
  `chassis_number` varchar(191) DEFAULT NULL,
  `engine_capacity` int(11) DEFAULT NULL,
  `odometer` bigint(20) UNSIGNED DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `turbo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `gears` int(11) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_bin,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `written_off` tinyint(1) DEFAULT NULL,
  `steps` tinyint(1) DEFAULT '1',
  `initial_masking_digits` int(11) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `is_registered` tinyint(1) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `is_reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_until_sold` tinyint(1) NOT NULL DEFAULT '0',
  `is_sold` tinyint(1) NOT NULL DEFAULT '0',
  `is_masked_price` tinyint(1) DEFAULT NULL,
  `is_inspected` tinyint(1) NOT NULL DEFAULT '0',
  `is_car_of_the_week` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `category_id`, `makes_id`, `models_id`, `badge_id`, `series_id`, `body_styles_id`, `drive_types_id`, `fuel_types_id`, `engine_type_id`, `transmissions_id`, `interior_colour_id`, `exterior_colour_id`, `lifestyle_id`, `cylinders_id`, `fuel_economy_id`, `title`, `price`, `discount_price`, `month_build`, `year_build`, `expiry_month`, `expiry_year`, `plate_number`, `chassis_number`, `engine_capacity`, `odometer`, `doors`, `seats`, `turbo`, `gears`, `role`, `phone`, `city`, `state`, `country`, `postcode`, `latitude`, `longitude`, `address`, `slug`, `written_off`, `steps`, `initial_masking_digits`, `status`, `is_registered`, `is_approved`, `is_reviewed`, `is_featured`, `is_on_sale`, `is_until_sold`, `is_sold`, `is_masked_price`, `is_inspected`, `is_car_of_the_week`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 1, 1, 4, 10, 1, 7, 1, NULL, 5, 1, 1, 8, 10, 5, '2020 Hyundai Accent Nios QS', 547567.00, 567657.00, '01', '2020', '04', 2021, '567567', NULL, 465456, 1234530, 5, 5, '1', 5, 'Seller', 4565676, 'Jaipur', 'RJ undefined', 'India', '302019', '26.8940737', '75.77081679999999', 'B-52, New Sanganer Road, Ganesh Nagar Rd, Ganesh Nagar, Sodala, Jaipur, Rajasthan 302019, India', '2020-hyundai-accent-nios-qs', 1, 5, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-01-21 23:21:25', '2020-02-05 09:59:07', NULL),
(2, 3, 1, 3, 58, NULL, NULL, 1, 7, 1, NULL, 5, 3, 1, 2, 10, 4, '2017 BMW 3 Series', 567657.00, 65756.00, '04', '2017', '02', 2021, '56756', '3454365', 4456, 1234530, 3, 5, '0', 5, 'Dealer', 56756767657, 'Jaipur', 'Rajasthan', 'India', NULL, '26.9124336', '75.7872709', 'Jaipur, Rajasthan, India', '2017-bmw-3-series', 1, 3, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, '2020-03-04 05:32:35', '2020-03-04 00:02:35', NULL),
(3, 3, 1, 4, 3, NULL, NULL, 2, 7, 2, NULL, 6, NULL, NULL, NULL, 4, NULL, '2016 Chevrolet 1500', NULL, NULL, '05', '2016', NULL, NULL, NULL, '6786788', 76678, NULL, 2, 3, '1', 4, 'Dealer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-chevrolet-1500', 0, 1, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-01-23 04:34:33', '2020-01-30 05:22:34', NULL),
(4, 3, 1, 1, 1, NULL, NULL, 2, 7, 2, NULL, 5, 5, 6, 7, 5, 4, '2016 Hyundai Accent', 435435.00, 456.00, '05', '2016', '02', 2020, '546456', '567567', 456546, 1234530, 4, 5, '0', 4, 'Dealer', 456456, 'Kukas', 'RJ undefined', 'India', '302028', '27.0309059', '75.8930922', 'Jaipur Engineering College Rd, Kukas, Rajasthan 302028, India', '2016-hyundai-accent', 1, 5, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-01-23 06:47:50', '2020-01-30 05:22:38', NULL),
(5, 3, 1, 1, 229, NULL, NULL, 2, 7, 2, NULL, 5, 6, 6, 7, 3, 5, '2016 Hyundai Entourage', 546456.00, 5665.00, '05', '2016', '01', 2021, '5467567', '678678', 6678, 1234530, 2, 4, '0', 3, 'Dealer', 567567, 'Deeg', 'UP undefined', 'India', NULL, '26.9097795', '79.2322001', 'Agra - Lucknow Expy, Khargua, Deeg, Uttar Pradesh, India', '2016-hyundai-entourage', 1, 5, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-01-23 07:36:07', '2020-01-30 05:22:43', NULL),
(6, 3, 1, 1, 1, NULL, NULL, 2, 7, 2, NULL, 5, 3, 3, 8, 2, 5, '2019 Hyundai Accent', 56567.00, 567567.00, '02', '2019', '05', 2021, '567567', '54654656', 45456, 1234530, 2, 2, '1', 2, 'Dealer', 567657, 'New Delhi', 'DL undefined', 'India', NULL, '28.5812734', '77.2720119', 'Delhi Noida Direct Flyway, Block B, Ganga Vihar, Sarai Kale Khan, New Delhi, Delhi, India', '2019-hyundai-accent', 1, 4, NULL, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, NULL, '2020-01-23 07:38:30', '2020-01-30 05:22:48', NULL),
(7, 3, 1, 1, 16, NULL, NULL, 4, 10, 2, NULL, 5, 6, 6, 2, 8, 4, '2018 Hyundai Atoz', 456567.00, 567567.00, '02', '2018', '03', 2020, '567567', '456456', 456456, 567567, 2, 5, '0', 4, 'Dealer', 567567, 'Kukas', 'RJ undefined', 'India', '302028', '27.0309059', '75.8930922', 'Jaipur Engineering College Rd, Kukas, Rajasthan 302028, India', '2018-hyundai-atoz', 1, 5, 3, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, NULL, '2020-02-12 04:47:26', '2020-02-11 23:17:26', NULL),
(8, 3, 1, 1, 1, NULL, NULL, 4, 9, 3, NULL, 7, 6, 6, 8, 5, 5, '2016 Hyundai Accent', 567567.00, NULL, '05', '2016', '05', 2021, '67657', '567567678', 56756, 7567, 5, 5, '0', 5, 'Dealer', 657657, 'Nashik', 'MH undefined', 'India', NULL, '19.9753217', '73.84120089999999', 'Jail Rd, Nashik, Maharashtra, India', '2016-hyundai-accent-1', 1, 5, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, NULL, '2020-03-03 06:57:20', '2020-03-03 01:27:20', NULL),
(9, 2, 1, 14, 19, 21, NULL, 5, 11, 1, NULL, 5, NULL, NULL, NULL, 4, NULL, '2017 Alfa Romeo 1300 Not Applicable', NULL, NULL, '05', '2017', NULL, NULL, NULL, '567766', 567657, NULL, 4, 4, '1', 4, 'Dealer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-alfa-romeo-1300-not-applicable', 0, 2, NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, NULL, '2020-02-15 08:13:25', '2020-02-11 23:11:14', NULL),
(10, 3, 1, 5, 6, 7, 6, 5, 10, 3, NULL, 8, 3, 3, 3, 4, 4, '2019 Abarth 124 Spider Launch Edition 348_Model', 5675656.00, NULL, '02', '2019', '03', 2020, '56756776', '56765767', 34367, 456546, 3, 4, '1', 3, 'Dealer', 7567657887, 'Jiaganj', 'WB undefined', 'India', NULL, '24.245552', '88.27525380000002', 'Jiaganj Station Rd, Baligram, Jiaganj, West Bengal, India', '2019-abarth-124-spider-launch-edition-348-model', 1, 5, 3, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, NULL, '2020-02-26 11:25:20', '2020-02-26 05:55:20', NULL),
(11, 3, 1, 5, 6, 6, 4, 5, 6, 1, NULL, 5, 7, 10, 3, 2, 3, '2017 Abarth 124 Spider 348', 123345.00, NULL, '04', '2017', NULL, NULL, NULL, '67567', 567567, 34, 2, 3, '0', 4, 'Dealer', 644234, 'Bengaluru', 'KA undefined', 'India', '560103', '12.9262006', '77.6761145', 'Bellandur Junction, Bellandur Main Rd, Bellandur, Bengaluru, Karnataka 560103, India', '2017-abarth-124-spider-348', 1, 5, 2, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, '2020-03-03 06:23:00', '2020-02-21 02:00:15', NULL),
(12, 3, 1, 5, 6, 6, 4, 5, 11, 1, NULL, 5, NULL, NULL, NULL, 5, NULL, '2017 Abarth 124 Spider 348', NULL, NULL, '05', '2017', NULL, NULL, NULL, '4343434434', 343, NULL, 5, 5, '0', 5, 'Dealer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-abarth-124-spider-348-1', NULL, 2, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, '2020-03-05 06:07:41', '2020-03-05 00:37:41', NULL),
(13, 3, 1, 15, 20, NULL, NULL, 2, 9, 3, NULL, 5, 1, 3, 8, 5, 3, '2016 Aston Martin DB9 Volante', 56767.00, 6576.00, '04', '2016', '04', 2023, '567567', '76877', 5677, 1234530, 4, 4, '0', 5, 'Dealer', 56767657657, 'Jiaganj', 'West Bengal', 'India', NULL, '24.2441053', '88.26801720000002', 'Jiaganj, West Bengal, India', '2016-aston-martin-db9-volante', 1, 4, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, '2020-03-06 06:00:52', '2020-03-06 00:30:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_badges`
--

CREATE TABLE `vehicle_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `makes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `models_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 2, 2, '300', NULL, 1, '2019-12-06 02:26:06', '2019-12-16 04:14:42', NULL),
(2, 4, 3, 'ertica', NULL, 1, '2019-12-11 03:39:27', '2019-12-11 03:39:27', NULL),
(3, 4, 3, 'ertica12345', NULL, 1, '2019-12-11 03:39:39', '2019-12-11 03:39:39', NULL),
(4, 1, 1, 'sssss', NULL, 1, '2019-12-11 21:38:56', '2019-12-17 04:00:37', NULL),
(5, 4, 4, 'rrrrrrr', NULL, 1, '2019-12-11 21:40:18', '2019-12-11 21:40:18', NULL),
(6, 5, 6, 'spider', NULL, 1, '2019-12-11 22:03:10', '2019-12-11 22:03:10', NULL),
(7, 5, 6, 'spider-launch-edition', NULL, 1, '2019-12-11 22:03:32', '2019-12-11 22:03:32', NULL),
(8, 5, 6, 'spider-monza-edition', NULL, 1, '2019-12-11 22:04:03', '2019-12-11 22:04:03', NULL),
(9, 5, 7, 'esseesse', NULL, 1, '2019-12-11 22:04:23', '2019-12-11 22:04:23', NULL),
(10, 5, 7, 'esseesse-c', NULL, 1, '2019-12-11 22:04:39', '2019-12-11 22:04:39', NULL),
(11, 8, 9, 'elite', '1576668223-1884990351.jpg', 1, '2019-12-18 00:23:43', '2019-12-18 00:23:43', NULL),
(12, 9, 10, '2018', '1576733241-1828820614.jpg', 1, '2019-12-18 18:27:21', '2019-12-18 18:27:21', NULL),
(13, 9, 10, '2017', '1576733706-741650349.jpg', 1, '2019-12-18 18:35:06', '2019-12-18 18:35:06', NULL),
(14, 10, 11, '2016', '1576734033-1886000941.jpg', 1, '2019-12-18 18:40:33', '2019-12-18 18:40:33', NULL),
(15, 11, 12, 'test-badge', '1576821267-117850106.jpg', 1, '2019-12-19 18:54:27', '2019-12-19 18:54:27', NULL),
(16, 12, 13, 'limited-edition-2020', '1578375049-1377316010.jpg', 1, '2020-01-06 18:30:49', '2020-01-06 18:30:49', NULL),
(17, 13, 14, 'limited-edition-2019', '1578375074-1477651887.png', 1, '2020-01-06 18:31:14', '2020-01-06 18:31:14', NULL),
(18, 7, 17, 'hte', NULL, 1, '2020-01-07 03:26:43', '2020-01-07 03:26:43', NULL),
(19, 10, 11, 'bgfbgvfdgt', NULL, 0, '2020-01-07 23:42:51', '2020-01-07 23:42:51', NULL),
(20, 2, 5, '300-1', NULL, 1, '2020-01-08 22:15:37', '2020-01-08 22:15:37', NULL),
(21, 14, 19, 'not-applicable', NULL, 1, '2020-01-13 12:39:58', '2020-01-13 12:39:58', NULL),
(22, 14, 19, 'not-available', NULL, 1, '2020-01-13 12:41:20', '2020-01-13 12:41:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_badge_translations`
--

CREATE TABLE `vehicle_badge_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_badge_id` bigint(20) UNSIGNED NOT NULL
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
(30, 'Test_badge', 'kh', 15),
(31, 'Limited Edition 2020', 'en', 16),
(32, 'Limited Edition 2020', 'kh', 16),
(33, 'Limited Edition 2019', 'en', 17),
(34, 'Limited Edition 2019', 'kh', 17),
(35, 'HTE', 'en', 18),
(36, 'HTE', 'kh', 18),
(37, 'bgfbgvfdgt', 'en', 19),
(38, 'vfdsvds@gtrtg', 'kh', 19),
(39, '300', 'en', 20),
(40, '300', 'kh', 20),
(41, 'Not Applicable', 'en', 21),
(42, 'Not Applicable', 'kh', 21),
(43, 'Not Available', 'en', 22),
(44, 'Not Available', 'kh', 22);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_body_styles`
--

CREATE TABLE `vehicle_body_styles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_body_styles`
--

INSERT INTO `vehicle_body_styles` (`id`, `slug`, `status`, `icon`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'suv', 1, '1576508678-1869686636.jpg', 3, '2019-11-22 02:35:13', '2019-12-16 04:04:38', NULL),
(2, 'hatchback', 1, '1576508662-1313110930.jpg', 4, '2019-11-25 23:55:15', '2019-12-16 04:04:22', NULL),
(3, 'sedan', 1, '1576508627-1639196227.jpg', 5, '2019-12-13 03:29:10', '2019-12-16 04:03:47', NULL),
(4, 'wagon', 1, '1576508717-875423917.jpg', 6, '2019-12-16 04:05:17', '2019-12-16 04:05:17', NULL),
(5, 'convertible', 1, '1576508776-1954502629.jpg', 7, '2019-12-16 04:06:16', '2019-12-16 04:06:16', NULL),
(6, 'muv', 1, '1576651383-23701244.jpg', 1, '2019-12-17 19:43:03', '2019-12-17 19:43:03', NULL),
(7, 'fhfgh-gfh', 0, NULL, NULL, '2019-12-17 22:43:49', '2019-12-20 19:13:23', NULL),
(8, 'test-add-vehicle', 0, '1576825711-381718388.jpg', NULL, '2019-12-19 20:08:32', '2019-12-19 20:08:32', NULL),
(9, 'crossovers', 1, '1578375383-1781710521.png', 2, '2020-01-06 18:36:23', '2020-01-06 18:36:23', NULL),
(10, 'wagon-1', 1, '1578375411-2051436904.png', NULL, '2020-01-06 18:36:51', '2020-01-06 18:36:51', NULL),
(11, 'van-minivan', 1, '1578375451-2127462280.png', NULL, '2020-01-06 18:37:31', '2020-01-06 18:37:31', NULL),
(12, 'vgfdvcdsfcv-dfvds-sfdvgsd-v-dsvf-vdfsv-fdgvdf-dfvfdsv-dvdfvdf', 0, NULL, NULL, '2020-01-08 22:38:28', '2020-01-08 22:38:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_body_style_translations`
--

CREATE TABLE `vehicle_body_style_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(222) NOT NULL,
  `vehicle_body_style_id` bigint(20) UNSIGNED NOT NULL
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
(16, 'Test_add_vehicle', 'kh', 8),
(17, 'Crossovers', 'en', 9),
(18, 'Crossovers', 'kh', 9),
(19, 'wagon', 'en', 10),
(20, 'wagon', 'kh', 10),
(21, 'Van Minivan', 'en', 11),
(22, 'Van Minivan', 'kh', 11),
(23, 'vgfdvcdsfcv dfvds sfdvgsd v dsvf vdfsv fdgvdf dfvfdsv dvdfvdf', 'en', 12),
(24, 'ពេលដែលម៉ាស៊ីនបោះពុម្ពដែលមិនស្គាល់មួយបានយកកាលីបប្រភេទហើយច្របាច់វាដើម្បីបង្កើតសៀវភៅគំរូមួយ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សរ៍ប៉ុណ្ណោះទេប៉ុន្តែថែមទាំងលោតចូលក្នុងការវាយបញ្ចូល', 'kh', 12);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_colors`
--

CREATE TABLE `vehicle_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_colors`
--

INSERT INTO `vehicle_colors` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-12-02 18:12:21', '2019-12-02 18:12:21', NULL),
(2, 1, '2019-12-13 03:30:07', '2019-12-13 03:30:07', NULL),
(3, 1, '2019-12-18 00:24:20', '2019-12-18 00:24:20', NULL),
(4, 0, '2019-12-19 20:09:16', '2019-12-19 20:09:16', NULL),
(5, 1, '2020-01-06 18:38:01', '2020-01-06 18:38:01', NULL),
(6, 1, '2020-01-06 18:38:12', '2020-01-06 18:38:12', NULL),
(7, 1, '2020-01-06 18:38:31', '2020-01-06 18:38:31', NULL),
(8, 0, '2020-01-06 18:38:42', '2020-01-06 18:38:42', NULL),
(9, 0, '2020-01-06 18:38:51', '2020-01-06 18:38:51', NULL),
(10, 1, '2020-01-06 18:39:03', '2020-01-06 18:39:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_colors_translations`
--

CREATE TABLE `vehicle_colors_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_colors_id` bigint(20) UNSIGNED NOT NULL
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
(8, 'Test_colors', 'kh', 4),
(9, 'White', 'en', 5),
(10, 'White', 'kh', 5),
(11, 'Yellow', 'en', 6),
(12, 'Yellow', 'kh', 6),
(13, 'Blue & White', 'en', 7),
(14, 'Blue & White', 'kh', 7),
(15, 'Black', 'en', 8),
(16, 'Black', 'kh', 8),
(17, 'Orange', 'en', 9),
(18, 'Orange', 'kh', 9),
(19, 'Hot pink', 'en', 10),
(20, 'Hot pink', 'kh', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_drive_types`
--

CREATE TABLE `vehicle_drive_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 0, '1574429052-865791095.png', '2019-11-22 02:24:12', '2019-11-22 02:24:12', NULL),
(2, 0, NULL, '2019-11-25 23:54:51', '2019-11-25 23:54:51', NULL),
(3, 0, NULL, '2019-12-13 03:19:23', '2019-12-13 03:19:23', NULL),
(4, 0, NULL, '2019-12-18 00:24:01', '2019-12-18 00:24:01', NULL),
(5, 0, NULL, '2019-12-19 18:55:10', '2019-12-19 18:55:10', NULL),
(6, 1, NULL, '2020-01-06 18:31:47', '2020-01-06 18:31:47', NULL),
(7, 1, NULL, '2020-01-06 18:31:58', '2020-01-06 18:31:58', NULL),
(8, 1, NULL, '2020-01-06 18:32:16', '2020-01-06 18:32:16', NULL),
(9, 1, NULL, '2020-01-12 23:12:37', '2020-01-12 23:12:37', NULL),
(10, 1, NULL, '2020-01-12 23:13:06', '2020-01-12 23:13:06', NULL),
(11, 1, NULL, '2020-01-12 23:13:41', '2020-01-12 23:13:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_drive_types_translations`
--

CREATE TABLE `vehicle_drive_types_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vehicle_drive_types_id` bigint(20) UNSIGNED NOT NULL
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
(10, 'kh', 'Test_Left', 5),
(11, 'en', 'Left Hand', 6),
(12, 'kh', 'Left Hand', 6),
(13, 'en', 'Right Hand', 7),
(14, 'kh', 'Right Hand', 7),
(15, 'en', 'Remote Control', 8),
(16, 'kh', 'Remote Control', 8),
(17, 'en', 'Rear Wheel Drive', 9),
(18, 'kh', 'រត់កង់ក្រោយ', 9),
(19, 'en', 'Front Wheel Drive', 10),
(20, 'kh', 'រត់កត់មុខ', 10),
(21, 'en', 'Four Wheel Drive', 11),
(22, 'kh', 'រត់កង់បួន', 11);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_features`
--

CREATE TABLE `vehicle_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(9, 0, NULL, '2019-12-18 12:22:07', '2019-12-18 12:22:07', NULL),
(10, 0, NULL, '2019-12-20 07:11:37', '2019-12-20 07:11:37', NULL),
(11, 1, NULL, '2020-01-07 05:47:10', '2020-01-07 05:47:10', NULL),
(12, 1, NULL, '2020-01-07 05:47:19', '2020-01-07 05:47:19', NULL),
(13, 1, NULL, '2020-01-07 05:47:29', '2020-01-07 05:47:29', NULL),
(14, 1, NULL, '2020-01-07 05:47:40', '2020-01-07 05:47:40', NULL),
(15, 1, NULL, '2020-01-07 05:47:49', '2020-01-07 05:47:49', NULL),
(16, 1, NULL, '2020-01-07 05:47:59', '2020-01-07 05:47:59', NULL),
(17, 1, NULL, '2020-01-07 05:48:07', '2020-01-07 05:48:07', NULL),
(18, 1, NULL, '2020-01-07 05:48:15', '2020-01-07 05:48:15', NULL),
(19, 1, NULL, '2020-01-07 05:48:22', '2020-01-07 05:48:22', NULL),
(20, 1, NULL, '2020-01-07 05:48:29', '2020-01-07 05:48:29', NULL),
(21, 1, NULL, '2020-01-07 05:48:39', '2020-01-07 05:48:39', NULL),
(22, 1, NULL, '2020-01-07 05:48:49', '2020-01-07 05:48:49', NULL),
(23, 1, NULL, '2020-01-07 05:48:57', '2020-01-07 05:48:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_feature_translations`
--

CREATE TABLE `vehicle_feature_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_feature_id` bigint(20) UNSIGNED NOT NULL,
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
(20, 10, 'Test_Feature', 'kh'),
(21, 11, 'Advanced Compatibility Engineering (ACE™ ) Body Structure', 'en'),
(22, 11, 'Advanced Compatibility Engineering (ACE™ ) Body Structure', 'kh'),
(23, 12, 'Driver & Front Assistant Seatbelt, Door Ajar & Trunk Open Reminders & Indicators', 'en'),
(24, 12, 'Driver & Front Assistant Seatbelt, Door Ajar & Trunk Open Reminders & Indicators', 'kh'),
(25, 13, 'uel Reminder Control System (Diesel Only)', 'en'),
(26, 13, 'uel Reminder Control System (Diesel Only)', 'kh'),
(27, 14, 'Premium Beige Interior Trim for Seats, Armrests & Door Lining Inserts', 'en'),
(28, 14, 'Premium Beige Interior Trim for Seats, Armrests & Door Lining Inserts', 'kh'),
(29, 15, 'Satin Ornament Finish for Tweeters', 'en'),
(30, 15, 'Satin Ornament Finish for Tweeters', 'kh'),
(31, 16, 'Automatic Climate Control with Touch Control Panel', 'en'),
(32, 16, 'Automatic Climate Control with Touch Control Panel', 'kh'),
(33, 17, 'Rear Air Conditioning Vents with Chrome Plated Knobs', 'en'),
(34, 17, 'Rear Air Conditioning Vents with Chrome Plated Knobs', 'kh'),
(35, 18, 'Multi-View Rear Camera with Guidelines (Normal, Wide, Top-Down Modes)', 'en'),
(36, 18, 'Multi-View Rear Camera with Guidelines (Normal, Wide, Top-Down Modes)', 'kh'),
(37, 19, 'Cruise Control', 'en'),
(38, 19, 'Cruise Control', 'kh'),
(39, 20, 'Automatic Dimming Rearview Inside Mirror with Frameless Design', 'en'),
(40, 20, 'Automatic Dimming Rearview Inside Mirror with Frameless Design', 'kh'),
(41, 21, 'Advanced 3-Ring 3D Combimeter with White LED Illumination & Chrome Rings', 'en'),
(42, 21, 'Advanced 3-Ring 3D Combimeter with White LED Illumination & Chrome Rings', 'kh'),
(43, 22, 'Eco Assist™ Ambient Rings on Combimeter v Eco Assist™ Ambient Rings on Combimeter', 'en'),
(44, 22, 'Eco Assist™ Ambient Rings on CombimeterEco Assist™ Ambient Rings on CombimeterEco Assist™ Ambient Rings on Combimeter', 'kh'),
(45, 23, 'Headlight On Reminder and Key Reminder', 'en'),
(46, 23, 'Headlight On Reminder and Key Reminder', 'kh');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fuel_types`
--

CREATE TABLE `vehicle_fuel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 1, 'diesel', '1574429329-1237987877.png', '2019-11-22 02:25:04', '2019-12-13 03:23:09', NULL),
(2, 1, 'petrol', NULL, '2019-11-25 23:54:59', '2019-12-13 03:22:55', NULL),
(3, 1, 'electric', NULL, '2019-12-13 03:25:01', '2019-12-13 03:25:01', NULL),
(4, 0, 'test-fuel', NULL, '2019-12-19 18:55:40', '2019-12-19 18:55:40', NULL),
(5, 1, 'lpg', NULL, '2020-01-06 18:33:24', '2020-01-06 18:33:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_fuel_types_translations`
--

CREATE TABLE `vehicle_fuel_types_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_fuel_types_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_fuel_types_translations`
--

INSERT INTO `vehicle_fuel_types_translations` (`id`, `name`, `locale`, `vehicle_fuel_types_id`) VALUES
(1, 'Diesel', 'en', 1),
(2, 'ម៉ាស៊ូត', 'kh', 1),
(3, 'Petrol', 'en', 2),
(4, 'សាំង', 'kh', 2),
(5, 'Electric', 'en', 3),
(6, 'អគ្គិសនី', 'kh', 3),
(7, 'Test_fuel', 'en', 4),
(8, 'Test_fuel', 'kh', 4),
(9, 'LPG', 'en', 5),
(10, 'ឧស្ម័ន LPG', 'kh', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_images`
--

CREATE TABLE `vehicle_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 1, '1', '1_Hydrangeas.jpg', 'image', 'front', '2020-01-22 04:52:47', '2020-01-21 23:22:47'),
(2, 1, '2', '2_Tulips.jpg', 'image', 'rear', '2020-01-22 04:52:59', '2020-01-21 23:22:59'),
(3, 4, '1', '1_Koala.jpg', 'image', 'front', '2020-01-23 12:19:09', '2020-01-23 06:49:09'),
(38, 10, '2', '2_car-pictures.cars.com.jpg', 'image', 'rear', '2020-02-17 10:05:13', '2020-03-04 01:25:24'),
(39, 1, '3', '3_appoinnmet-doctor.png', 'image', 'rear', '2020-02-18 06:25:45', '2020-02-18 00:55:45'),
(57, 10, '2', '2_news-img.png', 'image', 'rear', '2020-02-25 10:50:48', '2020-02-25 05:20:48'),
(58, 10, '2', '2_user-profile-2.png', 'image', 'rear', '2020-02-25 10:50:48', '2020-02-25 05:20:48'),
(59, 10, '2', '2_user-profile-1.png', 'image', 'front', '2020-02-25 10:50:48', '2020-03-04 01:25:24'),
(60, 10, '5', '5_new-img.png', 'image', 'rear', '2020-02-25 10:50:49', '2020-02-25 05:20:49'),
(61, 10, '6', '6_professionals.png', 'image', 'rear', '2020-02-25 10:50:49', '2020-02-25 05:20:49'),
(62, 10, '7', '7_rehabilition-center.png', 'image', 'rear', '2020-02-25 10:50:49', '2020-02-25 05:20:49'),
(63, 10, '8', '8_slider-banner.jpg', 'image', 'rear', '2020-02-25 10:50:50', '2020-02-25 05:20:50'),
(83, 6, '1', '1_bmw-vantablack-car-design_dezeen_2364_col_4-852x638.jpg', 'image', 'front', '2020-03-03 06:26:48', '2020-03-03 00:56:48'),
(84, 6, '2', '2_images111.jpg', 'image', 'rear', '2020-03-03 06:26:49', '2020-03-03 00:56:49'),
(85, 6, '3', '3_images12.jpg', 'image', 'rear', '2020-03-03 06:26:50', '2020-03-03 00:56:50'),
(145, 8, '1', '1_White_Jaguar_Car_HD_Pics.jpg', 'image', 'front', '2020-03-03 09:18:48', '2020-03-03 03:48:48'),
(152, 8, '3', '3_White_Jaguar_Car_HD_Pics.jpg', 'image', 'rear', '2020-03-03 09:41:18', '2020-03-03 04:11:18'),
(156, 8, '7', '7_c_15831432780.jpg', 'image', 'rear', '2020-03-03 10:02:56', '2020-03-03 04:32:56'),
(161, 8, '10', '10_c_15831432780.jpg', 'image', 'rear', '2020-03-03 10:32:40', '2020-03-03 05:02:40'),
(170, 8, '7', '7_images1.jpg', 'image', 'rear', '2020-03-03 10:48:57', '2020-03-03 05:18:57'),
(171, 8, '8', '8_bmw-vantablack-car-design_dezeen_2364_col_4-852x638.jpg', 'image', 'rear', '2020-03-03 10:49:10', '2020-03-03 05:19:10'),
(172, 8, '9', '9_images111.jpg', 'image', 'rear', '2020-03-03 10:50:42', '2020-03-03 05:20:42'),
(174, 8, '9', '9_c_15831432780.jpg', 'image', 'rear', '2020-03-03 10:54:16', '2020-03-03 05:24:16'),
(175, 8, '9', '9_maruti-suzuki-baleno.jpg', 'image', 'rear', '2020-03-03 10:56:29', '2020-03-03 05:26:29'),
(176, 8, '10', '10_images3.jpg', 'image', 'rear', '2020-03-03 11:00:05', '2020-03-03 05:30:05'),
(177, 8, '11', '11_Maruti-Baleno.jpg', 'image', 'rear', '2020-03-03 12:52:37', '2020-03-03 07:22:37'),
(178, 8, '12', '12_maruti-suzuki-baleno.jpg', 'image', 'rear', '2020-03-03 12:52:38', '2020-03-03 07:22:38'),
(179, 11, '1', '1_nissan-micra-2017-boot.jpg', 'image', 'front', '2020-03-03 13:11:17', '2020-03-03 07:41:17'),
(180, 11, '2', '2_c_15831432780.jpg', 'image', 'rear', '2020-03-03 13:11:34', '2020-03-03 07:41:34'),
(181, 11, '3', '3_534288111.jpg', 'image', 'rear', '2020-03-03 13:13:26', '2020-03-03 07:43:26'),
(182, 11, '4', '4_nissan-micra-2017-interior.jpg', 'image', 'rear', '2020-03-03 13:13:52', '2020-03-03 07:43:52'),
(183, 7, '1', '1_43455345.jpg', 'image', 'front', '2020-03-04 05:25:59', '2020-03-03 23:55:59'),
(184, 7, '2', '2_images7.jpg', 'image', 'rear', '2020-03-04 05:26:01', '2020-03-03 23:56:01'),
(185, 7, '3', '3_images1.jpg', 'image', 'rear', '2020-03-04 05:26:02', '2020-03-03 23:56:02'),
(186, 7, '4', '4_images11.jpg', 'image', 'rear', '2020-03-04 05:26:04', '2020-03-03 23:56:04'),
(187, 5, '1', '1_White_Jaguar_Car_HD_Pics.jpg', 'image', 'front', '2020-03-04 05:29:33', '2020-03-03 23:59:33'),
(188, 5, '2', '2_nissan-micra-2017-boot.jpg', 'image', 'rear', '2020-03-04 05:29:43', '2020-03-03 23:59:43'),
(189, 5, '3', '3_nissan-micra-2017-interior.jpg', 'image', 'rear', '2020-03-04 05:29:44', '2020-03-03 23:59:44'),
(193, 2, '1', '1_White_Jaguar_Car_HD_Pics.jpg', 'image', 'front', '2020-03-04 05:37:14', '2020-03-04 00:07:14'),
(194, 2, '2', '2_911-road-3629a.jpg', 'image', 'rear', '2020-03-04 05:54:22', '2020-03-04 00:24:22'),
(195, 2, '3', '3_534288111.jpg', 'image', 'rear', '2020-03-04 05:54:24', '2020-03-04 00:24:24'),
(196, 10, '9', '9_nissan-micra-2017-boot.jpg', 'image', 'rear', '2020-03-04 11:56:10', '2020-03-04 06:26:10'),
(197, 10, '10', '10_nissan-micra-2017-boot.jpg', 'image', 'rear', '2020-03-04 11:56:47', '2020-03-04 06:26:47'),
(198, 10, '11', '11_bmw-vantablack-car-design_dezeen_2364_col_4-852x638.jpg', 'image', 'rear', '2020-03-04 11:57:38', '2020-03-04 06:27:38'),
(199, 10, '12', '12_17515.jpg', 'image', 'rear', '2020-03-04 11:57:46', '2020-03-04 06:27:46'),
(200, 10, '13', '13_43455345.jpg', 'image', 'rear', '2020-03-04 11:57:57', '2020-03-04 06:27:57'),
(201, 10, '14', '14_White_Jaguar_Car_HD_Pics.jpg', 'image', 'rear', '2020-03-04 11:58:10', '2020-03-04 06:28:10'),
(202, 10, '15', '15_porsche-911-gt3_0.jpg', 'image', 'rear', '2020-03-04 11:59:18', '2020-03-04 06:29:18'),
(203, 11, '5', '5_ewr-design7.png', 'image', 'rear', '2020-03-04 13:14:16', '2020-03-04 07:44:16'),
(204, 13, '1', '1_911-road-3629a.jpg', 'image', 'front', '2020-03-06 06:00:38', '2020-03-06 00:30:38'),
(205, 13, '2', '2_43455345.jpg', 'image', 'rear', '2020-03-06 06:00:40', '2020-03-06 00:30:40'),
(206, 13, '3', '3_c_15831432780.jpg', 'image', 'rear', '2020-03-06 06:00:41', '2020-03-06 00:30:41'),
(207, 13, '4', '4_bmw-vantablack-car-design_dezeen_2364_col_4-852x638.jpg', 'image', 'rear', '2020-03-06 06:00:43', '2020-03-06 00:30:43'),
(208, 13, '5', '5_2016_porsche_911_gt3_rs_1.jpg', 'image', 'rear', '2020-03-06 06:00:45', '2020-03-06 00:30:45'),
(209, 13, '6', '6_17515.jpg', 'image', 'rear', '2020-03-06 06:00:47', '2020-03-06 00:30:47'),
(210, 13, '7', '7_534288111.jpg', 'image', 'rear', '2020-03-06 06:00:51', '2020-03-06 00:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_inspections`
--

CREATE TABLE `vehicle_inspections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8,
  `is_inspection_complete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_inspections`
--

INSERT INTO `vehicle_inspections` (`id`, `vehicle_id`, `user_id`, `name`, `email`, `phone`, `message`, `is_inspection_complete`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 'Gyan Dealer', 'gyanseller@yopmail.com', '9694728151', 'Hi ,\nPlease inspect this car', 0, '2020-01-29 01:04:40', '2020-01-29 06:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_lifestyles`
--

CREATE TABLE `vehicle_lifestyles` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, 0, '2019-12-18 12:21:32', '2019-12-18 12:21:32', NULL),
(5, 0, '2019-12-18 12:22:41', '2019-12-18 12:22:41', NULL),
(6, 0, '2019-12-20 07:12:10', '2019-12-20 07:12:10', NULL),
(7, 1, '2020-01-07 05:51:33', '2020-01-07 05:51:33', NULL),
(8, 1, '2020-01-07 05:51:46', '2020-01-07 05:51:46', NULL),
(9, 0, '2020-01-07 05:52:04', '2020-01-07 05:52:04', NULL),
(10, 1, '2020-01-07 05:52:17', '2020-01-07 05:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_lifestyle_translations`
--

CREATE TABLE `vehicle_lifestyle_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `vehicle_lifestyle_id` bigint(20) UNSIGNED NOT NULL
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
(12, 'Test_lifestyle', 'kh', 6),
(13, 'Unique', 'en', 7),
(14, 'Unique', 'kh', 7),
(15, 'Off Road 4*4', 'en', 8),
(16, 'Off Road 4*4', 'kh', 8),
(17, 'Tradie', 'en', 9),
(18, 'Tradie', 'kh', 9),
(19, 'Performance', 'en', 10),
(20, 'Performance', 'kh', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_makes`
--

CREATE TABLE `vehicle_makes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_makes`
--

INSERT INTO `vehicle_makes` (`id`, `slug`, `status`, `icon`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hyundai', 1, '1576509011-117945433.png', 1, '2019-12-06 02:24:45', '2019-12-16 04:10:11', NULL),
(2, 'audi', 1, '1576508889-272608864.png', 2, '2019-12-06 02:24:56', '2020-02-24 23:53:06', NULL),
(3, 'honda', 1, '1576508975-1044654804.png', 3, '2019-12-11 03:37:50', '2019-12-16 04:09:35', NULL),
(4, 'maruti', 1, '1576509001-848347596.png', 4, '2019-12-11 03:38:03', '2019-12-16 04:10:01', NULL),
(5, 'abarth', 1, '1576508934-1628980898.png', 5, '2019-12-11 22:01:58', '2020-02-24 23:50:19', NULL),
(6, 'ford', 1, '1576508914-1982932060.png', 6, '2019-12-13 03:11:49', '2019-12-16 04:08:34', NULL),
(7, 'kia', 1, '1578412006-1282813901.png', 7, '2019-12-16 21:44:39', '2020-01-07 04:46:46', NULL),
(8, 'ford-1', 1, '1579071431-1627792391.png', 8, '2019-12-17 23:14:02', '2020-01-14 19:57:11', NULL),
(9, 'mahindara', 1, '1576733087-1891681310.png', 9, '2019-12-18 18:24:47', '2019-12-18 18:24:47', NULL),
(10, 'tata', 1, '1576733923-2098928367.png', 10, '2019-12-18 18:38:43', '2019-12-18 18:38:43', NULL),
(11, 'test-make', 0, '1576821162-887211736.jpg', NULL, '2019-12-19 18:52:42', '2019-12-19 18:52:42', NULL),
(12, 'maruti-1', 1, '1578374424-859418613.jpg', NULL, '2020-01-06 18:20:24', '2020-01-06 18:20:24', NULL),
(13, 'honda-1', 1, '1578411985-2122498068.png', NULL, '2020-01-06 18:21:06', '2020-01-07 04:46:25', NULL),
(14, 'alfa-romeo', 1, '1579071535-810455783.png', NULL, '2020-01-12 23:06:49', '2020-02-24 23:52:27', NULL),
(15, 'aston-martin', 1, '1579049736-1294308480.png', NULL, '2020-01-14 13:51:55', '2020-02-24 23:52:48', NULL),
(16, 'bentley', 1, '1579063429-2094476844.png', NULL, '2020-01-14 17:43:49', '2020-02-24 23:54:44', NULL),
(17, 'cadillac', 1, '1579063992-629900794.png', NULL, '2020-01-14 17:53:12', '2020-01-14 17:53:12', NULL),
(18, 'chrysler', 1, '1579064295-1170485595.png', NULL, '2020-01-14 17:55:28', '2020-01-14 17:58:15', NULL),
(19, 'citroen', 1, '1579064419-945829213.png', NULL, '2020-01-14 18:00:19', '2020-01-14 18:00:19', NULL),
(20, 'ferrari', 1, '1579064593-549959097.png', NULL, '2020-01-14 18:03:13', '2020-01-14 18:03:13', NULL),
(21, 'foton', 1, '1579064942-888506091.png', NULL, '2020-01-14 18:07:32', '2020-01-14 18:09:02', NULL),
(22, 'gmc', 1, '1579065024-1258135132.png', NULL, '2020-01-14 18:10:24', '2020-01-14 18:10:24', NULL),
(23, 'great-wall', 1, '1579065120-1338256626.png', NULL, '2020-01-14 18:12:00', '2020-01-14 18:12:00', NULL),
(24, 'hummer', 1, '1579065625-1217723175.png', NULL, '2020-01-14 18:20:25', '2020-01-14 18:20:25', NULL),
(25, 'infiniti', 1, '1579065714-1762702215.png', NULL, '2020-01-14 18:21:54', '2020-01-14 18:21:54', NULL),
(26, 'isuzu', 1, '1579065831-886322904.png', NULL, '2020-01-14 18:23:51', '2020-01-14 18:23:51', NULL),
(27, 'jaguar', 1, '1579065905-757394527.png', NULL, '2020-01-14 18:25:05', '2020-01-14 18:25:05', NULL),
(28, 'jeep', 1, '1579065981-630901361.png', NULL, '2020-01-14 18:26:21', '2020-01-14 18:26:21', NULL),
(29, 'lamborghini', 1, '1579066053-1505223678.png', NULL, '2020-01-14 18:27:33', '2020-01-14 18:27:33', NULL),
(30, 'land-rover', 1, '1579066104-1691995863.png', NULL, '2020-01-14 18:28:24', '2020-01-14 18:28:24', NULL),
(31, 'ldv', 1, '1579066171-697642905.png', NULL, '2020-01-14 18:29:31', '2020-01-14 18:29:31', NULL),
(32, 'lexus', 1, '1579066531-1696931366.png', NULL, '2020-01-14 18:35:31', '2020-01-14 18:35:31', NULL),
(33, 'maserati', 1, '1579066853-464380952.png', NULL, '2020-01-14 18:40:04', '2020-01-14 18:40:53', NULL),
(34, 'mazda', 1, '1579067313-1876461796.png', NULL, '2020-01-14 18:48:33', '2020-01-14 18:48:33', NULL),
(35, 'mercedes-benz', 1, '1579067404-814608857.png', NULL, '2020-01-14 18:50:04', '2020-01-14 18:50:04', NULL),
(36, 'mini', 1, '1579067512-197586858.png', NULL, '2020-01-14 18:51:52', '2020-01-14 18:51:52', NULL),
(37, 'mitsubishi', 1, '1579067632-1446121901.png', NULL, '2020-01-14 18:53:52', '2020-01-14 18:53:52', NULL),
(38, 'nissan', 1, '1579067701-765037359.png', NULL, '2020-01-14 18:55:01', '2020-01-14 18:55:01', NULL),
(39, 'peugeot', 1, '1579067760-196046686.png', NULL, '2020-01-14 18:56:00', '2020-01-14 18:56:00', NULL),
(40, 'porsche', 1, '1579068017-255278845.png', NULL, '2020-01-14 18:57:55', '2020-01-14 19:00:17', NULL),
(41, 'ram', 1, '1579068262-902252955.png', NULL, '2020-01-14 19:03:05', '2020-01-14 19:04:22', NULL),
(42, 'renault', 1, '1579068324-1623241168.png', NULL, '2020-01-14 19:05:24', '2020-01-14 19:05:24', NULL),
(43, 'rolls-royce', 1, '1579068392-358395883.png', NULL, '2020-01-14 19:06:32', '2020-01-14 19:06:32', NULL),
(44, 'ssangyong', 1, '1579068520-897187979.png', NULL, '2020-01-14 19:08:40', '2020-01-14 19:08:40', NULL),
(45, 'subaru', 1, '1579068584-400097819.png', NULL, '2020-01-14 19:09:44', '2020-01-14 19:09:44', NULL),
(46, 'suzuki', 1, '1579068734-146550438.png', NULL, '2020-01-14 19:12:14', '2020-01-14 19:12:14', NULL),
(47, 'tesla', 1, '1579069703-2101071089.png', NULL, '2020-01-14 19:16:40', '2020-01-14 19:28:23', NULL),
(48, 'toyota', 1, '1579069813-2101012169.png', NULL, '2020-01-14 19:30:13', '2020-01-14 19:30:13', NULL),
(49, 'volkswagen', 1, '1579069876-953127210.png', NULL, '2020-01-14 19:31:16', '2020-01-14 19:31:16', NULL),
(50, 'volvo', 1, '1579069947-1619127953.png', NULL, '2020-01-14 19:32:27', '2020-01-14 19:32:27', NULL),
(51, 'haval', 1, '1579070101-914045000.png', NULL, '2020-01-14 19:35:01', '2020-01-14 19:35:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make_translations`
--

CREATE TABLE `vehicle_make_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_make_id` bigint(20) UNSIGNED NOT NULL,
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
(22, 'kh', 11, 'Test_make'),
(23, 'en', 12, 'Maruti'),
(24, 'kh', 12, 'Maruti'),
(25, 'en', 13, 'Honda'),
(26, 'kh', 13, 'Honda'),
(27, 'en', 14, 'Alfa Romeo'),
(28, 'kh', 14, 'Alfa Romeo'),
(29, 'en', 15, 'Aston Martin'),
(30, 'kh', 15, 'Aston Martin'),
(31, 'en', 16, 'Bentley'),
(32, 'kh', 16, 'Bentley'),
(33, 'en', 17, 'Cadillac'),
(34, 'kh', 17, 'Cadillac'),
(35, 'en', 18, 'Chrysler'),
(36, 'kh', 18, 'Chrysler'),
(37, 'en', 19, 'Citroen'),
(38, 'kh', 19, 'Citroen'),
(39, 'en', 20, 'Ferrari'),
(40, 'kh', 20, 'Ferrari'),
(41, 'en', 21, 'Foton'),
(42, 'kh', 21, 'Foton'),
(43, 'en', 22, 'GMC'),
(44, 'kh', 22, 'GMC'),
(45, 'en', 23, 'Great Wall'),
(46, 'kh', 23, 'Great Wall'),
(47, 'en', 24, 'Hummer'),
(48, 'kh', 24, 'Hummer'),
(49, 'en', 25, 'Infiniti'),
(50, 'kh', 25, 'Infiniti'),
(51, 'en', 26, 'Isuzu'),
(52, 'kh', 26, 'Isuzu'),
(53, 'en', 27, 'Jaguar'),
(54, 'kh', 27, 'Jaguar'),
(55, 'en', 28, 'Jeep'),
(56, 'kh', 28, 'Jeep'),
(57, 'en', 29, 'Lamborghini'),
(58, 'kh', 29, 'Lamborghini'),
(59, 'en', 30, 'Land Rover'),
(60, 'kh', 30, 'Land Rover'),
(61, 'en', 31, 'LDV'),
(62, 'kh', 31, 'LDV'),
(63, 'en', 32, 'Lexus'),
(64, 'kh', 32, 'Lexus'),
(65, 'en', 33, 'Maserati'),
(66, 'kh', 33, 'Maserati'),
(67, 'en', 34, 'Mazda'),
(68, 'kh', 34, 'Mazda'),
(69, 'en', 35, 'Mercedes'),
(70, 'kh', 35, 'Mercedes'),
(71, 'en', 36, 'MINI'),
(72, 'kh', 36, 'MINI'),
(73, 'en', 37, 'Mitsubishi'),
(74, 'kh', 37, 'Mitsubishi'),
(75, 'en', 38, 'Nissan'),
(76, 'kh', 38, 'Nissan'),
(77, 'en', 39, 'Peugeot'),
(78, 'kh', 39, 'Peugeot'),
(79, 'en', 40, 'Porsche'),
(80, 'kh', 40, 'Porsche'),
(81, 'en', 41, 'Ram'),
(82, 'kh', 41, 'Ram'),
(83, 'en', 42, 'Renault'),
(84, 'kh', 42, 'Renault'),
(85, 'en', 43, 'Rolls-Royce'),
(86, 'kh', 43, 'Rolls-Royce'),
(87, 'en', 44, 'SsangYong'),
(88, 'kh', 44, 'SsangYong'),
(89, 'en', 45, 'Subaru'),
(90, 'kh', 45, 'Subaru'),
(91, 'en', 46, 'Suzuki'),
(92, 'kh', 46, 'Suzuki'),
(93, 'en', 47, 'Tesla'),
(94, 'kh', 47, 'Tesla'),
(95, 'en', 48, 'Toyota'),
(96, 'kh', 48, 'Toyota'),
(97, 'en', 49, 'Volkswagen'),
(98, 'kh', 49, 'Volkswagen'),
(99, 'en', 50, 'Volvo'),
(100, 'kh', 50, 'Volvo'),
(101, 'en', 51, 'Haval'),
(102, 'kh', 51, 'Haval');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `makes_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, 1, 'grand-i10', 1, NULL, '2019-12-06 02:25:21', '2019-12-17 04:01:15', NULL),
(2, 2, 'allroad', 1, NULL, '2019-12-06 02:25:35', '2020-01-14 23:31:24', NULL),
(3, 4, 'ertica', 1, NULL, '2019-12-11 03:38:27', '2019-12-11 03:38:27', NULL),
(4, 4, 'baleno', 1, NULL, '2019-12-11 03:38:42', '2019-12-11 03:38:42', NULL),
(5, 2, 'model-1', 1, NULL, '2019-12-11 21:38:19', '2019-12-11 21:38:19', NULL),
(6, 5, '124', 1, NULL, '2019-12-11 22:02:16', '2019-12-11 22:02:16', NULL),
(7, 5, '500', 1, NULL, '2019-12-11 22:02:39', '2019-12-11 22:02:39', NULL),
(8, 6, 'figo', 0, NULL, '2019-12-13 03:13:43', '2019-12-13 03:13:43', NULL),
(9, 8, 'capri', 0, '1576664094-539431207.jpg', '2019-12-17 23:14:54', '2019-12-17 23:14:54', NULL),
(10, 9, 'scorpio', 1, '1576733136-1703877873.jpg', '2019-12-18 18:25:36', '2019-12-18 18:25:36', NULL),
(11, 10, 'gravitas', 1, '1576733967-1126061991.jpg', '2019-12-18 18:39:27', '2019-12-18 18:39:27', NULL),
(12, 11, 'test-vehicle', 0, NULL, '2019-12-19 18:53:34', '2019-12-19 18:53:34', NULL),
(13, 12, 'suzuki-baleno', 1, '1578374549-1821586098.jpg', '2020-01-06 18:22:29', '2020-01-06 18:22:29', NULL),
(14, 13, 'city', 1, '1578374692-1086042107.jpg', '2020-01-06 18:24:52', '2020-01-06 18:24:52', NULL),
(15, 13, 'cityy-1234', 0, '1578374744-1862728992.jpg', '2020-01-06 18:25:44', '2020-01-06 18:25:44', NULL),
(16, 1, 'sdf', 1, NULL, '2020-01-06 18:26:30', '2020-01-06 18:26:30', NULL),
(17, 7, 'seltos', 1, NULL, '2020-01-07 03:23:03', '2020-01-07 03:23:03', NULL),
(18, 10, '124-1', 1, NULL, '2020-01-08 22:14:58', '2020-01-08 22:14:58', NULL),
(19, 14, '1300', 1, NULL, '2020-01-12 23:08:09', '2020-01-12 23:08:09', NULL),
(20, 15, '164', 1, NULL, '2020-01-14 13:57:06', '2020-01-14 13:57:06', NULL),
(21, 14, '164-1', 1, NULL, '2020-01-14 23:14:49', '2020-01-14 23:14:49', NULL),
(22, 14, 'spider', 1, NULL, '2020-01-14 23:16:28', '2020-01-14 23:16:28', NULL),
(23, 15, 'db9', 1, NULL, '2020-01-14 23:23:11', '2020-01-14 23:23:11', NULL),
(24, 15, 'dbs', 1, NULL, '2020-01-14 23:24:06', '2020-01-14 23:24:06', NULL),
(25, 15, 'rapide', 1, NULL, '2020-01-14 23:24:31', '2020-01-14 23:24:31', NULL),
(26, 15, 'v12-vantage', 1, NULL, '2020-01-14 23:25:05', '2020-01-14 23:25:05', NULL),
(27, 15, 'v8-vantage-s', 1, NULL, '2020-01-14 23:25:47', '2020-01-14 23:25:47', NULL),
(28, 15, 'v8-vantage', 1, NULL, '2020-01-14 23:26:23', '2020-01-14 23:26:23', NULL),
(29, 15, 'vanquish-s', 1, NULL, '2020-01-14 23:26:54', '2020-01-14 23:26:54', NULL),
(30, 15, 'vantage', 1, NULL, '2020-01-14 23:27:27', '2020-01-14 23:27:27', NULL),
(31, 15, 'virage', 1, NULL, '2020-01-14 23:27:50', '2020-01-14 23:27:50', NULL),
(32, 2, 'a4', 1, NULL, '2020-01-14 23:33:46', '2020-01-14 23:33:46', NULL),
(33, 2, 'a5', 1, NULL, '2020-01-14 23:34:12', '2020-01-14 23:34:12', NULL),
(34, 2, 'a6', 1, NULL, '2020-01-14 23:34:38', '2020-01-14 23:34:38', NULL),
(35, 2, 'a7', 1, NULL, '2020-01-14 23:34:59', '2020-01-14 23:34:59', NULL),
(36, 2, 'a8', 1, NULL, '2020-01-14 23:35:22', '2020-01-14 23:35:22', NULL),
(37, 2, 'cabriolet', 1, NULL, '2020-01-14 23:35:45', '2020-01-14 23:35:45', NULL),
(38, 2, 'q5', 1, NULL, '2020-01-14 23:36:09', '2020-01-14 23:36:09', NULL),
(39, 2, 'q7', 1, NULL, '2020-01-14 23:36:35', '2020-01-14 23:36:35', NULL),
(40, 2, 'rs-4', 1, NULL, '2020-01-14 23:36:56', '2020-01-14 23:36:56', NULL),
(41, 2, 'rs-6', 1, NULL, '2020-01-14 23:37:15', '2020-01-14 23:37:15', NULL),
(42, 2, 's4', 1, NULL, '2020-01-14 23:37:35', '2020-01-14 23:37:35', NULL),
(43, 2, 's5', 1, NULL, '2020-01-14 23:37:56', '2020-01-14 23:37:56', NULL),
(44, 2, 's6', 1, NULL, '2020-01-14 23:38:15', '2020-01-14 23:38:15', NULL),
(45, 2, 's8', 1, NULL, '2020-01-14 23:38:37', '2020-01-14 23:38:37', NULL),
(46, 2, 'tt', 1, NULL, '2020-01-14 23:39:32', '2020-01-14 23:39:32', NULL),
(47, 16, 'arnage', 1, NULL, '2020-01-14 23:42:16', '2020-01-14 23:42:16', NULL),
(48, 16, 'azure', 1, NULL, '2020-01-14 23:42:43', '2020-01-14 23:42:43', NULL),
(49, 16, 'azure-t', 1, NULL, '2020-01-14 23:43:06', '2020-01-14 23:43:06', NULL),
(50, 16, 'brooklands', 1, NULL, '2020-01-14 23:43:34', '2020-01-14 23:43:34', NULL),
(51, 16, 'continental', 1, NULL, '2020-01-14 23:43:59', '2020-01-14 23:43:59', NULL),
(52, 16, 'continental-flying-spur', 1, NULL, '2020-01-14 23:45:53', '2020-01-14 23:45:53', NULL),
(53, 16, 'continental-gt', 1, NULL, '2020-01-14 23:46:15', '2020-01-14 23:46:15', NULL),
(54, 16, 'continental-gtc', 1, NULL, '2020-01-14 23:47:13', '2020-01-14 23:47:13', NULL),
(55, 16, 'continental-super', 1, NULL, '2020-01-14 23:47:38', '2020-01-14 23:47:38', NULL),
(56, 16, 'mulsanne', 1, NULL, '2020-01-14 23:49:18', '2020-01-14 23:49:18', NULL),
(57, 3, '1-series', 1, NULL, '2020-01-15 23:49:21', '2020-01-15 23:49:21', NULL),
(58, 3, '3-series', 1, NULL, '2020-01-15 23:49:43', '2020-01-15 23:49:43', NULL),
(59, 3, '325', 1, NULL, '2020-01-15 23:50:05', '2020-01-15 23:50:05', NULL),
(60, 3, '330', 1, NULL, '2020-01-15 23:50:24', '2020-01-15 23:50:24', NULL),
(61, 3, '525', 1, NULL, '2020-01-15 23:50:46', '2020-01-15 23:50:46', NULL),
(62, 3, '530', 1, NULL, '2020-01-15 23:51:06', '2020-01-15 23:51:06', NULL),
(63, 3, '545', 1, NULL, '2020-01-15 23:51:22', '2020-01-15 23:51:22', NULL),
(64, 3, '550', 1, NULL, '2020-01-15 23:51:40', '2020-01-15 23:51:40', NULL),
(65, 3, '5-series', 1, NULL, '2020-01-15 23:51:58', '2020-01-15 23:51:58', NULL),
(66, 3, '6-series', 1, NULL, '2020-01-15 23:52:15', '2020-01-15 23:52:15', NULL),
(67, 3, '645', 1, NULL, '2020-01-15 23:52:33', '2020-01-15 23:52:33', NULL),
(68, 3, '650', 1, NULL, '2020-01-15 23:52:52', '2020-01-15 23:52:52', NULL),
(69, 3, '7-series', 1, NULL, '2020-01-15 23:53:08', '2020-01-15 23:53:08', NULL),
(70, 3, '740', 1, NULL, '2020-01-15 23:53:32', '2020-01-15 23:53:32', NULL),
(71, 3, '745', 1, NULL, '2020-01-15 23:53:49', '2020-01-15 23:53:49', NULL),
(72, 3, '760', 1, NULL, '2020-01-15 23:54:07', '2020-01-15 23:54:07', NULL),
(73, 3, '8-series', 1, NULL, '2020-01-15 23:54:20', '2020-01-15 23:54:20', NULL),
(74, 3, 'alpina-b7', 1, NULL, '2020-01-15 23:54:36', '2020-01-15 23:54:36', NULL),
(75, 3, 'm-mroadster', 1, NULL, '2020-01-15 23:54:51', '2020-01-15 23:54:51', NULL),
(76, 3, 'm3', 1, NULL, '2020-01-15 23:55:07', '2020-01-15 23:55:07', NULL),
(77, 3, 'm5', 1, NULL, '2020-01-15 23:55:22', '2020-01-15 23:55:22', NULL),
(78, 3, 'm6', 1, NULL, '2020-01-15 23:55:38', '2020-01-15 23:55:38', NULL),
(79, 3, 'x3', 1, NULL, '2020-01-15 23:55:50', '2020-01-15 23:55:50', NULL),
(80, 3, 'x5', 1, NULL, '2020-01-15 23:56:05', '2020-01-15 23:56:05', NULL),
(81, 3, 'x5-m', 1, NULL, '2020-01-15 23:56:23', '2020-01-15 23:56:23', NULL),
(82, 3, 'x6', 1, NULL, '2020-01-15 23:56:39', '2020-01-15 23:56:39', NULL),
(83, 3, 'x6-m', 1, NULL, '2020-01-15 23:56:52', '2020-01-15 23:56:52', NULL),
(84, 3, 'z3', 1, NULL, '2020-01-15 23:57:10', '2020-01-15 23:57:10', NULL),
(85, 3, 'z4', 1, NULL, '2020-01-15 23:57:23', '2020-01-15 23:57:23', NULL),
(86, 3, 'z4-m', 1, NULL, '2020-01-15 23:57:37', '2020-01-15 23:57:37', NULL),
(87, 3, 'z4-m-roadster', 1, NULL, '2020-01-15 23:57:51', '2020-01-15 23:57:51', NULL),
(88, 3, 'z8', 1, NULL, '2020-01-15 23:58:02', '2020-01-15 23:58:02', NULL),
(89, 17, 'cts', 1, NULL, '2020-01-16 00:00:47', '2020-01-16 00:00:47', NULL),
(90, 17, 'cts-v', 1, NULL, '2020-01-16 00:01:11', '2020-01-16 00:01:11', NULL),
(91, 17, 'dts', 1, NULL, '2020-01-16 00:01:27', '2020-01-16 00:01:27', NULL),
(92, 17, 'escalade', 1, NULL, '2020-01-16 00:01:40', '2020-01-16 00:01:40', NULL),
(93, 17, 'escalade-esv', 1, NULL, '2020-01-16 00:01:57', '2020-01-16 00:01:57', NULL),
(94, 17, 'escalade-ext', 1, NULL, '2020-01-16 00:02:14', '2020-01-16 00:02:14', NULL),
(95, 17, 'srx', 1, NULL, '2020-01-16 00:02:30', '2020-01-16 00:02:30', NULL),
(96, 17, 'sts', 1, NULL, '2020-01-16 00:02:44', '2020-01-16 00:02:44', NULL),
(97, 17, 'sts-v', 1, NULL, '2020-01-16 00:02:59', '2020-01-16 00:02:59', NULL),
(98, 17, 'xlr', 1, NULL, '2020-01-16 00:03:15', '2020-01-16 00:03:15', NULL),
(99, 17, 'xlr-v', 1, NULL, '2020-01-16 00:03:29', '2020-01-16 00:03:29', NULL),
(100, 4, '3500', 1, NULL, '2020-01-16 00:10:05', '2020-01-16 00:10:05', NULL),
(101, 4, 'apv', 1, NULL, '2020-01-16 00:10:38', '2020-01-16 00:10:38', NULL),
(102, 4, 'avalanche-1500', 1, NULL, '2020-01-16 00:11:01', '2020-01-16 00:11:01', NULL),
(103, 4, 'avalanche-2500', 1, NULL, '2020-01-16 00:11:19', '2020-01-16 00:11:19', NULL),
(104, 4, 'avalanche', 1, NULL, '2020-01-16 00:11:47', '2020-01-16 00:11:47', NULL),
(105, 4, 'blazer', 1, NULL, '2020-01-16 00:12:07', '2020-01-16 00:12:07', NULL),
(106, 4, 'camaro', 1, NULL, '2020-01-16 00:12:56', '2020-01-16 00:12:56', NULL),
(107, 4, 'colorado', 1, NULL, '2020-01-16 00:13:14', '2020-01-16 00:13:14', NULL),
(108, 4, 'cruze', 1, NULL, '2020-01-16 00:13:30', '2020-01-16 00:13:30', NULL),
(109, 4, 'corvette', 1, NULL, '2020-01-16 00:13:50', '2020-01-16 00:13:50', NULL),
(110, 4, 'equinox', 1, NULL, '2020-01-16 00:14:06', '2020-01-16 00:14:06', NULL),
(111, 4, 'impala', 1, NULL, '2020-01-16 00:14:27', '2020-01-16 00:14:27', NULL),
(112, 4, 'malibu', 1, NULL, '2020-01-16 00:14:46', '2020-01-16 00:14:46', NULL),
(113, 4, 'prizm', 1, NULL, '2020-01-16 00:15:04', '2020-01-16 00:15:04', NULL),
(114, 4, 's10-blazer', 1, NULL, '2020-01-16 00:15:33', '2020-01-16 00:15:33', NULL),
(115, 4, 'silverado-1500', 1, NULL, '2020-01-16 00:15:59', '2020-01-16 00:15:59', NULL),
(116, 4, 'silverado-2500', 1, NULL, '2020-01-16 00:16:28', '2020-01-16 00:16:28', NULL),
(117, 4, 'silverado-3500', 1, NULL, '2020-01-16 00:16:48', '2020-01-16 00:16:48', NULL),
(118, 4, 'silverado-3500hd', 1, NULL, '2020-01-16 00:17:05', '2020-01-16 00:17:05', NULL),
(119, 4, 'silverado-hybrid', 1, NULL, '2020-01-16 00:17:23', '2020-01-16 00:17:23', NULL),
(120, 4, 'sonic', 1, NULL, '2020-01-16 00:17:40', '2020-01-16 00:17:40', NULL),
(121, 4, 'suburban', 1, NULL, '2020-01-16 00:17:55', '2020-01-16 00:17:55', NULL),
(122, 4, 'suburban-1500', 1, NULL, '2020-01-16 00:18:11', '2020-01-16 00:18:11', NULL),
(123, 4, 'suburban-2500', 1, NULL, '2020-01-16 00:20:07', '2020-01-16 00:20:07', NULL),
(124, 4, 'silverado', 1, NULL, '2020-01-16 00:20:28', '2020-01-16 00:20:28', NULL),
(125, 4, 'tahoe', 1, NULL, '2020-01-16 00:21:35', '2020-01-16 00:21:35', NULL),
(126, 4, 'trailblazer', 1, NULL, '2020-01-16 00:21:52', '2020-01-16 00:21:52', NULL),
(127, 4, 'traverse', 1, NULL, '2020-01-16 00:22:08', '2020-01-16 00:22:08', NULL),
(128, 4, 'volt', 1, NULL, '2020-01-16 00:22:23', '2020-01-16 00:22:23', NULL),
(129, 18, '200', 1, NULL, '2020-01-16 00:25:30', '2020-01-16 00:25:30', NULL),
(130, 18, '300', 1, NULL, '2020-01-16 00:25:47', '2020-01-16 00:25:47', NULL),
(131, 18, '300c', 1, NULL, '2020-01-16 00:26:09', '2020-01-16 00:26:09', NULL),
(132, 18, 'aspen', 1, NULL, '2020-01-16 00:26:27', '2020-01-16 00:26:27', NULL),
(133, 18, 'cirrus', 1, NULL, '2020-01-16 00:26:46', '2020-01-16 00:26:46', NULL),
(134, 18, 'crossfire', 1, NULL, '2020-01-16 00:27:08', '2020-01-16 00:27:08', NULL),
(135, 18, 'crossfire-roadster', 1, NULL, '2020-01-16 00:27:32', '2020-01-16 00:27:32', NULL),
(136, 18, 'grand-voyager', 1, NULL, '2020-01-16 00:27:50', '2020-01-16 00:27:50', NULL),
(137, 18, 'pacifica', 1, NULL, '2020-01-16 00:28:08', '2020-01-16 00:28:08', NULL),
(138, 18, 'sebring', 1, NULL, '2020-01-16 00:28:36', '2020-01-16 00:28:36', NULL),
(139, 18, 'voyager', 1, NULL, '2020-01-16 00:29:26', '2020-01-16 00:29:26', NULL),
(140, 20, '430-scuderia', 1, NULL, '2020-01-16 00:32:21', '2020-01-16 00:32:21', NULL),
(141, 20, '458-italia', 1, NULL, '2020-01-16 00:32:43', '2020-01-16 00:32:43', NULL),
(142, 20, '599-gtb-fiorano', 1, NULL, '2020-01-16 00:33:02', '2020-01-16 00:33:02', NULL),
(143, 20, '612-scaglietti', 1, NULL, '2020-01-16 00:33:26', '2020-01-16 00:33:26', NULL),
(144, 20, 'california', 1, NULL, '2020-01-16 00:33:45', '2020-01-16 00:33:45', NULL),
(145, 20, 'f430', 1, NULL, '2020-01-16 00:34:01', '2020-01-16 00:34:01', NULL),
(146, 20, 'f430-spider', 1, NULL, '2020-01-16 00:34:16', '2020-01-16 00:34:16', NULL),
(147, 20, 'ff', 1, NULL, '2020-01-16 00:34:30', '2020-01-16 00:34:30', NULL),
(148, 6, '500-1', 1, NULL, '2020-01-16 00:37:11', '2020-01-16 00:37:11', NULL),
(149, 8, 'aspire', 1, NULL, '2020-01-16 00:41:30', '2020-01-16 00:41:30', NULL),
(150, 8, 'bronco-2', 1, NULL, '2020-01-16 00:41:53', '2020-01-16 00:41:53', NULL),
(151, 8, 'c-max-hybrid', 1, NULL, '2020-01-16 00:42:18', '2020-01-16 00:42:18', NULL),
(152, 8, 'contour', 1, NULL, '2020-01-16 00:42:45', '2020-01-16 00:42:45', NULL),
(153, 8, 'courier', 1, NULL, '2020-01-16 00:43:00', '2020-01-16 00:43:00', NULL),
(154, 8, 'crown-victoria', 1, NULL, '2020-01-16 00:43:16', '2020-01-16 00:43:16', NULL),
(155, 8, 'edge', 1, NULL, '2020-01-16 00:43:30', '2020-01-16 00:43:30', NULL),
(156, 8, 'escape', 1, NULL, '2020-01-16 00:43:48', '2020-01-16 00:43:48', NULL),
(157, 8, 'everest', 1, NULL, '2020-01-16 00:44:04', '2020-01-16 00:44:04', NULL),
(158, 8, 'expedition', 1, NULL, '2020-01-16 00:44:22', '2020-01-16 00:44:22', NULL),
(159, 8, 'explorer', 1, NULL, '2020-01-16 00:44:39', '2020-01-16 00:44:39', NULL),
(160, 8, 'explorer-sport', 1, NULL, '2020-01-16 00:45:21', '2020-01-16 00:45:21', NULL),
(161, 8, 'explorer-sport-trac', 1, NULL, '2020-01-16 00:45:40', '2020-01-16 00:45:40', NULL),
(162, 8, 'ecosport', 1, NULL, '2020-01-16 00:45:56', '2020-01-16 00:45:56', NULL),
(163, 8, 'endura', 1, NULL, '2020-01-16 00:46:09', '2020-01-16 00:46:09', NULL),
(164, 8, 'f-250-super-duty', 1, NULL, '2020-01-16 00:47:24', '2020-01-16 00:47:24', NULL),
(165, 8, 'f-350-super-duty', 1, NULL, '2020-01-16 00:47:41', '2020-01-16 00:47:41', NULL),
(166, 8, 'f-series', 1, NULL, '2020-01-16 00:48:05', '2020-01-16 00:48:05', NULL),
(167, 8, 'f-series-super-duty', 1, NULL, '2020-01-16 00:48:22', '2020-01-16 00:48:22', NULL),
(168, 8, 'f150', 1, NULL, '2020-01-16 00:48:42', '2020-01-16 00:48:42', NULL),
(169, 8, 'f250', 1, NULL, '2020-01-16 00:49:12', '2020-01-16 00:49:12', NULL),
(170, 8, 'f350', 1, NULL, '2020-01-16 00:49:46', '2020-01-16 00:49:46', NULL),
(171, 8, 'f450', 1, NULL, '2020-01-16 00:50:15', '2020-01-16 00:50:15', NULL),
(172, 8, 'fiesta', 1, NULL, '2020-01-16 00:50:31', '2020-01-16 00:50:31', NULL),
(173, 8, 'five-hundred', 1, NULL, '2020-01-16 00:50:51', '2020-01-16 00:50:51', NULL),
(174, 8, 'flex', 1, NULL, '2020-01-16 00:51:11', '2020-01-16 00:51:11', NULL),
(175, 8, 'focus', 1, NULL, '2020-01-16 00:51:27', '2020-01-16 00:51:27', NULL),
(176, 8, 'focus-st', 1, NULL, '2020-01-16 00:51:45', '2020-01-16 00:51:45', NULL),
(177, 8, 'freestar', 1, NULL, '2020-01-16 00:52:01', '2020-01-16 00:52:01', NULL),
(178, 8, 'freestyle', 1, NULL, '2020-01-16 00:52:17', '2020-01-16 00:52:17', NULL),
(179, 8, 'fusion', 1, NULL, '2020-01-16 00:52:34', '2020-01-16 00:52:34', NULL),
(180, 8, 'mustang', 1, NULL, '2020-01-16 00:53:08', '2020-01-16 00:53:08', NULL),
(181, 8, 'kakuga', 1, NULL, '2020-01-16 00:53:25', '2020-01-16 00:53:25', NULL),
(182, 8, 'ranger', 1, NULL, '2020-01-16 00:53:42', '2020-01-16 00:53:42', NULL),
(183, 8, 'taurus', 1, NULL, '2020-01-16 00:54:06', '2020-01-16 00:54:06', NULL),
(184, 8, 'windstar', 1, NULL, '2020-01-16 00:54:24', '2020-01-16 00:54:24', NULL),
(185, 22, '1500', 1, NULL, '2020-01-16 01:01:53', '2020-01-16 01:01:53', NULL),
(186, 22, '2500', 1, NULL, '2020-01-16 01:02:36', '2020-01-16 01:02:36', NULL),
(187, 22, '3500-1', 1, NULL, '2020-01-16 01:02:58', '2020-01-16 01:02:58', NULL),
(188, 22, 'acadia', 1, NULL, '2020-01-16 01:03:17', '2020-01-16 01:03:17', NULL),
(189, 22, 'canyon', 1, NULL, '2020-01-16 01:03:39', '2020-01-16 01:03:39', NULL),
(190, 22, 'envoy', 1, NULL, '2020-01-16 01:03:56', '2020-01-16 01:03:56', NULL),
(191, 22, 'envoy-xl', 1, NULL, '2020-01-16 01:04:43', '2020-01-16 01:04:43', NULL),
(192, 22, 'envoy-xuv', 1, NULL, '2020-01-16 01:05:33', '2020-01-16 01:05:33', NULL),
(193, 22, 'sierra', 1, NULL, '2020-01-16 01:05:50', '2020-01-16 01:05:50', NULL),
(194, 22, 'sierra-1500', 1, NULL, '2020-01-16 01:06:08', '2020-01-16 01:06:08', NULL),
(195, 22, 'sierra-2500', 1, NULL, '2020-01-16 01:06:29', '2020-01-16 01:06:29', NULL),
(196, 22, 'sierra-2500-hd', 1, NULL, '2020-01-16 01:06:45', '2020-01-16 01:06:45', NULL),
(197, 22, 'sierra-3500hd', 1, NULL, '2020-01-16 01:07:00', '2020-01-16 01:07:00', NULL),
(198, 22, 'sierra-denali', 1, NULL, '2020-01-16 01:07:19', '2020-01-16 01:07:19', NULL),
(199, 22, 'sierra-hybrid', 1, NULL, '2020-01-16 01:08:18', '2020-01-16 01:08:18', NULL),
(200, 22, 'sonoma', 1, NULL, '2020-01-16 01:08:53', '2020-01-16 01:08:53', NULL),
(201, 22, 'terrain', 1, NULL, '2020-01-16 01:09:15', '2020-01-16 01:09:15', NULL),
(202, 22, 'yukon', 1, NULL, '2020-01-16 01:09:31', '2020-01-16 01:09:31', NULL),
(203, 22, 'yukon-denali', 1, NULL, '2020-01-16 01:09:49', '2020-01-16 01:09:49', NULL),
(204, 22, 'yukon-xl', 1, NULL, '2020-01-16 01:10:07', '2020-01-16 01:10:07', NULL),
(205, 13, 'accord', 1, NULL, '2020-01-16 01:17:24', '2020-01-16 01:17:24', NULL),
(206, 13, 'accord-crosstour', 1, NULL, '2020-01-16 01:17:39', '2020-01-16 01:17:39', NULL),
(207, 13, 'civic-gx', 1, NULL, '2020-01-16 01:18:01', '2020-01-16 01:18:01', NULL),
(208, 13, 'civi-si', 1, NULL, '2020-01-16 01:18:24', '2020-01-16 01:18:24', NULL),
(209, 13, 'civic', 1, NULL, '2020-01-16 01:19:50', '2020-01-16 01:19:50', NULL),
(210, 13, 'cr-v', 1, NULL, '2020-01-16 01:20:17', '2020-01-16 01:20:17', NULL),
(211, 13, 'cr-z', 1, NULL, '2020-01-16 01:20:42', '2020-01-16 01:20:42', NULL),
(212, 13, 'crosstour', 1, NULL, '2020-01-16 01:20:59', '2020-01-16 01:20:59', NULL),
(213, 13, 'fcx-clarity', 1, NULL, '2020-01-16 01:21:18', '2020-01-16 01:21:18', NULL),
(214, 13, 'fit', 1, NULL, '2020-01-16 01:21:38', '2020-01-16 01:21:38', NULL),
(215, 13, 'insight', 1, NULL, '2020-01-16 01:22:02', '2020-01-16 01:22:02', NULL),
(216, 13, 'passport', 1, NULL, '2020-01-16 01:22:25', '2020-01-16 01:22:25', NULL),
(217, 13, 'pilot', 1, NULL, '2020-01-16 01:23:06', '2020-01-16 01:23:06', NULL),
(218, 13, 'prelude', 1, NULL, '2020-01-16 01:24:02', '2020-01-16 01:24:02', NULL),
(219, 13, 'ridgeline', 1, NULL, '2020-01-16 01:24:48', '2020-01-16 01:24:48', NULL),
(220, 13, 's2000', 1, NULL, '2020-01-16 01:25:06', '2020-01-16 01:25:06', NULL),
(221, 13, 'odyssey', 1, NULL, '2020-01-16 01:25:29', '2020-01-16 01:25:29', NULL),
(222, 24, 'h1', 1, NULL, '2020-01-16 01:35:41', '2020-01-16 01:35:41', NULL),
(223, 24, 'h2', 1, NULL, '2020-01-16 01:35:59', '2020-01-16 01:35:59', NULL),
(224, 24, 'h2-sut', 1, NULL, '2020-01-16 01:36:20', '2020-01-16 01:36:20', NULL),
(225, 24, 'h2-suv', 1, NULL, '2020-01-16 01:36:34', '2020-01-16 01:36:34', NULL),
(226, 24, 'h3', 1, NULL, '2020-01-16 01:36:49', '2020-01-16 01:36:49', NULL),
(227, 24, 'h3t', 1, NULL, '2020-01-16 01:37:05', '2020-01-16 01:37:05', NULL),
(228, 1, 'azera', 1, NULL, '2020-01-16 01:39:12', '2020-01-16 01:39:12', NULL),
(229, 1, 'entourage', 1, NULL, '2020-01-16 01:40:20', '2020-01-16 01:40:20', NULL),
(230, 1, 'equus', 1, NULL, '2020-01-16 01:40:42', '2020-01-16 01:40:42', NULL),
(231, 1, 'elantra', 1, NULL, '2020-01-16 01:41:12', '2020-01-16 01:41:12', NULL),
(232, 1, 'genesis-coupe', 1, NULL, '2020-01-16 01:41:32', '2020-01-16 01:41:32', NULL),
(233, 1, 'genesis', 1, NULL, '2020-01-16 01:41:53', '2020-01-16 01:41:53', NULL),
(234, 1, 'tucson', 1, NULL, '2020-01-16 01:42:14', '2020-01-16 01:42:14', NULL),
(235, 1, 'tiburon', 1, NULL, '2020-01-16 01:42:30', '2020-01-16 01:42:30', NULL),
(236, 1, 'truck', 1, NULL, '2020-01-16 01:42:50', '2020-01-16 01:42:50', NULL),
(237, 1, 'tourism', 1, NULL, '2020-01-16 01:43:10', '2020-01-16 01:43:10', NULL),
(238, 1, 'veracruz', 1, NULL, '2020-01-16 01:43:33', '2020-01-16 01:43:33', NULL),
(239, 1, 'veloster', 1, NULL, '2020-01-16 01:43:50', '2020-01-16 01:43:50', NULL),
(240, 1, 'xg300', 1, NULL, '2020-01-16 01:44:08', '2020-01-16 01:44:08', NULL),
(241, 1, 'xg350', 1, NULL, '2020-01-16 01:44:24', '2020-01-16 01:44:24', NULL),
(242, 25, 'ex', 1, NULL, '2020-01-16 01:48:51', '2020-01-16 01:48:51', NULL),
(243, 25, 'fx', 1, NULL, '2020-01-16 01:49:07', '2020-01-16 01:49:07', NULL),
(244, 25, 'fx30d', 1, NULL, '2020-01-16 01:49:29', '2020-01-16 01:49:29', NULL),
(245, 25, 'g', 1, NULL, '2020-01-16 01:49:55', '2020-01-16 01:49:55', NULL),
(246, 25, 'g25', 1, NULL, '2020-01-16 01:50:23', '2020-01-16 01:50:23', NULL),
(247, 25, 'g35', 1, NULL, '2020-01-16 01:50:46', '2020-01-16 01:50:46', NULL),
(248, 25, 'g37', 1, NULL, '2020-01-16 01:51:02', '2020-01-16 01:51:02', NULL),
(249, 25, 'i', 1, NULL, '2020-01-16 01:51:23', '2020-01-16 01:51:23', NULL),
(250, 25, 'ipl-g', 1, NULL, '2020-01-16 01:51:39', '2020-01-16 01:51:39', NULL),
(251, 25, 'jx', 1, NULL, '2020-01-16 01:51:59', '2020-01-16 01:51:59', NULL),
(252, 25, 'm', 1, NULL, '2020-01-16 01:52:28', '2020-01-16 01:52:28', NULL),
(253, 25, 'q', 1, NULL, '2020-01-16 01:52:48', '2020-01-16 01:52:48', NULL),
(254, 25, 'qx', 1, NULL, '2020-01-16 01:53:07', '2020-01-16 01:53:07', NULL),
(255, 25, 'qx56', 1, NULL, '2020-01-16 01:53:26', '2020-01-16 01:53:26', NULL),
(256, 26, 'ascender', 1, NULL, '2020-01-16 01:56:36', '2020-01-16 01:56:36', NULL),
(257, 26, 'axiom', 1, NULL, '2020-01-16 01:56:52', '2020-01-16 01:56:52', NULL),
(258, 26, 'd-max', 1, NULL, '2020-01-16 01:57:12', '2020-01-16 01:57:12', NULL),
(259, 26, 'f-series-1', 1, NULL, '2020-01-16 01:57:27', '2020-01-16 01:57:27', NULL),
(260, 26, 'giga', 1, NULL, '2020-01-16 01:57:46', '2020-01-16 01:57:46', NULL),
(261, 26, 'hombre', 1, NULL, '2020-01-16 01:58:19', '2020-01-16 01:58:19', NULL),
(262, 26, 'hombre-space', 1, NULL, '2020-01-16 01:58:36', '2020-01-16 01:58:36', NULL),
(263, 26, 'i-280', 1, NULL, '2020-01-16 01:59:04', '2020-01-16 01:59:04', NULL),
(264, 26, 'i-290', 1, NULL, '2020-01-16 01:59:22', '2020-01-16 01:59:22', NULL),
(265, 26, 'i-350', 1, NULL, '2020-01-16 01:59:45', '2020-01-16 01:59:45', NULL),
(266, 26, 'i-370', 1, NULL, '2020-01-16 02:00:04', '2020-01-16 02:00:04', NULL),
(267, 26, 'i-series', 1, NULL, '2020-01-16 02:00:24', '2020-01-16 02:00:24', NULL),
(268, 26, 'mu-x', 1, NULL, '2020-01-16 02:00:40', '2020-01-16 02:00:40', NULL),
(269, 26, 'n-series', 1, NULL, '2020-01-16 02:00:54', '2020-01-16 02:00:54', NULL),
(270, 26, 'rodeo', 1, NULL, '2020-01-16 02:01:09', '2020-01-16 02:01:09', NULL),
(271, 26, 'rodeo-sport', 1, NULL, '2020-01-16 02:01:23', '2020-01-16 02:01:23', NULL),
(272, 26, 'space', 1, NULL, '2020-01-16 02:01:36', '2020-01-16 02:01:36', NULL),
(273, 26, 'trooper', 1, NULL, '2020-01-16 02:01:50', '2020-01-16 02:01:50', NULL),
(274, 26, 'vehicross', 1, NULL, '2020-01-16 02:02:09', '2020-01-16 02:02:09', NULL),
(275, 27, 's-type', 1, NULL, '2020-01-16 02:04:55', '2020-01-16 02:04:55', NULL),
(276, 27, 'x-types', 1, NULL, '2020-01-16 02:05:12', '2020-01-16 02:05:12', NULL),
(277, 27, 'xj', 1, NULL, '2020-01-16 02:05:49', '2020-01-16 02:05:49', NULL),
(278, 27, 'xj-series', 1, NULL, '2020-01-16 02:06:32', '2020-01-16 02:06:32', NULL),
(279, 27, 'xk', 1, NULL, '2020-01-16 02:06:47', '2020-01-16 02:06:47', NULL),
(280, 27, 'xk-series', 1, NULL, '2020-01-16 02:07:08', '2020-01-16 02:07:08', NULL),
(281, 27, 'xf', 1, NULL, '2020-01-16 02:07:39', '2020-01-16 02:07:39', NULL),
(282, 28, 'cherokee', 1, NULL, '2020-01-16 02:09:22', '2020-01-16 02:09:22', NULL),
(283, 28, 'commander', 1, NULL, '2020-01-16 02:09:38', '2020-01-16 02:09:38', NULL),
(284, 28, 'compass', 1, NULL, '2020-01-16 02:09:59', '2020-01-16 02:09:59', NULL),
(285, 28, 'grand-cherokee', 1, NULL, '2020-01-16 02:10:22', '2020-01-16 02:10:22', NULL),
(286, 28, 'liberty', 1, NULL, '2020-01-16 02:10:36', '2020-01-16 02:10:36', NULL),
(287, 28, 'patriot', 1, NULL, '2020-01-16 02:10:53', '2020-01-16 02:10:53', NULL),
(288, 28, 'renegade', 1, NULL, '2020-01-16 02:11:09', '2020-01-16 02:11:09', NULL),
(289, 28, 'wrangler', 1, NULL, '2020-01-16 02:11:26', '2020-01-16 02:11:26', NULL),
(290, 7, 'borrego', 1, NULL, '2020-01-16 02:14:00', '2020-01-16 02:14:00', NULL),
(291, 7, 'carens', 1, NULL, '2020-01-16 02:14:15', '2020-01-16 02:14:15', NULL),
(292, 7, 'forte', 1, NULL, '2020-01-16 02:14:32', '2020-01-16 02:14:32', NULL),
(293, 7, 'mentor', 1, NULL, '2020-01-16 02:14:53', '2020-01-16 02:14:53', NULL),
(294, 7, 'mohave', 1, NULL, '2020-01-16 02:15:06', '2020-01-16 02:15:06', NULL),
(295, 7, 'morning', 1, NULL, '2020-01-16 02:15:19', '2020-01-16 02:15:19', NULL),
(296, 7, 'matiz', 1, NULL, '2020-01-16 02:15:35', '2020-01-16 02:15:35', NULL),
(297, 7, 'optima', 1, NULL, '2020-01-16 02:15:56', '2020-01-16 02:15:56', NULL),
(298, 7, 'rondo', 1, NULL, '2020-01-16 02:16:14', '2020-01-16 02:16:14', NULL),
(299, 7, 'rio5', 1, NULL, '2020-01-16 02:16:45', '2020-01-16 02:16:45', NULL),
(300, 7, 'rio', 1, NULL, '2020-01-16 02:17:03', '2020-01-16 02:17:03', NULL),
(301, 7, 'sedona', 1, NULL, '2020-01-16 02:17:19', '2020-01-16 02:17:19', NULL),
(302, 7, 'spectra', 1, NULL, '2020-01-16 02:17:33', '2020-01-16 02:17:33', NULL),
(303, 7, 'spectra5', 1, NULL, '2020-01-16 02:17:47', '2020-01-16 02:17:47', NULL),
(304, 7, 'sportage', 1, NULL, '2020-01-16 02:18:04', '2020-01-16 02:18:04', NULL),
(305, 7, 'sephia', 1, NULL, '2020-01-16 02:18:17', '2020-01-16 02:18:17', NULL),
(306, 7, 'sorento', 1, NULL, '2020-01-16 02:18:31', '2020-01-16 02:18:31', NULL),
(307, 7, 'soul', 1, NULL, '2020-01-16 02:18:46', '2020-01-16 02:18:46', NULL),
(308, 7, 'visto', 1, NULL, '2020-01-16 02:18:59', '2020-01-16 02:18:59', NULL),
(309, 29, 'aventador', 1, NULL, '2020-01-16 02:20:37', '2020-01-16 02:20:37', NULL),
(310, 29, 'diablo', 1, NULL, '2020-01-16 02:21:03', '2020-01-16 02:21:03', NULL),
(311, 29, 'gailardo', 1, NULL, '2020-01-16 02:21:22', '2020-01-16 02:21:22', NULL),
(312, 29, 'huracan', 1, NULL, '2020-01-16 02:21:37', '2020-01-16 02:21:37', NULL),
(313, 29, 'murcielago-lp640', 1, NULL, '2020-01-16 02:21:52', '2020-01-16 02:21:52', NULL),
(314, 29, 'murcieago', 1, NULL, '2020-01-16 02:22:07', '2020-01-16 02:22:07', NULL),
(315, 29, 'reventon', 1, NULL, '2020-01-16 02:22:22', '2020-01-16 02:22:22', NULL),
(316, 29, 'urus', 1, NULL, '2020-01-16 02:22:37', '2020-01-16 02:22:37', NULL),
(317, 30, 'defender', 1, NULL, '2020-01-16 02:25:57', '2020-01-16 02:25:57', NULL),
(318, 30, 'defender-110', 1, NULL, '2020-01-16 02:26:20', '2020-01-16 02:26:20', NULL),
(319, 30, 'defender-90', 1, NULL, '2020-01-16 02:26:39', '2020-01-16 02:26:39', NULL),
(320, 30, 'defender-ice-edition', 1, NULL, '2020-01-16 02:27:06', '2020-01-16 02:27:06', NULL),
(321, 30, 'discovery', 1, NULL, '2020-01-16 02:27:21', '2020-01-16 02:27:21', NULL),
(322, 30, 'discovery-3', 1, NULL, '2020-01-16 02:27:36', '2020-01-16 02:27:36', NULL),
(323, 30, 'discovery-4', 1, NULL, '2020-01-16 02:27:56', '2020-01-16 02:27:56', NULL),
(324, 30, 'discovery-sport', 1, NULL, '2020-01-16 02:28:10', '2020-01-16 02:28:10', NULL),
(325, 30, 'discovery-series-2', 1, NULL, '2020-01-16 02:28:25', '2020-01-16 02:28:25', NULL),
(326, 30, 'freelander', 1, NULL, '2020-01-16 02:28:41', '2020-01-16 02:28:41', NULL),
(327, 30, 'lr2', 1, NULL, '2020-01-16 02:29:03', '2020-01-16 02:29:03', NULL),
(328, 30, 'lr3', 1, NULL, '2020-01-16 02:29:20', '2020-01-16 02:29:20', NULL),
(329, 30, 'lr4', 1, NULL, '2020-01-16 02:29:33', '2020-01-16 02:29:33', NULL),
(330, 30, 'range-rover', 1, NULL, '2020-01-16 02:29:54', '2020-01-16 02:29:54', NULL),
(331, 30, 'range-rover-classic', 1, NULL, '2020-01-16 02:30:07', '2020-01-16 02:30:07', NULL),
(332, 30, 'range-rover-evoque', 1, NULL, '2020-01-16 02:30:28', '2020-01-16 02:30:28', NULL),
(333, 30, 'range-rover-sport', 1, NULL, '2020-01-16 02:30:43', '2020-01-16 02:30:43', NULL),
(334, 30, 'range-rover-velar', 1, NULL, '2020-01-16 02:30:57', '2020-01-16 02:30:57', NULL),
(335, 30, 'range-rover-voque', 1, NULL, '2020-01-16 02:31:18', '2020-01-16 02:31:18', NULL),
(336, 30, 'rover', 1, NULL, '2020-01-16 02:31:35', '2020-01-16 02:31:35', NULL),
(337, 30, 'sterling', 1, NULL, '2020-01-16 02:31:51', '2020-01-16 02:31:51', NULL),
(338, 32, 'ct', 1, NULL, '2020-01-16 02:34:02', '2020-01-16 02:34:02', NULL),
(339, 32, 'es', 1, NULL, '2020-01-16 02:34:22', '2020-01-16 02:34:22', NULL),
(340, 32, 'gx', 1, NULL, '2020-01-16 02:34:36', '2020-01-16 02:34:36', NULL),
(341, 32, 'gs', 1, NULL, '2020-01-16 02:34:54', '2020-01-16 02:34:54', NULL),
(342, 32, 'hs', 1, NULL, '2020-01-16 02:35:14', '2020-01-16 02:35:14', NULL),
(343, 32, 'is-f', 1, NULL, '2020-01-16 02:35:28', '2020-01-16 02:35:28', NULL),
(344, 32, 'is', 1, NULL, '2020-01-16 02:35:48', '2020-01-16 02:35:48', NULL),
(345, 32, 'lfa', 1, NULL, '2020-01-16 02:36:11', '2020-01-16 02:36:11', NULL),
(346, 32, 'ls-hybrid', 1, NULL, '2020-01-16 02:36:26', '2020-01-16 02:36:26', NULL),
(347, 32, 'ls', 1, NULL, '2020-01-16 02:37:07', '2020-01-16 02:37:07', NULL),
(348, 32, 'lx450d', 1, NULL, '2020-01-16 02:37:21', '2020-01-16 02:37:21', NULL),
(349, 32, 'lx470', 1, NULL, '2020-01-16 02:37:37', '2020-01-16 02:37:37', NULL),
(350, 32, 'lx570', 1, NULL, '2020-01-16 02:37:52', '2020-01-16 02:37:52', NULL),
(351, 32, 'lx450', 1, NULL, '2020-01-16 02:38:06', '2020-01-16 02:38:06', NULL),
(352, 32, 'nx', 1, NULL, '2020-01-16 02:38:22', '2020-01-16 02:38:22', NULL),
(353, 32, 'rc', 1, NULL, '2020-01-16 02:38:36', '2020-01-16 02:38:36', NULL),
(354, 32, 'rx450h', 1, NULL, '2020-01-16 02:38:52', '2020-01-16 02:38:52', NULL),
(355, 32, 'rx400h', 1, NULL, '2020-01-16 02:39:05', '2020-01-16 02:39:05', NULL),
(356, 32, 'rx330', 1, NULL, '2020-01-16 02:39:21', '2020-01-16 02:39:21', NULL),
(357, 32, 'rx350', 1, NULL, '2020-01-16 02:39:39', '2020-01-16 02:39:39', NULL),
(358, 36, 'rx300', 1, NULL, '2020-01-16 02:39:52', '2020-01-16 02:39:52', NULL),
(359, 32, 'sc', 1, NULL, '2020-01-16 02:40:05', '2020-01-16 02:40:05', NULL),
(360, 32, 'ux', 1, NULL, '2020-01-16 02:40:18', '2020-01-16 02:40:18', NULL),
(361, 33, 'coupe', 1, NULL, '2020-01-16 12:03:47', '2020-01-16 12:03:47', NULL),
(362, 33, 'ghibli', 1, NULL, '2020-01-16 12:04:21', '2020-01-16 12:04:21', NULL),
(363, 33, 'gran-sport', 1, NULL, '2020-01-16 12:04:59', '2020-01-16 12:04:59', NULL),
(364, 33, 'granturismo', 1, NULL, '2020-01-16 12:05:43', '2020-01-16 12:05:43', NULL),
(365, 33, 'quattroporte', 1, NULL, '2020-01-16 12:06:14', '2020-01-16 12:06:14', NULL),
(366, 33, 'spyder', 1, NULL, '2020-01-16 12:06:46', '2020-01-16 12:06:46', NULL),
(367, 34, 'bt50-pro', 1, NULL, '2020-01-16 12:09:03', '2020-01-16 12:09:03', NULL),
(368, 34, 'bt-50', 1, NULL, '2020-01-16 12:09:32', '2020-01-16 12:09:32', NULL),
(369, 34, 'cx-5', 1, NULL, '2020-01-16 12:10:01', '2020-01-16 12:10:01', NULL),
(370, 34, 'cx-7', 1, NULL, '2020-01-16 12:10:24', '2020-01-16 12:10:24', NULL),
(371, 34, 'cx-3', 1, NULL, '2020-01-16 12:10:48', '2020-01-16 12:10:48', NULL),
(372, 34, 'cx-9', 1, NULL, '2020-01-16 12:11:23', '2020-01-16 12:11:23', NULL),
(373, 34, 'cx-8', 1, NULL, '2020-01-16 12:11:47', '2020-01-16 12:11:47', NULL),
(374, 34, 'mazda2', 1, NULL, '2020-01-16 12:12:10', '2020-01-16 12:12:10', NULL),
(375, 34, 'mazda3', 1, NULL, '2020-01-16 12:12:37', '2020-01-16 12:12:37', NULL),
(376, 34, 'mazda5', 1, NULL, '2020-01-16 12:13:01', '2020-01-16 12:13:01', NULL),
(377, 34, 'mazda6', 1, NULL, '2020-01-16 12:13:37', '2020-01-16 12:13:37', NULL),
(378, 34, 'mazda6-sport', 1, NULL, '2020-01-16 12:14:09', '2020-01-16 12:14:09', NULL),
(379, 34, '626', 1, NULL, '2020-01-16 12:14:39', '2020-01-16 12:14:39', NULL),
(380, 34, 'b-series', 1, NULL, '2020-01-16 12:15:12', '2020-01-16 12:15:12', NULL),
(381, 34, 'b-series-plus', 1, NULL, '2020-01-16 12:15:42', '2020-01-16 12:15:42', NULL),
(382, 34, 'b2500', 1, NULL, '2020-01-16 12:16:08', '2020-01-16 12:16:08', NULL),
(383, 34, 'mazdaspeed-3', 1, NULL, '2020-01-16 12:16:37', '2020-01-16 12:16:37', NULL),
(384, 34, 'mazdaspeed-6', 1, NULL, '2020-01-16 12:17:01', '2020-01-16 12:17:01', NULL),
(385, 34, 'miata-mx-5', 1, NULL, '2020-01-16 12:17:31', '2020-01-16 12:17:31', NULL),
(386, 34, 'millenia', 1, NULL, '2020-01-16 12:17:54', '2020-01-16 12:17:54', NULL),
(387, 34, 'mpv', 1, NULL, '2020-01-16 12:18:19', '2020-01-16 12:18:19', NULL),
(388, 34, 'mx-3', 1, NULL, '2020-01-16 12:18:44', '2020-01-16 12:18:44', NULL),
(389, 34, 'mx-5', 1, NULL, '2020-01-16 12:19:10', '2020-01-16 12:19:10', NULL),
(390, 34, 'navajo', 1, NULL, '2020-01-16 12:19:38', '2020-01-16 12:19:38', NULL),
(391, 34, 'protege5', 1, NULL, '2020-01-16 12:20:08', '2020-01-16 12:20:08', NULL),
(392, 34, 'protege', 1, NULL, '2020-01-16 12:20:40', '2020-01-16 12:20:40', NULL),
(393, 34, 'rx-7', 1, NULL, '2020-01-16 12:21:09', '2020-01-16 12:21:09', NULL),
(394, 34, 'rx-8', 1, NULL, '2020-01-16 12:21:37', '2020-01-16 12:21:37', NULL),
(395, 34, 'tribute', 1, NULL, '2020-01-16 12:22:13', '2020-01-16 12:22:13', NULL),
(396, 35, 'cooper-countryman', 1, NULL, '2020-01-16 12:26:26', '2020-01-16 12:26:26', NULL),
(397, 35, '190e', 1, NULL, '2020-01-16 12:27:02', '2020-01-16 12:27:02', NULL),
(398, 35, '300ce', 1, NULL, '2020-01-16 12:27:32', '2020-01-16 12:27:32', NULL),
(399, 35, '300e', 1, NULL, '2020-01-16 12:28:03', '2020-01-16 12:28:03', NULL),
(400, 35, '300d', 1, NULL, '2020-01-16 12:28:41', '2020-01-16 12:28:41', NULL),
(401, 35, '300sd', 1, NULL, '2020-01-16 12:28:59', '2020-01-16 12:28:59', NULL),
(402, 35, '300te', 1, NULL, '2020-01-16 12:29:28', '2020-01-16 12:29:28', NULL),
(403, 35, '300se', 1, NULL, '2020-01-16 12:30:06', '2020-01-16 12:30:06', NULL),
(404, 35, '400se', 1, NULL, '2020-01-16 12:30:30', '2020-01-16 12:30:30', NULL),
(405, 35, '400e', 1, NULL, '2020-01-16 12:31:05', '2020-01-16 12:31:05', NULL),
(406, 35, '400sel', 1, NULL, '2020-01-16 12:31:41', '2020-01-16 12:31:41', NULL),
(407, 35, '500e', 1, NULL, '2020-01-16 12:32:29', '2020-01-16 12:32:29', NULL),
(408, 35, '500sel', 1, NULL, '2020-01-16 12:33:01', '2020-01-16 12:33:01', NULL),
(409, 35, '500sl', 1, NULL, '2020-01-16 12:33:33', '2020-01-16 12:33:33', NULL),
(410, 35, '600sec', 1, NULL, '2020-01-16 12:34:01', '2020-01-16 12:34:01', NULL),
(411, 35, '600sel', 1, NULL, '2020-01-16 12:34:27', '2020-01-16 12:34:27', NULL),
(412, 35, '600sl', 1, NULL, '2020-01-16 12:34:53', '2020-01-16 12:34:53', NULL),
(413, 35, 'slr-mclaren', 1, NULL, '2020-01-16 12:35:17', '2020-01-16 12:35:17', NULL),
(414, 35, 'a160', 1, NULL, '2020-01-16 12:35:47', '2020-01-16 12:35:47', NULL),
(415, 35, 'a170', 1, NULL, '2020-01-16 12:36:12', '2020-01-16 12:36:12', NULL),
(416, 35, 'a180', 1, NULL, '2020-01-16 12:36:42', '2020-01-16 12:36:42', NULL),
(417, 35, 'a180-cdi', 1, NULL, '2020-01-16 12:37:14', '2020-01-16 12:37:14', NULL),
(418, 35, 'a200', 1, NULL, '2020-01-16 12:37:41', '2020-01-16 12:37:41', NULL),
(419, 35, 'a250', 1, NULL, '2020-01-16 12:38:13', '2020-01-16 12:38:13', NULL),
(420, 35, 'amg-gt', 1, NULL, '2020-01-16 12:38:40', '2020-01-16 12:38:40', NULL),
(421, 35, 'b200-cdi', 1, NULL, '2020-01-16 12:39:05', '2020-01-16 12:39:05', NULL),
(422, 35, 'cl-class', 1, NULL, '2020-01-16 12:39:30', '2020-01-16 12:39:30', NULL),
(423, 35, 'cl65-amg', 1, NULL, '2020-01-16 12:39:57', '2020-01-16 12:39:57', NULL),
(424, 35, 'cls-class', 1, NULL, '2020-01-16 12:40:27', '2020-01-16 12:40:27', NULL),
(425, 35, 'clk-class', 1, NULL, '2020-01-16 12:40:55', '2020-01-16 12:40:55', NULL),
(426, 35, 'c-class', 1, NULL, '2020-01-16 12:41:21', '2020-01-16 12:41:21', NULL),
(427, 35, 'cla-class', 1, NULL, '2020-01-16 12:41:48', '2020-01-16 12:41:48', NULL),
(428, 35, 'e-class', 1, NULL, '2020-01-16 12:42:13', '2020-01-16 12:42:13', NULL),
(429, 35, 'g-class', 1, NULL, '2020-01-16 12:42:43', '2020-01-16 12:42:43', NULL),
(430, 35, 'g55-amg', 1, NULL, '2020-01-16 12:43:14', '2020-01-16 12:43:14', NULL),
(431, 35, 'gl-class', 1, NULL, '2020-01-16 12:43:41', '2020-01-16 12:43:41', NULL),
(432, 35, 'glk-class', 1, NULL, '2020-01-16 12:44:11', '2020-01-16 12:44:11', NULL),
(433, 35, 'mb-140', 1, NULL, '2020-01-16 12:44:32', '2020-01-16 12:44:32', NULL),
(434, 35, 'm-class', 1, NULL, '2020-01-16 12:45:02', '2020-01-16 12:45:02', NULL),
(435, 35, 'r-class', 1, NULL, '2020-01-16 12:45:38', '2020-01-16 12:45:38', NULL),
(436, 35, 's-class', 1, NULL, '2020-01-16 12:45:59', '2020-01-16 12:45:59', NULL),
(437, 35, 'sl-class', 1, NULL, '2020-01-16 12:46:18', '2020-01-16 12:46:18', NULL),
(438, 35, 'sl65-amg', 1, NULL, '2020-01-16 12:46:56', '2020-01-16 12:46:56', NULL),
(439, 35, 'slk-class', 1, NULL, '2020-01-16 12:47:26', '2020-01-16 12:47:26', NULL),
(440, 35, 'slk55-amg', 1, NULL, '2020-01-16 12:47:47', '2020-01-16 12:47:47', NULL),
(441, 35, 'sls-amg', 1, NULL, '2020-01-16 12:48:12', '2020-01-16 12:48:12', NULL),
(442, 35, 'sls-class', 1, NULL, '2020-01-16 12:48:35', '2020-01-16 12:48:35', NULL),
(443, 35, 'sprinter', 1, NULL, '2020-01-16 12:48:57', '2020-01-16 12:48:57', NULL),
(444, 35, 'sprinter-2500', 1, NULL, '2020-01-16 12:49:20', '2020-01-16 12:49:20', NULL),
(445, 35, 'sprinter-3500', 1, NULL, '2020-01-16 12:49:46', '2020-01-16 12:49:46', NULL),
(446, 35, 'w123', 1, NULL, '2020-01-16 12:50:10', '2020-01-16 12:50:10', NULL),
(447, 35, 'w126', 1, NULL, '2020-01-16 12:50:30', '2020-01-16 12:50:30', NULL),
(448, 35, 'w201', 1, NULL, '2020-01-16 12:50:54', '2020-01-16 12:50:54', NULL),
(449, 36, 'cooper', 1, NULL, '2020-01-16 13:55:16', '2020-01-16 13:55:16', NULL),
(450, 36, 'cooper-clubman', 1, NULL, '2020-01-16 13:55:32', '2020-01-16 13:55:32', NULL),
(451, 36, 'convertible', 1, NULL, '2020-01-16 13:55:43', '2020-01-16 13:55:43', NULL),
(452, 36, 'countryman', 1, NULL, '2020-01-16 13:55:55', '2020-01-16 13:55:55', NULL),
(453, 36, 'hatch', 1, NULL, '2020-01-16 13:56:07', '2020-01-16 13:56:07', NULL),
(454, 37, 'asx', 1, NULL, '2020-01-16 13:58:44', '2020-01-16 13:58:44', NULL),
(455, 37, 'challenger', 1, NULL, '2020-01-16 13:59:22', '2020-01-16 13:59:22', NULL),
(456, 37, 'colt', 1, NULL, '2020-01-16 13:59:36', '2020-01-16 13:59:36', NULL),
(457, 37, 'chariot', 1, NULL, '2020-01-16 13:59:48', '2020-01-16 13:59:48', NULL),
(458, 37, 'enddeavor', 1, NULL, '2020-01-16 14:00:09', '2020-01-16 14:00:09', NULL),
(459, 37, 'eclipse', 1, NULL, '2020-01-16 14:00:22', '2020-01-16 14:00:22', NULL),
(460, 37, 'fighter', 1, NULL, '2020-01-16 14:00:39', '2020-01-16 14:00:39', NULL),
(461, 37, 'fv-6x4', 1, NULL, '2020-01-16 14:01:05', '2020-01-16 14:01:05', NULL),
(462, 37, 'galant', 1, NULL, '2020-01-16 14:01:29', '2020-01-16 14:01:29', NULL),
(463, 37, 'i-miev', 1, NULL, '2020-01-16 14:01:46', '2020-01-16 14:01:46', NULL),
(464, 37, 'lancer', 1, NULL, '2020-01-16 14:02:00', '2020-01-16 14:02:00', NULL),
(465, 37, 'l300', 1, NULL, '2020-01-16 14:02:12', '2020-01-16 14:02:12', NULL),
(466, 37, 'lancer-evolution', 1, NULL, '2020-01-16 14:02:23', '2020-01-16 14:02:23', NULL),
(467, 37, 'mighty-max', 1, NULL, '2020-01-16 14:02:38', '2020-01-16 14:02:38', NULL),
(468, 37, 'mighty-max-macro', 1, NULL, '2020-01-16 14:03:01', '2020-01-16 14:03:01', NULL),
(469, 37, 'montero', 1, NULL, '2020-01-16 14:03:14', '2020-01-16 14:03:14', NULL),
(470, 37, 'montero-sport', 1, NULL, '2020-01-16 14:03:32', '2020-01-16 14:03:32', NULL),
(471, 37, 'mirage', 1, NULL, '2020-01-16 14:03:45', '2020-01-16 14:03:45', NULL),
(472, 37, 'outlander-sport', 1, NULL, '2020-01-16 14:03:59', '2020-01-16 14:03:59', NULL),
(473, 37, 'outlander', 1, NULL, '2020-01-16 14:04:13', '2020-01-16 14:04:13', NULL),
(474, 37, 'pajero', 1, NULL, '2020-01-16 14:04:24', '2020-01-16 14:04:24', NULL),
(475, 37, 'pajero-io', 1, NULL, '2020-01-16 14:04:35', '2020-01-16 14:04:35', NULL),
(476, 37, 'pajero-sport', 1, NULL, '2020-01-16 14:04:47', '2020-01-16 14:04:47', NULL),
(477, 37, 'raider', 1, NULL, '2020-01-16 14:04:59', '2020-01-16 14:04:59', NULL),
(478, 37, 'rvr', 1, NULL, '2020-01-16 14:05:11', '2020-01-16 14:05:11', NULL),
(479, 37, 'ralliart-evo', 1, NULL, '2020-01-16 14:05:28', '2020-01-16 14:05:28', NULL),
(480, 37, 'space-1', 1, NULL, '2020-01-16 14:05:44', '2020-01-16 14:05:44', NULL),
(481, 37, 'truck-1', 1, NULL, '2020-01-16 14:05:57', '2020-01-16 14:05:57', NULL),
(482, 37, 'tundra', 1, NULL, '2020-01-16 14:06:12', '2020-01-16 14:06:12', NULL),
(483, 37, 'triton', 1, NULL, '2020-01-16 14:06:25', '2020-01-16 14:06:25', NULL),
(484, 38, '350z', 1, NULL, '2020-01-16 14:08:03', '2020-01-16 14:08:03', NULL),
(485, 38, '350z-roadster', 1, NULL, '2020-01-16 14:08:16', '2020-01-16 14:08:16', NULL),
(486, 38, '370z', 1, NULL, '2020-01-16 14:08:48', '2020-01-16 14:08:48', NULL),
(487, 38, 'altima', 1, NULL, '2020-01-16 14:09:09', '2020-01-16 14:09:09', NULL),
(488, 38, 'armada', 1, NULL, '2020-01-16 14:09:25', '2020-01-16 14:09:25', NULL),
(489, 38, 'frontier', 1, NULL, '2020-01-16 14:09:36', '2020-01-16 14:09:36', NULL),
(490, 38, 'gt-r', 1, NULL, '2020-01-16 14:09:46', '2020-01-16 14:09:46', NULL),
(491, 38, 'juke', 1, NULL, '2020-01-16 14:09:57', '2020-01-16 14:09:57', NULL),
(492, 38, 'leaf', 1, NULL, '2020-01-16 14:10:08', '2020-01-16 14:10:08', NULL),
(493, 38, 'maxima', 1, NULL, '2020-01-16 14:10:22', '2020-01-16 14:10:22', NULL),
(494, 38, 'murano', 1, NULL, '2020-01-16 14:10:36', '2020-01-16 14:10:36', NULL),
(495, 38, 'navara', 1, NULL, '2020-01-16 14:10:50', '2020-01-16 14:10:50', NULL),
(496, 38, 'pathfinder-armada', 1, NULL, '2020-01-16 14:11:03', '2020-01-16 14:11:03', NULL),
(497, 38, 'pathfinder', 1, NULL, '2020-01-16 14:11:15', '2020-01-16 14:11:15', NULL),
(498, 38, 'patrol', 1, NULL, '2020-01-16 14:11:29', '2020-01-16 14:11:29', NULL),
(499, 38, 'quest', 1, NULL, '2020-01-16 14:11:41', '2020-01-16 14:11:41', NULL),
(500, 38, 'rogue', 1, NULL, '2020-01-16 14:11:56', '2020-01-16 14:11:56', NULL),
(501, 38, 'sentra', 1, NULL, '2020-01-16 14:12:06', '2020-01-16 14:12:06', NULL),
(502, 38, 'stanza', 1, NULL, '2020-01-16 14:12:21', '2020-01-16 14:12:21', NULL),
(503, 38, 'skyline', 1, NULL, '2020-01-16 14:12:37', '2020-01-16 14:12:37', NULL),
(504, 38, 'titan', 1, NULL, '2020-01-16 14:12:49', '2020-01-16 14:12:49', NULL),
(505, 38, 'versa', 1, NULL, '2020-01-16 14:12:59', '2020-01-16 14:12:59', NULL),
(506, 38, 'x-trail', 1, NULL, '2020-01-16 14:13:11', '2020-01-16 14:13:11', NULL),
(507, 39, '207', 1, NULL, '2020-01-16 14:23:04', '2020-01-16 14:23:04', NULL),
(508, 40, '718', 1, NULL, '2020-01-16 14:25:04', '2020-01-16 14:25:04', NULL),
(509, 40, '911', 1, NULL, '2020-01-16 14:25:16', '2020-01-16 14:25:16', NULL),
(510, 40, '911-carrera', 1, NULL, '2020-01-16 14:25:28', '2020-01-16 14:25:28', NULL),
(511, 40, 'boxster', 1, NULL, '2020-01-16 14:25:41', '2020-01-16 14:25:41', NULL),
(512, 40, 'carrera-gt', 1, NULL, '2020-01-16 14:25:52', '2020-01-16 14:25:52', NULL),
(513, 40, 'cayenne', 1, NULL, '2020-01-16 14:26:04', '2020-01-16 14:26:04', NULL),
(514, 40, 'cayman', 1, NULL, '2020-01-16 14:26:15', '2020-01-16 14:26:15', NULL),
(515, 40, 'macan', 1, NULL, '2020-01-16 14:26:26', '2020-01-16 14:26:26', NULL),
(516, 40, 'panamera', 1, NULL, '2020-01-16 14:26:41', '2020-01-16 14:26:41', NULL),
(517, 41, '1500-1', 1, NULL, '2020-01-16 14:27:13', '2020-01-16 14:27:13', NULL),
(518, 41, '2500-1', 1, NULL, '2020-01-16 14:27:32', '2020-01-16 14:27:32', NULL),
(519, 41, '3500-2', 1, NULL, '2020-01-16 14:27:58', '2020-01-16 14:27:58', NULL),
(520, 41, 'dakota', 1, NULL, '2020-01-16 14:28:45', '2020-01-16 14:28:45', NULL),
(521, 43, 'dawn', 1, NULL, '2020-01-16 14:32:00', '2020-01-16 14:32:00', NULL),
(522, 43, 'ghost', 1, NULL, '2020-01-16 14:32:28', '2020-01-16 14:32:28', NULL),
(523, 43, 'phamtom', 1, NULL, '2020-01-16 14:32:47', '2020-01-16 14:32:47', NULL),
(524, 43, 'wraith', 1, NULL, '2020-01-16 14:33:02', '2020-01-16 14:33:02', NULL),
(525, 44, 'chairman', 1, NULL, '2020-01-16 14:33:56', '2020-01-16 14:33:56', NULL),
(526, 44, 'istana', 1, NULL, '2020-01-16 14:34:08', '2020-01-16 14:34:08', NULL),
(527, 44, 'kyron', 1, NULL, '2020-01-16 14:34:20', '2020-01-16 14:34:20', NULL),
(528, 44, 'korando', 1, NULL, '2020-01-16 14:34:33', '2020-01-16 14:34:33', NULL),
(529, 44, 'musso', 1, NULL, '2020-01-16 14:34:46', '2020-01-16 14:34:46', NULL),
(530, 44, 'rodius', 1, NULL, '2020-01-16 14:34:58', '2020-01-16 14:34:58', NULL),
(531, 45, 'brz', 1, NULL, '2020-01-16 14:35:56', '2020-01-16 14:35:56', NULL),
(532, 45, 'forester', 1, NULL, '2020-01-16 14:36:08', '2020-01-16 14:36:08', NULL),
(533, 45, 'impreza-wrx', 1, NULL, '2020-01-16 14:36:22', '2020-01-16 14:36:22', NULL),
(534, 45, 'impreza', 1, NULL, '2020-01-16 14:36:36', '2020-01-16 14:36:36', NULL),
(535, 45, 'legacy', 1, NULL, '2020-01-16 14:36:47', '2020-01-16 14:36:47', NULL),
(536, 45, 'outback', 1, NULL, '2020-01-16 14:37:00', '2020-01-16 14:37:00', NULL),
(537, 45, 'outback-sport', 1, NULL, '2020-01-16 14:37:17', '2020-01-16 14:37:17', NULL),
(538, 45, 'tribeca', 1, NULL, '2020-01-16 14:37:29', '2020-01-16 14:37:29', NULL),
(539, 46, 'aerio', 1, NULL, '2020-01-16 14:38:17', '2020-01-16 14:38:17', NULL),
(540, 46, 'cultus', 1, NULL, '2020-01-16 14:38:33', '2020-01-16 14:38:33', NULL),
(541, 46, 'daewoo-lacetti', 1, NULL, '2020-01-16 14:38:54', '2020-01-16 14:38:54', NULL),
(542, 46, 'daewoo-magnus', 1, NULL, '2020-01-16 14:39:06', '2020-01-16 14:39:06', NULL),
(543, 46, 'equator', 1, NULL, '2020-01-16 14:39:20', '2020-01-16 14:39:20', NULL),
(544, 46, 'forenza', 1, NULL, '2020-01-16 14:39:35', '2020-01-16 14:39:35', NULL),
(545, 46, 'grand-vitara', 1, NULL, '2020-01-16 14:39:49', '2020-01-16 14:39:49', NULL),
(546, 46, 'kizashi', 1, NULL, '2020-01-16 14:40:04', '2020-01-16 14:40:04', NULL),
(547, 46, 'reno', 1, NULL, '2020-01-16 14:40:24', '2020-01-16 14:40:24', NULL),
(548, 46, 'swift', 1, NULL, '2020-01-16 14:40:36', '2020-01-16 14:40:36', NULL),
(549, 46, 'sx4', 1, NULL, '2020-01-16 14:40:48', '2020-01-16 14:40:48', NULL),
(550, 46, 'verona', 1, NULL, '2020-01-16 14:41:00', '2020-01-16 14:41:00', NULL),
(551, 46, 'vitara', 1, NULL, '2020-01-16 14:41:13', '2020-01-16 14:41:13', NULL),
(552, 46, 'xl-7', 1, NULL, '2020-01-16 14:41:34', '2020-01-16 14:41:34', NULL),
(553, 47, 'model-s', 1, NULL, '2020-01-16 14:43:19', '2020-01-16 14:43:19', NULL),
(554, 47, 'roadster', 1, NULL, '2020-01-16 14:43:36', '2020-01-16 14:43:36', NULL),
(555, 48, '4runner', 1, NULL, '2020-01-16 14:44:23', '2020-01-16 14:44:23', NULL),
(556, 48, '86', 1, NULL, '2020-01-16 14:46:00', '2020-01-16 14:46:00', NULL),
(557, 48, 'alphard', 1, NULL, '2020-01-16 14:46:12', '2020-01-16 14:46:12', NULL),
(558, 48, 'avalon', 1, NULL, '2020-01-16 14:46:22', '2020-01-16 14:46:22', NULL),
(559, 48, 'aristo', 1, NULL, '2020-01-16 14:46:31', '2020-01-16 14:46:31', NULL),
(560, 48, 'aurion', 1, NULL, '2020-01-16 14:46:42', '2020-01-16 14:46:42', NULL),
(561, 48, 'avanza', 1, NULL, '2020-01-16 14:46:55', '2020-01-16 14:46:55', NULL),
(562, 48, 'camry-hybrid', 1, NULL, '2020-01-16 14:47:19', '2020-01-16 14:47:19', NULL),
(563, 48, 'c-hr', 1, NULL, '2020-01-16 14:47:39', '2020-01-16 14:47:39', NULL),
(564, 48, 'camry', 1, NULL, '2020-01-16 14:47:54', '2020-01-16 14:47:54', NULL),
(565, 48, 'camry-vienta', 1, NULL, '2020-01-16 14:48:05', '2020-01-16 14:48:05', NULL),
(566, 48, 'celica', 1, NULL, '2020-01-16 14:48:16', '2020-01-16 14:48:16', NULL),
(567, 48, 'corolla', 1, NULL, '2020-01-16 14:48:30', '2020-01-16 14:48:30', NULL),
(568, 48, 'corona-avante', 1, NULL, '2020-01-16 14:48:44', '2020-01-16 14:48:44', NULL),
(569, 48, 'cressida', 1, NULL, '2020-01-16 14:48:55', '2020-01-16 14:48:55', NULL),
(570, 48, 'crown', 1, NULL, '2020-01-16 14:49:05', '2020-01-16 14:49:05', NULL),
(571, 48, 'dyna', 1, NULL, '2020-01-16 14:49:15', '2020-01-16 14:49:15', NULL),
(572, 48, 'echo', 1, NULL, '2020-01-16 14:49:25', '2020-01-16 14:49:25', NULL),
(573, 48, 'esquire', 1, NULL, '2020-01-16 14:49:35', '2020-01-16 14:49:35', NULL),
(574, 48, 'estima', 1, NULL, '2020-01-16 14:49:45', '2020-01-16 14:49:45', NULL),
(575, 48, 'fortuner', 1, NULL, '2020-01-16 14:49:56', '2020-01-16 14:49:56', NULL),
(576, 48, 'grand-hiace', 1, NULL, '2020-01-16 14:50:08', '2020-01-16 14:50:08', NULL),
(577, 48, 'granvia', 1, NULL, '2020-01-16 14:50:18', '2020-01-16 14:50:18', NULL),
(578, 48, 'highlander-hybird', 1, NULL, '2020-01-16 14:50:31', '2020-01-16 14:50:31', NULL),
(579, 48, 'highlander', 1, NULL, '2020-01-16 14:50:41', '2020-01-16 14:50:41', NULL),
(580, 48, 'harrier', 1, NULL, '2020-01-16 14:50:52', '2020-01-16 14:50:52', NULL),
(581, 48, 'hiace', 1, NULL, '2020-01-16 14:51:06', '2020-01-16 14:51:06', NULL),
(582, 48, 'hiace-sbv', 1, NULL, '2020-01-16 14:51:18', '2020-01-16 14:51:18', NULL),
(583, 48, 'hilux-revo', 1, NULL, '2020-01-16 14:51:28', '2020-01-16 14:51:28', NULL),
(584, 48, 'hilux-vigo', 1, NULL, '2020-01-16 14:51:39', '2020-01-16 14:51:39', NULL),
(585, 48, 'hilux', 1, NULL, '2020-01-16 14:51:52', '2020-01-16 14:51:52', NULL),
(586, 48, 'hilux-surf', 1, NULL, '2020-01-16 14:52:04', '2020-01-16 14:52:04', NULL),
(587, 48, 'ipsum', 1, NULL, '2020-01-16 14:52:15', '2020-01-16 14:52:15', NULL),
(588, 48, 'iq', 1, NULL, '2020-01-16 14:52:26', '2020-01-16 14:52:26', NULL),
(589, 48, 'kluger', 1, NULL, '2020-01-16 14:52:36', '2020-01-16 14:52:36', NULL),
(590, 48, 'landcruiser', 1, NULL, '2020-01-16 14:52:48', '2020-01-16 14:52:48', NULL),
(591, 48, 'landcruiser-prado', 1, NULL, '2020-01-16 14:53:01', '2020-01-16 14:53:01', NULL),
(592, 48, 'matrix', 1, NULL, '2020-01-16 14:53:13', '2020-01-16 14:53:13', NULL),
(593, 48, 'mr2', 1, NULL, '2020-01-16 14:53:23', '2020-01-16 14:53:23', NULL),
(594, 48, 'noah', 1, NULL, '2020-01-16 14:53:34', '2020-01-16 14:53:34', NULL),
(595, 48, 'previa', 1, NULL, '2020-01-16 14:53:46', '2020-01-16 14:53:46', NULL),
(596, 48, 'paseo', 1, NULL, '2020-01-16 14:53:57', '2020-01-16 14:53:57', NULL),
(597, 48, 'prius', 1, NULL, '2020-01-16 14:54:11', '2020-01-16 14:54:11', NULL),
(598, 48, 'prius-c', 1, NULL, '2020-01-16 14:54:21', '2020-01-16 14:54:21', NULL),
(599, 48, 'prius-v', 1, NULL, '2020-01-16 14:54:31', '2020-01-16 14:54:31', NULL),
(600, 48, 'ractis', 1, NULL, '2020-01-16 14:54:42', '2020-01-16 14:54:42', NULL),
(601, 48, 'rav4', 1, NULL, '2020-01-16 14:54:51', '2020-01-16 14:54:51', NULL),
(602, 48, 'regius', 1, NULL, '2020-01-16 14:55:01', '2020-01-16 14:55:01', NULL),
(603, 48, 'supra', 1, NULL, '2020-01-16 14:55:10', '2020-01-16 14:55:10', NULL),
(604, 48, 'solara', 1, NULL, '2020-01-16 14:55:29', '2020-01-16 14:55:29', NULL),
(605, 48, 'sequoia', 1, NULL, '2020-01-16 14:55:38', '2020-01-16 14:55:38', NULL),
(606, 48, 'sienna', 1, NULL, '2020-01-16 14:55:48', '2020-01-16 14:55:48', NULL),
(607, 48, 'scion', 1, NULL, '2020-01-16 14:55:58', '2020-01-16 14:55:58', NULL),
(608, 48, 'truck-xtracab-sr5', 1, NULL, '2020-01-16 14:56:07', '2020-01-16 14:56:07', NULL),
(609, 48, 't100', 1, NULL, '2020-01-16 14:56:18', '2020-01-16 14:56:18', NULL),
(610, 48, 'tacoma', 1, NULL, '2020-01-16 14:56:28', '2020-01-16 14:56:28', NULL),
(611, 48, 'tundramax', 1, NULL, '2020-01-16 14:56:39', '2020-01-16 14:56:39', NULL),
(612, 48, 'tundra-1', 1, NULL, '2020-01-16 14:56:57', '2020-01-16 14:56:57', NULL),
(613, 48, 'tarago', 1, NULL, '2020-01-16 14:57:08', '2020-01-16 14:57:08', NULL),
(614, 48, 'vellfire', 1, NULL, '2020-01-16 14:57:34', '2020-01-16 14:57:34', NULL),
(615, 48, 'venza', 1, NULL, '2020-01-16 14:57:47', '2020-01-16 14:57:47', NULL),
(616, 48, 'vienta', 1, NULL, '2020-01-16 14:57:58', '2020-01-16 14:57:58', NULL),
(617, 48, 'xtra', 1, NULL, '2020-01-16 14:58:08', '2020-01-16 14:58:08', NULL);
INSERT INTO `vehicle_models` (`id`, `makes_id`, `slug`, `status`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(618, 48, 'voxy', 1, NULL, '2020-01-16 14:58:18', '2020-01-16 14:58:18', NULL),
(619, 48, 'yaris', 1, NULL, '2020-01-16 14:58:28', '2020-01-16 14:58:28', NULL),
(620, 49, 'beetle', 1, NULL, '2020-01-16 14:59:11', '2020-01-16 14:59:11', NULL),
(621, 49, 'cc', 1, NULL, '2020-01-16 14:59:23', '2020-01-16 14:59:23', NULL),
(622, 49, 'eos', 1, NULL, '2020-01-16 14:59:34', '2020-01-16 14:59:34', NULL),
(623, 49, 'fox', 1, NULL, '2020-01-16 14:59:44', '2020-01-16 14:59:44', NULL),
(624, 49, 'gli', 1, NULL, '2020-01-16 14:59:57', '2020-01-16 14:59:57', NULL),
(625, 49, 'golf', 1, NULL, '2020-01-16 15:00:06', '2020-01-16 15:00:06', NULL),
(626, 49, 'gti', 1, NULL, '2020-01-16 15:00:20', '2020-01-16 15:00:20', NULL),
(627, 49, 'jetta', 1, NULL, '2020-01-16 15:00:31', '2020-01-16 15:00:31', NULL),
(628, 49, 'new-beetle', 1, NULL, '2020-01-16 15:00:41', '2020-01-16 15:00:41', NULL),
(629, 49, 'passat', 1, NULL, '2020-01-16 15:00:51', '2020-01-16 15:00:51', NULL),
(630, 49, 'phaeton', 1, NULL, '2020-01-16 15:01:07', '2020-01-16 15:01:07', NULL),
(631, 49, 'r32', 1, NULL, '2020-01-16 15:01:18', '2020-01-16 15:01:18', NULL),
(632, 49, 'rio-1', 1, NULL, '2020-01-16 15:01:29', '2020-01-16 15:01:29', NULL),
(633, 49, 'routan', 1, NULL, '2020-01-16 15:01:41', '2020-01-16 15:01:41', NULL),
(634, 49, 'scirocco', 1, NULL, '2020-01-16 15:01:51', '2020-01-16 15:01:51', NULL),
(635, 49, 'tiguan', 1, NULL, '2020-01-16 15:02:00', '2020-01-16 15:02:00', NULL),
(636, 49, 'touareg-2', 1, NULL, '2020-01-16 15:02:11', '2020-01-16 15:02:11', NULL),
(637, 49, 'touareg', 1, NULL, '2020-01-16 15:02:22', '2020-01-16 15:02:22', NULL),
(638, 50, 'c70', 1, NULL, '2020-01-16 15:02:46', '2020-01-16 15:02:46', NULL),
(639, 50, 's40', 1, NULL, '2020-01-16 15:02:57', '2020-01-16 15:02:57', NULL),
(640, 50, 's60', 1, NULL, '2020-01-16 15:03:07', '2020-01-16 15:03:07', NULL),
(641, 50, 's80', 1, NULL, '2020-01-16 15:03:17', '2020-01-16 15:03:17', NULL),
(642, 50, 's90', 1, NULL, '2020-01-16 15:03:27', '2020-01-16 15:03:27', NULL),
(643, 50, 'v40', 1, NULL, '2020-01-16 15:03:37', '2020-01-16 15:03:37', NULL),
(644, 50, 'v50', 1, NULL, '2020-01-16 15:03:47', '2020-01-16 15:03:47', NULL),
(645, 50, 'v70', 1, NULL, '2020-01-16 15:03:58', '2020-01-16 15:03:58', NULL),
(646, 50, 'xc60', 1, NULL, '2020-01-16 15:04:09', '2020-01-16 15:04:09', NULL),
(647, 50, 'xc70', 1, NULL, '2020-01-16 15:04:18', '2020-01-16 15:04:18', NULL),
(648, 50, 'xc90', 1, NULL, '2020-01-16 15:04:28', '2020-01-16 15:04:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model_translations`
--

CREATE TABLE `vehicle_model_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `vehicle_model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_model_translations`
--

INSERT INTO `vehicle_model_translations` (`id`, `locale`, `name`, `vehicle_model_id`) VALUES
(1, 'en', 'Accent', 1),
(2, 'kh', 'Accent', 1),
(3, 'en', 'Allroad', 2),
(4, 'kh', 'Allroad', 2),
(5, 'en', '1500', 3),
(6, 'kh', '1500', 3),
(7, 'en', '2500', 4),
(8, 'kh', '2500', 4),
(9, 'en', 'A3', 5),
(10, 'kh', 'A3', 5),
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
(24, 'kh', 'Test_vehicle', 12),
(25, 'en', 'Suzuki Baleno', 13),
(26, 'kh', 'Suzuki Baleno', 13),
(27, 'en', 'CITY', 14),
(28, 'kh', 'CITY123!@# !@#123', 14),
(29, 'en', 'Cityy 123', 15),
(30, 'kh', 'Cityy 1234', 15),
(31, 'en', 'Atoz', 16),
(32, 'kh', 'Atoz', 16),
(33, 'en', 'Amanti', 17),
(34, 'kh', 'Amanti', 17),
(35, 'en', 'Xenon', 18),
(36, 'kh', 'Xenon', 18),
(37, 'en', '1300', 19),
(38, 'kh', '1300', 19),
(39, 'en', 'DB9 Volante', 20),
(40, 'kh', 'DB9 Volante', 20),
(41, 'en', '164', 21),
(42, 'kh', '164', 21),
(43, 'en', 'Spider', 22),
(44, 'kh', 'Spider', 22),
(45, 'en', 'DB9', 23),
(46, 'kh', 'DB9', 23),
(47, 'en', 'DBS', 24),
(48, 'kh', 'DBS', 24),
(49, 'en', 'Rapide', 25),
(50, 'kh', 'Rapide', 25),
(51, 'en', 'V12 Vantage', 26),
(52, 'kh', 'V12 Vantage', 26),
(53, 'en', 'V8 Vantage S', 27),
(54, 'kh', 'V8 Vantage S', 27),
(55, 'en', 'V8 Vantage', 28),
(56, 'kh', 'V8 Vantage', 28),
(57, 'en', 'Vanquish S', 29),
(58, 'kh', 'Vanquish S', 29),
(59, 'en', 'Vantage', 30),
(60, 'kh', 'Vantage', 30),
(61, 'en', 'Virage', 31),
(62, 'kh', 'Virage', 31),
(63, 'en', 'A4', 32),
(64, 'kh', 'A4', 32),
(65, 'en', 'A5', 33),
(66, 'kh', 'A5', 33),
(67, 'en', 'A6', 34),
(68, 'kh', 'A6', 34),
(69, 'en', 'A7', 35),
(70, 'kh', 'A7', 35),
(71, 'en', 'A8', 36),
(72, 'kh', 'A8', 36),
(73, 'en', 'Cabriolet', 37),
(74, 'kh', 'Cabriolet', 37),
(75, 'en', 'Q5', 38),
(76, 'kh', 'Q5', 38),
(77, 'en', 'Q7', 39),
(78, 'kh', 'Q7', 39),
(79, 'en', 'RS 4', 40),
(80, 'kh', 'RS 4', 40),
(81, 'en', 'RS 6', 41),
(82, 'kh', 'RS 6', 41),
(83, 'en', 'S4', 42),
(84, 'kh', 'S4', 42),
(85, 'en', 'S5', 43),
(86, 'kh', 'S5', 43),
(87, 'en', 'S6', 44),
(88, 'kh', 'S6', 44),
(89, 'en', 'S8', 45),
(90, 'kh', 'S8', 45),
(91, 'en', 'TT', 46),
(92, 'kh', 'TT', 46),
(93, 'en', 'Arnage', 47),
(94, 'kh', 'Arnage', 47),
(95, 'en', 'Azure', 48),
(96, 'kh', 'Azure', 48),
(97, 'en', 'Azure T', 49),
(98, 'kh', 'Azure T', 49),
(99, 'en', 'Brooklands', 50),
(100, 'kh', 'Brooklands', 50),
(101, 'en', 'Continental', 51),
(102, 'kh', 'Continental', 51),
(103, 'en', 'Continental Flying Spur', 52),
(104, 'kh', 'Continental Flying Spur', 52),
(105, 'en', 'Continental GT', 53),
(106, 'kh', 'Continental GT', 53),
(107, 'en', 'Continental GTC', 54),
(108, 'kh', 'Continental GTC', 54),
(109, 'en', 'Continental Super', 55),
(110, 'kh', 'Continental Super', 55),
(111, 'en', 'Mulsanne', 56),
(112, 'kh', 'Mulsanne', 56),
(113, 'en', '1 Series', 57),
(114, 'kh', '1 Series', 57),
(115, 'en', '3 Series', 58),
(116, 'kh', '3 Series', 58),
(117, 'en', '325', 59),
(118, 'kh', '325', 59),
(119, 'en', '330', 60),
(120, 'kh', '330', 60),
(121, 'en', '525', 61),
(122, 'kh', '525', 61),
(123, 'en', '530', 62),
(124, 'kh', '530', 62),
(125, 'en', '545', 63),
(126, 'kh', '545', 63),
(127, 'en', '550', 64),
(128, 'kh', '550', 64),
(129, 'en', '5 Series', 65),
(130, 'kh', '5 Series', 65),
(131, 'en', '6 Series', 66),
(132, 'kh', '6 Series', 66),
(133, 'en', '645', 67),
(134, 'kh', '645', 67),
(135, 'en', '650', 68),
(136, 'kh', '650', 68),
(137, 'en', '7 Series', 69),
(138, 'kh', '7 Series', 69),
(139, 'en', '740', 70),
(140, 'kh', '740', 70),
(141, 'en', '745', 71),
(142, 'kh', '745', 71),
(143, 'en', '760', 72),
(144, 'kh', '760', 72),
(145, 'en', '8 Series', 73),
(146, 'kh', '8 Series', 73),
(147, 'en', 'Alpina B7', 74),
(148, 'kh', 'Alpina B7', 74),
(149, 'en', 'M Mroadster', 75),
(150, 'kh', 'M Mroadster', 75),
(151, 'en', 'M3', 76),
(152, 'kh', 'M3', 76),
(153, 'en', 'M5', 77),
(154, 'kh', 'M5', 77),
(155, 'en', 'M6', 78),
(156, 'kh', 'M6', 78),
(157, 'en', 'X3', 79),
(158, 'kh', 'X3', 79),
(159, 'en', 'X5', 80),
(160, 'kh', 'X5', 80),
(161, 'en', 'X5 M', 81),
(162, 'kh', 'X5 M', 81),
(163, 'en', 'X6', 82),
(164, 'kh', 'X6', 82),
(165, 'en', 'X6 M', 83),
(166, 'kh', 'X6 M', 83),
(167, 'en', 'Z3', 84),
(168, 'kh', 'Z3', 84),
(169, 'en', 'Z4', 85),
(170, 'kh', 'Z4', 85),
(171, 'en', 'Z4 M', 86),
(172, 'kh', 'Z4 M', 86),
(173, 'en', 'Z4 M Roadster', 87),
(174, 'kh', 'Z4 M Roadster', 87),
(175, 'en', 'Z8', 88),
(176, 'kh', 'Z8', 88),
(177, 'en', 'CTS', 89),
(178, 'kh', 'CTS', 89),
(179, 'en', 'CTS-V', 90),
(180, 'kh', 'CTS-V', 90),
(181, 'en', 'DTS', 91),
(182, 'kh', 'DTS', 91),
(183, 'en', 'Escalade', 92),
(184, 'kh', 'Escalade', 92),
(185, 'en', 'Escalade ESV', 93),
(186, 'kh', 'Escalade ESV', 93),
(187, 'en', 'Escalade EXT', 94),
(188, 'kh', 'Escalade EXT', 94),
(189, 'en', 'SRX', 95),
(190, 'kh', 'SRX', 95),
(191, 'en', 'STS', 96),
(192, 'kh', 'STS', 96),
(193, 'en', 'STS-V', 97),
(194, 'kh', 'STS-V', 97),
(195, 'en', 'XLR', 98),
(196, 'kh', 'XLR', 98),
(197, 'en', 'XLR-V', 99),
(198, 'kh', 'XLR-V', 99),
(199, 'en', '3500', 100),
(200, 'kh', '3500', 100),
(201, 'en', 'APV', 101),
(202, 'kh', 'APV', 101),
(203, 'en', 'Avalanche 1500', 102),
(204, 'kh', 'Avalanche 1500', 102),
(205, 'en', 'Avalanche 2500', 103),
(206, 'kh', 'Avalanche 2500', 103),
(207, 'en', 'Avalanche', 104),
(208, 'kh', 'Avalanche', 104),
(209, 'en', 'Blazer', 105),
(210, 'kh', 'Blazer', 105),
(211, 'en', 'Camaro', 106),
(212, 'kh', 'Camaro', 106),
(213, 'en', 'Colorado', 107),
(214, 'kh', 'Colorado', 107),
(215, 'en', 'Cruze', 108),
(216, 'kh', 'Cruze', 108),
(217, 'en', 'Corvette', 109),
(218, 'kh', 'Corvette', 109),
(219, 'en', 'Equinox', 110),
(220, 'kh', 'Equinox', 110),
(221, 'en', 'Impala', 111),
(222, 'kh', 'Impala', 111),
(223, 'en', 'Malibu', 112),
(224, 'kh', 'Malibu', 112),
(225, 'en', 'Prizm', 113),
(226, 'kh', 'Prizm', 113),
(227, 'en', 'S10 Blazer', 114),
(228, 'kh', 'S10 Blazer', 114),
(229, 'en', 'Silverado 1500', 115),
(230, 'kh', 'Silverado 1500', 115),
(231, 'en', 'Silverado 2500', 116),
(232, 'kh', 'Silverado 2500', 116),
(233, 'en', 'Silverado 3500', 117),
(234, 'kh', 'Silverado 3500', 117),
(235, 'en', 'Silverado 3500HD', 118),
(236, 'kh', 'Silverado 3500HD', 118),
(237, 'en', 'Silverado Hybrid', 119),
(238, 'kh', 'Silverado Hybrid', 119),
(239, 'en', 'Sonic', 120),
(240, 'kh', 'Sonic', 120),
(241, 'en', 'Suburban', 121),
(242, 'kh', 'Suburban', 121),
(243, 'en', 'Suburban 1500', 122),
(244, 'kh', 'Suburban 1500', 122),
(245, 'en', 'Suburban 2500', 123),
(246, 'kh', 'Suburban 2500', 123),
(247, 'en', 'Silverado', 124),
(248, 'kh', 'Silverado', 124),
(249, 'en', 'Tahoe', 125),
(250, 'kh', 'Tahoe', 125),
(251, 'en', 'Trailblazer', 126),
(252, 'kh', 'Trailblazer', 126),
(253, 'en', 'Traverse', 127),
(254, 'kh', 'Traverse', 127),
(255, 'en', 'Volt', 128),
(256, 'kh', 'Volt', 128),
(257, 'en', '200', 129),
(258, 'kh', '200', 129),
(259, 'en', '300', 130),
(260, 'kh', '300', 130),
(261, 'en', '300c', 131),
(262, 'kh', '300c', 131),
(263, 'en', 'Aspen', 132),
(264, 'kh', 'Aspen', 132),
(265, 'en', 'Cirrus', 133),
(266, 'kh', 'Cirrus', 133),
(267, 'en', 'Crossfire', 134),
(268, 'kh', 'Crossfire', 134),
(269, 'en', 'Crossfire Roadster', 135),
(270, 'kh', 'Crossfire Roadster', 135),
(271, 'en', 'Grand Voyager', 136),
(272, 'kh', 'Grand Voyager', 136),
(273, 'en', 'Pacifica', 137),
(274, 'kh', 'Pacifica', 137),
(275, 'en', 'Sebring', 138),
(276, 'kh', 'Sebring', 138),
(277, 'en', 'Voyager', 139),
(278, 'kh', 'Voyager', 139),
(279, 'en', '430 Scuderia', 140),
(280, 'kh', '430 Scuderia', 140),
(281, 'en', '458 Italia', 141),
(282, 'kh', '458 Italia', 141),
(283, 'en', '599 GTB Fiorano', 142),
(284, 'kh', '599 GTB Fiorano', 142),
(285, 'en', '612 Scaglietti', 143),
(286, 'kh', '612 Scaglietti', 143),
(287, 'en', 'California', 144),
(288, 'kh', 'California', 144),
(289, 'en', 'F430', 145),
(290, 'kh', 'F430', 145),
(291, 'en', 'F430 Spider', 146),
(292, 'kh', 'F430 Spider', 146),
(293, 'en', 'FF', 147),
(294, 'kh', 'FF', 147),
(295, 'en', '500', 148),
(296, 'kh', '500', 148),
(297, 'en', 'Aspire', 149),
(298, 'kh', 'Aspire', 149),
(299, 'en', 'Bronco 2', 150),
(300, 'kh', 'Bronco 2', 150),
(301, 'en', 'C-MAX Hybrid', 151),
(302, 'kh', 'C-MAX Hybrid', 151),
(303, 'en', 'Contour', 152),
(304, 'kh', 'Contour', 152),
(305, 'en', 'Courier', 153),
(306, 'kh', 'Courier', 153),
(307, 'en', 'Crown Victoria', 154),
(308, 'kh', 'Crown Victoria', 154),
(309, 'en', 'Edge', 155),
(310, 'kh', 'Edge', 155),
(311, 'en', 'Escape', 156),
(312, 'kh', 'Escape', 156),
(313, 'en', 'Everest', 157),
(314, 'kh', 'Everest', 157),
(315, 'en', 'Expedition', 158),
(316, 'kh', 'Expedition', 158),
(317, 'en', 'Explorer', 159),
(318, 'kh', 'Explorer', 159),
(319, 'en', 'Explorer Sport', 160),
(320, 'kh', 'Explorer Sport', 160),
(321, 'en', 'Explorer Sport Trac', 161),
(322, 'kh', 'Explorer Sport Trac', 161),
(323, 'en', 'EcoSport', 162),
(324, 'kh', 'EcoSport', 162),
(325, 'en', 'Endura', 163),
(326, 'kh', 'Endura', 163),
(327, 'en', 'F-250 Super Duty', 164),
(328, 'kh', 'F-250 Super Duty', 164),
(329, 'en', 'F-350 Super Duty', 165),
(330, 'kh', 'F-350 Super Duty', 165),
(331, 'en', 'F-Series', 166),
(332, 'kh', 'F-Series', 166),
(333, 'en', 'F-Series Super Duty', 167),
(334, 'kh', 'F-Series Super Duty', 167),
(335, 'en', 'F150', 168),
(336, 'kh', 'F150', 168),
(337, 'en', 'F250', 169),
(338, 'kh', 'F250', 169),
(339, 'en', 'F350', 170),
(340, 'kh', 'F350', 170),
(341, 'en', 'F450', 171),
(342, 'kh', 'F450', 171),
(343, 'en', 'Fiesta', 172),
(344, 'kh', 'Fiesta', 172),
(345, 'en', 'Five Hundred', 173),
(346, 'kh', 'Five Hundred', 173),
(347, 'en', 'Flex', 174),
(348, 'kh', 'Flex', 174),
(349, 'en', 'Focus', 175),
(350, 'kh', 'Focus', 175),
(351, 'en', 'Focus ST', 176),
(352, 'kh', 'Focus ST', 176),
(353, 'en', 'Freestar', 177),
(354, 'kh', 'Freestar', 177),
(355, 'en', 'Freestyle', 178),
(356, 'kh', 'Freestyle', 178),
(357, 'en', 'Fusion', 179),
(358, 'kh', 'Fusion', 179),
(359, 'en', 'Mustang', 180),
(360, 'kh', 'Mustang', 180),
(361, 'en', 'Kuga', 181),
(362, 'kh', 'Kuga', 181),
(363, 'en', 'Ranger', 182),
(364, 'kh', 'Ranger', 182),
(365, 'en', 'Taurus', 183),
(366, 'kh', 'Taurus', 183),
(367, 'en', 'Windstar', 184),
(368, 'kh', 'Windstar', 184),
(369, 'en', '1500', 185),
(370, 'kh', '1500', 185),
(371, 'en', '2500', 186),
(372, 'kh', '2500', 186),
(373, 'en', '3500', 187),
(374, 'kh', '3500', 187),
(375, 'en', 'Acadia', 188),
(376, 'kh', 'Acadia', 188),
(377, 'en', 'Canyon', 189),
(378, 'kh', 'Canyon', 189),
(379, 'en', 'Envoy', 190),
(380, 'kh', 'Envoy', 190),
(381, 'en', 'Envoy XL', 191),
(382, 'kh', 'Envoy XL', 191),
(383, 'en', 'Envoy XUV', 192),
(384, 'kh', 'Envoy XUV', 192),
(385, 'en', 'Sierra', 193),
(386, 'kh', 'Sierra', 193),
(387, 'en', 'Sierra 1500', 194),
(388, 'kh', 'Sierra 1500', 194),
(389, 'en', 'Sierra 2500', 195),
(390, 'kh', 'Sierra 2500', 195),
(391, 'en', 'Sierra 2500 HD', 196),
(392, 'kh', 'Sierra 2500 HD', 196),
(393, 'en', 'Sierra 3500HD', 197),
(394, 'kh', 'Sierra 3500HD', 197),
(395, 'en', 'Sierra Denali', 198),
(396, 'kh', 'Sierra Denali', 198),
(397, 'en', 'Sierra Hybrid', 199),
(398, 'kh', 'Sierra Hybrid', 199),
(399, 'en', 'Sonoma', 200),
(400, 'kh', 'Sonoma', 200),
(401, 'en', 'Terrain', 201),
(402, 'kh', 'Terrain', 201),
(403, 'en', 'Yukon', 202),
(404, 'kh', 'Yukon', 202),
(405, 'en', 'Yukon Denali', 203),
(406, 'kh', 'Yukon Denali', 203),
(407, 'en', 'Yukon XL', 204),
(408, 'kh', 'Yukon XL', 204),
(409, 'en', 'Accord', 205),
(410, 'kh', 'Accord', 205),
(411, 'en', 'Accord Crosstour', 206),
(412, 'kh', 'Accord Crosstour', 206),
(413, 'en', 'Civic GX', 207),
(414, 'kh', 'Civic GX', 207),
(415, 'en', 'Civi Si', 208),
(416, 'kh', 'Civi Si', 208),
(417, 'en', 'Civic', 209),
(418, 'kh', 'Civic', 209),
(419, 'en', 'CR-V', 210),
(420, 'kh', 'CR-V', 210),
(421, 'en', 'CR-Z', 211),
(422, 'kh', 'CR-Z', 211),
(423, 'en', 'Crosstour', 212),
(424, 'kh', 'Crosstour', 212),
(425, 'en', 'FCX Clarity', 213),
(426, 'kh', 'FCX Clarity', 213),
(427, 'en', 'Fit', 214),
(428, 'kh', 'Fit', 214),
(429, 'en', 'Insight', 215),
(430, 'kh', 'Insight', 215),
(431, 'en', 'Passport', 216),
(432, 'kh', 'Passport', 216),
(433, 'en', 'Pilot', 217),
(434, 'kh', 'Pilot', 217),
(435, 'en', 'Prelude', 218),
(436, 'kh', 'Prelude', 218),
(437, 'en', 'Ridgeline', 219),
(438, 'kh', 'Ridgeline', 219),
(439, 'en', 'S2000', 220),
(440, 'kh', 'S2000', 220),
(441, 'en', 'Odyssey', 221),
(442, 'kh', 'Odyssey', 221),
(443, 'en', 'H1', 222),
(444, 'kh', 'H1', 222),
(445, 'en', 'H2', 223),
(446, 'kh', 'H2', 223),
(447, 'en', 'H2 SUT', 224),
(448, 'kh', 'H2 SUT', 224),
(449, 'en', 'H2 SUV', 225),
(450, 'kh', 'H2 SUV', 225),
(451, 'en', 'H3', 226),
(452, 'kh', 'H3', 226),
(453, 'en', 'H3T', 227),
(454, 'kh', 'H3T', 227),
(455, 'en', 'Azera', 228),
(456, 'kh', 'Azera', 228),
(457, 'en', 'Entourage', 229),
(458, 'kh', 'Entourage', 229),
(459, 'en', 'Equus', 230),
(460, 'kh', 'Equus', 230),
(461, 'en', 'Elantra', 231),
(462, 'kh', 'Elantra', 231),
(463, 'en', 'Genesis Coupe', 232),
(464, 'kh', 'Genesis Coupe', 232),
(465, 'en', 'Genesis', 233),
(466, 'kh', 'Genesis', 233),
(467, 'en', 'Tucson', 234),
(468, 'kh', 'Tucson', 234),
(469, 'en', 'Tiburon', 235),
(470, 'kh', 'Tiburon', 235),
(471, 'en', 'Truck', 236),
(472, 'kh', 'Truck', 236),
(473, 'en', 'Tourism', 237),
(474, 'kh', 'Tourism', 237),
(475, 'en', 'Veracruz', 238),
(476, 'kh', 'Veracruz', 238),
(477, 'en', 'Veloster', 239),
(478, 'kh', 'Veloster', 239),
(479, 'en', 'XG300', 240),
(480, 'kh', 'XG300', 240),
(481, 'en', 'XG350', 241),
(482, 'kh', 'XG350', 241),
(483, 'en', 'EX', 242),
(484, 'kh', 'EX', 242),
(485, 'en', 'FX', 243),
(486, 'kh', 'FX', 243),
(487, 'en', 'FX30d', 244),
(488, 'kh', 'FX30d', 244),
(489, 'en', 'G', 245),
(490, 'kh', 'G', 245),
(491, 'en', 'G25', 246),
(492, 'kh', 'G25', 246),
(493, 'en', 'G35', 247),
(494, 'kh', 'G35', 247),
(495, 'en', 'G37', 248),
(496, 'kh', 'G37', 248),
(497, 'en', 'I', 249),
(498, 'kh', 'I', 249),
(499, 'en', 'IPL G', 250),
(500, 'kh', 'IPL G', 250),
(501, 'en', 'JX', 251),
(502, 'kh', 'JX', 251),
(503, 'en', 'M', 252),
(504, 'kh', 'M', 252),
(505, 'en', 'Q', 253),
(506, 'kh', 'Q', 253),
(507, 'en', 'QX', 254),
(508, 'kh', 'QX', 254),
(509, 'en', 'QX56', 255),
(510, 'kh', 'QX56', 255),
(511, 'en', 'Ascender', 256),
(512, 'kh', 'Ascender', 256),
(513, 'en', 'Axiom', 257),
(514, 'kh', 'Axiom', 257),
(515, 'en', 'D-MAX', 258),
(516, 'kh', 'D-MAX', 258),
(517, 'en', 'F Series', 259),
(518, 'kh', 'F Series', 259),
(519, 'en', 'Giga', 260),
(520, 'kh', 'Giga', 260),
(521, 'en', 'Hombre', 261),
(522, 'kh', 'Hombre', 261),
(523, 'en', 'Hombre Space', 262),
(524, 'kh', 'Hombre Space', 262),
(525, 'en', 'i-280', 263),
(526, 'kh', 'i-280', 263),
(527, 'en', 'i-290', 264),
(528, 'kh', 'i-290', 264),
(529, 'en', 'i-350', 265),
(530, 'kh', 'i-350', 265),
(531, 'en', 'i-370', 266),
(532, 'kh', 'i-370', 266),
(533, 'en', 'i-Series', 267),
(534, 'kh', 'i-Series', 267),
(535, 'en', 'MU-X', 268),
(536, 'kh', 'MU-X', 268),
(537, 'en', 'N Series', 269),
(538, 'kh', 'N Series', 269),
(539, 'en', 'Rodeo', 270),
(540, 'kh', 'Rodeo', 270),
(541, 'en', 'Rodeo Sport', 271),
(542, 'kh', 'Rodeo Sport', 271),
(543, 'en', 'Space', 272),
(544, 'kh', 'Space', 272),
(545, 'en', 'Trooper', 273),
(546, 'kh', 'Trooper', 273),
(547, 'en', 'VehiCROSS', 274),
(548, 'kh', 'VehiCROSS', 274),
(549, 'en', 'S Type', 275),
(550, 'kh', 'S Type', 275),
(551, 'en', 'X Types', 276),
(552, 'kh', 'X Types', 276),
(553, 'en', 'XJ', 277),
(554, 'kh', 'XJ', 277),
(555, 'en', 'XJ Series', 278),
(556, 'kh', 'XJ Series', 278),
(557, 'en', 'XK', 279),
(558, 'kh', 'XK', 279),
(559, 'en', 'XK Series', 280),
(560, 'kh', 'XK Series', 280),
(561, 'en', 'XF', 281),
(562, 'kh', 'XF', 281),
(563, 'en', 'Cherokee', 282),
(564, 'kh', 'Cherokee', 282),
(565, 'en', 'Commander', 283),
(566, 'kh', 'Commander', 283),
(567, 'en', 'Compass', 284),
(568, 'kh', 'Compass', 284),
(569, 'en', 'Grand Cherokee', 285),
(570, 'kh', 'Grand Cherokee', 285),
(571, 'en', 'Liberty', 286),
(572, 'kh', 'Liberty', 286),
(573, 'en', 'Patriot', 287),
(574, 'kh', 'Patriot', 287),
(575, 'en', 'Renegade', 288),
(576, 'kh', 'Renegade', 288),
(577, 'en', 'Wrangler', 289),
(578, 'kh', 'Wrangler', 289),
(579, 'en', 'Borrego', 290),
(580, 'kh', 'Borrego', 290),
(581, 'en', 'Carens', 291),
(582, 'kh', 'Carens', 291),
(583, 'en', 'Forte', 292),
(584, 'kh', 'Forte', 292),
(585, 'en', 'Mentor', 293),
(586, 'kh', 'Mentor', 293),
(587, 'en', 'Mohave', 294),
(588, 'kh', 'Mohave', 294),
(589, 'en', 'Morning', 295),
(590, 'kh', 'Morning', 295),
(591, 'en', 'Matiz', 296),
(592, 'kh', 'Matiz', 296),
(593, 'en', 'Optima', 297),
(594, 'kh', 'Optima', 297),
(595, 'en', 'Rondo', 298),
(596, 'kh', 'Rondo', 298),
(597, 'en', 'Rio5', 299),
(598, 'kh', 'Rio5', 299),
(599, 'en', 'Rio', 300),
(600, 'kh', 'Rio', 300),
(601, 'en', 'Sedona', 301),
(602, 'kh', 'Sedona', 301),
(603, 'en', 'Spectra', 302),
(604, 'kh', 'Spectra', 302),
(605, 'en', 'Spectra5', 303),
(606, 'kh', 'Spectra5', 303),
(607, 'en', 'Sportage', 304),
(608, 'kh', 'Sportage', 304),
(609, 'en', 'Sephia', 305),
(610, 'kh', 'Sephia', 305),
(611, 'en', 'Sorento', 306),
(612, 'kh', 'Sorento', 306),
(613, 'en', 'Soul', 307),
(614, 'kh', 'Soul', 307),
(615, 'en', 'Visto', 308),
(616, 'kh', 'Visto', 308),
(617, 'en', 'Aventador', 309),
(618, 'kh', 'Aventador', 309),
(619, 'en', 'Diablo', 310),
(620, 'kh', 'Diablo', 310),
(621, 'en', 'Gailardo', 311),
(622, 'kh', 'Gailardo', 311),
(623, 'en', 'Huracan', 312),
(624, 'kh', 'Huracan', 312),
(625, 'en', 'Murcielago LP640', 313),
(626, 'kh', 'Murcielago LP640', 313),
(627, 'en', 'Murcieago', 314),
(628, 'kh', 'Murcieago', 314),
(629, 'en', 'Reventon', 315),
(630, 'kh', 'Reventon', 315),
(631, 'en', 'Urus', 316),
(632, 'kh', 'Urus', 316),
(633, 'en', 'Defender', 317),
(634, 'kh', 'Defender', 317),
(635, 'en', 'Defender 110', 318),
(636, 'kh', 'Defender 110', 318),
(637, 'en', 'Defender 90', 319),
(638, 'kh', 'Defender 90', 319),
(639, 'en', 'Defender Ice Edition', 320),
(640, 'kh', 'Defender Ice Edition', 320),
(641, 'en', 'Discovery', 321),
(642, 'kh', 'Discovery', 321),
(643, 'en', 'Discovery 3', 322),
(644, 'kh', 'Discovery 3', 322),
(645, 'en', 'Discovery 4', 323),
(646, 'kh', 'Discovery 4', 323),
(647, 'en', 'Discovery Sport', 324),
(648, 'kh', 'Discovery Sport', 324),
(649, 'en', 'Discovery Series 2', 325),
(650, 'kh', 'Discovery Series 2', 325),
(651, 'en', 'Freelander', 326),
(652, 'kh', 'Freelander', 326),
(653, 'en', 'LR2', 327),
(654, 'kh', 'LR2', 327),
(655, 'en', 'LR3', 328),
(656, 'kh', 'LR3', 328),
(657, 'en', 'LR4', 329),
(658, 'kh', 'LR4', 329),
(659, 'en', 'Range Rover', 330),
(660, 'kh', 'Range Rover', 330),
(661, 'en', 'Range Rover Classic', 331),
(662, 'kh', 'Range Rover Classic', 331),
(663, 'en', 'Range Rover Evoque', 332),
(664, 'kh', 'Range Rover Evoque', 332),
(665, 'en', 'Range Rover sport', 333),
(666, 'kh', 'Range Rover sport', 333),
(667, 'en', 'Range Rover Velar', 334),
(668, 'kh', 'Range Rover Velar', 334),
(669, 'en', 'Range Rover Voque', 335),
(670, 'kh', 'Range Rover Voque', 335),
(671, 'en', 'Rover', 336),
(672, 'kh', 'Rover', 336),
(673, 'en', 'Sterling', 337),
(674, 'kh', 'Sterling', 337),
(675, 'en', 'CT', 338),
(676, 'kh', 'CT', 338),
(677, 'en', 'ES', 339),
(678, 'kh', 'ES', 339),
(679, 'en', 'GX', 340),
(680, 'kh', 'GX', 340),
(681, 'en', 'GS', 341),
(682, 'kh', 'GS', 341),
(683, 'en', 'HS', 342),
(684, 'kh', 'HS', 342),
(685, 'en', 'IS F', 343),
(686, 'kh', 'IS F', 343),
(687, 'en', 'IS', 344),
(688, 'kh', 'IS', 344),
(689, 'en', 'LFA', 345),
(690, 'kh', 'LFA', 345),
(691, 'en', 'LS Hybrid', 346),
(692, 'kh', 'LS Hybrid', 346),
(693, 'en', 'LS', 347),
(694, 'kh', 'LS', 347),
(695, 'en', 'LX450d', 348),
(696, 'kh', 'LX450d', 348),
(697, 'en', 'LX470', 349),
(698, 'kh', 'LX470', 349),
(699, 'en', 'LX570', 350),
(700, 'kh', 'LX570', 350),
(701, 'en', 'LX450', 351),
(702, 'kh', 'LX450', 351),
(703, 'en', 'NX', 352),
(704, 'kh', 'NX', 352),
(705, 'en', 'RC', 353),
(706, 'kh', 'RC', 353),
(707, 'en', 'RX450h', 354),
(708, 'kh', 'RX450h', 354),
(709, 'en', 'RX400h', 355),
(710, 'kh', 'RX400h', 355),
(711, 'en', 'RX330', 356),
(712, 'kh', 'RX330', 356),
(713, 'en', 'RX350', 357),
(714, 'kh', 'RX350', 357),
(715, 'en', 'Clubman', 358),
(716, 'kh', 'Clubman', 358),
(717, 'en', 'SC', 359),
(718, 'kh', 'SC', 359),
(719, 'en', 'UX', 360),
(720, 'kh', 'UX', 360),
(721, 'en', 'Coupe', 361),
(722, 'kh', 'Coupe', 361),
(723, 'en', 'Ghibli', 362),
(724, 'kh', 'Ghibli', 362),
(725, 'en', 'Gran Sport', 363),
(726, 'kh', 'Gran Sport', 363),
(727, 'en', 'GranTurismo', 364),
(728, 'kh', 'GranTurismo', 364),
(729, 'en', 'Quattroporte', 365),
(730, 'kh', 'Quattroporte', 365),
(731, 'en', 'Spyder', 366),
(732, 'kh', 'Spyder', 366),
(733, 'en', 'BT50 Pro', 367),
(734, 'kh', 'BT50 Pro', 367),
(735, 'en', 'BT-50', 368),
(736, 'kh', 'BT-50', 368),
(737, 'en', 'CX-5', 369),
(738, 'kh', 'CX-5', 369),
(739, 'en', 'CX-7', 370),
(740, 'kh', 'CX-7', 370),
(741, 'en', 'CX-3', 371),
(742, 'kh', 'CX-3', 371),
(743, 'en', 'CX-9', 372),
(744, 'kh', 'CX-9', 372),
(745, 'en', 'CX-8', 373),
(746, 'kh', 'CX-8', 373),
(747, 'en', 'Mazda2', 374),
(748, 'kh', 'Mazda2', 374),
(749, 'en', 'Mazda3', 375),
(750, 'kh', 'Mazda3', 375),
(751, 'en', 'Mazda5', 376),
(752, 'kh', 'Mazda5', 376),
(753, 'en', 'Mazda6', 377),
(754, 'kh', 'Mazda6', 377),
(755, 'en', 'Mazda6 Sport', 378),
(756, 'kh', 'Mazda6 Sport', 378),
(757, 'en', '626', 379),
(758, 'kh', '626', 379),
(759, 'en', 'B-Series', 380),
(760, 'kh', 'B-Series', 380),
(761, 'en', 'B-Series Plus', 381),
(762, 'kh', 'B-Series Plus', 381),
(763, 'en', 'B2500', 382),
(764, 'kh', 'B2500', 382),
(765, 'en', 'Mazdaspeed 3', 383),
(766, 'kh', 'Mazdaspeed 3', 383),
(767, 'en', 'Mazdaspeed 6', 384),
(768, 'kh', 'Mazdaspeed 6', 384),
(769, 'en', 'Miata MX-5', 385),
(770, 'kh', 'Miata MX-5', 385),
(771, 'en', 'Millenia', 386),
(772, 'kh', 'Millenia', 386),
(773, 'en', 'MPV', 387),
(774, 'kh', 'MPV', 387),
(775, 'en', 'MX-3', 388),
(776, 'kh', 'MX-3', 388),
(777, 'en', 'MX-5', 389),
(778, 'kh', 'MX-5', 389),
(779, 'en', 'Navajo', 390),
(780, 'kh', 'Navajo', 390),
(781, 'en', 'Protege5', 391),
(782, 'kh', 'Protege5', 391),
(783, 'en', 'Protégé', 392),
(784, 'kh', 'Protégé', 392),
(785, 'en', 'RX-7', 393),
(786, 'kh', 'RX-7', 393),
(787, 'en', 'RX-8', 394),
(788, 'kh', 'RX-8', 394),
(789, 'en', 'Tribute', 395),
(790, 'kh', 'Tribute', 395),
(791, 'en', 'Cooper Countryman', 396),
(792, 'kh', 'Cooper Countryman', 396),
(793, 'en', '190E', 397),
(794, 'kh', '190E', 397),
(795, 'en', '300CE', 398),
(796, 'kh', '300CE', 398),
(797, 'en', '300E', 399),
(798, 'kh', '300E', 399),
(799, 'en', '300D', 400),
(800, 'kh', '300D', 400),
(801, 'en', '300SD', 401),
(802, 'kh', '300SD', 401),
(803, 'en', '300TE', 402),
(804, 'kh', '300TE', 402),
(805, 'en', '300SE', 403),
(806, 'kh', '300SE', 403),
(807, 'en', '400SE', 404),
(808, 'kh', '400SE', 404),
(809, 'en', '400E', 405),
(810, 'kh', '400E', 405),
(811, 'en', '400SEL', 406),
(812, 'kh', '400SEL', 406),
(813, 'en', '500E', 407),
(814, 'kh', '500E', 407),
(815, 'en', '500SEL', 408),
(816, 'kh', '500SEL', 408),
(817, 'en', '500SL', 409),
(818, 'kh', '500SL', 409),
(819, 'en', '600SEC', 410),
(820, 'kh', '600SEC', 410),
(821, 'en', '600SEL', 411),
(822, 'kh', '600SEL', 411),
(823, 'en', '600SL', 412),
(824, 'kh', '600SL', 412),
(825, 'en', 'SLR McLaren', 413),
(826, 'kh', 'SLR McLaren', 413),
(827, 'en', 'A160', 414),
(828, 'kh', 'A160', 414),
(829, 'en', 'A170', 415),
(830, 'kh', 'A170', 415),
(831, 'en', 'A180', 416),
(832, 'kh', 'A180', 416),
(833, 'en', 'A180 CDI', 417),
(834, 'kh', 'A180 CDI', 417),
(835, 'en', 'A200', 418),
(836, 'kh', 'A200', 418),
(837, 'en', 'A250', 419),
(838, 'kh', 'A250', 419),
(839, 'en', 'AMG GT', 420),
(840, 'kh', 'AMG GT', 420),
(841, 'en', 'B200 CDI', 421),
(842, 'kh', 'B200 CDI', 421),
(843, 'en', 'CL-Class', 422),
(844, 'kh', 'CL-Class', 422),
(845, 'en', 'CL65 AMG', 423),
(846, 'kh', 'CL65 AMG', 423),
(847, 'en', 'CLS-Class', 424),
(848, 'kh', 'CLS-Class', 424),
(849, 'en', 'CLK-Class', 425),
(850, 'kh', 'CLK-Class', 425),
(851, 'en', 'C-Class', 426),
(852, 'kh', 'C-Class', 426),
(853, 'en', 'CLA-Class', 427),
(854, 'kh', 'CLA-Class', 427),
(855, 'en', 'E-Class', 428),
(856, 'kh', 'E-Class', 428),
(857, 'en', 'G-Class', 429),
(858, 'kh', 'G-Class', 429),
(859, 'en', 'G55 AMG', 430),
(860, 'kh', 'G55 AMG', 430),
(861, 'en', 'GL-Class', 431),
(862, 'kh', 'GL-Class', 431),
(863, 'en', 'GLK-Class', 432),
(864, 'kh', 'GLK-Class', 432),
(865, 'en', 'MB 140', 433),
(866, 'kh', 'MB 140', 433),
(867, 'en', 'M-Class', 434),
(868, 'kh', 'M-Class', 434),
(869, 'en', 'R-Class', 435),
(870, 'kh', 'R-Class', 435),
(871, 'en', 'S-Class', 436),
(872, 'kh', 'S-Class', 436),
(873, 'en', 'SL-Class', 437),
(874, 'kh', 'SL-Class', 437),
(875, 'en', 'SL65 AMG', 438),
(876, 'kh', 'SL65 AMG', 438),
(877, 'en', 'SLK-Class', 439),
(878, 'kh', 'SLK-Class', 439),
(879, 'en', 'SLK55 AMG', 440),
(880, 'kh', 'SLK55 AMG', 440),
(881, 'en', 'SLS AMG', 441),
(882, 'kh', 'SLS AMG', 441),
(883, 'en', 'SLS-Class', 442),
(884, 'kh', 'SLS-Class', 442),
(885, 'en', 'Sprinter', 443),
(886, 'kh', 'Sprinter', 443),
(887, 'en', 'Sprinter 2500', 444),
(888, 'kh', 'Sprinter 2500', 444),
(889, 'en', 'Sprinter 3500', 445),
(890, 'kh', 'Sprinter 3500', 445),
(891, 'en', 'W123', 446),
(892, 'kh', 'W123', 446),
(893, 'en', 'W126', 447),
(894, 'kh', 'W126', 447),
(895, 'en', 'W201', 448),
(896, 'kh', 'W201', 448),
(897, 'en', 'Cooper', 449),
(898, 'kh', 'Cooper', 449),
(899, 'en', 'Cooper Clubman', 450),
(900, 'kh', 'Cooper Clubman', 450),
(901, 'en', 'Convertible', 451),
(902, 'kh', 'Convertible', 451),
(903, 'en', 'Countryman', 452),
(904, 'kh', 'Countryman', 452),
(905, 'en', 'Hatch', 453),
(906, 'kh', 'Hatch', 453),
(907, 'en', 'Canter', 454),
(908, 'kh', 'Canter', 454),
(909, 'en', 'Challenger', 455),
(910, 'kh', 'Challenger', 455),
(911, 'en', 'Colt', 456),
(912, 'kh', 'Colt', 456),
(913, 'en', 'Chariot', 457),
(914, 'kh', 'Chariot', 457),
(915, 'en', 'Enddeavor', 458),
(916, 'kh', 'Enddeavor', 458),
(917, 'en', 'Eclipse', 459),
(918, 'kh', 'Eclipse', 459),
(919, 'en', 'Fighter', 460),
(920, 'kh', 'Fighter', 460),
(921, 'en', 'FV 6X4', 461),
(922, 'kh', 'FV 6X4', 461),
(923, 'en', 'Galant', 462),
(924, 'kh', 'Galant', 462),
(925, 'en', 'i-MiEV', 463),
(926, 'kh', 'i-MiEV', 463),
(927, 'en', 'Lancer', 464),
(928, 'kh', 'Lancer', 464),
(929, 'en', 'L300', 465),
(930, 'kh', 'L300', 465),
(931, 'en', 'Lancer Evolution', 466),
(932, 'kh', 'Lancer Evolution', 466),
(933, 'en', 'Mighty Max', 467),
(934, 'kh', 'Mighty Max', 467),
(935, 'en', 'Mighty Max Macro', 468),
(936, 'kh', 'Mighty Max Macro', 468),
(937, 'en', 'Montero', 469),
(938, 'kh', 'Montero', 469),
(939, 'en', 'Montero Sport', 470),
(940, 'kh', 'Montero Sport', 470),
(941, 'en', 'Mirage', 471),
(942, 'kh', 'Mirage', 471),
(943, 'en', 'Outlander Sport', 472),
(944, 'kh', 'Outlander Sport', 472),
(945, 'en', 'Outlander', 473),
(946, 'kh', 'Outlander', 473),
(947, 'en', 'Pajero', 474),
(948, 'kh', 'Pajero', 474),
(949, 'en', 'Pajero iO', 475),
(950, 'kh', 'Pajero iO', 475),
(951, 'en', 'Pajero Sport', 476),
(952, 'kh', 'Pajero Sport', 476),
(953, 'en', 'Raider', 477),
(954, 'kh', 'Raider', 477),
(955, 'en', 'RVR', 478),
(956, 'kh', 'RVR', 478),
(957, 'en', 'Ralliart Evo', 479),
(958, 'kh', 'Ralliart Evo', 479),
(959, 'en', 'Space', 480),
(960, 'kh', 'Space', 480),
(961, 'en', 'Truck', 481),
(962, 'kh', 'Truck', 481),
(963, 'en', 'Tundra', 482),
(964, 'kh', 'Tundra', 482),
(965, 'en', 'Triton', 483),
(966, 'kh', 'Triton', 483),
(967, 'en', '350Z', 484),
(968, 'kh', '350Z', 484),
(969, 'en', '350Z Roadster', 485),
(970, 'kh', '350Z Roadster', 485),
(971, 'en', '370Z', 486),
(972, 'kh', '370Z', 486),
(973, 'en', 'Altima', 487),
(974, 'kh', 'Altima', 487),
(975, 'en', 'Armada', 488),
(976, 'kh', 'Armada', 488),
(977, 'en', 'Frontier', 489),
(978, 'kh', 'Frontier', 489),
(979, 'en', 'GT-R', 490),
(980, 'kh', 'GT-R', 490),
(981, 'en', 'Juke', 491),
(982, 'kh', 'Juke', 491),
(983, 'en', 'LEAF', 492),
(984, 'kh', 'LEAF', 492),
(985, 'en', 'Maxima', 493),
(986, 'kh', 'Maxima', 493),
(987, 'en', 'Murano', 494),
(988, 'kh', 'Murano', 494),
(989, 'en', 'Navara', 495),
(990, 'kh', 'Navara', 495),
(991, 'en', 'Pathfinder Armada', 496),
(992, 'kh', 'Pathfinder Armada', 496),
(993, 'en', 'Pathfinder', 497),
(994, 'kh', 'Pathfinder', 497),
(995, 'en', 'Patrol', 498),
(996, 'kh', 'Patrol', 498),
(997, 'en', 'Quest', 499),
(998, 'kh', 'Quest', 499),
(999, 'en', 'Rogue', 500),
(1000, 'kh', 'Rogue', 500),
(1001, 'en', 'Sentra', 501),
(1002, 'kh', 'Sentra', 501),
(1003, 'en', 'Stanza', 502),
(1004, 'kh', 'Stanza', 502),
(1005, 'en', 'Skyline', 503),
(1006, 'kh', 'Skyline', 503),
(1007, 'en', 'Titan', 504),
(1008, 'kh', 'Titan', 504),
(1009, 'en', 'Versa', 505),
(1010, 'kh', 'Versa', 505),
(1011, 'en', 'X-Trail', 506),
(1012, 'kh', 'X-Trail', 506),
(1013, 'en', '207', 507),
(1014, 'kh', '207', 507),
(1015, 'en', '718', 508),
(1016, 'kh', '718', 508),
(1017, 'en', '911', 509),
(1018, 'kh', '911', 509),
(1019, 'en', '911 Carrera', 510),
(1020, 'kh', '911 Carrera', 510),
(1021, 'en', 'Boxster', 511),
(1022, 'kh', 'Boxster', 511),
(1023, 'en', 'Carrera GT', 512),
(1024, 'kh', 'Carrera GT', 512),
(1025, 'en', 'Cayenne', 513),
(1026, 'kh', 'Cayenne', 513),
(1027, 'en', 'Cayman', 514),
(1028, 'kh', 'Cayman', 514),
(1029, 'en', 'Macan', 515),
(1030, 'kh', 'Macan', 515),
(1031, 'en', 'Panamera', 516),
(1032, 'kh', 'Panamera', 516),
(1033, 'en', '1500', 517),
(1034, 'kh', '1500', 517),
(1035, 'en', '2500', 518),
(1036, 'kh', '2500', 518),
(1037, 'en', '3500', 519),
(1038, 'kh', '3500', 519),
(1039, 'en', 'Dakota', 520),
(1040, 'kh', 'Dakota', 520),
(1041, 'en', 'Dawn', 521),
(1042, 'kh', 'Dawn', 521),
(1043, 'en', 'Ghost', 522),
(1044, 'kh', 'Ghost', 522),
(1045, 'en', 'Phamtom', 523),
(1046, 'kh', 'Phamtom', 523),
(1047, 'en', 'Wraith', 524),
(1048, 'kh', 'Wraith', 524),
(1049, 'en', 'Chairman', 525),
(1050, 'kh', 'Chairman', 525),
(1051, 'en', 'Istana', 526),
(1052, 'kh', 'Istana', 526),
(1053, 'en', 'Kyron', 527),
(1054, 'kh', 'Kyron', 527),
(1055, 'en', 'Korando', 528),
(1056, 'kh', 'Korando', 528),
(1057, 'en', 'Musso', 529),
(1058, 'kh', 'Musso', 529),
(1059, 'en', 'Rodius', 530),
(1060, 'kh', 'Rodius', 530),
(1061, 'en', 'BRZ', 531),
(1062, 'kh', 'BRZ', 531),
(1063, 'en', 'Forester', 532),
(1064, 'kh', 'Forester', 532),
(1065, 'en', 'Impreza WRX', 533),
(1066, 'kh', 'Impreza WRX', 533),
(1067, 'en', 'Impreza', 534),
(1068, 'kh', 'Impreza', 534),
(1069, 'en', 'Legacy', 535),
(1070, 'kh', 'Legacy', 535),
(1071, 'en', 'Outback', 536),
(1072, 'kh', 'Outback', 536),
(1073, 'en', 'Outback Sport', 537),
(1074, 'kh', 'Outback Sport', 537),
(1075, 'en', 'Tribeca', 538),
(1076, 'kh', 'Tribeca', 538),
(1077, 'en', 'Aerio', 539),
(1078, 'kh', 'Aerio', 539),
(1079, 'en', 'Cultus', 540),
(1080, 'kh', 'Cultus', 540),
(1081, 'en', 'Daewoo Lacetti', 541),
(1082, 'kh', 'Daewoo Lacetti', 541),
(1083, 'en', 'Daewoo Magnus', 542),
(1084, 'kh', 'Daewoo Magnus', 542),
(1085, 'en', 'Equator', 543),
(1086, 'kh', 'Equator', 543),
(1087, 'en', 'Forenza', 544),
(1088, 'kh', 'Forenza', 544),
(1089, 'en', 'Grand Vitara', 545),
(1090, 'kh', 'Grand Vitara', 545),
(1091, 'en', 'Kizashi', 546),
(1092, 'kh', 'Kizashi', 546),
(1093, 'en', 'Reno', 547),
(1094, 'kh', 'Reno', 547),
(1095, 'en', 'Swift', 548),
(1096, 'kh', 'Swift', 548),
(1097, 'en', 'SX4', 549),
(1098, 'kh', 'SX4', 549),
(1099, 'en', 'Verona', 550),
(1100, 'kh', 'Verona', 550),
(1101, 'en', 'Vitara', 551),
(1102, 'kh', 'Vitara', 551),
(1103, 'en', 'XL-7', 552),
(1104, 'kh', 'XL-7', 552),
(1105, 'en', 'Model S', 553),
(1106, 'kh', 'Model S', 553),
(1107, 'en', 'Roadster', 554),
(1108, 'kh', 'Roadster', 554),
(1109, 'en', '4Runner', 555),
(1110, 'kh', '4Runner', 555),
(1111, 'en', '86', 556),
(1112, 'kh', '86', 556),
(1113, 'en', 'Alphard', 557),
(1114, 'kh', 'Alphard', 557),
(1115, 'en', 'Avalon', 558),
(1116, 'kh', 'Avalon', 558),
(1117, 'en', 'Aristo', 559),
(1118, 'kh', 'Aristo', 559),
(1119, 'en', 'Aurion', 560),
(1120, 'kh', 'Aurion', 560),
(1121, 'en', 'Avanza', 561),
(1122, 'kh', 'Avanza', 561),
(1123, 'en', 'Camry Hybrid', 562),
(1124, 'kh', 'Camry Hybrid', 562),
(1125, 'en', 'C-HR', 563),
(1126, 'kh', 'C-HR', 563),
(1127, 'en', 'Camry', 564),
(1128, 'kh', 'Camry', 564),
(1129, 'en', 'Camry Vienta', 565),
(1130, 'kh', 'Camry Vienta', 565),
(1131, 'en', 'Celica', 566),
(1132, 'kh', 'Celica', 566),
(1133, 'en', 'Corolla', 567),
(1134, 'kh', 'Corolla', 567),
(1135, 'en', 'Corona Avante', 568),
(1136, 'kh', 'Corona Avante', 568),
(1137, 'en', 'Cressida', 569),
(1138, 'kh', 'Cressida', 569),
(1139, 'en', 'Crown', 570),
(1140, 'kh', 'Crown', 570),
(1141, 'en', 'Dyna', 571),
(1142, 'kh', 'Dyna', 571),
(1143, 'en', 'Echo', 572),
(1144, 'kh', 'Echo', 572),
(1145, 'en', 'Esquire', 573),
(1146, 'kh', 'Esquire', 573),
(1147, 'en', 'Estima', 574),
(1148, 'kh', 'Estima', 574),
(1149, 'en', 'Fortuner', 575),
(1150, 'kh', 'Fortuner', 575),
(1151, 'en', 'Grand Hiace', 576),
(1152, 'kh', 'Grand Hiace', 576),
(1153, 'en', 'Granvia', 577),
(1154, 'kh', 'Granvia', 577),
(1155, 'en', 'Highlander Hybird', 578),
(1156, 'kh', 'Highlander Hybird', 578),
(1157, 'en', 'Highlander', 579),
(1158, 'kh', 'Highlander', 579),
(1159, 'en', 'Harrier', 580),
(1160, 'kh', 'Harrier', 580),
(1161, 'en', 'Hiace', 581),
(1162, 'kh', 'Hiace', 581),
(1163, 'en', 'Hiace SBV', 582),
(1164, 'kh', 'Hiace SBV', 582),
(1165, 'en', 'Hilux REVO', 583),
(1166, 'kh', 'Hilux REVO', 583),
(1167, 'en', 'Hilux Vigo', 584),
(1168, 'kh', 'Hilux Vigo', 584),
(1169, 'en', 'Hilux', 585),
(1170, 'kh', 'Hilux', 585),
(1171, 'en', 'Hilux Surf', 586),
(1172, 'kh', 'Hilux Surf', 586),
(1173, 'en', 'Ipsum', 587),
(1174, 'kh', 'Ipsum', 587),
(1175, 'en', 'IQ', 588),
(1176, 'kh', 'IQ', 588),
(1177, 'en', 'Kluger', 589),
(1178, 'kh', 'Kluger', 589),
(1179, 'en', 'Landcruiser', 590),
(1180, 'kh', 'Landcruiser', 590),
(1181, 'en', 'Landcruiser Prado', 591),
(1182, 'kh', 'Landcruiser Prado', 591),
(1183, 'en', 'Matrix', 592),
(1184, 'kh', 'Matrix', 592),
(1185, 'en', 'MR2', 593),
(1186, 'kh', 'MR2', 593),
(1187, 'en', 'Noah', 594),
(1188, 'kh', 'Noah', 594),
(1189, 'en', 'Previa', 595),
(1190, 'kh', 'Previa', 595),
(1191, 'en', 'Paseo', 596),
(1192, 'kh', 'Paseo', 596),
(1193, 'en', 'Prius', 597),
(1194, 'kh', 'Prius', 597),
(1195, 'en', 'Prius C', 598),
(1196, 'kh', 'Prius C', 598),
(1197, 'en', 'Prius V', 599),
(1198, 'kh', 'Prius V', 599),
(1199, 'en', 'Ractis', 600),
(1200, 'kh', 'Ractis', 600),
(1201, 'en', 'RAV4', 601),
(1202, 'kh', 'RAV4', 601),
(1203, 'en', 'Regius', 602),
(1204, 'kh', 'Regius', 602),
(1205, 'en', 'Supra', 603),
(1206, 'kh', 'Supra', 603),
(1207, 'en', 'Solara', 604),
(1208, 'kh', 'Solara', 604),
(1209, 'en', 'Sequoia', 605),
(1210, 'kh', 'Sequoia', 605),
(1211, 'en', 'Sienna', 606),
(1212, 'kh', 'Sienna', 606),
(1213, 'en', 'Scion', 607),
(1214, 'kh', 'Scion', 607),
(1215, 'en', 'Truck Xtracab SR5', 608),
(1216, 'kh', 'Truck Xtracab SR5', 608),
(1217, 'en', 'T100', 609),
(1218, 'kh', 'T100', 609),
(1219, 'en', 'Tacoma', 610),
(1220, 'kh', 'Tacoma', 610),
(1221, 'en', 'TundraMax', 611),
(1222, 'kh', 'TundraMax', 611),
(1223, 'en', 'Tundra', 612),
(1224, 'kh', 'Tundra', 612),
(1225, 'en', 'Tarago', 613),
(1226, 'kh', 'Tarago', 613),
(1227, 'en', 'Vellfire', 614),
(1228, 'kh', 'Vellfire', 614),
(1229, 'en', 'Venza', 615),
(1230, 'kh', 'Venza', 615),
(1231, 'en', 'Vienta', 616),
(1232, 'kh', 'Vienta', 616),
(1233, 'en', 'Xtra', 617),
(1234, 'kh', 'Xtra', 617),
(1235, 'en', 'Voxy', 618),
(1236, 'kh', 'Voxy', 618),
(1237, 'en', 'Yaris', 619),
(1238, 'kh', 'Yaris', 619),
(1239, 'en', 'Beetle', 620),
(1240, 'kh', 'Beetle', 620),
(1241, 'en', 'CC', 621),
(1242, 'kh', 'CC', 621),
(1243, 'en', 'Eos', 622),
(1244, 'kh', 'Eos', 622),
(1245, 'en', 'Fox', 623),
(1246, 'kh', 'Fox', 623),
(1247, 'en', 'GLI', 624),
(1248, 'kh', 'GLI', 624),
(1249, 'en', 'Golf', 625),
(1250, 'kh', 'Golf', 625),
(1251, 'en', 'GTI', 626),
(1252, 'kh', 'GTI', 626),
(1253, 'en', 'Jetta', 627),
(1254, 'kh', 'Jetta', 627),
(1255, 'en', 'New Beetle', 628),
(1256, 'kh', 'New Beetle', 628),
(1257, 'en', 'Passat', 629),
(1258, 'kh', 'Passat', 629),
(1259, 'en', 'Phaeton', 630),
(1260, 'kh', 'Phaeton', 630),
(1261, 'en', 'R32', 631),
(1262, 'kh', 'R32', 631),
(1263, 'en', 'Rio', 632),
(1264, 'kh', 'Rio', 632),
(1265, 'en', 'Routan', 633),
(1266, 'kh', 'Routan', 633),
(1267, 'en', 'Scirocco', 634),
(1268, 'kh', 'Scirocco', 634),
(1269, 'en', 'Tiguan', 635),
(1270, 'kh', 'Tiguan', 635),
(1271, 'en', 'Touareg 2', 636),
(1272, 'kh', 'Touareg 2', 636),
(1273, 'en', 'Touareg', 637),
(1274, 'kh', 'Touareg', 637),
(1275, 'en', 'C70', 638),
(1276, 'kh', 'C70', 638),
(1277, 'en', 'S40', 639),
(1278, 'kh', 'S40', 639),
(1279, 'en', 'S60', 640),
(1280, 'kh', 'S60', 640),
(1281, 'en', 'S80', 641),
(1282, 'kh', 'S80', 641),
(1283, 'en', 'S90', 642),
(1284, 'kh', 'S90', 642),
(1285, 'en', 'V40', 643),
(1286, 'kh', 'V40', 643),
(1287, 'en', 'V50', 644),
(1288, 'kh', 'V50', 644),
(1289, 'en', 'V70', 645),
(1290, 'kh', 'V70', 645),
(1291, 'en', 'XC60', 646),
(1292, 'kh', 'XC60', 646),
(1293, 'en', 'XC70', 647),
(1294, 'kh', 'XC70', 647),
(1295, 'en', 'XC90', 648),
(1296, 'kh', 'XC90', 648);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_reviews`
--

CREATE TABLE `vehicle_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_seriess`
--

CREATE TABLE `vehicle_seriess` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `makes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `models_id` bigint(20) UNSIGNED NOT NULL,
  `badges_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, 2, 2, 1, '800', NULL, 1, '2019-12-06 02:26:58', '2019-12-16 04:21:26', NULL),
(2, 4, 3, 3, 'ertica1234524', NULL, 1, '2019-12-11 03:40:03', '2019-12-11 03:40:03', NULL),
(3, 4, 3, 3, 'ertica1234524g', NULL, 1, '2019-12-11 03:40:15', '2019-12-11 03:40:15', NULL),
(4, 5, 6, 6, '348', NULL, 1, '2019-12-11 22:06:12', '2019-12-11 22:06:12', NULL),
(5, 5, 6, 6, '348-series-1', NULL, 1, '2019-12-11 22:06:44', '2019-12-11 22:06:44', NULL),
(6, 5, 6, 7, '348-model', NULL, 1, '2019-12-11 22:08:34', '2019-12-11 22:08:34', NULL),
(7, 5, 6, 8, '348-series-1-1', NULL, 1, '2019-12-11 22:09:47', '2019-12-11 22:09:47', NULL),
(8, 5, 7, 9, 'series-1', NULL, 1, '2019-12-11 22:10:22', '2019-12-11 22:10:22', NULL),
(9, 5, 7, 10, 'series-2', NULL, 1, '2019-12-11 22:10:58', '2019-12-11 22:10:58', NULL),
(10, 1, 1, 4, 'qs', NULL, 1, '2019-12-17 04:03:17', '2019-12-17 04:03:17', NULL),
(11, 8, 9, 11, 'a-3', '1576668290-413958074.jpg', 1, '2019-12-18 00:24:50', '2019-12-18 00:24:50', NULL),
(12, 8, 9, 11, 'a-3a-3a-3a-3a-3a-3a-3a-3a-3a-3', NULL, 0, '2019-12-18 01:21:15', '2019-12-18 01:21:15', NULL),
(13, 9, 10, 12, 'aaaa-bbb-ccc', '1576733837-800369010.jpg', 1, '2019-12-18 18:37:17', '2019-12-18 18:37:17', NULL),
(14, 10, 11, 14, '123', '1576734103-2129511471.jpg', 1, '2019-12-18 18:41:43', '2019-12-18 18:41:43', NULL),
(15, 9, 10, 13, 'asasassas-12313123131231313', '1576736869-1323067204.jpg', 0, '2019-12-18 19:27:49', '2019-12-18 19:28:32', NULL),
(16, 11, 12, 15, 'test-series', '1576825855-1208381397.jpg', 0, '2019-12-19 20:10:55', '2019-12-19 20:10:55', NULL),
(17, 12, 13, 16, 'next-2020', '1578375942-658588253.png', 1, '2020-01-06 18:45:42', '2020-01-06 18:45:42', NULL),
(18, 13, 14, 17, 'bs6', '1578375998-1533585004.png', 1, '2020-01-06 18:46:38', '2020-01-06 18:46:38', NULL),
(19, 7, 17, 18, 'g', NULL, 1, '2020-01-07 03:27:04', '2020-01-07 03:27:04', NULL),
(20, 5, 6, 7, '360', NULL, 1, '2020-01-08 22:25:51', '2020-01-08 22:26:20', NULL),
(21, 14, 19, 22, 'not-applicable', NULL, 1, '2020-01-13 12:47:38', '2020-01-13 12:47:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_series_translations`
--

CREATE TABLE `vehicle_series_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_series_id` bigint(20) UNSIGNED NOT NULL
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
(32, 'Test_series', 'kh', 16),
(33, 'NEXT - 2020', 'en', 17),
(34, 'NEXT - 2020', 'kh', 17),
(35, 'BS6', 'en', 18),
(36, 'BS6', 'kh', 18),
(37, 'G', 'en', 19),
(38, 'G', 'kh', 19),
(39, '348', 'en', 20),
(40, '360', 'kh', 20),
(41, 'Not Applicable', 'en', 21),
(42, 'Not Applicable', 'kh', 21);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_translations`
--

CREATE TABLE `vehicle_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_translations`
--

INSERT INTO `vehicle_translations` (`id`, `vehicle_id`, `locale`, `description`) VALUES
(7, 1, 'en', NULL),
(8, 1, 'kh', NULL),
(9, 4, 'en', NULL),
(10, 4, 'kh', NULL),
(11, 5, 'en', NULL),
(12, 5, 'kh', NULL),
(13, 6, 'en', NULL),
(14, 6, 'kh', NULL),
(15, 7, 'en', NULL),
(16, 7, 'kh', NULL),
(33, 8, 'en', NULL),
(34, 8, 'kh', NULL),
(45, 11, 'en', 'english text'),
(46, 11, 'kh', 'khmer text'),
(49, 10, 'en', NULL),
(50, 10, 'kh', NULL),
(51, 2, 'en', NULL),
(52, 2, 'kh', NULL),
(53, 13, 'en', '567567'),
(54, 13, 'kh', '567567');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_transmissions`
--

CREATE TABLE `vehicle_transmissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, 0, '1573896313-1548698192.jpg', '2019-11-15 22:25:13', '2019-11-15 22:25:21', NULL),
(3, 0, '1574085451-412139584.png', '2019-11-18 02:57:31', '2019-11-18 02:57:31', NULL),
(4, 1, '1574429566-1334680477.png', '2019-11-22 02:32:46', '2019-11-22 02:32:54', NULL),
(5, 1, NULL, '2019-11-25 23:55:07', '2019-11-25 23:55:07', NULL),
(6, 1, NULL, '2019-12-19 20:07:24', '2019-12-19 20:07:24', NULL),
(7, 1, NULL, '2020-01-06 18:34:00', '2020-01-06 18:34:00', NULL),
(8, 1, NULL, '2020-01-06 18:34:12', '2020-01-06 18:34:12', NULL),
(9, 0, NULL, '2020-01-06 18:34:45', '2020-01-06 18:34:45', NULL),
(10, 0, NULL, '2020-01-06 18:35:08', '2020-01-06 18:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_transmissions_translations`
--

CREATE TABLE `vehicle_transmissions_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) NOT NULL,
  `vehicle_transmissions_id` bigint(20) UNSIGNED NOT NULL
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
(10, 'Test_transmissions', 'kh', 6),
(11, 'DSG (Direct Shift Gearbox)', 'en', 7),
(12, 'DSG (Direct Shift Gearbox)', 'kh', 7),
(13, 'Continuously Variable Transmission', 'en', 8),
(14, 'Continuously Variable TransmissionContinuously Variable TransmissionContinuously Variable Transmission', 'kh', 8),
(15, 'Traditional Automatic Transmission Traditional Automatic Transmission', 'en', 9),
(16, 'Traditional Automatic Transmission Traditional Automatic Transmission', 'kh', 9),
(17, 'GSG', 'en', 10),
(18, 'Traditional Automatic Transmission Traditional Automatic Transmission Traditional Automatic Transmission', 'kh', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_vehicle_feature`
--

CREATE TABLE `vehicle_vehicle_feature` (
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_feature_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_vehicle_feature`
--

INSERT INTO `vehicle_vehicle_feature` (`vehicle_id`, `vehicle_feature_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 7),
(2, 11),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 5),
(5, 8),
(6, 6),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 7),
(9, 11),
(9, 16),
(9, 21),
(10, 4),
(10, 7),
(10, 11),
(10, 16),
(10, 21),
(11, 6),
(11, 8),
(11, 11),
(11, 14),
(11, 16),
(12, 7),
(12, 11),
(12, 16),
(12, 21),
(13, 4),
(13, 7),
(13, 11),
(13, 12),
(13, 16),
(13, 19),
(13, 20),
(13, 21);

-- --------------------------------------------------------

--
-- Table structure for table `working_times`
--

CREATE TABLE `working_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auto_approval_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(191) NOT NULL,
  `opening_hours` time DEFAULT NULL,
  `closing_hours` time DEFAULT NULL,
  `is_off` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `working_times`
--

INSERT INTO `working_times` (`id`, `auto_approval_id`, `day`, `opening_hours`, `closing_hours`, `is_off`, `created_at`, `updated_at`) VALUES
(169, 1, 'Monday', '10:00:00', '19:00:00', 0, '2020-02-20 05:48:46', '2020-02-20 05:48:46'),
(170, 1, 'Tuesday', '10:00:00', '19:05:00', 0, '2020-02-20 05:48:46', '2020-02-20 05:48:46'),
(171, 1, 'Wednesday', '10:00:00', '19:00:00', 0, '2020-02-20 05:48:46', '2020-02-20 08:48:46'),
(172, 1, 'Thursday', '10:00:00', '19:00:00', 0, '2020-02-20 05:48:46', '2020-02-20 05:48:46'),
(173, 1, 'Friday', '10:00:00', '19:00:00', 0, '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(174, 1, 'Saturday', '10:00:00', '19:00:00', 1, '2020-02-20 05:48:47', '2020-02-20 05:48:47'),
(175, 1, 'Sunday', '10:00:00', '19:00:00', 1, '2020-02-20 05:48:47', '2020-02-20 05:48:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permission_admin_role`
--
ALTER TABLE `admin_permission_admin_role`
  ADD PRIMARY KEY (`admin_role_id`,`admin_permission_id`),
  ADD KEY `admin_role_id` (`admin_role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role_admin_user`
--
ALTER TABLE `admin_role_admin_user`
  ADD PRIMARY KEY (`admin_role_id`,`admin_user_id`),
  ADD KEY `admin_user_id` (`admin_user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_vehicle_reviews`
--
ALTER TABLE `admin_vehicle_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_vehicle_review_translations`
--
ALTER TABLE `admin_vehicle_review_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`admin_vehicle_review_id`);

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
-- Indexes for table `auto_approvals`
--
ALTER TABLE `auto_approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ban_lists`
--
ALTER TABLE `ban_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_vehicle_id_index` (`vehicle_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `conversation_messages`
--
ALTER TABLE `conversation_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_messages_conversation_id_index` (`conversation_id`),
  ADD KEY `conversation_messages_user_id_index` (`user_id`);

--
-- Indexes for table `conversation_participants`
--
ALTER TABLE `conversation_participants`
  ADD PRIMARY KEY (`conversation_id`,`user_id`),
  ADD KEY `conversation_participants_conversation_id_index` (`conversation_id`),
  ADD KEY `conversation_participants_user_id_index` (`user_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_id` (`faq_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `non_working_days`
--
ALTER TABLE `non_working_days`
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
  ADD PRIMARY KEY (`role_id`,`user_id`) USING BTREE,
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_slug_unique` (`slug`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plan_translations`
--
ALTER TABLE `subscription_plan_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_id` (`subscription_plan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`status`),
  ADD KEY `subscription_plan_id` (`subscription_plan_id`);

--
-- Indexes for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD PRIMARY KEY (`user_id`,`vehicle_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

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
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `badge_id` (`badge_id`),
  ADD KEY `body_styles_id` (`body_styles_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `drive_types_id` (`drive_types_id`),
  ADD KEY `exterior_colour_id` (`exterior_colour_id`),
  ADD KEY `interior_colour_id` (`interior_colour_id`),
  ADD KEY `fuel_types_id` (`fuel_types_id`),
  ADD KEY `lifestyle_id` (`lifestyle_id`),
  ADD KEY `makes_id` (`makes_id`),
  ADD KEY `models_id` (`models_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `transmissions_id` (`transmissions_id`);

--
-- Indexes for table `vehicle_badges`
--
ALTER TABLE `vehicle_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `makes_id` (`makes_id`),
  ADD KEY `models_id` (`models_id`);

--
-- Indexes for table `vehicle_badge_translations`
--
ALTER TABLE `vehicle_badge_translations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_body_style_id` (`vehicle_body_style_id`);

--
-- Indexes for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_colors_id` (`vehicle_colors_id`);

--
-- Indexes for table `vehicle_drive_types`
--
ALTER TABLE `vehicle_drive_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_drive_types_id` (`vehicle_drive_types_id`);

--
-- Indexes for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_feature_id` (`vehicle_feature_id`);

--
-- Indexes for table `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_fuel_types_translations`
--
ALTER TABLE `vehicle_fuel_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_fuel_types_id` (`vehicle_fuel_types_id`);

--
-- Indexes for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_inspections`
--
ALTER TABLE `vehicle_inspections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vehicle_lifestyles`
--
ALTER TABLE `vehicle_lifestyles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_lifestyle_id` (`vehicle_lifestyle_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `makes_id` (`makes_id`);

--
-- Indexes for table `vehicle_model_translations`
--
ALTER TABLE `vehicle_model_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_model_id` (`vehicle_model_id`);

--
-- Indexes for table `vehicle_reviews`
--
ALTER TABLE `vehicle_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_reviews_vehicle_id_index` (`vehicle_id`),
  ADD KEY `vehicle_reviews_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_transmissions_id` (`vehicle_transmissions_id`);

--
-- Indexes for table `vehicle_vehicle_feature`
--
ALTER TABLE `vehicle_vehicle_feature`
  ADD PRIMARY KEY (`vehicle_id`,`vehicle_feature_id`),
  ADD KEY `vehicle_feature_id` (`vehicle_feature_id`);

--
-- Indexes for table `working_times`
--
ALTER TABLE `working_times`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_vehicle_reviews`
--
ALTER TABLE `admin_vehicle_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_vehicle_review_translations`
--
ALTER TABLE `admin_vehicle_review_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `adsence_advertisements`
--
ALTER TABLE `adsence_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auto_approvals`
--
ALTER TABLE `auto_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ban_lists`
--
ALTER TABLE `ban_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `conversation_messages`
--
ALTER TABLE `conversation_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `newss`
--
ALTER TABLE `newss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news_translations`
--
ALTER TABLE `news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `non_working_days`
--
ALTER TABLE `non_working_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `page_locations`
--
ALTER TABLE `page_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription_plan_translations`
--
ALTER TABLE `subscription_plan_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicle_badges`
--
ALTER TABLE `vehicle_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle_badge_translations`
--
ALTER TABLE `vehicle_badge_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `vehicle_body_styles`
--
ALTER TABLE `vehicle_body_styles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicle_body_style_translations`
--
ALTER TABLE `vehicle_body_style_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicle_drive_types`
--
ALTER TABLE `vehicle_drive_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `vehicle_fuel_types`
--
ALTER TABLE `vehicle_fuel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_fuel_types_translations`
--
ALTER TABLE `vehicle_fuel_types_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `vehicle_inspections`
--
ALTER TABLE `vehicle_inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_lifestyles`
--
ALTER TABLE `vehicle_lifestyles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `vehicle_model_translations`
--
ALTER TABLE `vehicle_model_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1297;

--
-- AUTO_INCREMENT for table `vehicle_reviews`
--
ALTER TABLE `vehicle_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_seriess`
--
ALTER TABLE `vehicle_seriess`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vehicle_series_translations`
--
ALTER TABLE `vehicle_series_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `vehicle_translations`
--
ALTER TABLE `vehicle_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `vehicle_transmissions`
--
ALTER TABLE `vehicle_transmissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_transmissions_translations`
--
ALTER TABLE `vehicle_transmissions_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `working_times`
--
ALTER TABLE `working_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_role_admin_user`
--
ALTER TABLE `admin_role_admin_user`
  ADD CONSTRAINT `admin_role_admin_user_ibfk_1` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_role_admin_user_ibfk_2` FOREIGN KEY (`admin_user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_vehicle_review_translations`
--
ALTER TABLE `admin_vehicle_review_translations`
  ADD CONSTRAINT `admin_vehicle_review_translations_ibfk_1` FOREIGN KEY (`admin_vehicle_review_id`) REFERENCES `admin_vehicle_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adsence_advertisement_translations`
--
ALTER TABLE `adsence_advertisement_translations`
  ADD CONSTRAINT `adsence_advertisement_translations_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `adsence_advertisements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_template_translations`
--
ALTER TABLE `email_template_translations`
  ADD CONSTRAINT `email_template_translations_ibfk_1` FOREIGN KEY (`email_template_id`) REFERENCES `email_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_ibfk_1` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_translations`
--
ALTER TABLE `news_translations`
  ADD CONSTRAINT `news_translations_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `newss` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `user_subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_subscriptions_ibfk_2` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD CONSTRAINT `user_vehicle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_vehicle_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD CONSTRAINT `user_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_10` FOREIGN KEY (`makes_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_11` FOREIGN KEY (`models_id`) REFERENCES `vehicle_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_12` FOREIGN KEY (`series_id`) REFERENCES `vehicle_seriess` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_13` FOREIGN KEY (`transmissions_id`) REFERENCES `vehicle_transmissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`badge_id`) REFERENCES `vehicle_badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_3` FOREIGN KEY (`body_styles_id`) REFERENCES `vehicle_body_styles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_5` FOREIGN KEY (`drive_types_id`) REFERENCES `vehicle_drive_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_6` FOREIGN KEY (`exterior_colour_id`) REFERENCES `vehicle_colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_7` FOREIGN KEY (`interior_colour_id`) REFERENCES `vehicle_colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_8` FOREIGN KEY (`fuel_types_id`) REFERENCES `vehicle_fuel_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_9` FOREIGN KEY (`lifestyle_id`) REFERENCES `vehicle_lifestyles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_badges`
--
ALTER TABLE `vehicle_badges`
  ADD CONSTRAINT `vehicle_badges_ibfk_1` FOREIGN KEY (`makes_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_badges_ibfk_2` FOREIGN KEY (`models_id`) REFERENCES `vehicle_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_body_style_translations`
--
ALTER TABLE `vehicle_body_style_translations`
  ADD CONSTRAINT `vehicle_body_style_translations_ibfk_1` FOREIGN KEY (`vehicle_body_style_id`) REFERENCES `vehicle_body_styles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_colors_translations`
--
ALTER TABLE `vehicle_colors_translations`
  ADD CONSTRAINT `vehicle_colors_translations_ibfk_1` FOREIGN KEY (`vehicle_colors_id`) REFERENCES `vehicle_colors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_drive_types_translations`
--
ALTER TABLE `vehicle_drive_types_translations`
  ADD CONSTRAINT `vehicle_drive_types_translations_ibfk_1` FOREIGN KEY (`vehicle_drive_types_id`) REFERENCES `vehicle_drive_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_feature_translations`
--
ALTER TABLE `vehicle_feature_translations`
  ADD CONSTRAINT `vehicle_feature_translations_ibfk_1` FOREIGN KEY (`vehicle_feature_id`) REFERENCES `vehicle_features` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_fuel_types_translations`
--
ALTER TABLE `vehicle_fuel_types_translations`
  ADD CONSTRAINT `vehicle_fuel_types_translations_ibfk_1` FOREIGN KEY (`vehicle_fuel_types_id`) REFERENCES `vehicle_fuel_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD CONSTRAINT `vehicle_images_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_inspections`
--
ALTER TABLE `vehicle_inspections`
  ADD CONSTRAINT `vehicle_inspections_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_inspections_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_lifestyle_translations`
--
ALTER TABLE `vehicle_lifestyle_translations`
  ADD CONSTRAINT `vehicle_lifestyle_translations_ibfk_1` FOREIGN KEY (`vehicle_lifestyle_id`) REFERENCES `vehicle_lifestyles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_make_translations`
--
ALTER TABLE `vehicle_make_translations`
  ADD CONSTRAINT `vehicle_make_translations_ibfk_1` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD CONSTRAINT `vehicle_models_ibfk_1` FOREIGN KEY (`makes_id`) REFERENCES `vehicle_makes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_model_translations`
--
ALTER TABLE `vehicle_model_translations`
  ADD CONSTRAINT `vehicle_model_translations_ibfk_1` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_reviews`
--
ALTER TABLE `vehicle_reviews`
  ADD CONSTRAINT `vehicle_reviews_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_translations`
--
ALTER TABLE `vehicle_translations`
  ADD CONSTRAINT `vehicle_translations_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_transmissions_translations`
--
ALTER TABLE `vehicle_transmissions_translations`
  ADD CONSTRAINT `vehicle_transmissions_translations_ibfk_1` FOREIGN KEY (`vehicle_transmissions_id`) REFERENCES `vehicle_transmissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_vehicle_feature`
--
ALTER TABLE `vehicle_vehicle_feature`
  ADD CONSTRAINT `vehicle_vehicle_feature_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_vehicle_feature_ibfk_2` FOREIGN KEY (`vehicle_feature_id`) REFERENCES `vehicle_features` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
