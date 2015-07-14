-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2015 at 09:21 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `share_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_19_150843_create_tmh_package_table', 1),
('2015_05_19_152025_create_tmh_package_shelf_table', 1),
('2015_05_19_152505_create_tmh_priceplan_table', 1),
('2015_05_19_153352_create_tmh_shelf_table', 1),
('2015_05_19_153711_create_tmh_language_table', 1),
('2015_05_26_145349_create_categories_table', 1),
('2015_05_27_141028_create_tmh_category', 2),
('2015_06_04_140412_create_convergences_table', 3),
('2015_06_04_162129_create_convergence_priceplans_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmh_categories`
--

CREATE TABLE IF NOT EXISTS `tmh_categories` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_categories`
--

INSERT INTO `tmh_categories` (`id`, `type`, `name_th`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ok', 'th', 'end', '2015-05-26 10:04:57', '2015-05-26 10:04:57', '0000-00-00 00:00:00'),
(2, 'check type', 'google', 'what the fuck', '2015-05-26 10:09:49', '2015-05-26 10:09:49', '0000-00-00 00:00:00'),
(3, 'check type', 'google', 'what the fuck', '2015-05-26 10:11:04', '2015-05-26 10:11:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tmh_category`
--

CREATE TABLE IF NOT EXISTS `tmh_category` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmh_language`
--

CREATE TABLE IF NOT EXISTS `tmh_language` (
  `id` int(10) unsigned NOT NULL,
  `fk_content_id` int(11) NOT NULL,
  `table_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmh_package`
--

CREATE TABLE IF NOT EXISTS `tmh_package` (
  `id` int(10) unsigned NOT NULL,
  `name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `fk_tmh_category_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_category_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_category_name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_category_name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message_caption_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message_caption_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `publish_start_date` datetime NOT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `telecom_generation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_allow_function` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_th` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_en` text COLLATE utf8_unicode_ci NOT NULL,
  `js_pp_marketing_message_th` text COLLATE utf8_unicode_ci NOT NULL,
  `js_pp_marketing_message_en` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_package`
--

