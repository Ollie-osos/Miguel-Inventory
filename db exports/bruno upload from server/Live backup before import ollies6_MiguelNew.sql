-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 04:21 AM
-- Server version: 10.2.36-MariaDB-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ollies6_MiguelNew`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_as3cf_items`
--

CREATE TABLE `wp_as3cf_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bucket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `source_type` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` bigint(20) UNSIGNED NOT NULL,
  `source_path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_source_path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originator` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-21 21:58:51', '2021-02-21 21:58:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://olliesmith.net/miguelinventoryNew', 'yes'),
(2, 'home', 'http://olliesmith.net/miguelinventoryNew', 'yes'),
(3, 'blogname', 'Miguel Chevalier', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'm.oliver.smith@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:191:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"oeuvres/?$\";s:26:\"index.php?post_type=oeuvre\";s:40:\"oeuvres/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=oeuvre&feed=$matches[1]\";s:35:\"oeuvres/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=oeuvre&feed=$matches[1]\";s:27:\"oeuvres/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=oeuvre&paged=$matches[1]\";s:14:\"expositions/?$\";s:30:\"index.php?post_type=exposition\";s:44:\"expositions/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=exposition&feed=$matches[1]\";s:39:\"expositions/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=exposition&feed=$matches[1]\";s:31:\"expositions/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=exposition&paged=$matches[1]\";s:17:\"bibliographies/?$\";s:34:\"index.php?post_type=bibliographies\";s:47:\"bibliographies/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=bibliographies&feed=$matches[1]\";s:42:\"bibliographies/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=bibliographies&feed=$matches[1]\";s:34:\"bibliographies/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=bibliographies&paged=$matches[1]\";s:11:\"subworks/?$\";s:28:\"index.php?post_type=subworks\";s:41:\"subworks/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=subworks&feed=$matches[1]\";s:36:\"subworks/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=subworks&feed=$matches[1]\";s:28:\"subworks/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=subworks&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"oeuvre/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"oeuvre/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"oeuvre/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"oeuvre/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"oeuvre/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"oeuvre/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"oeuvre/([^/]+)/embed/?$\";s:39:\"index.php?oeuvre=$matches[1]&embed=true\";s:27:\"oeuvre/([^/]+)/trackback/?$\";s:33:\"index.php?oeuvre=$matches[1]&tb=1\";s:47:\"oeuvre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?oeuvre=$matches[1]&feed=$matches[2]\";s:42:\"oeuvre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?oeuvre=$matches[1]&feed=$matches[2]\";s:35:\"oeuvre/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?oeuvre=$matches[1]&paged=$matches[2]\";s:42:\"oeuvre/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?oeuvre=$matches[1]&cpage=$matches[2]\";s:31:\"oeuvre/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?oeuvre=$matches[1]&page=$matches[2]\";s:23:\"oeuvre/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"oeuvre/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"oeuvre/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"oeuvre/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"oeuvre/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"oeuvre/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"exposition/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"exposition/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"exposition/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"exposition/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"exposition/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"exposition/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"exposition/([^/]+)/embed/?$\";s:43:\"index.php?exposition=$matches[1]&embed=true\";s:31:\"exposition/([^/]+)/trackback/?$\";s:37:\"index.php?exposition=$matches[1]&tb=1\";s:51:\"exposition/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?exposition=$matches[1]&feed=$matches[2]\";s:46:\"exposition/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?exposition=$matches[1]&feed=$matches[2]\";s:39:\"exposition/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?exposition=$matches[1]&paged=$matches[2]\";s:46:\"exposition/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?exposition=$matches[1]&cpage=$matches[2]\";s:35:\"exposition/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?exposition=$matches[1]&page=$matches[2]\";s:27:\"exposition/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"exposition/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"exposition/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"exposition/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"exposition/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"exposition/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"bibliographies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"bibliographies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"bibliographies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"bibliographies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"bibliographies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"bibliographies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"bibliographies/([^/]+)/embed/?$\";s:47:\"index.php?bibliographies=$matches[1]&embed=true\";s:35:\"bibliographies/([^/]+)/trackback/?$\";s:41:\"index.php?bibliographies=$matches[1]&tb=1\";s:55:\"bibliographies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?bibliographies=$matches[1]&feed=$matches[2]\";s:50:\"bibliographies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?bibliographies=$matches[1]&feed=$matches[2]\";s:43:\"bibliographies/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?bibliographies=$matches[1]&paged=$matches[2]\";s:50:\"bibliographies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?bibliographies=$matches[1]&cpage=$matches[2]\";s:39:\"bibliographies/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?bibliographies=$matches[1]&page=$matches[2]\";s:31:\"bibliographies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"bibliographies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"bibliographies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"bibliographies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"bibliographies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"bibliographies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"subworks/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"subworks/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"subworks/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"subworks/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"subworks/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"subworks/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"subworks/([^/]+)/embed/?$\";s:41:\"index.php?subworks=$matches[1]&embed=true\";s:29:\"subworks/([^/]+)/trackback/?$\";s:35:\"index.php?subworks=$matches[1]&tb=1\";s:49:\"subworks/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?subworks=$matches[1]&feed=$matches[2]\";s:44:\"subworks/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?subworks=$matches[1]&feed=$matches[2]\";s:37:\"subworks/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?subworks=$matches[1]&paged=$matches[2]\";s:44:\"subworks/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?subworks=$matches[1]&cpage=$matches[2]\";s:33:\"subworks/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?subworks=$matches[1]&page=$matches[2]\";s:25:\"subworks/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"subworks/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"subworks/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"subworks/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"subworks/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"subworks/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:32:\"(.?.+?)/edit-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&edit-password=$matches[3]\";s:31:\"(.?.+?)/edit-profile(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-profile=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:30:\"(.?.+?)/user-logout(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&user-logout=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:14:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";i:2;s:53:\"category-import-reloaded/category-import-reloaded.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";i:5;s:32:\"duplicate-page/duplicatepage.php\";i:6;s:23:\"favorites/favorites.php\";i:7;s:35:\"list-categories/list-categories.php\";i:8;s:40:\"posts-table-pro/posts-data-table-pro.php\";i:9;s:20:\"printfriendly/pf.php\";i:10;s:39:\"user-registration/user-registration.php\";i:11;s:39:\"wp-all-import-pro/wp-all-import-pro.php\";i:12;s:28:\"wp-extended-search/wp-es.php\";i:13;s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'MiguelInventory', 'yes'),
(41, 'stylesheet', 'MiguelInventory', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:39:\"acf-better-search/acf-better-search.php\";a:2:{i:0;s:31:\"AcfBetterSearch\\Admin\\Uninstall\";i:1;s:20:\"removePluginSettings\";}s:41:\"add-search-to-menu/add-search-to-menu.php\";a:2:{i:0;s:8:\"Freemius\";i:1;s:22:\"_uninstall_plugin_hook\";}s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";a:2:{i:0;s:24:\"Custom_Post_Type_Widgets\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', 'Europe/London', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1629496731', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:82:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'en_GB', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-widgets\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:14:\"footer-widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:4:{i:1614632332;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1614635932;a:5:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614635953;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(275, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1614630629;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(652, '_site_transient_timeout_theme_roots', '1614632430', 'no'),
(653, '_site_transient_theme_roots', 'a:2:{s:15:\"MiguelInventory\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(156, 'current_theme', 'Miguel Inventory', 'yes'),
(157, 'theme_mods_MiguelInventory', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"sub_nav\";i:2;s:9:\"top-bar-r\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614347238;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-widgets\";a:0:{}s:14:\"footer-widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(125, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614347616;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(386, 'recovery_mode_email_last_sent', '1614110410', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(409, '_transient_pdt_2e9f6b9a38b46ed44924adbfd6370636', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Titre,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:10:\"exposition\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(410, '_transient_pdt_718a717871ff576842661736bfbddb98', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:115:\"image: &nbsp;,title:Titre,cf:location:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:10:\"exposition\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(510, 'user_registration_login_option_hide_show_password', 'no', 'yes'),
(511, 'user_registration_general_setting_uninstall_option', 'no', 'yes'),
(512, 'user_registration_myaccount_page_id', '194', 'yes'),
(513, 'user_registration_ajax_form_submission_on_edit_profile', 'no', 'yes'),
(514, 'user_registration_disable_logout_confirmation', 'no', 'yes'),
(515, 'user_registration_my_account_layout', 'horizontal', 'yes'),
(516, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(517, 'user_registration_myaccount_change_password_endpoint', 'edit-password', 'yes'),
(518, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(519, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(520, 'user_registration_integration_setting_recaptcha_version', 'v2', 'yes'),
(521, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(176, 'recently_activated', 'a:3:{s:39:\"acf-better-search/acf-better-search.php\";i:1614283603;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1614283603;s:23:\"wordfence/wordfence.php\";i:1613997619;}', 'yes'),
(219, 'wpmdb_settings', 'a:13:{s:3:\"key\";s:40:\"ViU8fRDrp0X4ABjtFRBDKFbFYSBt/KPRc6hcPEXI\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:36:\"629e05b9-1449-48a9-be8d-83bbc1128332\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}', 'no'),
(216, 'category_children', 'a:0:{}', 'yes'),
(217, 'printfriendly_option', 'a:33:{s:9:\"pro_email\";s:0:\"\";s:10:\"pro_domain\";s:0:\"\";s:18:\"password_protected\";s:2:\"no\";s:15:\"dynamic_content\";s:2:\"no\";s:10:\"javascript\";s:3:\"yes\";s:7:\"pf_algo\";s:2:\"wp\";s:23:\"enable_google_analytics\";s:2:\"no\";s:22:\"enable_error_reporting\";s:3:\"yes\";s:11:\"button_type\";s:49:\"buttons/printfriendly-pdf-email-button-notext.png\";s:18:\"custom_button_icon\";s:61:\"https://cdn.printfriendly.com/icons/printfriendly-icon-md.png\";s:12:\"custom_image\";s:0:\"\";s:18:\"custom_button_text\";s:11:\"custom-text\";s:11:\"custom_text\";s:13:\"PrintFriendly\";s:10:\"text_color\";s:7:\"#3AAA11\";s:9:\"text_size\";i:14;s:16:\"content_position\";s:4:\"left\";s:17:\"content_placement\";s:5:\"after\";s:11:\"margin_left\";i:12;s:12:\"margin_right\";i:12;s:10:\"margin_top\";i:12;s:13:\"margin_bottom\";i:12;s:4:\"logo\";s:7:\"favicon\";s:9:\"image_url\";s:0:\"\";s:7:\"tagline\";s:0:\"\";s:15:\"click_to_delete\";s:1:\"0\";s:11:\"images-size\";s:9:\"full-size\";s:11:\"image-style\";s:5:\"right\";s:5:\"email\";s:1:\"0\";s:3:\"pdf\";s:1:\"0\";s:5:\"print\";s:1:\"0\";s:14:\"custom_css_url\";s:0:\"\";s:10:\"enable_css\";s:2:\"on\";s:10:\"db_version\";i:17;}', 'yes'),
(218, 'PMXI_Plugin_Options', 'a:32:{s:12:\"info_api_url\";s:27:\"https://www.wpallimport.com\";s:18:\"history_file_count\";i:10000;s:16:\"history_file_age\";i:365;s:15:\"highlight_limit\";i:10000;s:19:\"upload_max_filesize\";i:2048;s:13:\"post_max_size\";i:2048;s:14:\"max_input_time\";i:-1;s:18:\"max_execution_time\";i:-1;s:7:\"dismiss\";i:0;s:16:\"dismiss_speed_up\";i:0;s:13:\"html_entities\";i:0;s:11:\"utf8_decode\";i:0;s:12:\"cron_job_key\";s:7:\"tjTck1n\";s:10:\"chunk_size\";i:32;s:9:\"pingbacks\";i:1;s:33:\"legacy_special_character_handling\";i:1;s:14:\"case_sensitive\";i:1;s:12:\"session_mode\";s:7:\"default\";s:17:\"enable_ftp_import\";i:0;s:16:\"large_feed_limit\";i:1000;s:26:\"cron_processing_time_limit\";i:59;s:6:\"secure\";i:1;s:11:\"log_storage\";i:5;s:10:\"cron_sleep\";s:0:\"\";s:4:\"port\";s:0:\"\";s:16:\"google_client_id\";s:0:\"\";s:16:\"google_signature\";s:0:\"\";s:8:\"licenses\";a:0:{}s:8:\"statuses\";a:0:{}s:19:\"force_stream_reader\";i:0;s:18:\"scheduling_license\";s:0:\"\";s:25:\"scheduling_license_status\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(583, 'wp-all-import-pro_85b8495febade7a221f67b0bca7d59d9', 'O:8:\"stdClass\":16:{s:11:\"new_version\";s:5:\"4.6.5\";s:14:\"stable_version\";s:5:\"4.6.5\";s:4:\"name\";s:13:\"WP All Import\";s:4:\"slug\";s:17:\"wp-all-import-pro\";s:3:\"url\";s:67:\"https://www.wpallimport.com/downloads/wp-all-import-pro?changelog=1\";s:12:\"last_updated\";s:19:\"2020-10-07 21:16:40\";s:8:\"homepage\";s:55:\"https://www.wpallimport.com/downloads/wp-all-import-pro\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";a:2:{s:11:\"description\";s:155:\"<p>Learn more about WP All Import at <a href=\"https://www.wpallimport.com/\" target=\"_blank\" rel=\"noopener noreferrer\">https://www.wpallimport.com/</a></p>\n\";s:9:\"changelog\";s:26004:\"<p>4.6.5</p>\n<ul>\n<li>improvement: added support for custom FTP root paths via filter</li>\n<li>improvement: return to 1st record in file when applying filters</li>\n<li>bug fix: update only selected custom fields didn\'t work properly</li>\n<li>bug fix: update featured image provided by 3rd party add-ons didn\'t work properly</li>\n<li>bug fix: get rid of unused deprecated function add_contextual_help()</li>\n<li>bug fix: impossible to move past step 4 when using import template that had import schedules configured</li>\n<li>bug fix: last run timestamp not updated if import file is valid</li>\n<li>bug fix: no records available when multiple filters are removed</li>\n</ul>\n<p>4.6.4</p>\n<ul>\n<li>New Feature: Import files from FTP</li>\n<li>improvement: deprecate \'High Speed Small File Processing\' import option</li>\n<li>improvement: allow multiple import IDs to be passed to WP-CLI</li>\n<li>improvement: sort imports by friendly name</li>\n<li>improvement: improve import speed when matching WooCommerce products by _sku custom field</li>\n<li>bug fix: \'Change image file names\' setting used when \'Use images currently in Media Library\' is selected</li>\n<li>bug fix: existing Reviews content type conflicts with WooCommerce Reviews</li>\n<li>bug fix: \'Use images currently in Media Library\' option tries to match images in content section</li>\n<li>bug fix: periods removed from cron job keys when saving plugin settings</li>\n<li>bug fix: references in \'pmxi_posts\' table for terms imported via \'Taxonomies\' imports removed on plugin deactivation</li>\n<li>bug fix: invalid images in post content downloaded as HTML pages</li>\n<li>bug fix: chromium scroll anchoring causes screen jumping effect</li>\n<li>bug fix: pagenum query argument causes broken link on import complete screen</li>\n<li>bug fix: WPML translations matching don\'t work for product variations in some cases</li>\n<li>bug fix: unable to match existing comments/reviews by custom field</li>\n<li>bug fix: unable to import existing files from sub folders</li>\n<li>bug fix: disabling \'Keep images currently in Media Library\' invalidates hashes when \'Images\' aren\'t set to be updated</li>\n<li>bug fix: changing image options in add-ons using Rapid Add-On API doesn\'t invalidate hashes</li>\n<li>bug fix: post created/updated/deleted counts disappear from \'Import in Progress\' page upon import completion</li>\n</ul>\n<p>4.6.3</p>\n<ul>\n<li>improvement: compatibility with WordPress 5.5</li>\n<li>bug fix: new log created on each cron processing call</li>\n<li>API: added helper function wp_all_import_get_import_id()</li>\n<li>API: added helper function wp_all_import_get_import_post_type($import_id)</li>\n<p>4.6.2</p>\n<ul>\n<li>improvement: Import Comments</li>\n<li>improvement: Import WooCommerce Reviews</li>\n<li>improvement: Skip updating records when data in import file has not changed</li>\n<li>improvement: Optimize speed when matching updated posts by custom field or SKU</li>\n<li>improvement: Disable scheduled imports via Automatic Scheduling UI</li>\n<li>API: add post ID to wp_all_import_images_uploads_dir</li>\n<li>bug fix: CodeMirror throws missing dependencies error</li>\n<li>bug fix: when using Match Images by URL images are also matched by filename</li>\n<li>bug fix: CSV column header detection causes issues in some cases</li>\n</ul>\n<p>4.6.1</p>\n<ul>\n<li>improvement: run imports via WP-CLI</li>\n<li>bug fix: switch to CodeMirror implementation shipped in WordPress core</li>\n<li>bug fix: unable to double click to insert XPath in some cases</li>\n<li>bug fix: unable to apply pmxi_is_images_to_update filter to featured images</li>\n<li>bug fix: unable to match existing images when suffix is added to file name during import</li>\n</ul>\n<p>4.6.0</p>\n<ul>\n<li>API: add new filter wp_all_import_scan_files_recursively</li>\n<li>bug fix: import custom fields caused import duplicate values</li>\n<li>bug fix: unable to match existing scaled images</li>\n</ul>\n<p>4.5.9</p>\n<ul>\n<li>improvement: import post content images from srcset attribute</li>\n<li>API: add new filter wp_all_import_recount_terms_after_import</li>\n<li>API: add new filter wp_all_import_content_images_get_full_size</li>\n<li>API: add new filter wp_all_import_feed_type</li>\n<li>bug fix: original_value argument for pmxi_custom_field contains incorrect value</li>\n</ul>\n<p>4.5.8</p>\n<ul>\n<li>improvement: match existing images by filename with underscores</li>\n<li>API: add new action wp_all_import_before_preserve_post_data</li>\n<li>API: add new filter wp_all_import_specified_delimiters</li>\n<li>bug fix: attachment author not imported for API image imports</li>\n</ul>\n<p>4.5.7</p>\n<ul>\n<li>improvement: get files nested in subdirectories from /wp-content/uploads/wpallimport/files</li>\n<li>improvement: add support for importing WebP images</li>\n<li>bug fix: images in content not being imported when creating new items</li>\n<li>bug fix: unable to match existing users by user ID</li>\n<li>bug fix: strip special characters from cron job key</li>\n</ul>\n<p>4.5.6</p>\n<ul>\n<li>improvement: add support for .tsv format</li>\n<li>improvement: load WP All Import only on admin dashboard on cron calls</li>\n<li>API: add new action pmxi_before_delete_post</li>\n<li>API: add new filter wp_all_import_use_wp_set_object_terms</li>\n<li>API: add new filter wp_all_import_copy_uploaded_file_into_files_folder</li>\n<li>API: add new filter wp_all_import_is_php_allowed</li>\n<li>API: add current XML variable to pmxi_article_data filter</li>\n<li>API: add articleData argument to wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: search for existing images doesn\'t work properly when rename images option in use</li>\n<li>bug fix: post terms incorrect after import complete, must be recounted</li>\n<li>bug fix: empty attachments created when attachment import fails</li>\n<li>bug fix: page template for some posts is overwritten in some cases</li>\n<li>bug fix: pmxi_update_post_meta action not firing in some cases</li>\n<li>bug fix: unable to import featured image from content section</li>\n<li>bug fix: matching posts by ID matches and imports into attachments with the same ID</li>\n<li>bug fix: matching taxonomy terms by term ID matches and imports into posts and attachments with the same ID</li>\n<li>bug fix: remove deprecated function pmxi_convert_encoding from API</li>\n</ul>\n<p>4.5.5</p>\n<ul>\n<li>improvement: do not keep trigger log items in history</li>\n<li>improvement: added new filter wp_all_import_search_image_by_wp_attached_file</li>\n<li>improvement: added new filter wp_all_import_get_existing_image</li>\n<li>improvement: added pmxi_import_failed action</li>\n<li>improvement: search for existing attachments in /files folder</li>\n<li>improvement: set featured image from img tags when importing content</li>\n<li>bug fix: don\'t delete records from pmxi_posts for existing users and taxonomy terms</li>\n<li>bug fix: skipping empty lines during csv to xml convertation</li>\n<li>bug fix: skip post when custom field data is unchanged</li>\n<li>bug fix: import custom field name via XPath</li>\n<li>bug fix: trigger delete_post action when imported posts are deleting</li>\n<li>bug fix: imports that are scheduled to run at 12am/pm</li>\n<li>bug fix: fixed updating custom fields with quotes</li>\n</ul>\n<p>4.5.4</p>\n<ul>\n<li>bug fix: import using stream reader</li>\n<li>bug fix: generation temporary files in system temporary folder</li>\n</ul>\n<p>4.5.3</p>\n<ul>\n<li>improvement: add support for Toolset Types</li>\n<li>bug fix: trigger deleted_user action when import deleting a user</li>\n<li>bug fix: add-ons api - searching for existing images in pmxi_images table</li>\n<li>bug fix: php error on array push alias</li>\n</ul>\n<p>4.5.2</p>\n<ul>\n<li>new feature: Automatic Scheduling - run imports on a schedule</li>\n<li>improvement: search for existing images based on remote image URL</li>\n<li>improvement: various backend improvements to image imports</li>\n<li>improvement: various import speed optimizations</li>\n<li>bug fix: remove deprecated function calls for PHP 7.2 compatibility</li>\n<li>bug fix: delete db tables when mu blog deleted</li>\n<li>bug fix: remove BOM from import templates</li>\n<li>bug fix: saving CSV delimiter when changing import file</li>\n</ul>\n<p>4.5.1</p>\n<ul>\n<li>improvement: import images from dropbox</li>\n<li>improvement: skips import process to the first specific record</li>\n<li>improvement: added new filter wp_all_import_is_render_whole_xml_tree</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter into add-ons api</li>\n<li>bug fix: conflict with InfiniteWP</li>\n<li>bug fix: oddity update notification for Link cloaking add-on</li>\n<li>bug fix: load functions before pmxi_before_xml_import</li>\n<li>bug fix: do not re-count category terms when post imported as draft</li>\n<li>bug fix: import base64 encoded images in add-ons</li>\n<li>bug fix: woo order custom fields auto-detection</li>\n<li>security fix - XSS exploit (Special thanks to Mardan Muhidin for reporting)</li>\n<li>security fix - XSS exploit (Special thanks to Yuji Tounai for reporting)</li>\n</ul>\n<p>4.5.0</p>\n<ul>\n<li>improvement: Make the WooCo Short Description expandable</li>\n<li>improvement: show notice when function editor is not saved</li>\n<li>improvement: added timestamp to import log lines</li>\n<li>improvement: added support for bmp images</li>\n<li>improvement: added new action pmxi_before_post_import_{$addon}</li>\n<li>security fix: patch XSS exploit</li>\n<li>bug fix: import pages hierarchy</li>\n<li>bug fix: error in pclzip.lib.php with php 7.1</li>\n<li>bug fix: import taxonomies hierarchy</li>\n<li>bug fix: json to xml convertation</li>\n<li>bug fix: import password protected feeds with port defined</li>\n</ul>\n<p>4.4.9</p>\n<ul>\n<li>improvement: custom fields detection</li>\n<li>improvement: new action wp_all_import_post_skipped</li>\n<li>improvement: updated history page title</li>\n<li>improvement: optimize large imports deletion</li>\n<li>improvement: added import friendly name to confirm screen</li>\n<li>improvement: sql query optimization on manage imports screen</li>\n<li>improvement: added wp_all_import_shard_delay filter</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: compatibility with WPML</li>\n<li>bug fix: generation image filename</li>\n<li>bug fix: wp_all_import_specified_records filter</li>\n</ul>\n<p>4.4.8</p>\n<ul>\n<li>improvement: added hungarian translation</li>\n<li>bug fix: csv headers generation</li>\n<li>bug fix: import template from Import Settings works again</li>\n<li>bug fix: users no longer logged out when user is update via import</li>\n<li>bug fix: images with encoded quotes</li>\n</ul>\n<p>4.4.7</p>\n<ul>\n<li>bug fix: cron job completed early for imports with xpath</li>\n<li>bug fix: csv headers with non latin characters</li>\n</ul>\n<p>4.4.6</p>\n<ul>\n<li>bug fix: cron job un-triggered on timeout error</li>\n</ul>\n<p>4.4.5</p>\n<ul>\n<li>bug fix: import xls from dropbox</li>\n<li>bug fix: template preview</li>\n</ul>\n<p>4.4.4</p>\n<ul>\n<li>improvement: new filter \'wp_all_import_phpexcel_delimiter\'</li>\n<li>improvement: new filter \'wp_all_import_is_trim_parsed_data\'</li>\n<li>improvement: added new \'filter wp_all_import_skip_x_csv_rows\'</li>\n<li>improvement: added csv delimiter setting to import options screen</li>\n<li>bug fix: taxonomies dropdown list</li>\n<li>bug fix: cron job was never untriggered when calling to undefined function</li>\n<li>bug fix: taxonomies preview</li>\n<li>bug fix: import duplicate tags</li>\n<li>bug fix: importing taxonomy terms that already exist in a different taxonomies</li>\n</ul>\n<p>4.4.3</p>\n<ul>\n<li>bug fix: parsing images for newly added records</li>\n<li>bug fix: the event calendar conflict</li>\n</ul>\n<p>4.4.2</p>\n<ul>\n<li>improvement: added new filter wp_all_import_phpexcel_object to modify excel data before import</li>\n<li>bug fix: search for images ending with underscores in media</li>\n<li>bug fix: import hierarchical posts and pages</li>\n<li>bug fix: import custom post type page templates</li>\n<li>bug fix: matching taxonomies by name</li>\n<li>bug fix: custom fields validation</li>\n</ul>\n<p>4.4.1</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: search for existing attachments option</li>\n<li>improvement: new filter for file path of functions.php file</li>\n<li>bug fix: images preview</li>\n<li>bug fix: improved matching for images similar to image.com.png</li>\n</ul>\n<p>4.4.0</p>\n<ul>\n<li>new feature: added import taxonomies feature</li>\n<li>bug fix: hierarchy taxonomies preview</li>\n<li>bug fix: empty logs folder generation</li>\n<li>bug fix: \'Keep images currently in Media Library\' option for add-ons</li>\n<li>bug fix: import bundles with gz files</li>\n<li>bug fix: custom functions for attachments</li>\n</ul>\n<p>4.3.2</p>\n<ul>\n<li>improvement: \'Force Stream Reader\' setting</li>\n<li>improvement: tar + gz compression support for remote feeds</li>\n<li>improvement: new filter \'wp_all_import_auto_create_csv_headers\'</li>\n<li>improvement: new filter \'wp_all_import_is_base64_images_allowed\'</li>\n<li>improvement: new filter \'wp_all_import_set_post_terms\' to leave a specific category alone when a post is being updated</li>\n<li>bug fix: cron import timeout when set missing outofstock option is enabled</li>\n<li>bug fix: nodes navigation for xpath like /news/item</li>\n<li>bug fix: frozen import template screen for cyrillic XML feeds</li>\n<li>bug fix: conflict between taxonomies &amp; user import</li>\n<li>bug fix: creating users with the same email</li>\n<li>bug fix: enable keep line breaks option by default</li>\n<li>bug fix: composer namespace conflict</li>\n<li>bug fix: images preview when wp is in subdirectory</li>\n<li>bug fix: \'Instead of deletion, set Custom Field\' option for users import</li>\n</ul>\n<p>4.3.1</p>\n<ul>\n<li>fixed issue with libxml 2.9.3</li>\n<li>execute \'pmxi_article_data\' filter for all posts ( new &amp; existing )</li>\n</ul>\n<p>4.3.0</p>\n<ul>\n<li>added de_CH translation</li>\n<li>added support for .svg images</li>\n<li>added possibility for import excerpts for pages</li>\n<li>added new filter \'wp_all_import_specified_records\'</li>\n<li>added new filter \'wp_all_import_is_post_to_delete\'</li>\n<li>fixed saving function editor</li>\n<li>fixed custom fields mapping rules with \'0\' value</li>\n<li>fixed termination of the import if the \"Delete source XML file after importing\" is checked</li>\n<li>disable XMLReader stream filter for HHVM</li>\n<li>improve search for existing images in media gallery</li>\n</ul>\n<p>4.2.9</p>\n<ul>\n<li>fixed error messages on step 4</li>\n<li>fixed renaming image files</li>\n<li>fixed delete missing records option</li>\n<li>fixed csv to xml convertation in case when there are some equal titles in csv file</li>\n<li>stop using $HTTP_RAW_POST_DATA for PHP 7.x compatibility</li>\n<li>added new action \'pmxi_missing_post\'</li>\n</ul>\n<p>4.2.8</p>\n<ul>\n<li>update required database tables</li>\n</ul>\n<p>4.2.7</p>\n<ul>\n<li>fixed detecting root nodes with colons in names</li>\n<li>fixed php notice \"Undefined variable: existing_meta_keys\"</li>\n<li>fixed rendering special chars in function editor</li>\n<li>fixed css for WordPress 4.4</li>\n<li>added feature to delete only posts not import</li>\n<li>added feature to download template/bundle from import settings</li>\n<li>added new option for importing images \"Use images currently in Media Library\"</li>\n<li>remove periods to hyphens convertation in image name</li>\n<li>auto detect dropbox URLs and change to dl=1</li>\n<li>changed comma delimiting behavior/UI in image meta</li>\n</ul>\n<p>4.2.6</p>\n<ul>\n<li>fixed preview prices</li>\n<li>fixed counting XML nodes</li>\n</ul>\n<p>4.2.5</p>\n<ul>\n<li>fixed \'Delete source XML file after importing\' option</li>\n<li>fixed ‘Instead of deletion, change post status to Draft’ option</li>\n<li>fixed reading XML files with NS in element names</li>\n<li>added ‘WooCommerce Order’ to post type list on step 1</li>\n</ul>\n<p>4.2.4</p>\n<ul>\n<li>fixed duplicate matching by custom field</li>\n<li>fixed error messages on step1 in case when server throws fatal error e.q. time limit exception</li>\n<li>fixed option \"Delete posts that are no longer present in your file\", now it works with empty CSV files which has only one header row</li>\n<li>fixed importing custom fields with the same name</li>\n<li>fixed custom functions in images preview</li>\n<li>added es_ES translation</li>\n<li>added de_DE translation</li>\n<li>added iterative ajax delete process ( deleting associated posts )</li>\n</ul>\n<p>4.2.3</p>\n<ul>\n<li>Fixed removing uploaded XML source file on re-run process</li>\n</ul>\n<p>4.2.2</p>\n<ul>\n<li>Fixed saving function editor</li>\n</ul>\n<p>4.2.1</p>\n<ul>\n<li>fixed duplicate matching by custom field ( cron )</li>\n<li>fixed converting image filenames to lowercase</li>\n<li>fixed import html to image description</li>\n<li>fixed import _wp_old_slug</li>\n<li>added Post ID to manual record matching</li>\n<li>added \'Comment status\' to \'Choose data to update\' section</li>\n<li>added \'cancel\' to cron API /wp-cron.php?import_key=Kt&amp;import_id=407&amp;action=cancel</li>\n<li>added function editor</li>\n</ul>\n<p>4.2.0</p>\n<ul>\n<li>fixed parsing CSV with empty lines</li>\n<li>fixed parsing multiple IF statements</li>\n<li>fixed preview in case when ‘Disable the visual editor when writing’ is enabled</li>\n<li>fixed conflict with WooCommerce - Store Exporter Deluxe</li>\n<li>added possibility to start synchronized cron requests &amp;sync=1</li>\n<li>added notifications for required addons</li>\n<li>added support for wp all export bundle</li>\n<li>added support for manual import bundle</li>\n<li>added feature \'click to download import file\'</li>\n<li>added validation for excerpt and images sections</li>\n<li>added auto-detect a broken Unique ID notification</li>\n<li>added import template notifications</li>\n<li>removed support for importing WooCommerce Orders</li>\n<li>changed absolute paths to relative in db</li>\n<li>updated cron response messages</li>\n<li>moved uploaded files to \'Use existing\' dropdown</li>\n</ul>\n<p>4.1.7</p>\n<ul>\n<li>added support for Excel files ( .xls, .xlsx )</li>\n<li>added new option \'Do not remove images from media gallery\' on import<br />\nsettings screen</li>\n<li>added new options to taxonomies import \'Try to match terms to<br />\nexisting child Product Categories\' &amp; \'Only assign Products to the<br />\nimported Product Category, not the entire hierarchy\'</li>\n<li>fixed excessive update requests</li>\n<li>added options to \'Delete associated posts</li>\n</ul>\n<p>4.1.6</p>\n<ul>\n<li>load ini_set only on plugins pages</li>\n<li>fixed saving import template</li>\n<li>added import post format via XPath</li>\n</ul>\n<p>4.1.5</p>\n<ul>\n<li>fixed import page template</li>\n<li>added a second argument to pmxi_saved_post action ( SimpleXML object ) of current record</li>\n</ul>\n<p>4.1.4</p>\n<ul>\n<li>fixed Apply mapping rules before splitting via separator symbol for manual hierarchy</li>\n<li>fixed path equal or less than</li>\n<li>fixed changing unique key when moving back from confirm screen</li>\n<li>fixed override page template</li>\n<li>fixed unlink images on deleting missing posts</li>\n<li>updated wp_all_import_is_post_to_update filter with second argument XML node as array</li>\n<li>updated compatibility with WP All Export</li>\n<li>added filter wp_all_import_feed_type</li>\n<li>added possibility to use php to calculate URL on first step [add_to_url(\"https://google.com/\")]</li>\n</ul>\n<p>4.1.3</p>\n<ul>\n<li>fixed un triggering issue on cron jobs for empty files</li>\n<li>changed updater priority from 10 to 20</li>\n<li>added post parent option for all hierarchical CPT</li>\n</ul>\n<p>4.1.2</p>\n<ul>\n<li>Important security fixes - additional hardening, prevention of blind SQL injection and reflected XSS attacks</li>\n</ul>\n<p>4.1.1</p>\n<ul>\n<li>critical security fix - stopping non-logged in users from accessing adminInit https://www.wpallimport.com/2015/02/wp-import-4-1-1-mandatory-security-update/</li>\n<li>added new filter wp_all_import_is_post_to_update to skip needed posts add_filter(\'wp_all_import_is_post_to_update\', \'is_post_to_update\', 10, 1);</li>\n<li>added new option Search for existing attachments to prevent duplicates in media library</li>\n<li>fixed imports pagination</li>\n<li>fixed preview taxonomies</li>\n<li>fixed upload folder creation when \'upload_dir\' filter defined</li>\n<li>fixed db schema for wpmu when new site added</li>\n</ul>\n<p>4.1.0</p>\n<ul>\n<li>fixed cron execution when titles are not defined</li>\n<li>added an option to separate hierarchy groups via symbol</li>\n<li>added separator symbol for manually nested taxonomies</li>\n</ul>\n<p>4.0.9</p>\n<ul>\n<li>added license key setting for automatic update</li>\n<li>added option search images through attachments</li>\n<li>added option assign term to the bottom level term in the hierarchy</li>\n</ul>\n<p>4.0.8</p>\n<ul>\n<li>fixed taxonomies preview</li>\n<li>fixed import meta description for images</li>\n<li>added feature to assign posts to needed terms</li>\n<li>added new option for taxonomies Apply mapping rules before splitting via separator symbol</li>\n<li>added set with XPath option for comment status, ping status, page parent, page template</li>\n</ul>\n<p>4.0.7</p>\n<ul>\n<li>fixed feed detection for rss chanels</li>\n<li>fixed parsing json data</li>\n<li>fixed add only new images option</li>\n<li>fixed delete missing records option</li>\n<li>added ability to import custom fields with the same name</li>\n<li>added port setting</li>\n</ul>\n<p>4.0.6</p>\n<ul>\n<li>fixed encoding for taxonomies mapping</li>\n<li>optimization for delete missing records option</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed changes that related to _wp_page_template meta data</li>\n</ul>\n<p>4.0.5</p>\n<ul>\n<li>fixed template parsing when php function arguments contains an array()</li>\n<li>fixed error msg when feed is html page e.g. page 404</li>\n<li>fixed xpath building</li>\n<li>update hierarchy taxonomies options</li>\n</ul>\n<p>4.0.4</p>\n<ul>\n<li>changed main file name to wp-all-import-pro.php</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed bug with empty unique keys</li>\n</ul>\n<p>4.0.3</p>\n<ul>\n<li>fixed re-count record when a file has been changed at an import setting screen</li>\n<li>fixed database schema auto-update</li>\n<li>fixed uploading large files</li>\n<li>fixed auto-detecting root element</li>\n<li>fixed log storage in database</li>\n<li>fixed cron execution when \"do not create new records\" option is enabled</li>\n<li>fixed feed type detection</li>\n<li>fixed unlink attachment source when posts updated/deleted</li>\n<li>fixed specialchars in taxnomies/categories mapping</li>\n<li>updated taxonomies hierarchy settings</li>\n<li>added a limit 10 to the existing meta values</li>\n</ul>\n<p>4.0.2</p>\n<ul>\n<li>speed up the import of taxonomies/categories</li>\n<li>added taxonomies/categories mapping feature</li>\n<li>added custom fields auto-detection feature</li>\n<li>added custom fields mapping feature</li>\n<li>added images/taxonomies preview feature</li>\n<li>added unofficial support for more file formats - json &amp; sql</li>\n<li>added new setting (secure mode) to protect your files</li>\n<li>better import logs</li>\n<li>updated design</li>\n</ul>\n<p>3.4.2</p>\n<ul>\n<li>fixed navigation bug</li>\n<li>fixed search duplicates</li>\n<li>fixed duplicate categories</li>\n<li>fixed path builder for element attributes</li>\n<li>fixed cron processing for already uploaded files (XML)</li>\n<li>added taxonomies for pages</li>\n</ul>\n<p>3.4.1</p>\n<ul>\n<li>fixed pmxi_delete_post action: this action was executed after posts were deleted</li>\n<li>fixed import menu order &amp; post parent for pages</li>\n<li>fixed import log for continue import feature</li>\n<li>added is update author option</li>\n<li>fixed post formats</li>\n<li>fixed cron processing: WP_Error object was not initialized</li>\n<li>fixed cron processing for import where XPath filtering is defined</li>\n<li>fixed UTC dates on manage imports page</li>\n</ul>\n<p>3.4.0</p>\n<ul>\n<li>fixed: import empty content</li>\n<li>fixed: log files</li>\n<li>fixed: detect image extension</li>\n<li>fixed: terms hierarchy on cron job execution</li>\n</ul>\n<p>3.3.9</p>\n<ul>\n<li>added: feature to do not escape shortcodes</li>\n<li>fixed: pre-processing logic</li>\n<li>fixed: downloading images with unicode url</li>\n<li>fixed: clear non ASCII/invalid symbols in CSV files</li>\n<li>fixed: import option \'Instead of using original image file name, set file name(s)\'</li>\n</ul>\n<p>3.3.8</p>\n<ul>\n<li>fixed: admin notices</li>\n<li>fixed: creation duplicates draft post via cron</li>\n<li>fixed: images with encoded symbols</li>\n<li>fixed: upload file via URL</li>\n<li>fixed: php notices</li>\n<li>added: compatibility with WP 3.9</li>\n</ul>\n<p>3.3.7</p>\n<ul>\n<li>updated convertation CSV to XML with XMLWriter</li>\n<li>fixed import *.zip files</li>\n<li>fixed xpath helper on step 2</li>\n<li>fixed showing zeros in XML tree</li>\n<li>allow post content to be empty on step 3</li>\n<li>added autodetect session mode</li>\n<li>delete deprecated settings my csv contain html code and case sensitivity</li>\n<li>fixed deleting history files</li>\n<li>fixed autodetect image extensions</li>\n<li>fixed increasing SQL query length</li>\n<li>added error messages</li>\n<li>fixed \"High Speed Small File Processing\" option</li>\n</ul>\n<p>3.3.6</p>\n<ul>\n<li>fixed: multiple cron execution</li>\n<li>fixed: load options template</li>\n<li>fixed: session initialization</li>\n<li>fixed: import search</li>\n<li>fixed: attachment author on cron execution</li>\n<li>fixed: download images option</li>\n<li>added: errors messages to the log</li>\n<li>added: \"not contains\" filter to step 2</li>\n<li>added: compatibility with categories mapping addon</li>\n<li>updated: cpt navigation on step 4</li>\n</ul>\n<p>3.3.5</p>\n<ul>\n<li>fixed bug with cron processing</li>\n<li>fixed bug with saving wrong image name</li>\n<li>added serialized custom fields feature</li>\n<li>added compatibility with user import add-on</li>\n<li>added compatibility with 3rd party developers</li>\n<li>added new setting \'Cron processing time limit\'</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:55:\"http://ps.w.org/wp-all-import/assets/banner-772x250.png\";s:3:\"low\";s:0:\"\";}s:5:\"icons\";s:6:\"a:0:{}\";s:8:\"requires\";s:5:\"3.6.1\";s:6:\"tested\";s:5:\"5.5.1\";s:6:\"author\";s:6:\"Soflyy\";s:12:\"contributors\";a:2:{s:6:\"soflyy\";a:3:{s:12:\"display_name\";s:6:\"soflyy\";s:7:\"profile\";s:37:\"https://profiles.wordpress.org/soflyy\";s:6:\"avatar\";s:51:\"https://wordpress.org/grav-redirect.php?user=soflyy\";}s:11:\"wpallimport\";a:3:{s:12:\"display_name\";s:11:\"wpallimport\";s:7:\"profile\";s:42:\"https://profiles.wordpress.org/wpallimport\";s:6:\"avatar\";s:56:\"https://wordpress.org/grav-redirect.php?user=wpallimport\";}}}', 'no'),
(278, 'duplicate_page_options', 'a:6:{s:25:\"duplicatepage_nonce_field\";s:10:\"0df152e3c7\";s:16:\"_wp_http_referer\";s:77:\"/miguelinventoryNew/wp-admin/options-general.php?page=duplicate_page_settings\";s:21:\"duplicate_post_editor\";s:7:\"classic\";s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";}', 'yes'),
(279, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(280, 'fs_debug_mode', '', 'yes'),
(281, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:2086;a:2:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:1:{s:18:\"add-search-to-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1613995682;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"4.5.10\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"olliesmith.net\";s:9:\"server_ip\";s:12:\"62.48.172.98\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1613995682;s:7:\"version\";s:6:\"4.5.10\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";}s:7:\"plugins\";a:1:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:12:\"premium_slug\";s:26:\"add-search-to-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:6:\"4.5.10\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"b473cafe893d450670f9b8b0e3edfe90\";s:13:\"admin_notices\";a:1:{s:18:\"add-search-to-menu\";a:0:{}}}', 'yes'),
(282, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(283, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(570, 'fs_api_cache', 'a:0:{}', 'no'),
(654, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614630630;s:7:\"checked\";a:25:{s:39:\"acf-better-search/acf-better-search.php\";s:5:\"3.8.0\";s:35:\"add-from-server/add-from-server.php\";s:5:\"3.4.5\";s:47:\"advanced-csv-importer/advanced-csv-importer.php\";s:5:\"0.1.6\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:49:\"all-in-one-intranet/basic_all_in_one_intranet.php\";s:3:\"1.7\";s:53:\"category-import-reloaded/category-import-reloaded.php\";s:5:\"1.1.1\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";s:5:\"1.4.0\";s:32:\"duplicate-page/duplicatepage.php\";s:3:\"4.3\";s:23:\"favorites/favorites.php\";s:5:\"2.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:6:\"4.5.10\";s:35:\"list-categories/list-categories.php\";s:3:\"0.3\";s:40:\"posts-table-pro/posts-data-table-pro.php\";s:5:\"1.3.1\";s:20:\"printfriendly/pf.php\";s:6:\"3.15.0\";s:39:\"user-registration/user-registration.php\";s:7:\"1.9.4.1\";s:23:\"wordfence/wordfence.php\";s:6:\"7.4.14\";s:24:\"wp-all-import/plugin.php\";s:5:\"3.5.6\";s:35:\"wpai-acf-add-on/wpai-acf-add-on.php\";s:5:\"3.3.1\";s:39:\"wp-all-import-pro/wp-all-import-pro.php\";s:5:\"4.6.5\";s:28:\"wp-extended-search/wp-es.php\";s:5:\"2.0.1\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:6:\"1.0.16\";s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";s:6:\"1.9.14\";s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";s:5:\"2.5.2\";}s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"add-search-to-menu/add-search-to-menu.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/add-search-to-menu\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:11:\"new_version\";s:6:\"4.5.11\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/add-search-to-menu/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/add-search-to-menu.4.5.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-256x256.png?rev=2077748\";s:2:\"1x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-128x128.png?rev=2077748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/add-search-to-menu/assets/banner-1544x500.png?rev=2077748\";s:2:\"1x\";s:73:\"https://ps.w.org/add-search-to-menu/assets/banner-772x250.png?rev=2317518\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:20:\"printfriendly/pf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/printfriendly\";s:4:\"slug\";s:13:\"printfriendly\";s:6:\"plugin\";s:20:\"printfriendly/pf.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/printfriendly/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/printfriendly.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/printfriendly/assets/icon-256x256.png?rev=2432584\";s:2:\"1x\";s:66:\"https://ps.w.org/printfriendly/assets/icon-128x128.png?rev=2432584\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/printfriendly/assets/banner-772x250.png?rev=2432584\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:6:\"1.0.17\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:263:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6Ik16RXhNemxrTkdKa01HUXlNbUU0WlRJd1pXSXhZalU0WkdZME1tUTVabVV4T1RnMk16YzRZV1kxTURVeVltVmtPRFl3Wm1NMSIsIndwX3VybCI6Imh0dHA6XC9cL29sbGllc21pdGgubmV0XC9taWd1ZWxpbnZlbnRvcnlOZXcifQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:16:{s:39:\"acf-better-search/acf-better-search.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/acf-better-search\";s:4:\"slug\";s:17:\"acf-better-search\";s:6:\"plugin\";s:39:\"acf-better-search/acf-better-search.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/acf-better-search/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/acf-better-search.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/acf-better-search/assets/icon-256x256.png?rev=1740419\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-better-search/assets/icon-128x128.png?rev=1740419\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/acf-better-search/assets/banner-1544x500.png?rev=1740419\";s:2:\"1x\";s:72:\"https://ps.w.org/acf-better-search/assets/banner-772x250.png?rev=1740419\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"add-from-server/add-from-server.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/add-from-server\";s:4:\"slug\";s:15:\"add-from-server\";s:6:\"plugin\";s:35:\"add-from-server/add-from-server.php\";s:11:\"new_version\";s:5:\"3.4.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/add-from-server/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/add-from-server.3.4.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/add-from-server.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:47:\"advanced-csv-importer/advanced-csv-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/advanced-csv-importer\";s:4:\"slug\";s:21:\"advanced-csv-importer\";s:6:\"plugin\";s:47:\"advanced-csv-importer/advanced-csv-importer.php\";s:11:\"new_version\";s:5:\"0.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/advanced-csv-importer/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/advanced-csv-importer.0.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/advanced-csv-importer/assets/icon-128x128.png?rev=1056456\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/advanced-csv-importer/assets/banner-772x250.png?rev=1056456\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"all-in-one-intranet/basic_all_in_one_intranet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-intranet\";s:4:\"slug\";s:19:\"all-in-one-intranet\";s:6:\"plugin\";s:49:\"all-in-one-intranet/basic_all_in_one_intranet.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-intranet/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/all-in-one-intranet.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/all-in-one-intranet/assets/icon-256x256.png?rev=978743\";s:2:\"1x\";s:71:\"https://ps.w.org/all-in-one-intranet/assets/icon-128x128.png?rev=978743\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/all-in-one-intranet/assets/banner-772x250.png?rev=942738\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"category-import-reloaded/category-import-reloaded.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/category-import-reloaded\";s:4:\"slug\";s:24:\"category-import-reloaded\";s:6:\"plugin\";s:53:\"category-import-reloaded/category-import-reloaded.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/category-import-reloaded/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/category-import-reloaded.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/category-import-reloaded/assets/icon-256x256.png?rev=1875231\";s:2:\"1x\";s:77:\"https://ps.w.org/category-import-reloaded/assets/icon-128x128.png?rev=1875231\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/category-import-reloaded/assets/banner-1544x500.png?rev=1875231\";s:2:\"1x\";s:79:\"https://ps.w.org/category-import-reloaded/assets/banner-772x250.png?rev=1875231\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/custom-post-type-widgets\";s:4:\"slug\";s:24:\"custom-post-type-widgets\";s:6:\"plugin\";s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/custom-post-type-widgets/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/custom-post-type-widgets.1.4.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/custom-post-type-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:3:\"4.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"favorites/favorites.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/favorites\";s:4:\"slug\";s:9:\"favorites\";s:6:\"plugin\";s:23:\"favorites/favorites.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/favorites/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/favorites.2.3.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/favorites/assets/icon-128x128.png?rev=1677726\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/favorites/assets/banner-772x250.png?rev=1677726\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"list-categories/list-categories.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/list-categories\";s:4:\"slug\";s:15:\"list-categories\";s:6:\"plugin\";s:35:\"list-categories/list-categories.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/list-categories/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/list-categories.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/list-categories/assets/icon-256x256.png?rev=1796094\";s:2:\"1x\";s:68:\"https://ps.w.org/list-categories/assets/icon-128x128.png?rev=1796094\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/list-categories/assets/banner-772x250.png?rev=1796089\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"user-registration/user-registration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/user-registration\";s:4:\"slug\";s:17:\"user-registration\";s:6:\"plugin\";s:39:\"user-registration/user-registration.php\";s:11:\"new_version\";s:7:\"1.9.4.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/user-registration/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/user-registration.1.9.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/user-registration/assets/icon-256x256.png?rev=2141788\";s:2:\"1x\";s:70:\"https://ps.w.org/user-registration/assets/icon-128x128.png?rev=2141788\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/user-registration/assets/banner-772x250.png?rev=2141793\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.4.14\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.4.14.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=2070855\";s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wp-all-import/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-all-import\";s:4:\"slug\";s:13:\"wp-all-import\";s:6:\"plugin\";s:24:\"wp-all-import/plugin.php\";s:11:\"new_version\";s:5:\"3.5.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-all-import/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-all-import.3.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-256x256.png?rev=1181068\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-128x128.png?rev=1181068\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-all-import/assets/banner-772x250.png?rev=735306\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"wp-extended-search/wp-es.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-extended-search\";s:4:\"slug\";s:18:\"wp-extended-search\";s:6:\"plugin\";s:28:\"wp-extended-search/wp-es.php\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-extended-search/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-extended-search.2.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-extended-search/assets/icon-256x256.png?rev=2436853\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-extended-search/assets/icon-128x128.png?rev=2436853\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wp-extended-search/assets/banner-1544x500.png?rev=2436853\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-extended-search/assets/banner-772x250.png?rev=2436853\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/amazon-s3-and-cloudfront\";s:4:\"slug\";s:24:\"amazon-s3-and-cloudfront\";s:6:\"plugin\";s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";s:11:\"new_version\";s:5:\"2.5.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/amazon-s3-and-cloudfront/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/amazon-s3-and-cloudfront.2.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/icon-256x256.jpg?rev=1809890\";s:2:\"1x\";s:77:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/icon-128x128.jpg?rev=1809890\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/banner-1544x500.jpg?rev=1809890\";s:2:\"1x\";s:79:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/banner-772x250.jpg?rev=1809890\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(286, 'wordfence_version', '7.4.14', 'yes'),
(287, 'wordfence_case', '1', 'yes'),
(288, 'wordfence_installed', '1', 'yes'),
(289, 'wordfenceActivated', '0', 'yes'),
(290, 'wf_plugin_act_error', '', 'yes'),
(539, 'new_admin_email', 'm.oliver.smith@gmail.com', 'yes'),
(558, 'acfbs_notice_hidden', '1614887703', 'yes'),
(566, 'widget_wpes_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(567, 'wp_es_options', 'a:13:{s:5:\"title\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:7:\"excerpt\";s:1:\"1\";s:9:\"meta_keys\";a:55:{i:0;s:7:\"address\";i:1;s:22:\"affiliated_exhibitions\";i:2;s:16:\"affiliated_works\";i:3;s:6:\"author\";i:4;s:22:\"bibliographic_category\";i:5;s:4:\"city\";i:6;s:18:\"city_of_the_editor\";i:7;s:10:\"collection\";i:8;s:7:\"country\";i:9;s:8:\"courtesy\";i:10;s:13:\"creation_date\";i:11;s:7:\"curator\";i:12;s:11:\"description\";i:13;s:12:\"dimension_cm\";i:14;s:12:\"dimension_in\";i:15;s:14:\"dimensions_box\";i:16;s:19:\"dimensions_cm_frame\";i:17;s:19:\"dimensions_in_frame\";i:18;s:7:\"edition\";i:19;s:6:\"editor\";i:20;s:8:\"end_date\";i:21;s:4:\"etat\";i:22;s:6:\"format\";i:23;s:16:\"graphic_designer\";i:24;s:6:\"images\";i:25;s:4:\"isbn\";i:26;s:9:\"languages\";i:27;s:6:\"legend\";i:28;s:12:\"localisation\";i:29;s:7:\"logicel\";i:30;s:10:\"main_image\";i:31;s:15:\"number_of_pages\";i:32;s:5:\"price\";i:33;s:20:\"price_assurance_euro\";i:34;s:18:\"price_assurance_us\";i:35;s:21:\"price_production_euro\";i:36;s:19:\"price_production_us\";i:37;s:15:\"price_sale_euro\";i:38;s:13:\"price_sale_us\";i:39;s:13:\"private_notes\";i:40;s:12:\"public_notes\";i:41;s:16:\"publication_date\";i:42;s:10:\"start_date\";i:43;s:9:\"structure\";i:44;s:9:\"sub_title\";i:45;s:18:\"technical_elements\";i:46;s:18:\"type_of_exhibition\";i:47;s:17:\"type_of_packaging\";i:48;s:24:\"unique_bibliography_code\";i:49;s:22:\"unique_exhibition_code\";i:50;s:16:\"unique_work_code\";i:51;s:3:\"url\";i:52;s:9:\"weight_kg\";i:53;s:15:\"weight_packaged\";i:54;s:13:\"work_realised\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:7:\"authors\";s:1:\"0\";s:10:\"post_types\";a:4:{i:0;s:6:\"oeuvre\";i:1;s:10:\"exposition\";i:2;s:14:\"bibliographies\";i:3;s:8:\"subworks\";}s:14:\"terms_relation\";s:1:\"1\";s:11:\"exact_match\";s:2:\"no\";s:12:\"exclude_date\";s:0:\"\";s:14:\"posts_per_page\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"order\";s:4:\"DESC\";}', 'yes'),
(573, 'widget_custom-post-type-archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(574, 'widget_custom-post-type-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(575, 'widget_custom-post-type-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(576, 'widget_custom-post-type-tag-cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(577, 'widget_custom-post-type-recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(578, 'widget_custom-post-type-recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(579, 'widget_custom-post-type-search', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(594, '_transient_pdt_70bed4e7f86a3c9639f9855b0f1d1a14', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:16:\"caisson-lumineux\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(595, '_transient_pdt_043c0347d48e5534fd0712f9e78e5fc8', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:13:\"nuage-fractal\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(596, '_transient_pdt_90d8cf6edd7a808e97a830a729fd6c13', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:21:\"commande-particuliere\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(597, '_transient_pdt_d1eb68859fd7e52ef662252a6abe9547', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:14:\"complex-meshes\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(598, '_transient_pdt_283fc6901c5c3cd55f11e9d26ffc8225', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:9:\"category=\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(599, '_transient_pdt_6185d943e42e30a67e09267bd7831d11', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:1:\"0\";s:3:\"tag\";s:1:\"0\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(584, 'wp-all-import-pro_timeout_85b8495febade7a221f67b0bca7d59d9', '1614290967', 'yes'),
(227, 'pmxi_is_migrated', '4.6.5', 'yes'),
(228, 'wp_all_import_db_version', '4.6.5', 'yes'),
(229, 'wpmdb_schema_version', '2', 'no'),
(536, 'user_registration_registration_page_id', '195', 'yes'),
(522, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(523, 'user_registration_integration_setting_recaptcha_site_key_v3', '', 'yes'),
(524, 'user_registration_integration_setting_recaptcha_site_secret_v3', '', 'yes'),
(525, 'user_registration_email_setting_disable_email', 'no', 'no'),
(526, 'user_registration_email_from_name', 'Miguel Chevalier', 'no'),
(527, 'user_registration_email_from_address', 'm.oliver.smith@gmail.com', 'no'),
(528, 'user_registration_default_form_page_id', '193', 'yes'),
(531, 'user_registration_version', '1.9.4.1', 'yes'),
(532, 'user_registration_db_version', '1.9.4.1', 'yes'),
(533, 'user_registration_activated', '2021-02-25', 'yes'),
(534, 'user_registration_admin_notices', 'a:1:{i:0;s:8:\"register\";}', 'yes'),
(535, 'user_registration_users_listing_viewed', '2021-02-25 19:50:50', 'yes'),
(238, 'acf_version', '5.9.3', 'yes'),
(650, '_transient_timeout_acf_plugin_updates', '1614803430', 'no'),
(651, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:263:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6Ik16RXhNemxrTkdKa01HUXlNbUU0WlRJd1pXSXhZalU0WkdZME1tUTVabVV4T1RnMk16YzRZV1kxTURVeVltVmtPRFl3Wm1NMSIsIndwX3VybCI6Imh0dHA6XC9cL29sbGllc21pdGgubmV0XC9taWd1ZWxpbnZlbnRvcnlOZXcifQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}', 'no'),
(508, 'user_registration_general_setting_login_options', 'default', 'yes'),
(509, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(260, 'as3cf_schema_version', '2.5.2', 'yes'),
(243, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiTXpFeE16bGtOR0prTUdReU1tRTRaVEl3WldJeFlqVTRaR1kwTW1RNVptVXhPVGcyTXpjNFlXWTFNRFV5WW1Wa09EWXdabU0xIjtzOjM6InVybCI7czo0MDoiaHR0cDovL29sbGllc21pdGgubmV0L21pZ3VlbGludmVudG9yeU5ldyI7fQ==', 'yes'),
(277, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614630630;s:7:\"checked\";a:2:{s:15:\"MiguelInventory\";s:5:\"2.0.6\";s:12:\"twentytwenty\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(411, '_transient_pdt_3eeb14d0a7b5f9244c5e9a42dad4c6a1', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:112:\"image: &nbsp;,title:Title,cf:city:Ville,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:10:\"exposition\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(412, '_transient_pdt_71241d76de38301d9d77a54bc60162d7', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:101:\"image: &nbsp;,title:Title,cf:city:Ville,cf:start_date:Dates,cf:unique_exhibition_code:Code exposition\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:10:\"exposition\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(416, '_transient_pdt_9a291393760aafab0c8c1a90b91caadf', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(417, '_transient_pdt_9ce8d4475d9c4e3b6e1b8f53bc45af8c', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:101:\"image: &nbsp;,title:Title,cf:city:Ville,cf:start_date:Dates,cf:unique_exhibition_code:Code exposition\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:16:\"bibliographiques\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(418, '_transient_pdt_cee9a0897b08135f617aa78442280b75', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:101:\"image: &nbsp;,title:Title,cf:city:Ville,cf:start_date:Dates,cf:unique_exhibition_code:Code exposition\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:14:\"bibliographies\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(419, '_transient_pdt_4253622e4dd87d40639ed123d511a51d', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:73:\"image: &nbsp;,author:Author,title:Title:Ville,date:Date,cf:editor:Editeur\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:14:\"bibliographies\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(420, '_transient_pdt_fae4b26c312fcb8fba0871f52912ad6c', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:137:\"image: &nbsp;,cf:author:Author,title:Title:Ville,cf: publication_date:Date,cf:editor:Editeur,cf:unique_bibliography_code:Code référence\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:14:\"bibliographies\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(421, '_transient_pdt_65d16410d853bddb97a0105221484a88', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:136:\"image: &nbsp;,cf:author:Author,title:Title:Ville,cf:publication_date:Date,cf:editor:Editeur,cf:unique_bibliography_code:Code référence\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:14:\"bibliographies\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(422, '_transient_pdt_0accf9de88822c9d1909495e1dee3445', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:8:\"subworks\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(438, '_transient_pdt_fa0bd1b02dee0522fed4509bce0f134c', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:108:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:8:\"subworks\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(251, '_site_transient_timeout_wpmdb_addons', '1619198918', 'no'),
(252, '_site_transient_wpmdb_addons', 'a:4:{s:29:\"wp-migrate-db-pro-media-files\";a:6:{s:4:\"type\";s:7:\"feature\";s:4:\"name\";s:11:\"Media Files\";s:4:\"desc\";s:412:\"Allows you to push and pull your files in the Media Library between two WordPress installs. It can compare both libraries and only migrate those missing or updated, or it can do a complete copy of one site’s library to another. <a href=\"https://deliciousbrains.com/wp-migrate-db-pro/doc/media-files-addon/?utm_campaign=addons%252Binstall&utm_source=MDB%252BPaid&utm_medium=insideplugin\">More Details &rarr;</a>\";s:7:\"version\";s:6:\"1.4.16\";s:12:\"beta_version\";s:5:\"2.0b4\";s:6:\"tested\";s:5:\"5.6.1\";}s:21:\"wp-migrate-db-pro-cli\";a:7:{s:4:\"type\";s:7:\"feature\";s:4:\"name\";s:3:\"CLI\";s:4:\"desc\";s:414:\"Integrates WP Migrate DB Pro with WP-CLI allowing you to run migrations from the command line: <code>wp migratedb &lt;push|pull&gt; &lt;url&gt; &lt;secret-key&gt;</code> <code>[--find=&lt;strings&gt;] [--replace=&lt;strings&gt;] ...</code> <a href=\"https://deliciousbrains.com/wp-migrate-db-pro/doc/cli-addon/?utm_campaign=addons%252Binstall&utm_source=MDB%252BPaid&utm_medium=insideplugin\">More Details &rarr;</a>\";s:8:\"required\";s:5:\"1.4b1\";s:7:\"version\";s:5:\"1.3.5\";s:12:\"beta_version\";s:5:\"1.4b2\";s:6:\"tested\";s:5:\"5.6.1\";}s:33:\"wp-migrate-db-pro-multisite-tools\";a:7:{s:4:\"type\";s:7:\"feature\";s:4:\"name\";s:15:\"Multisite Tools\";s:4:\"desc\";s:270:\"Export a subsite as an SQL file that can then be imported as a single site install. <a href=\"https://deliciousbrains.com/wp-migrate-db-pro/doc/multisite-tools-addon/?utm_campaign=addons%252Binstall&utm_source=MDB%252BPaid&utm_medium=insideplugin\">More Details &rarr;</a>\";s:8:\"required\";s:7:\"1.5-dev\";s:7:\"version\";s:5:\"1.2.6\";s:12:\"beta_version\";s:5:\"1.3b1\";s:6:\"tested\";s:5:\"5.6.1\";}s:36:\"wp-migrate-db-pro-theme-plugin-files\";a:7:{s:4:\"type\";s:7:\"feature\";s:4:\"name\";s:20:\"Theme & Plugin Files\";s:4:\"desc\";s:277:\"Allows you to push and pull your theme and plugin files between two WordPress installs. <a href=\"https://deliciousbrains.com/wp-migrate-db-pro/doc/theme-plugin-files-addon/?utm_campaign=addons%252Binstall&utm_source=MDB%252BPaid&utm_medium=insideplugin\">More Details &rarr;</a>\";s:8:\"required\";s:7:\"1.8.2b1\";s:7:\"version\";s:5:\"1.0.6\";s:12:\"beta_version\";s:5:\"1.1b3\";s:6:\"tested\";s:5:\"5.6.1\";}}', 'no'),
(253, 'tantan_wordpress_s3', 'a:4:{s:13:\"access-key-id\";s:0:\"\";s:11:\"force-https\";s:0:\"\";s:6:\"region\";s:0:\"\";s:17:\"secret-access-key\";s:0:\"\";}', 'yes'),
(618, '_transient_pdt_9530835d9b3783b2257eeb8b8a1de9c3', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:8:\"adhesifs\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(619, '_transient_pdt_975677b549ffbc108459f90bb59e50d6', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:6:\"bijoux\";s:3:\"tag\";s:14:\"complex-meshes\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(620, '_transient_pdt_da68816acb28c57fb8798d31c7086bc1', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:8:\"adhesifs\";s:3:\"tag\";s:14:\"complex-meshes\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(460, '_transient_pdt_b5964adadd513092276c18a3b9c7ffd7', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:131:\"image: &nbsp;,cf:author:Author,title:Title,cf: publication_date:Date,cf:editor:Editeur,cf:unique_bibliography_code:Code référence\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:14:\"bibliographies\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(600, '_transient_pdt_15540a95bca6852a744129cce845e323', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:3:\"all\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(601, '_transient_pdt_334e4148984fef98bdaad8269bab3b1a', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:3:\"all\";s:3:\"tag\";s:3:\"all\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(602, '_transient_pdt_1ba3efa22ed77bad4344023af6cb9913', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:19:\"category=gonflables\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(603, '_transient_pdt_e8b1836b80a623e3a9923a8b8f6d70d3', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:17:\"category=adhesifs\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(604, '_transient_pdt_79f7624d794eb73c13a5d8468fffce5d', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:8:\"adhesifs\";s:3:\"tag\";s:6:\"voyage\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(605, '_transient_pdt_5ada99d36a11f8533c5fe556ec9407ef', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:16:\"caisson-lumineux\";s:3:\"tag\";s:6:\"voyage\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(606, '_transient_pdt_a72763cad69f098d41e1f1839215c757', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:10:\"gonflables\";s:3:\"tag\";s:6:\"voyage\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(607, '_transient_pdt_b3410e13dc8d6173ddd35e82b7fa62f3', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:10:\"gonflables\";s:3:\"tag\";s:5:\"title\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(608, '_transient_pdt_7bb23bda667169b197311643e591f66a', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:10:\"gonflables\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(609, '_transient_pdt_b6fa0ac05cab4dc339e77f337e533028', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:10:\"gonflables\";s:3:\"tag\";s:14:\"complex-meshes\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(486, 'simplefavorites_dependencies', 'a:2:{s:3:\"css\";s:4:\"true\";s:2:\"js\";s:4:\"true\";}', 'yes'),
(487, 'simplefavorites_users', 'a:2:{s:9:\"anonymous\";a:2:{s:7:\"display\";s:4:\"true\";s:4:\"save\";s:4:\"true\";}s:6:\"saveas\";s:6:\"cookie\";}', 'yes'),
(488, 'simplefavorites_display', 'a:10:{s:9:\"posttypes\";a:4:{s:6:\"oeuvre\";a:2:{s:7:\"display\";s:4:\"true\";s:14:\"before_content\";s:4:\"true\";}s:10:\"exposition\";a:1:{s:7:\"display\";s:4:\"true\";}s:14:\"bibliographies\";a:1:{s:7:\"display\";s:4:\"true\";}s:8:\"subworks\";a:1:{s:7:\"display\";s:4:\"true\";}}s:19:\"button_element_type\";s:6:\"button\";s:10:\"buttontype\";s:8:\"favorite\";s:13:\"button_colors\";a:10:{s:18:\"background_default\";s:0:\"\";s:14:\"border_default\";s:0:\"\";s:12:\"text_default\";s:0:\"\";s:12:\"icon_default\";s:0:\"\";s:13:\"count_default\";s:0:\"\";s:17:\"background_active\";s:0:\"\";s:13:\"border_active\";s:0:\"\";s:11:\"text_active\";s:0:\"\";s:11:\"icon_active\";s:0:\"\";s:12:\"count_active\";s:0:\"\";}s:10:\"buttontext\";s:43:\"Favorite <i class=\"sf-icon-star-empty\"></i>\";s:19:\"buttontextfavorited\";s:43:\"Favorited <i class=\"sf-icon-star-full\"></i>\";s:16:\"loadingindicator\";a:2:{s:7:\"include\";s:4:\"true\";s:4:\"text\";s:7:\"Loading\";}s:7:\"listing\";a:5:{s:12:\"wrapper_type\";s:2:\"ul\";s:11:\"wrapper_css\";s:0:\"\";s:12:\"listing_type\";s:2:\"li\";s:11:\"listing_css\";s:0:\"\";s:18:\"custom_markup_html\";s:0:\"\";}s:14:\"clearfavorites\";s:15:\"Clear Favorites\";s:11:\"nofavorites\";s:12:\"No Favorites\";}', 'yes'),
(489, 'simplefavorites_cache_enabled', 'true', 'yes'),
(496, 'simplefavorites_dev_mode', 'true', 'yes'),
(647, '_transient_pdt_afd3df9793070af67fba9552f156a1e7', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:9:\"japonisme\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(320, 'ptp_license_key', '1', 'yes'),
(321, 'ptp_license_status', 'valid', 'yes'),
(322, '_transient_pdt_7e0cb6242edf1e4027e8db4a6f3ffd6b', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:11:\"title:Title\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(323, '_transient_pdt_25167367bf1b4268b212e6a31bf9ef14', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:69:\"title:Titre,date:Date,category:Catégorie,Série,Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:5:\"title\";s:10:\"sort_order\";s:3:\"asc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(324, '_transient_pdt_5886e5a83a5b912e5b07c40220c4bbd6', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:87:\"title:Titre,date:Date,category:Catégorie,Série,unique_works_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(325, '_transient_pdt_35b0d17bfd19df9d2d8c9237c733fe79', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:92:\"title:Titre,date:Date,category:Catégorie,tags:Série,unique_works_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(326, '_transient_pdt_3f3382af7cd6b6a06ed8700f1d28f5eb', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:91:\"title:Titre,date:Date,category:Catégorie,tags:Série,unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(327, '_transient_pdt_a780c439e52560b14e4c9782a9afd732', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:94:\"title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:0:\"\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:3;s:11:\"search_term\";s:0:\"\";}', 'yes'),
(328, '_transient_pdt_b5627637cad90edd0bafddd0e3cca22c', 'a:4:{s:4:\"args\";a:29:{s:7:\"columns\";s:100:\"image,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";s:4:\"true\";s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";i:10;s:7:\"sort_by\";s:7:\"dateraw\";s:10:\"sort_order\";s:4:\"desc\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:11:\"post_offset\";i:0;s:11:\"search_term\";s:7:\"complex\";}s:11:\"total_posts\";i:3;s:14:\"total_filtered\";i:0;s:11:\"search_term\";s:7:\"complex\";}', 'yes'),
(329, '_transient_pdt_92710d0a4222697f8daa5b3ef4d5732b', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:100:\"image,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(330, '_transient_pdt_7182b25618b96e0ea4cc33b7ac8a329a', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:101:\"image:,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(331, '_transient_pdt_2770a2d86d03d8434356e1da10581121', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:102:\"image:.,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(332, '_transient_pdt_4d292ffa4f6b3e59cff92f5be0756a97', 'a:1:{s:4:\"args\";a:27:{s:7:\"columns\";s:102:\"image: ,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}}', 'yes'),
(333, '_transient_pdt_54d3d3827985903a9293b04a9d873982', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:108:\"image: &nbsp;,title:Titre,date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(348, '_transient_pdt_53ec68102e7fad22b038ecf2b226dd6d', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Titre,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(349, '_transient_pdt_8adaa89675f7f2d8dae9cebec1afcbe0', 'a:4:{s:4:\"args\";a:27:{s:7:\"columns\";s:120:\"image: &nbsp;,title:Titre,cf:creation_date:Data,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire\";s:6:\"widths\";s:0:\"\";s:10:\"priorities\";s:0:\"\";s:4:\"wrap\";b:1;s:11:\"show_footer\";b:0;s:15:\"search_on_click\";b:1;s:13:\"scroll_offset\";i:15;s:14:\"content_length\";i:15;s:5:\"links\";s:3:\"all\";s:4:\"ajax\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"date_format\";s:0:\"\";s:16:\"no_posts_message\";s:0:\"\";s:25:\"no_posts_filtered_message\";s:0:\"\";s:13:\"rows_per_page\";s:2:\"10\";s:7:\"sort_by\";s:4:\"date\";s:10:\"sort_order\";s:0:\"\";s:9:\"post_type\";s:6:\"oeuvre\";s:11:\"post_status\";s:7:\"publish\";s:8:\"category\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:4:\"term\";s:0:\"\";s:2:\"cf\";s:0:\"\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:3:\"day\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:11:\"total_posts\";N;s:14:\"total_filtered\";N;s:11:\"search_term\";N;}', 'yes'),
(359, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"9\",\"critical\":\"1\"}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_files`
--

CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_hash`
--

CREATE TABLE `wp_pmxi_hash` (
  `hash` binary(16) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `import_id` smallint(5) UNSIGNED NOT NULL,
  `post_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_history`
--

CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('manual','processing','trigger','continue','cli','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_images`
--

CREATE TABLE `wp_pmxi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_filename` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pmxi_images`
--

INSERT INTO `wp_pmxi_images` (`id`, `attachment_id`, `image_url`, `image_filename`) VALUES
(1, 150, '', '1986-ap-dhum3.jpg'),
(2, 151, '', '1986-ap-thermographie2.jpg'),
(3, 152, '', '1986-ap-thermographie10.jpg'),
(4, 153, '', '1986-ap-thermographie16.jpg'),
(5, 154, '', '1986-ap-thermographie23bis.jpg'),
(6, 155, '', '1986-ap-thermographie25.jpg'),
(7, 156, '', '1986-ap-thermographie26.jpg'),
(8, 161, '', 'abd_al_malik_-_dante_-_03_-_paris_mais_-mp3-image.jpg'),
(9, 171, '', '1989-tc-interfacedos.jpg'),
(10, 172, '', '1989-ti-jumbo1.png'),
(11, 173, '', '1989-ti-jumbo2_0.png'),
(12, 174, '', '1989-ti-jumbo3.png');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_imports`
--

CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_import_id` bigint(20) NOT NULL DEFAULT 0,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xpath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT 0,
  `executing` tinyint(1) NOT NULL DEFAULT 0,
  `triggered` tinyint(1) NOT NULL DEFAULT 0,
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT 0,
  `first_import` timestamp NOT NULL DEFAULT current_timestamp(),
  `count` bigint(20) NOT NULL DEFAULT 0,
  `imported` bigint(20) NOT NULL DEFAULT 0,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `updated` bigint(20) NOT NULL DEFAULT 0,
  `skipped` bigint(20) NOT NULL DEFAULT 0,
  `deleted` bigint(20) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT 0,
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_posts`
--

CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteration` bigint(20) NOT NULL DEFAULT 0,
  `specified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pmxi_templates`
--

CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT 0,
  `is_leave_html` tinyint(1) NOT NULL DEFAULT 0,
  `fix_characters` tinyint(1) NOT NULL DEFAULT 0,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(629, 179, '_menu_item_type', 'custom'),
(628, 63, '_edit_last', '1'),
(627, 63, '_edit_lock', '1614281443:1'),
(626, 55, '_edit_lock', '1614026298:1'),
(625, 178, '_wp_trash_meta_time', '1614014388'),
(624, 178, '_wp_trash_meta_status', 'publish'),
(12, 149, '_edit_last', '1'),
(13, 149, '_edit_lock', '1613995523:1'),
(14, 150, '_wp_attached_file', '2021/02/1986-ap-dhum3.jpg'),
(15, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2296;s:6:\"height\";i:2290;s:4:\"file\";s:25:\"2021/02/1986-ap-dhum3.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"1986-ap-dhum3-1024x1021.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"1986-ap-dhum3-1024x1021.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"1986-ap-dhum3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"1986-ap-dhum3-768x766.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:766;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"1986-ap-dhum3-1536x1532.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"1986-ap-dhum3-2048x2043.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2043;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:26:\"1986-ap-dhum3-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(16, 151, '_wp_attached_file', '2021/02/1986-ap-thermographie2.jpg'),
(17, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2148;s:6:\"height\";i:2124;s:4:\"file\";s:34:\"2021/02/1986-ap-thermographie2.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie2-1024x1013.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1013;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie2-1024x1013.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1013;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"1986-ap-thermographie2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"1986-ap-thermographie2-768x759.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie2-1536x1519.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1519;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie2-2048x2025.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie2-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(18, 152, '_wp_attached_file', '2021/02/1986-ap-thermographie10.jpg'),
(19, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2096;s:6:\"height\";i:2078;s:4:\"file\";s:35:\"2021/02/1986-ap-thermographie10.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie10-1024x1015.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1015;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie10-1024x1015.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1015;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie10-768x761.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:761;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie10-1536x1523.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1523;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie10-2048x2030.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2030;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie10-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(20, 153, '_wp_attached_file', '2021/02/1986-ap-thermographie16.jpg'),
(21, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1318;s:6:\"height\";i:1313;s:4:\"file\";s:35:\"2021/02/1986-ap-thermographie16.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie16-1024x1020.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie16-1024x1020.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie16-768x765.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:765;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie16-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(22, 154, '_wp_attached_file', '2021/02/1986-ap-thermographie23bis.jpg'),
(23, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1051;s:6:\"height\";i:1060;s:4:\"file\";s:38:\"2021/02/1986-ap-thermographie23bis.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"1986-ap-thermographie23bis-1024x1033.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1033;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"1986-ap-thermographie23bis-1015x1024.jpg\";s:5:\"width\";i:1015;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"1986-ap-thermographie23bis-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"1986-ap-thermographie23bis-768x775.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:775;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:39:\"1986-ap-thermographie23bis-1051x720.jpg\";s:5:\"width\";i:1051;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 155, '_wp_attached_file', '2021/02/1986-ap-thermographie25.jpg'),
(25, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1055;s:6:\"height\";i:1043;s:4:\"file\";s:35:\"2021/02/1986-ap-thermographie25.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie25-1024x1012.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1012;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie25-1024x1012.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1012;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie25-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie25-768x759.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie25-1055x720.jpg\";s:5:\"width\";i:1055;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(26, 156, '_wp_attached_file', '2021/02/1986-ap-thermographie26.jpg'),
(27, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1062;s:6:\"height\";i:1039;s:4:\"file\";s:35:\"2021/02/1986-ap-thermographie26.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie26-1024x1002.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1002;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"1986-ap-thermographie26-1024x1002.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1002;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie26-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"1986-ap-thermographie26-768x751.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:751;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:36:\"1986-ap-thermographie26-1062x720.jpg\";s:5:\"width\";i:1062;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(28, 157, '_wp_attached_file', '2021/02/meta_cites_sculpture.pdf'),
(29, 158, '_wp_attached_file', '2021/02/miguel_chevalier_pittsbugh_booklet.pdf'),
(30, 159, '_wp_attached_file', '2021/02/miguel_chevalier_pittsbugh_invitation.pdf'),
(31, 160, '_wp_attached_file', '2021/02/abd_al_malik_-_dante_-_03_-_paris_mais_....mp3'),
(32, 161, '_wp_attached_file', '2021/02/abd_al_malik_-_dante_-_03_-_paris_mais_-mp3-image.jpg'),
(33, 161, '_cover_hash', '2cc0ec325adbfd8d7fbb1d2997ef64a5'),
(34, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:61:\"2021/02/abd_al_malik_-_dante_-_03_-_paris_mais_-mp3-image.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"abd_al_malik_-_dante_-_03_-_paris_mais_-mp3-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 160, '_thumbnail_id', '161'),
(36, 160, '_wp_attachment_metadata', 'a:25:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:192000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:5:\"codec\";s:4:\"LAME\";s:7:\"encoder\";s:8:\"LAME3.97\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR192\";s:17:\"compression_ratio\";d:0.1360544217687074952660708504481590352952480316162109375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6979794;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:289;s:16:\"length_formatted\";s:4:\"4:49\";s:7:\"comment\";s:4:\"None\";s:5:\"title\";s:14:\"Paris mais ...\";s:6:\"artist\";s:12:\"Abd Al Malik\";s:5:\"album\";s:5:\"Dante\";s:5:\"genre\";s:18:\"Rap, R&amp;B, Soul\";s:4:\"year\";s:4:\"2008\";s:12:\"track_number\";s:1:\"3\";s:4:\"text\";s:13:\"0600753134047\";s:5:\"image\";a:3:{s:4:\"mime\";s:10:\"image/jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:400;}}'),
(37, 149, 'repeater_docs_0_docs', '157'),
(38, 149, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(39, 149, 'repeater_docs_1_docs', '158'),
(40, 149, '_repeater_docs_1_docs', 'field_5fbe4cf9b7b21'),
(41, 149, 'repeater_docs_2_docs', '159'),
(42, 149, '_repeater_docs_2_docs', 'field_5fbe4cf9b7b21'),
(43, 149, 'repeater_docs', '3'),
(44, 149, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(45, 149, 'repeater_audio_0_audio', '160'),
(46, 149, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(47, 149, 'repeater_audio', '1'),
(48, 149, '_repeater_audio', 'field_5fbe4d38b7b22'),
(49, 149, 'images', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"155\";i:2;s:3:\"156\";}'),
(50, 149, '_images', 'field_5fbe4c91b7b20'),
(51, 149, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(52, 149, '_vimeo', 'field_5fbe5132b7b24'),
(53, 149, 'sub_title', 'check it out'),
(54, 149, '_sub_title', 'field_5fbfd077509ad'),
(55, 149, 'legend', 'Title, Miguel Chevalier, date, technical elements, dimensions, edition'),
(56, 149, '_legend', 'field_5fbfd077509be'),
(57, 149, 'unique_work_code', 'test1'),
(58, 149, '_unique_work_code', 'field_5fbfd077509cc'),
(59, 149, 'work_realised', '1'),
(60, 149, '_work_realised', 'field_5fbfd077509e7'),
(61, 149, 'creation_date', '20210203'),
(62, 149, '_creation_date', 'field_5fbfd077509f5'),
(63, 149, 'type_of_packaging', 'box'),
(64, 149, '_type_of_packaging', 'field_5fbfd07750a2c'),
(65, 149, 'technical_elements', 'none'),
(66, 149, '_technical_elements', 'field_5fbfd07750a3a'),
(67, 149, 'description', 'This is a test'),
(68, 149, '_description', 'field_5fbfd07750a63'),
(69, 149, 'etat', 'bon'),
(70, 149, '_etat', 'field_5fbfd07750a47'),
(71, 149, 'edition', 'oeuvre'),
(72, 149, '_edition', 'field_5fc4d40aff87c'),
(73, 149, 'logicel', 'logicel test 123'),
(74, 149, '_logicel', 'field_5fc4d7659553b'),
(75, 149, 'courtesy', 'courtesy test 123'),
(76, 149, '_courtesy', 'field_5fc4d7709553c'),
(77, 149, 'url', 'google.com'),
(78, 149, '_url', 'field_5fbfd07750a8c'),
(79, 149, 'affiliated_works', ''),
(80, 149, '_affiliated_works', 'field_5fc4df973de82'),
(81, 149, 'affiliated_exhibitions', ''),
(82, 149, '_affiliated_exhibitions', 'field_5fbfd07750ab6'),
(83, 149, 'public_notes', 'This is a public note'),
(84, 149, '_public_notes', 'field_5fbfd07750ac3'),
(85, 149, 'private_notes', 'This is a private note'),
(86, 149, '_private_notes', 'field_5fbfd07750ad1'),
(87, 149, 'dimension_cm', '100'),
(88, 149, '_dimension_cm', 'field_5fc4d9646ab06'),
(89, 149, 'dimensions_cm_frame', '1000'),
(90, 149, '_dimensions_cm_frame', 'field_5fc4d9846ab07'),
(91, 149, 'dimension_in', '1000'),
(92, 149, '_dimension_in', 'field_5fc4d9b06ab08'),
(93, 149, 'dimensions_in_frame', '100'),
(94, 149, '_dimensions_in_frame', 'field_5fc4d9c86ab09'),
(95, 149, 'dimensions_box', '1000'),
(96, 149, '_dimensions_box', 'field_5fc4d9e96ab0a'),
(97, 149, 'weight_kg', '10000'),
(98, 149, '_weight_kg', 'field_5fc4da106ab0b'),
(99, 149, 'weight_packaged', '1'),
(100, 149, '_weight_packaged', 'field_5fc4da2e6ab0c'),
(101, 149, 'price_production_euro', '89'),
(102, 149, '_price_production_euro', 'field_5fbfd07750a7f'),
(103, 149, 'price_production_us', '89'),
(104, 149, '_price_production_us', 'field_5fc4dad26ab0d'),
(105, 149, 'price_assurance_euro', '87'),
(106, 149, '_price_assurance_euro', 'field_5fc4daf46ab0e'),
(107, 149, 'price_assurance_us', '68'),
(108, 149, '_price_assurance_us', 'field_5fc4db0c6ab0f'),
(109, 149, 'price_sale_euro', '86'),
(110, 149, '_price_sale_euro', 'field_5fc4dd59abfea'),
(111, 149, 'price_sale_us', '86'),
(112, 149, '_price_sale_us', 'field_5fc4dd71abfeb'),
(113, 149, 'localisation', 'inconnue'),
(114, 149, '_localisation', 'field_5fc4de2ae2db6'),
(115, 149, 'emplacement', 'no'),
(116, 149, '_emplacement', 'field_5fc4df368014f'),
(117, 149, 'collection', 'oui'),
(118, 149, '_collection', 'field_5fc4df4380150'),
(119, 149, 'anonyme', 'oui'),
(120, 149, '_anonyme', 'field_5fc4df5380151'),
(121, 105, '_edit_lock', '1614028520:1'),
(122, 105, '_edit_last', '1'),
(123, 149, '_thumbnail_id', '156'),
(124, 164, '_is_includes', 'a:10:{s:9:\"post_type\";a:4:{s:6:\"oeuvre\";s:6:\"oeuvre\";s:10:\"exposition\";s:10:\"exposition\";s:14:\"bibliographies\";s:14:\"bibliographies\";s:8:\"subworks\";s:8:\"subworks\";}s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:35:\"post,oeuvre,bibliographies,subworks\";s:8:\"post_tag\";s:11:\"post,oeuvre\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:16:\"search_tax_title\";s:1:\"1\";s:15:\"search_tax_desp\";s:1:\"1\";s:11:\"post_status\";a:2:{s:7:\"publish\";s:7:\"publish\";s:7:\"inherit\";s:7:\"inherit\";}s:12:\"has_password\";s:4:\"null\";s:10:\"date_query\";a:2:{s:5:\"after\";a:1:{s:4:\"date\";s:0:\"\";}s:6:\"before\";a:1:{s:4:\"date\";s:0:\"\";}}}'),
(125, 164, '_is_excludes', 'a:0:{}'),
(126, 164, '_is_settings', 'a:2:{s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";}'),
(127, 164, '_is_ajax', ''),
(128, 164, '_is_customize', ''),
(129, 164, '_is_locale', 'en_US'),
(130, 165, '_edit_last', '1'),
(131, 165, '_edit_lock', '1614353568:1'),
(132, 165, 'repeater_docs_0_docs', '157'),
(133, 165, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(134, 165, 'repeater_docs_1_docs', '158'),
(135, 165, '_repeater_docs_1_docs', 'field_5fbe4cf9b7b21'),
(136, 165, 'repeater_docs_2_docs', '159'),
(137, 165, '_repeater_docs_2_docs', 'field_5fbe4cf9b7b21'),
(138, 165, 'repeater_docs', '3'),
(139, 165, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(140, 165, 'repeater_audio_0_audio', '160'),
(141, 165, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(142, 165, 'repeater_audio', '1'),
(143, 165, '_repeater_audio', 'field_5fbe4d38b7b22'),
(144, 165, 'images', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"155\";i:2;s:3:\"156\";}'),
(145, 165, '_images', 'field_5fbe4c91b7b20'),
(146, 165, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(147, 165, '_vimeo', 'field_5fbe5132b7b24'),
(148, 165, 'sub_title', 'check it out'),
(149, 165, '_sub_title', 'field_5fbfd077509ad'),
(150, 165, 'legend', 'Title, Miguel Chevalier, date, technical elements, dimensions, edition'),
(151, 165, '_legend', 'field_5fbfd077509be'),
(152, 165, 'unique_work_code', 'test2'),
(153, 165, '_unique_work_code', 'field_5fbfd077509cc'),
(154, 165, 'work_realised', '1'),
(155, 165, '_work_realised', 'field_5fbfd077509e7'),
(156, 165, 'creation_date', '20210203'),
(157, 165, '_creation_date', 'field_5fbfd077509f5'),
(158, 165, 'type_of_packaging', 'box'),
(159, 165, '_type_of_packaging', 'field_5fbfd07750a2c'),
(160, 165, 'technical_elements', 'none'),
(161, 165, '_technical_elements', 'field_5fbfd07750a3a'),
(162, 165, 'description', 'This is a test'),
(163, 165, '_description', 'field_5fbfd07750a63'),
(164, 165, 'etat', 'bon'),
(165, 165, '_etat', 'field_5fbfd07750a47'),
(166, 165, 'edition', 'oeuvre'),
(167, 165, '_edition', 'field_5fc4d40aff87c'),
(168, 165, 'logicel', 'logicel test 123'),
(169, 165, '_logicel', 'field_5fc4d7659553b'),
(170, 165, 'courtesy', 'courtesy test 123'),
(171, 165, '_courtesy', 'field_5fc4d7709553c'),
(172, 165, 'url', 'google.com'),
(173, 165, '_url', 'field_5fbfd07750a8c'),
(174, 165, 'affiliated_works', ''),
(175, 165, '_affiliated_works', 'field_5fc4df973de82'),
(176, 165, 'affiliated_exhibitions', ''),
(177, 165, '_affiliated_exhibitions', 'field_5fbfd07750ab6'),
(178, 165, 'public_notes', 'This is a public note'),
(179, 165, '_public_notes', 'field_5fbfd07750ac3'),
(180, 165, 'private_notes', 'This is a private note'),
(181, 165, '_private_notes', 'field_5fbfd07750ad1'),
(182, 165, 'dimension_cm', '100'),
(183, 165, '_dimension_cm', 'field_5fc4d9646ab06'),
(184, 165, 'dimensions_cm_frame', '1000'),
(185, 165, '_dimensions_cm_frame', 'field_5fc4d9846ab07'),
(186, 165, 'dimension_in', '1000'),
(187, 165, '_dimension_in', 'field_5fc4d9b06ab08'),
(188, 165, 'dimensions_in_frame', '100'),
(189, 165, '_dimensions_in_frame', 'field_5fc4d9c86ab09'),
(190, 165, 'dimensions_box', '1000'),
(191, 165, '_dimensions_box', 'field_5fc4d9e96ab0a'),
(192, 165, 'weight_kg', '10000'),
(193, 165, '_weight_kg', 'field_5fc4da106ab0b'),
(194, 165, 'weight_packaged', '1'),
(195, 165, '_weight_packaged', 'field_5fc4da2e6ab0c'),
(196, 165, 'price_production_euro', '89'),
(197, 165, '_price_production_euro', 'field_5fbfd07750a7f'),
(198, 165, 'price_production_us', '89'),
(199, 165, '_price_production_us', 'field_5fc4dad26ab0d'),
(200, 165, 'price_assurance_euro', '87'),
(201, 165, '_price_assurance_euro', 'field_5fc4daf46ab0e'),
(202, 165, 'price_assurance_us', '68'),
(203, 165, '_price_assurance_us', 'field_5fc4db0c6ab0f'),
(204, 165, 'price_sale_euro', '86'),
(205, 165, '_price_sale_euro', 'field_5fc4dd59abfea'),
(206, 165, 'price_sale_us', '86'),
(207, 165, '_price_sale_us', 'field_5fc4dd71abfeb'),
(208, 165, 'localisation', 'inconnue'),
(209, 165, '_localisation', 'field_5fc4de2ae2db6'),
(210, 165, 'emplacement', 'no'),
(211, 165, '_emplacement', 'field_5fc4df368014f'),
(212, 165, 'collection', 'oui'),
(213, 165, '_collection', 'field_5fc4df4380150'),
(214, 165, 'anonyme', 'oui'),
(215, 165, '_anonyme', 'field_5fc4df5380151'),
(216, 165, '_thumbnail_id', '155'),
(217, 166, '_edit_last', '1'),
(218, 166, '_edit_lock', '1614028618:1'),
(219, 166, 'repeater_docs_0_docs', '157'),
(220, 166, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(221, 166, 'repeater_docs_1_docs', '158'),
(222, 166, '_repeater_docs_1_docs', 'field_5fbe4cf9b7b21'),
(223, 166, 'repeater_docs_2_docs', '159'),
(224, 166, '_repeater_docs_2_docs', 'field_5fbe4cf9b7b21'),
(225, 166, 'repeater_docs', '3'),
(226, 166, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(227, 166, 'repeater_audio_0_audio', '160'),
(228, 166, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(229, 166, 'repeater_audio', '1'),
(230, 166, '_repeater_audio', 'field_5fbe4d38b7b22'),
(231, 166, 'images', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"155\";i:2;s:3:\"156\";}'),
(232, 166, '_images', 'field_5fbe4c91b7b20'),
(233, 166, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(234, 166, '_vimeo', 'field_5fbe5132b7b24'),
(235, 166, 'sub_title', 'Subtitle'),
(236, 166, '_sub_title', 'field_5fbfd077509ad'),
(237, 166, 'legend', 'Title, Miguel Chevalier, date, technical elements, dimensions, edition'),
(238, 166, '_legend', 'field_5fbfd077509be'),
(239, 166, 'unique_work_code', 'test3'),
(240, 166, '_unique_work_code', 'field_5fbfd077509cc'),
(241, 166, 'work_realised', '1'),
(242, 166, '_work_realised', 'field_5fbfd077509e7'),
(243, 166, 'creation_date', '20210203'),
(244, 166, '_creation_date', 'field_5fbfd077509f5'),
(245, 166, 'type_of_packaging', 'box'),
(246, 166, '_type_of_packaging', 'field_5fbfd07750a2c'),
(247, 166, 'technical_elements', 'none'),
(248, 166, '_technical_elements', 'field_5fbfd07750a3a'),
(249, 166, 'description', 'This is a test'),
(250, 166, '_description', 'field_5fbfd07750a63'),
(251, 166, 'etat', 'bon'),
(252, 166, '_etat', 'field_5fbfd07750a47'),
(253, 166, 'edition', 'oeuvre'),
(254, 166, '_edition', 'field_5fc4d40aff87c'),
(255, 166, 'logicel', 'logicel test 123'),
(256, 166, '_logicel', 'field_5fc4d7659553b'),
(257, 166, 'courtesy', 'courtesy test 123'),
(258, 166, '_courtesy', 'field_5fc4d7709553c'),
(259, 166, 'url', 'google.com'),
(260, 166, '_url', 'field_5fbfd07750a8c'),
(261, 166, 'affiliated_works', ''),
(262, 166, '_affiliated_works', 'field_5fc4df973de82'),
(263, 166, 'affiliated_exhibitions', ''),
(264, 166, '_affiliated_exhibitions', 'field_5fbfd07750ab6'),
(265, 166, 'public_notes', 'This is a public note'),
(266, 166, '_public_notes', 'field_5fbfd07750ac3'),
(267, 166, 'private_notes', 'This is a private note'),
(268, 166, '_private_notes', 'field_5fbfd07750ad1'),
(269, 166, 'dimension_cm', '100'),
(270, 166, '_dimension_cm', 'field_5fc4d9646ab06'),
(271, 166, 'dimensions_cm_frame', '1000'),
(272, 166, '_dimensions_cm_frame', 'field_5fc4d9846ab07'),
(273, 166, 'dimension_in', '1000'),
(274, 166, '_dimension_in', 'field_5fc4d9b06ab08'),
(275, 166, 'dimensions_in_frame', '100'),
(276, 166, '_dimensions_in_frame', 'field_5fc4d9c86ab09'),
(277, 166, 'dimensions_box', '1000'),
(278, 166, '_dimensions_box', 'field_5fc4d9e96ab0a'),
(279, 166, 'weight_kg', '10000'),
(280, 166, '_weight_kg', 'field_5fc4da106ab0b'),
(281, 166, 'weight_packaged', '1'),
(282, 166, '_weight_packaged', 'field_5fc4da2e6ab0c'),
(283, 166, 'price_production_euro', '89'),
(284, 166, '_price_production_euro', 'field_5fbfd07750a7f'),
(285, 166, 'price_production_us', '89'),
(286, 166, '_price_production_us', 'field_5fc4dad26ab0d'),
(287, 166, 'price_assurance_euro', '87'),
(288, 166, '_price_assurance_euro', 'field_5fc4daf46ab0e'),
(289, 166, 'price_assurance_us', '68'),
(290, 166, '_price_assurance_us', 'field_5fc4db0c6ab0f'),
(291, 166, 'price_sale_euro', '86'),
(292, 166, '_price_sale_euro', 'field_5fc4dd59abfea'),
(293, 166, 'price_sale_us', '86'),
(294, 166, '_price_sale_us', 'field_5fc4dd71abfeb'),
(295, 166, 'localisation', 'inconnue'),
(296, 166, '_localisation', 'field_5fc4de2ae2db6'),
(297, 166, 'emplacement', 'no'),
(298, 166, '_emplacement', 'field_5fc4df368014f'),
(299, 166, 'collection', 'oui'),
(300, 166, '_collection', 'field_5fc4df4380150'),
(301, 166, 'anonyme', 'oui'),
(302, 166, '_anonyme', 'field_5fc4df5380151'),
(303, 166, '_thumbnail_id', '154'),
(304, 167, '_edit_last', '1'),
(305, 167, '_edit_lock', '1613996857:1'),
(306, 167, 'sub_title', 'This exhibition has a subtitel'),
(307, 167, '_sub_title', 'field_5fbfca796d60f'),
(308, 167, 'legend', 'Title, location (dates)'),
(309, 167, '_legend', 'field_5fbfca796d61f'),
(310, 167, 'unique_exhibition_code', '123rrfa'),
(311, 167, '_unique_exhibition_code', 'field_5fbfca796d62c'),
(312, 167, 'start_date', '20210204'),
(313, 167, '_start_date', 'field_5fbfca796d65d'),
(314, 167, 'end_date', '20210228'),
(315, 167, '_end_date', 'field_5fbfccee1225d'),
(316, 167, 'type_of_exhibition', 'personelle'),
(317, 167, '_type_of_exhibition', 'field_5fbfca796d651'),
(318, 167, 'address', 'Hambridge Ltd'),
(319, 167, '_address', 'field_5fbfca796d668'),
(320, 167, 'structure', 'Oxford'),
(321, 167, '_structure', 'field_5fbfca796d675'),
(322, 167, 'city', 'Hook'),
(323, 167, '_city', 'field_5fbfca796d682'),
(324, 167, 'country', 'United Kingdom'),
(325, 167, '_country', 'field_5fbfca796d68e'),
(326, 167, 'description', 'this is a description for the exhibtion'),
(327, 167, '_description', 'field_5fbfca796d6b3'),
(328, 167, 'curator', 'John Peters'),
(329, 167, '_curator', 'field_5fbfca796d69a'),
(330, 167, 'url', 'www.google.com'),
(331, 167, '_url', 'field_5fbfca796d6d7'),
(332, 167, 'affiliated_works', ''),
(333, 167, '_affiliated_works', 'field_5fbfca796d6e3'),
(334, 167, 'bibliographic_category', 'a:1:{i:0;s:2:\"32\";}'),
(335, 167, '_bibliographic_category', 'field_5fbfca796d6fb'),
(336, 167, 'public_notes', 'public note'),
(337, 167, '_public_notes', 'field_5fbfca796d707'),
(338, 167, 'private_notes', 'Private note'),
(339, 167, '_private_notes', 'field_5fbfca796d713'),
(340, 167, 'repeater_docs_0_docs', '158'),
(341, 167, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(342, 167, 'repeater_docs', '1'),
(343, 167, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(344, 167, 'repeater_audio_0_audio', '160'),
(345, 167, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(346, 167, 'repeater_audio', '1'),
(347, 167, '_repeater_audio', 'field_5fbe4d38b7b22'),
(348, 167, 'images', 'a:2:{i:0;s:3:\"151\";i:1;s:3:\"150\";}'),
(349, 167, '_images', 'field_5fbe4c91b7b20'),
(350, 167, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(351, 167, '_vimeo', 'field_5fbe5132b7b24'),
(352, 168, '_edit_last', '1'),
(353, 168, '_edit_lock', '1613996897:1'),
(354, 168, 'sub_title', 'This exhibition has a subtitel'),
(355, 168, '_sub_title', 'field_5fbfca796d60f'),
(356, 168, 'legend', 'Title, location (dates)'),
(357, 168, '_legend', 'field_5fbfca796d61f'),
(358, 168, 'unique_exhibition_code', '123rrfa2'),
(359, 168, '_unique_exhibition_code', 'field_5fbfca796d62c'),
(360, 168, 'start_date', '20210204'),
(361, 168, '_start_date', 'field_5fbfca796d65d'),
(362, 168, 'end_date', '20210228'),
(363, 168, '_end_date', 'field_5fbfccee1225d'),
(364, 168, 'type_of_exhibition', 'personelle'),
(365, 168, '_type_of_exhibition', 'field_5fbfca796d651'),
(366, 168, 'address', 'Hambridge Ltd'),
(367, 168, '_address', 'field_5fbfca796d668'),
(368, 168, 'structure', 'Oxford'),
(369, 168, '_structure', 'field_5fbfca796d675'),
(370, 168, 'city', 'Hook'),
(371, 168, '_city', 'field_5fbfca796d682'),
(372, 168, 'country', 'United Kingdom'),
(373, 168, '_country', 'field_5fbfca796d68e'),
(374, 168, 'description', 'this is a description for the exhibtion'),
(375, 168, '_description', 'field_5fbfca796d6b3'),
(376, 168, 'curator', 'John Peters'),
(377, 168, '_curator', 'field_5fbfca796d69a'),
(378, 168, 'url', 'www.google.com'),
(379, 168, '_url', 'field_5fbfca796d6d7'),
(380, 168, 'affiliated_works', ''),
(381, 168, '_affiliated_works', 'field_5fbfca796d6e3'),
(382, 168, 'bibliographic_category', 'a:1:{i:0;s:2:\"32\";}'),
(383, 168, '_bibliographic_category', 'field_5fbfca796d6fb'),
(384, 168, 'public_notes', 'public note'),
(385, 168, '_public_notes', 'field_5fbfca796d707'),
(386, 168, 'private_notes', 'Private note'),
(387, 168, '_private_notes', 'field_5fbfca796d713'),
(388, 168, 'repeater_docs_0_docs', '158'),
(389, 168, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(390, 168, 'repeater_docs', '1'),
(391, 168, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(392, 168, 'repeater_audio_0_audio', '160'),
(393, 168, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(394, 168, 'repeater_audio', '1'),
(395, 168, '_repeater_audio', 'field_5fbe4d38b7b22'),
(396, 168, 'images', 'a:2:{i:0;s:3:\"151\";i:1;s:3:\"150\";}'),
(397, 168, '_images', 'field_5fbe4c91b7b20'),
(398, 168, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(399, 168, '_vimeo', 'field_5fbe5132b7b24'),
(400, 167, '_thumbnail_id', '151'),
(401, 168, '_thumbnail_id', '150'),
(402, 169, '_edit_last', '1'),
(403, 169, '_edit_lock', '1614350054:1'),
(404, 169, 'sub_title', 'This exhibition has a subtitel'),
(405, 169, '_sub_title', 'field_5fbfca796d60f'),
(406, 169, 'legend', 'Title, location (dates)'),
(407, 169, '_legend', 'field_5fbfca796d61f'),
(408, 169, 'unique_exhibition_code', '123rrfa3'),
(409, 169, '_unique_exhibition_code', 'field_5fbfca796d62c'),
(410, 169, 'start_date', '20210204'),
(411, 169, '_start_date', 'field_5fbfca796d65d'),
(412, 169, 'end_date', '20210228'),
(413, 169, '_end_date', 'field_5fbfccee1225d'),
(414, 169, 'type_of_exhibition', 'personelle'),
(415, 169, '_type_of_exhibition', 'field_5fbfca796d651'),
(416, 169, 'address', 'Hambridge Ltd'),
(417, 169, '_address', 'field_5fbfca796d668'),
(418, 169, 'structure', 'Oxford'),
(419, 169, '_structure', 'field_5fbfca796d675'),
(420, 169, 'city', 'Hook'),
(421, 169, '_city', 'field_5fbfca796d682'),
(422, 169, 'country', 'United Kingdom'),
(423, 169, '_country', 'field_5fbfca796d68e'),
(424, 169, 'description', 'this is a description for the exhibtion'),
(425, 169, '_description', 'field_5fbfca796d6b3'),
(426, 169, 'curator', 'John Peters'),
(427, 169, '_curator', 'field_5fbfca796d69a'),
(428, 169, 'url', 'www.google.com'),
(429, 169, '_url', 'field_5fbfca796d6d7'),
(430, 169, 'affiliated_works', ''),
(431, 169, '_affiliated_works', 'field_5fbfca796d6e3'),
(432, 169, 'bibliographic_category', 'a:1:{i:0;s:2:\"32\";}'),
(433, 169, '_bibliographic_category', 'field_5fbfca796d6fb'),
(434, 169, 'public_notes', 'public note'),
(435, 169, '_public_notes', 'field_5fbfca796d707'),
(436, 169, 'private_notes', 'Private note'),
(437, 169, '_private_notes', 'field_5fbfca796d713'),
(438, 169, 'repeater_docs_0_docs', '158'),
(439, 169, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(440, 169, 'repeater_docs', '1'),
(441, 169, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(442, 169, 'repeater_audio_0_audio', '160'),
(443, 169, '_repeater_audio_0_audio', 'field_5fbe4d38b7b23'),
(444, 169, 'repeater_audio', '1'),
(445, 169, '_repeater_audio', 'field_5fbe4d38b7b22'),
(446, 169, 'images', 'a:2:{i:0;s:3:\"151\";i:1;s:3:\"150\";}'),
(447, 169, '_images', 'field_5fbe4c91b7b20'),
(448, 169, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(449, 169, '_vimeo', 'field_5fbe5132b7b24'),
(450, 169, '_thumbnail_id', '172'),
(451, 171, '_wp_attached_file', '2021/02/1989-tc-interfacedos.jpg'),
(452, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:890;s:6:\"height\";i:593;s:4:\"file\";s:32:\"2021/02/1989-tc-interfacedos.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1989-tc-interfacedos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"1989-tc-interfacedos-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"18\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1479984498\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(453, 172, '_wp_attached_file', '2021/02/1989-ti-jumbo1.png'),
(454, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:434;s:6:\"height\";i:433;s:4:\"file\";s:26:\"2021/02/1989-ti-jumbo1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"1989-ti-jumbo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 173, '_wp_attached_file', '2021/02/1989-ti-jumbo2_0.png'),
(456, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:463;s:6:\"height\";i:451;s:4:\"file\";s:28:\"2021/02/1989-ti-jumbo2_0.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"1989-ti-jumbo2_0-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 174, '_wp_attached_file', '2021/02/1989-ti-jumbo3.png'),
(458, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:459;s:6:\"height\";i:460;s:4:\"file\";s:26:\"2021/02/1989-ti-jumbo3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"1989-ti-jumbo3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 170, '_edit_last', '1'),
(460, 170, '_thumbnail_id', '172'),
(461, 170, 'main_image', ''),
(462, 170, '_main_image', 'field_5fce3bac2716a'),
(463, 170, 'sub_title', 'Merci beaucoup'),
(464, 170, '_sub_title', 'field_5fbe577d2bbee'),
(465, 170, 'legend', 'Author. Date. Title. Editor. (If catergory type is “Catalogue d’exposition” : Author, Title, cat. expo., City of editor, Editor, Date)'),
(466, 170, '_legend', 'field_5fbe58572bbef'),
(467, 170, 'unique_bibliography_code', '1234'),
(468, 170, '_unique_bibliography_code', 'field_5fbe8b428ba1f'),
(469, 170, 'author', 'Michael'),
(470, 170, '_author', 'field_5fbe8ea76bfe8'),
(471, 170, 'publication_date', '20180209'),
(472, 170, '_publication_date', 'field_5fbe8ec96bfe9'),
(473, 170, 'editor', 'Bruno'),
(474, 170, '_editor', 'field_5fbe8f0d6bfea'),
(475, 170, 'graphic_designer', 'Thom'),
(476, 170, '_graphic_designer', 'field_5fbe8f146bfeb'),
(477, 170, 'city_of_the_editor', 'London'),
(478, 170, '_city_of_the_editor', 'field_5fbe8f2e6bfec'),
(479, 170, 'languages', 'English, French'),
(480, 170, '_languages', 'field_5fbe8f3f6bfed'),
(481, 170, 'number_of_pages', '99'),
(482, 170, '_number_of_pages', 'field_5fbe8f496bfee'),
(483, 170, 'format', 'PDF'),
(484, 170, '_format', 'field_5fbe8f616bfef'),
(485, 170, 'description', 'This is a book descriotion'),
(486, 170, '_description', 'field_5fbe8f716bff0'),
(487, 170, 'isbn', '1222233334444'),
(488, 170, '_isbn', 'field_5fbe8fa36bff1'),
(489, 170, 'price', '$123, £123'),
(490, 170, '_price', 'field_5fbe8fad6bff2'),
(491, 170, 'url', 'google.com'),
(492, 170, '_url', 'field_5fbe8fbd6bff3'),
(493, 170, 'affiliated_works', ''),
(494, 170, '_affiliated_works', 'field_5fbe8fe780ba2'),
(495, 170, 'affiliated_exhibitions', ''),
(496, 170, '_affiliated_exhibitions', 'field_5fbe905b04431'),
(497, 170, 'public_notes', 'Public notes'),
(498, 170, '_public_notes', 'field_5fbe90c104433'),
(499, 170, 'private_notes', 'Private notes'),
(500, 170, '_private_notes', 'field_5fbe90d704434'),
(501, 170, 'repeater_docs_0_docs', '158'),
(502, 170, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(503, 170, 'repeater_docs', '1'),
(504, 170, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(505, 170, 'repeater_audio', ''),
(506, 170, '_repeater_audio', 'field_5fbe4d38b7b22'),
(507, 170, 'images', 'a:2:{i:0;s:3:\"150\";i:1;s:3:\"151\";}'),
(508, 170, '_images', 'field_5fbe4c91b7b20'),
(509, 170, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(510, 170, '_vimeo', 'field_5fbe5132b7b24'),
(511, 170, '_edit_lock', '1613997150:1'),
(512, 170, '_wp_old_slug', '170'),
(513, 175, '_edit_last', '1'),
(514, 175, '_thumbnail_id', '173'),
(515, 175, 'main_image', ''),
(516, 175, '_main_image', 'field_5fce3bac2716a'),
(517, 175, 'sub_title', 'Merci beaucoup'),
(518, 175, '_sub_title', 'field_5fbe577d2bbee'),
(519, 175, 'legend', 'Author. Date. Title. Editor. (If catergory type is “Catalogue d’exposition” : Author, Title, cat. expo., City of editor, Editor, Date)'),
(520, 175, '_legend', 'field_5fbe58572bbef'),
(521, 175, 'unique_bibliography_code', '1234aa'),
(522, 175, '_unique_bibliography_code', 'field_5fbe8b428ba1f'),
(523, 175, 'author', 'Michael'),
(524, 175, '_author', 'field_5fbe8ea76bfe8'),
(525, 175, 'publication_date', '20180209'),
(526, 175, '_publication_date', 'field_5fbe8ec96bfe9'),
(527, 175, 'editor', 'Bruno'),
(528, 175, '_editor', 'field_5fbe8f0d6bfea'),
(529, 175, 'graphic_designer', 'Thom'),
(530, 175, '_graphic_designer', 'field_5fbe8f146bfeb'),
(531, 175, 'city_of_the_editor', 'London'),
(532, 175, '_city_of_the_editor', 'field_5fbe8f2e6bfec'),
(533, 175, 'languages', 'English, French'),
(534, 175, '_languages', 'field_5fbe8f3f6bfed'),
(535, 175, 'number_of_pages', '99'),
(536, 175, '_number_of_pages', 'field_5fbe8f496bfee'),
(537, 175, 'format', 'PDF'),
(538, 175, '_format', 'field_5fbe8f616bfef'),
(539, 175, 'description', 'This is a book descriotion'),
(540, 175, '_description', 'field_5fbe8f716bff0'),
(541, 175, 'isbn', '1222233334444'),
(542, 175, '_isbn', 'field_5fbe8fa36bff1'),
(543, 175, 'price', '$123, £123'),
(544, 175, '_price', 'field_5fbe8fad6bff2'),
(545, 175, 'url', 'google.com'),
(546, 175, '_url', 'field_5fbe8fbd6bff3'),
(547, 175, 'affiliated_works', ''),
(548, 175, '_affiliated_works', 'field_5fbe8fe780ba2'),
(549, 175, 'affiliated_exhibitions', ''),
(550, 175, '_affiliated_exhibitions', 'field_5fbe905b04431'),
(551, 175, 'public_notes', 'Public notes'),
(552, 175, '_public_notes', 'field_5fbe90c104433'),
(553, 175, 'private_notes', 'Private notes'),
(554, 175, '_private_notes', 'field_5fbe90d704434'),
(555, 175, 'repeater_docs_0_docs', '158'),
(556, 175, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(557, 175, 'repeater_docs', '1'),
(558, 175, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(559, 175, 'repeater_audio', ''),
(560, 175, '_repeater_audio', 'field_5fbe4d38b7b22'),
(561, 175, 'images', 'a:2:{i:0;s:3:\"150\";i:1;s:3:\"151\";}'),
(562, 175, '_images', 'field_5fbe4c91b7b20'),
(563, 175, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(564, 175, '_vimeo', 'field_5fbe5132b7b24'),
(565, 175, '_edit_lock', '1613997237:1'),
(566, 175, '_wp_old_slug', '170'),
(567, 176, '_edit_last', '1'),
(568, 176, '_thumbnail_id', '174'),
(569, 176, 'main_image', ''),
(570, 176, '_main_image', 'field_5fce3bac2716a'),
(571, 176, 'sub_title', 'Merci beaucoup'),
(572, 176, '_sub_title', 'field_5fbe577d2bbee'),
(573, 176, 'legend', 'Author. Date. Title. Editor. (If catergory type is “Catalogue d’exposition” : Author, Title, cat. expo., City of editor, Editor, Date)'),
(574, 176, '_legend', 'field_5fbe58572bbef'),
(575, 176, 'unique_bibliography_code', '1234aabbb'),
(576, 176, '_unique_bibliography_code', 'field_5fbe8b428ba1f'),
(577, 176, 'author', 'Michael'),
(578, 176, '_author', 'field_5fbe8ea76bfe8'),
(579, 176, 'publication_date', '20180209'),
(580, 176, '_publication_date', 'field_5fbe8ec96bfe9'),
(581, 176, 'editor', 'Bruno'),
(582, 176, '_editor', 'field_5fbe8f0d6bfea'),
(583, 176, 'graphic_designer', 'Thom'),
(584, 176, '_graphic_designer', 'field_5fbe8f146bfeb'),
(585, 176, 'city_of_the_editor', 'London'),
(586, 176, '_city_of_the_editor', 'field_5fbe8f2e6bfec'),
(587, 176, 'languages', 'English, French'),
(588, 176, '_languages', 'field_5fbe8f3f6bfed'),
(589, 176, 'number_of_pages', '99'),
(590, 176, '_number_of_pages', 'field_5fbe8f496bfee'),
(591, 176, 'format', 'PDF'),
(592, 176, '_format', 'field_5fbe8f616bfef'),
(593, 176, 'description', 'This is a book descriotion'),
(594, 176, '_description', 'field_5fbe8f716bff0'),
(595, 176, 'isbn', '1222233334444'),
(596, 176, '_isbn', 'field_5fbe8fa36bff1'),
(597, 176, 'price', '$123, £123'),
(598, 176, '_price', 'field_5fbe8fad6bff2'),
(599, 176, 'url', 'google.com'),
(600, 176, '_url', 'field_5fbe8fbd6bff3'),
(601, 176, 'affiliated_works', ''),
(602, 176, '_affiliated_works', 'field_5fbe8fe780ba2'),
(603, 176, 'affiliated_exhibitions', ''),
(604, 176, '_affiliated_exhibitions', 'field_5fbe905b04431'),
(605, 176, 'public_notes', 'Public notes'),
(606, 176, '_public_notes', 'field_5fbe90c104433'),
(607, 176, 'private_notes', 'Private notes'),
(608, 176, '_private_notes', 'field_5fbe90d704434'),
(609, 176, 'repeater_docs_0_docs', '158'),
(610, 176, '_repeater_docs_0_docs', 'field_5fbe4cf9b7b21'),
(611, 176, 'repeater_docs', '1'),
(612, 176, '_repeater_docs', 'field_5fbe4bd0b7b1e'),
(613, 176, 'repeater_audio', ''),
(614, 176, '_repeater_audio', 'field_5fbe4d38b7b22'),
(615, 176, 'images', 'a:2:{i:0;s:3:\"150\";i:1;s:3:\"151\";}'),
(616, 176, '_images', 'field_5fbe4c91b7b20'),
(617, 176, 'vimeo', 'https://player.vimeo.com/video/415582822'),
(618, 176, '_vimeo', 'field_5fbe5132b7b24'),
(619, 176, '_edit_lock', '1614270076:1'),
(620, 176, '_wp_old_slug', '170'),
(621, 2, '_edit_lock', '1614351368:1'),
(622, 2, '_edit_last', '1'),
(623, 178, '_edit_lock', '1614014377:1'),
(630, 179, '_menu_item_menu_item_parent', '0'),
(631, 179, '_menu_item_object_id', '179'),
(632, 179, '_menu_item_object', 'custom'),
(633, 179, '_menu_item_target', ''),
(634, 179, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(635, 179, '_menu_item_xfn', ''),
(636, 179, '_menu_item_url', 'https://'),
(637, 179, '_menu_item_orphaned', '1614109022'),
(638, 180, '_menu_item_type', 'custom'),
(639, 180, '_menu_item_menu_item_parent', '0'),
(640, 180, '_menu_item_object_id', '180'),
(641, 180, '_menu_item_object', 'custom'),
(642, 180, '_menu_item_target', ''),
(643, 180, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(644, 180, '_menu_item_xfn', ''),
(645, 180, '_menu_item_url', 'https://'),
(646, 180, '_menu_item_orphaned', '1614109045'),
(647, 181, '_menu_item_type', 'custom'),
(648, 181, '_menu_item_menu_item_parent', '0'),
(649, 181, '_menu_item_object_id', '181'),
(650, 181, '_menu_item_object', 'custom'),
(651, 181, '_menu_item_target', ''),
(652, 181, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(653, 181, '_menu_item_xfn', ''),
(654, 181, '_menu_item_url', 'https://'),
(655, 181, '_menu_item_orphaned', '1614109067'),
(656, 182, '_menu_item_type', 'custom'),
(657, 182, '_menu_item_menu_item_parent', '0'),
(658, 182, '_menu_item_object_id', '182'),
(659, 182, '_menu_item_object', 'custom'),
(660, 182, '_menu_item_target', ''),
(661, 182, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(662, 182, '_menu_item_xfn', ''),
(663, 182, '_menu_item_url', 'https://'),
(664, 182, '_menu_item_orphaned', '1614109116'),
(665, 183, '_edit_lock', '1614109223:1'),
(713, 8, '_edit_lock', '1614283124:1'),
(712, 1, '_edit_lock', '1614347317:1'),
(711, 34, '_edit_lock', '1614283124:1'),
(675, 185, '_menu_item_type', 'custom'),
(676, 185, '_menu_item_menu_item_parent', '0'),
(677, 185, '_menu_item_object_id', '185'),
(678, 185, '_menu_item_object', 'custom'),
(679, 185, '_menu_item_target', ''),
(680, 185, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(681, 185, '_menu_item_xfn', ''),
(682, 185, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/oeuvres'),
(684, 186, '_menu_item_type', 'custom'),
(685, 186, '_menu_item_menu_item_parent', '0'),
(686, 186, '_menu_item_object_id', '186'),
(687, 186, '_menu_item_object', 'custom'),
(688, 186, '_menu_item_target', ''),
(689, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(690, 186, '_menu_item_xfn', ''),
(691, 186, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/expositions/'),
(703, 188, '_menu_item_menu_item_parent', '0'),
(693, 187, '_menu_item_type', 'custom'),
(694, 187, '_menu_item_menu_item_parent', '0'),
(695, 187, '_menu_item_object_id', '187'),
(696, 187, '_menu_item_object', 'custom'),
(697, 187, '_menu_item_target', ''),
(698, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 187, '_menu_item_xfn', ''),
(700, 187, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/bibliographies'),
(702, 188, '_menu_item_type', 'post_type'),
(704, 188, '_menu_item_object_id', '2'),
(705, 188, '_menu_item_object', 'page'),
(706, 188, '_menu_item_target', ''),
(707, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(708, 188, '_menu_item_xfn', ''),
(709, 188, '_menu_item_url', ''),
(714, 166, 'simplefavorites_count', '0'),
(715, 191, '_edit_last', '1'),
(716, 191, '_wp_page_template', 'default'),
(717, 191, '_edit_lock', '1614280108:1'),
(718, 194, '_edit_lock', '1614281983:1'),
(719, 194, '_edit_last', '1'),
(720, 194, '_wp_page_template', 'default'),
(721, 183, '_customize_restore_dismissed', '1'),
(723, 200, '_menu_item_type', 'custom'),
(724, 200, '_menu_item_menu_item_parent', '185'),
(725, 200, '_menu_item_object_id', '200'),
(726, 200, '_menu_item_object', 'custom'),
(727, 200, '_menu_item_target', ''),
(728, 200, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 200, '_menu_item_xfn', ''),
(730, 200, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/categories'),
(732, 201, '_menu_item_type', 'custom'),
(733, 201, '_menu_item_menu_item_parent', '185'),
(734, 201, '_menu_item_object_id', '201'),
(735, 201, '_menu_item_object', 'custom'),
(736, 201, '_menu_item_target', ''),
(737, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 201, '_menu_item_xfn', ''),
(739, 201, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/series'),
(741, 202, '_menu_item_type', 'custom'),
(742, 202, '_menu_item_menu_item_parent', '0'),
(743, 202, '_menu_item_object_id', '202'),
(744, 202, '_menu_item_object', 'custom'),
(745, 202, '_menu_item_target', ''),
(746, 202, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 202, '_menu_item_xfn', ''),
(748, 202, '_menu_item_url', 'http://olliesmith.net/miguelinventoryNew/subworks'),
(750, 203, '_edit_last', '1'),
(751, 203, '_edit_lock', '1614287717:1'),
(752, 203, '_wp_page_template', 'default'),
(753, 205, '_edit_last', '1'),
(754, 205, '_edit_lock', '1614287888:1'),
(755, 205, '_wp_page_template', 'default'),
(756, 1, '_edit_last', '1'),
(757, 1, '_wp_page_template', 'default'),
(759, 165, 'simplefavorites_count', '0'),
(760, 199, '_customize_restore_dismissed', '1'),
(761, 208, '_edit_lock', '1614351578:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-21 21:58:51', '2021-02-21 21:58:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-02-26 13:48:37', '2021-02-26 13:48:37', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=1', 0, 'post', '', 1),
(2, 1, '2021-02-21 21:58:51', '2021-02-21 21:58:51', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2021-02-22 17:17:39', '2021-02-22 17:17:39', '', 0, 'http://olliesmith.net/miguelinventoryNew/?page_id=2', 0, 'page', '', 0),
(177, 1, '2021-02-22 17:17:19', '2021-02-22 17:17:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-02-22 17:17:19', '2021-02-22 17:17:19', '', 2, 'http://olliesmith.net/miguelinventoryNew/2021/02/22/2-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2021-02-22 17:19:47', '2021-02-22 17:19:47', '{\n    \"sidebars_widgets[sidebar-widgets]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-22 17:19:36\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-22 17:19:36\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-22 17:19:36\"\n    },\n    \"nav_menu_item[5]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-22 17:19:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f03e2b66-f82c-44d9-a86d-97a894fb5700', '', '', '2021-02-22 17:19:47', '2021-02-22 17:19:47', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=178', 0, 'customize_changeset', '', 0),
(179, 1, '2021-02-23 19:37:02', '0000-00-00 00:00:00', '', 'ACCUEIL', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-02-23 19:37:02', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=179', 1, 'nav_menu_item', '', 0),
(180, 1, '2021-02-23 19:37:25', '0000-00-00 00:00:00', '', 'OEUVRES', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-02-23 19:37:25', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=180', 1, 'nav_menu_item', '', 0),
(3, 1, '2021-02-21 21:58:51', '2021-02-21 21:58:51', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://olliesmith.net/miguelinventoryNew.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-02-21 21:58:51', '2021-02-21 21:58:51', '', 0, 'http://olliesmith.net/miguelinventoryNew/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:8:\"location\";a:4:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"works\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"exhibitions\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"bibliographies\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"subworks\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Main Image', 'main-image', 'publish', 'closed', 'closed', '', 'group_5fce3ba307bf8', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=6', -1, 'acf-field-group', '', 0),
(7, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Image', 'main_image', 'publish', 'closed', 'closed', '', 'field_5fce3bac2716a', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 6, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=7', 0, 'acf-field', '', 0),
(8, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"bibliographies\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Bibliographies', 'bibliographies', 'publish', 'closed', 'closed', '', 'group_5fbe3997e67ba', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5fbe577d2bbee', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:140:\"Author. Date. Title. Editor. (If catergory type is “Catalogue d’exposition” : Author, Title, cat. expo., City of editor, Editor, Date)\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Legend', 'legend', 'publish', 'closed', 'closed', '', 'field_5fbe58572bbef', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=10', 1, 'acf-field', '', 0),
(11, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Unique bibliography code', 'unique_bibliography_code', 'publish', 'closed', 'closed', '', 'field_5fbe8b428ba1f', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=11', 2, 'acf-field', '', 0),
(12, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Information base', '', 'publish', 'closed', 'closed', '', 'field_5fbe8e8e6bfe7', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=12', 3, 'acf-field', '', 0),
(13, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Author', 'author', 'publish', 'closed', 'closed', '', 'field_5fbe8ea76bfe8', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=13', 4, 'acf-field', '', 0),
(14, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Publication Date', 'publication_date', 'publish', 'closed', 'closed', '', 'field_5fbe8ec96bfe9', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=14', 5, 'acf-field', '', 0),
(15, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Editor', 'editor', 'publish', 'closed', 'closed', '', 'field_5fbe8f0d6bfea', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=15', 6, 'acf-field', '', 0),
(16, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Graphic Designer', 'graphic_designer', 'publish', 'closed', 'closed', '', 'field_5fbe8f146bfeb', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=16', 7, 'acf-field', '', 0),
(17, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City of the editor', 'city_of_the_editor', 'publish', 'closed', 'closed', '', 'field_5fbe8f2e6bfec', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=17', 8, 'acf-field', '', 0),
(18, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Languages', 'languages', 'publish', 'closed', 'closed', '', 'field_5fbe8f3f6bfed', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=18', 9, 'acf-field', '', 0),
(19, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Number of pages', 'number_of_pages', 'publish', 'closed', 'closed', '', 'field_5fbe8f496bfee', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=19', 10, 'acf-field', '', 0),
(20, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Format', 'format', 'publish', 'closed', 'closed', '', 'field_5fbe8f616bfef', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=20', 11, 'acf-field', '', 0),
(21, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5fbe8f716bff0', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=21', 12, 'acf-field', '', 0),
(22, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ISBN', 'isbn', 'publish', 'closed', 'closed', '', 'field_5fbe8fa36bff1', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=22', 13, 'acf-field', '', 0),
(23, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5fbe8fad6bff2', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=23', 14, 'acf-field', '', 0),
(24, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5fbe8fbd6bff3', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=24', 15, 'acf-field', '', 0),
(25, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated Works and Sub works', 'affiliated_works', 'publish', 'closed', 'closed', '', 'field_5fbe8fe780ba2', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=25', 16, 'acf-field', '', 0),
(26, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:5:\"works\";i:1;s:8:\"subworks\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Works', 'works', 'publish', 'closed', 'closed', '', 'field_5fbe900880ba3', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 25, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Historique', '', 'publish', 'closed', 'closed', '', 'field_5fbe903704430', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=27', 17, 'acf-field', '', 0),
(28, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated exhibitions', 'affiliated_exhibitions', 'publish', 'closed', 'closed', '', 'field_5fbe905b04431', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=28', 18, 'acf-field', '', 0),
(29, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:11:\"exhibitions\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Exhibitions', 'exhibitions', 'publish', 'closed', 'closed', '', 'field_5fbe907f04432', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 28, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Public notes', 'public_notes', 'publish', 'closed', 'closed', '', 'field_5fbe90c104433', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=30', 19, 'acf-field', '', 0),
(31, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Private notes', 'private_notes', 'publish', 'closed', 'closed', '', 'field_5fbe90d704434', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 8, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=31', 20, 'acf-field', '', 0),
(32, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category Type', 'category-type', 'publish', 'closed', 'closed', '', 'group_5fbc0fbcea497', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:12:\"works: Works\";s:12:\"works: Works\";s:19:\"subworks: Sub Works\";s:19:\"subworks: Sub Works\";s:30:\"bibliographies: Bibliographies\";s:30:\"bibliographies: Bibliographies\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Category Type Selector', 'category_type_selector', 'publish', 'closed', 'closed', '', 'field_5fbc0fcc64b7d', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 32, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"exposition\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Exhibitions', 'exhibitions', 'publish', 'closed', 'closed', '', 'group_5fbfca7967ccb', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5fbfca796d60f', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"Title, location (dates)\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Legend', 'legend', 'publish', 'closed', 'closed', '', 'field_5fbfca796d61f', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=36', 1, 'acf-field', '', 0),
(37, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Unique exhibition code', 'unique_exhibition_code', 'publish', 'closed', 'closed', '', 'field_5fbfca796d62c', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(38, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Information base', '', 'publish', 'closed', 'closed', '', 'field_5fbfca796d645', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(39, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Start date', 'start_date', 'publish', 'closed', 'closed', '', 'field_5fbfca796d65d', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=39', 4, 'acf-field', '', 0),
(40, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'End date', 'end_date', 'publish', 'closed', 'closed', '', 'field_5fbfccee1225d', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=40', 5, 'acf-field', '', 0),
(41, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:10:\"personelle\";s:10:\"Personelle\";s:6:\"groupe\";s:6:\"Groupe\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Type of exhibition', 'type_of_exhibition', 'publish', 'closed', 'closed', '', 'field_5fbfca796d651', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=41', 6, 'acf-field', '', 0),
(42, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5fbfca796d668', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=42', 7, 'acf-field', '', 0),
(43, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Structure/Institution', 'structure', 'publish', 'closed', 'closed', '', 'field_5fbfca796d675', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=43', 8, 'acf-field', '', 0),
(44, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_5fbfca796d682', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=44', 9, 'acf-field', '', 0),
(45, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Country', 'country', 'publish', 'closed', 'closed', '', 'field_5fbfca796d68e', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=45', 10, 'acf-field', '', 0),
(46, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5fbfca796d6b3', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=46', 11, 'acf-field', '', 0),
(47, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Curator', 'curator', 'publish', 'closed', 'closed', '', 'field_5fbfca796d69a', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=47', 12, 'acf-field', '', 0),
(48, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5fbfca796d6d7', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=48', 13, 'acf-field', '', 0),
(49, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated Works and Sub works', 'affiliated_works', 'publish', 'closed', 'closed', '', 'field_5fbfca796d6e3', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=49', 14, 'acf-field', '', 0),
(50, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:5:\"works\";i:1;s:8:\"subworks\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Works', 'works', 'publish', 'closed', 'closed', '', 'field_5fbfca799a3a2', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 49, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Historique', '', 'publish', 'closed', 'closed', '', 'field_5fbfca796d6ef', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=51', 15, 'acf-field', '', 0),
(52, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Bibliographic Category', 'bibliographic_category', 'publish', 'closed', 'closed', '', 'field_5fbfca796d6fb', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=52', 16, 'acf-field', '', 0),
(53, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Public notes', 'public_notes', 'publish', 'closed', 'closed', '', 'field_5fbfca796d707', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=53', 17, 'acf-field', '', 0),
(54, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Private notes', 'private_notes', 'publish', 'closed', 'closed', '', 'field_5fbfca796d713', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 34, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=54', 18, 'acf-field', '', 0),
(55, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:8:\"location\";a:4:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"oeuvre\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"bibliographies\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"subworks\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"exposition\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Media', 'media', 'publish', 'closed', 'closed', '', 'group_5fbe4ba232c84', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2021-02-22 11:12:05', '2021-02-22 11:12:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Media', '', 'publish', 'closed', 'closed', '', 'field_5fbe4baeb7b1d', '', '', '2021-02-22 11:12:05', '2021-02-22 11:12:05', '', 55, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:20:\"Add another document\";}', 'Documents', 'repeater_docs', 'publish', 'closed', 'closed', '', 'field_5fbe4bd0b7b1e', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 55, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Document', 'docs', 'publish', 'closed', 'closed', '', 'field_5fbe4cf9b7b21', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 57, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:22:\"Add another audio file\";}', 'Audio', 'repeater_audio', 'publish', 'closed', 'closed', '', 'field_5fbe4d38b7b22', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 55, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Audio', 'audio', 'publish', 'closed', 'closed', '', 'field_5fbe4d38b7b23', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 59, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'field_5fbe4c91b7b20', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 55, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=61', 3, 'acf-field', '', 0),
(62, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:24:\"Add the embed link here.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Vimeo', 'vimeo', 'publish', 'closed', 'closed', '', 'field_5fbe5132b7b24', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 55, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=62', 4, 'acf-field', '', 0),
(63, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"subworks\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Sub work', 'sub-work', 'publish', 'closed', 'closed', '', 'group_5fc4e1728481a', '', '', '2021-02-22 21:16:04', '2021-02-22 21:16:04', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5fc4e1728911c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:70:\"Title, Miguel Chevalier, date, technical elements, dimensions, edition\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Legend', 'legend', 'publish', 'closed', 'closed', '', 'field_5fc4e17289135', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Unique Subwork code', 'unique_subwork_code', 'publish', 'closed', 'closed', '', 'field_5fc4e17289141', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=66', 2, 'acf-field', '', 0),
(67, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Work realised', 'work_realised', 'publish', 'closed', 'closed', '', 'field_5fc4e1728914d', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=67', 3, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Information base', '', 'publish', 'closed', 'closed', '', 'field_5fc4e17289159', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=68', 4, 'acf-field', '', 0),
(69, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Year format e.g. \'2010\'\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Creation Date', 'creation_date', 'publish', 'closed', 'closed', '', 'field_5fc4e17289165', '', '', '2021-02-22 21:16:04', '2021-02-22 21:16:04', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&#038;p=69', 5, 'acf-field', '', 0),
(70, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Type of packaging', 'type_of_packaging', 'publish', 'closed', 'closed', '', 'field_5fc4e17289187', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=70', 6, 'acf-field', '', 0),
(71, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Technical elements', 'technical_elements', 'publish', 'closed', 'closed', '', 'field_5fc4e17289195', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=71', 7, 'acf-field', '', 0),
(72, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5fc4e172891a1', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=72', 8, 'acf-field', '', 0),
(73, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"bon\";s:8:\"Bon etat\";s:7:\"mauvais\";s:12:\"Mauvais etat\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Etat', 'etat', 'publish', 'closed', 'closed', '', 'field_5fc4e172891ad', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=73', 9, 'acf-field', '', 0),
(74, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5fc4e172891ad\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"mauvais\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Etat Specification', 'etat_specification', 'publish', 'closed', 'closed', '', 'field_5fc4e172891b8', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=74', 10, 'acf-field', '', 0),
(75, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Logicel', 'logicel', 'publish', 'closed', 'closed', '', 'field_5fc4e172891e8', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=75', 11, 'acf-field', '', 0),
(76, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Courtesy', 'courtesy', 'publish', 'closed', 'closed', '', 'field_5fc4e172891f4', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=76', 12, 'acf-field', '', 0),
(77, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5fc4e17289200', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=77', 13, 'acf-field', '', 0),
(78, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated Work', 'affiliated_works', 'publish', 'closed', 'closed', '', 'field_5fc4e1728920b', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=78', 14, 'acf-field', '', 0),
(79, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:11:\"exhibitions\";i:1;s:8:\"subworks\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Sub Works', 'subworks', 'publish', 'closed', 'closed', '', 'field_5fc4e172b6c04', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 78, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Historique', '', 'publish', 'closed', 'closed', '', 'field_5fc4e17289217', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=80', 15, 'acf-field', '', 0),
(81, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated exhibitions', 'affiliated_exhibitions', 'publish', 'closed', 'closed', '', 'field_5fc4e17289224', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=81', 16, 'acf-field', '', 0),
(82, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:11:\"exhibitions\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Exhibitions', 'exhibitions', 'publish', 'closed', 'closed', '', 'field_5fc4e172bfb4c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 81, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Public notes', 'public_notes', 'publish', 'closed', 'closed', '', 'field_5fc4e17289230', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=83', 17, 'acf-field', '', 0),
(84, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Private notes', 'private_notes', 'publish', 'closed', 'closed', '', 'field_5fc4e1728923b', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=84', 18, 'acf-field', '', 0),
(85, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Dimensions Weight and Price', '', 'publish', 'closed', 'closed', '', 'field_5fc4e17289247', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=85', 19, 'acf-field', '', 0),
(86, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimension (m/cm)', 'dimension_cm', 'publish', 'closed', 'closed', '', 'field_5fc4e17289253', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=86', 20, 'acf-field', '', 0),
(87, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dimensions (m/cm) with frame', 'dimensions_cm_frame', 'publish', 'closed', 'closed', '', 'field_5fc4e1728925f', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=87', 21, 'acf-field', '', 0),
(88, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimension (feet/in)', 'dimension_in', 'publish', 'closed', 'closed', '', 'field_5fc4e1728926a', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=88', 22, 'acf-field', '', 0),
(89, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dimensions (feet/in) with frame', 'dimensions_in_frame', 'publish', 'closed', 'closed', '', 'field_5fc4e17289276', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=89', 23, 'acf-field', '', 0),
(90, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimensions of transport box', 'dimensions_box', 'publish', 'closed', 'closed', '', 'field_5fc4e17289281', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=90', 24, 'acf-field', '', 0),
(91, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Weight (kg/g)', 'weight_kg', 'publish', 'closed', 'closed', '', 'field_5fc4e1728928d', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=91', 25, 'acf-field', '', 0),
(92, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Weight packaged', 'weight_packaged', 'publish', 'closed', 'closed', '', 'field_5fc4e17289299', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=92', 26, 'acf-field', '', 0),
(93, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price production (euro)', 'price_production_euro', 'publish', 'closed', 'closed', '', 'field_5fc4e172892a5', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=93', 27, 'acf-field', '', 0),
(94, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price production (US)', 'price_production_us', 'publish', 'closed', 'closed', '', 'field_5fc4e172892b2', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=94', 28, 'acf-field', '', 0),
(95, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price assurance (euro)', 'price_assurance_euro', 'publish', 'closed', 'closed', '', 'field_5fc4e172892be', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=95', 29, 'acf-field', '', 0),
(96, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price assurance (US)', 'price_assurance_us', 'publish', 'closed', 'closed', '', 'field_5fc4e172892ca', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=96', 30, 'acf-field', '', 0),
(97, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sale price euro', 'price_sale_euro', 'publish', 'closed', 'closed', '', 'field_5fc4e172892d5', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=97', 31, 'acf-field', '', 0),
(98, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sale price (US)', 'price_sale_us', 'publish', 'closed', 'closed', '', 'field_5fc4e172892e1', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=98', 32, 'acf-field', '', 0),
(99, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Localisation information', '', 'publish', 'closed', 'closed', '', 'field_5fc4e172892ec', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=99', 33, 'acf-field', '', 0),
(100, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:6:\"miguel\";s:28:\"Appartement Miguel Chevalier\";s:7:\"atelier\";s:7:\"Atelier\";s:10:\"exposition\";s:10:\"Exposition\";s:8:\"inconnue\";s:8:\"Inconnue\";s:4:\"pret\";s:4:\"Pret\";s:5:\"vendu\";s:5:\"Vendu\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Localisation', 'localisation', 'publish', 'closed', 'closed', '', 'field_5fc4e172892fa', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=100', 34, 'acf-field', '', 0),
(101, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Emplacement', 'emplacement', 'publish', 'closed', 'closed', '', 'field_5fc4e17289324', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=101', 35, 'acf-field', '', 0),
(102, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Collection', 'collection', 'publish', 'closed', 'closed', '', 'field_5fc4e1728932f', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=102', 36, 'acf-field', '', 0),
(103, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anonyme', 'anonyme', 'publish', 'closed', 'closed', '', 'field_5fc4e1728933b', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=103', 37, 'acf-field', '', 0),
(104, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"works\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Parent', 'parent', 'publish', 'closed', 'closed', '', 'field_5fc4e555f6031', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 63, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=104', 38, 'acf-field', '', 0),
(105, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"oeuvre\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Works', 'works', 'publish', 'closed', 'closed', '', 'group_5fbfd0774c19d', '', '', '2021-02-22 21:15:17', '2021-02-22 21:15:17', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=105', 0, 'acf-field-group', '', 0),
(106, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5fbfd077509ad', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=106', 0, 'acf-field', '', 0),
(107, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:70:\"Title, Miguel Chevalier, date, technical elements, dimensions, edition\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Legend', 'legend', 'publish', 'closed', 'closed', '', 'field_5fbfd077509be', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Unique Work code', 'unique_work_code', 'publish', 'closed', 'closed', '', 'field_5fbfd077509cc', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=108', 2, 'acf-field', '', 0),
(109, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Work realised', 'work_realised', 'publish', 'closed', 'closed', '', 'field_5fbfd077509e7', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=109', 3, 'acf-field', '', 0),
(110, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Information base', '', 'publish', 'closed', 'closed', '', 'field_5fbfd077509da', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=110', 4, 'acf-field', '', 0),
(111, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Year format e.g. \'2010\'\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Creation Date', 'creation_date', 'publish', 'closed', 'closed', '', 'field_5fbfd077509f5', '', '', '2021-02-22 21:15:17', '2021-02-22 21:15:17', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&#038;p=111', 5, 'acf-field', '', 0),
(112, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Type of packaging', 'type_of_packaging', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a2c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=112', 6, 'acf-field', '', 0),
(113, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Technical elements', 'technical_elements', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a3a', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=113', 7, 'acf-field', '', 0),
(114, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a63', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=114', 8, 'acf-field', '', 0),
(115, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"bon\";s:8:\"Bon etat\";s:7:\"mauvais\";s:12:\"Mauvais etat\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Etat', 'etat', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a47', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=115', 9, 'acf-field', '', 0),
(116, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5fbfd07750a47\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"mauvais\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Etat Specification', 'etat_specification', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a55', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=116', 10, 'acf-field', '', 0),
(117, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"oeuvre\";s:13:\"Oeuvre unique\";s:8:\"editions\";s:8:\"Editions\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Edition', 'edition', 'publish', 'closed', 'closed', '', 'field_5fc4d40aff87c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=117', 11, 'acf-field', '', 0),
(118, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5fc4d40aff87c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"editions\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Number of editions', 'edition_number', 'publish', 'closed', 'closed', '', 'field_5fc4d6b195539', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=118', 12, 'acf-field', '', 0),
(119, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5fc4d40aff87c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"editions\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'épreuves d’artiste', 'edition_artist', 'publish', 'closed', 'closed', '', 'field_5fc4d7049553a', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=119', 13, 'acf-field', '', 0),
(120, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Logicel', 'logicel', 'publish', 'closed', 'closed', '', 'field_5fc4d7659553b', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=120', 14, 'acf-field', '', 0),
(121, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Courtesy', 'courtesy', 'publish', 'closed', 'closed', '', 'field_5fc4d7709553c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=121', 15, 'acf-field', '', 0),
(122, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a8c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=122', 16, 'acf-field', '', 0),
(123, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated Work', 'affiliated_works', 'publish', 'closed', 'closed', '', 'field_5fc4df973de82', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=123', 17, 'acf-field', '', 0),
(124, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:11:\"exhibitions\";i:1;s:8:\"subworks\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Sub Works', 'subworks', 'publish', 'closed', 'closed', '', 'field_5fc4df973de83', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 123, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(125, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Historique', '', 'publish', 'closed', 'closed', '', 'field_5fbfd07750aa8', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=125', 18, 'acf-field', '', 0),
(126, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Affiliated exhibitions', 'affiliated_exhibitions', 'publish', 'closed', 'closed', '', 'field_5fbfd07750ab6', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=126', 19, 'acf-field', '', 0),
(127, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:11:\"exhibitions\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Exhibitions', 'exhibitions', 'publish', 'closed', 'closed', '', 'field_5fbfd07782efb', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 126, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Public notes', 'public_notes', 'publish', 'closed', 'closed', '', 'field_5fbfd07750ac3', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=128', 20, 'acf-field', '', 0),
(129, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Private notes', 'private_notes', 'publish', 'closed', 'closed', '', 'field_5fbfd07750ad1', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=129', 21, 'acf-field', '', 0),
(130, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Dimensions Weight and Price', '', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a10', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=130', 22, 'acf-field', '', 0),
(131, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimension (m/cm)', 'dimension_cm', 'publish', 'closed', 'closed', '', 'field_5fc4d9646ab06', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=131', 23, 'acf-field', '', 0),
(132, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dimensions (m/cm) with frame', 'dimensions_cm_frame', 'publish', 'closed', 'closed', '', 'field_5fc4d9846ab07', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=132', 24, 'acf-field', '', 0),
(133, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimension (feet/in)', 'dimension_in', 'publish', 'closed', 'closed', '', 'field_5fc4d9b06ab08', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=133', 25, 'acf-field', '', 0),
(134, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dimensions (feet/in) with frame', 'dimensions_in_frame', 'publish', 'closed', 'closed', '', 'field_5fc4d9c86ab09', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=134', 26, 'acf-field', '', 0),
(135, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dimensions of transport box', 'dimensions_box', 'publish', 'closed', 'closed', '', 'field_5fc4d9e96ab0a', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=135', 27, 'acf-field', '', 0),
(136, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Weight (kg/g)', 'weight_kg', 'publish', 'closed', 'closed', '', 'field_5fc4da106ab0b', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=136', 28, 'acf-field', '', 0),
(137, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Weight packaged', 'weight_packaged', 'publish', 'closed', 'closed', '', 'field_5fc4da2e6ab0c', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=137', 29, 'acf-field', '', 0),
(138, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price production (euro)', 'price_production_euro', 'publish', 'closed', 'closed', '', 'field_5fbfd07750a7f', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=138', 30, 'acf-field', '', 0),
(139, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price production (US)', 'price_production_us', 'publish', 'closed', 'closed', '', 'field_5fc4dad26ab0d', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=139', 31, 'acf-field', '', 0),
(140, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price assurance (euro)', 'price_assurance_euro', 'publish', 'closed', 'closed', '', 'field_5fc4daf46ab0e', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=140', 32, 'acf-field', '', 0),
(141, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price assurance (US)', 'price_assurance_us', 'publish', 'closed', 'closed', '', 'field_5fc4db0c6ab0f', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=141', 33, 'acf-field', '', 0),
(142, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sale price euro', 'price_sale_euro', 'publish', 'closed', 'closed', '', 'field_5fc4dd59abfea', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=142', 34, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(143, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sale price (US)', 'price_sale_us', 'publish', 'closed', 'closed', '', 'field_5fc4dd71abfeb', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=143', 35, 'acf-field', '', 0),
(144, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Localisation information', '', 'publish', 'closed', 'closed', '', 'field_5fc4df6580152', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=144', 36, 'acf-field', '', 0),
(145, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:6:\"miguel\";s:28:\"Appartement Miguel Chevalier\";s:7:\"atelier\";s:7:\"Atelier\";s:10:\"exposition\";s:10:\"Exposition\";s:8:\"inconnue\";s:8:\"Inconnue\";s:4:\"pret\";s:4:\"Pret\";s:5:\"vendu\";s:5:\"Vendu\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Localisation', 'localisation', 'publish', 'closed', 'closed', '', 'field_5fc4de2ae2db6', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=145', 37, 'acf-field', '', 0),
(146, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Emplacement', 'emplacement', 'publish', 'closed', 'closed', '', 'field_5fc4df368014f', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=146', 38, 'acf-field', '', 0),
(147, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Collection', 'collection', 'publish', 'closed', 'closed', '', 'field_5fc4df4380150', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=147', 39, 'acf-field', '', 0),
(148, 1, '2021-02-22 11:12:06', '2021-02-22 11:12:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anonyme', 'anonyme', 'publish', 'closed', 'closed', '', 'field_5fc4df5380151', '', '', '2021-02-22 11:12:06', '2021-02-22 11:12:06', '', 105, 'http://olliesmith.net/miguelinventoryNew/?post_type=acf-field&p=148', 40, 'acf-field', '', 0),
(149, 1, '2021-02-22 11:50:06', '2021-02-22 11:50:06', '', 'test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2021-02-22 12:03:20', '2021-02-22 12:03:20', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=oeuvre&#038;p=149', 0, 'oeuvre', '', 0),
(150, 1, '2021-02-22 11:43:36', '2021-02-22 11:43:36', '', '1986-ap-dhum3', '', 'inherit', 'open', 'closed', '', '1986-ap-dhum3', '', '', '2021-02-22 12:22:17', '2021-02-22 12:22:17', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-dhum3.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2021-02-22 11:43:43', '2021-02-22 11:43:43', '', '1986-ap-thermographie2', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie2', '', '', '2021-02-22 12:33:05', '2021-02-22 12:33:05', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie2.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2021-02-22 11:43:50', '2021-02-22 11:43:50', '', '1986-ap-thermographie10', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie10', '', '', '2021-02-22 11:43:50', '2021-02-22 11:43:50', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie10.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2021-02-22 11:43:56', '2021-02-22 11:43:56', '', '1986-ap-thermographie16', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie16', '', '', '2021-02-22 11:43:56', '2021-02-22 11:43:56', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie16.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2021-02-22 11:43:59', '2021-02-22 11:43:59', '', '1986-ap-thermographie23bis', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie23bis', '', '', '2021-02-22 11:43:59', '2021-02-22 11:43:59', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie23bis.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2021-02-22 11:44:00', '2021-02-22 11:44:00', '', '1986-ap-thermographie25', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie25', '', '', '2021-02-22 11:44:00', '2021-02-22 11:44:00', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie25.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2021-02-22 11:44:03', '2021-02-22 11:44:03', '', '1986-ap-thermographie26', '', 'inherit', 'open', 'closed', '', '1986-ap-thermographie26', '', '', '2021-02-22 11:44:03', '2021-02-22 11:44:03', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1986-ap-thermographie26.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2021-02-22 11:45:48', '2021-02-22 11:45:48', '', 'meta_cites_sculpture', '', 'inherit', 'open', 'closed', '', 'meta_cites_sculpture', '', '', '2021-02-22 11:45:48', '2021-02-22 11:45:48', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/meta_cites_sculpture.pdf', 0, 'attachment', 'application/pdf', 0),
(158, 1, '2021-02-22 11:45:51', '2021-02-22 11:45:51', '', 'miguel_chevalier_pittsbugh_booklet', '', 'inherit', 'open', 'closed', '', 'miguel_chevalier_pittsbugh_booklet', '', '', '2021-02-22 11:45:51', '2021-02-22 11:45:51', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/miguel_chevalier_pittsbugh_booklet.pdf', 0, 'attachment', 'application/pdf', 0),
(159, 1, '2021-02-22 11:45:52', '2021-02-22 11:45:52', '', 'miguel_chevalier_pittsbugh_invitation', '', 'inherit', 'open', 'closed', '', 'miguel_chevalier_pittsbugh_invitation', '', '', '2021-02-22 11:45:52', '2021-02-22 11:45:52', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/miguel_chevalier_pittsbugh_invitation.pdf', 0, 'attachment', 'application/pdf', 0),
(160, 1, '2021-02-22 11:46:25', '2021-02-22 11:46:25', '\"Paris mais ...\" from Dante by Abd Al Malik. Released: 2008. Track 3. Genre: Rap, R&amp;B, Soul.', 'Paris mais ...', '', 'inherit', 'open', 'closed', '', 'paris-mais', '', '', '2021-02-22 12:22:04', '2021-02-22 12:22:04', '', 149, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/abd_al_malik_-_dante_-_03_-_paris_mais_....mp3', 0, 'attachment', 'audio/mpeg', 0),
(161, 1, '2021-02-22 11:46:25', '2021-02-22 11:46:25', '', '', '', 'inherit', 'open', 'closed', '', '161', '', '', '2021-02-22 11:46:25', '2021-02-22 11:46:25', '', 0, 'http://olliesmith.net/miguelinventoryNew/161/', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2021-02-22 12:08:08', '2021-02-22 12:08:08', 'oeuvre\nexposition\nbibliographies\nsubworks\npost,oeuvre,bibliographies,subworks\npost,oeuvre\n1\n1\n1\n1\n1\npublish\ninherit\nnull\n\n\ndate\nDESC', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2021-02-25 19:53:26', '2021-02-25 19:53:26', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=is_search_form&#038;p=164', 0, 'is_search_form', '', 0),
(165, 1, '2021-02-22 12:12:53', '2021-02-22 12:12:53', '', 'test 2', '', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2021-02-22 21:07:52', '2021-02-22 21:07:52', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=oeuvre&#038;p=165', 0, 'oeuvre', '', 0),
(166, 1, '2021-02-22 12:19:03', '2021-02-22 12:19:03', '', 'Title', '', 'publish', 'closed', 'closed', '', 'test-3', '', '', '2021-02-22 18:28:01', '2021-02-22 18:28:01', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=oeuvre&#038;p=166', 0, 'oeuvre', '', 0),
(167, 1, '2021-02-22 12:23:05', '2021-02-22 12:23:05', '', 'Test exhibition', '', 'publish', 'closed', 'closed', '', 'test-exhibition', '', '', '2021-02-22 12:29:53', '2021-02-22 12:29:53', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=exposition&#038;p=167', 0, 'exposition', '', 0),
(168, 1, '2021-02-22 12:24:04', '2021-02-22 12:24:04', '', 'Test exhibition 2', '', 'publish', 'closed', 'closed', '', 'test-exhibition-2', '', '', '2021-02-22 12:30:26', '2021-02-22 12:30:26', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=exposition&#038;p=168', 0, 'exposition', '', 0),
(169, 1, '2021-02-22 12:31:18', '2021-02-22 12:31:18', '', 'Test exhibition 3', '', 'publish', 'closed', 'closed', '', 'test-exhibition-3', '', '', '2021-02-26 14:36:32', '2021-02-26 14:36:32', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=exposition&#038;p=169', 0, 'exposition', '', 0),
(170, 1, '2021-02-22 12:34:20', '2021-02-22 12:34:20', '', 'Test book 1', '', 'publish', 'closed', 'closed', '', 'test-book-one', '', '', '2021-02-22 12:34:46', '2021-02-22 12:34:46', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=bibliographies&#038;p=170', 0, 'bibliographies', '', 0),
(171, 1, '2021-02-22 12:33:51', '2021-02-22 12:33:51', '', '1989-tc-interfacedos', '', 'inherit', 'open', 'closed', '', '1989-tc-interfacedos', '', '', '2021-02-22 12:33:51', '2021-02-22 12:33:51', '', 170, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1989-tc-interfacedos.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2021-02-22 12:33:53', '2021-02-22 12:33:53', '', '1989-ti-jumbo1', '', 'inherit', 'open', 'closed', '', '1989-ti-jumbo1', '', '', '2021-02-22 12:33:53', '2021-02-22 12:33:53', '', 170, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1989-ti-jumbo1.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2021-02-22 12:33:55', '2021-02-22 12:33:55', '', '1989-ti-jumbo2_0', '', 'inherit', 'open', 'closed', '', '1989-ti-jumbo2_0', '', '', '2021-02-22 12:33:55', '2021-02-22 12:33:55', '', 170, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1989-ti-jumbo2_0.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2021-02-22 12:33:56', '2021-02-22 12:33:56', '', '1989-ti-jumbo3', '', 'inherit', 'open', 'closed', '', '1989-ti-jumbo3', '', '', '2021-02-22 12:33:56', '2021-02-22 12:33:56', '', 170, 'http://olliesmith.net/miguelinventoryNew/wp-content/uploads/2021/02/1989-ti-jumbo3.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2021-02-22 12:36:11', '2021-02-22 12:36:11', '', 'Test book 2', '', 'publish', 'closed', 'closed', '', 'test-book-2', '', '', '2021-02-22 12:36:11', '2021-02-22 12:36:11', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=bibliographies&#038;p=175', 0, 'bibliographies', '', 0),
(176, 1, '2021-02-22 12:36:56', '2021-02-22 12:36:56', '', 'Test book 3', '', 'publish', 'closed', 'closed', '', 'test-book-3', '', '', '2021-02-22 12:37:13', '2021-02-22 12:37:13', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=bibliographies&#038;p=176', 0, 'bibliographies', '', 0),
(181, 1, '2021-02-23 19:37:47', '0000-00-00 00:00:00', '', 'EXPOSITIONS', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-02-23 19:37:47', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=181', 1, 'nav_menu_item', '', 0),
(182, 1, '2021-02-23 19:38:36', '0000-00-00 00:00:00', '', 'RÉFERENCES BIBLIOGRAPHIQUES', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-02-23 19:38:36', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=182', 1, 'nav_menu_item', '', 0),
(183, 1, '2021-02-23 19:40:23', '0000-00-00 00:00:00', '{\n    \"MiguelInventory::nav_menu_locations[top-bar-r]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-23 19:40:23\"\n    },\n    \"MiguelInventory::nav_menu_locations[sub-nav]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-23 19:40:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6f2541fe-1d61-4ccf-8a90-10c1accddddb', '', '', '2021-02-23 19:40:23', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=183', 0, 'customize_changeset', '', 0),
(189, 1, '2021-02-24 21:45:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-02-24 21:45:16', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=subworks&p=189', 0, 'subworks', '', 0),
(185, 1, '2021-02-24 17:30:39', '2021-02-24 17:30:39', '', 'OEUVRES', '', 'publish', 'closed', 'closed', '', 'oeuvres', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=185', 2, 'nav_menu_item', '', 0),
(186, 1, '2021-02-24 17:30:39', '2021-02-24 17:30:39', '', 'EXPOSITIONS', '', 'publish', 'closed', 'closed', '', 'expositions', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=186', 6, 'nav_menu_item', '', 0),
(187, 1, '2021-02-24 17:30:39', '2021-02-24 17:30:39', '', 'RÉFERENCES BIBLIOGRAPHIQUES', '', 'publish', 'closed', 'closed', '', 'references-bibliographiques', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=187', 7, 'nav_menu_item', '', 0),
(188, 1, '2021-02-24 17:35:45', '2021-02-24 17:35:45', '', 'ACCUEIL', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=188', 1, 'nav_menu_item', '', 0),
(190, 1, '2021-02-25 16:23:41', '2021-02-25 16:23:41', '', 'Test book 3', '', 'inherit', 'closed', 'closed', '', '176-autosave-v1', '', '', '2021-02-25 16:23:41', '2021-02-25 16:23:41', '', 176, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/176-autosave-v1/', 0, 'revision', '', 0),
(191, 1, '2021-02-25 19:10:47', '2021-02-25 19:10:47', '', 'Favorites', '', 'publish', 'closed', 'closed', '', 'favorites', '', '', '2021-02-25 19:10:47', '2021-02-25 19:10:47', '', 0, 'http://olliesmith.net/miguelinventoryNew/?page_id=191', 0, 'page', '', 0),
(192, 1, '2021-02-25 19:10:47', '2021-02-25 19:10:47', '', 'Favorites', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2021-02-25 19:10:47', '2021-02-25 19:10:47', '', 191, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2021-02-25 19:30:18', '2021-02-25 19:30:18', '[[[{\"field_key\":\"user_login\",\"general_setting\":{\"label\":\"Username\",\"field_name\":\"user_login\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"User Password\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}],[{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}]]]', 'Default form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2021-02-25 19:30:18', '2021-02-25 19:30:18', '', 0, 'http://olliesmith.net/miguelinventoryNew/?post_type=user_registration&p=193', 0, 'user_registration', '', 0),
(194, 1, '2021-02-25 19:30:33', '2021-02-25 19:30:33', '[user_registration_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-02-25 19:36:55', '2021-02-25 19:36:55', '', 0, 'http://olliesmith.net/miguelinventoryNew/my-account/', 0, 'page', '', 0),
(195, 1, '2021-02-25 19:30:33', '2021-02-25 19:30:33', '[user_registration_form id=\"193\"]', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2021-02-25 19:30:33', '2021-02-25 19:30:33', '', 0, 'http://olliesmith.net/miguelinventoryNew/registration/', 0, 'page', '', 0),
(197, 1, '2021-02-25 19:35:18', '2021-02-25 19:35:18', '[user_registration_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2021-02-25 19:35:18', '2021-02-25 19:35:18', '', 194, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/194-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2021-02-25 19:35:06', '2021-02-25 19:35:06', '[user_registration_my_account]\r\n\r\n&nbsp;\r\n\r\newertfy', 'My Account', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2021-02-25 19:35:06', '2021-02-25 19:35:06', '', 194, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/194-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2021-02-25 19:36:35', '2021-02-25 19:36:35', '[user_registration_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '194-autosave-v1', '', '', '2021-02-25 19:36:35', '2021-02-25 19:36:35', '', 194, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/194-autosave-v1/', 0, 'revision', '', 0),
(199, 1, '2021-02-25 20:25:11', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[sidebar-widgets]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-25 20:25:11\"\n    },\n    \"widget_custom-post-type-calendar[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IkFnZW5kYSI7czo4OiJwb3N0dHlwZSI7czoxMDoiZXhwb3NpdGlvbiI7fQ==\",\n            \"title\": \"Agenda\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bd2a77e30328a60c3aaae75201a3cc94\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-25 20:24:02\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1e52fb92-6847-426e-bd8e-44f885a2a38c', '', '', '2021-02-25 20:25:11', '2021-02-25 20:25:11', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=199', 0, 'customize_changeset', '', 0),
(200, 1, '2021-02-25 20:49:43', '2021-02-25 20:49:43', '', 'CATEGORIES', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=200', 4, 'nav_menu_item', '', 0),
(201, 1, '2021-02-25 20:50:32', '2021-02-25 20:50:32', '', 'SERIES', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=201', 3, 'nav_menu_item', '', 0),
(202, 1, '2021-02-25 21:09:13', '2021-02-25 21:09:13', '', 'SOUS-OEUVRES', '', 'publish', 'closed', 'closed', '', 'sous-oeuvres', '', '', '2021-02-26 14:58:14', '2021-02-26 14:58:14', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=202', 5, 'nav_menu_item', '', 0),
(203, 1, '2021-02-25 21:17:27', '2021-02-25 21:17:27', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2021-02-25 21:17:27', '2021-02-25 21:17:27', '', 0, 'http://olliesmith.net/miguelinventoryNew/?page_id=203', 0, 'page', '', 0),
(204, 1, '2021-02-25 21:17:27', '2021-02-25 21:17:27', '', 'Categories', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2021-02-25 21:17:27', '2021-02-25 21:17:27', '', 203, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/203-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2021-02-25 21:17:52', '2021-02-25 21:17:52', '', 'Series', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2021-02-25 21:17:52', '2021-02-25 21:17:52', '', 0, 'http://olliesmith.net/miguelinventoryNew/?page_id=205', 0, 'page', '', 0),
(206, 1, '2021-02-25 21:17:52', '2021-02-25 21:17:52', '', 'Series', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2021-02-25 21:17:52', '2021-02-25 21:17:52', '', 205, 'http://olliesmith.net/miguelinventoryNew/2021/02/25/205-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2021-02-26 13:48:37', '2021-02-26 13:48:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-02-26 13:48:37', '2021-02-26 13:48:37', '', 1, 'http://olliesmith.net/miguelinventoryNew/2021/02/26/1-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2021-02-26 14:59:38', '0000-00-00 00:00:00', '{\n    \"MiguelInventory::nav_menu_locations[top-bar-r]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-26 14:59:38\"\n    },\n    \"MiguelInventory::nav_menu_locations[sub_nav]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-26 14:59:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '78877641-1873-4c9f-ba1b-7dcd4496bc54', '', '', '2021-02-26 14:59:38', '0000-00-00 00:00:00', '', 0, 'http://olliesmith.net/miguelinventoryNew/?p=208', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'MAIN', 'main', 0),
(3, 'title', 'title', 0),
(4, 'Installation de réalité virtuelle interactive et générative', 'installation-de-realite-virtuelle-interactive-et-generative', 0),
(5, 'DVD', 'dvd', 0),
(6, 'Impression', 'impression', 0),
(7, 'Création pour iPhone', 'creation-pour-iphone', 0),
(8, 'Installation de réalité virtuelle générative', 'installation-de-realite-virtuelle-generative', 0),
(9, 'Sculpture', 'sculpture', 0),
(10, 'Sculpture en stéréolithographie', 'sculpture-en-stereolithographie', 0),
(11, 'Image digitalisée', 'image-digitalisee', 0),
(12, 'Caisson lumineux', 'caisson-lumineux', 0),
(13, 'Objets manufacturés', 'objets-manufactures', 0),
(14, 'Sérigraphie', 'serigraphie', 0),
(15, 'Image de synthèse', 'image-de-synthese', 0),
(16, 'Installation', 'installation', 0),
(17, 'Projection', 'projection', 0),
(18, 'Gravure', 'gravure', 0),
(19, 'Tapisserie', 'tapisserie', 0),
(20, 'Gonflables', 'gonflables', 0),
(21, 'Livre d\'artiste', 'livre-dartiste', 0),
(22, 'Hologramme', 'hologramme', 0),
(23, 'Bijoux', 'bijoux', 0),
(24, 'Carte à gratter', 'carte-a-gratter', 0),
(25, 'Vidéo', 'video', 0),
(26, 'Adhésifs', 'adhesifs', 0),
(27, 'Peinture murale', 'peinture-murale', 0),
(28, 'Impression 3D', 'impression-3d', 0),
(29, 'Lenticulaire', 'lenticulaire', 0),
(30, 'Maquette en aluminium', 'maquette-en-aluminium', 0),
(31, 'Sculpture en tenségrité', 'sculpture-en-tensegrite', 0),
(32, 'Sculpture en Plexiglas', 'sculpture-en-plexiglas', 0),
(33, 'Installation de réalité virtuelle', 'installation-de-realite-virtuelle', 0),
(34, 'Photographie', 'photographie', 0),
(35, 'Oeuvre de réalité virtuelle - Vidéo', 'oeuvre-de-realite-virtuelle-video', 0),
(36, 'Installation mixed media', 'installation-mixed-media', 0),
(37, 'Film holographique', 'film-holographique', 0),
(38, 'Tirage photographique Cibachrome', 'tirage-photographique-cibachrome', 0),
(39, 'Dacryl PMMA', 'dacryl-pmma', 0),
(40, 'Verre', 'verre', 0),
(41, 'Dessin automatique', 'dessin-automatique', 0),
(42, 'Découpe laser', 'decoupe-laser', 0),
(43, 'title', 'title', 0),
(44, 'Fractal Flowers', 'fractal-flowers', 0),
(45, 'Pixels Liquides', 'pixels-liquides', 0),
(46, 'Sur-Natures', 'sur-natures', 0),
(47, 'Voyage', 'voyage', 0),
(48, 'Terra Incognita', 'terra-incognita', 0),
(49, 'RGB Land', 'rgb-land', 0),
(50, 'Nuage Fractal', 'nuage-fractal', 0),
(51, 'Réseaux', 'reseaux', 0),
(52, 'Digital Cities', 'digital-cities', 0),
(53, 'Meta-Cité', 'meta-cite', 0),
(54, 'Pixels City', 'pixels-city', 0),
(55, 'Constellations Numériques', 'constellations-numeriques', 0),
(56, 'Metapolis', 'metapolis', 0),
(57, 'Autre nature', 'autre-nature', 0),
(58, 'Attracteur Etrange', 'attracteur-etrange', 0),
(59, 'Performance', 'performance', 0),
(60, 'Baroque et classique', 'baroque-et-classique', 0),
(61, 'Pixels Infini', 'pixels-infini', 0),
(62, 'Fenêtre hexadécimale', 'fenetre-hexadecimale', 0),
(63, 'Paysage artificiel', 'paysage-artificiel', 0),
(64, 'Oro Negro', 'oro-negro', 0),
(65, 'Oenologie', 'oenologie', 0),
(66, 'Etat Binaire', 'etat-binaire', 0),
(67, 'Inter Connection', 'inter-connection', 0),
(68, 'Anthropométrie', 'anthropometrie', 0),
(69, 'Transit', 'transit', 0),
(70, 'Seconde Nature', 'seconde-nature', 0),
(71, 'Algorithme', 'algorithme', 0),
(72, 'Pixels Op\'Art', 'pixels-opart', 0),
(73, 'Marine', 'marine', 0),
(74, 'Body Voxels', 'body-voxels', 0),
(75, 'QR code', 'qr-code', 0),
(76, 'Japonisme', 'japonisme', 0),
(77, 'Commande particulière', 'commande-particuliere', 0),
(78, 'Voxels', 'voxels', 0),
(79, 'Pixels', 'pixels', 0),
(80, 'Transaction', 'transaction', 0),
(81, 'Complex Meshes', 'complex-meshes', 0),
(82, 'Vortex', 'vortex', 0),
(83, 'Trans-Natures', 'trans-natures', 0),
(84, 'Origine du Monde', 'origine-du-monde', 0),
(85, 'Vague des Pixels', 'vague-des-pixels', 0),
(86, 'Tapis magiques', 'tapis-magiques', 0),
(87, 'Digital Arabesques', 'digital-arabesques', 0),
(88, 'Digital Cristaux', 'digital-cristaux', 0),
(89, 'Le sacré', 'le-sacre', 0),
(90, 'Digital Abstractions', 'digital-abstractions', 0),
(91, 'Sweet dream', 'sweet-dream', 0),
(92, 'Oeuvres de jeunesse', 'oeuvres-de-jeunesse', 0),
(93, 'Abysses', 'abysses', 0),
(94, 'Voronoï', 'voronoi', 0),
(95, 'Extra-Natural', 'extra-natural', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(200, 2, 0),
(6, 1, 0),
(8, 1, 0),
(32, 1, 0),
(34, 1, 0),
(55, 1, 0),
(63, 1, 0),
(105, 1, 0),
(149, 26, 0),
(149, 76, 0),
(165, 62, 0),
(166, 81, 0),
(165, 12, 0),
(170, 39, 0),
(166, 20, 0),
(175, 39, 0),
(185, 2, 0),
(176, 23, 0),
(186, 2, 0),
(187, 2, 0),
(188, 2, 0),
(201, 2, 0),
(202, 2, 0),
(1, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 0, 0),
(14, 14, 'category', '', 0, 0),
(15, 15, 'category', '', 0, 0),
(16, 16, 'category', '', 0, 0),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 0, 1),
(21, 21, 'category', '', 0, 0),
(22, 22, 'category', '', 0, 0),
(23, 23, 'category', '', 0, 1),
(24, 24, 'category', '', 0, 0),
(25, 25, 'category', '', 0, 0),
(26, 26, 'category', '', 0, 1),
(27, 27, 'category', '', 0, 0),
(28, 28, 'category', '', 0, 0),
(29, 29, 'category', '', 0, 0),
(30, 30, 'category', '', 0, 0),
(31, 31, 'category', '', 0, 0),
(32, 32, 'category', '', 0, 0),
(33, 33, 'category', '', 0, 0),
(34, 34, 'category', '', 0, 0),
(35, 35, 'category', '', 0, 0),
(36, 36, 'category', '', 0, 0),
(37, 37, 'category', '', 0, 0),
(38, 38, 'category', '', 0, 0),
(39, 39, 'category', '', 0, 2),
(40, 40, 'category', '', 0, 0),
(41, 41, 'category', '', 0, 0),
(42, 42, 'category', '', 0, 0),
(43, 43, 'post_tag', '', 0, 0),
(44, 44, 'post_tag', '', 0, 0),
(45, 45, 'post_tag', '', 0, 0),
(46, 46, 'post_tag', '', 0, 0),
(47, 47, 'post_tag', '', 0, 0),
(48, 48, 'post_tag', '', 0, 0),
(49, 49, 'post_tag', '', 0, 0),
(50, 50, 'post_tag', '', 0, 0),
(51, 51, 'post_tag', '', 0, 0),
(52, 52, 'post_tag', '', 0, 0),
(53, 53, 'post_tag', '', 0, 0),
(54, 54, 'post_tag', '', 0, 0),
(55, 55, 'post_tag', '', 0, 0),
(56, 56, 'post_tag', '', 0, 0),
(57, 57, 'post_tag', '', 0, 0),
(58, 58, 'post_tag', '', 0, 0),
(59, 59, 'post_tag', '', 0, 0),
(60, 60, 'post_tag', '', 0, 0),
(61, 61, 'post_tag', '', 0, 0),
(62, 62, 'post_tag', '', 0, 1),
(63, 63, 'post_tag', '', 0, 0),
(64, 64, 'post_tag', '', 0, 0),
(65, 65, 'post_tag', '', 0, 0),
(66, 66, 'post_tag', '', 0, 0),
(67, 67, 'post_tag', '', 0, 0),
(68, 68, 'post_tag', '', 0, 0),
(69, 69, 'post_tag', '', 0, 0),
(70, 70, 'post_tag', '', 0, 0),
(71, 71, 'post_tag', '', 0, 0),
(72, 72, 'post_tag', '', 0, 0),
(73, 73, 'post_tag', '', 0, 0),
(74, 74, 'post_tag', '', 0, 0),
(75, 75, 'post_tag', '', 0, 0),
(76, 76, 'post_tag', '', 0, 1),
(77, 77, 'post_tag', '', 0, 0),
(78, 78, 'post_tag', '', 0, 0),
(79, 79, 'post_tag', '', 0, 0),
(80, 80, 'post_tag', '', 0, 0),
(81, 81, 'post_tag', '', 0, 1),
(82, 82, 'post_tag', '', 0, 0),
(83, 83, 'post_tag', '', 0, 0),
(84, 84, 'post_tag', '', 0, 0),
(85, 85, 'post_tag', '', 0, 0),
(86, 86, 'post_tag', '', 0, 0),
(87, 87, 'post_tag', '', 0, 0),
(88, 88, 'post_tag', '', 0, 0),
(89, 89, 'post_tag', '', 0, 0),
(90, 90, 'post_tag', '', 0, 0),
(91, 91, 'post_tag', '', 0, 0),
(92, 92, 'post_tag', '', 0, 0),
(93, 93, 'post_tag', '', 0, 0),
(94, 94, 'post_tag', '', 0, 0),
(95, 95, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Ollie'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"d4a315fd4048b82001d4ca840721dbd7d5c24adc1e28eafb364d588304a7f758\";a:4:{s:10:\"expiration\";i:1615207242;s:2:\"ip\";s:13:\"85.246.152.93\";s:2:\"ua\";s:66:\"Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1613997642;}s:64:\"ba5d0e108664b98c5ba9e4f8273979766889c3abd285969a00d4b63ab19aa141\";a:4:{s:10:\"expiration\";i:1614526458;s:2:\"ip\";s:12:\"79.169.37.80\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1614353658;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"79.169.37.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1613994604'),
(24, 1, 'closedpostboxes_oeuvre', 'a:1:{i:0;s:12:\"postimagediv\";}'),
(25, 1, 'metaboxhidden_oeuvre', 'a:0:{}'),
(26, 1, 'wfls-captcha-nonce', '{\"nonce\":\"a4c5f54398dcfb9a556c69b6e0af02ab9a896e50e3b9c02ab4d4faf9dead7445\",\"score\":false,\"token\":\"\",\"expiration\":1613997630}'),
(27, 1, 'simplefavorites', 'a:1:{i:0;a:3:{s:7:\"site_id\";i:1;s:5:\"posts\";a:0:{}s:6:\"groups\";a:1:{i:0;a:4:{s:8:\"group_id\";i:1;s:7:\"site_id\";i:1;s:10:\"group_name\";s:12:\"Default List\";s:5:\"posts\";a:0:{}}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Ollie', '$P$BYeurvEWkU1soezfUJKjrmEWpj1JDn1', 'ollie', 'm.oliver.smith@gmail.com', 'http://olliesmith.net/miguelinventoryNew', '2021-02-21 21:58:51', '', 0, 'Ollie');

-- --------------------------------------------------------

--
-- Table structure for table `wp_user_registration_sessions`
--

CREATE TABLE `wp_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('alertOn_update', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('scheduledScansEnabled', 0x31, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableApplicationPasswords', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_WFNet', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('autoUpdate', 0x30, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('addCacheComment', 0x30, 'yes'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('debugOn', 0x30, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('scan_include_extra', '', 'yes'),
('alertEmails', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('maxMem', 0x323536, 'yes'),
('scan_exclude', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_maxDuration', '', 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('bannedURLs', '', 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('blockedTime', 0x333030, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('schedStartHour', 0x39, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('blockCustomText', '', 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('apiKey', 0x393939323565343138656137353637663532343764386433353362373530633031336330393036646137356364613437303530363939393633323462386265396566636531383163663231303436333436303532313238626161353931303933306365366365306439383631383661373136613533393834343165613237346561316464333534663630613434626438643832636162363366343530363563353136636330343261303164663439666132623837303336303563336261353539, 'yes'),
('keyType', 0x66726565, 'yes'),
('isPaid', '', 'yes'),
('betaThreatDefenseFeed', 0x30, 'yes'),
('timeoffset_wf_updated', 0x31363133393935373433, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('detectProxyRecommendation', '', 'no'),
('dismissAutoPrependNotice', 0x30, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x30, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('supportContent', 0x7b22746f70223a5b7b227469746c65223a22426c6f636b696e672054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a307d2c7b227469746c65223a224f7074696d697a696e6720546865204669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a317d2c7b227469746c65223a22576f726466656e636520576562204170706c69636174696f6e204669726577616c6c202857414629222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c226f72646572223a327d2c7b227469746c65223a225363616e2054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d2c7b227469746c65223a22576f726466656e636520616e64204c6974655370656564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f6c69746573706565645c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a224669726577616c6c204c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a367d2c7b227469746c65223a225363616e20526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a377d2c7b227469746c65223a224920616d206c6f636b6564206f7574206f66206d792073697465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f23692d616d2d6c6f636b65642d6f75742d6f662d6d792d73697465222c226f72646572223a387d2c7b227469746c65223a2250485020466174616c206572726f723a204661696c6564206f70656e696e6720726571756972656420776f726466656e63652d7761662e706870222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f237068702d666174616c2d6572726f722d6661696c65642d6f70656e696e672d72657175697265642d776f726466656e63652d7761662d706870222c226f72646572223a397d5d2c22616c6c223a5b7b227469746c65223a22576f726466656e63652043656e7472616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f222c2265786365727074223a22576f726466656e63652043656e7472616c2070726f7669646573206120706f77657266756c20616e6420656666696369656e742077617920746f206d616e61676520746865207365637572697479206f66206d616e7920576f726450726573732073697465732076696120612073696e676c6520696e746572666163652e222c226368696c6472656e223a5b7b227469746c65223a22436f6e6e656374696e6720796f757220736974657320746f20576f726466656e63652043656e7472616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e6e6563745c2f222c226f72646572223a307d2c7b227469746c65223a2253657474696e672075702074776f2d666163746f722061757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f3266615c2f222c226f72646572223a317d2c7b227469746c65223a225573696e67207468652044617368626f6172642070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f63656e7472616c5c2f222c226f72646572223a327d2c7b227469746c65223a225573696e672074686520436f6e66696775726174696f6e2070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e66696775726174696f6e5c2f222c226f72646572223a337d2c7b227469746c65223a225573696e6720576f726466656e636520706c7567696e206f7074696f6e732054656d706c61746573222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f74656d706c617465735c2f222c226f72646572223a347d2c7b227469746c65223a225573696e67207468652053657474696e67732070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f73657474696e67735c2f222c226f72646572223a357d2c7b227469746c65223a225573696e6720576f726466656e63652043656e7472616c205465616d73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f7465616d735c2f222c226f72646572223a367d2c7b227469746c65223a2256696577696e67207363616e2046696e64696e6773222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f66696e64696e67735c2f222c226f72646572223a377d5d2c226f72646572223a307d2c7b227469746c65223a2244617368626f617264222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f222c2265786365727074223a2254686520576f726466656e63652044617368626f6172642070726f766964657320696e736967687420696e746f207468652063757272656e74207374617465206f6620796f75722073697465e28099732073656375726974792e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22416c65727473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f616c657274735c2f222c226f72646572223a317d5d2c226f72646572223a317d2c7b227469746c65223a224669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c2265786365727074223a2254686520576f726466656e636520576562204170706c69636174696f6e204669726577616c6c2069732061205048502062617365642c206170706c69636174696f6e206c6576656c206669726577616c6c20746861742066696c74657273206f7574206d616c6963696f757320726571756573747320746f20796f757220736974652e20222c226368696c6472656e223a5b7b227469746c65223a224f7074696d697a696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a307d2c7b227469746c65223a224c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a317d2c7b227469746c65223a2253746174697374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f737461746973746963735c2f222c226f72646572223a327d2c7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696f6e735c2f222c226f72646572223a337d2c7b227469746c65223a224d7953514c692073746f7261676520656e67696e65222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6d7973716c692d73746f726167652d656e67696e655c2f222c226f72646572223a347d2c7b227469746c65223a22427275746520466f7263652050726f74656374696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f62727574652d666f7263655c2f222c226f72646572223a357d2c7b227469746c65223a2252617465204c696d6974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f726174652d6c696d6974696e675c2f222c226f72646572223a367d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a377d5d2c226f72646572223a327d2c7b227469746c65223a22426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f222c2265786365727074223a2241736964652066726f6d20746865204669726577616c6c2072756c657320746861742070726f7465637420616761696e73742053514c2d696e6a656374696f6e2c2058535320616e64206d6f72652c20576f726466656e636520616c736f2068617320637573746f6d20666561747572657320666f72206164646974696f6e616c20626c6f636b696e672e20222c226368696c6472656e223a5b7b227469746c65223a22436f756e74727920426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f636f756e7472792d626c6f636b696e675c2f222c226f72646572223a307d2c7b227469746c65223a22426c6f636b696e672054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a317d5d2c226f72646572223a337d2c7b227469746c65223a225363616e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f222c2265786365727074223a224120576f726466656e6365207363616e206578616d696e657320616c6c2066696c6573206f6e20796f757220576f726450726573732077656273697465206c6f6f6b696e6720666f72206d616c6963696f757320636f64652c206261636b646f6f72732c207368656c6c732074686174206861636b657273206861766520696e7374616c6c65642c206b6e6f776e206d616c6963696f75732055524c7320616e64206b6e6f776e207061747465726e73206f6620696e66656374696f6e732e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a317d2c7b227469746c65223a225363686564756c696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363686564756c696e675c2f222c226f72646572223a327d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d5d2c226f72646572223a347d2c7b227469746c65223a22546f6f6c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f222c2265786365727074223a22576f726466656e636520546f6f6c7320696e636c7564652054776f20466163746f722041757468656e7469636174696f6e2c2057686f6973204c6f6f6b75702c2050617373776f72642041756469742c204c697665205472616666696320616e6420446961676e6f73746963732e222c226368696c6472656e223a5b7b227469746c65223a22496d706f72745c2f4578706f7274222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f696d706f72742d6578706f72745c2f222c226f72646572223a307d2c7b227469746c65223a2250617373776f7264204175646974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f70617373776f72642d6175646974696e675c2f222c226f72646572223a317d2c7b227469746c65223a2257686f6973204c6f6f6b7570222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f77686f69732d6c6f6f6b75705c2f222c226f72646572223a327d2c7b227469746c65223a22446961676e6f7374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f646961676e6f73746963735c2f222c226f72646572223a337d2c7b227469746c65223a224c6976652054726166666963222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c6976652d747261666669635c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a224c65676163792054776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c65676163792d74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a367d5d2c226f72646572223a357d2c7b227469746c65223a224c6f67696e205365637572697479222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974795c2f222c2265786365727074223a22546865204c6f67696e20536563757269747920706167652063757272656e746c7920636f6e7461696e732073657474696e677320666f722074776f2d666163746f722061757468656e7469636174696f6e20283246412920616e64207265434150544348412e20496e20612066757475726520576f726466656e63652076657273696f6e2c206578697374696e67206c6f67696e2d72656c617465642066656174757265732077696c6c20616c736f206d6f766520746f207468652073616d6520706167652e222c226f72646572223a367d2c7b227469746c65223a22416476616e636564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f222c2265786365727074223a22496620796f752077616e7420746f206b6e6f77206d6f72652061626f75742074686520746563686e6963616c2064657461696c73206f6620576f726466656e63652c20796f75276c6c2066696e642074686520616e737765727320696e20746869732073656374696f6e2e222c226368696c6472656e223a5b7b227469746c65223a2253797374656d20726571756972656d656e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f222c226f72646572223a307d2c7b227469746c65223a224368616e67656c6f67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f6368616e67656c6f675c2f222c226f72646572223a317d2c7b227469746c65223a2252656d6f7665206f72205265736574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f72656d6f76652d6f722d72657365745c2f222c226f72646572223a327d2c7b227469746c65223a22546563686e6963616c2044657461696c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f746563686e6963616c2d64657461696c735c2f222c226f72646572223a337d2c7b227469746c65223a22436f6e7374616e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f636f6e7374616e74735c2f222c226f72646572223a347d2c7b227469746c65223a22576f726466656e636520415049222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f776f726466656e63652d6170695c2f222c226f72646572223a357d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a367d5d2c226f72646572223a377d2c7b227469746c65223a22576f726466656e6365205072656d69756d222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f222c2265786365727074223a22576f726466656e6365205072656d69756d20636f6d6573207769746820616e20495020426c6f636b6c6973742c205265616c2054696d652050726f74656374696f6e20616e64206d756368206d6f72652e222c226368696c6472656e223a5b7b227469746c65223a224163636f756e74222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f6163636f756e745c2f222c226f72646572223a307d2c7b227469746c65223a2250726963696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f70726963696e675c2f222c226f72646572223a317d2c7b227469746c65223a224c6963656e7365204b6579222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f6170692d6b65795c2f222c226f72646572223a327d5d2c226f72646572223a387d2c7b227469746c65223a22576f726466656e636520616e642047445052202d2047656e6572616c20446174612050726f74656374696f6e20526567756c6174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f67656e6572616c2d646174612d70726f74656374696f6e2d726567756c6174696f6e5c2f222c2265786365727074223a2244656669616e742c2074686520636f6d70616e7920626568696e6420576f726466656e63652c20686173207570646174656420697473207465726d73206f66207573652c207072697661637920706f6c696369657320616e6420736f6674776172652c2061732077656c6c206173206d61646520617661696c61626c65206120646174612070726f63657373696e672061677265656d656e7420746f206d656574204744505220636f6d706c69616e63652e20437573746f6d657273206d7573742072657669657720616e6420616772656520746f2075706461746564207465726d7320696e206f7264657220746f20636f6e74696e7565207573696e67206f75722070726f647563747320616e642073657276696365732e20576520616c736f2070726f76696465206120646174612070726f63657373696e672061677265656d656e7420696620796f75207175616c6966792061732061206461746120636f6e74726f6c6c657220756e6465722074686520474450522e222c226368696c6472656e223a5b7b227469746c65223a225375622d50726f636573736f7273204c697374222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f67656e6572616c2d646174612d70726f74656374696f6e2d726567756c6174696f6e5c2f7375622d70726f636573736f72732d6c6973745c2f222c226f72646572223a307d5d2c226f72646572223a397d2c7b227469746c65223a225369746520436c65616e696e6720616e6420536563757269747920417564697473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f73656375726974792d73657276696365735c2f222c2265786365727074223a224c6574206f6e65206f66206f757220536563757269747920416e616c797374732068656c7020796f7520636c65616e20796f757220696e6665637465642073697465206f7220696e737065637420697420666f722076756c6e65726162696c69746965732e222c226f72646572223a31307d2c7b227469746c65223a224c6f67696e20536563757269747920506c7567696e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974792d706c7567696e5c2f222c2265786365727074223a2254686520576f726466656e6365204c6f67696e20536563757269747920706c7567696e20636f6e7461696e73206120737562736574206f662074686520666561747572657320666f756e6420696e207468652066756c6c20576f726466656e636520706c7567696e3a2054776f2d666163746f722041757468656e7469636174696f6e2c20584d4c2d5250432050726f74656374696f6e20616e64204c6f67696e205061676520434150544348412e20497420697320696465616c20666f722073697465732074686174206e656564206c6f67696e2073656375726974792066756e6374696f6e616c69747920627574206569746865722063616ee2809974206f7220646f6ee28099742077616e7420746f2072756e207468652066756c6c20576f726466656e636520706c7567696e2e222c226f72646572223a31317d5d7d, 'yes'),
('supportHash', 0x64643162663933326265316630653662653734616530613230386461383739656336633863343763636239363237313761303161373936616236633534343633, 'yes'),
('whitelistPresets', 0x7b22776f726466656e6365223a7b226e223a22576f726466656e6365222c2268223a747275652c2264223a747275652c2266223a747275652c2272223a5b2235342e36382e33322e323437222c2236392e34362e33362e305c2f3237222c22323630353a323430303a303130343a303130303a3a5c2f3536225d7d2c22737563757269223a7b226e223a22537563757269222c2264223a747275652c2272223a5b2239372e37342e3132372e313731222c2236392e3136342e3230332e313732222c223137332e3233302e3132382e313335222c2236362e3232382e33342e3439222c2236362e3232382e34302e313835222c2235302e3131362e33362e3932222c2235302e3131362e33362e3933222c2235302e3131362e332e313731222c223139382e35382e39362e323132222c2235302e3131362e36332e323231222c223139322e3135352e39322e313132222c223139322e38312e3132382e3331222c223139382e35382e3130362e323434222c223139322e3135352e39352e313339222c2232332e3233392e392e323237222c223139382e35382e3131322e313033222c223139322e3135352e39342e3433222c223136322e3231362e31362e3333222c223137332e3235352e3233332e313234222c223137332e3235352e3233332e313234222c223139322e3135352e39302e313739222c2235302e3131362e34312e323137222c223139322e38312e3132392e323237222c223139382e35382e3131312e3830222c223136322e3231362e31392e313833225d7d2c2266616365626f6f6b223a7b226e223a2246616365626f6f6b222c2264223a747275652c2272223a5b2236392e36332e3137362e305c2f3230222c2236362e3232302e3134342e305c2f3230222c2236362e3232302e3134342e305c2f3231222c2236392e36332e3138342e305c2f3231222c2236392e36332e3137362e305c2f3231222c2237342e3131392e37362e305c2f3232222c2236392e3137312e3235352e305c2f3234222c223137332e3235322e36342e305c2f3138222c2236392e3137312e3232342e305c2f3139222c2236392e3137312e3232342e305c2f3230222c223130332e342e39362e305c2f3232222c2236392e36332e3137362e305c2f3234222c223137332e3235322e36342e305c2f3139222c223137332e3235322e37302e305c2f3234222c2233312e31332e36342e305c2f3138222c2233312e31332e32342e305c2f3231222c2236362e3232302e3135322e305c2f3231222c2236362e3232302e3135392e305c2f3234222c2236392e3137312e3233392e305c2f3234222c2236392e3137312e3234302e305c2f3230222c2233312e31332e36342e305c2f3139222c2233312e31332e36342e305c2f3234222c2233312e31332e36352e305c2f3234222c2233312e31332e36372e305c2f3234222c2233312e31332e36382e305c2f3234222c2233312e31332e36392e305c2f3234222c2233312e31332e37302e305c2f3234222c2233312e31332e37312e305c2f3234222c2233312e31332e37322e305c2f3234222c2233312e31332e37332e305c2f3234222c2233312e31332e37342e305c2f3234222c2233312e31332e37352e305c2f3234222c2233312e31332e37362e305c2f3234222c2233312e31332e37372e305c2f3234222c2233312e31332e39362e305c2f3139222c2233312e31332e36362e305c2f3234222c223137332e3235322e39362e305c2f3139222c2236392e36332e3137382e305c2f3234222c2233312e31332e37382e305c2f3234222c2233312e31332e37392e305c2f3234222c2233312e31332e38302e305c2f3234222c2233312e31332e38322e305c2f3234222c2233312e31332e38332e305c2f3234222c2233312e31332e38342e305c2f3234222c2233312e31332e38352e305c2f3234222c2233312e31332e38362e305c2f3234222c2233312e31332e38372e305c2f3234222c2233312e31332e38382e305c2f3234222c2233312e31332e38392e305c2f3234222c2233312e31332e39302e305c2f3234222c2233312e31332e39312e305c2f3234222c2233312e31332e39322e305c2f3234222c2233312e31332e39332e305c2f3234222c2233312e31332e39342e305c2f3234222c2233312e31332e39352e305c2f3234222c2236392e3137312e3235332e305c2f3234222c2236392e36332e3138362e305c2f3234222c2233312e31332e38312e305c2f3234222c223137392e36302e3139322e305c2f3232222c223137392e36302e3139322e305c2f3234222c223137392e36302e3139332e305c2f3234222c223137392e36302e3139342e305c2f3234222c223137392e36302e3139352e305c2f3234222c223138352e36302e3231362e305c2f3232222c2234352e36342e34302e305c2f3232222c223138352e36302e3231362e305c2f3234222c223138352e36302e3231372e305c2f3234222c223138352e36302e3231382e305c2f3234222c223138352e36302e3231392e305c2f3234222c223132392e3133342e302e305c2f3136222c223135372e3234302e302e305c2f3136222c223135372e3234302e382e305c2f3234222c223135372e3234302e302e305c2f3234222c223135372e3234302e312e305c2f3234222c223135372e3234302e322e305c2f3234222c223135372e3234302e332e305c2f3234222c223135372e3234302e342e305c2f3234222c223135372e3234302e352e305c2f3234222c223135372e3234302e362e305c2f3234222c223135372e3234302e372e305c2f3234222c223135372e3234302e392e305c2f3234222c223135372e3234302e31302e305c2f3234222c223135372e3234302e31362e305c2f3234222c223135372e3234302e31392e305c2f3234222c223135372e3234302e31312e305c2f3234222c223135372e3234302e31322e305c2f3234222c223135372e3234302e31332e305c2f3234222c223135372e3234302e31342e305c2f3234222c223135372e3234302e31352e305c2f3234222c223135372e3234302e31372e305c2f3234222c223135372e3234302e31382e305c2f3234222c223135372e3234302e32302e305c2f3234222c223135372e3234302e32312e305c2f3234222c223135372e3234302e32322e305c2f3234222c223135372e3234302e32332e305c2f3234222c223135372e3234302e302e305c2f3137222c2236392e3137312e3235302e305c2f3234222c223135372e3234302e32342e305c2f3234222c223135372e3234302e32352e305c2f3234222c223139392e3230312e36342e305c2f3234222c223139392e3230312e36352e305c2f3234222c223139392e3230312e36342e305c2f3232222c223230342e31352e32302e305c2f3232222c223135372e3234302e3139322e305c2f3234222c223132392e3133342e302e305c2f3137222c223230342e31352e32302e305c2f3232222c2236392e36332e3137362e305c2f3230222c2236392e36332e3137362e305c2f3231222c2236392e36332e3138342e305c2f3231222c2236362e3232302e3134342e305c2f3230222c2236392e36332e3137362e305c2f3230222c22323632303a303a316330303a3a5c2f3430222c22326130333a323838303a3a5c2f3332222c22326130333a323838303a666666653a3a5c2f3438222c22326130333a323838303a666666663a3a5c2f3438222c22323632303a303a316366663a3a5c2f3438222c22326130333a323838303a663030303a3a5c2f3438222c22326130333a323838303a663030313a3a5c2f3438222c22326130333a323838303a663030323a3a5c2f3438222c22326130333a323838303a663030333a3a5c2f3438222c22326130333a323838303a663030343a3a5c2f3438222c22326130333a323838303a663030353a3a5c2f3438222c22326130333a323838303a663030363a3a5c2f3438222c22326130333a323838303a663030373a3a5c2f3438222c22326130333a323838303a663030383a3a5c2f3438222c22326130333a323838303a663030393a3a5c2f3438222c22326130333a323838303a663030613a3a5c2f3438222c22326130333a323838303a663030623a3a5c2f3438222c22326130333a323838303a663030633a3a5c2f3438222c22326130333a323838303a663030643a3a5c2f3438222c22326130333a323838303a663030653a3a5c2f3438222c22326130333a323838303a663030663a3a5c2f3438222c22326130333a323838303a663031303a3a5c2f3438222c22326130333a323838303a663031313a3a5c2f3438222c22326130333a323838303a663031323a3a5c2f3438222c22326130333a323838303a663031333a3a5c2f3438222c22326130333a323838303a663031343a3a5c2f3438222c22326130333a323838303a663031353a3a5c2f3438222c22326130333a323838303a663031363a3a5c2f3438222c22326130333a323838303a663031373a3a5c2f3438222c22326130333a323838303a663031383a3a5c2f3438222c22326130333a323838303a663031393a3a5c2f3438222c22326130333a323838303a663031613a3a5c2f3438222c22326130333a323838303a663031623a3a5c2f3438222c22326130333a323838303a663031633a3a5c2f3438222c22326130333a323838303a663031643a3a5c2f3438222c22326130333a323838303a663031653a3a5c2f3438222c22326130333a323838303a663031663a3a5c2f3438222c22326130333a323838303a313030303a3a5c2f3336222c22326130333a323838303a323030303a3a5c2f3336222c22326130333a323838303a333030303a3a5c2f3336222c22326130333a323838303a343030303a3a5c2f3336222c22326130333a323838303a353030303a3a5c2f3336222c22326130333a323838303a363030303a3a5c2f3336222c22326130333a323838303a373030303a3a5c2f3336222c22326130333a323838303a663032303a3a5c2f3438222c22326130333a323838303a663032313a3a5c2f3438222c22326130333a323838303a663032323a3a5c2f3438222c22326130333a323838303a663032333a3a5c2f3438222c22326130333a323838303a663032343a3a5c2f3438222c22326130333a323838303a663032353a3a5c2f3438222c22326130333a323838303a663032363a3a5c2f3438222c22326130333a323838303a663032373a3a5c2f3438222c22326130333a323838303a663032383a3a5c2f3438222c22326130333a323838303a663032393a3a5c2f3438222c22326130333a323838303a663032623a3a5c2f3438222c22326130333a323838303a663032633a3a5c2f3438222c22326130333a323838303a663032643a3a5c2f3438222c22326130333a323838303a663032653a3a5c2f3438222c22326130333a323838303a663032663a3a5c2f3438222c22326130333a323838303a663033303a3a5c2f3438222c22326130333a323838303a663033313a3a5c2f3438222c22326130333a323838303a663033323a3a5c2f3438222c22326130333a323838303a663033333a3a5c2f3438222c22326130333a323838303a663033343a3a5c2f3438222c22326130333a323838303a663033353a3a5c2f3438222c22326130333a323838303a663033363a3a5c2f3438222c22326130333a323838303a663033373a3a5c2f3438222c22326130333a323838303a663033383a3a5c2f3438222c22326130333a323838303a663033393a3a5c2f3438222c22326130333a323838303a663033613a3a5c2f3438222c22326130333a323838303a663033623a3a5c2f3438222c22326130333a323838303a663033633a3a5c2f3438222c22326130333a323838303a663033643a3a5c2f3438222c22326130333a323838303a663033653a3a5c2f3438222c22326130333a323838303a663033663a3a5c2f3438222c22323430313a646230303a3a5c2f3332222c22326130333a323838303a3a5c2f3336222c22323830333a363038303a3a5c2f3332222c22326130333a323838303a663130303a3a5c2f3438222c22326130333a323838303a663230303a3a5c2f3438222c22326130333a323838303a663130313a3a5c2f3438222c22326130333a323838303a663230313a3a5c2f3438222c22326130333a323838303a663130323a3a5c2f3438222c22326130333a323838303a663230323a3a5c2f3438222c22326130333a323838303a663130333a3a5c2f3438222c22326130333a323838303a663230333a3a5c2f3438222c22326130333a323838303a663130343a3a5c2f3438222c22326130333a323838303a663230343a3a5c2f3438222c22326130333a323838303a663130373a3a5c2f3438222c22326130333a323838303a663230373a3a5c2f3438222c22326130333a323838303a663130383a3a5c2f3438222c22326130333a323838303a663230383a3a5c2f3438222c22326130333a323838303a663130393a3a5c2f3438222c22326130333a323838303a663230393a3a5c2f3438222c22326130333a323838303a663130613a3a5c2f3438222c22326130333a323838303a663230613a3a5c2f3438222c22326130333a323838303a663130623a3a5c2f3438222c22326130333a323838303a663230623a3a5c2f3438222c22326130333a323838303a663130643a3a5c2f3438222c22326130333a323838303a663230643a3a5c2f3438222c22326130333a323838303a663130653a3a5c2f3438222c22326130333a323838303a663230653a3a5c2f3438222c22326130333a323838303a663130663a3a5c2f3438222c22326130333a323838303a663230663a3a5c2f3438222c22326130333a323838303a663131303a3a5c2f3438222c22326130333a323838303a663231303a3a5c2f3438222c22326130333a323838303a663131313a3a5c2f3438222c22326130333a323838303a663231313a3a5c2f3438222c22326130333a323838303a663131323a3a5c2f3438222c22326130333a323838303a663231323a3a5c2f3438222c22326130333a323838303a663131343a3a5c2f3438222c22326130333a323838303a663231343a3a5c2f3438222c22326130333a323838303a663131353a3a5c2f3438222c22326130333a323838303a663231353a3a5c2f3438222c22326130333a323838303a663131363a3a5c2f3438222c22326130333a323838303a663231363a3a5c2f3438222c22326130333a323838303a663131373a3a5c2f3438222c22326130333a323838303a663231373a3a5c2f3438222c22326130333a323838303a663131383a3a5c2f3438222c22326130333a323838303a663231383a3a5c2f3438222c22326130333a323838303a663131393a3a5c2f3438222c22326130333a323838303a663231393a3a5c2f3438222c22326130333a323838303a663131613a3a5c2f3438222c22326130333a323838303a663231613a3a5c2f3438222c22326130333a323838303a663131663a3a5c2f3438222c22326130333a323838303a663231663a3a5c2f3438222c22326130333a323838303a663132313a3a5c2f3438222c22326130333a323838303a663232313a3a5c2f3438222c22326130333a323838303a663132323a3a5c2f3438222c22326130333a323838303a663232323a3a5c2f3438222c22326130333a323838303a663132333a3a5c2f3438222c22326130333a323838303a663232333a3a5c2f3438222c22326130333a323838303a663130633a3a5c2f3438222c22326130333a323838303a663230633a3a5c2f3438222c22326130333a323838303a663132363a3a5c2f3438222c22326130333a323838303a663232363a3a5c2f3438222c22326130333a323838303a663130353a3a5c2f3438222c22326130333a323838303a663230353a3a5c2f3438222c22326130333a323838303a663132353a3a5c2f3438222c22326130333a323838303a663232353a3a5c2f3438222c22326130333a323838303a663130363a3a5c2f3438222c22326130333a323838303a663230363a3a5c2f3438222c22326130333a323838303a663131623a3a5c2f3438222c22326130333a323838303a663231623a3a5c2f3438222c22326130333a323838303a663131333a3a5c2f3438222c22326130333a323838303a663231333a3a5c2f3438222c22326130333a323838303a663131633a3a5c2f3438222c22326130333a323838303a663231633a3a5c2f3438222c22326130333a323838303a663132383a3a5c2f3438222c22326130333a323838303a663232383a3a5c2f3438222c22326130333a323838303a663032613a3a5c2f3438222c22326130333a323838303a663132613a3a5c2f3438222c22326130333a323838303a663232613a3a5c2f3438222c22326130333a323838303a663132663a3a5c2f3438222c22326130333a323838303a663232663a3a5c2f3438222c22326130333a323838303a663131643a3a5c2f3438222c22326130333a323838303a663131653a3a5c2f3438222c22326130333a323838303a663132303a3a5c2f3438222c22326130333a323838303a663132343a3a5c2f3438222c22326130333a323838303a663132373a3a5c2f3438222c22326130333a323838303a663132393a3a5c2f3438222c22326130333a323838303a663132623a3a5c2f3438222c22326130333a323838303a663132633a3a5c2f3438222c22326130333a323838303a663132643a3a5c2f3438222c22326130333a323838303a663132653a3a5c2f3438222c22326130333a323838303a663133303a3a5c2f3438222c22326130333a323838303a663133313a3a5c2f3438222c22326130333a323838303a663133323a3a5c2f3438222c22326130333a323838303a663133333a3a5c2f3438222c22326130333a323838303a663133343a3a5c2f3438222c22326130333a323838303a663133353a3a5c2f3438222c22326130333a323838303a663133363a3a5c2f3438222c22326130333a323838303a663133373a3a5c2f3438222c22326130333a323838303a663133383a3a5c2f3438222c22326130333a323838303a663133393a3a5c2f3438222c22326130333a323838303a663133613a3a5c2f3438222c22326130333a323838303a663133623a3a5c2f3438222c22326130333a323838303a663133633a3a5c2f3438222c22326130333a323838303a663133643a3a5c2f3438222c22326130333a323838303a663133653a3a5c2f3438222c22326130333a323838303a663133663a3a5c2f3438222c22326130333a323838303a663231643a3a5c2f3438222c22326130333a323838303a663231653a3a5c2f3438222c22326130333a323838303a663232303a3a5c2f3438222c22326130333a323838303a663232343a3a5c2f3438222c22326130333a323838303a663232373a3a5c2f3438222c22326130333a323838303a663232393a3a5c2f3438222c22326130333a323838303a663232623a3a5c2f3438222c22326130333a323838303a663232633a3a5c2f3438222c22326130333a323838303a663232643a3a5c2f3438222c22326130333a323838303a663232653a3a5c2f3438222c22326130333a323838303a663233303a3a5c2f3438222c22326130333a323838303a663233313a3a5c2f3438222c22326130333a323838303a663233323a3a5c2f3438222c22326130333a323838303a663233333a3a5c2f3438222c22326130333a323838303a663233343a3a5c2f3438222c22326130333a323838303a663233353a3a5c2f3438222c22326130333a323838303a663233363a3a5c2f3438222c22326130333a323838303a663233373a3a5c2f3438222c22326130333a323838303a663233383a3a5c2f3438222c22326130333a323838303a663233393a3a5c2f3438222c22326130333a323838303a663233613a3a5c2f3438222c22326130333a323838303a663233623a3a5c2f3438222c22326130333a323838303a663233633a3a5c2f3438222c22326130333a323838303a663233643a3a5c2f3438222c22326130333a323838303a663233653a3a5c2f3438222c22326130333a323838303a663233663a3a5c2f3438222c22326130333a323838303a663066663a3a5c2f3438222c22326130333a323838303a663166663a3a5c2f3438222c22326130333a323838303a663266663a3a5c2f3438222c22326330663a656637383a303030333a3a5c2f3438225d7d2c22757074696d65726f626f74223a7b226e223a22557074696d6520526f626f74222c2264223a747275652c2272223a5b2236392e3136322e3132342e3232345c2f3238222c2236332e3134332e34322e3234305c2f3238225d7d2c2273746174757363616b65223a7b226e223a2253746174757343616b65222c2264223a747275652c2272223a5b223130332e3139342e3131322e3730222c223130342e3133312e3234372e313531222c223130342e3133312e3234382e3635222c223130342e3133312e3234382e3738222c223130342e3135362e3232392e3234222c223130342e3135362e3235352e313834222c223130342e3230362e3136382e3236222c223130342e3233382e3136342e313035222c223130372e3135302e312e313335222c223130372e3135352e3130342e313832222c223130372e3135352e3130382e323334222c223130372e3135352e3132352e3239222c223130372e3136312e32382e323139222c223130372e3137302e3139372e323438222c223130372e3137302e3231392e3436222c223130372e3137302e3232372e3233222c223130372e3137302e3232372e3234222c223130372e3137302e3234302e313431222c223130372e3137302e35332e313931222c223130372e3139312e34372e313331222c223130372e3139312e35372e323337222c223130382e36312e3131392e313533222c223130382e36312e3136322e323134222c223130382e36312e3230352e323031222c223130382e36312e3231322e313431222c223130382e36312e3231352e313739222c223132352e36332e34382e323339222c223132382e3139392e3232322e3635222c223133382e3139372e3133302e323332222c223133382e3139372e3133302e323335222c223133382e3139372e3134302e323433222c223133382e3230342e3137312e313336222c223133382e36382e32342e313135222c223133382e36382e32342e313336222c223133382e36382e32342e323037222c223133382e36382e32342e3630222c223133382e36382e38302e3130222c223133382e36382e38302e313733222c223133392e35392e31352e3739222c223133392e35392e3135352e3236222c223133392e35392e3139302e323431222c223133392e35392e32322e313039222c223133392e35392e32362e3835222c223133392e35392e32392e313637222c223134392e3135342e3135372e3631222c223134392e3235352e35392e313030222c223135312e3233362e31302e323338222c223135312e3233362e31382e3830222c223135312e38302e3137352e323233222c223135312e38302e3137352e323236222c223135342e3132372e36302e3233222c223135342e3132372e36302e3539222c223135382e3235352e3230382e3736222c223135392e3230332e3138322e3232222c223135392e3230332e3138322e3630222c223135392e3230332e3138362e323235222c223135392e3230332e33312e3138222c223136322e3234332e3234372e313633222c223136322e3234332e37312e3536222c223136322e3234382e39372e3732222c223136322e3235332e36342e313034222c223136322e3235332e36342e3837222c223137362e35362e3233302e313130222c223137382e36322e3130312e3537222c223137382e36322e3130342e313337222c223137382e36322e3130362e3834222c223137382e36322e3130392e37222c223137382e36322e34302e323333222c223137382e36322e34312e3434222c223137382e36322e34312e3439222c223137382e36322e34312e3532222c223137382e36322e36352e313632222c223137382e36322e37312e323237222c223137382e36322e37382e313939222c223137382e36322e38302e3933222c223137382e36322e38362e3639222c223137382e37332e3231302e3939222c223138312e34312e3230312e313137222c223138312e34312e3231342e313337222c223138352e3131322e3135372e313835222c223138352e31322e34352e3730222c223138352e34372e3132392e313638222c223138352e36302e3133352e3836222c223138382e3136362e3135382e323234222c223138382e3136362e3235332e313438222c223138382e3232362e3133392e313538222c223138382e3232362e3135382e313630222c223138382e3232362e3136392e323238222c223138382e3232362e3137312e3538222c223138382e3232362e3138342e313532222c223138382e3232362e3138352e313036222c223138382e3232362e3138362e313939222c223138382e3232362e3230332e3834222c223138382e3232362e3234372e313834222c223138382e36382e3233382e3739222c223139322e3234312e3232312e3131222c223139332e3132342e3137382e3534222c223139332e3132342e3137382e3631222c223139332e3138322e3134342e313035222c223139332e3138322e3134342e313437222c223139392e3136372e3132382e3830222c223230392e3232322e33302e323432222c223231332e3138332e35362e313037222c223231372e3134382e34332e313838222c223231372e3134382e34332e323032222c2233312e3232302e372e323337222c2233372e3135372e3234362e313436222c2233372e3233352e34382e3432222c2233372e3233352e35322e3235222c2233372e3233352e35332e323430222c2233372e3233352e35352e323035222c2233372e39372e3138382e313033222c2234352e33322e3132382e3830222c2234352e33322e3134352e3739222c2234352e33322e3135312e3231222c2234352e33322e3136302e313732222c2234352e33322e3136362e313935222c2234352e33322e3137312e3234222c2234352e33322e3139322e313938222c2234352e33322e3139352e313836222c2234352e33322e3139352e3933222c2234352e33322e3231322e3536222c2234352e33322e33362e313538222c2234352e33322e372e3232222c2234352e36332e3132312e313539222c2234352e36332e32362e3738222c2234352e36332e35312e3633222c2234352e36332e36312e323133222c2234352e36332e37362e3638222c2234352e36332e37382e3834222c2234352e36332e38362e313230222c2234352e36332e38382e323133222c2234352e37362e312e3434222c2234352e37362e3139322e3530222c2234352e37362e332e313132222c2234362e3130312e302e3234222c2234362e3130312e3131302e3332222c2234362e3130312e3131302e3433222c2234362e3130312e3131302e3435222c2234362e3130312e32302e3936222c2234362e3130312e3233382e313832222c2234362e3130312e3233382e313839222c2234362e3130312e3234302e323038222c2234362e3130312e32372e313836222c2234362e3130312e36312e3833222c2234362e3130312e37342e323531222c22352e34352e3137392e313033222c2235302e322e3133392e3136222c2238322e3232312e39352e313631222c2239312e3233362e3131362e313633225d7d2c226d616e6167657770223a7b226e223a224d616e6167655750222c2264223a66616c73652c2272223a5b2233342e3231312e3138302e3636222c2235342e37302e36352e313037222c2233342e3231302e3232342e37222c2235322e34312e352e313038222c2235322e33352e37322e313239222c2235342e3139312e3133372e3137222c2233352e3136322e3235342e323533222c2235322e31312e31322e323331222c2235322e31312e32392e3730222c2235322e31312e35342e313631222c2235322e32342e3134322e313539222c2235322e32352e3139312e323535222c2235322e32372e3138312e313236222c2235322e33342e3132362e313137222c2235322e33342e3235342e3437222c2235322e33352e38322e3939222c2235322e33362e32382e3830222c2235322e33382e3130362e3937222c2235322e33392e3137372e313532222c2235322e34312e3233302e313438222c2235322e34312e3233372e3132222c2235322e34322e3132362e313636222c2235322e34332e31332e3731222c2235322e34332e37362e323234222c2235322e38382e39362e313130222c2235322e38392e3135352e3531222c2235342e3134382e37332e313138222c2235342e3138362e33372e313035222c2235342e3138372e39322e3537222c2235342e3139312e33322e3635222c2235342e3139312e36372e3233222c2235342e3139312e38302e313139222c2235342e3139312e3133352e323039222c2235342e3139312e3133362e313736222c2235342e3139312e3134382e3835222c2235342e3139312e3134392e38222c2235322e32362e3132322e3231222c2235322e32342e3138372e3239222c2235322e38392e38352e313037222c2235342e3138362e3132382e313637222c2235342e3139312e34302e313336222c2235322e32342e36322e3131222c2235322e38382e3131392e313232222c2235342e3139312e3134382e323235222c2235342e3139312e3135312e3138222c2235322e38392e39342e313231222c2235322e32352e3131362e313136222c2235322e38382e3231352e323235222c2235342e3138362e3134332e313834222c2235322e38382e3139372e313830222c2235322e32372e3137312e313236225d7d2c2273657a6e616d223a7b226e223a2253657a6e616d2053656172636820456e67696e65222c2264223a747275652c2272223a5b2237372e37352e37342e305c2f3234222c2237372e37352e37362e305c2f3234222c2237372e37352e37372e305c2f3234222c2237372e37352e37382e305c2f3234222c2237372e37352e37392e305c2f3234222c22326130323a3539383a613a3a37383a305c2f313132222c22326130323a3539383a613a3a37393a305c2f313132222c22326130323a3539383a323a3a305c2f3936225d7d7d, 'yes'),
('whitelistHash', 0x62663364373664633035636166383632336362336665303163316663396533303865326632656133376238323639333764383530666465333631636465666434, 'yes'),
('touppPromptNeeded', 0x31, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('previousWflogsFileList', 0x5b22636f6e6669672d7472616e7369656e742e706870222c226970732e706870222c2272756c65732e706870222c2261747461636b2d646174612e706870222c222e6874616363657373222c2274656d706c6174652e706870222c22636f6e6669672d73796e6365642e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c22636f6e6669672e706870222c22636f6e6669672d6c6976657761662e706870225d, 'yes'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('encKey', 0x38653561343632386138323338346366, 'yes'),
('longEncKey', 0x61626636633538346236633764323930306538363538656164366132656531376665306265386663353830383234633465343432373136313031303636613137, 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('timeoffset_wf', 0x30, 'yes'),
('lastBlockAggregation', 0x31363133393935373433, 'yes');
INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('allowed404s6116Migration', 0x31, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('geoIPVersionHash', 0x35363965386537383062336163353462373463323936663932643864616231633635363366353661333965393963613339636539366430386164373663366437, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('waf_status', 0x6c6561726e696e672d6d6f6465, 'yes'),
('detectProxyNextCheck', 0x31363134363030353434, 'no'),
('detectProxyNonce', 0x66336363376664393137306533383138316263663133613933666462396339346637313635373330626631376162646339626563316331636136333430343337, 'no'),
('serverIP', 0x313631333939353734353b3139382e34362e38312e3530, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('activatingIP', 0x36322e34382e3137322e3938, 'yes'),
('cbl_cookieVal', 0x36303333396565316365353765, 'yes'),
('lastPermissionsTemplateCheck', 0x31363133393935373732, 'yes'),
('serverDNS', 0x313631333939353735363b3238303b3139392e3235302e3139372e32, 'yes'),
('adminNoticeQueue', 0x613a303a7b7d, 'yes'),
('wp_home_url', 0x687474703a2f2f6f6c6c6965736d6974682e6e65742f6d696775656c696e76656e746f72794e6577, 'yes'),
('wp_site_url', 0x687474703a2f2f6f6c6c6965736d6974682e6e65742f6d696775656c696e76656e746f72794e6577, 'yes'),
('lastDailyCron', 0x31363133393935373633, 'yes'),
('dbVersion', 0x31302e322e33362d4d6172696144422d6c6f67, 'yes'),
('lastDashboardCheck', 0x31363133393935373633, 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313631333939333133313b733a333a22746466223b613a333a7b733a393a22636f6d6d756e697479223b693a333532343b733a373a227072656d69756d223b693a333536383b733a393a22626c61636b6c697374223b693a33353931343b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313631333930353230303b733a313a2263223b693a363930383737363b7d693a313b613a323a7b733a313a2274223b693a313631333930383830303b733a313a2263223b693a373232373833353b7d693a323b613a323a7b733a313a2274223b693a313631333931323430303b733a313a2263223b693a373332313831353b7d693a333b613a323a7b733a313a2274223b693a313631333931363030303b733a313a2263223b693a383334393834303b7d693a343b613a323a7b733a313a2274223b693a313631333931393630303b733a313a2263223b693a393535343537383b7d693a353b613a323a7b733a313a2274223b693a313631333932333230303b733a313a2263223b693a383532313731393b7d693a363b613a323a7b733a313a2274223b693a313631333932363830303b733a313a2263223b693a363739323830353b7d693a373b613a323a7b733a313a2274223b693a313631333933303430303b733a313a2263223b693a363736313934383b7d693a383b613a323a7b733a313a2274223b693a313631333933343030303b733a313a2263223b693a373036323933333b7d693a393b613a323a7b733a313a2274223b693a313631333933373630303b733a313a2263223b693a373033333439343b7d693a31303b613a323a7b733a313a2274223b693a313631333934313230303b733a313a2263223b693a363732373732363b7d693a31313b613a323a7b733a313a2274223b693a313631333934343830303b733a313a2263223b693a363833383430363b7d693a31323b613a323a7b733a313a2274223b693a313631333934383430303b733a313a2263223b693a363737323636323b7d693a31333b613a323a7b733a313a2274223b693a313631333935323030303b733a313a2263223b693a363838313138383b7d693a31343b613a323a7b733a313a2274223b693a313631333935353630303b733a313a2263223b693a363931323237383b7d693a31353b613a323a7b733a313a2274223b693a313631333935393230303b733a313a2263223b693a383330343332333b7d693a31363b613a323a7b733a313a2274223b693a313631333936323830303b733a313a2263223b693a383937393035363b7d693a31373b613a323a7b733a313a2274223b693a313631333936363430303b733a313a2263223b693a383535373339333b7d693a31383b613a323a7b733a313a2274223b693a313631333937303030303b733a313a2263223b693a383833383934353b7d693a31393b613a323a7b733a313a2274223b693a313631333937333630303b733a313a2263223b693a373534393833313b7d693a32303b613a323a7b733a313a2274223b693a313631333937373230303b733a313a2263223b693a373530383430333b7d693a32313b613a323a7b733a313a2274223b693a313631333938303830303b733a313a2263223b693a373637303436353b7d693a32323b613a323a7b733a313a2274223b693a313631333938343430303b733a313a2263223b693a383937303731333b7d693a32333b613a323a7b733a313a2274223b693a313631333938383030303b733a313a2263223b693a383939363935363b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313631333334373230303b733a313a2263223b693a3137373533313434323b7d693a313b613a323a7b733a313a2274223b693a313631333433333630303b733a313a2263223b693a3230303536333130333b7d693a323b613a323a7b733a313a2274223b693a313631333532303030303b733a313a2263223b693a3136383230343239393b7d693a333b613a323a7b733a313a2274223b693a313631333630363430303b733a313a2263223b693a3137303331373931303b7d693a343b613a323a7b733a313a2274223b693a313631333639323830303b733a313a2263223b693a3138343531343530313b7d693a353b613a323a7b733a313a2274223b693a313631333737393230303b733a313a2263223b693a3137343037363532363b7d693a363b613a323a7b733a313a2274223b693a313631333836353630303b733a313a2263223b693a3138313437393536343b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313631313336303030303b733a313a2263223b693a3136373030313231323b7d693a313b613a323a7b733a313a2274223b693a313631313434363430303b733a313a2263223b693a3136373036323039383b7d693a323b613a323a7b733a313a2274223b693a313631313533323830303b733a313a2263223b693a3138343636303131313b7d693a333b613a323a7b733a313a2274223b693a313631313631393230303b733a313a2263223b693a3139353032383533373b7d693a343b613a323a7b733a313a2274223b693a313631313730353630303b733a313a2263223b693a3138393032303234323b7d693a353b613a323a7b733a313a2274223b693a313631313739323030303b733a313a2263223b693a3138353631333533383b7d693a363b613a323a7b733a313a2274223b693a313631313837383430303b733a313a2263223b693a3138333037343538353b7d693a373b613a323a7b733a313a2274223b693a313631313936343830303b733a313a2263223b693a3139323034373235353b7d693a383b613a323a7b733a313a2274223b693a313631323035313230303b733a313a2263223b693a3138393037303932393b7d693a393b613a323a7b733a313a2274223b693a313631323133373630303b733a313a2263223b693a3138393330333635343b7d693a31303b613a323a7b733a313a2274223b693a313631323232343030303b733a313a2263223b693a3138393030373436353b7d693a31313b613a323a7b733a313a2274223b693a313631323331303430303b733a313a2263223b693a3138393732313538363b7d693a31323b613a323a7b733a313a2274223b693a313631323339363830303b733a313a2263223b693a3139323335353736313b7d693a31333b613a323a7b733a313a2274223b693a313631323438333230303b733a313a2263223b693a3138353833323433353b7d693a31343b613a323a7b733a313a2274223b693a313631323536393630303b733a313a2263223b693a3135373739303332333b7d693a31353b613a323a7b733a313a2274223b693a313631323635363030303b733a313a2263223b693a3135353337363335323b7d693a31363b613a323a7b733a313a2274223b693a313631323734323430303b733a313a2263223b693a3139313430333930353b7d693a31373b613a323a7b733a313a2274223b693a313631323832383830303b733a313a2263223b693a3138393232313534333b7d693a31383b613a323a7b733a313a2274223b693a313631323931353230303b733a313a2263223b693a3137363232343630323b7d693a31393b613a323a7b733a313a2274223b693a313631333030313630303b733a313a2263223b693a3137313535353837343b7d693a32303b613a323a7b733a313a2274223b693a313631333038383030303b733a313a2263223b693a3136323532353538333b7d693a32313b613a323a7b733a313a2274223b693a313631333137343430303b733a313a2263223b693a3135373538393537343b7d693a32323b613a323a7b733a313a2274223b693a313631333236303830303b733a313a2263223b693a3135393739343337303b7d693a32333b613a323a7b733a313a2274223b693a313631333334373230303b733a313a2263223b693a3137373533313434323b7d693a32343b613a323a7b733a313a2274223b693a313631333433333630303b733a313a2263223b693a3230303536333130333b7d693a32353b613a323a7b733a313a2274223b693a313631333532303030303b733a313a2263223b693a3136383230343239393b7d693a32363b613a323a7b733a313a2274223b693a313631333630363430303b733a313a2263223b693a3137303331373931303b7d693a32373b613a323a7b733a313a2274223b693a313631333639323830303b733a313a2263223b693a3138343531343530313b7d693a32383b613a323a7b733a313a2274223b693a313631333737393230303b733a313a2263223b693a3137343037363532363b7d693a32393b613a323a7b733a313a2274223b693a313631333836353630303b733a313a2263223b693a3138313437393536343b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a3934383832363933383b7d693a313b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a3335333533333038383b7d693a323b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a3234393533383936363b7d693a333b613a323a7b733a323a226364223b733a323a224445223b733a323a226374223b693a3232333836383738363b7d693a343b613a323a7b733a323a226364223b733a323a224341223b733a323a226374223b693a3230383831323236393b7d693a353b613a323a7b733a323a226364223b733a323a224742223b733a323a226374223b693a3135383935343632373b7d693a363b613a323a7b733a323a226364223b733a323a225255223b733a323a226374223b693a3134393834363539333b7d693a373b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a3133363439363037363b7d693a383b613a323a7b733a323a226364223b733a323a22564e223b733a323a226374223b693a3132383137323433323b7d693a393b613a323a7b733a323a226364223b733a323a225347223b733a323a226374223b693a3132353330333635363b7d7d7d7d, 'yes'),
('tldlist', 0x7c636f6d7c6f72677c6e65747c6564757c6161617c6162627c6162637c61636f7c6164737c6165677c61666c7c6169677c616e7a7c616f6c7c6170707c6172747c6177737c6178617c6261727c6262637c6262747c6263677c62636e7c6265747c6269647c62696f7c62697a7c626d737c626d777c626f6d7c626f6f7c626f747c626f787c6275797c627a687c6361627c63616c7c63616d7c6361727c6361747c6362617c63626e7c6362737c63656f7c6366617c6366647c6370617c6372737c6373637c6461647c6461797c6464737c6465767c64686c7c6469797c646e707c646f677c646f747c6474767c6476727c6561747c65636f7c6573717c6575737c66616e7c6669747c666c797c666f6f7c666f787c66726c7c6674727c66756e7c6679697c67616c7c6761707c6761797c67646e7c6765617c676c657c676d6f7c676d787c676f6f7c676f707c676f747c676f767c68626f7c6869767c686b747c686f747c686f777c69626d7c6963657c6963757c69666d7c696e637c696e677c696e6b7c696e747c6973747c6974767c6a63627c6a696f7c6a6c6c7c6a6d707c6a6e6a7c6a6f747c6a6f797c6b66687c6b69617c6b696d7c6b706e7c6b72647c6c61747c6c61777c6c64737c6c6c637c6c6c707c6c6f6c7c6c706c7c6c74647c6d616e7c6d61707c6d62617c6d65647c6d656e7c6d696c7c6d69747c6d6c627c6d6c737c6d6d617c6d6f657c6d6f697c6d6f6d7c6d6f767c6d73647c6d746e7c6d74727c6e61627c6e62617c6e65637c6e65777c6e666c7c6e676f7c6e686b7c6e6f777c6e72617c6e72777c6e74747c6e79637c6f62697c6f66667c6f6e657c6f6e677c6f6e6c7c6f6f6f7c6f74747c6f76687c7061797c7065747c7068647c7069647c70696e7c706e637c70726f7c7072757c7075627c7077637c7176637c7265647c72656e7c72696c7c72696f7c7269707c72756e7c7277657c7361707c7361737c7362697c7362737c7363617c7363627c7365737c7365777c7365787c7366727c736b697c736b797c736f797c7370617c73726c7c7374637c7461627c7461787c7463697c74646b7c74656c7c7468647c746a787c746f707c7472767c7475697c7476737c7562737c756e6f7c756f6c7c7570737c7665747c7669677c76696e7c7669707c7765647c77696e7c776d657c776f777c7774637c7774667c78696e7c7878787c78797a7c796f757c79756e7c7a69707c61637c61647c61657c61667c61677c61697c616c7c616d7c616f7c61717c61727c61737c61747c61757c61777c61787c617a7c62617c62627c62647c62657c62667c62677c62687c62697c626a7c626d7c626e7c626f7c62727c62737c62747c62767c62777c62797c627a7c63617c63637c63647c63667c63677c63687c63697c636b7c636c7c636d7c636e7c636f7c63727c63757c63767c63777c63787c63797c637a7c64657c646a7c646b7c646d7c646f7c647a7c65637c65657c65677c65727c65737c65747c65757c66697c666a7c666b7c666d7c666f7c66727c67617c67627c67647c67657c67667c67677c67687c67697c676c7c676d7c676e7c67707c67717c67727c67737c67747c67757c67777c67797c686b7c686d7c686e7c68727c68747c68757c69647c69657c696c7c696d7c696e7c696f7c69717c69727c69737c69747c6a657c6a6d7c6a6f7c6a707c6b657c6b677c6b687c6b697c6b6d7c6b6e7c6b707c6b727c6b777c6b797c6b7a7c6c617c6c627c6c637c6c697c6c6b7c6c727c6c737c6c747c6c757c6c767c6c797c6d617c6d637c6d647c6d657c6d677c6d687c6d6b7c6d6c7c6d6d7c6d6e7c6d6f7c6d707c6d717c6d727c6d737c6d747c6d757c6d767c6d777c6d787c6d797c6d7a7c6e617c6e637c6e657c6e667c6e677c6e697c6e6c7c6e6f7c6e707c6e727c6e757c6e7a7c6f6d7c70617c70657c70667c70677c70687c706b7c706c7c706d7c706e7c70727c70737c70747c70777c70797c71617c72657c726f7c72737c72757c72777c73617c73627c73637c73647c73657c73677c73687c73697c736a7c736b7c736c7c736d7c736e7c736f7c73727c73737c73747c73757c73767c73787c73797c737a7c74637c74647c74667c74677c74687c746a7c746b7c746c7c746d7c746e7c746f7c74727c74747c74767c74777c747a7c75617c75677c756b7c75737c75797c757a7c76617c76637c76657c76677c76697c766e7c76757c77667c77737c79657c79747c7a617c7a6d7c7a777c616172707c61626c657c616461637c6165726f7c616b646e7c616c6c797c616d65787c617261627c61726d797c617270617c617274657c617364617c617369617c617564697c6175746f7c626162797c62616e647c62616e6b7c626276617c626565727c626573747c62696b657c62696e677c626c6f677c626c75657c626f66617c626f6e647c626f6174737c626e70706172696261737c626f656872696e6765727c626f6f6b7c646573697c65726e697c666167657c626c6f636b6275737465727c626f73746f6e7c64636c6b7c6661696c7c626f7574697175657c6465616c7c646965747c647661677c627261646573636f7c646174657c64656c6c7c646973687c6475636b7c66616e737c6661726d7c62726964676573746f6e657c646f63737c62726f61647761797c666173747c62726f6b65727c696362637c62726f746865727c696d64627c696e666f7c6a6176617c6a6f62737c6a7072737c6272757373656c737c696d6d6f7c62756461706573747c696565657c697461757c6a6565707c6b6977697c627567617474697c6b6464697c6b706d677c6b7265647c6c616e647c6c65676f7c6c6762747c6c69646c7c6c6966657c6c696b657c6c696d6f7c6c696e6b7c6c6976657c6c6f616e7c6e6578747c71706f6e7c726169647c726569747c72656e747c726573747c726963687c726d69747c726f6f6d7c727376707c727568727c736166657c73616c657c7361726c7c626f6f6b696e677c626f7374696b7c736176657c7361786f7c736561747c7365656b7c736578797c736861777c626f7363687c626c6f6f6d626572677c736869617c73686f707c73686f777c73696c6b7c73696e617c736974657c736b696e7c736e63667c6275696c647c62757a7a7c636166657c63616c6c7c63616d707c636172657c636172737c636173617c636173657c636173687c636272657c6365726e7c636f6f707c677567657c677572757c63686173657c636861747c636f6f6c7c646174617c666973687c686169727c686175737c63686561707c6368696e7461697c666f72647c676d62687c686466637c6f70656e7c706167657c6368726973746d61737c666c69727c666f6f647c6f6c6c6f7c6368726f6d657c6368757263687c6369707269616e697c666972657c676f6c647c636973636f7c636972636c657c636974697c636974797c636c61696d737c636c6f75647c63697479656174737c636c75627c636c65616e696e677c636c69636b7c63796f757c666961747c6669646f7c66696c6d7c667265657c66756e647c67616d657c6762697a7c67656e747c636f6465737c676765657c676966747c6369746164656c7c636f6163687c676f6c667c686f73747c63697469637c676f6f677c68656c707c686572657c686774767c687362637c6c696c6c797c6c696e64657c6e69636f7c6e696b657c6c657875737c6c697073797c706172737c706c61797c706c75737c63616e6f6e7c63617065746f776e7c63616e63657272657365617263687c63726f776e7c67616c6c75707c706f686c7c706f726e7c706f73747c63616d6572617c70726f647c70726f667c726561647c627573696e6573737c63616c76696e6b6c65696e7c63796d72757c64616275727c6275696c646572737c73636f747c6361706974616c7c6368616e6e656c7c64616e63657c6368616e656c7c6c6978696c7c63656e7465727c67616c6c6f7c636173696e6f7c6361746572696e677c636174686f6c69637c64656c74617c706363777c6361706974616c6f6e657c6361726565727c636172656572737c706963737c63617264737c6465616c737c6361726176616e7c70696e677c70696e6b7c636861726974797c736f68757c6c6567616c7c766976617c7669766f7c6163746f727c6164756c747c67756363697c67756964657c6169726275737c766f74657c766f746f7c6165746e617c6162627669657c67726f75707c6162617274687c6162626f74747c6167656e63797c67726970657c6166726963617c61697274656c7c616c697061797c76616e617c766973617c77616e677c616c736163657c616c73746f6d7c66696e616c7c61636164656d797c616d617a6f6e7c616d66616d7c61626f6761646f7c616d6963617c677265656e7c686f6d65737c686f6e64617c686f7273657c6167616b68616e7c616e64726f69647c776569727c616d7374657264616d7c67616d65737c7a6172617c7a65726f7c7a6f6e657c61627564686162697c796f67617c616363656e747572657c67696674737c67697665737c6163636f756e74616e747c616c6c73746174657c616c6c66696e616e7a7c6163636f756e74616e74737c616c69626162617c616c6661726f6d656f7c7769656e7c616972666f7263657c77696b697c6166616d696c79636f6d70616e797c77696e657c776f726b7c666f7265787c616d65726963616e657870726573737c616d65726963616e66616d696c797c676c6f626f7c676d61696c7c78626f787c666f72756d7c676c6164657c676c6173737c616e616c79746963737c616e7175616e7c6170706c657c61726368697c6175746f737c62616964757c61756374696f6e7c64726976657c6b6f656c6e7c6172616d636f7c64756261697c6174686c6574617c617564696f7c617a7572657c617574686f727c62617965726e7c62656174737c65617274687c61706172746d656e74737c736f6e677c736f6e797c6564656b617c61756469626c657c617573706f73747c6265617574797c626175686175737c626172636c6179737c626172636c6179636172647c6261736562616c6c7c6171756172656c6c657c62616e616d65787c62617263656c6f6e617c6261726761696e737c6261736b657462616c6c7c6269626c657c6268617274697c626573746275797c62696e676f7c626c61636b7c6c616d65727c617669616e63617c6b796f746f7c6173736f6369617465737c6c656173657c6174746f726e65797c6265726c696e7c62656e746c65797c62617265666f6f747c626c61636b6672696461797c656d61696c7c737461727c737572667c66656465787c686f7573657c68796174747c74616c6b7c696b616e6f7c746178697c66616974687c7465616d7c746563687c746576617c746961617c746970737c69726973687c697665636f7c746f776e7c746f79737c6570736f6e7c6a65747a747c747562657c62616e616e6172657075626c69637c636c696e69637c6c6f616e737c6e6577737c636f6f6b696e677c636f75706f6e7c6d616379737c636f666665657c73746164617c6372656469747c73746f72657c73747564797c636f72736963617c7374796c657c7375636b737c636f6e646f737c6372756973657c73776973737c636f6e746163747c74617461727c636f6d7365637c636c696e697175657c646174696e677c73706163657c6465616c65727c636f756e7472797c637269636b65747c637275697365737c73706f72747c74697265737c7469726f6c7c636f75727365737c64617473756e7c746d616c6c7c746f6461797c636f75706f6e737c746f6b796f7c746f6f6c737c746f7261797c746f74616c7c746f7572737c6465677265657c64656e74616c7c64657369676e7c656e657267797c66616d696c797c646973636f7665727c6573746174657c636c75626d65647c6469726563747c6475706f6e747c6469726563746f72797c646973636f756e747c646f63746f727c64756e6c6f707c656d6572636b7c6572696373736f6e7c696d616d61747c646f6d61696e737c64757262616e7c65746973616c61747c696e737572657c657870726573737c6661697277696e64737c696e747569747c6578706f7365647c65717569706d656e747c6b617566656e7c636f6c6c6567657c636f6d636173747c636f6d706172657c6c6174696e6f7c636f6c6f676e657c636f6d70616e797c73686172707c73686f65737c7469656e64617c64656e746973747c6c616e6369617c746a6d6178787c6469676974616c7c666572726172697c746b6d6178787c656e67696e6565727c73686f756a697c656475636174696f6e7c7368656c6c7c6b6f736865727c6661726d6572737c646f776e6c6f61647c6575726f766973696f6e7c736b7970657c736c696e677c736d6172747c6a61677561727c6a6f627572677c6a7565676f737c6b696e6465727c736d696c657c736f6c61727c6576656e74737c6578706572747c6b696e646c657c736f636365727c736f6369616c7c73747265616d7c73747564696f7c737570706c797c73757a756b697c7377617463687c7379646e65797c66617368696f6e7c7461697065697c656e67696e656572696e677c656e7465727072697365737c74656e6e69737c657874726173706163657c74616f62616f7c7461726765747c746174746f6f7c65786368616e67657c746f796f74617c6665727265726f7c666c69636b727c67656f7267657c676976696e677c676c6f62616c7c676f6f676c657c766f74696e677c77617463687c77656265727c776569626f7c6772617469737c77656263616d7c66696e616e63657c66697368696e677c6669746e6573737c666c69676874737c666c6f726973747c666c6f776572737c666f7273616c657c66726f67616e737c667574626f6c7c766f796167657c67656e74696e677c6669726d64616c657c67617264656e7c7675656c6f737c66756a697473757c666f6f646e6574776f726b7c77616c65737c67616c6c6572797c77616c7465727c676f64616464797c776f726b737c776f726c647c666565646261636b7c66756a697865726f787c6675726e69747572657c7865726f787c78696875616e7c67726f636572797c666964656c6974797c66726f6e746965727c66726f6e74646f6f727c7961636874737c7961686f6f7c79616e6465787c666f6f7462616c6c7c67726170686963737c66726573656e6975737c677261696e6765727c7a6170706f737c666f756e646174696f6e7c676f6c64706f696e747c676f6f64796561727c6879756e6461697c677561726469616e7c766f6c766f7c6865616c74687c74727573747c74756e65737c74757368757c7562616e6b7c766f646b617c66696e616e6369616c7c6865726d65737c686970686f707c686974616368697c686973616d697473757c76656761737c68656c73696e6b697c686f636b65797c6865616c7468636172657c686f74656c737c74726176656c7c6669726573746f6e657c74726164657c6875676865737c686f6c696461797c686f7374696e677c686f74656c65737c686f6c64696e67737c686f6d656465706f747c766973696f6e7c677569746172737c68616d627572677c68616e676f75747c686f746d61696c7c6864666362616e6b7c686f73706974616c7c696e66696e6974697c686f6d65676f6f64737c686f6d6573656e73657c696e737469747574657c7669616a65737c696e64757374726965737c756e69636f6d7c696d6d6f62696c69656e7c696e737572616e63657c696e7465726e6174696f6e616c7c76697267696e7c696e766573746d656e74737c69706972616e67617c736576656e7c766964656f7c76696b696e677c76696c6c61737c69736d61696c697c6c6f66747c6c6f76657c6c7464617c6c7578657c6d6169667c6c75787572797c6a6577656c72797c6d6f62697c6c6f6375737c6c6976696e677c6c6f636b65727c6d6f64617c70686f746f737c70687973696f7c7069637465747c6c696d697465647c6c696e636f6c6e7c6d61647269647c73706f747c70686f6e657c70686f746f7c6d6f62696c657c7066697a65727c6a756e697065727c636f6f6b696e676368616e6e656c7c6c6f6e646f6e7c6c6f74746f7c6d6f6e6173687c6d6f6e65797c6d6f726d6f6e7c70617274797c70697a7a617c637265646974636172647c6c6f7474657c6b69746368656e7c6d61726b65747c6c616e786573737c6c6174726f62657c6c61777965727c6c6173616c6c657c6d616e676f7c6d617474656c7c6d656469617c6d6565747c6d656d657c6c65636c6572637c63756973696e656c6c617c6d656e757c6c656672616b7c6d69616d697c6b6f6d617473757c637265646974756e696f6e7c6d6169736f6e7c6c6163616978617c6d696e697c706f6b65727c70726178697c6d616b6575707c6d696e747c70617274737c706c6163657c70726573737c7072696d657c70726f6d6f7c7175656265637c71756573747c6d61726b6574737c6d6f7274676167657c6e61747572617c636f6d6d62616e6b7c636f6d6d756e6974797c6e616d657c6e6f72746f6e7c6d6963726f736f66747c6e6f6b69617c6e697373616e7c6e69737361797c636c6f7468696e677c6d6572636b6d73647c6e696e6a617c636f6d70757465727c6e696b6f6e7c636f6e73756c74696e677c6e6f7772757a7c6d656d6f7269616c7c6e6176797c6d656c626f75726e657c6e657462616e6b7c6e6574666c69787c6d636b696e7365797c6e6574776f726b7c6d617365726174697c6d61727368616c6c737c6e6575737461727c6e657875737c6d617272696f74747c6e61676f79617c6d6974737562697368697c70617269737c636f6e74726163746f72737c6d6f73636f777c6d6f746f7c6d757365756d7c6d757475616c7c6e6578746469726563747c6f66666963657c6f73616b617c6f6c6179616e7c6d6f6e737465727c6d6f7669657c6e6f7774767c6f6d6567617c73656e65727c6f6e6c696e657c6f6e796f7572736964657c6f7261636c657c6f72616e67657c636f6e737472756374696f6e7c6f6b696e6177617c6f6c646e6176797c6f6c6179616e67726f75707c6f7473756b617c726163696e677c6e6174696f6e776964657c6f627365727665727c6d6f746f726379636c65737c6e6f7274687765737465726e6d757475616c7c6f7267616e69637c726164696f7c7269636f687c726f636865727c73616e6f66697c7068696c6970737c726f636b737c726f64656f7c726f676572737c72756762797c73616d73756e677c73616e6476696b7c77656464696e677c77686f7377686f7c77696e646f77737c77696e6e6572737c64656c69766572797c64656c6f697474657c6b657272796c6f676973746963737c70696374757265737c7361666574797c64656d6f637261747c6469616d6f6e64737c697374616e62756c7c6c616e6361737465727c73616b7572617c736161726c616e647c6b756f6b67726f75707c6c756e646265636b7c77616e67676f757c6a706d6f7267616e7c6b6572727970726f706572746965737c6c616e64726f7665727c776174636865737c73616d73636c75627c776561746865727c706861726d6163797c73616c6f6e7c6b65727279686f74656c737c6c69676874696e677c706172746e6572737c776562736974657c6c616d626f726768696e697c7279756b79757c70696f6e6565727c6c696665696e737572616e63657c72656973657c736368756c657c6f726967696e737c7265616c746f727c7265616c74797c72656861627c72656973656e7c7265766965777c726576696577737c7365617263687c726563697065737c7265706f72747c706f6c697469657c7265706169727c72656e74616c737c72656473746f6e657c726578726f74687c7363686f6f6c7c7365637572657c70726f70657274797c73656c6563747c7363686d6964747c7363687761727a7c736369656e63657c7368696b7368617c73656375726974797c73696e676c65737c796f75747562657c73636a6f686e736f6e7c79616d6178756e7c6c6966657374796c657c6d61726b6574696e677c72656c69616e63657c7866696e6974797c706c756d62696e677c73616e6476696b636f726f6d616e747c736368616566666c65727c7363686f6c617273686970737c77616c6d6172747c7a7565726963687c73657276696365737c737461706c65737c736f6674776172657c73797374656d737c726963686172646c697c706c617973746174696f6e7c7072616d65726963617c72657075626c6963616e7c72657374617572616e747c737570706f72747c737572676572797c74656d6173656b7c7368616e6772696c617c6d616e6167656d656e747c70727564656e7469616c7c726564756d6272656c6c617c73746f726167657c70726f706572746965737c70726f74656374696f6e7c73686f7070696e677c73686f7774696d657c737461746562616e6b7c746174616d6f746f72737c746563686e6f6c6f67797c70726f64756374696f6e737c70726f67726573736976657c736f667462616e6b7c746865617465727c776f6f64736964657c70616e61736f6e69637c7265616c6573746174657c746865617472657c746f73686962617c736f6c7574696f6e737c7469636b6574737c737570706c6965737c706173736167656e737c766c61616e646572656e7c786e2d2d3964627132617c786e2d2d3965743532757c786e2d2d63316176677c786e2d2d6332627237677c786e2d2d636734626b697c786e2d2d63636b326233627c786e2d2d637a72363934627c786e2d2d637a727330747c786e2d2d637a727532647c786e2d2d396b72743030617c786e2d2d643161636a33627c786e2d2d6431616c667c73707265616462657474696e677c74696666616e797c74726164696e677c73746367726f75707c76616e67756172647c766572697369676e7c786e2d2d393061657c786e2d2d703161697c73746f636b686f6c6d7c747261696e696e677c76656e74757265737c786e2d2d7178616d7c73746174656661726d7c74726176656c6572737c74726176656c6368616e6e656c7c74726176656c657273696e737572616e63657c7661636174696f6e737c776f6c746572736b6c757765727c786e2d2d63636b7763786574647c796f6b6f68616d617c766f6c6b73776167656e7c786e2d2d39306169737c786e2d2d65316134637c786e2d2d6e6f64657c786e2d2d313162346333647c786e2d2d66686265697c786e2d2d6e717637667c786e2d2d70316163667c786e2d2d327363726a39637c786e2d2d71786136617c786e2d2d317171773233617c786e2d2d74636b77657c786e2d2d31636b326531627c786e2d2d76687175767c7377696674636f7665727c756e69766572736974797c70686f746f6772617068797c766572736963686572756e677c77696c6c69616d68696c6c7c796f646f62617368697c786e2d2d3330727237797c786e2d2d3930613361637c786e2d2d336863726a39637c786e2d2d3435713131637c786e2d2d3830617377677c786e2d2d6e676272787c786e2d2d33707875386b7c786e2d2d6f33637734687c786e2d2d343562726a39637c786e2d2d3535717835647c786e2d2d35747a6d35677c786e2d2d7073737932757c786e2d2d7137636536617c786e2d2d3362737430306d7c786e2d2d34676272696d7c786e2d2d336473343433677c786e2d2d756e757034797c786e2d2d7767626831637c786e2d2d7767626c36617c786e2d2d7939613361717c786e2d2d343263326439617c786e2d2d353571773432677c786e2d2d3666727a3832677c786e2d2d3830616478686b737c786e2d2d3830616f3231617c6c706c66696e616e6369616c7c786e2d2d38306173656864627c786e2d2d656676793838687c786e2d2d346462726b3063657c786e2d2d6663743432396b7c786e2d2d6669713634627c786e2d2d6669717338737c786e2d2d6669717a39737c786e2d2d666a71373230617c786e2d2d666c77333531657c786e2d2d673278783438637c786e2d2d676563726a39637c786e2d2d676b33617431657c786e2d2d683262726a39637c786e2d2d6e7971793236617c786e2d2d6f7475373936647c786e2d2d706762733064687c786e2d2d6f6762706638666c7c786e2d2d71636b6131706d637c786e2d2d65636b7664746339647c786e2d2d71396a796234637c786e2d2d726871763936677c786e2d2d726f76753838627c786e2d2d343562723563796c7c786e2d2d667063726a396333647c786e2d2d667a633263396532637c786e2d2d733962726a39637c786e2d2d736573353534677c786e2d2d743630623536617c786e2d2d67636b72336630667c786e2d2d767571383631627c786e2d2d7734727334306c7c786e2d2d786871353231627c786e2d2d33653062373037657c786e2d2d38793061303633617c786e2d2d7a6672313634627c786e2d2d683262726a396338637c786e2d2d383061716563647231617c786e2d2d6a31616d687c776561746865726368616e6e656c7c786e2d2d6b70757433697c786e2d2d353462376674613063637c786e2d2d6b7072793537647c786e2d2d3671713938366233786c7c786e2d2d623477363035666572647c786e2d2d6a76723138396d7c786e2d2d6b7072773133647c786e2d2d666971323238633568737c786e2d2d683262726567336576657c786e2d2d687874383134657c786e2d2d6a3677313933677c786e2d2d6a6c713438306e3272677c786e2d2d6a6c71363175397737627c786e2d2d69316236623161366132657c786e2d2d6a316165667c786e2d2d696f306137697c786e2d2d696d723531336e7c786e2d2d6c6762626174316164386a7c786e2d2d667a7973386436397576676d7c786e2d2d336f713138766c38706e3336617c786e2d2d35737533346a393336626773677c786e2d2d636c636863306561306232673261396763647c786e2d2d6b637278373764317834617c786e2d2d62636b316239613564726534637c786e2d2d6c316163637c786e2d2d6d676239617762667c786e2d2d6d676261336134663136617c786e2d2d6d676261623262647c786e2d2d6d787471316d7c786e2d2d6d6762626831617c786e2d2d6d6762747832627c786e2d2d6d6978383931667c786e2d2d6d676267753832617c786e2d2d6d6762706c3266687c786e2d2d6d676274336468647c786e2d2d6d6b3162753434637c786e2d2d6d676261336133656a747c786e2d2d6d676261616d376138687c786e2d2d6d67626168316133686a6b72647c786e2d2d6d6762616939617a677170366a7c786e2d2d6d6762617968376770617c786e2d2d6d676261616b63376476667c786e2d2d6d67626370713667706131617c786e2d2d6e67626335617a647c786e2d2d6d6762783463643061627c786e2d2d6d67626137633062626e30617c786e2d2d6d6762693465636578707c786e2d2d6d6762657270346135643461727c786e2d2d6e676265396530617c786e2d2d6d6762626831613731657c786e2d2d6d6762636137647a646f7c786e2d2d6d676263306139617a63677c786e2d2d727663316530616d33657c786e2d2d74697134397871796a7c786e2d2d6e71763766733030656d617c786e2d2d786b6332616c3368796532617c786e2d2d7665726d67656e73626572617465722d6374627c786e2d2d7966726f346936376f7c786e2d2d7665726d67656e736265726174756e672d7077627c786e2d2d7967626932616d6d787c786e2d2d7734723835656c3866687535646e72617c786e2d2d786b6332646c336135656530687c, 'yes'),
('tldlistHash', 0x38343263613938356663366363373362623238323664643039313864666365616336616562363064643538303565653765313966393130633462666236333337, 'yes'),
('noc1ScanSchedule', 0x613a323a7b693a303b693a313631343230313030303b693a313b693a313631343436303230303b7d, 'yes'),
('adminUserList', 0x623a303b, 'yes'),
('showWfCentralUI', 0x31, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2230383361323736663664376430306461363530633462373730663733636337653031623964323536313130323665666261663563653536656236636666376165223b7d, 'no'),
('vulnerabilities_plugin', 0x613a31373a7b693a303b613a353a7b733a343a22736c7567223b733a373a22616b69736d6574223b733a393a22746f56657273696f6e223b733a353a22342e312e38223b733a31313a2266726f6d56657273696f6e223b733a353a22342e312e37223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a313b613a353a7b733a343a22736c7567223b733a31383a226164642d7365617263682d746f2d6d656e75223b733a393a22746f56657273696f6e223b733a363a22342e352e3131223b733a31313a2266726f6d56657273696f6e223b733a363a22342e352e3130223b733a31303a2276756c6e657261626c65223b623a313b733a343a226c696e6b223b733a37333a2268747470733a2f2f777076756c6e64622e636f6d2f76756c6e65726162696c69746965732f37373934623732312d626264352d343366362d623361662d623836343236623335396132223b7d693a323b613a353a7b733a343a22736c7567223b733a31333a227072696e74667269656e646c79223b733a393a22746f56657273696f6e223b733a353a22342e302e31223b733a31313a2266726f6d56657273696f6e223b733a363a22332e31352e30223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a333b613a353a7b733a343a22736c7567223b733a31333a2277702d6d6967726174652d6462223b733a393a22746f56657273696f6e223b733a363a22312e302e3137223b733a31313a2266726f6d56657273696f6e223b733a363a22312e302e3136223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a343b613a353a7b733a343a22736c7567223b733a32363a22616476616e6365642d637573746f6d2d6669656c64732d70726f223b733a393a22746f56657273696f6e223b733a353a22352e392e35223b733a31313a2266726f6d56657273696f6e223b733a353a22352e392e33223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a353b613a343a7b733a343a22736c7567223b733a31353a226164642d66726f6d2d736572766572223b733a31313a2266726f6d56657273696f6e223b733a353a22332e342e35223b733a31303a2276756c6e657261626c65223b623a313b733a343a226c696e6b223b733a37333a2268747470733a2f2f777076756c6e64622e636f6d2f76756c6e65726162696c69746965732f31376431663139622d613535302d346562612d393462652d393432613936613064366338223b7d693a363b613a343a7b733a343a22736c7567223b733a31393a22616c6c2d696e2d6f6e652d696e7472616e6574223b733a31313a2266726f6d56657273696f6e223b733a333a22312e37223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a373b613a343a7b733a343a22736c7567223b733a32343a2263617465676f72792d696d706f72742d72656c6f61646564223b733a31313a2266726f6d56657273696f6e223b733a353a22312e312e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a383b613a343a7b733a343a22736c7567223b733a31343a22636c61737369632d656469746f72223b733a31313a2266726f6d56657273696f6e223b733a333a22312e36223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a393b613a343a7b733a343a22736c7567223b733a31343a226475706c69636174652d70616765223b733a31313a2266726f6d56657273696f6e223b733a333a22342e33223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31303b613a343a7b733a343a22736c7567223b733a31313a2268656c6c6f2d646f6c6c79223b733a31313a2266726f6d56657273696f6e223b733a353a22312e372e32223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31313b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a363a22372e342e3134223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31323b613a343a7b733a343a22736c7567223b733a31333a2277702d616c6c2d696d706f7274223b733a31313a2266726f6d56657273696f6e223b733a353a22332e352e36223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31333b613a343a7b733a343a22736c7567223b733a32343a22616d617a6f6e2d73332d616e642d636c6f756466726f6e74223b733a31313a2266726f6d56657273696f6e223b733a353a22322e352e32223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31343b613a343a7b733a343a22736c7567223b733a31353a22777061692d6163662d6164642d6f6e223b733a31313a2266726f6d56657273696f6e223b733a353a22332e332e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31353b613a343a7b733a343a22736c7567223b733a31373a2277702d616c6c2d696d706f72742d70726f223b733a31313a2266726f6d56657273696f6e223b733a353a22342e362e35223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a31363b613a343a7b733a343a22736c7567223b733a31373a2277702d6d6967726174652d64622d70726f223b733a31313a2266726f6d56657273696f6e223b733a363a22312e392e3134223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d7d, 'yes'),
('lastNotificationID', 0x32, 'no'),
('totalScansRun', 0x31, 'yes'),
('wfKillRequested', 0x30, 'no'),
('currentCronKey', '', 'yes'),
('wf_scanLastStatusTime', 0x30, 'yes'),
('wf_scanRunning', '', 'yes'),
('wordpressVersion', 0x352e352e33, 'yes'),
('wordpressPluginVersions', 0x613a31373a7b733a31353a226164642d66726f6d2d736572766572223b733a353a22332e342e35223b733a32363a22616476616e6365642d637573746f6d2d6669656c64732d70726f223b733a353a22352e392e33223b733a373a22616b69736d6574223b733a353a22342e312e37223b733a31393a22616c6c2d696e2d6f6e652d696e7472616e6574223b733a333a22312e37223b733a32343a2263617465676f72792d696d706f72742d72656c6f61646564223b733a353a22312e312e31223b733a31343a22636c61737369632d656469746f72223b733a333a22312e36223b733a31343a226475706c69636174652d70616765223b733a333a22342e33223b733a353a2268656c6c6f223b733a353a22312e372e32223b733a31383a226164642d7365617263682d746f2d6d656e75223b733a363a22342e352e3130223b733a31333a227072696e74667269656e646c79223b733a363a22332e31352e30223b733a393a22776f726466656e6365223b733a363a22372e342e3134223b733a31333a2277702d616c6c2d696d706f7274223b733a353a22332e352e36223b733a31353a22777061692d6163662d6164642d6f6e223b733a353a22332e332e31223b733a31373a2277702d616c6c2d696d706f72742d70726f223b733a353a22342e362e35223b733a31333a2277702d6d6967726174652d6462223b733a363a22312e302e3136223b733a31373a2277702d6d6967726174652d64622d70726f223b733a363a22312e392e3134223b733a32343a22616d617a6f6e2d73332d616e642d636c6f756466726f6e74223b733a353a22322e352e32223b7d, 'yes'),
('wordpressThemeVersions', 0x613a323a7b733a31353a224d696775656c496e76656e746f7279223b733a353a22322e302e36223b733a31323a227477656e74797477656e7479223b733a333a22312e36223b7d, 'yes'),
('wfPeakMemory', 0x3630383137343038, 'no'),
('wfScanStartVersion', 0x352e352e33, 'yes'),
('lowResourceScanWaitStep', '', 'yes'),
('wfStatusStartMsgs', 0x613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d, 'yes'),
('wf_summaryItems', 0x613a383a7b733a31323a227363616e6e6564506f737473223b693a303b733a31353a227363616e6e6564436f6d6d656e7473223b693a303b733a31323a227363616e6e656446696c6573223b693a303b733a31343a227363616e6e6564506c7567696e73223b693a303b733a31333a227363616e6e65645468656d6573223b693a303b733a31323a227363616e6e65645573657273223b693a303b733a31313a227363616e6e656455524c73223b693a303b733a31303a226c617374557064617465223b693a313631333939353737333b7d, 'yes'),
('lastScanCompleted', 0x6f6b, 'yes'),
('lastScanFailureType', '', 'yes'),
('scanTime', 0x313631333939353737332e36333639, 'yes'),
('totalLoginHits', 0x34, 'yes'),
('totalAlertsSent', 0x33, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfhits`
--

INSERT INTO `wp_wfhits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1613997575.313640, 0x00000000000000000000ffff55f6985d, 0, 200, 0, 1, 0, 'http://olliesmith.net/miguelinventoryNew/wp-login.php', 'http://olliesmith.net/miguelinventoryNew/wp-login.php?redirect_to=http%3A%2F%2Folliesmith.net%2FmiguelinventoryNew%2Fwp-admin%2Fplugins.php&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0', 'loginFailValidUsername', NULL, NULL),
(2, 0.000000, 1613997599.795696, 0x00000000000000000000ffff55f6985d, 0, 200, 0, 1, 0, 'http://olliesmith.net/miguelinventoryNew/wp-login.php', 'http://olliesmith.net/miguelinventoryNew/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0', 'loginFailValidUsername', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfissues`
--

INSERT INTO `wp_wfissues` (`id`, `time`, `lastUpdated`, `status`, `type`, `severity`, `ignoreP`, `ignoreC`, `shortMsg`, `longMsg`, `data`) VALUES
(1, 1613995773, 1613995773, 'new', 'wfUpgrade', 75, '2a3d47dfa01d91e92b0978365d264c7d', '2a3d47dfa01d91e92b0978365d264c7d', 'Your WordPress version is out of date', 'WordPress version 5.6.1 is now available. Please upgrade immediately to get the latest security updates from WordPress.', 'a:2:{s:14:\"currentVersion\";s:5:\"5.5.3\";s:10:\"newVersion\";s:5:\"5.6.1\";}'),
(2, 1613995773, 1613995773, 'new', 'wfPluginUpgrade', 50, 'c4e4fceb1a14905879e02342f04fd054', 'c4e4fceb1a14905879e02342f04fd054', 'The Plugin \"Akismet Anti-Spam\" needs an upgrade (4.1.7 -> 4.1.8).', 'You need to upgrade \"Akismet Anti-Spam\" to the newest version to ensure you have any security fixes the developer has released.', 'a:18:{s:4:\"Name\";s:17:\"Akismet Anti-Spam\";s:9:\"PluginURI\";s:20:\"https://akismet.com/\";s:7:\"Version\";s:5:\"4.1.7\";s:11:\"Description\";s:363:\"Used by millions, Akismet is quite possibly the best way in the world to <strong>protect your blog from spam</strong>. It keeps your site protected even while you sleep. To get started: activate the Akismet plugin and then go to your Akismet Settings page to set up your API key. <cite>By <a href=\"https://automattic.com/wordpress-plugins/\">Automattic</a>.</cite>\";s:6:\"Author\";s:66:\"<a href=\"https://automattic.com/wordpress-plugins/\">Automattic</a>\";s:9:\"AuthorURI\";s:41:\"https://automattic.com/wordpress-plugins/\";s:10:\"TextDomain\";s:7:\"akismet\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:52:\"<a href=\"https://akismet.com/\">Akismet Anti-Spam</a>\";s:10:\"AuthorName\";s:10:\"Automattic\";s:10:\"pluginFile\";s:83:\"/home/ollies6/public_html/miguelinventoryNew/wp-content/plugins/akismet/akismet.php\";s:10:\"newVersion\";s:5:\"4.1.8\";s:4:\"slug\";s:7:\"akismet\";s:5:\"wpURL\";s:37:\"https://wordpress.org/plugins/akismet\";s:10:\"vulnerable\";b:0;}'),
(3, 1613995773, 1613995773, 'new', 'wfPluginUpgrade', 100, 'd1837c9a844499265ea33bd80e973ce4', 'd1837c9a844499265ea33bd80e973ce4', 'The Plugin \"Ivory Search\" needs an upgrade (4.5.10 -> 4.5.11).', 'You need to upgrade \"Ivory Search\" to the newest version to ensure you have any security fixes the developer has released.', 'a:19:{s:4:\"Name\";s:12:\"Ivory Search\";s:9:\"PluginURI\";s:23:\"https://ivorysearch.com\";s:7:\"Version\";s:6:\"4.5.10\";s:11:\"Description\";s:225:\"The WordPress Search plugin that includes Search Form Customizer, WooCommerce Search, Image Search, Search Shortcode, AJAX Search &amp; Live Search support! <cite>By <a href=\"https://ivorysearch.com/\">Ivory Search</a>.</cite>\";s:6:\"Author\";s:51:\"<a href=\"https://ivorysearch.com/\">Ivory Search</a>\";s:9:\"AuthorURI\";s:24:\"https://ivorysearch.com/\";s:10:\"TextDomain\";s:18:\"add-search-to-menu\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:50:\"<a href=\"https://ivorysearch.com\">Ivory Search</a>\";s:10:\"AuthorName\";s:12:\"Ivory Search\";s:10:\"pluginFile\";s:105:\"/home/ollies6/public_html/miguelinventoryNew/wp-content/plugins/add-search-to-menu/add-search-to-menu.php\";s:10:\"newVersion\";s:6:\"4.5.11\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:5:\"wpURL\";s:48:\"https://wordpress.org/plugins/add-search-to-menu\";s:10:\"vulnerable\";b:1;s:17:\"vulnerabilityLink\";s:73:\"https://wpvulndb.com/vulnerabilities/7794b721-bbd5-43f6-b3af-b86426b359a2\";}'),
(4, 1613995773, 1613995773, 'new', 'wfPluginUpgrade', 50, '4bc8b87de03ea727b1c0bbb3127c6006', '4bc8b87de03ea727b1c0bbb3127c6006', 'The Plugin \"Print, PDF &amp; Email by PrintFriendly\" needs an upgrade (3.15.0 -> 4.0.1).', 'You need to upgrade \"Print, PDF &amp; Email by PrintFriendly\" to the newest version to ensure you have any security fixes the developer has released.', 'a:18:{s:4:\"Name\";s:39:\"Print, PDF &amp; Email by PrintFriendly\";s:9:\"PluginURI\";s:28:\"http://www.printfriendly.com\";s:7:\"Version\";s:6:\"3.15.0\";s:11:\"Description\";s:207:\"PrintFriendly &amp; PDF button for your website. Optimizes your pages and brand for print, pdf, and email. <cite>By <a href=\"http://www.PrintFriendly.com\">Print, PDF, &amp; Email by PrintFriendly</a>.</cite>\";s:6:\"Author\";s:83:\"<a href=\"http://www.PrintFriendly.com\">Print, PDF, &amp; Email by PrintFriendly</a>\";s:9:\"AuthorURI\";s:28:\"http://www.PrintFriendly.com\";s:10:\"TextDomain\";s:13:\"printfriendly\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:82:\"<a href=\"http://www.printfriendly.com\">Print, PDF &amp; Email by PrintFriendly</a>\";s:10:\"AuthorName\";s:40:\"Print, PDF, &amp; Email by PrintFriendly\";s:10:\"pluginFile\";s:84:\"/home/ollies6/public_html/miguelinventoryNew/wp-content/plugins/printfriendly/pf.php\";s:10:\"newVersion\";s:5:\"4.0.1\";s:4:\"slug\";s:13:\"printfriendly\";s:5:\"wpURL\";s:43:\"https://wordpress.org/plugins/printfriendly\";s:10:\"vulnerable\";b:0;}'),
(5, 1613995773, 1613995773, 'new', 'wfPluginUpgrade', 50, 'c041b0d1b9cdb77add74ea36450434c2', 'c041b0d1b9cdb77add74ea36450434c2', 'The Plugin \"WP Migrate DB\" needs an upgrade (1.0.16 -> 1.0.17).', 'You need to upgrade \"WP Migrate DB\" to the newest version to ensure you have any security fixes the developer has released.', 'a:18:{s:4:\"Name\";s:13:\"WP Migrate DB\";s:9:\"PluginURI\";s:50:\"https://en-gb.wordpress.org/plugins/wp-migrate-db/\";s:7:\"Version\";s:6:\"1.0.16\";s:11:\"Description\";s:235:\"Exports your database as a MySQL data dump (much like phpMyAdmin), does a find and replace on URLs and file paths, then allows you to save it to your computer. <cite>By <a href=\"https://deliciousbrains.com\">Delicious Brains</a>.</cite>\";s:6:\"Author\";s:58:\"<a href=\"https://deliciousbrains.com\">Delicious Brains</a>\";s:9:\"AuthorURI\";s:27:\"https://deliciousbrains.com\";s:10:\"TextDomain\";s:13:\"wp-migrate-db\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:1;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:78:\"<a href=\"https://en-gb.wordpress.org/plugins/wp-migrate-db/\">WP Migrate DB</a>\";s:10:\"AuthorName\";s:16:\"Delicious Brains\";s:10:\"pluginFile\";s:95:\"/home/ollies6/public_html/miguelinventoryNew/wp-content/plugins/wp-migrate-db/wp-migrate-db.php\";s:10:\"newVersion\";s:6:\"1.0.17\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:5:\"wpURL\";s:43:\"https://wordpress.org/plugins/wp-migrate-db\";s:10:\"vulnerable\";b:0;}'),
(6, 1613995773, 1613995773, 'new', 'wfPluginUpgrade', 50, 'e3b9eb7aaa91efb6cdfb6b30be4ef040', 'e3b9eb7aaa91efb6cdfb6b30be4ef040', 'The Plugin \"Advanced Custom Fields PRO\" needs an upgrade (5.9.3 -> 5.9.5).', 'You need to upgrade \"Advanced Custom Fields PRO\" to the newest version to ensure you have any security fixes the developer has released.', 'a:18:{s:4:\"Name\";s:26:\"Advanced Custom Fields PRO\";s:9:\"PluginURI\";s:36:\"https://www.advancedcustomfields.com\";s:7:\"Version\";s:5:\"5.9.3\";s:11:\"Description\";s:151:\"Customize WordPress with powerful, professional and intuitive fields. <cite>By <a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>.</cite>\";s:6:\"Author\";s:64:\"<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>\";s:9:\"AuthorURI\";s:36:\"https://www.advancedcustomfields.com\";s:10:\"TextDomain\";s:3:\"acf\";s:10:\"DomainPath\";s:5:\"/lang\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:77:\"<a href=\"https://www.advancedcustomfields.com\">Advanced Custom Fields PRO</a>\";s:10:\"AuthorName\";s:13:\"Elliot Condon\";s:10:\"pluginFile\";s:98:\"/home/ollies6/public_html/miguelinventoryNew/wp-content/plugins/advanced-custom-fields-pro/acf.php\";s:10:\"newVersion\";s:5:\"5.9.5\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:5:\"wpURL\";s:36:\"https://www.advancedcustomfields.com\";s:10:\"vulnerable\";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wflogins`
--

INSERT INTO `wp_wflogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, 1613997576.418981, 1, 'loginFailValidUsername', 'Ollie', 1, 0x00000000000000000000ffff55f6985d, 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0'),
(2, 2, 1613997600.355176, 1, 'loginFailValidUsername', 'Ollie', 1, 0x00000000000000000000ffff55f6985d, 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('allow-xml-rpc', 0x31, 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('enable-auth-captcha', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31363133393935373432, 'yes'),
('ntp-offset', 0x302e3230393835323639353436353039, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('shared-hash-secret', 0x34656266393461643663396636316564383366396331646238386265346134366437643239373131643364386264623837643630393835333830313239313762, 'yes'),
('shared-symmetric-secret', 0x32303338633263613832313834653239613561366361393365623661393538663037643761643064396333313334383165346231643633633064353731383264, 'yes'),
('use-ntp', '', 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfnotifications`
--

INSERT INTO `wp_wfnotifications` (`id`, `new`, `category`, `priority`, `ctime`, `html`, `links`) VALUES
('site-AEAAAAA', 1, 'wfplugin_updates', 502, 1613995764, '<a href=\"http://olliesmith.net/miguelinventoryNew/wp-admin/update-core.php\">Updates are available for WordPress (v5.6.1) and 5 plugins</a>', '[]'),
('site-AIAAAAA', 1, 'wfplugin_scan', 502, 1613995773, '<a href=\"http://olliesmith.net/miguelinventoryNew/wp-admin/admin.php?page=WordfenceScan\">6 issues found in most recent scan</a>', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfstatus`
--

INSERT INTO `wp_wfstatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1613995773.513282, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(2, 1613995773.521443, 1, 'info', 'Initiating quick scan'),
(3, 1613995773.524678, 10, 'info', 'SUM_START:Checking Web Application Firewall status'),
(4, 1613995773.524997, 10, 'info', 'SUM_ENDOK:Checking Web Application Firewall status'),
(5, 1613995773.528347, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(6, 1613995773.633207, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(7, 1613995773.635616, 1, 'info', '-------------------'),
(8, 1613995773.636139, 2, 'info', 'Wordfence used 0 B of memory for scan. Server peak memory usage was: 58 MB'),
(9, 1613995773.636292, 1, 'info', 'Quick Scan Complete. Scanned in less than 1 second.'),
(10, 1613995773.636420, 10, 'info', 'SUM_FINAL:Scan complete. You have 6 new issues to fix. See below.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wftrafficrates`
--

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_as3cf_items`
--
ALTER TABLE `wp_as3cf_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_source` (`source_type`,`source_id`),
  ADD UNIQUE KEY `uidx_is_verified_originator` (`is_verified`,`originator`,`id`),
  ADD UNIQUE KEY `uidx_path` (`path`(190),`id`),
  ADD UNIQUE KEY `uidx_original_path` (`original_path`(190),`id`),
  ADD UNIQUE KEY `uidx_source_path` (`source_path`(190),`id`),
  ADD UNIQUE KEY `uidx_original_source_path` (`original_source_path`(190),`id`),
  ADD UNIQUE KEY `uidx_provider_bucket` (`provider`,`bucket`(190),`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_pmxi_files`
--
ALTER TABLE `wp_pmxi_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_hash`
--
ALTER TABLE `wp_pmxi_hash`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `wp_pmxi_history`
--
ALTER TABLE `wp_pmxi_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_images`
--
ALTER TABLE `wp_pmxi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_imports`
--
ALTER TABLE `wp_pmxi_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_posts`
--
ALTER TABLE `wp_pmxi_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_templates`
--
ALTER TABLE `wp_pmxi_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indexes for table `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wftrafficrates`
--
ALTER TABLE `wp_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_as3cf_items`
--
ALTER TABLE `wp_as3cf_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT for table `wp_pmxi_files`
--
ALTER TABLE `wp_pmxi_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pmxi_history`
--
ALTER TABLE `wp_pmxi_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pmxi_images`
--
ALTER TABLE `wp_pmxi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_pmxi_imports`
--
ALTER TABLE `wp_pmxi_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pmxi_posts`
--
ALTER TABLE `wp_pmxi_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pmxi_templates`
--
ALTER TABLE `wp_pmxi_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
