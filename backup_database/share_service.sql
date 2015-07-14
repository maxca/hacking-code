-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2015 at 10:48 AM
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
('2015_05_27_141028_create_tmh_category', 2);

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
(1, 11, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', 'js_hi', 'js_mar', 'js_mar', 'js_tag', 'js_en', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', 'js_hi', 'js_mar', 'js_mar', 'js_tag', 'js_en', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', 'js_hi', 'js_mar', 'js_mar', 'js_tag', 'js_en', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', 'js_hi', 'js_mar', 'js_mar', 'js_tag', 'js_en', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'th_name', 'name_en', 'pack_ty', 'cate', 'charge_th', 'charge_en', 'per_th', 'per_en', 'voice_th', 'voice_en', 'voice_oc_th', 'voice_oc_en', 'data_th', 'data_en', 'me_th', 'me_en', 'oc_th', 'oc_en', 'wifi_th', 'wifi_en', 'oc_th', 'oc_en', 'sms_th', 'sms_en', 'sms_oc_th', 'sms_oc_en', 'mms_th', 'mms_en', 'mms_octh', 'mms_oc_en', 'anywhere_th', 'anywhrere_en', 'true_th', 'true_en', '1', 'js_hi', 'js_mar', 'js_mar', 'js_tag', 'js_en', 'condi_th', 'condi_en', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '500', '500', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(7, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '501', '501', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(8, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '502', '502', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(9, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '503', '503', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(10, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '504', '504', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(11, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '505', '505', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(12, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '506', '506', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(13, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '507', '507', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(14, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '508', '508', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59'),
(15, 1, 'ไอสมาท แพคเกจ', 'iSmart Package', 'post', 'generic', '509', '509', 'เดือน', 'month', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '1', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2015-05-28 11:02:59', '2015-05-28 11:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `tmh_shelf`
--

CREATE TABLE IF NOT EXISTS `tmh_shelf` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_allow_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `js_allow_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmh_shelf`
--

INSERT INTO `tmh_shelf` (`id`, `code`, `name_th`, `name_en`, `js_allow_type`, `js_allow_category`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '101', 'th_name', 'en_name', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":"1"}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '101', 'name_th', 'name_en', '{"js_allow_type":{"allow_type_pre":"1","allow_type_post":1}}', '{"js_allow_category":{"allow_category_1":"1","allow_category_2":"1","allow_category_3":"1","allow_category_4":"1","allow_category_5":"1"}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