INSERT INTO `tmh_package` (`id`, `name_th`, `name_en`, `type`, `fk_tmh_category_id`, `dn_tmh_category_type`, `dn_tmh_category_name_th`, `dn_tmh_category_name_en`, `message_caption_th`, `message_caption_en`, `status`, `publish_start_date`, `publish_end_date`, `telecom_generation`, `js_allow_function`, `js_marketing_message_th`, `js_marketing_message_en`, `js_pp_marketing_message_th`, `js_pp_marketing_message_en`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'โปรโมชั่น', 'name en ', 'type', '1', 'cate-type', 'cate-anme-th', 'cate_name_en', 'caption_th', 'caption_en', 'active', '2015-06-02 00:00:00', '2015-06-26 00:00:00', '00008881234', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tmh_package_convergence`
--

CREATE TABLE IF NOT EXISTS `tmh_package_convergence` (
  `id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message_caption_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message_caption_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `js_convergence_hilight` text COLLATE utf8_unicode_ci NOT NULL,
  `js_hilight` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_th` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_en` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_package_convergence`
--

INSERT INTO `tmh_package_convergence` (`id`, `active`, `name_th`, `name_en`, `message_caption_th`, `message_caption_en`, `js_convergence_hilight`, `js_hilight`, `js_marketing_message_th`, `js_marketing_message_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'name', 'en-name', 'message_caption_th', 'message_caption_en', '', '', '', '', '2015-06-04 10:54:44', '2015-06-04 10:54:44', NULL),
(2, 1, 'name', 'en-name', 'สมัคร', 'message_caption_en', '', '', '', '', '2015-06-04 10:55:38', '2015-06-04 10:55:38', NULL),
(3, 1, 'ภาษาไทย', 'en-name', 'สมัคร', 'message_caption_en', '', '', '', '', '2015-06-04 10:56:06', '2015-06-04 10:56:06', NULL),
(4, 1, 'ภาษาไทย', 'en-nameไทย', 'สมัคร', 'message_caption_en', '', '', '', '', '2015-06-04 10:57:22', '2015-06-04 10:57:22', NULL),
(5, 1, 'ภาษาไทย', 'en-name', 'สมัครดด', 'message_caption_en', '', '', '', '', '2015-06-04 11:00:31', '2015-06-04 11:00:31', NULL),
(6, 0, 'tha', 'enname', 'ths', 'message_caption_en', '', '', '', '', '2015-06-04 11:06:53', '2015-06-04 11:06:53', NULL),
(7, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_en', '', '', '', '', '2015-06-04 11:08:01', '2015-06-04 11:08:01', NULL),
(8, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_en', '', '', '', '', '2015-06-04 11:11:09', '2015-06-04 11:11:09', NULL),
(9, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_s', 'js_file', '', '', '', '2015-06-04 11:11:38', '2015-06-04 11:11:38', NULL),
(10, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_s', 'js_file', 'js_file2', '', '', '2015-06-04 11:11:59', '2015-06-04 11:11:59', NULL),
(11, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_s', 'js_file', 'js_file2', 'js_file3', '', '2015-06-04 11:12:32', '2015-06-04 11:12:32', NULL),
(12, 0, 'ไทยหด', 'enname', 'ths', 'message_caption_s', 'js_file', 'js_file2', 'js_file3', 'js_file4', '2015-06-04 11:12:55', '2015-06-04 11:12:55', NULL),
(13, 0, 'ภาษาไทย', 'en-name', 'สมัคร', 'message_caption_en', '', '', '', '', '2015-06-05 03:49:24', '2015-06-05 03:49:24', NULL),
(14, 0, 'ภาษาไทย', 'en-name', 'สมัคร', 'message_caption_en', '', '', '', '', '2015-06-05 03:49:51', '2015-06-05 03:49:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmh_package_convergence_priceplan`
--

CREATE TABLE IF NOT EXISTS `tmh_package_convergence_priceplan` (
  `id` int(10) unsigned NOT NULL,
  `fk_tmh_packag_convergence_id` int(11) NOT NULL,
  `dn_tmh_package_convergence_name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_convergence_name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_th` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_en` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `tmh_bundle` tinyint(1) NOT NULL,
  `tmh_pin` int(11) NOT NULL,
  `js_tmh_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tmh_convergence_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `tvs_bundle` tinyint(1) NOT NULL,
  `tvs_pin` int(11) NOT NULL,
  `js_tvs_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tvs_convergence_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `tol_bundle` tinyint(1) NOT NULL,
  `tol_pin` int(11) NOT NULL,
  `js_tol_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tol_convergence_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `privilege_tv_anywhere_bundle` tinyint(1) NOT NULL,
  `privilege_tv_anywhere_pin` int(11) NOT NULL,
  `js_tv_anywhere_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tv_anywhere_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `truecard_bundle` tinyint(1) NOT NULL,
  `truecard_pin` int(11) NOT NULL,
  `js_truecard_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_truecard_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `fixline_bundle` tinyint(1) NOT NULL,
  `fixline_pin` int(11) NOT NULL,
  `js_fixline_convergence_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `js_fixline_convergence_pin_message` text COLLATE utf8_unicode_ci NOT NULL,
  `js_hilight` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tag_th` text COLLATE utf8_unicode_ci NOT NULL,
  `js_tag_en` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_th` text COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_en` text COLLATE utf8_unicode_ci NOT NULL,
  `term_condition_th` text COLLATE utf8_unicode_ci NOT NULL,
  `term_condition_en` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmh_package_shelf`
--

CREATE TABLE IF NOT EXISTS `tmh_package_shelf` (
  `id` int(10) unsigned NOT NULL,
  `fk_tmh_package_id` int(11) NOT NULL,
  `dn_tmh_package_name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_tmh_shelf_id` int(11) NOT NULL,
  `dn_tmh_shelf_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_shelf_name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_shelf_name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_js_marketing_message_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_js_marketing_message_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_package_shelf`
--

INSERT INTO `tmh_package_shelf` (`id`, `fk_tmh_package_id`, `dn_tmh_package_name_th`, `dn_tmh_package_name_en`, `dn_tmh_package_type`, `dn_tmh_package_category`, `fk_tmh_shelf_id`, `dn_tmh_shelf_code`, `dn_tmh_shelf_name_th`, `dn_tmh_shelf_name_en`, `dn_js_marketing_message_th`, `dn_js_marketing_message_en`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'th_name', 'en_name', 'type', 'category', 1, 'code', 'name_ht', 'name_tne_s', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', 1, '101', 'th_name', 'en_name', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '0000-00-00 00:00:00', '2015-06-02 02:47:13', '2015-06-02 02:47:13'),
(3, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', 1, '101', 'th_name', 'en_name', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '0000-00-00 00:00:00', '2015-06-02 02:48:10', '2015-06-02 02:48:10'),
(4, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', 1, '101', 'th_name', 'en_name', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '0000-00-00 00:00:00', '2015-06-02 02:51:02', '2015-06-02 02:51:02'),
(5, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', 1, '101', 'th_name', 'en_name', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '{"name" : "FASTEST SPEED WITH MORE DATA"}', '0000-00-00 00:00:00', '2015-06-02 02:56:35', '2015-06-02 02:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `tmh_priceplan`
--

CREATE TABLE IF NOT EXISTS `tmh_priceplan` (
  `id` int(10) unsigned NOT NULL,
  `fk_tmh_package_id` int(11) NOT NULL,
  `dn_tmh_package_name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dn_tmh_package_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_per_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priceplan_charge_per_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_voice_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_voice_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_voice_oc_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_voice_oc_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_mesage_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_mesage_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_oc_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_data_oc_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_wifi_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_wifi_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_wifi_oc_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_wifi_oc_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_sms_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_sms_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_sms_oc_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_sms_oc_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_mms_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_mms_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_mms_oc_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_mms_oc_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_tv_anywhere_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_tv_anywhere_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_truecard_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privilege_truecard_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pin_priceplan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_hilight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_marketing_message_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_tag_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_tag_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `term_condition_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `term_condition_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_priceplan`
--

INSERT INTO `tmh_priceplan` (`id`, `fk_tmh_package_id`, `dn_tmh_package_name_th`, `dn_tmh_package_name_en`, `dn_tmh_package_type`, `dn_tmh_package_category`, `priceplan_charge_th`, `priceplan_charge_en`, `priceplan_charge_per_th`, `priceplan_charge_per_en`, `privilege_voice_th`, `privilege_voice_en`, `privilege_voice_oc_th`, `privilege_voice_oc_en`, `privilege_data_th`, `privilege_data_en`, `privilege_data_mesage_th`, `privilege_data_mesage_en`, `privilege_data_oc_th`, `privilege_data_oc_en`, `privilege_wifi_th`, `privilege_wifi_en`, `privilege_wifi_oc_th`, `privilege_wifi_oc_en`, `privilege_sms_th`, `privilege_sms_en`, `privilege_sms_oc_th`, `privilege_sms_oc_en`, `privilege_mms_th`, `privilege_mms_en`, `privilege_mms_oc_th`, `privilege_mms_oc_en`, `privilege_tv_anywhere_th`, `privilege_tv_anywhere_en`, `privilege_truecard_th`, `privilege_truecard_en`, `pin_priceplan`, `js_hilight`, `js_marketing_message_th`, `js_marketing_message_en`, `js_tag_th`, `js_tag_en`, `term_condition_th`, `term_condition_en`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 11, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '500', '500', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(7, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '501', '501', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(8, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '502', '502', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(9, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '503', '503', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(10, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '504', '504', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(11, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '505', '505', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(12, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '506', '506', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(13, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '507', '507', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(14, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '508', '508', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(15, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '509', '509', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '{"hilight_voice":"1","hilight_data":"1","hilight_wifi":"1","hilight_sms":"1","hilight_mms":"1","hilight_tv_anywhere":"1","hilight_truecard":"1"}', '{"charge":"\\u0e2d\\u0e31\\u0e19\\u0e14\\u0e31\\u0e1a 1 \\u0e40\\u0e23\\u0e34\\u0e48\\u0e21\\u0e15\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48"}', '{"charge":"1st No. Starting at"}', '{"tag_voice_th":"1","tag_data_th":"1","tag_wifi_th":"1","tag_sms_th":"1","tag_mms_th":"1","tag_tv_anywhere_th":"1","tag_tv_truecard_th":"1"}', '{"tag_voice_en":"1","tag_data_en":"1","tag_wifi_en":"1","tag_sms_en":"1","tag_mms_en":"1","tag_tv_anywhere_en":"1","tag_tv_truecard_en":"1"}', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `tmh_shelf`
--

CREATE TABLE IF NOT EXISTS `tmh_shelf` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `banner_th` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `banner_en` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `js_allow_type` text COLLATE utf8_unicode_ci NOT NULL,
  `js_allow_category` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_shelf`
--

INSERT INTO `tmh_shelf` (`id`, `code`, `name_th`, `name_en`, `banner_th`, `banner_en`, `note`, `js_allow_type`, `js_allow_category`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'most_advance_service', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(5, 'save_with_our_special_packages', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(8, 'true_convergence', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(11, 'move_to_us', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(14, 'international_service', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(17, 'packages_pre', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00'),
(20, 'packages_post', 'โมสแอ๊ดว๊านเซอวิค', 'Most Advanced Services', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'http://th01.deviantart.net/fs70/PRE/i/2014/046/e/8/pokemon_v_day_letters_by_suikuzu-d76jsne.png', 'xxxxxxx', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '2015-06-03 17:00:00', '2015-06-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tmh_categories`
--
ALTER TABLE `tmh_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_category`
--
ALTER TABLE `tmh_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_language`
--
ALTER TABLE `tmh_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_package`
--
ALTER TABLE `tmh_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_package_convergence`
--
ALTER TABLE `tmh_package_convergence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_package_convergence_priceplan`
--
ALTER TABLE `tmh_package_convergence_priceplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_package_shelf`
--
ALTER TABLE `tmh_package_shelf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_priceplan`
--
ALTER TABLE `tmh_priceplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmh_shelf`
--
ALTER TABLE `tmh_shelf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tmh_categories`
--
ALTER TABLE `tmh_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tmh_category`
--
ALTER TABLE `tmh_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmh_language`
--
ALTER TABLE `tmh_language`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmh_package`
--
ALTER TABLE `tmh_package`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tmh_package_convergence`
--
ALTER TABLE `tmh_package_convergence`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tmh_package_convergence_priceplan`
--
ALTER TABLE `tmh_package_convergence_priceplan`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmh_package_shelf`
--
ALTER TABLE `tmh_package_shelf`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tmh_priceplan`
--
ALTER TABLE `tmh_priceplan`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tmh_shelf`
--
ALTER TABLE `tmh_shelf`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
