-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2017 a las 23:13:31
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `distribuidora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dcommentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dcommentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dcomments`
--

CREATE TABLE IF NOT EXISTS `wp_dcomments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `wp_dcomments`
--

INSERT INTO `wp_dcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-20 13:34:26', '2017-05-20 19:34:26', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de las personas que hacen provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 115, 'WooCommerce', '', '', '', '2017-05-22 15:36:57', '2017-05-22 21:36:57', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(3, 116, 'WooCommerce', '', '', '', '2017-05-22 15:36:58', '2017-05-22 21:36:58', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(4, 117, 'WooCommerce', '', '', '', '2017-05-22 15:41:27', '2017-05-22 21:41:27', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 117, 'WooCommerce', '', '', '', '2017-05-22 15:41:27', '2017-05-22 21:41:27', 'Mouse Inalambrico (#84) stock reduced from 15 to 13.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 118, 'WooCommerce', '', '', '', '2017-05-22 05:11:18', '2017-05-22 11:11:18', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 118, 'WooCommerce', '', '', '', '2017-05-22 05:11:19', '2017-05-22 11:11:19', 'Power Rangers (#28) stock reduced from 20 to 19.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 119, 'WooCommerce', '', '', '', '2017-05-22 05:45:38', '2017-05-22 11:45:38', 'Order cancelled by customer. Order status changed from Pending payment to Cancelled.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(9, 117, 'Beatriz villamizar', 'bvillamizarespitia@gmail.com', '', '', '2017-05-22 06:15:54', '2017-05-22 12:15:54', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 124, 'WooCommerce', '', '', '', '2017-05-22 07:36:17', '2017-05-22 13:36:17', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(11, 124, 'WooCommerce', '', '', '', '2017-05-22 07:36:18', '2017-05-22 13:36:18', 'Power Rangers (#28) stock reduced from 19 to 18.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(12, 118, 'Beatriz villamizar', 'bvillamizarespitia@gmail.com', '', '', '2017-05-22 07:38:15', '2017-05-22 13:38:15', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 118, 'WooCommerce', '', '', '', '2017-05-22 07:39:26', '2017-05-22 13:39:26', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 117, 'Beatriz villamizar', 'bvillamizarespitia@gmail.com', '', '', '2017-05-22 07:40:57', '2017-05-22 13:40:57', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 127, 'WooCommerce', '', '', '', '2017-05-23 15:51:34', '2017-05-23 21:51:34', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 127, 'WooCommerce', '', '', '', '2017-05-23 15:51:34', '2017-05-23 21:51:34', 'Tinte para cabello (#82) stock reduced from 100 to 99.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 146, 'WooCommerce', '', '', '', '2017-05-25 10:38:28', '2017-05-25 16:38:28', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 146, 'WooCommerce', '', '', '', '2017-05-25 10:38:29', '2017-05-25 16:38:29', 'Fragancia Carolina Herrera (#31) stock reduced from 200 to 199.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(19, 147, 'WooCommerce', '', '', '', '2017-05-25 10:56:17', '2017-05-25 16:56:17', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(20, 147, 'WooCommerce', '', '', '', '2017-05-25 10:56:18', '2017-05-25 16:56:18', 'Plancha para cabello (#143) stock reduced from 150 to 149.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(21, 148, 'WooCommerce', '', '', '', '2017-05-26 14:23:39', '2017-05-26 20:23:39', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 148, 'WooCommerce', '', '', '', '2017-05-26 14:23:40', '2017-05-26 20:23:40', 'Plancha para cabello (#143) stock reduced from 149 to 148.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 148, 'WooCommerce', '', '', '', '2017-05-26 14:23:40', '2017-05-26 20:23:40', 'Power Rangers (#28) stock reduced from 18 to 17.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(24, 149, 'WooCommerce', '', '', '', '2017-05-26 14:37:43', '2017-05-26 20:37:43', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 149, 'WooCommerce', '', '', '', '2017-05-26 14:37:44', '2017-05-26 20:37:44', 'Secadora (#140) stock reduced from 20 to 19.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 150, 'WooCommerce', '', '', '', '2017-05-26 14:48:18', '2017-05-26 20:48:18', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 150, 'WooCommerce', '', '', '', '2017-05-26 14:48:19', '2017-05-26 20:48:19', 'Secadora (#140) stock reduced from 19 to 18.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 151, 'WooCommerce', '', '', '', '2017-05-26 14:54:14', '2017-05-26 20:54:14', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 151, 'WooCommerce', '', '', '', '2017-05-26 14:54:15', '2017-05-26 20:54:15', 'Power Rangers (#28) stock reduced from 17 to 16.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(30, 151, 'WooCommerce', '', '', '', '2017-05-26 14:54:15', '2017-05-26 20:54:15', 'Secadora (#140) stock reduced from 18 to 17.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(31, 152, 'WooCommerce', '', '', '', '2017-05-26 14:56:35', '2017-05-26 20:56:35', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(32, 152, 'WooCommerce', '', '', '', '2017-05-26 14:56:36', '2017-05-26 20:56:36', 'botox (#145) stock reduced from 48 to 47.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(33, 153, 'WooCommerce', '', '', '', '2017-05-26 15:10:21', '2017-05-26 21:10:21', 'Awaiting BACS payment Order status changed from Pendiente por pago to En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(34, 153, 'WooCommerce', '', '', '', '2017-05-26 15:10:22', '2017-05-26 21:10:22', 'Secadora (#140) stock reduced from 17 to 16.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dlinks`
--

CREATE TABLE IF NOT EXISTS `wp_dlinks` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_doptions`
--

CREATE TABLE IF NOT EXISTS `wp_doptions` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1288 ;

--
-- Volcado de datos para la tabla `wp_doptions`
--

INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/distribuidora', 'yes'),
(2, 'home', 'http://localhost/distribuidora', 'yes'),
(3, 'blogname', 'Distribuidora Sia', 'yes'),
(4, 'blogdescription', 'Juguetes Cosmeticos Perfumeria', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bvillamizarespitia@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:173:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:47:"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$";s:76:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]";s:30:"(([^/]+/)*wishlist)(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]";s:9:"tienda/?$";s:27:"index.php?post_type=product";s:39:"tienda/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"tienda/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:26:"tienda/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:30:"(.?.+?)/wc-products(/(.*))?/?$";s:54:"index.php?pagename=$matches[1]&wc-products=$matches[3]";s:32:"(.?.+?)/wcfm-products(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&wcfm-products=$matches[3]";s:39:"(.?.+?)/wcfm-products-manage(/(.*))?/?$";s:63:"index.php?pagename=$matches[1]&wcfm-products-manage=$matches[3]";s:31:"(.?.+?)/wcfm-coupons(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&wcfm-coupons=$matches[3]";s:38:"(.?.+?)/wcfm-coupons-manage(/(.*))?/?$";s:62:"index.php?pagename=$matches[1]&wcfm-coupons-manage=$matches[3]";s:30:"(.?.+?)/wcfm-orders(/(.*))?/?$";s:54:"index.php?pagename=$matches[1]&wcfm-orders=$matches[3]";s:38:"(.?.+?)/wcfm-orders-details(/(.*))?/?$";s:62:"index.php?pagename=$matches[1]&wcfm-orders-details=$matches[3]";s:32:"(.?.+?)/wcfm-bookings(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&wcfm-bookings=$matches[3]";s:40:"(.?.+?)/wcfm-bookings-details(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&wcfm-bookings-details=$matches[3]";s:45:"(.?.+?)/wcfm-reports-sales-by-date(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&wcfm-reports-sales-by-date=$matches[3]";s:44:"(.?.+?)/wcfm-reports-out-of-stock(/(.*))?/?$";s:68:"index.php?pagename=$matches[1]&wcfm-reports-out-of-stock=$matches[3]";s:48:"(.?.+?)/wcfm-reports-sales-by-product(/(.*))?/?$";s:72:"index.php?pagename=$matches[1]&wcfm-reports-sales-by-product=$matches[3]";s:47:"(.?.+?)/wcfm-reports-coupons-by-date(/(.*))?/?$";s:71:"index.php?pagename=$matches[1]&wcfm-reports-coupons-by-date=$matches[3]";s:44:"(.?.+?)/wcfm-reports-low-in-stock(/(.*))?/?$";s:68:"index.php?pagename=$matches[1]&wcfm-reports-low-in-stock=$matches[3]";s:32:"(.?.+?)/wcfm-settings(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&wcfm-settings=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:15:{i:0;s:13:"cmb2/init.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:15:"kirki/kirki.php";i:3;s:23:"loco-translate/loco.php";i:4;s:43:"wc-frontend-manager/wc_frontend_manager.php";i:5;s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";i:6;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:7;s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:8;s:49:"woocommerce-shortcodes/woocommerce-shortcodes.php";i:9;s:55:"woocommerce-stock-manager/woocommerce-stock-manager.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:44:"yith-woocommerce-additional-uploads/init.php";i:12;s:41:"yith-woocommerce-ajax-navigation/init.php";i:13;s:40:"yith-woocommerce-order-tracking/init.php";i:14;s:34:"yith-woocommerce-wishlist/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:98:"C:\\xampp\\htdocs\\distribuidora/wp-content/plugins/woocommerce-shortcodes/woocommerce-shortcodes.php";i:1;s:133:"C:\\xampp\\htdocs\\distribuidora/wp-content/plugins/woocommerce-frontend-shop-manager-free-version/woocommerce-frontend-shop-manager.php";i:2;s:105:"C:\\xampp\\htdocs\\distribuidora/wp-content/plugins/woo-checkout-field-editor-pro/checkout-form-designer.php";i:3;s:114:"C:\\xampp\\htdocs\\distribuidora/wp-content/plugins/woocommerce-accepted-payment-methods/accepted-payment-methods.php";i:4;s:90:"C:\\xampp\\htdocs\\distribuidora/wp-content/plugins/yith-woocommerce-ajax-navigation/init.php";}', 'no'),
(40, 'template', 'maxstore', 'yes'),
(41, 'stylesheet', 'maxstore', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '56', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_duser_roles', 'a:11:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:10:"loco_admin";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:7:"Cliente";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:10:"translator";a:2:{s:4:"name";s:10:"Translator";s:12:"capabilities";a:2:{s:4:"read";b:1;s:10:"loco_admin";b:1;}}s:9:"dc_vendor";a:2:{s:4:"name";s:6:"Vendor";s:12:"capabilities";a:5:{s:4:"read";b:1;s:14:"manage_product";b:1;s:10:"edit_posts";b:1;s:12:"delete_posts";b:0;s:24:"view_woocommerce_reports";b:1;}}s:17:"dc_pending_vendor";a:2:{s:4:"name";s:14:"Pending Vendor";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:18:"dc_rejected_vendor";a:2:{s:4:"name";s:15:"Rejected Vendor";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_VE', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:22:"maxstore-right-sidebar";a:6:{i:0;s:32:"yith-woo-ajax-reset-navigation-2";i:1;s:26:"yith-woo-ajax-navigation-3";i:2;s:28:"woocommerce_product_search-2";i:3;s:26:"woocommerce_price_filter-2";i:4;s:33:"woocommerce_layered_nav_filters-2";i:5;s:25:"woocommerce_widget_cart-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:10:{i:1495870469;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1495908000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495913699;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496057556;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1496058509;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1496086469;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1496100756;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496104591;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496707200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495326556;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, '_site_transient_timeout_browser_f79e47a86b8ea9eea660d3183e0c0e4f', '1495913705', 'no'),
(119, '_site_transient_browser_f79e47a86b8ea9eea660d3183e0c0e4f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"53.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(120, 'can_compress_scripts', '0', 'no'),
(146, 'woocommerce_default_country', 'VE', 'yes'),
(147, 'woocommerce_allowed_countries', 'specific', 'yes'),
(148, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(149, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"VE";}', 'yes'),
(150, 'woocommerce_ship_to_countries', 'disabled', 'yes'),
(151, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(152, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(153, 'woocommerce_calc_taxes', 'no', 'yes'),
(154, 'woocommerce_demo_store', 'no', 'yes'),
(155, 'woocommerce_demo_store_notice', 'Esta es una tienda de demostración para propósitos de prueba &mdash; deberán cumplirse ninguna orden.', 'no'),
(156, 'woocommerce_currency', 'VEF', 'yes'),
(157, 'woocommerce_currency_pos', 'left', 'yes'),
(158, 'woocommerce_price_thousand_sep', ',', 'yes'),
(159, 'woocommerce_price_decimal_sep', '.', 'yes'),
(160, 'woocommerce_price_num_decimals', '2', 'yes'),
(161, 'woocommerce_weight_unit', 'kg', 'yes'),
(162, 'woocommerce_dimension_unit', 'cm', 'yes'),
(163, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(164, 'woocommerce_review_rating_required', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(166, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(167, 'woocommerce_shop_page_id', '9', 'yes'),
(168, 'woocommerce_shop_page_display', '', 'yes'),
(169, 'woocommerce_category_archive_display', '', 'yes'),
(170, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(171, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(173, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(174, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(175, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(176, 'woocommerce_manage_stock', 'yes', 'yes'),
(177, 'woocommerce_hold_stock_minutes', '60', 'no'),
(178, 'woocommerce_notify_low_stock', 'yes', 'no'),
(179, 'woocommerce_notify_no_stock', 'yes', 'no'),
(180, 'woocommerce_stock_email_recipient', 'bvillamizarespitia@gmail.com', 'no'),
(181, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(182, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(183, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(184, 'woocommerce_stock_format', '', 'yes'),
(185, 'woocommerce_file_download_method', 'force', 'no'),
(186, 'woocommerce_downloads_require_login', 'no', 'no'),
(187, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(188, 'woocommerce_prices_include_tax', 'no', 'yes'),
(189, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(190, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(191, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(192, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(193, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(194, 'woocommerce_tax_display_cart', 'excl', 'no'),
(195, 'woocommerce_price_display_suffix', '', 'yes'),
(196, 'woocommerce_tax_total_display', 'itemized', 'no'),
(197, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(198, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(199, 'woocommerce_ship_to_destination', 'billing', 'no'),
(200, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(201, 'woocommerce_enable_coupons', 'yes', 'yes'),
(202, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(203, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(204, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(206, 'woocommerce_cart_page_id', '10', 'yes'),
(207, 'woocommerce_checkout_page_id', '11', 'yes'),
(208, 'woocommerce_terms_page_id', '', 'no'),
(209, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(210, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(211, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(212, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(213, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(214, 'woocommerce_myaccount_page_id', '12', 'yes'),
(215, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(216, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(217, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(218, 'woocommerce_registration_generate_username', 'no', 'no'),
(219, 'woocommerce_registration_generate_password', 'no', 'no'),
(220, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(221, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(222, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(223, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(224, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(225, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(226, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(227, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(228, 'woocommerce_email_from_name', 'distribuidora', 'no'),
(229, 'woocommerce_email_from_address', 'bvillamizarespitia@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', 'distribuidora - Powered by WooCommerce', 'no'),
(232, 'woocommerce_email_base_color', '#96588a', 'no'),
(233, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(234, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(235, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(236, 'woocommerce_api_enabled', 'yes', 'yes'),
(242, 'recently_activated', 'a:11:{s:84:"woocommerce-frontend-shop-manager-free-version/woocommerce-frontend-shop-manager.php";i:1495657156;s:46:"woo-mercado-pago-module/mercadopago-module.php";i:1495655290;s:49:"dc-woocommerce-multi-vendor/dc_product_vendor.php";i:1495654810;s:65:"woocommerce-accepted-payment-methods/accepted-payment-methods.php";i:1495544800;s:38:"yith-woocommerce-social-login/init.php";i:1495459526;s:33:"woocommerce-es/woocommerce-es.php";i:1495419815;s:21:"wpglobus/wpglobus.php";i:1495419797;s:63:"woocommerce-my-account-widget/woocommerce-my-account-widget.php";i:1495341375;s:54:"woocommerce-predictive-search/wc-predictive-search.php";i:1495341368;s:49:"paypal-for-woocommerce/paypal-for-woocommerce.php";i:1495341189;s:24:"wordpress-seo/wp-seo.php";i:1495331346;}', 'yes'),
(243, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(245, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(246, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:"title";s:18:"Carrito de Compras";s:13:"hide_if_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:"title";s:26:"filtra tus búsquedas aqui";}s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:18:"Filtrar por precio";}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_search', 'a:3:{i:2;a:1:{s:5:"title";s:23:"busca nuestro productos";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(252, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(300, 'current_theme', 'MaxStore', 'yes'),
(301, 'theme_mods_twentysixteen', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495331526;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(302, 'theme_switched', '', 'yes'),
(311, 'wc_predictive_search_plugin', 'woo_predictive_search', 'yes'),
(312, 'woocommerce_search_page_id', '8', 'yes'),
(313, 'wc_predictive_search_lite_version', '4.0.2', 'yes'),
(314, 'wc_predictive_search_had_sync_posts_data', '0', 'yes'),
(316, 'widget_products_predictive_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(317, 'woocommerce_search_lite_clean_on_deletion', 'no', 'yes'),
(318, 'woocommerce_search_is_debug', 'yes', 'yes'),
(319, 'predictive_search_mode', 'broad', 'yes'),
(320, 'woocommerce_search_remove_special_character', 'no', 'yes'),
(321, 'woocommerce_search_replace_special_character', 'remove', 'yes'),
(322, 'woocommerce_search_special_characters', '', 'yes'),
(323, 'woocommerce_search_exclude_out_stock', 'yes', 'yes'),
(324, 'woocommerce_search_exclude_products', 'a:0:{}', 'yes'),
(325, 'woocommerce_search_exclude_posts', 'a:0:{}', 'yes'),
(326, 'woocommerce_search_exclude_pages', 'a:0:{}', 'yes'),
(327, 'wc_predictive_search_input_box_settings', 'a:0:{}', 'yes');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(328, 'wc_predictive_search_sidebar_template_settings', 'a:69:{s:24:"sidebar_search_box_align";s:4:"none";s:23:"sidebar_search_box_wide";i:100;s:25:"sidebar_search_box_height";i:35;s:29:"sidebar_search_box_margin_top";s:1:"0";s:32:"sidebar_search_box_margin_bottom";s:2:"10";s:30:"sidebar_search_box_margin_left";s:1:"0";s:31:"sidebar_search_box_margin_right";s:1:"0";s:36:"sidebar_search_box_mobile_margin_top";s:2:"10";s:39:"sidebar_search_box_mobile_margin_bottom";s:2:"10";s:37:"sidebar_search_box_mobile_margin_left";s:2:"10";s:38:"sidebar_search_box_mobile_margin_right";s:2:"10";s:25:"sidebar_search_box_border";a:8:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#cdcdcd";s:6:"corner";s:7:"rounded";s:15:"top_left_corner";i:4;s:16:"top_right_corner";i:4;s:18:"bottom_left_corner";i:4;s:19:"bottom_right_corner";i:4;}s:37:"sidebar_search_box_border_color_focus";s:7:"#febd69";s:25:"sidebar_search_box_shadow";a:7:{s:6:"enable";i:0;s:8:"h_shadow";s:3:"0px";s:8:"v_shadow";s:3:"1px";s:4:"blur";s:3:"0px";s:6:"spread";s:3:"0px";s:5:"color";s:7:"#555555";s:5:"inset";s:5:"inset";}s:31:"sidebar_category_dropdown_align";s:4:"left";s:34:"sidebar_category_dropdown_max_wide";i:30;s:30:"sidebar_category_dropdown_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#777777";}s:35:"sidebar_category_dropdown_icon_size";i:12;s:36:"sidebar_category_dropdown_icon_color";s:7:"#555555";s:34:"sidebar_category_dropdown_bg_color";s:7:"#f3f3f3";s:37:"sidebar_category_dropdown_side_border";a:3:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#cdcdcd";}s:24:"sidebar_search_icon_size";i:16;s:25:"sidebar_search_icon_color";s:7:"#555555";s:31:"sidebar_search_icon_hover_color";s:7:"#ffffff";s:28:"sidebar_search_icon_bg_color";s:7:"#febd69";s:34:"sidebar_search_icon_bg_hover_color";s:7:"#f3a847";s:31:"sidebar_search_icon_side_border";a:3:{s:5:"width";s:3:"0px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#febd69";}s:18:"sidebar_input_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#111111";}s:24:"sidebar_input_padding_tb";s:1:"6";s:24:"sidebar_input_padding_lr";s:2:"10";s:22:"sidebar_input_bg_color";a:2:{s:6:"enable";i:1;s:5:"color";s:7:"#ffffff";}s:25:"sidebar_loading_icon_size";i:16;s:26:"sidebar_loading_icon_color";s:7:"#555555";s:10:"popup_wide";s:10:"input_wide";s:20:"sidebar_popup_border";a:8:{s:5:"width";s:3:"1px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#c2c2c2";s:6:"corner";s:6:"square";s:15:"top_left_corner";i:0;s:16:"top_right_corner";i:0;s:18:"bottom_left_corner";i:0;s:19:"bottom_right_corner";i:0;}s:26:"sidebar_popup_heading_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#000000";}s:32:"sidebar_popup_heading_padding_tb";s:1:"3";s:32:"sidebar_popup_heading_padding_lr";s:2:"10";s:28:"sidebar_popup_heading_border";a:3:{s:5:"width";s:3:"0px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#c2c2c2";}s:30:"sidebar_popup_heading_bg_color";s:7:"#f2f2f2";s:29:"sidebar_popup_item_padding_tb";s:1:"6";s:29:"sidebar_popup_item_padding_lr";s:2:"10";s:25:"sidebar_popup_item_border";a:3:{s:5:"width";s:3:"0px";s:5:"style";s:5:"solid";s:5:"color";s:7:"#c2c2c2";}s:37:"sidebar_popup_item_border_hover_color";s:7:"#6d84b4";s:27:"sidebar_popup_item_bg_color";s:7:"#ffffff";s:33:"sidebar_popup_item_bg_hover_color";s:7:"#6d84b4";s:29:"sidebar_popup_item_image_size";i:64;s:31:"sidebar_popup_product_name_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#3b5998";}s:38:"sidebar_popup_product_name_hover_color";s:7:"#ffffff";s:30:"sidebar_popup_product_sku_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#3b5998";}s:37:"sidebar_popup_product_sku_hover_color";s:7:"#ffffff";s:32:"sidebar_popup_product_price_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:39:"sidebar_popup_product_price_hover_color";s:7:"#ffffff";s:31:"sidebar_popup_product_desc_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:38:"sidebar_popup_product_desc_hover_color";s:7:"#ffffff";s:36:"sidebar_popup_product_stock_qty_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:43:"sidebar_popup_product_stock_qty_hover_color";s:7:"#ffffff";s:35:"sidebar_popup_product_category_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#000000";}s:47:"sidebar_popup_product_category_link_hover_color";s:7:"#ffffff";s:36:"sidebar_popup_product_category_color";s:7:"#000000";s:42:"sidebar_popup_product_category_hover_color";s:7:"#ffffff";s:31:"sidebar_popup_footer_padding_tb";s:1:"3";s:31:"sidebar_popup_footer_padding_lr";s:2:"10";s:29:"sidebar_popup_footer_bg_color";s:7:"#f2f2f2";s:26:"sidebar_popup_seemore_text";s:36:"See more search results for ''%s'' in:";s:26:"sidebar_popup_seemore_font";a:5:{s:4:"size";s:4:"10px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#999999";}s:28:"sidebar_popup_more_link_font";a:5:{s:4:"size";s:4:"12px";s:11:"line_height";s:5:"1.4em";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#3b5998";}s:28:"sidebar_popup_more_icon_size";i:12;s:29:"sidebar_popup_more_icon_color";s:7:"#3b5998";}', 'yes'),
(329, 'wc_predictive_search_header_template_settings', 'a:0:{}', 'yes'),
(330, 'woocommerce_search_result_items', '10', 'yes'),
(331, 'woocommerce_search_text_lenght', '100', 'yes'),
(332, 'woocommerce_search_sku_enable', 'yes', 'yes'),
(333, 'woocommerce_search_price_enable', 'yes', 'yes'),
(334, 'woocommerce_search_addtocart_enable', 'yes', 'yes'),
(335, 'woocommerce_search_categories_enable', 'yes', 'yes'),
(336, 'woocommerce_search_tags_enable', 'yes', 'yes'),
(337, 'wc_predictive_search_style_version', '1495327190', 'yes'),
(338, 'wc_predictive_search_just_confirm', '1', 'yes'),
(339, 'wc_predictive_search_synced_posts_data', '1', 'yes'),
(341, '_transient_timeout_geoip_::1', '1495932109', 'no'),
(342, '_transient_geoip_::1', '', 'no'),
(343, '_transient_timeout_geoip_186.95.251.35', '1495932110', 'no'),
(344, '_transient_geoip_186.95.251.35', 'VE', 'no'),
(345, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(346, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(347, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:28:"bvillamizarespitia@gmail.com";}', 'yes'),
(348, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(349, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:22:"Transferencia Bancaria";s:11:"description";s:77:"Realiza tu pago mediante transferencia, a través de nuestros banco aprobados";s:12:"instructions";s:141:"Debes realizar la tranferencia al banco de tu preferencia y guardar el comprobante para que previamente lop adjuntes para completar tu compra";s:15:"account_details";s:0:"";}', 'yes'),
(350, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(351, '_transient_product_query-transient-version', '1495685721', 'yes'),
(352, '_transient_product-transient-version', '1495833022', 'yes'),
(354, '_transient_timeout_wc_related_13', '1495413958', 'no'),
(355, '_transient_wc_related_13', 'a:0:{}', 'no'),
(360, '_transient_twentysixteen_categories', '1', 'yes'),
(362, '_site_transient_timeout_browser_5a47f76b0e2ada8670d92efe193382f0', '1495935931', 'no'),
(363, '_site_transient_browser_5a47f76b0e2ada8670d92efe193382f0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"60.0.3102.0";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(368, 'wpseo', 'a:24:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"4.7.1";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1495331308;}', 'yes'),
(369, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(370, 'wpseo_titles', 'a:80:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:13:"title-product";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-product";s:0:"";s:15:"metakey-product";s:0:"";s:15:"noindex-product";b:0;s:16:"showdate-product";b:0;s:19:"hideeditbox-product";b:0;s:23:"title-ptarchive-product";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:26:"metadesc-ptarchive-product";s:0:"";s:25:"metakey-ptarchive-product";s:0:"";s:25:"bctitle-ptarchive-product";s:0:"";s:25:"noindex-ptarchive-product";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;s:21:"title-tax-product_cat";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_cat";s:0:"";s:23:"metakey-tax-product_cat";s:0:"";s:27:"hideeditbox-tax-product_cat";b:0;s:23:"noindex-tax-product_cat";b:0;s:21:"title-tax-product_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_tag";s:0:"";s:23:"metakey-tax-product_tag";s:0:"";s:27:"hideeditbox-tax-product_tag";b:0;s:23:"noindex-tax-product_tag";b:0;s:32:"title-tax-product_shipping_class";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:35:"metadesc-tax-product_shipping_class";s:0:"";s:34:"metakey-tax-product_shipping_class";s:0:"";s:38:"hideeditbox-tax-product_shipping_class";b:0;s:34:"noindex-tax-product_shipping_class";b:0;}', 'yes'),
(371, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"26f60513f859936831631c3f65f230ba";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(372, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(373, 'wpseo_internallinks', 'a:14:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:26:"post_types-product-maintax";i:0;s:29:"taxonomy-product_cat-ptparent";i:0;s:29:"taxonomy-product_tag-ptparent";i:0;s:40:"taxonomy-product_shipping_class-ptparent";i:0;}', 'yes'),
(374, 'wpseo_xml', 'a:22:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:33:"user_role-customer-not_in_sitemap";b:0;s:37:"user_role-shop_manager-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:33:"post_types-product-not_in_sitemap";b:0;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;s:37:"taxonomies-product_cat-not_in_sitemap";b:0;s:37:"taxonomies-product_tag-not_in_sitemap";b:0;s:48:"taxonomies-product_shipping_class-not_in_sitemap";b:0;}', 'yes'),
(375, 'wpseo_flush_rewrite', '1', 'yes'),
(376, '_transient_timeout_yoast_i18n_wordpress-seo_es_VE', '1495417718', 'no'),
(377, '_transient_yoast_i18n_wordpress-seo_es_VE', 'O:8:"stdClass":12:{s:2:"id";s:6:"396249";s:4:"name";s:18:"Venezuelan Spanish";s:4:"slug";s:7:"default";s:10:"project_id";s:4:"3158";s:6:"locale";s:5:"es-ve";s:13:"current_count";i:825;s:18:"untranslated_count";i:260;s:13:"waiting_count";i:0;s:11:"fuzzy_count";i:34;s:18:"percent_translated";i:76;s:9:"wp_locale";s:5:"es_VE";s:13:"last_modified";s:19:"2017-01-29 23:01:58";}', 'no'),
(381, 'theme_mods_sauna-lite', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495338318;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";N;}}}', 'yes'),
(389, 'wpo_wcpdf_version', '1.6.5', 'yes'),
(390, 'wpo_wcpdf_general_settings', 'a:3:{s:16:"download_display";s:7:"display";s:9:"email_pdf";a:6:{s:9:"new_order";s:1:"1";s:10:"processing";s:1:"1";s:9:"completed";s:1:"1";s:16:"customer_invoice";s:1:"1";s:15:"cancelled_order";s:1:"1";s:22:"customer_on_hold_order";s:1:"1";}s:18:"my_account_buttons";s:9:"available";}', 'yes'),
(391, 'wpo_wcpdf_template_settings', 'a:17:{s:13:"template_path";s:108:"C:\\xampp\\htdocs\\distribuidora\\wp-content\\plugins\\woocommerce-pdf-invoices-packing-slips/templates/pdf/Simple";s:10:"paper_size";s:6:"letter";s:11:"header_logo";s:2:"57";s:9:"shop_name";s:17:"Distribuidora Sia";s:12:"shop_address";s:28:"San cristobal estado tachira";s:6:"footer";s:47:"todos los derechos reservados Distribuidora Sia";s:24:"invoice_shipping_address";s:1:"1";s:13:"invoice_email";s:1:"1";s:13:"invoice_phone";s:1:"1";s:12:"display_date";s:12:"invoice_date";s:14:"display_number";s:14:"invoice_number";s:32:"invoice_number_formatting_prefix";s:0:"";s:32:"invoice_number_formatting_suffix";s:0:"";s:33:"invoice_number_formatting_padding";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}', 'yes'),
(392, 'wpo_wcpdf_debug_settings', 'a:0:{}', 'yes'),
(404, 'theme_mods_thestore', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495400808;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:22:"maxstore-right-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}}}}', 'yes'),
(428, 'widget_woocommercemyaccountwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(434, 'category_children', 'a:0:{}', 'yes'),
(452, 'theme_mods_estore', 'a:15:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:12:"header_image";s:13:"remove-header";s:16:"background_image";s:0:"";s:20:"estore_header_ac_btn";i:1;s:22:"estore_header_currency";s:0:"";s:21:"estore_bar_activation";i:1;s:21:"estore_logo_placement";s:9:"show_both";s:20:"estore_global_layout";s:13:"right_sidebar";s:11:"custom_logo";i:57;s:29:"estore_header_media_placement";s:28:"header_media_below_main_menu";s:20:"estore_payment_logo1";s:0:"";s:16:"background_color";s:6:"ffffff";s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495409731;s:4:"data";a:12:{s:19:"wp_inactive_widgets";a:2:{i:0;s:28:"woocommerce_product_search-4";i:1;s:39:"estore_featured_posts_carousel_widget-3";}s:20:"estore_sidebar_right";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:19:"estore_sidebar_left";a:0:{}s:21:"estore_sidebar_header";a:0:{}s:21:"estore_sidebar_slider";a:1:{i:0;s:37:"estore_woocommerce_product_carousel-2";}s:28:"estore_sidebar_slider_beside";a:0:{}s:20:"estore_sidebar_front";a:0:{}s:22:"estore_footer_sidebar1";a:0:{}s:22:"estore_footer_sidebar2";a:0:{}s:22:"estore_footer_sidebar3";a:0:{}s:22:"estore_footer_sidebar4";a:0:{}s:26:"estore_woocommerce_sidebar";a:0:{}}}}', 'yes'),
(453, 'widget_estore_728x90_ad', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(454, 'widget_estore_about', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(455, 'widget_estore_featured_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(456, 'widget_estore_logo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(457, 'widget_estore_featured_posts_slider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(458, 'widget_estore_featured_posts_carousel_widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(459, 'widget_estore_posts_grid', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(460, 'widget_estore_vertical_promo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(461, 'widget_estore_full_width_promo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(462, 'widget_estore_woocommerce_full_width_promo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(463, 'widget_estore_woocommerce_product_carousel', 'a:2:{i:2;a:6:{s:5:"title";s:0:"";s:8:"subtitle";s:0:"";s:6:"source";s:6:"latest";s:8:"category";i:15;s:14:"product_number";i:10;s:19:"hide_thumbnail_mask";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(464, 'widget_estore_woocommerce_product_grid', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(465, 'widget_estore_woocommerce_product_slider', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(466, 'widget_estore_woocommerce_vertical_promo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'estore_admin_notice_welcome', '1', 'yes'),
(470, 'theme_mods_giga-store', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495409798;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:24:"giga-store-right-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:23:"giga-store-left-sidebar";a:0:{}s:22:"giga-store-footer-area";a:0:{}s:18:"orphaned_widgets_1";a:0:{}}}}', 'yes'),
(503, 'theme_mods_maxstore', 'a:13:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:4:{s:7:"primary";i:36;s:6:"header";i:0;s:9:"secondary";i:0;s:9:"main_menu";i:36;}s:28:"front_page_demo_banner_title";s:17:"Distribuidora Sia";s:27:"front_page_demo_banner_desc";s:35:"Donde encontraras los que necesites";s:21:"front_page_demo_style";s:9:"style-one";s:22:"front_page_demo_banner";s:1:"1";s:26:"front_page_demo_banner_img";s:86:"http://localhost/distribuidora/wp-content/uploads/2017/05/banner_distribuidora_sia.jpg";s:16:"maxstore_socials";s:1:"0";s:17:"wishlist-top-icon";s:1:"1";s:15:"woo-breadcrumbs";s:1:"1";s:16:"woo_gallery_zoom";s:1:"1";s:18:"woo_gallery_slider";s:1:"1";}', 'yes'),
(510, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(514, '_site_transient_timeout_wporg_theme_feature_list', '1495419207', 'no'),
(515, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(518, 'theme_mods_e-shop', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495420057;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:22:"maxstore-right-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}s:18:"orphaned_widgets_1";a:0:{}}}}', 'yes'),
(522, 'theme_mods_kakina', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495407498;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:19:"kakina-home-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:20:"kakina-right-sidebar";a:0:{}s:19:"kakina-left-sidebar";a:0:{}s:18:"kakina-footer-area";a:0:{}}}}', 'yes'),
(526, 'theme_mods_layerstore', 'a:11:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:18:"custom_css_post_id";i:-1;s:26:"layerstore_demo_front_page";s:1:"1";s:35:"layerstore_front_page_demo_carousel";s:1:"1";s:16:"searchbar-mobile";s:7:"visible";s:16:"maxstore_socials";s:1:"1";s:15:"woo-breadcrumbs";s:1:"0";s:16:"woo_gallery_zoom";s:1:"1";s:18:"woo_gallery_slider";s:1:"1";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495408538;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:22:"maxstore-right-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}}}}', 'yes'),
(537, 'theme_mods_alpha-store', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:0;s:6:"header";i:0;s:9:"secondary";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495409756;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"woocommerce_product_search-4";}s:25:"alpha-store-right-sidebar";a:5:{i:0;s:28:"woocommerce_product_search-2";i:1;s:12:"categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";i:4;s:25:"woocommerce_widget_cart-2";}s:24:"alpha-store-left-sidebar";a:0:{}s:24:"alpha-store-home-sidebar";a:0:{}s:23:"alpha-store-footer-area";N;}}}', 'yes'),
(544, 'woocommerce_db_version', '3.0.7', 'yes'),
(545, 'woocommerce_version', '3.0.7', 'yes'),
(546, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(574, 'yit_recently_activated', 'a:0:{}', 'yes'),
(579, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(580, 'yith_wcwl_wishlist_title', 'My wishlist on Distribuidora Sia', 'yes'),
(581, 'yith-wcwl-page-id', '79', 'yes'),
(582, 'yith_wcwl_wishlist_page_id', '79', 'yes'),
(583, 'yith_wcwl_version', '2.1.2', 'yes'),
(584, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(586, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:106:"http://localhost/distribuidora/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(587, 'yith_wcwl_enabled', 'yes', 'yes'),
(588, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(589, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(590, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(591, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(592, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(593, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(594, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(595, 'yith_wcwl_price_show', 'yes', 'yes'),
(596, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(597, 'yith_wcwl_stock_show', 'yes', 'yes'),
(598, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(599, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(600, 'yith_wcwl_share_fb', 'yes', 'yes'),
(601, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(602, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(603, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(604, 'yith_wcwl_share_email', 'yes', 'yes'),
(605, 'yith_wcwl_socials_title', 'My wishlist on Distribuidora Sia', 'yes'),
(606, 'yith_wcwl_socials_text', '', 'yes'),
(607, 'yith_wcwl_socials_image_url', '', 'yes'),
(608, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(609, 'yith_wcwl_use_button', 'no', 'yes'),
(610, 'yith_wcwl_custom_css', '', 'yes'),
(611, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(612, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(613, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(614, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(617, 'product_cat_children', 'a:0:{}', 'yes'),
(642, 'wpglobus_option_language_names', 'a:34:{s:2:"ar";s:49:"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;";s:2:"en";s:7:"English";s:2:"au";s:12:"English (AU)";s:2:"ca";s:12:"English (CA)";s:2:"gb";s:12:"English (UK)";s:2:"zh";s:32:"&#31616;&#20307;&#20013;&#25991;";s:2:"tw";s:32:"&#32321;&#39636;&#20013;&#25991;";s:2:"da";s:5:"Dansk";s:2:"nl";s:10:"Nederlands";s:2:"gl";s:6:"Galego";s:2:"de";s:7:"Deutsch";s:2:"fi";s:5:"Suomi";s:2:"fr";s:9:"Français";s:2:"qc";s:14:"Français (CA)";s:2:"he";s:35:"&#1506;&#1489;&#1512;&#1497;&#1514;";s:2:"hi";s:42:"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;";s:2:"hu";s:6:"Magyar";s:2:"it";s:8:"Italiano";s:2:"ja";s:24:"&#26085;&#26412;&#35486;";s:2:"ko";s:24:"&#54620;&#44397;&#50612;";s:2:"no";s:5:"Norsk";s:2:"fa";s:35:"&#1601;&#1575;&#1585;&#1587;&#1740;";s:2:"pl";s:6:"Polski";s:2:"pt";s:10:"Português";s:2:"br";s:15:"Português (BR)";s:2:"ro";s:8:"Română";s:2:"ru";s:14:"Русский";s:2:"es";s:8:"Español";s:2:"mx";s:13:"Español (MX)";s:2:"sv";s:7:"Svenska";s:2:"tr";s:8:"Türkçe";s:2:"uk";s:20:"Українська";s:2:"vi";s:14:"Tiếng Việt";s:2:"cy";s:7:"Cymraeg";}', 'yes'),
(643, 'wpglobus_option_en_language_names', 'a:34:{s:2:"ar";s:6:"Arabic";s:2:"en";s:7:"English";s:2:"au";s:12:"English (AU)";s:2:"ca";s:12:"English (CA)";s:2:"gb";s:12:"English (UK)";s:2:"zh";s:7:"Chinese";s:2:"tw";s:12:"Chinese (TW)";s:2:"da";s:6:"Danish";s:2:"nl";s:5:"Dutch";s:2:"gl";s:8:"Galician";s:2:"de";s:6:"German";s:2:"fi";s:7:"Finnish";s:2:"fr";s:6:"French";s:2:"qc";s:11:"French (CA)";s:2:"he";s:6:"Hebrew";s:2:"hi";s:5:"Hindi";s:2:"hu";s:9:"Hungarian";s:2:"it";s:7:"Italian";s:2:"ja";s:8:"Japanese";s:2:"ko";s:6:"Korean";s:2:"no";s:9:"Norwegian";s:2:"fa";s:7:"Persian";s:2:"pl";s:6:"Polish";s:2:"pt";s:10:"Portuguese";s:2:"br";s:15:"Portuguese (BR)";s:2:"ro";s:8:"Romanian";s:2:"ru";s:7:"Russian";s:2:"es";s:7:"Spanish";s:2:"mx";s:12:"Spanish (MX)";s:2:"sv";s:7:"Swedish";s:2:"tr";s:7:"Turkish";s:2:"uk";s:9:"Ukrainian";s:2:"vi";s:10:"Vietnamese";s:2:"cy";s:5:"Welsh";}', 'yes'),
(644, 'wpglobus_option_locale', 'a:34:{s:2:"ar";s:2:"ar";s:2:"en";s:5:"en_US";s:2:"au";s:5:"en_AU";s:2:"ca";s:5:"en_CA";s:2:"gb";s:5:"en_GB";s:2:"zh";s:5:"zh_CN";s:2:"tw";s:5:"zh_CN";s:2:"da";s:5:"da_DK";s:2:"nl";s:5:"nl_NL";s:2:"gl";s:5:"gl_ES";s:2:"de";s:5:"de_DE";s:2:"fi";s:2:"fi";s:2:"fr";s:5:"fr_FR";s:2:"qc";s:5:"fr_CA";s:2:"he";s:5:"he_IL";s:2:"hi";s:5:"hi_IN";s:2:"hu";s:5:"hu_HU";s:2:"it";s:5:"it_IT";s:2:"ja";s:2:"ja";s:2:"ko";s:5:"ko_KR";s:2:"no";s:5:"nb_NO";s:2:"fa";s:5:"fa_IR";s:2:"pl";s:5:"pl_PL";s:2:"pt";s:5:"pt_PT";s:2:"br";s:5:"pt_BR";s:2:"ro";s:5:"ro_RO";s:2:"ru";s:5:"ru_RU";s:2:"es";s:5:"es_ES";s:2:"mx";s:5:"es_MX";s:2:"sv";s:5:"sv_SE";s:2:"tr";s:5:"tr_TR";s:2:"uk";s:2:"uk";s:2:"vi";s:2:"vi";s:2:"cy";s:2:"cy";}', 'yes'),
(645, 'wpglobus_option_flags', 'a:34:{s:2:"ar";s:8:"arle.png";s:2:"en";s:6:"us.png";s:2:"au";s:6:"au.png";s:2:"ca";s:6:"ca.png";s:2:"gb";s:6:"uk.png";s:2:"zh";s:6:"cn.png";s:2:"tw";s:6:"cn.png";s:2:"da";s:6:"dk.png";s:2:"nl";s:6:"nl.png";s:2:"gl";s:10:"galego.png";s:2:"de";s:6:"de.png";s:2:"fi";s:6:"fi.png";s:2:"fr";s:6:"fr.png";s:2:"qc";s:9:"fr_CA.png";s:2:"he";s:6:"il.png";s:2:"hi";s:6:"in.png";s:2:"hu";s:6:"hu.png";s:2:"it";s:6:"it.png";s:2:"ja";s:6:"jp.png";s:2:"ko";s:6:"kr.png";s:2:"no";s:6:"no.png";s:2:"fa";s:6:"ir.png";s:2:"pl";s:6:"pl.png";s:2:"pt";s:6:"pt.png";s:2:"br";s:6:"br.png";s:2:"ro";s:6:"ro.png";s:2:"ru";s:6:"ru.png";s:2:"es";s:6:"es.png";s:2:"mx";s:6:"mx.png";s:2:"sv";s:6:"se.png";s:2:"tr";s:6:"tr.png";s:2:"uk";s:6:"ua.png";s:2:"vi";s:6:"vn.png";s:2:"cy";s:6:"cy.png";}', 'yes'),
(646, 'wpglobus_option_versioning', 'a:1:{s:15:"current_version";s:6:"1.7.11";}', 'yes'),
(649, 'widget_wpglobus', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(650, 'redux_version_upgraded_from', '3.5.8.1', 'yes'),
(651, '_transient_timeout__redux_activation_redirect', '1495419827', 'no'),
(652, '_transient__redux_activation_redirect', '1', 'no'),
(654, 'wpglobus_option', 'a:9:{s:8:"last_tab";s:0:"";s:17:"enabled_languages";a:6:{s:2:"en";s:1:"1";s:2:"es";s:1:"1";s:2:"de";s:0:"";s:2:"fr";s:0:"";s:2:"ru";s:0:"";s:2:"mx";s:13:"Español (MX)";}s:14:"more_languages";s:2:"mx";s:14:"show_flag_name";s:4:"code";s:12:"use_nav_menu";s:0:"";s:22:"selector_wp_list_pages";a:1:{s:13:"show_selector";s:0:"";}s:10:"css_editor";s:36:"                                    ";s:9:"js_editor";s:36:"                                    ";s:9:"post_type";a:2:{s:4:"post";s:1:"1";s:4:"page";s:1:"1";}}', 'yes'),
(655, 'wpglobus_option-transients', 'a:3:{s:14:"changed_values";a:4:{s:17:"enabled_languages";a:5:{s:2:"en";b:1;s:2:"es";b:1;s:2:"de";b:1;s:2:"fr";b:1;s:2:"ru";b:1;}s:22:"selector_wp_list_pages";i:1;s:10:"css_editor";s:0:"";s:9:"js_editor";s:0:"";}s:9:"last_save";i:1495419763;s:13:"last_compiler";i:1495419763;}', 'yes'),
(656, '_transient_timeout_select2-css_style_cdn_is_up', '1495506110', 'no'),
(657, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(658, '_transient_timeout_select2-js_script_cdn_is_up', '1495506111', 'no'),
(659, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(674, 'loco_settings', 'a:3:{s:1:"c";s:18:"Loco_data_Settings";s:1:"v";i:0;s:1:"d";a:9:{s:7:"version";s:6:"2.0.14";s:8:"gen_hash";b:0;s:9:"use_fuzzy";b:1;s:11:"num_backups";i:1;s:9:"pot_alias";a:3:{i:0;s:10:"default.po";i:1;s:8:"en_US.po";i:2;s:5:"en.po";}s:9:"php_alias";a:1:{i:0;s:3:"php";}s:10:"fs_persist";b:0;s:12:"max_php_size";s:4:"100K";s:11:"po_utf8_bom";b:0;}}', 'yes'),
(675, '_transient_loco_po_d44d3701e4efe43323364012c1913ce4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:38:"themes/maxstore/languages/maxstore.pot";s:5:"bytes";i:38290;s:5:"mtime";i:1495338309;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:378;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(676, '_transient_loco_po_d50ec323f05a956ace189275d5bb902d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"themes/maxstore/languages/cs_CZ.po";s:5:"bytes";i:66921;s:5:"mtime";i:1495338309;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:378;s:1:"p";i:378;s:1:"f";i:0;}}}', 'yes'),
(677, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:50:"plugins/woocommerce/i18n/languages/woocommerce.pot";s:5:"bytes";i:621927;s:5:"mtime";i:1495409542;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4790;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(678, '_transient_loco_po_bef573dc58e31852c86f5a73f1c80f4f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:73:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist.pot";s:5:"bytes";i:26463;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(679, '_transient_loco_po_6e7776b1b1bb0d344ff6f415a1983998', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-da_DK.po";s:5:"bytes";i:43165;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:24;s:1:"f";i:0;}}}', 'yes'),
(680, '_transient_loco_po_538ffbea9a7bbe247da4b3961761321a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-de_DE.po";s:5:"bytes";i:49915;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:138;s:1:"f";i:0;}}}', 'yes'),
(681, '_transient_loco_po_fe30572e2f2252c67d969fdef72fd20b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-es_AR.po";s:5:"bytes";i:33397;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:84;s:1:"f";i:34;}}}', 'yes'),
(682, '_transient_loco_po_f0516d1dbc5845b64c4911f511d936e9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-es_ES.po";s:5:"bytes";i:31403;s:5:"mtime";i:1495556452;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:136;s:1:"f";i:0;}}}', 'yes'),
(683, '_transient_loco_po_4331c99dd2ee2b75951373f3ded08d37', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-es_MX.po";s:5:"bytes";i:33072;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:84;s:1:"f";i:34;}}}', 'yes'),
(684, '_transient_loco_po_8d3865268460b0ff8281ccf8595270ff', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-fa_IR.po";s:5:"bytes";i:55328;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(685, '_transient_loco_po_9581c08789df8e5fd596d3b3f671a51e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-fr_FR.po";s:5:"bytes";i:33277;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:87;s:1:"f";i:34;}}}', 'yes'),
(686, '_transient_loco_po_f984e3439cec6a86c31a23183ea96dcf', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-he_IL.po";s:5:"bytes";i:31034;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:72;s:1:"f";i:32;}}}', 'yes'),
(687, '_transient_loco_po_1626a63d06b29878147afbbedf4251c0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-hr_HR.po";s:5:"bytes";i:36081;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:171;s:1:"f";i:0;}}}', 'yes'),
(688, '_transient_loco_po_159b621e251757f3611a312285bdad89', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-it_IT.po";s:5:"bytes";i:57740;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:177;s:1:"f";i:0;}}}', 'yes'),
(689, '_transient_loco_po_67bb33809af7f6bdd97b3476d15c284d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-ko_KR.po";s:5:"bytes";i:38156;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:175;s:1:"f";i:0;}}}', 'yes'),
(690, '_transient_loco_po_03f360e72bd6d78156a9c6abd19d6274', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-nl_NL.po";s:5:"bytes";i:37992;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:175;s:1:"f";i:0;}}}', 'yes'),
(691, '_transient_loco_po_ea7e4329adf761924d512366a3f47780', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-pl_PL.po";s:5:"bytes";i:28360;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:70;s:1:"f";i:0;}}}', 'yes'),
(692, '_transient_loco_po_79d69e608a551e654fad42c4e0035a57', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-pt_BR.po";s:5:"bytes";i:32137;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:84;s:1:"f";i:35;}}}', 'yes'),
(693, '_transient_loco_po_58afc5c55f7f66e2e6b066944ed280d0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-pt_PT.po";s:5:"bytes";i:32059;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:84;s:1:"f";i:31;}}}', 'yes'),
(694, '_transient_loco_po_b1e18da7847c9ca52ad87b72b4bcaa99', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-ru_RU.po";s:5:"bytes";i:27886;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:41;s:1:"f";i:20;}}}', 'yes'),
(695, '_transient_loco_po_c8a3849028363b05f92f8488fe13a840', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-sv_SE.po";s:5:"bytes";i:49169;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:135;s:1:"f";i:0;}}}', 'yes'),
(696, '_transient_loco_po_b7cc9b428d1b8ec7f2ab1a955c5b8782', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-tr_TR.po";s:5:"bytes";i:31872;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:87;s:1:"f";i:33;}}}', 'yes'),
(697, '_transient_loco_po_9dd82ee39e5dea16dbd8515b836d7bda', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-uk_UA.po";s:5:"bytes";i:27761;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:32;s:1:"f";i:20;}}}', 'yes'),
(698, '_transient_loco_po_2865ed3defd48fc192385449cf5d020e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-zh_CN.po";s:5:"bytes";i:26999;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:28;s:1:"f";i:12;}}}', 'yes'),
(699, '_transient_loco_po_9ebdd518c6cd646dcc06d1af607349cf', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/yith-woocommerce-wishlist/languages/yith-woocommerce-wishlist-zh_TW.po";s:5:"bytes";i:26999;s:5:"mtime";i:1495410649;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:180;s:1:"p";i:28;s:1:"f";i:12;}}}', 'yes'),
(700, '_transient_loco_po_4413934e5ffeaabee721a0b18c97f7f4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:77:"plugins/yith-woocommerce-wishlist/plugin-fw/languages/yith-plugin-fw-es_ES.po";s:5:"bytes";i:39608;s:5:"mtime";i:1495410650;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(701, '_transient_loco_po_bc92533186b5a8f3101ad47fac8a6f90', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:77:"plugins/yith-woocommerce-wishlist/plugin-fw/languages/yith-plugin-fw-it_IT.po";s:5:"bytes";i:42298;s:5:"mtime";i:1495410650;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(702, '_transient_loco_po_66a1665702b8e308c9440cd9a5a2a85d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/yith-woocommerce-wishlist/plugin-fw/languages/yith-plugin-fw.pot";s:5:"bytes";i:25476;s:5:"mtime";i:1495410650;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(703, '_transient_loco_po_ac147287bd88b86873110153ae917443', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:18:"languages/es_VE.po";s:5:"bytes";i:295498;s:5:"mtime";i:1495664434;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:1731;s:1:"p";i:1725;s:1:"f";i:0;}}}', 'yes'),
(704, '_transient_loco_po_cae3b72f29087c281b51cd0298931de3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:24:"languages/admin-es_VE.po";s:5:"bytes";i:505793;s:5:"mtime";i:1495320864;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:2419;s:1:"p";i:2419;s:1:"f";i:0;}}}', 'yes'),
(705, '_transient_loco_po_8ab5d1f89c024dbd79fe2d75950ef8b9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:32:"languages/admin-network-es_VE.po";s:5:"bytes";i:66981;s:5:"mtime";i:1495320864;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:316;s:1:"p";i:316;s:1:"f";i:0;}}}', 'yes'),
(706, '_transient_loco_po_1c12c422f31fb8ec6ca081a834eb4d12', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"languages/continents-cities-es_VE.po";s:5:"bytes";i:45527;s:5:"mtime";i:1495320864;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:519;s:1:"p";i:519;s:1:"f";i:0;}}}', 'yes'),
(711, 'loco_recent', 'a:3:{s:1:"c";s:21:"Loco_data_RecentItems";s:1:"v";i:0;s:1:"d";a:1:{s:6:"bundle";a:9:{s:51:"plugin.yith-woocommerce-additional-uploads/init.php";i:1495454572;s:14:"theme.maxstore";i:1495466461;s:34:"plugin.woocommerce/woocommerce.php";i:1495467426;s:53:"plugin.woo-mercado-pago-module/mercadopago-module.php";i:1495555468;s:20:"plugin.cmb2/init.php";i:1495555643;s:87:"plugin.woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:1495555749;s:41:"plugin.yith-woocommerce-wishlist/init.php";i:1495556452;s:4:"core";i:1495664746;s:63:"plugin.woo-checkout-field-editor-pro/checkout-form-designer.php";i:1495665001;}}}', 'no'),
(715, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1495401657;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(730, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_VE/wordpress-4.7.5.zip";s:6:"locale";s:5:"es_VE";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_VE/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_VE/wordpress-4.7.5.zip";s:6:"locale";s:5:"es_VE";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_VE/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1496054915;s:15:"version_checked";s:5:"4.7.4";s:12:"translations";a:0:{}}', 'no');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(731, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1496054923;s:7:"checked";a:11:{s:11:"alpha-store";s:5:"1.4.0";s:6:"e-shop";s:5:"1.0.4";s:6:"estore";s:5:"1.1.9";s:10:"giga-store";s:5:"1.1.1";s:10:"layerstore";s:6:"1.0.10";s:8:"maxstore";s:5:"1.4.0";s:10:"sauna-lite";s:5:"1.1.6";s:8:"thestore";s:5:"1.0.4";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.2";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(735, 'woocommerce_woocommerce-mercadopago-module_settings', 'a:19:{s:7:"enabled";s:3:"yes";s:9:"client_id";s:16:"8540799116050161";s:13:"client_secret";s:32:"SiVjHam2gLidzRCdzNH8R2eFIKo3aPKI";s:5:"title";s:12:"Mercado Pago";s:11:"description";s:22:"Pagar con Mercado Pago";s:11:"category_id";s:2:"12";s:14:"invoice_prefix";s:3:"WC-";s:6:"method";s:6:"iframe";s:12:"iframe_width";s:3:"640";s:13:"iframe_height";s:3:"800";s:11:"auto_return";s:3:"yes";s:11:"success_url";s:0:"";s:11:"failure_url";s:0:"";s:11:"pending_url";s:0:"";s:19:"currency_conversion";s:2:"no";s:12:"installments";s:2:"24";s:11:"ex_payments";s:0:"";s:16:"gateway_discount";s:0:"";s:5:"debug";s:3:"yes";}', 'yes'),
(740, 'woocommerce_woocommerce-mercadopago-custom-module_settings', 'a:14:{s:7:"enabled";s:2:"no";s:10:"public_key";s:41:"TEST-f9a65e1b-7500-4e54-9e22-5e1b3b4f69f7";s:12:"access_token";s:80:"TEST-8540799116050161-052215-a635cb2a39c2c8ca1e66ffbdb1ae4a1c__LA_LC__-220510641";s:5:"title";s:34:"Mercado Pago - Tarjeta de Crédito";s:11:"description";s:22:"Pagar con Mercado Pago";s:20:"statement_descriptor";s:12:"Mercado Pago";s:11:"coupon_mode";s:2:"no";s:11:"binary_mode";s:2:"no";s:11:"category_id";s:2:"12";s:14:"invoice_prefix";s:3:"WC-";s:19:"currency_conversion";s:2:"no";s:16:"gateway_discount";s:1:"0";s:7:"sandbox";s:2:"no";s:5:"debug";s:3:"yes";}', 'yes'),
(753, '_site_transient_timeout_browser_973b0af64fa9ae42ab017fa2edcf5878', '1496088581', 'no'),
(754, '_site_transient_browser_973b0af64fa9ae42ab017fa2edcf5878', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(755, '_transient_orders-transient-version', '1495833013', 'yes'),
(756, '_transient_timeout_yith_wcwl_user_default_count_1', '1496437624', 'no'),
(757, '_transient_yith_wcwl_user_default_count_1', '0', 'no'),
(760, 'woocommerce_woocommerce-mercadopago-ticket-module_settings', 'a:11:{s:7:"enabled";s:2:"no";s:12:"access_token";s:80:"TEST-8540799116050161-052215-a635cb2a39c2c8ca1e66ffbdb1ae4a1c__LA_LC__-220510641";s:5:"title";s:21:"Mercado Pago - Ticket";s:11:"description";s:22:"Pagar con Mercado Pago";s:11:"coupon_mode";s:2:"no";s:11:"category_id";s:2:"12";s:14:"invoice_prefix";s:3:"WC-";s:19:"currency_conversion";s:2:"no";s:25:"reduce_stock_on_order_gen";s:3:"yes";s:16:"gateway_discount";s:0:"";s:5:"debug";s:3:"yes";}', 'yes'),
(764, 'woocommerce_bacs_accounts', 'a:2:{i:0;a:6:{s:12:"account_name";s:18:"Beatriz Villamizar";s:14:"account_number";s:20:"12345678910111121314";s:9:"bank_name";s:18:"banco de venezuela";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}i:1;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(771, '_transient_timeout_external_ip_address_::1', '1496659703', 'no'),
(772, '_transient_external_ip_address_::1', '186.93.236.3', 'no'),
(773, 'auto_updater.lock', '1496054917', 'no'),
(774, '_site_transient_timeout_theme_roots', '1496056722', 'no'),
(775, '_site_transient_theme_roots', 'a:11:{s:11:"alpha-store";s:7:"/themes";s:6:"e-shop";s:7:"/themes";s:6:"estore";s:7:"/themes";s:10:"giga-store";s:7:"/themes";s:10:"layerstore";s:7:"/themes";s:8:"maxstore";s:7:"/themes";s:10:"sauna-lite";s:7:"/themes";s:8:"thestore";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(781, 'woocommerce_woocommerce-mercadopago-subscription-module_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(794, 'ywau_max_file_size', '1', 'yes'),
(795, 'ywau_allowed_extension', 'jpg,png,pdf,doc,docx,ppt,pptx', 'yes'),
(796, 'ywau_allow_wc-on-hold', 'yes', 'yes'),
(797, 'ywau_allow_wc-pending', 'yes', 'yes'),
(798, 'ywau_allow_wc-processing', 'yes', 'yes'),
(799, 'ywau_allow_upload_on_cart', 'no', 'yes'),
(800, '_transient_loco_po_009d55991e5731581a66779e7ebef457', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:93:"plugins/yith-woocommerce-additional-uploads/languages/yith-woocommerce-additional-uploads.pot";s:5:"bytes";i:19172;s:5:"mtime";i:1495454469;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:64;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(803, '_transient_loco_po_58f7167695070f80221059779bc4a37f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:98:"plugins/yith-woocommerce-additional-uploads/languages/yith-woocommerce-additional-uploads-es_ES.po";s:5:"bytes";i:33932;s:5:"mtime";i:1495454469;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:64;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(804, '_transient_loco_po_5932ca16ee036bb2e5f767ac96f402ce', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:98:"plugins/yith-woocommerce-additional-uploads/languages/yith-woocommerce-additional-uploads-it_IT.po";s:5:"bytes";i:35797;s:5:"mtime";i:1495454469;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:64;s:1:"p";i:56;s:1:"f";i:0;}}}', 'yes'),
(805, '_transient_loco_po_a6801272504b022fbd5f0d16dbd3117e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:87:"plugins/yith-woocommerce-additional-uploads/plugin-fw/languages/yith-plugin-fw-es_ES.po";s:5:"bytes";i:39608;s:5:"mtime";i:1495454470;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(806, '_transient_loco_po_a26a78b279c3eb454d0d01f07373c1d4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:87:"plugins/yith-woocommerce-additional-uploads/plugin-fw/languages/yith-plugin-fw-it_IT.po";s:5:"bytes";i:42298;s:5:"mtime";i:1495454470;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(807, '_transient_loco_po_38df628df732e524cee2cc2d727a3179', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:82:"plugins/yith-woocommerce-additional-uploads/plugin-fw/languages/yith-plugin-fw.pot";s:5:"bytes";i:25476;s:5:"mtime";i:1495454470;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(808, 'ywau_allow_wc-completed', 'yes', 'yes'),
(823, 'ywsl_general_videobox', 'a:7:{s:11:"plugin_name";s:29:"YITH WooCommerce Social Login";s:18:"title_first_column";s:26:"Discover Advanced Features";s:24:"description_first_column";s:93:"Upgrade to the PREMIUM VERSION\nof YITH WooCommerce Social Login to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"125910673";s:15:"video_image_url";s:127:"http://localhost/distribuidora/wp-content/plugins/yith-woocommerce-social-login/assets/images/yith-woocommerce-social-login.jpg";s:17:"video_description";s:29:"YITH WooCommerce Social Login";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:199:"By purchasing the premium version of the plugin, you will benefit from the advanced features of the product and you will get one year of free update and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:81:"http://yithemes.com/themes/plugins/yith-woocommerce-social-login?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(824, 'ywsl_social_label', 'entra con', 'yes'),
(825, 'ywsl_social_label_checkout', 'redes sociales', 'yes'),
(826, 'ywsl_facebook_enable', 'yes', 'yes'),
(827, 'ywsl_facebook_id', '', 'yes'),
(828, 'ywsl_facebook_secret', '', 'yes'),
(829, 'ywsl_twitter_enable', 'yes', 'yes'),
(830, 'ywsl_twitter_key', '', 'yes'),
(831, 'ywsl_twitter_secret', '', 'yes'),
(832, 'ywsl_google_enable', 'yes', 'yes'),
(833, 'ywsl_google_id', '', 'yes'),
(834, 'ywsl_google_secret', '', 'yes'),
(841, 'yith_wcas_general_videobox', 'a:7:{s:11:"plugin_name";s:31:"YITH WooCommerce Order Tracking";s:18:"title_first_column";s:26:"Discover Advanced Features";s:24:"description_first_column";s:95:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE ORDER TRACKING to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118598446";s:15:"video_image_url";s:137:"http://localhost/distribuidora/wp-content/plugins/yith-woocommerce-order-tracking/assets/images/yith-woocommerce-order-tracking-video.jpg";s:17:"video_description";s:79:"See YITH WooCommerce Order tracking plugin with full premium features in action";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:84:"http://yithemes.com/themes/plugins/yith-woocommerce-order-tracking/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(842, 'ywot_order_tracking_text', 'Tu orden ha sido enviada [carrier_name] en [pickup_date]. tu codigo de rastreo es [track_code].', 'yes'),
(843, 'ywot_order_tracking_text_position', '1', 'yes'),
(844, 'ywot_carrier_default_name', 'Envio', 'yes'),
(850, '_transient_loco_po_2c93f3da6c8d8cc83b2747e0bfe4030a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"themes/maxstore/languages/es_VE.po";s:5:"bytes";i:39021;s:5:"mtime";i:1495466461;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:378;s:1:"p";i:43;s:1:"f";i:0;}}}', 'yes'),
(853, '_transient_loco_po_ebe6b07704ae1b2f6e2d09b094965a9a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:55:"plugins/woocommerce/i18n/languages/woocommerce-es_ES.po";s:5:"bytes";i:622050;s:5:"mtime";i:1495422208;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4790;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(855, '_transient_loco_po_6bd55babcc7b31094db927bcc3a86790', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:55:"plugins/woocommerce/i18n/languages/woocommerce-es_VE.po";s:5:"bytes";i:622777;s:5:"mtime";i:1495467426;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4790;s:1:"p";i:59;s:1:"f";i:0;}}}', 'yes'),
(894, 'widget_yith-woo-ajax-navigation', 'a:2:{i:3;a:9:{s:5:"title";s:16:"Buscar Productos";s:9:"attribute";s:0:"";s:10:"query_type";s:3:"and";s:4:"type";s:4:"list";s:6:"colors";a:0:{}s:10:"multicolor";a:0:{}s:6:"labels";a:0:{}s:7:"display";s:3:"all";s:11:"extra_class";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(895, 'widget_yith-woo-ajax-reset-navigation', 'a:2:{i:2;a:2:{s:5:"title";s:16:"Buscar Productos";s:5:"label";s:17:"Reset All Filters";}s:12:"_multiwidget";i:1;}', 'yes'),
(896, 'yit_wcan_options', 'a:7:{s:29:"yith_wcan_ajax_shop_container";s:9:".products";s:30:"yith_wcan_ajax_shop_pagination";s:26:"nav.woocommerce-pagination";s:36:"yith_wcan_ajax_shop_result_container";s:25:".woocommerce-result-count";s:31:"yith_wcan_ajax_scroll_top_class";s:19:".yit-wcan-container";s:31:"yith_wcan_ajax_shop_terms_order";s:12:"alphabetical";s:22:"yith_wcan_custom_style";s:0:"";s:30:"yith_wcan_frontend_description";s:2:"no";}', 'yes'),
(901, 'wpo_wcpdf_next_invoice_number', '10', 'yes'),
(913, 'wc_apm_label', '', 'yes'),
(914, 'wc_apm_american_express', 'no', 'yes'),
(915, 'wc_apm_google', 'no', 'yes'),
(916, 'wc_apm_mastercard', 'yes', 'yes'),
(917, 'wc_apm_paypal', 'no', 'yes'),
(918, 'wc_apm_visa', 'yes', 'yes'),
(919, 'wc_apm_discover', 'no', 'yes'),
(920, 'wc_apm_bitcoin', 'no', 'yes'),
(921, 'wc_apm_maestro', 'yes', 'yes'),
(922, 'wc_apm_cash_on_delivery', 'no', 'yes'),
(923, 'wc_apm_dankort', 'no', 'yes'),
(924, 'widget_accepted_payment_methods', 'a:2:{i:2;a:1:{s:5:"title";s:24:"Accepted Payment Methods";}s:12:"_multiwidget";i:1;}', 'yes'),
(925, 'woocommerce_gateway_order', 'a:8:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;s:30:"woocommerce-mercadopago-module";i:4;s:37:"woocommerce-mercadopago-custom-module";i:5;s:37:"woocommerce-mercadopago-ticket-module";i:6;s:43:"woocommerce-mercadopago-subscription-module";i:7;}', 'yes'),
(926, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:4:"p=10";i:1;s:7:"/carro/";i:2;s:4:"p=11";i:3;s:19:"/finalizar-comprar/";i:4;s:4:"p=12";i:5;s:11:"/mi-cuenta/";}', 'yes'),
(930, 'wc_fields_billing', 'a:12:{s:18:"billing_first_name";a:15:{s:5:"label";s:15:"Nombre completo";s:8:"required";b:1;s:5:"class";a:1:{i:0;s:14:"form-row-first";}s:12:"autocomplete";s:10:"given-name";s:9:"autofocus";b:1;s:8:"priority";i:10;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:0;s:5:"order";s:0:"";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:23:"billing_nombre_completo";a:14:{s:4:"type";s:4:"text";s:5:"label";s:15:"Nombre completo";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:5:"class";a:1:{i:0;s:13:"form-row-wide";}s:11:"label_class";a:0:{}s:8:"required";b:1;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"1";s:8:"validate";a:0:{}s:6:"custom";b:1;s:13:"show_in_email";b:1;s:13:"show_in_order";b:1;}s:24:"billing_cedula_identidad";a:14:{s:4:"type";s:6:"select";s:5:"label";s:22:"Documento de identidad";s:11:"placeholder";s:0:"";s:7:"options";a:5:{s:10:"seleccione";s:10:"seleccione";s:1:"V";s:1:"V";s:1:"E";s:1:"E";s:1:"P";s:1:"P";s:1:"J";s:1:"J";}s:5:"class";a:1:{i:0;s:13:"form-row-wide";}s:11:"label_class";a:0:{}s:8:"required";b:1;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"2";s:8:"validate";a:0:{}s:6:"custom";b:1;s:13:"show_in_email";b:1;s:13:"show_in_order";b:1;}s:27:"billing_documento_identidad";a:14:{s:4:"type";s:4:"text";s:5:"label";s:12:"Cedula o RIF";s:11:"placeholder";s:34:"RIf solo para empresas registradas";s:7:"options";a:0:{}s:5:"class";a:1:{i:0;s:13:"form-row-wide";}s:11:"label_class";a:0:{}s:8:"required";b:1;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"4";s:8:"validate";a:1:{i:0;s:5:"phone";}s:6:"custom";b:1;s:13:"show_in_email";b:1;s:13:"show_in_order";b:1;}s:15:"billing_company";a:14:{s:5:"label";s:17:"Nombre de empresa";s:5:"class";a:1:{i:0;s:13:"form-row-wide";}s:12:"autocomplete";s:12:"organization";s:8:"priority";i:30;s:4:"type";s:4:"text";s:11:"placeholder";s:25:"En el caso de que aplique";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:8:"required";b:0;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"6";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:13:"billing_state";a:14:{s:4:"type";s:5:"state";s:5:"label";s:6:"Estado";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"validate";a:1:{i:0;s:5:"state";}s:12:"autocomplete";s:14:"address-level1";s:8:"priority";i:80;s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"7";s:6:"custom";b:0;}s:12:"billing_city";a:13:{s:5:"label";s:6:"Ciudad";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:12:"autocomplete";s:14:"address-level2";s:8:"priority";i:70;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"8";s:6:"custom";b:0;}s:17:"billing_address_1";a:13:{s:5:"label";s:26:"Direccion (No obligatoria)";s:11:"placeholder";s:36:"urbanizacion sector av calle carrera";s:8:"required";b:0;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:12:"autocomplete";s:13:"address-line1";s:8:"priority";i:50;s:4:"type";s:4:"text";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"9";s:6:"custom";b:0;}s:16:"billing_postcode";a:14:{s:5:"label";s:13:"Codigo postal";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"validate";a:1:{i:0;s:8:"postcode";}s:12:"autocomplete";s:11:"postal-code";s:8:"priority";i:90;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:2:"10";s:6:"custom";b:0;}s:13:"billing_phone";a:14:{s:5:"label";s:8:"Telefono";s:8:"required";b:1;s:4:"type";s:3:"tel";s:5:"class";a:1:{i:0;s:14:"form-row-first";}s:8:"validate";a:1:{i:0;s:5:"phone";}s:12:"autocomplete";s:3:"tel";s:8:"priority";i:100;s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:2:"11";s:6:"custom";b:0;}s:13:"billing_email";a:14:{s:5:"label";s:18:"Correo electronico";s:8:"required";b:1;s:4:"type";s:5:"email";s:5:"class";a:1:{i:0;s:13:"form-row-last";}s:8:"validate";a:1:{i:0;s:5:"email";}s:12:"autocomplete";s:5:"email";s:8:"priority";i:110;s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:2:"12";s:6:"custom";b:0;}s:17:"billing_address_2";a:13:{s:11:"placeholder";s:37:"Numero de casa / edificio apartamento";s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"required";b:0;s:12:"autocomplete";s:13:"address-line2";s:8:"priority";i:60;s:4:"type";s:4:"text";s:5:"label";s:9:"Direccion";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:0;s:5:"order";s:2:"13";s:6:"custom";b:0;}}', 'yes'),
(931, 'wc_fields_additional', 'a:1:{s:14:"order_comments";a:11:{s:4:"type";s:8:"textarea";s:5:"class";a:1:{i:0;s:5:"notes";}s:5:"label";s:22:"Información adicional";s:11:"placeholder";s:38:"Información adicional sobre tu compra";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:8:"required";b:0;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:0:"";s:6:"custom";b:0;}}', 'yes'),
(932, 'wc_fields_shipping', 'a:9:{s:19:"shipping_first_name";a:15:{s:5:"label";s:15:"Nombre completo";s:8:"required";b:1;s:5:"class";a:1:{i:0;s:14:"form-row-first";}s:12:"autocomplete";s:10:"given-name";s:9:"autofocus";b:1;s:8:"priority";i:10;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:0:"";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:18:"shipping_last_name";a:14:{s:5:"label";s:9:"Last name";s:8:"required";b:1;s:5:"class";a:1:{i:0;s:13:"form-row-last";}s:12:"autocomplete";s:11:"family-name";s:8:"priority";i:20;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:0;s:5:"order";s:1:"1";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:16:"shipping_company";a:14:{s:5:"label";s:31:"Nombre de compañia (si aplica)";s:5:"class";a:1:{i:0;s:13:"form-row-wide";}s:12:"autocomplete";s:12:"organization";s:8:"priority";i:30;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:8:"required";b:0;s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"2";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:16:"shipping_country";a:14:{s:4:"type";s:7:"country";s:5:"label";s:4:"Pais";s:8:"required";b:1;s:5:"class";a:3:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";i:2;s:23:"update_totals_on_change";}s:12:"autocomplete";s:7:"country";s:8:"priority";i:40;s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:0;s:5:"order";s:1:"3";s:8:"validate";a:0:{}s:6:"custom";b:0;}s:13:"shipping_city";a:13:{s:5:"label";s:6:"Ciudad";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:12:"autocomplete";s:14:"address-level2";s:8:"priority";i:70;s:4:"type";s:4:"text";s:11:"placeholder";s:6:"Ciudad";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"4";s:6:"custom";b:0;}s:14:"shipping_state";a:14:{s:4:"type";s:5:"state";s:5:"label";s:6:"Estado";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"validate";a:1:{i:0;s:5:"state";}s:12:"autocomplete";s:14:"address-level1";s:8:"priority";i:80;s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"5";s:6:"custom";b:0;}s:18:"shipping_address_1";a:13:{s:5:"label";s:9:"Direccion";s:11:"placeholder";s:44:"sector urbanización calle av numero de casa";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:12:"autocomplete";s:13:"address-line1";s:8:"priority";i:50;s:4:"type";s:4:"text";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"6";s:6:"custom";b:0;}s:18:"shipping_address_2";a:13:{s:11:"placeholder";s:37:"Numero de casa / apartamento edificio";s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"required";b:0;s:12:"autocomplete";s:13:"address-line2";s:8:"priority";i:60;s:4:"type";s:4:"text";s:5:"label";s:13:"dirección ()";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:0;s:5:"order";s:1:"7";s:6:"custom";b:0;}s:17:"shipping_postcode";a:14:{s:5:"label";s:14:"Código postal";s:8:"required";b:1;s:5:"class";a:2:{i:0;s:13:"form-row-wide";i:1;s:13:"address-field";}s:8:"validate";a:1:{i:0;s:8:"postcode";}s:12:"autocomplete";s:11:"postal-code";s:8:"priority";i:90;s:4:"type";s:4:"text";s:11:"placeholder";s:0:"";s:7:"options";a:0:{}s:11:"label_class";a:0:{}s:5:"clear";b:0;s:7:"enabled";b:1;s:5:"order";s:1:"8";s:6:"custom";b:0;}}', 'yes'),
(939, '_transient_loco_po_1585301dc229d44f1edc8ba3d921f547', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:76:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module.pot";s:5:"bytes";i:26810;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(942, '_transient_loco_po_35bb23481b2e0fb90d1d3b7e86b87d85', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_AR.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(943, '_transient_loco_po_338729427972684abda9a7f9e9447657', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_CL.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(944, '_transient_loco_po_e43430918d3a2091d9cece572ae3681d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_CO.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(945, '_transient_loco_po_118c4efbf8e1de24e92c8ab76fca67b3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_ES.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(946, '_transient_loco_po_495af8ce96941c7589bca613de835943', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_MX.po";s:5:"bytes";i:38736;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(947, '_transient_loco_po_f55852cfba152b9e71a73fdb4fa6b4e1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_PE.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(948, '_transient_loco_po_d551903849ecf42f52adbdb2dfaadcc7', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_UY.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(949, '_transient_loco_po_8d0903a36c448b64f862c9bd80632a32', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-es_VE.po";s:5:"bytes";i:38709;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:282;s:1:"f";i:0;}}}', 'yes'),
(950, '_transient_loco_po_48d1a69fb8a24b71f0e0965ef2a48f80', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:81:"plugins/woo-mercado-pago-module/languages/woocommerce-mercadopago-module-pt_BR.po";s:5:"bytes";i:38943;s:5:"mtime";i:1495481756;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:282;s:1:"p";i:281;s:1:"f";i:0;}}}', 'yes'),
(951, '_transient_loco_po_bf63daacb1be475e27a6f3538000b57c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:31:"plugins/cmb2/languages/cmb2.pot";s:5:"bytes";i:16768;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:151;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(952, '_transient_loco_po_1da9e2bc49abcc4b81575b6f8df46123', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"plugins/cmb2/languages/cmb2-ach.po";s:5:"bytes";i:11438;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(953, '_transient_loco_po_675e8c670c08d498b386b1735aadd005', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-af.po";s:5:"bytes";i:11531;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:11;s:1:"f";i:0;}}}', 'yes'),
(954, '_transient_loco_po_b3489a5a67fbb413077480ca702dcff2', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-an.po";s:5:"bytes";i:11537;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:9;s:1:"f";i:0;}}}', 'yes'),
(955, '_transient_loco_po_7abfa0b98bb96b016982fa2feb85f92f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ar.po";s:5:"bytes";i:15688;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(956, '_transient_loco_po_051caa35e5e00bab3f7d6174053dfd10', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"plugins/cmb2/languages/cmb2-ary.po";s:5:"bytes";i:12537;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:104;s:1:"p";i:104;s:1:"f";i:0;}}}', 'yes'),
(957, '_transient_loco_po_1eaa959b3442a7de5035df5cea18eab9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-as.po";s:5:"bytes";i:11440;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(958, '_transient_loco_po_8e72f5af5352b1d5c4822eb6326019bd', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-az.po";s:5:"bytes";i:11669;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(959, '_transient_loco_po_c9b9018ccac27295ed0026be3a216db3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-be.po";s:5:"bytes";i:11771;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:11;s:1:"f";i:0;}}}', 'yes'),
(960, '_transient_loco_po_83e331d41434174d064d68d7c051bfa1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-bg.po";s:5:"bytes";i:10366;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:106;s:1:"p";i:2;s:1:"f";i:0;}}}', 'yes'),
(961, '_transient_loco_po_93c305104bd9bcdf69a7ab7d619859d1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-bg_BG.po";s:5:"bytes";i:11784;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(962, '_transient_loco_po_21bfa3d76b90829bdc2e61cf5a3211f3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-bn_BD.po";s:5:"bytes";i:11851;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(963, '_transient_loco_po_3e4c86f622dd70459e1c10072eeccd2e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-br.po";s:5:"bytes";i:11437;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(964, '_transient_loco_po_04d02ee3deff2ed171069d717bcb4f1f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-bs.po";s:5:"bytes";i:10410;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:106;s:1:"p";i:2;s:1:"f";i:0;}}}', 'yes'),
(965, '_transient_loco_po_a7169f6677c6932b3005e77ce72e4b3a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-bs_BA.po";s:5:"bytes";i:11698;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(966, '_transient_loco_po_9096526a68d666159b677334a71e349c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ca.po";s:5:"bytes";i:11626;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(967, '_transient_loco_po_da52b8954a6e6c023e33c4900c9884a5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-co.po";s:5:"bytes";i:11451;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:1;s:1:"f";i:0;}}}', 'yes'),
(968, '_transient_loco_po_033b2a8bf40e4c4fae468577d1d5e399', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-cs_CZ.po";s:5:"bytes";i:11682;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(969, '_transient_loco_po_463aadc5e022848313a29adb01a2a488', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-cy.po";s:5:"bytes";i:11638;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(970, '_transient_loco_po_33ff9996d9e775831ecb15509f05438b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-da_DK.po";s:5:"bytes";i:11614;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:20;s:1:"f";i:0;}}}', 'yes'),
(971, '_transient_loco_po_28c31bdcfa81a774b64e04c2204ebb8a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-de_AT.po";s:5:"bytes";i:11454;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(972, '_transient_loco_po_7ab21e0fffee69de7db495d3b4fb3f3e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-de_CH.po";s:5:"bytes";i:13902;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(973, '_transient_loco_po_70d6af99bafda96d86f8a9f2bd2c662b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-de_DE.po";s:5:"bytes";i:14040;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(974, '_transient_loco_po_78d0e0277650a9b01c333e23e9561d6c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-dv.po";s:5:"bytes";i:11438;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(975, '_transient_loco_po_a71a97ad90d6d0cad5d05d78726ce6c8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-el.po";s:5:"bytes";i:11776;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(976, '_transient_loco_po_05c80a0859c2f33a7a541a2baf590e30', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:40:"plugins/cmb2/languages/cmb2-en@pirate.po";s:5:"bytes";i:11460;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(977, '_transient_loco_po_00504592f27b0d481fce42d6d05d6998', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-en_AU.po";s:5:"bytes";i:11596;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(978, '_transient_loco_po_200d0a9f786123bea1a1bf592fb73309', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-en_CA.po";s:5:"bytes";i:11593;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(979, '_transient_loco_po_64fb20cea89d3ac58c1c189003aa2b3e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-en_GB.po";s:5:"bytes";i:11607;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(980, '_transient_loco_po_7391d5b585b182ae1479539dea6b09f8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-eo.po";s:5:"bytes";i:11594;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(981, '_transient_loco_po_bdf27f9abb03f3a2364689a75c9a9b64', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_AR.po";s:5:"bytes";i:11563;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:12;s:1:"f";i:0;}}}', 'yes'),
(982, '_transient_loco_po_f8fb3a0e44622c324972095c9e49acb9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_CL.po";s:5:"bytes";i:11636;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:16;s:1:"f";i:0;}}}', 'yes'),
(983, '_transient_loco_po_2208e5381de5bdd2139bddbbdae87719', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_CO.po";s:5:"bytes";i:11456;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(984, '_transient_loco_po_11576a9fbda4541675944fba954cddf6', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_ES.po";s:5:"bytes";i:14140;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(985, '_transient_loco_po_4cab153817073ffbd2d101f4f8088a59', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_MX.po";s:5:"bytes";i:11728;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:21;s:1:"f";i:0;}}}', 'yes'),
(986, '_transient_loco_po_9624081c98866c6dd718db323db323b8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_PE.po";s:5:"bytes";i:11641;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(987, '_transient_loco_po_b19d6af2b110140dfa96a77546620376', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-es_VE.po";s:5:"bytes";i:11574;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(988, '_transient_loco_po_d04fb946eaeb494e7bcd6449b022a077', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-et.po";s:5:"bytes";i:11606;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(989, '_transient_loco_po_a016233408a85622da4184f93aab7e7a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-eu.po";s:5:"bytes";i:11611;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(990, '_transient_loco_po_7efe65171bc7f7333bcf94941292351c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-fa.po";s:5:"bytes";i:11484;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:4;s:1:"f";i:0;}}}', 'yes'),
(991, '_transient_loco_po_b53f8e3c784dbf13b4613acb7458ce52', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-fa_IR.po";s:5:"bytes";i:11887;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:24;s:1:"f";i:0;}}}', 'yes'),
(992, '_transient_loco_po_9dc556c50f8d9a970967a526010fe6be', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-fi.po";s:5:"bytes";i:13951;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(993, '_transient_loco_po_8730304c34001a7c842753909db7623d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-fo.po";s:5:"bytes";i:11515;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:9;s:1:"f";i:0;}}}', 'yes'),
(994, '_transient_loco_po_494c1307336005cab21588053f37c1c2', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-fr_BE.po";s:5:"bytes";i:11453;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(995, '_transient_loco_po_1bb48ff1a8e9feeae634d2c166b536ca', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-fr_CA.po";s:5:"bytes";i:11452;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(996, '_transient_loco_po_c5ae4d6add3f2b91e60e104cde515bc3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-fr_FR.po";s:5:"bytes";i:14778;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:115;s:1:"f";i:0;}}}', 'yes'),
(997, '_transient_loco_po_e0cdfdc4b3ed7fbd2a354d5cfed3f25d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-fy.po";s:5:"bytes";i:11559;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(998, '_transient_loco_po_767daaa7435814982d78582447aad308', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ga.po";s:5:"bytes";i:11558;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(999, '_transient_loco_po_aed56b1910ffbd9bb533d3ccfa7579e3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-gd.po";s:5:"bytes";i:11724;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1000, '_transient_loco_po_d4f5cbe1acc67cada2039e22a737e56e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-gl_ES.po";s:5:"bytes";i:11615;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1001, '_transient_loco_po_268ee67679751cc2d137959037920da3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-gu_IN.po";s:5:"bytes";i:11454;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1002, '_transient_loco_po_7bae834fe369bc365504a8f7c7357e47', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-he_IL.po";s:5:"bytes";i:11659;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1003, '_transient_loco_po_d823e3957dcf9f4df520728305526ab4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-hi_IN.po";s:5:"bytes";i:11663;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1004, '_transient_loco_po_59a4220af637b00bb20a8e97e531ef80', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-hr.po";s:5:"bytes";i:11672;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1005, '_transient_loco_po_ada2812c441ca9e447c9c215f6dbbf3b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-hu_HU.po";s:5:"bytes";i:11710;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:22;s:1:"f";i:0;}}}', 'yes'),
(1006, '_transient_loco_po_1c21a2c3b4992a462c0b3ca6dc27e5c9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-hy.po";s:5:"bytes";i:11440;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1007, '_transient_loco_po_ee5432d0ad813a95eadb7423ad91f30a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-id_ID.po";s:5:"bytes";i:13238;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:84;s:1:"f";i:0;}}}', 'yes'),
(1008, '_transient_loco_po_9e8398903035837e2d52a1973bcc9d62', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-is_IS.po";s:5:"bytes";i:11627;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1009, '_transient_loco_po_6f0d6b082f673da7354b8c4571291ea0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-it_IT.po";s:5:"bytes";i:13830;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(1010, '_transient_loco_po_c192239cacecbabba25b669d74de644a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ja.po";s:5:"bytes";i:11631;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(1011, '_transient_loco_po_de10b4ef8c0c8e4844feb2bf8e3fb248', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-jv.po";s:5:"bytes";i:11561;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:11;s:1:"f";i:0;}}}', 'yes'),
(1012, '_transient_loco_po_c838544236972d706964b876044d6b75', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ka.po";s:5:"bytes";i:11547;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:5;s:1:"f";i:0;}}}', 'yes'),
(1013, '_transient_loco_po_6666e64cb8f04e20f69e4248d3c78a58', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ka_GE.po";s:5:"bytes";i:11890;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:14;s:1:"f";i:0;}}}', 'yes'),
(1014, '_transient_loco_po_963ea701c34946150128428f9401cbdb', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-kk.po";s:5:"bytes";i:11619;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:9;s:1:"f";i:0;}}}', 'yes'),
(1015, '_transient_loco_po_090e8da32d6f1cac73b3fb7913d01663', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-km.po";s:5:"bytes";i:11874;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1016, '_transient_loco_po_1b20b0a4d682f02222159bddd90340f2', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-kn.po";s:5:"bytes";i:11714;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1017, '_transient_loco_po_c4d644904de8e80acc0b6aec4c881018', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ko_KR.po";s:5:"bytes";i:11612;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1018, '_transient_loco_po_a08b651f675e271d4b45818555c42318', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ku.po";s:5:"bytes";i:11439;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1019, '_transient_loco_po_a42d4f4c0274ad867b172da43f7d9f29', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ky.po";s:5:"bytes";i:11657;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:14;s:1:"f";i:0;}}}', 'yes'),
(1020, '_transient_loco_po_4080cd723b8c062c23714e6a37875341', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-lo.po";s:5:"bytes";i:11653;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:11;s:1:"f";i:0;}}}', 'yes'),
(1021, '_transient_loco_po_b6a13f74d1db89b3fbdfe15e20fe2012', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-lt_LT.po";s:5:"bytes";i:12319;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:39;s:1:"f";i:0;}}}', 'yes'),
(1022, '_transient_loco_po_8f49370e20a15e5a3b2ad51f3af46c42', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-lv.po";s:5:"bytes";i:11669;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:16;s:1:"f";i:0;}}}', 'yes'),
(1023, '_transient_loco_po_662aab4108b1daa60ef614d8da3c4ea7', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-mg.po";s:5:"bytes";i:11529;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1024, '_transient_loco_po_ff5829aba40307d806f3d78333c977f8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-mk_MK.po";s:5:"bytes";i:11767;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1025, '_transient_loco_po_e58f8bcd43fee5d488211eccf20a495f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-mn.po";s:5:"bytes";i:11601;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:9;s:1:"f";i:0;}}}', 'yes'),
(1026, '_transient_loco_po_29238ed73fb03927f10bb2c1b910bf21', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-mr.po";s:5:"bytes";i:11439;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1027, '_transient_loco_po_83936b14f50ea23b511528cbedcda80b', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ms_MY.po";s:5:"bytes";i:12643;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:78;s:1:"f";i:0;}}}', 'yes'),
(1028, '_transient_loco_po_a70cfda1d9235d62dcfaf80113fdb880', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-my_MM.po";s:5:"bytes";i:11987;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1029, '_transient_loco_po_7a04c39c3faabdb9e09e33a5a7f445f6', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-nb_NO.po";s:5:"bytes";i:11631;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1030, '_transient_loco_po_b9654abfd6dd75e13663ec3b23efc024', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ne_NP.po";s:5:"bytes";i:11788;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:12;s:1:"f";i:0;}}}', 'yes'),
(1031, '_transient_loco_po_416d49cb29b4db886e832257514ba99d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-nl_BE.po";s:5:"bytes";i:11453;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1032, '_transient_loco_po_de4147c4cc5912fd779a21fa910bbc46', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-nl_NL.po";s:5:"bytes";i:12578;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:61;s:1:"f";i:0;}}}', 'yes'),
(1033, '_transient_loco_po_a485db64ee8ca1ae4074f1775fe5bdb1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-nn_NO.po";s:5:"bytes";i:11596;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:15;s:1:"f";i:0;}}}', 'yes'),
(1034, '_transient_loco_po_7bf99d3d8ce3c9cfccabeb50403d25f0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-oc.po";s:5:"bytes";i:11478;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:3;s:1:"f";i:0;}}}', 'yes'),
(1035, '_transient_loco_po_ebc26cc3ca5e333682f1770fc478a415', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-os.po";s:5:"bytes";i:11608;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1036, '_transient_loco_po_50549cca5d655963eecf960e6a00384c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"plugins/cmb2/languages/cmb2-pap.po";s:5:"bytes";i:11444;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1037, '_transient_loco_po_a804cba0a8ef0d83bfacf432874b1fb1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-pl_PL.po";s:5:"bytes";i:12441;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:55;s:1:"f";i:0;}}}', 'yes'),
(1038, '_transient_loco_po_8d666dd06efec9d2ecbb05b70d4657a1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ps.po";s:5:"bytes";i:11634;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:16;s:1:"f";i:0;}}}', 'yes'),
(1039, '_transient_loco_po_9f5bb6d9fac9e8d828ddb7e4d2a19f50', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-pt_BR.po";s:5:"bytes";i:14001;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(1040, '_transient_loco_po_794acee61744497cea3aea34ec97a408', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-pt_PT.po";s:5:"bytes";i:17049;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:126;s:1:"p";i:126;s:1:"f";i:0;}}}', 'yes'),
(1041, '_transient_loco_po_83fc2a64629d102db7ca7be208c20ee2', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ro_RO.po";s:5:"bytes";i:11758;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:21;s:1:"f";i:0;}}}', 'yes'),
(1042, '_transient_loco_po_edcfcd087a1fd0d045f492cb6ce1a615', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ru_RU.po";s:5:"bytes";i:16394;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:114;s:1:"f";i:0;}}}', 'yes'),
(1043, '_transient_loco_po_8a1ca79c1125b444b20f0b93db93b970', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-sa.po";s:5:"bytes";i:11455;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1044, '_transient_loco_po_79a4be68fc4f4a844ffab66cf8f462e4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"plugins/cmb2/languages/cmb2-sah.po";s:5:"bytes";i:11570;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:8;s:1:"f";i:0;}}}', 'yes'),
(1045, '_transient_loco_po_cf225e1e490b6a3e1db5d1ea79337740', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-si_LK.po";s:5:"bytes";i:11840;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:15;s:1:"f";i:0;}}}', 'yes'),
(1046, '_transient_loco_po_e92e4e0a2beebcf8208e47fe290ac4c4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-sk_SK.po";s:5:"bytes";i:11697;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:20;s:1:"f";i:0;}}}', 'yes'),
(1047, '_transient_loco_po_c6981e26298ff1c799dc7fd6e610642a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-sl_SI.po";s:5:"bytes";i:11677;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1048, '_transient_loco_po_2d634788d9b6ffcab5b90857bd98faf9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-so.po";s:5:"bytes";i:11475;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:6;s:1:"f";i:0;}}}', 'yes'),
(1049, '_transient_loco_po_0bb9ed374f7294b6e5649fb7a341e0ce', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-sq.po";s:5:"bytes";i:11628;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1050, '_transient_loco_po_1f26f4b40258583c8304782cd3ac740a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-sr_RS.po";s:5:"bytes";i:11827;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1051, '_transient_loco_po_6935f558a908eebfa41c7196786cc6b1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-su.po";s:5:"bytes";i:11483;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:7;s:1:"f";i:0;}}}', 'yes'),
(1052, '_transient_loco_po_b7ff7fcde2cf367ab4976fa12f2e29e6', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-sv_SE.po";s:5:"bytes";i:13561;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:97;s:1:"f";i:0;}}}', 'yes'),
(1053, '_transient_loco_po_0c801aa83e9a3f518854f735519c1550', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-sw.po";s:5:"bytes";i:11523;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:11;s:1:"f";i:0;}}}', 'yes'),
(1054, '_transient_loco_po_fa2b14bdf141a8d521888a89d48e6870', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ta_IN.po";s:5:"bytes";i:11678;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1055, '_transient_loco_po_f2906f3f0d526942e8e89cae00fe0e88', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ta_LK.po";s:5:"bytes";i:13103;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:43;s:1:"f";i:0;}}}', 'yes'),
(1056, '_transient_loco_po_6b5e08cb1d42fbd0d83b364f1633e876', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-te.po";s:5:"bytes";i:11813;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:15;s:1:"f";i:0;}}}', 'yes'),
(1057, '_transient_loco_po_c4c50f7f9df48dbcbd14ed27c62035e5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-tg.po";s:5:"bytes";i:11596;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:9;s:1:"f";i:0;}}}', 'yes'),
(1058, '_transient_loco_po_9d634f55a773f6b38f6beecaed2c8e9d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-th.po";s:5:"bytes";i:11834;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:18;s:1:"f";i:0;}}}', 'yes'),
(1059, '_transient_loco_po_537657bc39a3f077e58f803cd4cb7179', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-tk_TM.po";s:5:"bytes";i:11464;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:1;s:1:"f";i:0;}}}', 'yes'),
(1060, '_transient_loco_po_6530d2663834b332f663ab1225351890', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-tl.po";s:5:"bytes";i:11622;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(1061, '_transient_loco_po_58b55590eda112494c7050b5594d3b0a', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-tr_TR.po";s:5:"bytes";i:11627;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:19;s:1:"f";i:0;}}}', 'yes'),
(1062, '_transient_loco_po_4f3ec63558097df94ae7e74eeb655ea8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:34:"plugins/cmb2/languages/cmb2-tzm.po";s:5:"bytes";i:11560;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:3;s:1:"f";i:0;}}}', 'yes'),
(1063, '_transient_loco_po_7604665371c6b35a73352f3dfcd504cb', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ug.po";s:5:"bytes";i:11765;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1064, '_transient_loco_po_bcd7b6eee82016d14ac4cfb90b8e921f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-uk.po";s:5:"bytes";i:11846;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:15;s:1:"f";i:0;}}}', 'yes'),
(1065, '_transient_loco_po_bb3c2c07dcaa87fce163cb4b3d8eda0f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-ur.po";s:5:"bytes";i:11582;s:5:"mtime";i:1495410841;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:10;s:1:"f";i:0;}}}', 'yes'),
(1066, '_transient_loco_po_a01ebd6e0d096626f263d96d8e8fe6c5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-ur_PK.po";s:5:"bytes";i:11453;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1067, '_transient_loco_po_fdf0d1c6260dfb89937a996bfb4316fc', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-uz.po";s:5:"bytes";i:11551;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:5;s:1:"f";i:0;}}}', 'yes'),
(1068, '_transient_loco_po_2247d1f5416de686dc121e3a5ff36850', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:33:"plugins/cmb2/languages/cmb2-vi.po";s:5:"bytes";i:11622;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1069, '_transient_loco_po_7a017dcb681fb498e7dc04fc663070f9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-zh_CN.po";s:5:"bytes";i:13491;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:99;s:1:"f";i:0;}}}', 'yes'),
(1070, '_transient_loco_po_19c1ade7af0596f4a28f4e5bf8580565', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-zh_HK.po";s:5:"bytes";i:11450;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1071, '_transient_loco_po_6ce59e35d322d903e354e3a1018ff2d4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:36:"plugins/cmb2/languages/cmb2-zh_TW.po";s:5:"bytes";i:11594;s:5:"mtime";i:1495410842;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:115;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1072, '_transient_loco_po_6dc4fba5973e6c56a8f4482e2f4a7ad4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:70:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf.pot";s:5:"bytes";i:19065;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:161;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1073, '_transient_loco_po_9585863d8408e9cfbcc710a2ac9c0039', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-cs_CZ.po";s:5:"bytes";i:22832;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:136;s:1:"p";i:136;s:1:"f";i:0;}}}', 'yes'),
(1074, '_transient_loco_po_aa9f8d633baff480ee22a141d1a95bbe', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-da_DK.po";s:5:"bytes";i:23143;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:136;s:1:"p";i:136;s:1:"f";i:0;}}}', 'yes'),
(1075, '_transient_loco_po_ca2ac39b8043008b02dfb9d309fc9445', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-de_DE.po";s:5:"bytes";i:20739;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:136;s:1:"p";i:112;s:1:"f";i:0;}}}', 'yes'),
(1076, '_transient_loco_po_1430930ea563f13480337b65b7908b80', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:82:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-de_DE_formal.po";s:5:"bytes";i:20739;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:136;s:1:"p";i:112;s:1:"f";i:0;}}}', 'yes'),
(1077, '_transient_loco_po_42106d5c3e82e0861e454534345a0dd6', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-en_AU.po";s:5:"bytes";i:10718;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:95;s:1:"p";i:2;s:1:"f";i:0;}}}', 'yes'),
(1078, '_transient_loco_po_c1d28c8069fc7b744dccf86aa2091552', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-es_ES.po";s:5:"bytes";i:23347;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:140;s:1:"p";i:127;s:1:"f";i:0;}}}', 'yes'),
(1079, '_transient_loco_po_3c72f0abbd68bfbeecaa55a4c99423a4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-et.po";s:5:"bytes";i:21477;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:137;s:1:"p";i:137;s:1:"f";i:0;}}}', 'yes'),
(1080, '_transient_loco_po_4f1a8bddcb9044ee95539608be8a7646', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-fi.po";s:5:"bytes";i:23842;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:140;s:1:"p";i:140;s:1:"f";i:0;}}}', 'yes'),
(1081, '_transient_loco_po_18586a0326265e20c03c28eda14e57df', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-fr_FR.po";s:5:"bytes";i:25037;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:139;s:1:"p";i:138;s:1:"f";i:0;}}}', 'yes'),
(1082, '_transient_loco_po_1deafa0af9f50f992ebb53fa5e069d48', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-hr.po";s:5:"bytes";i:24430;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:144;s:1:"p";i:144;s:1:"f";i:0;}}}', 'yes'),
(1083, '_transient_loco_po_dc3e7b048c6e1da8980a3ad368a99b31', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-hu_HU.po";s:5:"bytes";i:12971;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:95;s:1:"p";i:69;s:1:"f";i:9;}}}', 'yes'),
(1084, '_transient_loco_po_007b46e4f350f1af0d3c20bb3defcd25', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-it_IT.po";s:5:"bytes";i:22764;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:136;s:1:"p";i:133;s:1:"f";i:0;}}}', 'yes'),
(1085, '_transient_loco_po_e36e917fb8e098ab54487204005ac20e', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-ja.po";s:5:"bytes";i:13991;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:90;s:1:"p";i:85;s:1:"f";i:0;}}}', 'yes'),
(1086, '_transient_loco_po_0ddf2b7889ab8dfd201d8eaf91f3e54d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-nb_NO.po";s:5:"bytes";i:22280;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:147;s:1:"p";i:107;s:1:"f";i:0;}}}', 'yes'),
(1087, '_transient_loco_po_692c4ca87b4b7284b7555ff6cfdbc0db', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-nl_NL.po";s:5:"bytes";i:30553;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:161;s:1:"p";i:159;s:1:"f";i:0;}}}', 'yes'),
(1088, '_transient_loco_po_5f654020900888d3c111d0f117dd5bc8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-pl_PL.po";s:5:"bytes";i:28434;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:139;s:1:"p";i:112;s:1:"f";i:0;}}}', 'yes'),
(1089, '_transient_loco_po_ea847b5211466b0bdc172ec6f73066af', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-pt_BR.po";s:5:"bytes";i:13800;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:90;s:1:"p";i:90;s:1:"f";i:0;}}}', 'yes'),
(1090, '_transient_loco_po_d371b7dc07474bed12bcb0d0267884e3', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-pt_PT.po";s:5:"bytes";i:19992;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:140;s:1:"p";i:87;s:1:"f";i:0;}}}', 'yes'),
(1091, '_transient_loco_po_70610f1a287017b5bc5190ff721ac6c1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-ro_RO.po";s:5:"bytes";i:22002;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:144;s:1:"p";i:84;s:1:"f";i:0;}}}', 'yes'),
(1092, '_transient_loco_po_7a0f622b294c6f14ec066a134f5759b4', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-ru_RU.po";s:5:"bytes";i:15714;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:90;s:1:"p";i:90;s:1:"f";i:0;}}}', 'yes'),
(1093, '_transient_loco_po_9175103702eee5dbce6ade5adfec228d', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-sk_SK.po";s:5:"bytes";i:15348;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:90;s:1:"p";i:90;s:1:"f";i:0;}}}', 'yes'),
(1094, '_transient_loco_po_4f796de3a11b1fc24e8cbec6c402eefd', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-sl_SI.po";s:5:"bytes";i:22666;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:143;s:1:"p";i:143;s:1:"f";i:0;}}}', 'yes'),
(1095, '_transient_loco_po_dc43f1a758c2611fa2e61ce4c9a66467', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:75:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-sv_SE.po";s:5:"bytes";i:25335;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:161;s:1:"p";i:136;s:1:"f";i:0;}}}', 'yes'),
(1096, '_transient_loco_po_750ab0800b073d2fe0d3f4c0533fe755', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:72:"plugins/woocommerce-pdf-invoices-packing-slips/languages/wpo_wcpdf-uk.po";s:5:"bytes";i:15743;s:5:"mtime";i:1495575749;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:90;s:1:"p";i:90;s:1:"f";i:0;}}}', 'yes'),
(1097, '_transient_loco_po_647eb124c90b3954f40642d04ff6a2c5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/woocommerce-stock-manager/languages/woocommerce-stock-manager-cs_CZ.po";s:5:"bytes";i:8383;s:5:"mtime";i:1495554843;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:68;s:1:"p";i:62;s:1:"f";i:0;}}}', 'yes'),
(1098, '_transient_loco_po_b99247b4742afd1aa324835416d87b50', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/woocommerce-stock-manager/languages/woocommerce-stock-manager-es_ES.po";s:5:"bytes";i:8792;s:5:"mtime";i:1495557282;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:68;s:1:"p";i:65;s:1:"f";i:1;}}}', 'yes'),
(1099, '_transient_loco_po_f287a46cb5703e971ef96a8890bde6e0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/woocommerce-stock-manager/languages/woocommerce-stock-manager-fa_IR.po";s:5:"bytes";i:9381;s:5:"mtime";i:1495554843;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:68;s:1:"p";i:48;s:1:"f";i:0;}}}', 'yes'),
(1100, '_transient_loco_po_cf0cfb5e04ffe720ac326c3351451b37', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:78:"plugins/woocommerce-stock-manager/languages/woocommerce-stock-manager-sk_SK.po";s:5:"bytes";i:8346;s:5:"mtime";i:1495554843;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:68;s:1:"p";i:45;s:1:"f";i:0;}}}', 'yes'),
(1101, '_transient_loco_po_208ec5fe1a4a704b9468f65611076fa5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:87:"plugins/yith-woocommerce-ajax-navigation/languages/yith-woocommerce-ajax-navigation.pot";s:5:"bytes";i:11858;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:79;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1102, '_transient_loco_po_00a3055f0134dc0e27d5f515d586bdee', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:92:"plugins/yith-woocommerce-ajax-navigation/languages/yith-woocommerce-ajax-navigation-it_IT.po";s:5:"bytes";i:35619;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:79;s:1:"p";i:76;s:1:"f";i:0;}}}', 'yes'),
(1103, '_transient_loco_po_9cc334d0f4850884c3b7a8c758e3ca35', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:92:"plugins/yith-woocommerce-ajax-navigation/languages/yith-woocommerce-ajax-navigation-tr_TR.po";s:5:"bytes";i:13509;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:79;s:1:"p";i:17;s:1:"f";i:0;}}}', 'yes'),
(1104, '_transient_loco_po_121012683ca170a66665bb1ec2a7c2cb', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:84:"plugins/yith-woocommerce-ajax-navigation/plugin-fw/languages/yith-plugin-fw-es_ES.po";s:5:"bytes";i:39608;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(1105, '_transient_loco_po_9211af265e5a28b5ccb7fce118b0d637', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:84:"plugins/yith-woocommerce-ajax-navigation/plugin-fw/languages/yith-plugin-fw-it_IT.po";s:5:"bytes";i:42298;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:206;s:1:"f";i:0;}}}', 'yes'),
(1106, '_transient_loco_po_cc0d3327dcc9917102fc41f2ab9ab6d9', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:79:"plugins/yith-woocommerce-ajax-navigation/plugin-fw/languages/yith-plugin-fw.pot";s:5:"bytes";i:25476;s:5:"mtime";i:1495574814;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:206;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1107, '_transient_loco_po_a05df4738180629e0cfb37164d30bf82', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:67:"plugins/woocommerce-shortcodes/languages/woocommerce-shortcodes.pot";s:5:"bytes";i:5416;s:5:"mtime";i:1495410420;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:62;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1108, '_transient_loco_po_2e5a702bee3e487469c27fd5d56c402f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:51:"plugins/loco-translate/languages/loco-translate.pot";s:5:"bytes";i:35726;s:5:"mtime";i:1495422126;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:329;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1133, '_transient_timeout_plugin_slugs', '1495815010', 'no'),
(1134, '_transient_plugin_slugs', 'a:18:{i:0;s:13:"cmb2/init.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:15:"kirki/kirki.php";i:3;s:23:"loco-translate/loco.php";i:4;s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:7;s:43:"wc-frontend-manager/wc_frontend_manager.php";i:8;s:84:"woocommerce-frontend-shop-manager-free-version/woocommerce-frontend-shop-manager.php";i:9;s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:10;s:49:"woocommerce-shortcodes/woocommerce-shortcodes.php";i:11;s:55:"woocommerce-stock-manager/woocommerce-stock-manager.php";i:12;s:46:"woo-mercado-pago-module/mercadopago-module.php";i:13;s:41:"yith-woocommerce-ajax-navigation/init.php";i:14;s:40:"yith-woocommerce-order-tracking/init.php";i:15;s:38:"yith-woocommerce-social-login/init.php";i:16;s:44:"yith-woocommerce-additional-uploads/init.php";i:17;s:34:"yith-woocommerce-wishlist/init.php";}', 'no'),
(1141, 'wcmp_general_settings_name', 'a:4:{s:19:"enable_registration";s:6:"Enable";s:23:"approve_vendor_manually";s:6:"Enable";s:12:"is_policy_on";s:6:"Enable";s:27:"is_singleproductmultiseller";s:6:"Enable";}', 'yes'),
(1142, 'wcmp_capabilities_product_settings_name', 'a:18:{s:15:"is_upload_files";s:6:"Enable";s:17:"is_submit_product";s:6:"Enable";s:9:"inventory";s:6:"Enable";s:8:"shipping";s:6:"Enable";s:15:"linked_products";s:6:"Enable";s:9:"attribute";s:6:"Enable";s:8:"advanced";s:6:"Enable";s:6:"simple";s:6:"Enable";s:8:"variable";s:6:"Enable";s:7:"grouped";s:6:"Enable";s:8:"external";s:6:"Enable";s:7:"virtual";s:6:"Enable";s:12:"downloadable";s:6:"Enable";s:3:"sku";s:6:"Enable";s:5:"taxes";s:6:"Enable";s:11:"add_comment";s:6:"Enable";s:11:"comment_box";s:6:"Enable";s:10:"stylesheet";s:0:"";}', 'yes'),
(1143, 'wcmp_capabilities_miscellaneous_settings_name', 'a:1:{s:19:"is_hide_option_show";s:6:"Enable";}', 'yes'),
(1144, 'wcmp_payment_settings_name', 'a:4:{s:25:"commission_include_coupon";s:6:"Enable";s:8:"give_tax";s:6:"Enable";s:13:"give_shipping";s:6:"Enable";s:15:"commission_type";s:7:"percent";}', 'yes'),
(1145, 'wcmp_frontend_settings_name', 'a:4:{s:25:"sold_by_cart_and_checkout";s:6:"Enable";s:15:"sold_by_catalog";s:6:"Enable";s:19:"catalog_colorpicker";s:7:"#000000";s:25:"catalog_hover_colorpicker";s:7:"#000000";}', 'yes'),
(1146, 'wcmp_product_vendor_vendor_page_id', '133', 'yes'),
(1147, 'wcmp_product_vendor_registration_page_id', '134', 'yes'),
(1148, 'wcmp_vendor_general_settings_name', 'a:2:{s:11:"wcmp_vendor";i:133;s:19:"vendor_registration";i:134;}', 'yes'),
(1150, 'is_wcmp_product_sync_with_multivendor', '1', 'yes'),
(1151, 'dc_product_vendor_plugin_db_version', '2.6.5', 'yes'),
(1152, 'dc_product_vendor_plugin_installed', '1', 'yes'),
(1153, 'widget_dc_product_vendors_info', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1154, 'widget_dc_product_vendors_list', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1155, 'widget_dc-vendor-quick-info', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1156, 'widget_dc-vendor-store-location', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1157, 'wcmp_vendor_registration_form_data', 'a:2:{i:0;a:8:{s:2:"id";i:0;s:4:"type";s:5:"email";s:5:"label";s:5:"Email";s:6:"hidden";b:1;s:7:"partial";s:10:"email.html";s:11:"placeholder";s:0:"";s:8:"required";b:0;s:8:"cssClass";s:0:"";}i:1;a:7:{s:2:"id";i:1;s:4:"type";s:9:"recaptcha";s:5:"label";s:9:"Recaptcha";s:6:"hidden";b:1;s:7:"partial";s:14:"recaptcha.html";s:6:"script";s:0:"";s:8:"required";b:0;}}', 'yes'),
(1159, 'core_updater.lock', '1495654168', 'no'),
(1160, '_transient_timeout_yith_wcwl_user_default_count_2', '1496437870', 'no'),
(1161, '_transient_yith_wcwl_user_default_count_2', '0', 'no'),
(1166, 'wc_frontend_manager_page_id', '137', 'yes'),
(1167, 'wcfm_options', 'a:11:{s:27:"wc_frontend_manager_page_id";i:137;s:9:"site_logo";s:2:"57";s:42:"wc_frontend_manager_menu_bg_color_settings";s:7:"#2ae023";s:47:"wc_frontend_manager_menu_icon_bg_color_settings";s:7:"#f7f7f7";s:44:"wc_frontend_manager_menu_icon_color_settings";s:4:"#555";s:54:"wc_frontend_manager_menu_icon_active_bg_color_settings";s:7:"#0900bc";s:51:"wc_frontend_manager_menu_icon_active_color_settings";s:4:"#fff";s:45:"wc_frontend_manager_primary_bg_color_settings";s:7:"#cccccc";s:47:"wc_frontend_manager_primary_font_color_settings";s:7:"#000000";s:47:"wc_frontend_manager_secondary_bg_color_settings";s:7:"#000000";s:49:"wc_frontend_manager_secondary_font_color_settings";s:7:"#ffffff";}', 'yes'),
(1168, 'wcfm_db_version', '2.2.4', 'yes'),
(1169, 'wcfm_page_install', '1', 'yes'),
(1170, 'wcfm_installed', '1', 'yes'),
(1171, 'wcfm_style_custom', 'wcfm-style-custom-1495728653.css', 'yes'),
(1172, 'wcfm_updated_2_2_2', '1', 'yes'),
(1178, 'wcfm_site_logo', '57', 'yes'),
(1181, '_transient_timeout_wc_related_84', '1495768282', 'no'),
(1182, '_transient_wc_related_84', 'a:1:{i:0;s:3:"140";}', 'no'),
(1191, '_transient_timeout_wc_related_82', '1495768301', 'no'),
(1192, '_transient_wc_related_82', 'a:0:{}', 'no'),
(1199, '_site_transient_timeout_available_translations', '1495673293', 'no');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1200, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-27 04:32:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.4/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-09 11:39:31";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.4/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-16 13:06:08";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-12 09:29:39";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-05 09:50:06";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.4/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-28 14:35:15";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.4/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-18 13:57:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-11 20:10:39";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-04 18:08:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-10 16:26:52";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-23 23:02:31";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-12 06:40:28";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-05 12:10:24";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-21 14:17:42";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-01 10:53:22";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-28 13:34:22";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-02 14:01:52";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-08 04:57:54";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-02 05:13:51";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-05 06:17:00";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-18 05:09:08";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-30 09:46:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-24 06:52:11";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.4/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-15 08:29:44";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-11 15:57:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-23 09:31:28";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-17 15:02:48";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-15 10:57:32";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-15 14:53:36";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-20 10:13:53";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-10 13:48:29";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-03 00:34:10";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-15 09:03:35";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-17 03:13:31";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-27 07:08:07";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-04-10 15:33:37";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.4/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-03-28 12:03:30";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.4";s:7:"updated";s:19:"2017-05-08 04:16:08";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(1201, '_transient_loco_po_2870cd566558c2768f6f3e05dcd40ce0', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:58:"plugins/wc-frontend-manager/lang/wc-frontend-manager-ar.po";s:5:"bytes";i:59443;s:5:"mtime";i:1495657226;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:403;s:1:"p";i:171;s:1:"f";i:0;}}}', 'yes'),
(1202, '_transient_loco_po_b79551736305b2dd6e02630c4f12a7d7', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:61:"plugins/wc-frontend-manager/lang/wc-frontend-manager-en_US.po";s:5:"bytes";i:50100;s:5:"mtime";i:1495657226;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:403;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(1208, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1495691935', 'no'),
(1209, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4338;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2478;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2349;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2089;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1820;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1578;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1556;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1430;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1332;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1322;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1313;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1266;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1262;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1100;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1040;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1037;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:982;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:923;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:812;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:790;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:785;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:654;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:652;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:644;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:634;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:620;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:598;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:590;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:573;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:572;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:570;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:566;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:553;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:546;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:528;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:520;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:503;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:496;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:488;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:488;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:460;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:456;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:439;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:432;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:431;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:426;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:418;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:410;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:404;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:401;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:395;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:393;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:393;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:376;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:365;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:361;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:349;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:331;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:322;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:317;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:310;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:294;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:291;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:290;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:286;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:285;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:284;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:280;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:278;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:273;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:270;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:267;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:266;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:261;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1211, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495829338;s:8:"response";a:2:{s:43:"wc-frontend-manager/wc_frontend_manager.php";O:8:"stdClass":9:{s:2:"id";s:5:"81607";s:4:"slug";s:19:"wc-frontend-manager";s:6:"plugin";s:43:"wc-frontend-manager/wc_frontend_manager.php";s:11:"new_version";s:5:"2.2.5";s:3:"url";s:50:"https://wordpress.org/plugins/wc-frontend-manager/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wc-frontend-manager.2.2.5.zip";s:14:"upgrade_notice";s:257:"Feature - Profile page integrated\nFeature - WCMp orders dashboard integrated\nFeature - WCMp order details integrated\nFeature - WCMp settings page integrated\nEnhance - WC Vendors more settings option added\nFixed   - Orders dashboard pagination issue resolved";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:55:"woocommerce-stock-manager/woocommerce-stock-manager.php";O:8:"stdClass":8:{s:2:"id";s:5:"59666";s:4:"slug";s:25:"woocommerce-stock-manager";s:6:"plugin";s:55:"woocommerce-stock-manager/woocommerce-stock-manager.php";s:11:"new_version";s:5:"1.1.5";s:3:"url";s:56:"https://wordpress.org/plugins/woocommerce-stock-manager/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woocommerce-stock-manager.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-27 15:02:11";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.6.1/es_VE.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"es_VE";s:7:"version";s:5:"2.5.5";s:7:"updated";s:19:"2016-06-10 12:16:04";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/woocommerce/2.5.5/es_VE.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:16:{s:13:"cmb2/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"53754";s:4:"slug";s:4:"cmb2";s:6:"plugin";s:13:"cmb2/init.php";s:11:"new_version";s:5:"2.2.4";s:3:"url";s:35:"https://wordpress.org/plugins/cmb2/";s:7:"package";s:47:"https://downloads.wordpress.org/plugin/cmb2.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.7";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip";}s:15:"kirki/kirki.php";O:8:"stdClass":6:{s:2:"id";s:5:"50755";s:4:"slug";s:5:"kirki";s:6:"plugin";s:15:"kirki/kirki.php";s:11:"new_version";s:5:"2.3.7";s:3:"url";s:36:"https://wordpress.org/plugins/kirki/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/kirki.2.3.7.zip";}s:23:"loco-translate/loco.php";O:8:"stdClass":7:{s:2:"id";s:5:"42611";s:4:"slug";s:14:"loco-translate";s:6:"plugin";s:23:"loco-translate/loco.php";s:11:"new_version";s:6:"2.0.14";s:3:"url";s:45:"https://wordpress.org/plugins/loco-translate/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/loco-translate.2.0.14.zip";s:14:"upgrade_notice";s:34:"Various bug fixes and improvements";}s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";O:8:"stdClass":6:{s:2:"id";s:5:"65536";s:4:"slug";s:29:"woo-checkout-field-editor-pro";s:6:"plugin";s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";s:11:"new_version";s:5:"1.1.9";s:3:"url";s:60:"https://wordpress.org/plugins/woo-checkout-field-editor-pro/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/woo-checkout-field-editor-pro.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":7:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.0.7.zip";s:14:"upgrade_notice";s:132:"3.0 is a major update. Make a full site backup, update your theme and extensions, and review update best practices before upgrading.";}s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";O:8:"stdClass":6:{s:2:"id";s:5:"41014";s:4:"slug";s:28:"woocommerce-checkout-manager";s:6:"plugin";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-checkout-manager/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/woocommerce-checkout-manager.zip";}s:84:"woocommerce-frontend-shop-manager-free-version/woocommerce-frontend-shop-manager.php";O:8:"stdClass":6:{s:2:"id";s:5:"60883";s:4:"slug";s:46:"woocommerce-frontend-shop-manager-free-version";s:6:"plugin";s:84:"woocommerce-frontend-shop-manager-free-version/woocommerce-frontend-shop-manager.php";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:77:"https://wordpress.org/plugins/woocommerce-frontend-shop-manager-free-version/";s:7:"package";s:95:"https://downloads.wordpress.org/plugin/woocommerce-frontend-shop-manager-free-version.1.0.3.zip";}s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";O:8:"stdClass":7:{s:2:"id";s:5:"47187";s:4:"slug";s:38:"woocommerce-pdf-invoices-packing-slips";s:6:"plugin";s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";s:11:"new_version";s:5:"1.6.5";s:3:"url";s:69:"https://wordpress.org/plugins/woocommerce-pdf-invoices-packing-slips/";s:7:"package";s:87:"https://downloads.wordpress.org/plugin/woocommerce-pdf-invoices-packing-slips.1.6.5.zip";s:14:"upgrade_notice";s:57:"Important: Version 1.6 requires PHP 5.3 or higher to run!";}s:49:"woocommerce-shortcodes/woocommerce-shortcodes.php";O:8:"stdClass":7:{s:2:"id";s:5:"52569";s:4:"slug";s:22:"woocommerce-shortcodes";s:6:"plugin";s:49:"woocommerce-shortcodes/woocommerce-shortcodes.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:53:"https://wordpress.org/plugins/woocommerce-shortcodes/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/woocommerce-shortcodes.1.0.0.zip";s:14:"upgrade_notice";s:16:"Initial version.";}s:46:"woo-mercado-pago-module/mercadopago-module.php";O:8:"stdClass":6:{s:2:"id";s:5:"70497";s:4:"slug";s:23:"woo-mercado-pago-module";s:6:"plugin";s:46:"woo-mercado-pago-module/mercadopago-module.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:54:"https://wordpress.org/plugins/woo-mercado-pago-module/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/woo-mercado-pago-module.2.2.6.zip";}s:41:"yith-woocommerce-ajax-navigation/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"41700";s:4:"slug";s:32:"yith-woocommerce-ajax-navigation";s:6:"plugin";s:41:"yith-woocommerce-ajax-navigation/init.php";s:11:"new_version";s:5:"3.4.1";s:3:"url";s:63:"https://wordpress.org/plugins/yith-woocommerce-ajax-navigation/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/yith-woocommerce-ajax-navigation.3.4.1.zip";}s:40:"yith-woocommerce-order-tracking/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"57256";s:4:"slug";s:31:"yith-woocommerce-order-tracking";s:6:"plugin";s:40:"yith-woocommerce-order-tracking/init.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:62:"https://wordpress.org/plugins/yith-woocommerce-order-tracking/";s:7:"package";s:80:"https://downloads.wordpress.org/plugin/yith-woocommerce-order-tracking.1.1.2.zip";}s:38:"yith-woocommerce-social-login/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"59199";s:4:"slug";s:29:"yith-woocommerce-social-login";s:6:"plugin";s:38:"yith-woocommerce-social-login/init.php";s:11:"new_version";s:5:"1.2.0";s:3:"url";s:60:"https://wordpress.org/plugins/yith-woocommerce-social-login/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/yith-woocommerce-social-login.1.2.0.zip";}s:44:"yith-woocommerce-additional-uploads/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"61813";s:4:"slug";s:35:"yith-woocommerce-additional-uploads";s:6:"plugin";s:44:"yith-woocommerce-additional-uploads/init.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:66:"https://wordpress.org/plugins/yith-woocommerce-additional-uploads/";s:7:"package";s:84:"https://downloads.wordpress.org/plugin/yith-woocommerce-additional-uploads.1.1.3.zip";}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"41084";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:5:"2.1.2";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.1.2.zip";}}}', 'no'),
(1212, 'wooccm_update_notice', '0', 'yes'),
(1229, '_transient_timeout_wc_term_counts', '1498423069', 'no'),
(1230, '_transient_wc_term_counts', 'a:21:{i:17;s:1:"3";i:15;s:1:"1";i:16;s:1:"1";i:27;s:1:"2";i:41;s:1:"1";i:40;s:1:"1";i:38;s:1:"1";i:39;s:1:"1";i:28;s:1:"1";i:29;s:1:"1";i:30;s:1:"1";i:42;s:1:"1";i:43;s:1:"1";i:22;s:1:"1";i:23;s:1:"1";i:24;s:1:"1";i:19;s:1:"1";i:18;s:1:"1";i:21;s:1:"1";i:20;s:1:"1";i:37;s:1:"1";}', 'no'),
(1233, '_transient_timeout_wc_loop92831495685721', '1498277763', 'no'),
(1234, '_transient_wc_loop92831495685721', 'O:8:"WP_Query":49:{s:5:"query";a:8:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:14:"posts_per_page";s:1:"8";s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:10:"meta_query";a:0:{}s:9:"tax_query";a:1:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}}}s:10:"query_vars";a:68:{s:9:"post_type";s:7:"product";s:11:"post_status";s:7:"publish";s:19:"ignore_sticky_posts";i:1;s:14:"posts_per_page";i:8;s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:10:"meta_query";a:0:{}s:9:"tax_query";a:1:{i:0;a:4:{s:8:"taxonomy";s:18:"product_visibility";s:5:"field";s:16:"term_taxonomy_id";s:5:"terms";a:1:{i:0;i:7;}s:8:"operator";s:6:"NOT IN";}}s:5:"error";s:0:"";s:1:"m";s:0:"";s:1:"p";i:0;s:11:"post_parent";s:0:"";s:7:"subpost";s:0:"";s:10:"subpost_id";s:0:"";s:10:"attachment";s:0:"";s:13:"attachment_id";i:0;s:4:"name";s:0:"";s:6:"static";s:0:"";s:8:"pagename";s:0:"";s:7:"page_id";i:0;s:6:"second";s:0:"";s:6:"minute";s:0:"";s:4:"hour";s:0:"";s:3:"day";i:0;s:8:"monthnum";i:0;s:4:"year";i:0;s:1:"w";i:0;s:13:"category_name";s:0:"";s:3:"tag";s:0:"";s:3:"cat";s:0:"";s:6:"tag_id";s:0:"";s:6:"author";s:0:"";s:11:"author_name";s:0:"";s:4:"feed";s:0:"";s:2:"tb";s:0:"";s:5:"paged";i:0;s:8:"meta_key";s:0:"";s:10:"meta_value";s:0:"";s:7:"preview";s:0:"";s:1:"s";s:0:"";s:8:"sentence";s:0:"";s:5:"title";s:0:"";s:6:"fields";s:0:"";s:10:"menu_order";s:0:"";s:5:"embed";s:0:"";s:12:"category__in";a:0:{}s:16:"category__not_in";a:0:{}s:13:"category__and";a:0:{}s:8:"post__in";a:0:{}s:12:"post__not_in";a:0:{}s:13:"post_name__in";a:0:{}s:7:"tag__in";a:0:{}s:11:"tag__not_in";a:0:{}s:8:"tag__and";a:0:{}s:12:"tag_slug__in";a:0:{}s:13:"tag_slug__and";a:0:{}s:15:"post_parent__in";a:0:{}s:19:"post_parent__not_in";a:0:{}s:10:"author__in";a:0:{}s:14:"author__not_in";a:0:{}s:16:"suppress_filters";b:0;s:13:"cache_results";b:1;s:22:"update_post_term_cache";b:1;s:19:"lazy_load_term_meta";b:1;s:22:"update_post_meta_cache";b:1;s:8:"nopaging";b:0;s:17:"comments_per_page";s:2:"50";s:13:"no_found_rows";b:0;}s:9:"tax_query";O:12:"WP_Tax_Query":6:{s:7:"queries";a:1:{i:0;a:5:{s:8:"taxonomy";s:18:"product_visibility";s:5:"terms";a:1:{i:0;i:7;}s:5:"field";s:16:"term_taxonomy_id";s:8:"operator";s:6:"NOT IN";s:16:"include_children";b:1;}}s:8:"relation";s:3:"AND";s:16:"\0*\0table_aliases";a:0:{}s:13:"queried_terms";a:0:{}s:13:"primary_table";s:9:"wp_dposts";s:17:"primary_id_column";s:2:"ID";}s:10:"meta_query";O:13:"WP_Meta_Query":9:{s:7:"queries";a:0:{}s:8:"relation";N;s:10:"meta_table";N;s:14:"meta_id_column";N;s:13:"primary_table";N;s:17:"primary_id_column";N;s:16:"\0*\0table_aliases";a:0:{}s:10:"\0*\0clauses";a:0:{}s:18:"\0*\0has_or_relation";b:0;}s:10:"date_query";b:0;s:7:"request";s:341:"SELECT SQL_CALC_FOUND_ROWS  wp_dposts.ID FROM wp_dposts  WHERE 1=1  AND ( \n  wp_dposts.ID NOT IN (\r\n				SELECT object_id\r\n				FROM wp_dterm_relationships\r\n				WHERE term_taxonomy_id IN (7)\r\n			)\n) AND wp_dposts.post_type = ''product'' AND ((wp_dposts.post_status = ''publish'')) GROUP BY wp_dposts.ID ORDER BY wp_dposts.post_date DESC LIMIT 0, 8";s:5:"posts";a:7:{i:0;O:7:"WP_Post":24:{s:2:"ID";i:145;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-24 22:14:47";s:13:"post_date_gmt";s:19:"2017-05-25 04:14:47";s:12:"post_content";s:302:"<p>botoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotox</p>";s:10:"post_title";s:5:"botox";s:12:"post_excerpt";s:28:"botox botox botox botoxbotox";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:5:"botox";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-24 22:15:21";s:17:"post_modified_gmt";s:19:"2017-05-25 04:15:21";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:45:"http://localhost/distribuidora/product/botox/";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:1;O:7:"WP_Post":24:{s:2:"ID";i:143;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-24 21:15:01";s:13:"post_date_gmt";s:19:"2017-05-25 03:15:01";s:12:"post_content";s:375:"<p>Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabello</p>";s:10:"post_title";s:20:"Plancha para cabello";s:12:"post_excerpt";s:167:"Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:20:"plancha-para-cabello";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-24 21:15:01";s:17:"post_modified_gmt";s:19:"2017-05-25 03:15:01";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:60:"http://localhost/distribuidora/product/plancha-para-cabello/";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:2;O:7:"WP_Post":24:{s:2:"ID";i:140;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-24 14:25:16";s:13:"post_date_gmt";s:19:"2017-05-24 20:25:16";s:12:"post_content";s:180:"<p>Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad</p>";s:10:"post_title";s:8:"Secadora";s:12:"post_excerpt";s:23:"Secadora de ala calidad";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:8:"secadora";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-24 14:25:16";s:17:"post_modified_gmt";s:19:"2017-05-24 20:25:16";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:48:"http://localhost/distribuidora/product/secadora/";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:3;O:7:"WP_Post":24:{s:2:"ID";i:84;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-21 18:04:09";s:13:"post_date_gmt";s:19:"2017-05-22 00:04:09";s:12:"post_content";s:378:"<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</p>";s:10:"post_title";s:17:"Mouse Inalambrico";s:12:"post_excerpt";s:742:"<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:17:"mouse-inalambrico";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-24 14:32:31";s:17:"post_modified_gmt";s:19:"2017-05-24 20:32:31";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:59:"http://localhost/distribuidora/?post_type=product&#038;p=84";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:4;O:7:"WP_Post":24:{s:2:"ID";i:82;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-21 18:00:37";s:13:"post_date_gmt";s:19:"2017-05-22 00:00:37";s:12:"post_content";s:378:"<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</p>";s:10:"post_title";s:18:"Tinte para cabello";s:12:"post_excerpt";s:742:"<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:18:"tinte-para-cabello";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-24 15:04:16";s:17:"post_modified_gmt";s:19:"2017-05-24 21:04:16";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:59:"http://localhost/distribuidora/?post_type=product&#038;p=82";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:5;O:7:"WP_Post":24:{s:2:"ID";i:31;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-20 22:40:30";s:13:"post_date_gmt";s:19:"2017-05-21 04:40:30";s:12:"post_content";s:374:"<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N";s:10:"post_title";s:26:"Fragancia Carolina Herrera";s:12:"post_excerpt";s:748:"<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:26:"fragancia-carolina-herrera";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-20 22:40:32";s:17:"post_modified_gmt";s:19:"2017-05-21 04:40:32";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:59:"http://localhost/distribuidora/?post_type=product&#038;p=31";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}i:6;O:7:"WP_Post":24:{s:2:"ID";i:28;s:11:"post_author";s:1:"1";s:9:"post_date";s:19:"2017-05-20 22:08:18";s:13:"post_date_gmt";s:19:"2017-05-21 04:08:18";s:12:"post_content";s:393:"<div>\r\n\r\n<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos\r\n\r\n</div>\r\n<div></div>";s:10:"post_title";s:13:"Power Rangers";s:12:"post_excerpt";s:797:"<div>\r\n\r\n<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>";s:11:"post_status";s:7:"publish";s:14:"comment_status";s:4:"open";s:11:"ping_status";s:6:"closed";s:13:"post_password";s:0:"";s:9:"post_name";s:13:"power-rangers";s:7:"to_ping";s:0:"";s:6:"pinged";s:0:"";s:13:"post_modified";s:19:"2017-05-20 22:08:20";s:17:"post_modified_gmt";s:19:"2017-05-21 04:08:20";s:21:"post_content_filtered";s:0:"";s:11:"post_parent";i:0;s:4:"guid";s:59:"http://localhost/distribuidora/?post_type=product&#038;p=28";s:10:"menu_order";i:0;s:9:"post_type";s:7:"product";s:14:"post_mime_type";s:0:"";s:13:"comment_count";s:1:"0";s:6:"filter";s:3:"raw";}}s:10:"post_count";i:7;s:12:"current_post";i:-1;s:11:"in_the_loop";b:0;s:4:"post";r:119;s:13:"comment_count";i:0;s:15:"current_comment";i:-1;s:11:"found_posts";s:1:"7";s:13:"max_num_pages";d:1;s:21:"max_num_comment_pages";i:0;s:9:"is_single";b:0;s:10:"is_preview";b:0;s:7:"is_page";b:0;s:10:"is_archive";b:1;s:7:"is_date";b:0;s:7:"is_year";b:0;s:8:"is_month";b:0;s:6:"is_day";b:0;s:7:"is_time";b:0;s:9:"is_author";b:0;s:11:"is_category";b:0;s:6:"is_tag";b:0;s:6:"is_tax";b:0;s:9:"is_search";b:0;s:7:"is_feed";b:0;s:15:"is_comment_feed";b:0;s:12:"is_trackback";b:0;s:7:"is_home";b:0;s:6:"is_404";b:0;s:8:"is_embed";b:0;s:8:"is_paged";b:0;s:8:"is_admin";b:0;s:13:"is_attachment";b:0;s:11:"is_singular";b:0;s:9:"is_robots";b:0;s:13:"is_posts_page";b:0;s:20:"is_post_type_archive";b:1;s:25:"\0WP_Query\0query_vars_hash";s:32:"5073f986d241f99f27b992f6d1ffac5a";s:28:"\0WP_Query\0query_vars_changed";b:0;s:17:"thumbnails_cached";b:0;s:19:"\0WP_Query\0stopwords";N;s:23:"\0WP_Query\0compat_fields";a:2:{i:0;s:15:"query_vars_hash";i:1;s:18:"query_vars_changed";}s:24:"\0WP_Query\0compat_methods";a:2:{i:0;s:16:"init_query_flags";i:1;s:15:"parse_tax_query";}}', 'no'),
(1261, 'wccs_settings', 'a:1:{s:9:"checkness";a:7:{s:8:"position";s:18:"after_billing_form";s:25:"wooccm_notification_email";s:28:"bvillamizarespitia@gmail.com";s:16:"payment_method_t";b:1;s:17:"shipping_method_t";b:1;s:16:"payment_method_d";s:14:"Payment Method";s:17:"shipping_method_d";s:15:"Shipping Method";s:16:"time_stamp_title";s:10:"Order Time";}}', 'yes'),
(1262, 'wccs_settings2', 'a:1:{s:16:"shipping_buttons";a:9:{i:0;a:6:{s:5:"label";s:5:"país";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:6:"Nombre";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:8:"apellido";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";s:0:"";s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:6:"estado";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:5:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";}}}', 'yes'),
(1263, 'wccs_settings3', 'a:1:{s:15:"billing_buttons";a:11:{i:0;a:6:{s:5:"label";s:5:"país";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:6:"Nombre";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:8:"apellido";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";s:0:"";s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:6:"estado";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:8:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:11:"placeholder";s:14:"Postcode / Zip";s:9:"clear_row";b:1;}i:9;a:6:{s:5:"label";s:13:"Email Address";s:3:"cow";s:5:"email";s:8:"checkbox";s:4:"true";s:5:"order";i:10;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:10;a:7:{s:5:"label";s:9:"teléfono";s:3:"cow";s:5:"phone";s:8:"checkbox";s:4:"true";s:5:"order";i:11;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}}}', 'yes'),
(1266, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1495982129', 'no'),
(1267, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1268, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1495916858', 'no'),
(1269, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(1278, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495873677', 'no');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1279, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 May 2017 23:04:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.8-beta2-40840";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.8 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2017/05/wordpress-4-8-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 May 2017 23:04:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4758";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:325:"The release candidate for WordPress 4.8 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on Thursday, June 8, but we need your help to get there. If you haven’t tested 4.8 yet, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2365:"<p>The release candidate for WordPress 4.8 is now available.</p>\n<p>RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on <strong>Thursday, June 8</strong>, but we need <em>your</em> help to get there. If you haven’t tested 4.8 yet, now is the time!</p>\n<p>To test WordPress 4.8, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.8-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=40840&amp;stop_rev=40821">a handful of changes</a> since releasing Beta 2 earlier this week. For more details about what’s new in version 4.8, check out the <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-2/">Beta 2</a> blog posts.</p>\n<p><strong>Think you’ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you’ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.8 and update your plugin’s <em>Tested up to</em> version in the readme to 4.8. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we work hard to avoid breaking things. An in-depth field guide to developer-focused changes is coming soon on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>This release&#8217;s haiku is courtesy of <a href=''https://profiles.wordpress.org/matveb/'' class=''mention''><span class=''mentions-prefix''>@</span>matveb</a>:</p>\n<p><em>Érrese uno</em><br />\n<em>Cien veces y más</em><br />\n<em>Erre ce dos</em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4758";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.8 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2017/05/wordpress-4-8-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 May 2017 00:02:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4749";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.8 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.8, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1621:"<p>WordPress 4.8 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.8, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.8-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.8, check out the <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/">Beta 1</a> blog post. Since then, we’ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=40819&amp;stop_rev=40664&amp;limit=100&amp;sfp_email=&amp;sfph_mail=">over 50 changes</a> in Beta 2.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>WordPress four point eight<br />\nOne step closer to release<br />\nPlease test Beta 2!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4749";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.7.5 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2017/05/wordpress-4-7-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 May 2017 22:39:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4734";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"WordPress 4.7.5 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.4 and earlier are affected by six security issues: Insufficient redirect validation in the HTTP class. Reported by Ronni Skansing. Improper handling of post meta data values in the XML-RPC [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Pascal Birchler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2349:"<p>WordPress 4.7.5 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7.4 and earlier are affected by six security issues:</p>\n<ol>\n<li>Insufficient redirect validation in the HTTP class. Reported by <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>Improper handling of post meta data values in the XML-RPC API. Reported by <a href="https://hackerone.com/jazzy2fives">Sam Thomas</a>.</li>\n<li>Lack of capability checks for post meta data in the XML-RPC API. Reported by <a href="https://profiles.wordpress.org/vortfu">Ben Bidner</a> of the WordPress Security Team.</li>\n<li>A Cross Site Request Forgery (CSRF)  vulnerability was discovered in the filesystem credentials dialog. Reported by <a href="https://twitter.com/yorickkoster">Yorick Koster</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered when attempting to upload very large files. Reported by <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered related to the Customizer. Reported by <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a> of the WordPress Security Team.</li>\n</ol>\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.7.5 contains 3 maintenance fixes to the 4.7 release series. For more information, see the <a href="https://codex.wordpress.org/Version_4.7.5">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.5&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.5</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.5.</p>\n<p>Thanks to everyone who contributed to 4.7.5.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4734";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress Now on HackerOne";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/news/2017/05/wordpress-now-on-hackerone/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 May 2017 16:02:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4730";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:322:"WordPress has grown a lot over the last thirteen years – it now powers more than 28% of the top ten million sites on the web. During this growth, each team has worked hard to continually improve their tools and processes. Today, the WordPress Security Team is happy to announce that WordPress is now officially [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Aaron D. Campbell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1718:"<p>WordPress has grown a lot over the last thirteen years – it now powers more than 28% of the top ten million sites on the web. During this growth, each team has worked hard to continually improve their tools and processes. Today, the WordPress Security Team is happy to announce that <a href="https://hackerone.com/wordpress">WordPress is now officially on HackerOne</a>!</p>\n<p><a href="https://www.hackerone.com/about">HackerOne</a> is a platform for security researchers to securely and responsibly report vulnerabilities to our team. It provides tools that improve the quality and consistency of communication with reporters, and will reduce the time spent on responding to commonly reported issues. This frees our team to spend more time working on improving the security of WordPress.</p>\n<p>The security team has been working on this project for quite some time. Nikolay Bachiyski started the team working on it just over a year ago. We ran it as a private program while we worked out our procedures and processes, and are excited to finally make it public.</p>\n<p>With the announcement of the WordPress HackerOne program we are also introducing bug bounties. Bug bounties let us reward reporters for disclosing issues to us and helping us secure our products and infrastructure. We&#8217;ve already awarded more than $3,700 in bounties to seven different reporters! We are thankful to Automattic for paying the bounties on behalf of the WordPress project.</p>\n<p>The program and bounties cover all our projects including WordPress, BuddyPress, bbPress, GlotPress, and WP-CLI as well as all of our sites including WordPress.org, bbPress.org, WordCamp.org, BuddyPress.org, and GlotPress.org.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4730";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.8 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 13 May 2017 00:15:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4727";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:342:"We&#8217;re planning a smaller WP release early next month, bringing in three major enhancements: An improved visual editor experience, with a new TinyMCE that allows you to navigate more intuitively in and out of inline elements like links. (Try it out to see, it&#8217;s hard to describe.) A revamp of the dashboard news widget to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1148:"<p>We&#8217;re planning a smaller WP release early next month, bringing in three major enhancements:</p>\n<ul>\n<li>An improved visual editor experience, with a new TinyMCE that allows you to navigate more intuitively in and out of inline elements like links. (Try it out to see, it&#8217;s hard to describe.)</li>\n<li>A revamp of the dashboard news widget to bring in nearby and upcoming events including meetups and WordCamps.</li>\n<li>Several new media widgets covering images, audio, and video, and an enhancement to the text widget to support visual editing.</li>\n</ul>\n<p>The first beta of 4.8 is now available for testing. You can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">beta tester plugin</a> (or just run trunk) to try the latest and greatest, and each of these areas could use a ton of testing. Our goals are to make editing posts with links more intuitive, make widgets easier for new users and more convenient for existing ones, and get many more people aware of and attending our community events.</p>\n<p><em>Four point eight is here<br />\nSmall changes with a big punch<br />\nBig ones come later</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4727";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.7.4 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2017/04/wordpress-4-7-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Apr 2017 17:54:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4710";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:376:"After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release. This release contains 47 bug fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Pascal Birchler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4518:"<p>After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release.</p>\n<p>This release contains 47 maintenance fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API. For a full list of changes, consult the <a href="https://codex.wordpress.org/Version_4.7.4">release notes</a> and the <a href="https://core.trac.wordpress.org/log/branches/4.7?rev=40487&amp;stop_rev=40224">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.4</a> or visit <strong>Dashboard → Updates</strong> and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.4.</p>\n<p>Thanks to everyone who contributed to 4.7.4:<br />\n<a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/aussieguy123/">aussieguy123</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/boldwater/">boldwater</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/chesio/">chesio</a>, <a href="https://profiles.wordpress.org/curdin/">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/nerrad/">Darren Ethier (nerrad)</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidbenton/">davidbenton</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/eclev91/">eclev91</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/ghosttoast/">Gustave F. Gerhardt</a>, <a href="https://profiles.wordpress.org/ig_communitysites/">ig_communitysites</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/joedolson/">Joe Dolson</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/karinedo/">karinedo</a>, <a href="https://profiles.wordpress.org/lukasbesch/">lukasbesch</a>, <a href="https://profiles.wordpress.org/maguiar/">maguiar</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mboynes/">Matthew Boynes</a>, <a href="https://profiles.wordpress.org/mattwiebe/">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mayurk/">Mayur Keshwani</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/delawski/">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pratikshrestha/">Pratik Shrestha</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/sagarkbhatt/">sagarkbhatt</a>, <a href="https://profiles.wordpress.org/sagarprajapati/">Sagar Prajapati</a>, <a href="https://profiles.wordpress.org/sboisvert/">sboisvert</a>, <a href="https://profiles.wordpress.org/wonderboymusic/">Scott Taylor</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/cybr/">Sybre Waaijer</a>, <a href="https://profiles.wordpress.org/timmydcrawford/">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/vortfu/">vortfu</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4710";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.7.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 06 Mar 2017 17:53:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4696";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:396:"WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six security issues: Cross-site scripting (XSS) via media file metadata.  Reported by Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Control characters can trick redirect [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"James Nylen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6191:"<p>WordPress 4.7.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7.2 and earlier are affected by six security issues:</p>\n<ol>\n<li>Cross-site scripting (XSS) via media file metadata.  Reported by <a href="https://www.securesolutions.no/">Chris Andrè Dale</a>, <a href="https://twitter.com/yorickkoster">Yorick Koster</a>, and Simon P. Briggs.</li>\n<li>Control characters can trick redirect URL validation.  Reported by <a href="http://www.danielchatfield.com/">Daniel Chatfield</a>.</li>\n<li>Unintended files can be deleted by administrators using the plugin deletion functionality.  Reported by <a href="https://hackerone.com/triginc">TrigInc</a> and <a href="http://b.360.cn/">xuliang</a>.</li>\n<li>Cross-site scripting (XSS) via video URL in YouTube embeds.  Reported by <a href="https://twitter.com/marcs0h">Marc Montpas</a>.</li>\n<li>Cross-site scripting (XSS) via taxonomy term names.  Reported by <a href="https://profiles.wordpress.org/deltamgm2">Delta</a>.</li>\n<li>Cross-site request forgery (CSRF) in Press This leading to excessive use of server resources.  Reported by Sipke Mellema.</li>\n</ol>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.7.3 contains 39 maintenance fixes to the 4.7 release series. For more information, see the <a href="https://codex.wordpress.org/Version_4.7.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.3.</p>\n<p>Thanks to everyone who contributed to 4.7.3: <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/xknown/">Alex Concha</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/asalce/">asalce</a>, <a href="https://profiles.wordpress.org/blobfolio/">blobfolio</a>, <a href="https://profiles.wordpress.org/gitlost/">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/bradyvercher/">Brady Vercher</a>, <a href="https://profiles.wordpress.org/drrobotnik/">Brandon Lavigne</a>, <a href="https://profiles.wordpress.org/bhargavbhandari90/">Bunty</a>, <a href="https://profiles.wordpress.org/ccprog/">ccprog</a>, <a href="https://profiles.wordpress.org/ketuchetan/">chetansatasiya</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dhanendran/">Dhanendran</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/drivingralle/">Drivingralle</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ipstenu/">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/jazbek/">jazbek</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/joehoyle/">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">John James Jacoby</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/markoheijnen/">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mnelson4/">Mike Nelson</a>, <a href="https://profiles.wordpress.org/mikeschroder/">Mike Schroder</a>, <a href="https://profiles.wordpress.org/codegeass/">Muhammet Arslan</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne/">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pavelevap/">pavelevap</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/reldev/">reldev</a>, <a href="https://profiles.wordpress.org/sanchothefat/">Robert O&#8217;Rourke</a>, <a href="https://profiles.wordpress.org/welcher/">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sanketparmar/">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/seanchayes/">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/triplejumper12/">triplejumper12</a>, <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>, and <a href="https://profiles.wordpress.org/wpfo/">wpfo</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4696";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 4.7.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 Jan 2017 19:34:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4676";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:357:"WordPress 4.7.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.1 and earlier are affected by three security issues: The user interface for assigning taxonomy terms in Press This is shown to users who do not have permissions to use it. [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Aaron D. Campbell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2142:"<p>WordPress 4.7.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7.1 and earlier are affected by three security issues:</p>\n<ol>\n<li>The user interface for assigning taxonomy terms in Press This is shown to users who do not have permissions to use it. Reported by David Herrera of <a href="https://www.alleyinteractive.com/">Alley Interactive</a>.</li>\n<li><code>WP_Query</code> is vulnerable to a SQL injection (SQLi) when passing unsafe data. WordPress core is not directly vulnerable to this issue, but we&#8217;ve added hardening to prevent plugins and themes from accidentally causing a vulnerability. Reported by <a href="https://github.com/mjangda">Mo Jangda</a> (batmoo).</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in the posts list table. Reported by <a href="https://iandunn.name/">Ian Dunn</a> of the WordPress Security Team.</li>\n<li>An unauthenticated privilege escalation vulnerability was discovered in a REST API endpoint. Reported by <a href="https://twitter.com/MarcS0h">Marc-Alexandre Montpas</a> of Sucuri Security. *</li>\n</ol>\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.2.</p>\n<p>Thanks to everyone who contributed to 4.7.2.</p>\n<p>* Update: An additional serious vulnerability was fixed in this release and public disclosure was delayed. For more information on this vulnerability, additional mitigation steps taken, and an explanation for why disclosure was delayed, please read <a href="https://make.wordpress.org/core/2017/02/01/disclosure-of-additional-security-fix-in-wordpress-4-7-2/">Disclosure of Additional Security Fix in WordPress 4.7.2</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4676";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.7.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/01/wordpress-4-7-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Jan 2017 03:53:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4650";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:375:"WordPress 4.7 has been downloaded over 10 million times since its release on December 6, 2016 and we are pleased to announce the immediate availability of WordPress 4.7.1. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7 and earlier are affected by eight security issues: [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Aaron D. Campbell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6520:"<p>WordPress 4.7 has been <a href="https://wordpress.org/download/counter/">downloaded over 10 million times</a> since its release on December 6, 2016 and we are pleased to announce the immediate availability of WordPress 4.7.1. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7 and earlier are affected by eight security issues:</p>\n<ol>\n<li>Remote code execution (RCE) in PHPMailer &#8211; <em>No specific issue appears to affect WordPress</em> or any of the major plugins we investigated but, out of an abundance of caution, we updated PHPMailer in this release. This issue was fixed in PHPMailer thanks to <a href="https://legalhackers.com/">Dawid Golunski</a> and <a href="https://twitter.com/Zenexer">Paul Buonopane</a>.</li>\n<li>The REST API exposed user data for all users who had authored a post of a public post type. WordPress 4.7.1 limits this to only post types which have specified that they should be shown within the REST API. Reported by <a href="https://poststatus.com/">Krogsgard</a> and <a href="https://ithemes.com/">Chris Jean</a>.</li>\n<li>Cross-site scripting (XSS) via the plugin name or version header on <code>update-core.php</code>. Reported by <a href="https://dominikschilling.de/">Dominik Schilling</a> of the WordPress Security Team.</li>\n<li>Cross-site request forgery (CSRF) bypass via uploading a Flash file. Reported by <a href="https://twitter.com/Abdulahhusam">Abdullah Hussam</a>.</li>\n<li>Cross-site scripting (XSS) via theme name fallback. Reported by <a href="https://pentest.blog/">Mehmet Ince</a>.</li>\n<li>Post via email checks <code>mail.example.com</code> if default settings aren&#8217;t changed. Reported by John Blackbourn of the WordPress Security Team.</li>\n<li>A cross-site request forgery (CSRF) was discovered in the accessibility mode of widget editing. Reported by <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronnie Skansing</a>.</li>\n<li>Weak cryptographic security for multisite activation key. Reported by <a href="https://itsjack.cc/">Jack</a>.</li>\n</ol>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.7.1 fixes 62 bugs from 4.7. For more information, see the <a href="https://codex.wordpress.org/Version_4.7.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.7.1">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.1.</p>\n<p>Thanks to everyone who contributed to 4.7.1: <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/gitlost/">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chandrapatel/">Chandra Patel</a>, <a href="https://profiles.wordpress.org/christian1012/">Christian Chung</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dshanske/">David Shanske</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/dreamon11/">DreamOn11</a>, <a href="https://profiles.wordpress.org/chopinbach/">Edwin Cromley</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella van Dorpe</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/hristo-sg/">Hristo Pandjarov</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/jblz/">Jeff Bowen</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/joehoyle/">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/kkoppenhaver/">Keanan Koppenhaver</a>, <a href="https://profiles.wordpress.org/obenland/">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/tyxla/">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/mattyrob/">mattyrob</a>, <a href="https://profiles.wordpress.org/monikarao/">monikarao</a>, <a href="https://profiles.wordpress.org/natereist/">Nate Reist</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikschavan/">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/nullvariable/">nullvariable</a>, <a href="https://profiles.wordpress.org/sirbrillig/">Payton Swick</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/presskopp/">Presskopp</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rmccue/">Ryan McCue</a>, <a href="https://profiles.wordpress.org/sanketparmar/">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/sebastianpisula/">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sfpt/">sfpt</a>, <a href="https://profiles.wordpress.org/shazahm1hotmailcom/">shazahm1</a>, <a href="https://profiles.wordpress.org/sstoqnov/">Stanimir Stoyanov</a>, <a href="https://profiles.wordpress.org/stevenkword/">Steven Word</a>, <a href="https://profiles.wordpress.org/szaqal21/">szaqal21</a>, <a href="https://profiles.wordpress.org/timph/">timph</a>, <a href="https://profiles.wordpress.org/voldemortensen/">voldemortensen</a>, <a href="https://profiles.wordpress.org/vortfu/">vortfu</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4650";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n	\n\n\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"WordPress 4.7 “Vaughan”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wordpress.org/news/2016/12/vaughan/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Dec 2016 19:27:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4596";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:240:"Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah "Sassy" Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"enclosure";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:60:"https://wordpress.org/news/files/2016/12/starter-content.mp4";s:6:"length";s:7:"3736020";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:59:"https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4";s:6:"length";s:7:"1127483";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:58:"https://wordpress.org/news/files/2016/12/video-headers.mp4";s:6:"length";s:7:"1549803";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:45511:"<p>Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah &#8220;Sassy&#8221; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</p>\n<div id="v-AHz0Ca46-1" class="video-player"><video id="v-AHz0Ca46-1-video" width="632" height="354" poster="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg" controls="true" preload="metadata" dir="ltr" lang="en"><source src="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_dvd.mp4" type="video/mp4; codecs=&quot;avc1.64001E, mp4a.40.2&quot;" /><source src="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_fmt1.ogv" type="video/ogg; codecs=&quot;theora, vorbis&quot;" /><div><img alt="Introducing WordPress 4.7" src="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg?resize=632%2C354" data-recalc-dims="1" /></div><p>Introducing WordPress 4.7</p></video></div>\n<hr />\n<h2 style="text-align:center">Presenting Twenty Seventeen</h2>\n<p>A brand new default theme brings your site to life with immersive featured images and video headers.</p>\n<p><img class="alignnone wp-image-4618 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=632%2C356&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?w=1600&amp;ssl=1 1600w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?w=1264&amp;ssl=1 1264w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Twenty Seventeen focuses on business sites and features a customizable front page with multiple sections. Personalize it with widgets, navigation, social menus, a logo, custom colors, and more. Our default theme for 2017 works great in many languages, on any device, and for a wide range of users.</p>\n<hr />\n<h2 style="text-align:center">Your Site, Your Way</h2>\n<p>WordPress 4.7 adds new features to the customizer to help take you through the initial setup of a theme, with non-destructive live previews of all your changes in one uninterrupted workflow.</p>\n<h3>Theme Starter Content</h3>\n<div style="width: 632px;" class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-4596-1" width="632" height="346" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/starter-content.mp4?_=1" /><a href="https://wordpress.org/news/files/2016/12/starter-content.mp4">https://wordpress.org/news/files/2016/12/starter-content.mp4</a></video></div>\n<p>To help give you a solid base to build from, individual themes can provide starter content that appears when you go to customize your brand new site. This can range from placing a business information widget in the best location to providing a sample menu with social icon links to a static front page complete with beautiful images. Don’t worry &#8211; nothing new will appear on the live site until you’re ready to save and publish your initial theme setup.</p>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Edit Shortcuts</h3>\n<div style="width: 300px;" class="wp-video"><video class="wp-video-shortcode" id="video-4596-2" width="300" height="173" poster="https://wordpress.org/news/files/2016/12/4.7-—-Edit-Shortcuts.jpg" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4?_=2" /><a href="https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4">https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4</a></video></div>\n<p>Visible icons appear to show you which parts of your site can be customized while live previewing. Click on a shortcut and get straight to editing. Paired with starter content, getting started with customizing your site is faster than ever.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Video Headers</h3>\n<div style="width: 300px;" class="wp-video"><video class="wp-video-shortcode" id="video-4596-3" width="300" height="173" poster="https://wordpress.org/news/files/2016/12/4.7-—-Header-Video.jpg" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/video-headers.mp4?_=3" /><a href="https://wordpress.org/news/files/2016/12/video-headers.mp4">https://wordpress.org/news/files/2016/12/video-headers.mp4</a></video></div>\n<p>Sometimes a big atmospheric video as a moving header image is just what you need to showcase your wares; go ahead and try it out with Twenty Seventeen. Need some video inspiration? Try searching for sites with video headers available for download and use.</p>\n</div>\n<div style="clear: both"></div>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Smoother Menu Building</h3>\n<p><img class="wp-image-4606 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Many menus for sites contain links to the pages of your site, but what happens when you don’t have any pages yet? Now you can add new pages while building menus instead of leaving the customizer and abandoning your changes. Once you’ve published your customizations, you’ll have new pages ready for you to fill with content.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Custom CSS</h3>\n<p><img class="wp-image-4607 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Sometimes you just need a few visual tweaks to make your site perfect. WordPress 4.7 allows you to add custom CSS and instantly see how your changes affect your site. The live preview allows you to work quickly without page refreshes slowing you down.</p>\n</div>\n<div style="clear: both"></div>\n<hr />\n<div style="float: left;width: 48%;margin: 0">\n<h3>PDF Thumbnail Previews</h3>\n<p><img class="wp-image-4609 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Managing your document collection is easier with WordPress 4.7. Uploading PDFs will generate thumbnail images so you can more easily distinguish between all your documents.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Dashboard in your language</h3>\n<p><img class="wp-image-4608 size-medium alignright" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?resize=300%2C158&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Just because your site is in one language doesn’t mean that everybody helping manage it prefers that language for their admin. Add more languages to your site and a user language option will show up in your user’s profiles.</p>\n</div>\n<div style="clear: both"></div>\n<hr />\n<h2 style="text-align:center">Introducing REST API Content Endpoints</h2>\n<p>WordPress 4.7 comes with REST API endpoints for posts, comments, terms, users, meta, and settings.</p>\n<p><img class="size-large wp-image-4600 alignnone" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=632%2C205&#038;ssl=1" alt="" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=1024%2C332&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=300%2C97&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=768%2C249&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Content endpoints provide machine-readable external access to your WordPress site with a clear, standards-driven interface, paving the way for new and innovative methods of interacting with sites through plugins, themes, apps, and beyond. Ready to get started with development? <a href="https://developer.wordpress.org/rest-api/reference/">Check out the REST API reference.</a></p>\n<hr />\n<h2 style="text-align:center">Even More Developer Happiness <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f60a.png" alt="😊" class="wp-smiley" style="height: 1em; max-height: 1em;" /></h2>\n<h3><a href="https://make.wordpress.org/core/2016/11/03/post-type-templates-in-4-7/">Post Type Templates</a></h3>\n<p>By opening up the page template functionality to all post types, theme developers have even more flexibility with the WordPress template hierarchy.</p>\n<h3>More Theme API Goodies</h3>\n<p>WordPress 4.7 includes <a href="https://make.wordpress.org/core/2016/09/09/new-functions-hooks-and-behaviour-for-theme-developers-in-wordpress-4-7/">new functions, hooks, and behavior</a> for theme developers.</p>\n<h3><a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/">Custom Bulk Actions</a></h3>\n<p>List tables, now with more than bulk edit and delete.</p>\n<h3><a href="https://make.wordpress.org/core/2016/09/08/wp_hook-next-generation-actions-and-filters/"><code>WP_Hook</code></a></h3>\n<p>The code that lies beneath actions and filters has been overhauled and modernized, fixing bugs along the way.</p>\n<h3>Settings Registration API</h3>\n<p>register_setting() <a href="https://make.wordpress.org/core/2016/10/26/registering-your-settings-in-wordpress-4-7/">has been enhanced</a> to include type, description, and REST API visibility.</p>\n<h3><a href="https://make.wordpress.org/core/2016/10/12/customize-changesets-technical-design-decisions/">Customize Changesets</a></h3>\n<p>Customize changesets make changes in the customizer persistent, like autosave drafts. They also make exciting new features like starter content possible.</p>\n<hr />\n<h2 style="text-align:center">The Squad</h2>\n<p>This release was led by <a href="https://helen.blog">Helen Hou-Sandí</a>, backed up by <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a> and <a href="http://aaron.jorb.in/">Aaron Jorbin</a> as Release Deputies, and with the help of these fine individuals. There are 482 contributors with props in this release—the most ever—with 205 of them contributing for the first time. Pull up some sassy Sarah Vaughan on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/wraithkenny">[Inactive]</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/abrightclearweb">abrightclearweb</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/acmethemes">Acme Themes</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adammacias">adammacias</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ahmadawais">ahmadawais</a>, <a href="https://profiles.wordpress.org/airesvsg">airesvsg</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/akshayvinchurkar">akshayvinchurkar</a>, <a href="https://profiles.wordpress.org/schlessera">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/ironpaperweight">Alex Hon</a>, <a href="https://profiles.wordpress.org/alex27">alex27</a>, <a href="https://profiles.wordpress.org/allancole">allancole</a>, <a href="https://profiles.wordpress.org/arush">Amanda Rush</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andrewp-2">Andreas Panag</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/aniketpant">Aniket Pant</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/antisilent">antisilent</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/apokalyptik">apokalyptik</a>, <a href="https://profiles.wordpress.org/artoliukkonen">artoliukkonen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/attitude">attitude</a>, <a href="https://profiles.wordpress.org/backermann">backermann</a>, <a href="https://profiles.wordpress.org/b-07">Bappi</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/binarymoon">binarymoon</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/boblinthorst">boblinthorst</a>, <a href="https://profiles.wordpress.org/boboudreau">boboudreau</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/brainstormforce">Brainstorm Force</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianhogg">Brian Hogg</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/bronsonquick">Bronson Quick</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/caseypatrickdriscoll">Casey Driscoll</a>, <a href="https://profiles.wordpress.org/caspie">Caspie</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/cheeserolls">cheeserolls</a>, <a href="https://profiles.wordpress.org/chesio">chesio</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chredd">chredd</a>, <a href="https://profiles.wordpress.org/chrisjean">Chris Jean</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/chris_d2d">Chris Smith</a>, <a href="https://profiles.wordpress.org/chrisvanpatten">Chris Van Patten</a>, <a href="https://profiles.wordpress.org/chriswiegman">Chris Wiegman</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/christian1012">Christian Chung</a>, <a href="https://profiles.wordpress.org/cwpnolen">Christian Nolen</a>, <a href="https://profiles.wordpress.org/needle">Christian Wach</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/clarionwpdeveloper">Clarion Technologies</a>, <a href="https://profiles.wordpress.org/claudiosmweb">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiosanches">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiolabarbera">ClaudioLaBarbera</a>, <a href="https://profiles.wordpress.org/codemovementpk">codemovement.pk</a>, <a href="https://profiles.wordpress.org/coderkevin">coderkevin</a>, <a href="https://profiles.wordpress.org/codfish">codfish</a>, <a href="https://profiles.wordpress.org/coreymcollins">coreymcollins</a>, <a href="https://profiles.wordpress.org/curdin">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/cgrymala">Curtiss Grymala</a>, <a href="https://profiles.wordpress.org/cdog">Cătălin Dogaru</a>, <a href="https://profiles.wordpress.org/danhgilmore">danhgilmore</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber </a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/danielpietrasik">Daniel Pietrasik</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dllh">Daryl L. L. Houston (dllh)</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/goto10">Dave Romsey (goto10)</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dglingren">David Lingren</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/davidbhayes">davidbhayes</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/deeptiboddapati">deeptiboddapati</a>, <a href="https://profiles.wordpress.org/delphinus">delphinus</a>, <a href="https://profiles.wordpress.org/deltafactory">deltafactory</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/pcfreak30">Derrick Hammer</a>, <a href="https://profiles.wordpress.org/derrickkoo">Derrick Koo</a>, <a href="https://profiles.wordpress.org/dimchik">dimchik</a>, <a href="https://profiles.wordpress.org/dineshc">Dinesh Chouhan</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipeshkakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dotancohen">Dotan Cohen</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/doughamlin">doughamlin</a>, <a href="https://profiles.wordpress.org/dreamon11">DreamOn11</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/duncanjbrown">duncanjbrown</a>, <a href="https://profiles.wordpress.org/dungengronovius">dungengronovius</a>, <a href="https://profiles.wordpress.org/dylanauty">DylanAuty</a>, <a href="https://profiles.wordpress.org/hurtige">Eddie Hurtig</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/chopinbach">Edwin Cromley</a>, <a href="https://profiles.wordpress.org/electricfeet">ElectricFeet</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elyobo">elyobo</a>, <a href="https://profiles.wordpress.org/enodekciw">enodekciw</a>, <a href="https://profiles.wordpress.org/enshrined">enshrined</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/pushred">Eric Lanehart</a>, <a href="https://profiles.wordpress.org/eherman24">Evan Herman</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fencer04">Fencer04</a>, <a href="https://profiles.wordpress.org/florianbrinkmann">Florian Brinkmann</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/fomenkoandrey">fomenkoandrey</a>, <a href="https://profiles.wordpress.org/frankiet">Francesco Taurino</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/fjarrett">Frankie Jarrett</a>, <a href="https://profiles.wordpress.org/akeif">Fred</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/fuscata">fuscata</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/goranseric">Goran &#352;erić</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/grantderepas">Grant Derepas</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hiddenpearls">hiddenpearls</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hristo-sg">Hristo Pandjarov</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianedington">Ian Edington</a>, <a href="https://profiles.wordpress.org/idealien">idealien</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/implenton">implenton</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/ivdimova">ivdimova</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jakept">Jacob Peattie</a>, <a href="https://profiles.wordpress.org/whyisjake">Jake Spurlock</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jamesacero">jamesacero</a>, <a href="https://profiles.wordpress.org/japh">Japh</a>, <a href="https://profiles.wordpress.org/jaredcobb">Jared Cobb</a>, <a href="https://profiles.wordpress.org/jayarjo">jayarjo</a>, <a href="https://profiles.wordpress.org/jdolan">jdolan</a>, <a href="https://profiles.wordpress.org/jdoubleu">jdoubleu</a>, <a href="https://profiles.wordpress.org/jblz">Jeff Bowen</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jimt">jimt</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jmusal">jmusal</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelcj91">Joel James</a>, <a href="https://profiles.wordpress.org/johanmynhardt">johanmynhardt</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/zyphonic">John Dittmar</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/daggerhart">Jonathan Daggerhart</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/jonnyauk">jonnyauk</a>, <a href="https://profiles.wordpress.org/jordesign">jordesign</a>, <a href="https://profiles.wordpress.org/jorritschippers">JorritSchippers</a>, <a href="https://profiles.wordpress.org/joefusco">Joseph Fusco</a>, <a href="https://profiles.wordpress.org/jjeaton">Josh Eaton</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshcummingsdesign">joshcummingsdesign</a>, <a href="https://profiles.wordpress.org/joshkadis">joshkadis</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jrgould">JRGould</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/nukaga">Junko Nukaga</a>, <a href="https://profiles.wordpress.org/justinbusa">Justin Busa</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/jshreve">Justin Shreve</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/kacperszurek">kacperszurek</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kalenjohnson">KalenJohnson</a>, <a href="https://profiles.wordpress.org/codebykat">Kat Hagan</a>, <a href="https://profiles.wordpress.org/kkoppenhaver">Keanan Koppenhaver</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/kellbot">kellbot</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/koenschipper">koenschipper</a>, <a href="https://profiles.wordpress.org/kokarn">kokarn</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kouratoras">Konstantinos Kouratoras</a>, <a href="https://profiles.wordpress.org/kuchenundkakao">kuchenundkakao</a>, <a href="https://profiles.wordpress.org/kuldipem">kuldipem</a>, <a href="https://profiles.wordpress.org/laurelfulford">Laurel Fulford</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leobaiano">Leo Baiano</a>, <a href="https://profiles.wordpress.org/littlebigthing">LittleBigThings (Csaba)</a>, <a href="https://profiles.wordpress.org/lucasstark">Lucas Stark</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/lgedeon">Luke Gedeon</a>, <a href="https://profiles.wordpress.org/lukepettway">Luke Pettway</a>, <a href="https://profiles.wordpress.org/lyubomir_popov">lyubomir_popov</a>, <a href="https://profiles.wordpress.org/mageshp">mageshp</a>, <a href="https://profiles.wordpress.org/mahesh901122">Mahesh Waghmare</a>, <a href="https://profiles.wordpress.org/mangeshp">Mangesh Parte</a>, <a href="https://profiles.wordpress.org/manishsongirkar36">Manish Songirkar</a>, <a href="https://profiles.wordpress.org/mantismamita">mantismamita</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/mariovalney">Mario Valney</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/markshep">markshep</a>, <a href="https://profiles.wordpress.org/matrixik">matrixik</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/jaworskimatt">Matt Jaworski</a>, <a href="https://profiles.wordpress.org/mattking5000">Matt King</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mayukojpn">Mayo Moriyama</a>, <a href="https://profiles.wordpress.org/mbelchev">mbelchev</a>, <a href="https://profiles.wordpress.org/mckernanin">mckernanin</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mhowell">mhowell</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michalzuber">michalzuber</a>, <a href="https://profiles.wordpress.org/stubgo">Miina Sikk</a>, <a href="https://profiles.wordpress.org/mauteri">Mike Auteri</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mdgl">Mike Glendinning</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikelittle">Mike Little</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikeviele">Mike Viele</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/modemlooper">modemlooper</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/deremohan">Mohan Dere</a>, <a href="https://profiles.wordpress.org/monikarao">monikarao</a>, <a href="https://profiles.wordpress.org/morettigeorgiev">morettigeorgiev</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/mrbobbybryant">mrbobbybryant</a>, <a href="https://profiles.wordpress.org/nnaimov">Naim Naimov</a>, <a href="https://profiles.wordpress.org/natereist">Nate Reist</a>, <a href="https://profiles.wordpress.org/natewr">NateWr</a>, <a href="https://profiles.wordpress.org/nathanrice">nathanrice</a>, <a href="https://profiles.wordpress.org/nazgul">Nazgul</a>, <a href="https://profiles.wordpress.org/greatislander">Ned Zimmerman</a>, <a href="https://profiles.wordpress.org/krstarica">net</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey </a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/noplanman">noplanman</a>, <a href="https://profiles.wordpress.org/nullvariable">nullvariable</a>, <a href="https://profiles.wordpress.org/odie2">odie2</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/hideokamoto">Okamoto Hidetaka</a>, <a href="https://profiles.wordpress.org/orvils">orvils</a>, <a href="https://profiles.wordpress.org/oskosk">oskosk</a>, <a href="https://profiles.wordpress.org/ottok">Otto Kek&#228;l&#228;inen</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/imnok">Pantip Treerattanapitak (Nok)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/patilvikasj">patilvikasj</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/sirbrillig">Payton Swick</a>, <a href="https://profiles.wordpress.org/pdufour">pdufour</a>, <a href="https://profiles.wordpress.org/piewp">Perdaan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/phh">phh</a>, <a href="https://profiles.wordpress.org/php">php</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pippinsplugins">pippinsplugins</a>, <a href="https://profiles.wordpress.org/pjgalbraith">pjgalbraith</a>, <a href="https://profiles.wordpress.org/pkevan">pkevan</a>, <a href="https://profiles.wordpress.org/pratikchaskar">Pratik</a>, <a href="https://profiles.wordpress.org/pressionate">Pressionate</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/procodewp">procodewp</a>, <a href="https://profiles.wordpress.org/quasel">quasel</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/superpoincare">Ramanan</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/ramiabraham">ramiabraham</a>, <a href="https://profiles.wordpress.org/ranh">ranh</a>, <a href="https://profiles.wordpress.org/redsand">Red Sand Media Group</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/iamjolly">Robert Jolly</a>, <a href="https://profiles.wordpress.org/rnoakes3rd">Robert Noakes</a>, <a href="https://profiles.wordpress.org/d4z_c0nf">Rocco Aliberti</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/fronaldaraujo">Ronald Ara&#250;jo</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/guavaworks">Roy Sivan</a>, <a href="https://profiles.wordpress.org/ryankienstra">Ryan Kienstra</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/sandesh055">Sandesh</a>, <a href="https://profiles.wordpress.org/smyoon315">Sang-Min Yoon</a>, <a href="https://profiles.wordpress.org/sanketparmar">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/pollyplummer">Sarah Gooding</a>, <a href="https://profiles.wordpress.org/sayedwp">Sayed Taqui</a>, <a href="https://profiles.wordpress.org/schrapel">schrapel</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scrappyhuborg">scrappy@hub.org</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/seancjones">seancjones</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/sfpt">sfpt</a>, <a href="https://profiles.wordpress.org/shayanys">shayanys</a>, <a href="https://profiles.wordpress.org/shazahm1hotmailcom">shazahm1</a>, <a href="https://profiles.wordpress.org/shprink">shprink</a>, <a href="https://profiles.wordpress.org/simonlampen">simonlampen</a>, <a href="https://profiles.wordpress.org/skippy">skippy</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/snacking">snacking</a>, <a href="https://profiles.wordpress.org/solal">solal</a>, <a href="https://profiles.wordpress.org/soean">Soren Wrede</a>, <a href="https://profiles.wordpress.org/sstoqnov">Stanimir Stoyanov</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/sharkomatic">Steph</a>, <a href="https://profiles.wordpress.org/sswells">Steph Wells</a>, <a href="https://profiles.wordpress.org/sillybean">Stephanie Leary</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/swapnild">swapnild</a>, <a href="https://profiles.wordpress.org/szaqal21">szaqal21</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tapsboy">tapsboy</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/team">team</a>, <a href="https://profiles.wordpress.org/tg29359">tg29359</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/the">the</a>, <a href="https://profiles.wordpress.org/themeshaper">themeshaper</a>, <a href="https://profiles.wordpress.org/thenbrent">thenbrent</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/tierra">tierra</a>, <a href="https://profiles.wordpress.org/tnash">Tim Nash</a>, <a href="https://profiles.wordpress.org/timmydcrawford">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/timph">timph</a>, <a href="https://profiles.wordpress.org/tkama">Tkama</a>, <a href="https://profiles.wordpress.org/tnegri">tnegri</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/tjnowell">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tomdxw">tomdxw</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/traversal">traversal</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/trishasalas">Trisha Salas</a>, <a href="https://profiles.wordpress.org/tristangemus">tristangemus</a>, <a href="https://profiles.wordpress.org/truongwp">truongwp</a>, <a href="https://profiles.wordpress.org/tsl143">tsl143</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/valeriutihai">Valeriu Tihai</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/vrundakansara-1">Vrunda Kansara</a>, <a href="https://profiles.wordpress.org/webbgaraget">webbgaraget</a>, <a href="https://profiles.wordpress.org/webmandesign">WebMan Design &#124; Oliver Juhas</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/wolly">Wolly aka Paolo Valenti</a>, <a href="https://profiles.wordpress.org/yale01">yale01</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yogasukma">Yoga Sukma</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>, <a href="https://profiles.wordpress.org/zhildzik">zhildzik</a>, and <a href="https://profiles.wordpress.org/zsusag">zsusag</a>.\n<p>&nbsp;<br />\nSpecial thanks go to <a href="https://ramiabraham.com/">Rami Abraham</a> for producing the release video and the many fine haiku we saw in the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">beta</a> and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-release-candidate/">RC</a> announcement posts.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.7. Their efforts bring WordPress 4.7 fully translated to 52 languages at release time with more on the way. Additionally, the WordPress 4.7 release video has been captioned into 44 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress &#8211; we hope you enjoy!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4596";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 26 May 2017 20:27:53 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Thu, 25 May 2017 23:04:37 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}}s:5:"build";s:14:"20170520225427";}', 'no');
INSERT INTO `wp_doptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1280, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495873677', 'no'),
(1281, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495830477', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dpostmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dpostmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1593 ;

--
-- Volcado de datos para la tabla `wp_dpostmeta`
--

INSERT INTO `wp_dpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8, 13, '_wc_review_count', '0'),
(9, 13, '_wc_rating_count', 'a:0:{}'),
(10, 13, '_wc_average_rating', '0'),
(11, 13, '_edit_last', '1'),
(12, 13, '_edit_lock', '1495327419:1'),
(13, 13, '_sku', ''),
(14, 13, '_regular_price', '10000'),
(15, 13, '_sale_price', ''),
(16, 13, '_sale_price_dates_from', ''),
(17, 13, '_sale_price_dates_to', ''),
(18, 13, 'total_sales', '0'),
(19, 13, '_tax_status', 'taxable'),
(20, 13, '_tax_class', ''),
(21, 13, '_manage_stock', 'no'),
(22, 13, '_backorders', 'no'),
(23, 13, '_sold_individually', 'no'),
(24, 13, '_weight', ''),
(25, 13, '_length', ''),
(26, 13, '_width', ''),
(27, 13, '_height', ''),
(28, 13, '_upsell_ids', 'a:0:{}'),
(29, 13, '_crosssell_ids', 'a:0:{}'),
(30, 13, '_purchase_note', ''),
(31, 13, '_default_attributes', 'a:0:{}'),
(32, 13, '_virtual', 'no'),
(33, 13, '_downloadable', 'no'),
(34, 13, '_product_image_gallery', ''),
(35, 13, '_download_limit', '-1'),
(36, 13, '_download_expiry', '-1'),
(37, 13, '_stock', NULL),
(38, 13, '_stock_status', 'instock'),
(39, 13, '_product_version', '3.0.7'),
(40, 13, '_price', '10000'),
(41, 14, '_edit_last', '1'),
(43, 14, '_edit_lock', '1495331527:1'),
(46, 17, '_menu_item_type', 'custom'),
(47, 17, '_menu_item_menu_item_parent', '0'),
(48, 17, '_menu_item_object_id', '17'),
(49, 17, '_menu_item_object', 'custom'),
(50, 17, '_menu_item_target', ''),
(51, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 17, '_menu_item_xfn', ''),
(53, 17, '_menu_item_url', 'http://localhost/distribuidora/'),
(54, 17, '_menu_item_orphaned', '1495338358'),
(55, 18, '_menu_item_type', 'post_type'),
(56, 18, '_menu_item_menu_item_parent', '0'),
(57, 18, '_menu_item_object_id', '10'),
(58, 18, '_menu_item_object', 'page'),
(59, 18, '_menu_item_target', ''),
(60, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 18, '_menu_item_xfn', ''),
(62, 18, '_menu_item_url', ''),
(63, 18, '_menu_item_orphaned', '1495338358'),
(64, 19, '_menu_item_type', 'post_type'),
(65, 19, '_menu_item_menu_item_parent', '0'),
(66, 19, '_menu_item_object_id', '11'),
(67, 19, '_menu_item_object', 'page'),
(68, 19, '_menu_item_target', ''),
(69, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 19, '_menu_item_xfn', ''),
(71, 19, '_menu_item_url', ''),
(72, 19, '_menu_item_orphaned', '1495338359'),
(91, 22, '_menu_item_type', 'post_type'),
(92, 22, '_menu_item_menu_item_parent', '0'),
(93, 22, '_menu_item_object_id', '12'),
(94, 22, '_menu_item_object', 'page'),
(95, 22, '_menu_item_target', ''),
(96, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 22, '_menu_item_xfn', ''),
(98, 22, '_menu_item_url', ''),
(99, 22, '_menu_item_orphaned', '1495338360'),
(100, 23, '_menu_item_type', 'post_type'),
(101, 23, '_menu_item_menu_item_parent', '0'),
(102, 23, '_menu_item_object_id', '9'),
(103, 23, '_menu_item_object', 'page'),
(104, 23, '_menu_item_target', ''),
(105, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 23, '_menu_item_xfn', ''),
(107, 23, '_menu_item_url', ''),
(108, 23, '_menu_item_orphaned', '1495338360'),
(109, 24, '_menu_item_type', 'post_type'),
(110, 24, '_menu_item_menu_item_parent', '0'),
(111, 24, '_menu_item_object_id', '8'),
(112, 24, '_menu_item_object', 'page'),
(113, 24, '_menu_item_target', ''),
(114, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 24, '_menu_item_xfn', ''),
(116, 24, '_menu_item_url', ''),
(117, 24, '_menu_item_orphaned', '1495338360'),
(118, 25, '_wp_attached_file', '2017/05/de-juguetes-lego-icono-7513-128.png'),
(119, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:43:"2017/05/de-juguetes-lego-icono-7513-128.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 26, '_wp_attached_file', '2017/05/perfume-icon.png'),
(121, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:24:"2017/05/perfume-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 27, '_wp_attached_file', '2017/05/icono_cosmeticos.png'),
(123, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:28:"2017/05/icono_cosmeticos.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 13, '_wp_trash_meta_status', 'publish'),
(125, 13, '_wp_trash_meta_time', '1495339403'),
(126, 13, '_wp_desired_post_slug', 'nuevo-producto-x'),
(127, 28, '_wc_review_count', '0'),
(128, 28, '_wc_rating_count', 'a:0:{}'),
(129, 28, '_wc_average_rating', '0'),
(130, 28, '_edit_last', '1'),
(131, 28, '_edit_lock', '1495339568:1'),
(132, 29, '_wp_attached_file', '2017/05/power_ranguers_juguetes.jpg'),
(133, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:740;s:4:"file";s:35:"2017/05/power_ranguers_juguetes.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-slider";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-740x488.jpg";s:5:"width";i:740;s:6:"height";i:488;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-740x400.jpg";s:5:"width";i:740;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:35:"power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1422364634";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 28, '_thumbnail_id', '29'),
(135, 28, '_no_shipping_required', 'no'),
(136, 28, '_paypal_billing_agreement', 'no'),
(137, 28, '_enable_sandbox_mode', 'no'),
(138, 28, '_enable_ec_button', 'no'),
(139, 28, '_sku', ''),
(140, 28, '_regular_price', '20000'),
(141, 28, '_sale_price', ''),
(142, 28, '_sale_price_dates_from', ''),
(143, 28, '_sale_price_dates_to', ''),
(144, 28, 'total_sales', '4'),
(145, 28, '_tax_status', 'taxable'),
(146, 28, '_tax_class', ''),
(147, 28, '_manage_stock', 'yes'),
(148, 28, '_backorders', 'no'),
(149, 28, '_sold_individually', 'no'),
(150, 28, '_weight', '0.50'),
(151, 28, '_length', '20'),
(152, 28, '_width', '20'),
(153, 28, '_height', '20'),
(154, 28, '_upsell_ids', 'a:0:{}'),
(155, 28, '_crosssell_ids', 'a:0:{}'),
(156, 28, '_purchase_note', ''),
(157, 28, '_default_attributes', 'a:0:{}'),
(158, 28, '_virtual', 'no'),
(159, 28, '_downloadable', 'no'),
(160, 28, '_product_image_gallery', ''),
(161, 28, '_download_limit', '-1'),
(162, 28, '_download_expiry', '-1'),
(163, 28, '_stock', '16'),
(164, 28, '_stock_status', 'instock'),
(165, 28, '_product_version', '3.0.7'),
(166, 28, '_price', '20000'),
(169, 31, '_wc_review_count', '0'),
(170, 31, '_wc_rating_count', 'a:0:{}'),
(171, 31, '_wc_average_rating', '0'),
(172, 31, '_edit_last', '1'),
(173, 31, '_edit_lock', '1495655691:1'),
(174, 32, '_wp_attached_file', '2017/05/carolina_herrera_fragancia.jpg'),
(175, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:38:"2017/05/carolina_herrera_fragancia.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"carolina_herrera_fragancia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"carolina_herrera_fragancia-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 31, '_thumbnail_id', '32'),
(177, 31, '_sku', ''),
(178, 31, '_regular_price', '100000'),
(179, 31, '_sale_price', ''),
(180, 31, '_sale_price_dates_from', ''),
(181, 31, '_sale_price_dates_to', ''),
(182, 31, 'total_sales', '1'),
(183, 31, '_tax_status', 'taxable'),
(184, 31, '_tax_class', ''),
(185, 31, '_manage_stock', 'yes'),
(186, 31, '_backorders', 'no'),
(187, 31, '_sold_individually', 'no'),
(188, 31, '_weight', '0.350'),
(189, 31, '_length', '30'),
(190, 31, '_width', '30'),
(191, 31, '_height', '10'),
(192, 31, '_upsell_ids', 'a:0:{}'),
(193, 31, '_crosssell_ids', 'a:0:{}'),
(194, 31, '_purchase_note', ''),
(195, 31, '_default_attributes', 'a:0:{}'),
(196, 31, '_virtual', 'no'),
(197, 31, '_downloadable', 'no'),
(198, 31, '_product_image_gallery', ''),
(199, 31, '_download_limit', '-1'),
(200, 31, '_download_expiry', '-1'),
(201, 31, '_stock', '199'),
(202, 31, '_stock_status', 'instock'),
(203, 31, '_product_version', '3.0.7'),
(204, 31, '_price', '100000'),
(205, 14, '_wp_trash_meta_status', 'publish'),
(206, 14, '_wp_trash_meta_time', '1495341766'),
(207, 14, '_wp_desired_post_slug', 'enana'),
(208, 1, '_wp_trash_meta_status', 'publish'),
(209, 1, '_wp_trash_meta_time', '1495341771'),
(210, 1, '_wp_desired_post_slug', 'hola-mundo'),
(211, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(224, 36, '_menu_item_type', 'custom'),
(225, 36, '_menu_item_menu_item_parent', '0'),
(226, 36, '_menu_item_object_id', '36'),
(227, 36, '_menu_item_object', 'custom'),
(228, 36, '_menu_item_target', ''),
(229, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 36, '_menu_item_xfn', ''),
(231, 36, '_menu_item_url', 'http://localhost/distribuidora/'),
(232, 36, '_menu_item_orphaned', '1495341954'),
(233, 37, '_menu_item_type', 'post_type'),
(234, 37, '_menu_item_menu_item_parent', '0'),
(235, 37, '_menu_item_object_id', '11'),
(236, 37, '_menu_item_object', 'page'),
(237, 37, '_menu_item_target', ''),
(238, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 37, '_menu_item_xfn', ''),
(240, 37, '_menu_item_url', ''),
(241, 37, '_menu_item_orphaned', '1495341955'),
(242, 38, '_menu_item_type', 'post_type'),
(243, 38, '_menu_item_menu_item_parent', '0'),
(244, 38, '_menu_item_object_id', '9'),
(245, 38, '_menu_item_object', 'page'),
(246, 38, '_menu_item_target', ''),
(247, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 38, '_menu_item_xfn', ''),
(249, 38, '_menu_item_url', ''),
(250, 38, '_menu_item_orphaned', '1495341955'),
(251, 39, '_menu_item_type', 'post_type'),
(252, 39, '_menu_item_menu_item_parent', '0'),
(253, 39, '_menu_item_object_id', '8'),
(254, 39, '_menu_item_object', 'page'),
(255, 39, '_menu_item_target', ''),
(256, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(257, 39, '_menu_item_xfn', ''),
(258, 39, '_menu_item_url', ''),
(259, 39, '_menu_item_orphaned', '1495341956'),
(260, 40, '_menu_item_type', 'custom'),
(261, 40, '_menu_item_menu_item_parent', '0'),
(262, 40, '_menu_item_object_id', '40'),
(263, 40, '_menu_item_object', 'custom'),
(264, 40, '_menu_item_target', ''),
(265, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 40, '_menu_item_xfn', ''),
(267, 40, '_menu_item_url', 'http://localhost/distribuidora/'),
(268, 40, '_menu_item_orphaned', '1495387615'),
(269, 41, '_menu_item_type', 'post_type'),
(270, 41, '_menu_item_menu_item_parent', '0'),
(271, 41, '_menu_item_object_id', '11'),
(272, 41, '_menu_item_object', 'page'),
(273, 41, '_menu_item_target', ''),
(274, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(275, 41, '_menu_item_xfn', ''),
(276, 41, '_menu_item_url', ''),
(277, 41, '_menu_item_orphaned', '1495387616'),
(278, 42, '_menu_item_type', 'post_type'),
(279, 42, '_menu_item_menu_item_parent', '0'),
(280, 42, '_menu_item_object_id', '9'),
(281, 42, '_menu_item_object', 'page'),
(282, 42, '_menu_item_target', ''),
(283, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(284, 42, '_menu_item_xfn', ''),
(285, 42, '_menu_item_url', ''),
(286, 42, '_menu_item_orphaned', '1495387617'),
(287, 43, '_menu_item_type', 'post_type'),
(288, 43, '_menu_item_menu_item_parent', '0'),
(289, 43, '_menu_item_object_id', '8'),
(290, 43, '_menu_item_object', 'page'),
(291, 43, '_menu_item_target', ''),
(292, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(293, 43, '_menu_item_xfn', ''),
(294, 43, '_menu_item_url', ''),
(295, 43, '_menu_item_orphaned', '1495387618'),
(296, 44, '_menu_item_type', 'custom'),
(297, 44, '_menu_item_menu_item_parent', '0'),
(298, 44, '_menu_item_object_id', '44'),
(299, 44, '_menu_item_object', 'custom'),
(300, 44, '_menu_item_target', ''),
(301, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(302, 44, '_menu_item_xfn', ''),
(303, 44, '_menu_item_url', 'http://localhost/distribuidora/'),
(304, 44, '_menu_item_orphaned', '1495390578'),
(305, 45, '_menu_item_type', 'post_type'),
(306, 45, '_menu_item_menu_item_parent', '0'),
(307, 45, '_menu_item_object_id', '11'),
(308, 45, '_menu_item_object', 'page'),
(309, 45, '_menu_item_target', ''),
(310, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(311, 45, '_menu_item_xfn', ''),
(312, 45, '_menu_item_url', ''),
(313, 45, '_menu_item_orphaned', '1495390578'),
(314, 46, '_menu_item_type', 'post_type'),
(315, 46, '_menu_item_menu_item_parent', '0'),
(316, 46, '_menu_item_object_id', '9'),
(317, 46, '_menu_item_object', 'page'),
(318, 46, '_menu_item_target', ''),
(319, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(320, 46, '_menu_item_xfn', ''),
(321, 46, '_menu_item_url', ''),
(322, 46, '_menu_item_orphaned', '1495390579'),
(323, 47, '_menu_item_type', 'post_type'),
(324, 47, '_menu_item_menu_item_parent', '0'),
(325, 47, '_menu_item_object_id', '8'),
(326, 47, '_menu_item_object', 'page'),
(327, 47, '_menu_item_target', ''),
(328, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(329, 47, '_menu_item_xfn', ''),
(330, 47, '_menu_item_url', ''),
(331, 47, '_menu_item_orphaned', '1495390580'),
(334, 50, '_wp_attached_file', '2017/05/minion-972908_1280.jpg'),
(335, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:851;s:4:"file";s:30:"2017/05/minion-972908_1280.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"minion-972908_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"minion-972908_1280-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"minion-972908_1280-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"minion-972908_1280-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"minion-972908_1280-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"minion-972908_1280-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:21:"estore-featured-image";a:4:{s:4:"file";s:30:"minion-972908_1280-380x250.jpg";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-product-grid";a:4:{s:4:"file";s:28:"minion-972908_1280-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-square";a:4:{s:4:"file";s:30:"minion-972908_1280-444x444.jpg";s:5:"width";i:444;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-slider";a:4:{s:4:"file";s:30:"minion-972908_1280-800x521.jpg";s:5:"width";i:800;s:6:"height";i:521;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-medium-image";a:4:{s:4:"file";s:30:"minion-972908_1280-250x180.jpg";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(336, 51, '_wp_attached_file', '2017/05/cropped-minion-972908_1280.jpg'),
(337, 51, '_wp_attachment_context', 'custom-header'),
(338, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:506;s:4:"file";s:38:"2017/05/cropped-minion-972908_1280.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"cropped-minion-972908_1280-300x76.jpg";s:5:"width";i:300;s:6:"height";i:76;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-768x194.jpg";s:5:"width";i:768;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"cropped-minion-972908_1280-1024x259.jpg";s:5:"width";i:1024;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-600x506.jpg";s:5:"width";i:600;s:6:"height";i:506;s:9:"mime-type";s:10:"image/jpeg";}s:21:"estore-featured-image";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-380x250.jpg";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-product-grid";a:4:{s:4:"file";s:36:"cropped-minion-972908_1280-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-square";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-444x444.jpg";s:5:"width";i:444;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-slider";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-800x506.jpg";s:5:"width";i:800;s:6:"height";i:506;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-medium-image";a:4:{s:4:"file";s:38:"cropped-minion-972908_1280-250x180.jpg";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(339, 51, '_wp_attachment_custom_header_last_used_estore', '1495394609'),
(340, 51, '_wp_attachment_is_custom_header', 'estore'),
(341, 52, '_wp_trash_meta_status', 'publish'),
(342, 52, '_wp_trash_meta_time', '1495394609'),
(343, 53, '_wp_attached_file', '2017/05/play-stone-1743645_1920.jpg'),
(344, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1149;s:4:"file";s:35:"2017/05/play-stone-1743645_1920.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"play-stone-1743645_1920-1024x613.jpg";s:5:"width";i:1024;s:6:"height";i:613;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:21:"estore-featured-image";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-380x250.jpg";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-product-grid";a:4:{s:4:"file";s:33:"play-stone-1743645_1920-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-square";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-444x444.jpg";s:5:"width";i:444;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-slider";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-800x521.jpg";s:5:"width";i:800;s:6:"height";i:521;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-medium-image";a:4:{s:4:"file";s:35:"play-stone-1743645_1920-250x180.jpg";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D7200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"55";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:8:"0.003125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(345, 53, '_wp_attachment_is_custom_background', 'estore'),
(346, 55, '_wp_attached_file', '2017/05/cropped-power_ranguers_juguetes.jpg'),
(347, 55, '_wp_attachment_context', 'custom-logo'),
(348, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:740;s:4:"file";s:43:"2017/05/cropped-power_ranguers_juguetes.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:21:"estore-featured-image";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-380x250.jpg";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-product-grid";a:4:{s:4:"file";s:41:"cropped-power_ranguers_juguetes-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-square";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-444x444.jpg";s:5:"width";i:444;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-slider";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-740x521.jpg";s:5:"width";i:740;s:6:"height";i:521;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-medium-image";a:4:{s:4:"file";s:43:"cropped-power_ranguers_juguetes-250x180.jpg";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 56, '_wp_attached_file', '2017/05/cropped-de-juguetes-lego-icono-7513-128.png'),
(350, 56, '_wp_attachment_context', 'site-icon'),
(351, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:51:"2017/05/cropped-de-juguetes-lego-icono-7513-128.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:21:"estore-featured-image";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-380x250.png";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:19:"estore-product-grid";a:4:{s:4:"file";s:49:"cropped-de-juguetes-lego-icono-7513-128-75x75.png";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:13:"estore-square";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-444x444.png";s:5:"width";i:444;s:6:"height";i:444;s:9:"mime-type";s:9:"image/png";}s:19:"estore-medium-image";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-250x180.png";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:49:"cropped-de-juguetes-lego-icono-7513-128-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(352, 54, '_wp_trash_meta_status', 'publish'),
(353, 54, '_wp_trash_meta_time', '1495395686'),
(354, 57, '_wp_attached_file', '2017/05/cropped-de-juguetes-lego-icono-7513-128-1.png'),
(355, 57, '_wp_attachment_context', 'custom-logo'),
(356, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:53:"2017/05/cropped-de-juguetes-lego-icono-7513-128-1.png";s:5:"sizes";a:1:{s:19:"estore-product-grid";a:4:{s:4:"file";s:51:"cropped-de-juguetes-lego-icono-7513-128-1-75x75.png";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(359, 59, '_wp_attached_file', '2017/05/cropped-cropped-minion-972908_1280.jpg'),
(360, 59, '_wp_attachment_context', 'custom-header'),
(361, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:400;s:4:"file";s:46:"2017/05/cropped-cropped-minion-972908_1280.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"cropped-cropped-minion-972908_1280-300x60.jpg";s:5:"width";i:300;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-768x154.jpg";s:5:"width";i:768;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"cropped-cropped-minion-972908_1280-1024x205.jpg";s:5:"width";i:1024;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"estore-featured-image";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-380x250.jpg";s:5:"width";i:380;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-product-grid";a:4:{s:4:"file";s:44:"cropped-cropped-minion-972908_1280-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-square";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-444x400.jpg";s:5:"width";i:444;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:13:"estore-slider";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:19:"estore-medium-image";a:4:{s:4:"file";s:46:"cropped-cropped-minion-972908_1280-250x180.jpg";s:5:"width";i:250;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(362, 59, '_wp_attachment_custom_header_last_used_estore', '1495396069'),
(363, 59, '_wp_attachment_is_custom_header', 'estore'),
(364, 58, '_wp_trash_meta_status', 'publish'),
(365, 58, '_wp_trash_meta_time', '1495396069'),
(366, 61, '_wp_attached_file', '2017/05/banco_bicentenario.png'),
(367, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:195;s:4:"file";s:30:"2017/05/banco_bicentenario.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"banco_bicentenario-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"banco_bicentenario-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:19:"estore-product-grid";a:4:{s:4:"file";s:28:"banco_bicentenario-75x75.png";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:19:"estore-medium-image";a:4:{s:4:"file";s:30:"banco_bicentenario-195x180.png";s:5:"width";i:195;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(368, 60, '_wp_trash_meta_status', 'publish'),
(369, 60, '_wp_trash_meta_time', '1495399936'),
(370, 62, '_wp_trash_meta_status', 'publish'),
(371, 62, '_wp_trash_meta_time', '1495400012'),
(378, 66, '_edit_last', '1'),
(379, 66, '_edit_lock', '1495400620:1'),
(382, 66, '_wp_desired_post_slug', ''),
(383, 68, '_wp_trash_meta_status', 'publish'),
(384, 68, '_wp_trash_meta_time', '1495405772'),
(385, 69, '_wp_trash_meta_status', 'publish'),
(386, 69, '_wp_trash_meta_time', '1495405822'),
(387, 71, '_wp_trash_meta_status', 'publish'),
(388, 71, '_wp_trash_meta_time', '1495407854'),
(389, 72, '_wp_trash_meta_status', 'publish'),
(390, 72, '_wp_trash_meta_time', '1495407931'),
(391, 73, '_wp_attached_file', '2017/05/cropped-cropped-cropped-minion-972908_1280.jpg'),
(392, 73, '_wp_attachment_context', 'custom-logo'),
(393, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:400;s:4:"file";s:54:"2017/05/cropped-cropped-cropped-minion-972908_1280.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:53:"cropped-cropped-cropped-minion-972908_1280-300x75.jpg";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-768x192.jpg";s:5:"width";i:768;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"cropped-cropped-cropped-minion-972908_1280-1024x256.jpg";s:5:"width";i:1024;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-category";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-848x400.jpg";s:5:"width";i:848;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:54:"cropped-cropped-cropped-minion-972908_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(409, 81, '_wp_attached_file', '2017/05/productos.png'),
(410, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:21:"2017/05/productos.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"productos-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"productos-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(411, 82, '_wc_review_count', '0'),
(412, 82, '_wc_rating_count', 'a:0:{}'),
(413, 82, '_wc_average_rating', '0'),
(414, 82, '_edit_last', '1'),
(415, 82, '_edit_lock', '1495656283:1'),
(416, 83, '_wp_attached_file', '2017/05/tinte_cabello.jpg'),
(417, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:25:"2017/05/tinte_cabello.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"tinte_cabello-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"tinte_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"tinte_cabello-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"tinte_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"tinte_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:25:"tinte_cabello-500x400.jpg";s:5:"width";i:500;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:25:"tinte_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(418, 82, '_thumbnail_id', '83'),
(419, 82, '_sku', ''),
(420, 82, '_regular_price', '5000'),
(421, 82, '_sale_price', ''),
(422, 82, '_sale_price_dates_from', ''),
(423, 82, '_sale_price_dates_to', ''),
(424, 82, 'total_sales', '1'),
(425, 82, '_tax_status', 'taxable'),
(426, 82, '_tax_class', ''),
(427, 82, '_manage_stock', 'yes'),
(428, 82, '_backorders', 'no'),
(429, 82, '_sold_individually', 'no'),
(430, 82, '_weight', '0.30'),
(431, 82, '_length', '20'),
(432, 82, '_width', '30'),
(433, 82, '_height', '10'),
(434, 82, '_upsell_ids', 'a:0:{}'),
(435, 82, '_crosssell_ids', 'a:0:{}'),
(436, 82, '_purchase_note', ''),
(437, 82, '_default_attributes', 'a:0:{}'),
(438, 82, '_virtual', 'no'),
(439, 82, '_downloadable', 'no'),
(440, 82, '_product_image_gallery', ''),
(441, 82, '_download_limit', '-1'),
(442, 82, '_download_expiry', '-1'),
(443, 82, '_stock', '0'),
(444, 82, '_stock_status', 'outofstock'),
(445, 82, '_product_version', '3.0.7'),
(446, 82, '_price', '5000'),
(447, 84, '_wc_review_count', '0'),
(448, 84, '_wc_rating_count', 'a:0:{}'),
(449, 84, '_wc_average_rating', '0'),
(450, 84, '_edit_last', '1'),
(451, 84, '_edit_lock', '1495655485:1'),
(452, 85, '_wp_attached_file', '2017/05/mouse_inalambrico.jpg'),
(453, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:29:"2017/05/mouse_inalambrico.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"mouse_inalambrico-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"mouse_inalambrico-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"mouse_inalambrico-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"mouse_inalambrico-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"mouse_inalambrico-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"mouse_inalambrico-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"mouse_inalambrico-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:29:"mouse_inalambrico-848x400.jpg";s:5:"width";i:848;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:29:"mouse_inalambrico-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 84, '_thumbnail_id', '85'),
(455, 84, '_sku', ''),
(456, 84, '_regular_price', '15000'),
(457, 84, '_sale_price', ''),
(458, 84, '_sale_price_dates_from', ''),
(459, 84, '_sale_price_dates_to', ''),
(460, 84, 'total_sales', '2'),
(461, 84, '_tax_status', 'taxable'),
(462, 84, '_tax_class', ''),
(463, 84, '_manage_stock', 'yes'),
(464, 84, '_backorders', 'no'),
(465, 84, '_sold_individually', 'no'),
(466, 84, '_weight', '0.20'),
(467, 84, '_length', '10'),
(468, 84, '_width', '10'),
(469, 84, '_height', '15'),
(470, 84, '_upsell_ids', 'a:0:{}'),
(471, 84, '_crosssell_ids', 'a:0:{}'),
(472, 84, '_purchase_note', ''),
(473, 84, '_default_attributes', 'a:0:{}'),
(474, 84, '_virtual', 'no'),
(475, 84, '_downloadable', 'no'),
(476, 84, '_product_image_gallery', ''),
(477, 84, '_download_limit', '-1'),
(478, 84, '_download_expiry', '-1'),
(479, 84, '_stock', '200'),
(480, 84, '_stock_status', 'instock'),
(481, 84, '_product_version', '3.0.7'),
(482, 84, '_price', '15000'),
(483, 87, '_wp_attached_file', '2017/05/banner_distribuidora_sia.jpg'),
(484, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1009;s:4:"file";s:36:"2017/05/banner_distribuidora_sia.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-300x252.jpg";s:5:"width";i:300;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-768x646.jpg";s:5:"width";i:768;s:6:"height";i:646;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"banner_distribuidora_sia-1024x861.jpg";s:5:"width";i:1024;s:6:"height";i:861;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-848x400.jpg";s:5:"width";i:848;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:36:"banner_distribuidora_sia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(485, 86, '_wp_trash_meta_status', 'publish'),
(486, 86, '_wp_trash_meta_time', '1495411831'),
(487, 88, '_wp_trash_meta_status', 'publish'),
(488, 88, '_wp_trash_meta_time', '1495412180'),
(489, 89, '_menu_item_type', 'custom'),
(490, 89, '_menu_item_menu_item_parent', '0'),
(491, 89, '_menu_item_object_id', '89'),
(492, 89, '_menu_item_object', 'custom'),
(493, 89, '_menu_item_target', ''),
(494, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(495, 89, '_menu_item_xfn', ''),
(496, 89, '_menu_item_url', 'http://localhost/distribuidora/'),
(498, 90, '_menu_item_type', 'post_type'),
(499, 90, '_menu_item_menu_item_parent', '0'),
(500, 90, '_menu_item_object_id', '9'),
(501, 90, '_menu_item_object', 'page'),
(502, 90, '_menu_item_target', ''),
(503, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(504, 90, '_menu_item_xfn', ''),
(505, 90, '_menu_item_url', ''),
(506, 90, '_menu_item_orphaned', '1495412387'),
(525, 93, '_edit_last', '1'),
(526, 93, '_edit_lock', '1495412605:1'),
(527, 94, '_edit_last', '1'),
(528, 94, '_edit_lock', '1495412540:1'),
(529, 94, '_wp_page_template', 'default'),
(530, 96, '_menu_item_type', 'post_type'),
(531, 96, '_menu_item_menu_item_parent', '0'),
(532, 96, '_menu_item_object_id', '94'),
(533, 96, '_menu_item_object', 'page'),
(534, 96, '_menu_item_target', ''),
(535, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(536, 96, '_menu_item_xfn', ''),
(537, 96, '_menu_item_url', ''),
(539, 97, '_edit_last', '1'),
(540, 97, '_edit_lock', '1495424728:1'),
(541, 97, '_wp_page_template', 'default'),
(542, 99, '_menu_item_type', 'post_type'),
(543, 99, '_menu_item_menu_item_parent', '0'),
(544, 99, '_menu_item_object_id', '97'),
(545, 99, '_menu_item_object', 'page'),
(546, 99, '_menu_item_target', ''),
(547, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(548, 99, '_menu_item_xfn', ''),
(549, 99, '_menu_item_url', ''),
(554, 66, '_wp_trash_meta_status', 'draft'),
(555, 66, '_wp_trash_meta_time', '1495420038'),
(558, 103, '_edit_last', '1'),
(559, 103, '_wp_page_template', 'default'),
(560, 103, '_edit_lock', '1495422912:1'),
(570, 106, '_menu_item_type', 'post_type'),
(571, 106, '_menu_item_menu_item_parent', '0'),
(572, 106, '_menu_item_object_id', '103'),
(573, 106, '_menu_item_object', 'page'),
(574, 106, '_menu_item_target', ''),
(575, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 106, '_menu_item_xfn', ''),
(577, 106, '_menu_item_url', ''),
(579, 107, '_form', '<label> Nombre (required)\n    [text* your-name] </label>\n\n<label> Correo electronico\n    [email* your-email] </label>\n\n<label> Numero telefonico\n[tel* tel-218 id:cel] </label>\n\n<label> Ciudad\n[text Ciudad] </label>\n\n<label> Tema\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit "Enviar"]'),
(580, 107, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:34:"Distribuidora Sia "[your-subject]"";s:6:"sender";s:42:"[your-name] <bvillamizarespitia@gmail.com>";s:9:"recipient";s:28:"bvillamizarespitia@gmail.com";s:4:"body";s:186:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Distribuidora Sia (http://localhost/distribuidora)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(581, 107, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:34:"Distribuidora Sia "[your-subject]"";s:6:"sender";s:48:"Distribuidora Sia <bvillamizarespitia@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:128:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Distribuidora Sia (http://localhost/distribuidora)";s:18:"additional_headers";s:38:"Reply-To: bvillamizarespitia@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(582, 107, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(583, 107, '_additional_settings', ''),
(584, 107, '_locale', 'es_VE'),
(587, 115, '_order_key', 'wc_order_592346a319299'),
(588, 115, '_customer_user', '1'),
(589, 115, '_payment_method', 'woocommerce-mercadopago-module'),
(590, 115, '_payment_method_title', 'Mercado Pago'),
(591, 115, '_transaction_id', ''),
(592, 115, '_customer_ip_address', '::1'),
(593, 115, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(594, 115, '_created_via', 'checkout'),
(595, 115, '_date_completed', ''),
(596, 115, '_completed_date', ''),
(597, 115, '_date_paid', ''),
(598, 115, '_paid_date', ''),
(599, 115, '_cart_hash', '6e9f3efd78f889514e0b2703c32a5743'),
(600, 115, '_billing_first_name', 'Beatriz'),
(601, 115, '_billing_last_name', 'villamizarf'),
(602, 115, '_billing_company', 'bcve'),
(603, 115, '_billing_address_1', 'rubio'),
(604, 115, '_billing_address_2', 'rubio'),
(605, 115, '_billing_city', 'rubio'),
(606, 115, '_billing_state', 'rubio'),
(607, 115, '_billing_postcode', '5030'),
(608, 115, '_billing_country', 'VE'),
(609, 115, '_billing_email', 'bvillamizarespitia@gmail.com'),
(610, 115, '_billing_phone', '04266754603'),
(611, 115, '_shipping_first_name', ''),
(612, 115, '_shipping_last_name', ''),
(613, 115, '_shipping_company', ''),
(614, 115, '_shipping_address_1', '');
INSERT INTO `wp_dpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(615, 115, '_shipping_address_2', ''),
(616, 115, '_shipping_city', ''),
(617, 115, '_shipping_state', ''),
(618, 115, '_shipping_postcode', ''),
(619, 115, '_shipping_country', ''),
(620, 115, '_order_currency', 'VEF'),
(621, 115, '_cart_discount', '0'),
(622, 115, '_cart_discount_tax', '0'),
(623, 115, '_order_shipping', '0'),
(624, 115, '_order_shipping_tax', '0'),
(625, 115, '_order_tax', '0'),
(626, 115, '_order_total', '15000.00'),
(627, 115, '_order_version', '3.0.7'),
(628, 115, '_prices_include_tax', 'no'),
(629, 115, '_billing_address_index', 'Beatriz villamizarf bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(630, 115, '_shipping_address_index', '        '),
(631, 115, '_shipping_method', ''),
(632, 116, '_order_key', 'wc_order_592348118d9ba'),
(633, 116, '_customer_user', '1'),
(634, 116, '_payment_method', 'woocommerce-mercadopago-module'),
(635, 116, '_payment_method_title', 'Mercado Pago'),
(636, 116, '_transaction_id', ''),
(637, 116, '_customer_ip_address', '::1'),
(638, 116, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(639, 116, '_created_via', 'checkout'),
(640, 116, '_date_completed', ''),
(641, 116, '_completed_date', ''),
(642, 116, '_date_paid', ''),
(643, 116, '_paid_date', ''),
(644, 116, '_cart_hash', 'e9f59ced7a5c33556f2d51aa344ff71f'),
(645, 116, '_billing_first_name', 'Beatriz'),
(646, 116, '_billing_last_name', 'villamizarf'),
(647, 116, '_billing_company', 'bcve'),
(648, 116, '_billing_address_1', 'rubio'),
(649, 116, '_billing_address_2', 'rubio'),
(650, 116, '_billing_city', 'rubio'),
(651, 116, '_billing_state', 'rubio'),
(652, 116, '_billing_postcode', '5030'),
(653, 116, '_billing_country', 'VE'),
(654, 116, '_billing_email', 'bvillamizarespitia@gmail.com'),
(655, 116, '_billing_phone', '04266754603'),
(656, 116, '_shipping_first_name', ''),
(657, 116, '_shipping_last_name', ''),
(658, 116, '_shipping_company', ''),
(659, 116, '_shipping_address_1', ''),
(660, 116, '_shipping_address_2', ''),
(661, 116, '_shipping_city', ''),
(662, 116, '_shipping_state', ''),
(663, 116, '_shipping_postcode', ''),
(664, 116, '_shipping_country', ''),
(665, 116, '_order_currency', 'VEF'),
(666, 116, '_cart_discount', '0'),
(667, 116, '_cart_discount_tax', '0'),
(668, 116, '_order_shipping', '0'),
(669, 116, '_order_shipping_tax', '0'),
(670, 116, '_order_tax', '0'),
(671, 116, '_order_total', '30000.00'),
(672, 116, '_order_version', '3.0.7'),
(673, 116, '_prices_include_tax', 'no'),
(674, 116, '_billing_address_index', 'Beatriz villamizarf bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(675, 116, '_shipping_address_index', '        '),
(676, 116, '_shipping_method', ''),
(677, 117, '_order_key', 'wc_order_59235b0384a2f'),
(678, 117, '_customer_user', '1'),
(679, 117, '_payment_method', 'bacs'),
(680, 117, '_payment_method_title', 'Transferencia Bancaria'),
(681, 117, '_transaction_id', ''),
(682, 117, '_customer_ip_address', '::1'),
(683, 117, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(684, 117, '_created_via', 'checkout'),
(685, 117, '_date_completed', '1495460456'),
(686, 117, '_completed_date', '2017-05-22 07:40:56'),
(687, 117, '_date_paid', '1495433752'),
(688, 117, '_paid_date', '2017-05-22 00:15:52'),
(689, 117, '_cart_hash', 'e9f59ced7a5c33556f2d51aa344ff71f'),
(690, 117, '_billing_first_name', 'Beatriz'),
(691, 117, '_billing_last_name', 'villamizarf'),
(692, 117, '_billing_company', 'bcve'),
(693, 117, '_billing_address_1', 'rubio'),
(694, 117, '_billing_address_2', 'rubio'),
(695, 117, '_billing_city', 'rubio'),
(696, 117, '_billing_state', 'rubio'),
(697, 117, '_billing_postcode', '5030'),
(698, 117, '_billing_country', 'VE'),
(699, 117, '_billing_email', 'bvillamizarespitia@gmail.com'),
(700, 117, '_billing_phone', '04266754603'),
(701, 117, '_shipping_first_name', ''),
(702, 117, '_shipping_last_name', ''),
(703, 117, '_shipping_company', ''),
(704, 117, '_shipping_address_1', ''),
(705, 117, '_shipping_address_2', ''),
(706, 117, '_shipping_city', ''),
(707, 117, '_shipping_state', ''),
(708, 117, '_shipping_postcode', ''),
(709, 117, '_shipping_country', ''),
(710, 117, '_order_currency', 'VEF'),
(711, 117, '_cart_discount', '0'),
(712, 117, '_cart_discount_tax', '0'),
(713, 117, '_order_shipping', '0'),
(714, 117, '_order_shipping_tax', '0'),
(715, 117, '_order_tax', '0'),
(716, 117, '_order_total', '30000.00'),
(717, 117, '_order_version', '3.0.7'),
(718, 117, '_prices_include_tax', 'no'),
(719, 117, '_billing_address_index', 'Beatriz villamizarf bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(720, 117, '_shipping_address_index', '        '),
(721, 117, '_shipping_method', ''),
(722, 117, '_recorded_sales', 'yes'),
(723, 117, '_recorded_coupon_usage_counts', 'yes'),
(724, 117, '_order_stock_reduced', 'yes'),
(725, 118, '_order_key', 'wc_order_5922c752e071b'),
(726, 118, '_customer_user', '1'),
(727, 118, '_payment_method', 'bacs'),
(728, 118, '_payment_method_title', 'Transferencia Bancaria'),
(729, 118, '_transaction_id', ''),
(730, 118, '_customer_ip_address', '::1'),
(731, 118, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(732, 118, '_created_via', 'checkout'),
(733, 118, '_date_completed', '1495460365'),
(734, 118, '_completed_date', '2017-05-22 07:39:25'),
(735, 118, '_date_paid', '1495438694'),
(736, 118, '_paid_date', '2017-05-22 01:38:14'),
(737, 118, '_cart_hash', '5ff0bcbc21df6b4b6f6d69e6f0aacc22'),
(738, 118, '_billing_first_name', 'Beatriz'),
(739, 118, '_billing_last_name', 'villamizar'),
(740, 118, '_billing_company', 'bcve'),
(741, 118, '_billing_address_1', 'rubio'),
(742, 118, '_billing_address_2', 'rubio'),
(743, 118, '_billing_city', 'rubio'),
(744, 118, '_billing_state', 'rubio'),
(745, 118, '_billing_postcode', '5030'),
(746, 118, '_billing_country', 'VE'),
(747, 118, '_billing_email', 'bvillamizarespitia@gmail.com'),
(748, 118, '_billing_phone', '04266754603'),
(749, 118, '_shipping_first_name', ''),
(750, 118, '_shipping_last_name', ''),
(751, 118, '_shipping_company', ''),
(752, 118, '_shipping_address_1', ''),
(753, 118, '_shipping_address_2', ''),
(754, 118, '_shipping_city', ''),
(755, 118, '_shipping_state', ''),
(756, 118, '_shipping_postcode', ''),
(757, 118, '_shipping_country', ''),
(758, 118, '_order_currency', 'VEF'),
(759, 118, '_cart_discount', '0'),
(760, 118, '_cart_discount_tax', '0'),
(761, 118, '_order_shipping', '0'),
(762, 118, '_order_shipping_tax', '0'),
(763, 118, '_order_tax', '0'),
(764, 118, '_order_total', '20000.00'),
(765, 118, '_order_version', '3.0.7'),
(766, 118, '_prices_include_tax', 'no'),
(767, 118, '_billing_address_index', 'Beatriz villamizar bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(768, 118, '_shipping_address_index', '        '),
(769, 118, '_shipping_method', ''),
(770, 118, '_recorded_sales', 'yes'),
(771, 118, '_recorded_coupon_usage_counts', 'yes'),
(772, 118, '_order_stock_reduced', 'yes'),
(773, 119, '_order_key', 'wc_order_5922ceabec06d'),
(774, 119, '_customer_user', '1'),
(775, 119, '_payment_method', 'woocommerce-mercadopago-module'),
(776, 119, '_payment_method_title', 'Mercado Pago'),
(777, 119, '_transaction_id', ''),
(778, 119, '_customer_ip_address', '::1'),
(779, 119, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(780, 119, '_created_via', 'checkout'),
(781, 119, '_date_completed', ''),
(782, 119, '_completed_date', ''),
(783, 119, '_date_paid', ''),
(784, 119, '_paid_date', ''),
(785, 119, '_cart_hash', '437740c92a13a0882ce9f42f32512b8c'),
(786, 119, '_billing_first_name', 'Beatriz'),
(787, 119, '_billing_last_name', 'villamizar'),
(788, 119, '_billing_company', 'bcve'),
(789, 119, '_billing_address_1', 'rubio'),
(790, 119, '_billing_address_2', 'rubio'),
(791, 119, '_billing_city', 'rubio'),
(792, 119, '_billing_state', 'rubio'),
(793, 119, '_billing_postcode', '5030'),
(794, 119, '_billing_country', 'VE'),
(795, 119, '_billing_email', 'bvillamizarespitia@gmail.com'),
(796, 119, '_billing_phone', '04266754603'),
(797, 119, '_shipping_first_name', ''),
(798, 119, '_shipping_last_name', ''),
(799, 119, '_shipping_company', ''),
(800, 119, '_shipping_address_1', ''),
(801, 119, '_shipping_address_2', ''),
(802, 119, '_shipping_city', ''),
(803, 119, '_shipping_state', ''),
(804, 119, '_shipping_postcode', ''),
(805, 119, '_shipping_country', ''),
(806, 119, '_order_currency', 'VEF'),
(807, 119, '_cart_discount', '0'),
(808, 119, '_cart_discount_tax', '0'),
(809, 119, '_order_shipping', '0'),
(810, 119, '_order_shipping_tax', '0'),
(811, 119, '_order_tax', '0'),
(812, 119, '_order_total', '100000.00'),
(813, 119, '_order_version', '3.0.7'),
(814, 119, '_prices_include_tax', 'no'),
(815, 119, '_billing_address_index', 'Beatriz villamizar bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(816, 119, '_shipping_address_index', '        '),
(817, 119, '_shipping_method', ''),
(820, 118, '_ywau_order_file', '118/banco_bicentenario.png'),
(821, 117, '_ywau_order_file', '117/planificacion-de-seminario.pdf'),
(822, 117, '_download_permissions_granted', 'yes'),
(823, 118, '_edit_lock', '1495460301:1'),
(824, 116, '_edit_lock', '1495456113:1'),
(825, 116, '_wp_trash_meta_status', 'wc-cancelled'),
(826, 116, '_wp_trash_meta_time', '1495456253'),
(827, 116, '_wp_desired_post_slug', 'order-may-22-2017-0820-pm'),
(828, 116, '_wp_trash_meta_comments_status', 'a:1:{i:3;s:1:"1";}'),
(833, 124, '_order_key', 'wc_order_5922e94d1e424'),
(834, 124, '_customer_user', '1'),
(835, 124, '_payment_method', 'bacs'),
(836, 124, '_payment_method_title', 'Transferencia Bancaria'),
(837, 124, '_transaction_id', ''),
(838, 124, '_customer_ip_address', '::1'),
(839, 124, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(840, 124, '_created_via', 'checkout'),
(841, 124, '_date_completed', ''),
(842, 124, '_completed_date', ''),
(843, 124, '_date_paid', ''),
(844, 124, '_paid_date', ''),
(845, 124, '_cart_hash', '5ff0bcbc21df6b4b6f6d69e6f0aacc22'),
(846, 124, '_billing_first_name', 'Beatriz'),
(847, 124, '_billing_last_name', 'villamizar'),
(848, 124, '_billing_company', 'bcve'),
(849, 124, '_billing_address_1', 'rubio'),
(850, 124, '_billing_address_2', 'rubio'),
(851, 124, '_billing_city', 'rubio'),
(852, 124, '_billing_state', 'rubio'),
(853, 124, '_billing_postcode', '5030'),
(854, 124, '_billing_country', 'VE'),
(855, 124, '_billing_email', 'bvillamizarespitia@gmail.com'),
(856, 124, '_billing_phone', '04266754603'),
(857, 124, '_shipping_first_name', ''),
(858, 124, '_shipping_last_name', ''),
(859, 124, '_shipping_company', ''),
(860, 124, '_shipping_address_1', ''),
(861, 124, '_shipping_address_2', ''),
(862, 124, '_shipping_city', ''),
(863, 124, '_shipping_state', ''),
(864, 124, '_shipping_postcode', ''),
(865, 124, '_shipping_country', ''),
(866, 124, '_order_currency', 'VEF'),
(867, 124, '_cart_discount', '0'),
(868, 124, '_cart_discount_tax', '0'),
(869, 124, '_order_shipping', '0'),
(870, 124, '_order_shipping_tax', '0'),
(871, 124, '_order_tax', '0'),
(872, 124, '_order_total', '20000.00'),
(873, 124, '_order_version', '3.0.7'),
(874, 124, '_prices_include_tax', 'no'),
(875, 124, '_billing_address_index', 'Beatriz villamizar bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(876, 124, '_shipping_address_index', '        '),
(877, 124, '_shipping_method', ''),
(878, 124, 'ywot_carrier_name', 'Envio'),
(879, 124, '_recorded_sales', 'yes'),
(880, 124, '_recorded_coupon_usage_counts', 'yes'),
(881, 124, '_order_stock_reduced', 'yes'),
(882, 115, '_wp_trash_meta_status', 'wc-cancelled'),
(883, 115, '_wp_trash_meta_time', '1495460271'),
(884, 115, '_wp_desired_post_slug', 'order-may-22-2017-0814-pm'),
(885, 115, '_wp_trash_meta_comments_status', 'a:1:{i:2;s:1:"1";}'),
(886, 124, '_wp_trash_meta_status', 'wc-on-hold'),
(887, 124, '_wp_trash_meta_time', '1495460278'),
(888, 124, '_wp_desired_post_slug', 'order-may-22-2017-0136-pm'),
(889, 124, '_wp_trash_meta_comments_status', 'a:2:{i:10;s:1:"1";i:11;s:1:"1";}'),
(890, 119, '_wp_trash_meta_status', 'wc-cancelled'),
(891, 119, '_wp_trash_meta_time', '1495460285'),
(892, 119, '_wp_desired_post_slug', 'order-may-22-2017-1142-am'),
(893, 119, '_wp_trash_meta_comments_status', 'a:1:{i:8;s:1:"1";}'),
(894, 118, '_download_permissions_granted', 'yes'),
(895, 118, '_edit_last', '1'),
(896, 118, 'ywot_tracking_code', ''),
(897, 118, 'ywot_pick_up_date', ''),
(898, 118, 'ywot_carrier_name', ''),
(903, 127, '_order_key', 'wc_order_5924aed78a9a5'),
(904, 127, '_customer_user', '1'),
(905, 127, '_payment_method', 'bacs'),
(906, 127, '_payment_method_title', 'Transferencia Bancaria'),
(907, 127, '_transaction_id', ''),
(908, 127, '_customer_ip_address', '::1'),
(909, 127, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(910, 127, '_created_via', 'checkout'),
(911, 127, '_date_completed', ''),
(912, 127, '_completed_date', ''),
(913, 127, '_date_paid', ''),
(914, 127, '_paid_date', ''),
(915, 127, '_cart_hash', '4fc4cac485b6f7e983b2046abd55ef3a'),
(916, 127, '_billing_first_name', 'Beatriz'),
(917, 127, '_billing_last_name', 'villamizar'),
(918, 127, '_billing_company', 'bcve'),
(919, 127, '_billing_address_1', 'rubio'),
(920, 127, '_billing_address_2', 'rubio'),
(921, 127, '_billing_city', 'rubio'),
(922, 127, '_billing_state', 'rubio'),
(923, 127, '_billing_postcode', '5030'),
(924, 127, '_billing_country', 'VE'),
(925, 127, '_billing_email', 'bvillamizarespitia@gmail.com'),
(926, 127, '_billing_phone', '04266754603'),
(927, 127, '_shipping_first_name', ''),
(928, 127, '_shipping_last_name', ''),
(929, 127, '_shipping_company', ''),
(930, 127, '_shipping_address_1', ''),
(931, 127, '_shipping_address_2', ''),
(932, 127, '_shipping_city', ''),
(933, 127, '_shipping_state', ''),
(934, 127, '_shipping_postcode', ''),
(935, 127, '_shipping_country', ''),
(936, 127, '_order_currency', 'VEF'),
(937, 127, '_cart_discount', '0'),
(938, 127, '_cart_discount_tax', '0'),
(939, 127, '_order_shipping', '0'),
(940, 127, '_order_shipping_tax', '0'),
(941, 127, '_order_tax', '0'),
(942, 127, '_order_total', '5000.00'),
(943, 127, '_order_version', '3.0.7'),
(944, 127, '_prices_include_tax', 'no'),
(945, 127, '_billing_address_index', 'Beatriz villamizar bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(946, 127, '_shipping_address_index', '        '),
(947, 127, '_shipping_method', ''),
(948, 127, 'ywot_carrier_name', 'Envio'),
(949, 127, '_recorded_sales', 'yes'),
(950, 127, '_recorded_coupon_usage_counts', 'yes'),
(951, 127, '_wcpdf_invoice_number', '0001'),
(952, 127, '_wcpdf_formatted_invoice_number', '0001'),
(953, 127, '_wcpdf_invoice_date', '2017-05-23 15:51:24'),
(956, 127, '_order_stock_reduced', 'yes'),
(957, 127, '_wcpdf_invoice_exists', '1'),
(960, 9, '_edit_lock', '1495544468:1'),
(965, 131, '_order_key', 'wc_order_592468ac6cff1'),
(966, 131, '_customer_user', '1'),
(967, 131, '_payment_method', 'woocommerce-mercadopago-module'),
(968, 131, '_payment_method_title', 'Mercado Pago'),
(969, 131, '_transaction_id', ''),
(970, 131, '_customer_ip_address', '::1'),
(971, 131, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(972, 131, '_created_via', 'checkout'),
(973, 131, '_date_completed', ''),
(974, 131, '_completed_date', ''),
(975, 131, '_date_paid', ''),
(976, 131, '_paid_date', ''),
(977, 131, '_cart_hash', '4fc4cac485b6f7e983b2046abd55ef3a'),
(978, 131, '_billing_first_name', 'Beatriz'),
(979, 131, '_billing_last_name', ''),
(980, 131, '_billing_company', 'bcve'),
(981, 131, '_billing_address_1', 'rubio'),
(982, 131, '_billing_address_2', 'rubio'),
(983, 131, '_billing_city', 'rubio'),
(984, 131, '_billing_state', 'rubio'),
(985, 131, '_billing_postcode', '5030'),
(986, 131, '_billing_country', 'VE'),
(987, 131, '_billing_email', 'bvillamizarespitia@gmail.com'),
(988, 131, '_billing_phone', '04266754603'),
(989, 131, '_shipping_first_name', ''),
(990, 131, '_shipping_last_name', ''),
(991, 131, '_shipping_company', ''),
(992, 131, '_shipping_address_1', ''),
(993, 131, '_shipping_address_2', ''),
(994, 131, '_shipping_city', ''),
(995, 131, '_shipping_state', ''),
(996, 131, '_shipping_postcode', ''),
(997, 131, '_shipping_country', ''),
(998, 131, '_order_currency', 'VEF'),
(999, 131, '_cart_discount', '0'),
(1000, 131, '_cart_discount_tax', '0'),
(1001, 131, '_order_shipping', '0'),
(1002, 131, '_order_shipping_tax', '0'),
(1003, 131, '_order_tax', '0'),
(1004, 131, '_order_total', '5000.00'),
(1005, 131, '_order_version', '3.0.7'),
(1006, 131, '_prices_include_tax', 'no'),
(1007, 131, '_billing_address_index', 'Beatriz  bcve rubio rubio rubio rubio 5030 VE bvillamizarespitia@gmail.com 04266754603'),
(1008, 131, '_shipping_address_index', '        '),
(1009, 131, '_shipping_method', ''),
(1010, 131, 'ywot_carrier_name', 'Envio'),
(1013, 133, '_edit_lock', '1495654602:1'),
(1014, 134, '_edit_lock', '1495654599:1'),
(1019, 139, '_wp_attached_file', '2017/05/7501012302685.jpg'),
(1020, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:25:"2017/05/7501012302685.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"7501012302685-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"7501012302685-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"7501012302685-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"7501012302685-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"7501012302685-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"7501012302685-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"7501012302685-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"7501012302685-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:25:"7501012302685-848x400.jpg";s:5:"width";i:848;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:25:"7501012302685-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1021, 140, '_sku', ''),
(1022, 140, '_wc_review_count', '0'),
(1023, 140, '_wc_rating_count', 'a:0:{}'),
(1024, 140, '_wc_average_rating', '0'),
(1025, 140, '_regular_price', '15000'),
(1026, 140, '_sale_price', ''),
(1027, 140, '_sale_price_dates_from', ''),
(1028, 140, '_sale_price_dates_to', ''),
(1029, 140, 'total_sales', '4'),
(1030, 140, '_tax_status', 'taxable'),
(1031, 140, '_tax_class', ''),
(1032, 140, '_manage_stock', 'yes'),
(1033, 140, '_backorders', 'no'),
(1034, 140, '_sold_individually', 'no'),
(1035, 140, '_weight', ''),
(1036, 140, '_length', ''),
(1037, 140, '_width', ''),
(1038, 140, '_height', ''),
(1039, 140, '_upsell_ids', 'a:0:{}'),
(1040, 140, '_crosssell_ids', 'a:0:{}'),
(1041, 140, '_purchase_note', ''),
(1042, 140, '_default_attributes', 'a:0:{}'),
(1043, 140, '_virtual', 'no'),
(1044, 140, '_downloadable', 'no'),
(1045, 140, '_product_image_gallery', ''),
(1046, 140, '_download_limit', '-1'),
(1047, 140, '_download_expiry', '-1'),
(1048, 140, '_stock', '16'),
(1049, 140, '_stock_status', 'instock'),
(1050, 140, '_product_version', '3.0.7'),
(1051, 140, '_price', '15000'),
(1052, 140, '_thumbnail_id', '139'),
(1053, 127, '_edit_lock', '1495659896:1'),
(1056, 142, '_wp_attached_file', '2017/05/plancha_cabello.jpg'),
(1057, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:431;s:6:"height";i:395;s:4:"file";s:27:"2017/05/plancha_cabello.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"plancha_cabello-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"plancha_cabello-300x275.jpg";s:5:"width";i:300;s:6:"height";i:275;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"plancha_cabello-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"plancha_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"plancha_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:27:"plancha_cabello-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1058, 143, '_sku', ''),
(1059, 143, '_wc_review_count', '0'),
(1060, 143, '_wc_rating_count', 'a:0:{}'),
(1061, 143, '_wc_average_rating', '0'),
(1062, 143, '_regular_price', '25000'),
(1063, 143, '_sale_price', ''),
(1064, 143, '_sale_price_dates_from', ''),
(1065, 143, '_sale_price_dates_to', ''),
(1066, 143, 'total_sales', '2'),
(1067, 143, '_tax_status', 'taxable'),
(1068, 143, '_tax_class', ''),
(1069, 143, '_manage_stock', 'yes'),
(1070, 143, '_backorders', 'no'),
(1071, 143, '_sold_individually', 'no'),
(1072, 143, '_weight', '0,500'),
(1073, 143, '_length', '10'),
(1074, 143, '_width', '10'),
(1075, 143, '_height', '10'),
(1076, 143, '_upsell_ids', 'a:0:{}'),
(1077, 143, '_crosssell_ids', 'a:0:{}'),
(1078, 143, '_purchase_note', ''),
(1079, 143, '_default_attributes', 'a:0:{}'),
(1080, 143, '_virtual', 'no'),
(1081, 143, '_downloadable', 'no'),
(1082, 143, '_product_image_gallery', ''),
(1083, 143, '_download_limit', '-1'),
(1084, 143, '_download_expiry', '-1'),
(1085, 143, '_stock', '148'),
(1086, 143, '_stock_status', 'instock'),
(1087, 143, '_product_version', '3.0.7'),
(1088, 143, '_price', '25000'),
(1089, 143, '_thumbnail_id', '142'),
(1090, 144, '_wp_attached_file', '2017/05/botox.jpg'),
(1091, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1007;s:6:"height";i:444;s:4:"file";s:17:"2017/05/botox.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"botox-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"botox-300x132.jpg";s:5:"width";i:300;s:6:"height";i:132;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"botox-768x339.jpg";s:5:"width";i:768;s:6:"height";i:339;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"botox-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"botox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"botox-600x444.jpg";s:5:"width";i:600;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"botox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"maxstore-single";a:4:{s:4:"file";s:17:"botox-848x400.jpg";s:5:"width";i:848;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"maxstore-home-top";a:4:{s:4:"file";s:17:"botox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1092, 145, '_sku', ''),
(1093, 145, '_wc_review_count', '0'),
(1094, 145, '_wc_rating_count', 'a:0:{}'),
(1095, 145, '_wc_average_rating', '0'),
(1096, 145, '_regular_price', '20000'),
(1097, 145, '_sale_price', ''),
(1098, 145, '_sale_price_dates_from', ''),
(1099, 145, '_sale_price_dates_to', ''),
(1100, 145, 'total_sales', '1'),
(1101, 145, '_tax_status', 'taxable'),
(1102, 145, '_tax_class', ''),
(1103, 145, '_manage_stock', 'yes'),
(1104, 145, '_backorders', 'no'),
(1105, 145, '_sold_individually', 'no'),
(1106, 145, '_weight', '0,100'),
(1107, 145, '_length', '10'),
(1108, 145, '_width', '10'),
(1109, 145, '_height', '5'),
(1110, 145, '_upsell_ids', 'a:0:{}'),
(1111, 145, '_crosssell_ids', 'a:0:{}'),
(1112, 145, '_purchase_note', ''),
(1113, 145, '_default_attributes', 'a:0:{}'),
(1114, 145, '_virtual', 'no'),
(1115, 145, '_downloadable', 'no'),
(1116, 145, '_product_image_gallery', ''),
(1117, 145, '_download_limit', '-1'),
(1118, 145, '_download_expiry', '-1'),
(1119, 145, '_stock', '47'),
(1120, 145, '_stock_status', 'instock'),
(1121, 145, '_product_version', '3.0.7'),
(1122, 145, '_price', '20000'),
(1123, 145, '_thumbnail_id', '144'),
(1124, 146, '_order_key', 'wc_order_592708778aba6'),
(1125, 146, '_customer_user', '1'),
(1126, 146, '_payment_method', 'bacs'),
(1127, 146, '_payment_method_title', 'Transferencia Bancaria'),
(1128, 146, '_transaction_id', ''),
(1129, 146, '_customer_ip_address', '::1'),
(1130, 146, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1131, 146, '_created_via', 'checkout'),
(1132, 146, '_date_completed', ''),
(1133, 146, '_completed_date', ''),
(1134, 146, '_date_paid', ''),
(1135, 146, '_paid_date', ''),
(1136, 146, '_cart_hash', '437740c92a13a0882ce9f42f32512b8c'),
(1137, 146, '_billing_first_name', 'Beatriz'),
(1138, 146, '_billing_last_name', ''),
(1139, 146, '_billing_company', ''),
(1140, 146, '_billing_address_1', 'rubio'),
(1141, 146, '_billing_address_2', 'rubio'),
(1142, 146, '_billing_city', 'rubio'),
(1143, 146, '_billing_state', 'rubio'),
(1144, 146, '_billing_postcode', '5030'),
(1145, 146, '_billing_country', ''),
(1146, 146, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1147, 146, '_billing_phone', '04266754603'),
(1148, 146, '_shipping_first_name', ''),
(1149, 146, '_shipping_last_name', ''),
(1150, 146, '_shipping_company', ''),
(1151, 146, '_shipping_address_1', ''),
(1152, 146, '_shipping_address_2', ''),
(1153, 146, '_shipping_city', ''),
(1154, 146, '_shipping_state', ''),
(1155, 146, '_shipping_postcode', ''),
(1156, 146, '_shipping_country', ''),
(1157, 146, '_order_currency', 'VEF'),
(1158, 146, '_cart_discount', '0'),
(1159, 146, '_cart_discount_tax', '0'),
(1160, 146, '_order_shipping', '0'),
(1161, 146, '_order_shipping_tax', '0'),
(1162, 146, '_order_tax', '0'),
(1163, 146, '_order_total', '100000.00'),
(1164, 146, '_order_version', '3.0.7'),
(1165, 146, '_prices_include_tax', 'no'),
(1166, 146, '_billing_address_index', 'Beatriz   rubio rubio rubio rubio 5030  bvillamizarespitia@gmail.com 04266754603'),
(1167, 146, '_shipping_address_index', '        '),
(1168, 146, '_shipping_method', ''),
(1169, 146, 'cedula-de-ideantidad', 'V'),
(1170, 146, 'documentoidentidad', '25921524'),
(1171, 146, 'ywot_carrier_name', 'Envio'),
(1172, 146, '_recorded_sales', 'yes'),
(1173, 146, '_recorded_coupon_usage_counts', 'yes'),
(1174, 146, '_wcpdf_invoice_number', '2'),
(1175, 146, '_wcpdf_formatted_invoice_number', '2'),
(1176, 146, '_wcpdf_invoice_date', '2017-05-25 10:38:21'),
(1178, 146, '_wcpdf_invoice_exists', '1'),
(1179, 146, '_order_stock_reduced', 'yes'),
(1180, 147, '_order_key', 'wc_order_59270ca91bbdb'),
(1181, 147, '_customer_user', '1'),
(1182, 147, '_payment_method', 'bacs'),
(1183, 147, '_payment_method_title', 'Transferencia Bancaria'),
(1184, 147, '_transaction_id', ''),
(1185, 147, '_customer_ip_address', '::1'),
(1186, 147, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1187, 147, '_created_via', 'checkout'),
(1188, 147, '_date_completed', ''),
(1189, 147, '_completed_date', ''),
(1190, 147, '_date_paid', ''),
(1191, 147, '_paid_date', ''),
(1192, 147, '_cart_hash', '488d5c7744a81e9e141320ed4715a3b5'),
(1193, 147, '_billing_first_name', 'Beatriz Villamizar'),
(1194, 147, '_billing_last_name', ''),
(1195, 147, '_billing_company', 'bcve'),
(1196, 147, '_billing_address_1', 'rubio'),
(1197, 147, '_billing_address_2', 'rubio'),
(1198, 147, '_billing_city', 'rubio'),
(1199, 147, '_billing_state', 'rubio'),
(1200, 147, '_billing_postcode', '5030'),
(1201, 147, '_billing_country', ''),
(1202, 147, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1203, 147, '_billing_phone', '0426675'),
(1204, 147, '_shipping_first_name', ''),
(1205, 147, '_shipping_last_name', ''),
(1206, 147, '_shipping_company', ''),
(1207, 147, '_shipping_address_1', ''),
(1208, 147, '_shipping_address_2', ''),
(1209, 147, '_shipping_city', ''),
(1210, 147, '_shipping_state', ''),
(1211, 147, '_shipping_postcode', ''),
(1212, 147, '_shipping_country', ''),
(1213, 147, '_order_currency', 'VEF'),
(1214, 147, '_cart_discount', '0'),
(1215, 147, '_cart_discount_tax', '0'),
(1216, 147, '_order_shipping', '0'),
(1217, 147, '_order_shipping_tax', '0'),
(1218, 147, '_order_tax', '0'),
(1219, 147, '_order_total', '25000.00'),
(1220, 147, '_order_version', '3.0.7'),
(1221, 147, '_prices_include_tax', 'no'),
(1222, 147, '_billing_address_index', 'Beatriz Villamizar  bcve rubio rubio rubio rubio 5030  bvillamizarespitia@gmail.com 0426675'),
(1223, 147, '_shipping_address_index', '        '),
(1224, 147, '_shipping_method', ''),
(1225, 147, 'cedula-de-ideantidad', 'V'),
(1226, 147, 'documentoidentidad', '25921524'),
(1227, 147, 'ywot_carrier_name', 'Envio'),
(1228, 147, '_recorded_sales', 'yes'),
(1229, 147, '_recorded_coupon_usage_counts', 'yes'),
(1230, 147, '_wcpdf_invoice_number', '3'),
(1231, 147, '_wcpdf_formatted_invoice_number', '3'),
(1232, 147, '_wcpdf_invoice_date', '2017-05-25 10:56:12'),
(1234, 147, '_wcpdf_invoice_exists', '1'),
(1235, 147, '_order_stock_reduced', 'yes'),
(1236, 148, '_order_key', 'wc_order_59288ebc7d23e'),
(1237, 148, '_customer_user', '1'),
(1238, 148, '_payment_method', 'bacs'),
(1239, 148, '_payment_method_title', 'Transferencia Bancaria'),
(1240, 148, '_transaction_id', ''),
(1241, 148, '_customer_ip_address', '::1'),
(1242, 148, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1243, 148, '_created_via', 'checkout'),
(1244, 148, '_date_completed', ''),
(1245, 148, '_completed_date', ''),
(1246, 148, '_date_paid', ''),
(1247, 148, '_paid_date', ''),
(1248, 148, '_cart_hash', 'e0fe479999f79a806c29347f5402dca5'),
(1249, 148, '_billing_first_name', ''),
(1250, 148, '_billing_last_name', ''),
(1251, 148, '_billing_company', 'papas fritas y aosciados'),
(1252, 148, '_billing_address_1', 'rubio'),
(1253, 148, '_billing_address_2', ''),
(1254, 148, '_billing_city', 'rubio'),
(1255, 148, '_billing_state', 'rubio'),
(1256, 148, '_billing_postcode', '5030'),
(1257, 148, '_billing_country', ''),
(1258, 148, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1259, 148, '_billing_phone', '0426675'),
(1260, 148, '_shipping_first_name', ''),
(1261, 148, '_shipping_last_name', ''),
(1262, 148, '_shipping_company', ''),
(1263, 148, '_shipping_address_1', ''),
(1264, 148, '_shipping_address_2', ''),
(1265, 148, '_shipping_city', ''),
(1266, 148, '_shipping_state', ''),
(1267, 148, '_shipping_postcode', ''),
(1268, 148, '_shipping_country', ''),
(1269, 148, '_order_currency', 'VEF'),
(1270, 148, '_cart_discount', '0'),
(1271, 148, '_cart_discount_tax', '0'),
(1272, 148, '_order_shipping', '0'),
(1273, 148, '_order_shipping_tax', '0'),
(1274, 148, '_order_tax', '0'),
(1275, 148, '_order_total', '45000.00'),
(1276, 148, '_order_version', '3.0.7'),
(1277, 148, '_prices_include_tax', 'no'),
(1278, 148, '_billing_address_index', '  papas fritas y aosciados rubio  rubio rubio 5030  bvillamizarespitia@gmail.com 0426675'),
(1279, 148, '_shipping_address_index', '        '),
(1280, 148, '_shipping_method', ''),
(1281, 148, '_billing_nombre_completo', 'beatriz villamizar'),
(1282, 148, 'billing_nombre_completo', 'beatriz villamizar'),
(1283, 148, 'cedula-de-ideantidad', 'V'),
(1284, 148, 'documentoidentidad', '25921524'),
(1285, 148, 'ywot_carrier_name', 'Envio'),
(1286, 148, '_recorded_sales', 'yes'),
(1287, 148, '_recorded_coupon_usage_counts', 'yes'),
(1288, 148, '_wcpdf_invoice_number', '4'),
(1289, 148, '_wcpdf_formatted_invoice_number', '4'),
(1290, 148, '_wcpdf_invoice_date', '2017-05-26 14:23:31'),
(1292, 148, '_wcpdf_invoice_exists', '1'),
(1293, 148, '_order_stock_reduced', 'yes'),
(1294, 149, '_order_key', 'wc_order_5928920b4061b'),
(1295, 149, '_customer_user', '1'),
(1296, 149, '_payment_method', 'bacs'),
(1297, 149, '_payment_method_title', 'Transferencia Bancaria'),
(1298, 149, '_transaction_id', ''),
(1299, 149, '_customer_ip_address', '::1'),
(1300, 149, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1301, 149, '_created_via', 'checkout'),
(1302, 149, '_date_completed', ''),
(1303, 149, '_completed_date', ''),
(1304, 149, '_date_paid', ''),
(1305, 149, '_paid_date', ''),
(1306, 149, '_cart_hash', 'c9d4d099436020b1e37bfcdb8423f7e0'),
(1307, 149, '_billing_first_name', ''),
(1308, 149, '_billing_last_name', ''),
(1309, 149, '_billing_company', 'papas fritas y aosciados'),
(1310, 149, '_billing_address_1', 'rubio'),
(1311, 149, '_billing_address_2', ''),
(1312, 149, '_billing_city', 'rubio'),
(1313, 149, '_billing_state', 'rubio'),
(1314, 149, '_billing_postcode', '5030'),
(1315, 149, '_billing_country', ''),
(1316, 149, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1317, 149, '_billing_phone', '0426675'),
(1318, 149, '_shipping_first_name', ''),
(1319, 149, '_shipping_last_name', ''),
(1320, 149, '_shipping_company', ''),
(1321, 149, '_shipping_address_1', ''),
(1322, 149, '_shipping_address_2', ''),
(1323, 149, '_shipping_city', ''),
(1324, 149, '_shipping_state', ''),
(1325, 149, '_shipping_postcode', ''),
(1326, 149, '_shipping_country', ''),
(1327, 149, '_order_currency', 'VEF'),
(1328, 149, '_cart_discount', '0'),
(1329, 149, '_cart_discount_tax', '0'),
(1330, 149, '_order_shipping', '0'),
(1331, 149, '_order_shipping_tax', '0'),
(1332, 149, '_order_tax', '0'),
(1333, 149, '_order_total', '15000.00'),
(1334, 149, '_order_version', '3.0.7'),
(1335, 149, '_prices_include_tax', 'no'),
(1336, 149, '_billing_address_index', '  papas fritas y aosciados rubio  rubio rubio 5030  bvillamizarespitia@gmail.com 0426675'),
(1337, 149, '_shipping_address_index', '        '),
(1338, 149, '_shipping_method', ''),
(1339, 149, '_billing_nombre_completo', 'beatriz villamizar'),
(1340, 149, 'billing_nombre_completo', 'beatriz villamizar'),
(1341, 149, 'cedula-de-ideantidad', 'V'),
(1342, 149, 'documentoidentidad', '25921524-3'),
(1343, 149, 'ywot_carrier_name', 'Envio'),
(1344, 149, '_recorded_sales', 'yes'),
(1345, 149, '_recorded_coupon_usage_counts', 'yes'),
(1346, 149, '_wcpdf_invoice_number', '5'),
(1347, 149, '_wcpdf_formatted_invoice_number', '5'),
(1348, 149, '_wcpdf_invoice_date', '2017-05-26 14:37:35'),
(1350, 149, '_wcpdf_invoice_exists', '1'),
(1351, 149, '_order_stock_reduced', 'yes'),
(1352, 149, '_edit_lock', '1495831284:1'),
(1353, 150, '_order_key', 'wc_order_59289487c2f4a'),
(1354, 150, '_customer_user', '1'),
(1355, 150, '_payment_method', 'bacs'),
(1356, 150, '_payment_method_title', 'Transferencia Bancaria'),
(1357, 150, '_transaction_id', ''),
(1358, 150, '_customer_ip_address', '::1'),
(1359, 150, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1360, 150, '_created_via', 'checkout'),
(1361, 150, '_date_completed', ''),
(1362, 150, '_completed_date', ''),
(1363, 150, '_date_paid', ''),
(1364, 150, '_paid_date', ''),
(1365, 150, '_cart_hash', 'c9d4d099436020b1e37bfcdb8423f7e0'),
(1366, 150, '_billing_first_name', ''),
(1367, 150, '_billing_last_name', ''),
(1368, 150, '_billing_company', 'papas fritas y aosciados'),
(1369, 150, '_billing_address_1', 'centro de rubio'),
(1370, 150, '_billing_address_2', ''),
(1371, 150, '_billing_city', 'rubio'),
(1372, 150, '_billing_state', 'Tachira'),
(1373, 150, '_billing_postcode', '5030'),
(1374, 150, '_billing_country', ''),
(1375, 150, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1376, 150, '_billing_phone', '04266754603'),
(1377, 150, '_shipping_first_name', ''),
(1378, 150, '_shipping_last_name', ''),
(1379, 150, '_shipping_company', ''),
(1380, 150, '_shipping_address_1', ''),
(1381, 150, '_shipping_address_2', ''),
(1382, 150, '_shipping_city', ''),
(1383, 150, '_shipping_state', ''),
(1384, 150, '_shipping_postcode', ''),
(1385, 150, '_shipping_country', ''),
(1386, 150, '_order_currency', 'VEF'),
(1387, 150, '_cart_discount', '0'),
(1388, 150, '_cart_discount_tax', '0'),
(1389, 150, '_order_shipping', '0'),
(1390, 150, '_order_shipping_tax', '0'),
(1391, 150, '_order_tax', '0'),
(1392, 150, '_order_total', '15000.00'),
(1393, 150, '_order_version', '3.0.7'),
(1394, 150, '_prices_include_tax', 'no'),
(1395, 150, '_billing_address_index', '  papas fritas y aosciados centro de rubio  rubio Tachira 5030  bvillamizarespitia@gmail.com 04266754603'),
(1396, 150, '_shipping_address_index', '        '),
(1397, 150, '_shipping_method', ''),
(1398, 150, '_billing_nombre_completo', 'beatriz villamizar'),
(1399, 150, 'billing_nombre_completo', 'beatriz villamizar'),
(1400, 150, 'cedula-de-ideantidad', 'V'),
(1401, 150, 'documentoidentidad', '25921524-2'),
(1402, 150, 'ywot_carrier_name', 'Envio'),
(1403, 150, '_recorded_sales', 'yes'),
(1404, 150, '_recorded_coupon_usage_counts', 'yes'),
(1405, 150, '_wcpdf_invoice_number', '6'),
(1406, 150, '_wcpdf_formatted_invoice_number', '6'),
(1407, 150, '_wcpdf_invoice_date', '2017-05-26 14:48:12'),
(1409, 150, '_wcpdf_invoice_exists', '1'),
(1410, 150, '_order_stock_reduced', 'yes'),
(1411, 151, '_order_key', 'wc_order_592895eacd830'),
(1412, 151, '_customer_user', '1'),
(1413, 151, '_payment_method', 'bacs'),
(1414, 151, '_payment_method_title', 'Transferencia Bancaria'),
(1415, 151, '_transaction_id', ''),
(1416, 151, '_customer_ip_address', '::1'),
(1417, 151, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1418, 151, '_created_via', 'checkout'),
(1419, 151, '_date_completed', ''),
(1420, 151, '_completed_date', ''),
(1421, 151, '_date_paid', ''),
(1422, 151, '_paid_date', ''),
(1423, 151, '_cart_hash', 'eb252eb7b6298b2e8ab9fa84bb688a56'),
(1424, 151, '_billing_first_name', ''),
(1425, 151, '_billing_last_name', ''),
(1426, 151, '_billing_company', 'papas fritas y aosciados'),
(1427, 151, '_billing_address_1', 'centro de rubio'),
(1428, 151, '_billing_address_2', ''),
(1429, 151, '_billing_city', 'rubio'),
(1430, 151, '_billing_state', 'Tachira'),
(1431, 151, '_billing_postcode', '5030'),
(1432, 151, '_billing_country', ''),
(1433, 151, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1434, 151, '_billing_phone', '04266754603'),
(1435, 151, '_shipping_first_name', ''),
(1436, 151, '_shipping_last_name', ''),
(1437, 151, '_shipping_company', ''),
(1438, 151, '_shipping_address_1', ''),
(1439, 151, '_shipping_address_2', ''),
(1440, 151, '_shipping_city', ''),
(1441, 151, '_shipping_state', ''),
(1442, 151, '_shipping_postcode', ''),
(1443, 151, '_shipping_country', ''),
(1444, 151, '_order_currency', 'VEF'),
(1445, 151, '_cart_discount', '0'),
(1446, 151, '_cart_discount_tax', '0'),
(1447, 151, '_order_shipping', '0'),
(1448, 151, '_order_shipping_tax', '0'),
(1449, 151, '_order_tax', '0'),
(1450, 151, '_order_total', '35000.00'),
(1451, 151, '_order_version', '3.0.7'),
(1452, 151, '_prices_include_tax', 'no'),
(1453, 151, '_billing_address_index', '  papas fritas y aosciados centro de rubio  rubio Tachira 5030  bvillamizarespitia@gmail.com 04266754603'),
(1454, 151, '_shipping_address_index', '        '),
(1455, 151, '_shipping_method', ''),
(1456, 151, '_billing_nombre_completo', 'beatriz villamizar'),
(1457, 151, '_billing_cedula_identidad', 'V'),
(1458, 151, '_billing_documento_identidad', '25921524'),
(1459, 151, 'billing_nombre_completo', 'beatriz villamizar'),
(1460, 151, 'billing_cedula_identidad', 'V'),
(1461, 151, 'cedula-de-ideantidad', 'V'),
(1462, 151, 'billing_documento_identidad', '25921524'),
(1463, 151, 'documentoidentidad', '25921524'),
(1464, 151, 'ywot_carrier_name', 'Envio'),
(1465, 151, '_recorded_sales', 'yes'),
(1466, 151, '_recorded_coupon_usage_counts', 'yes'),
(1467, 151, '_wcpdf_invoice_number', '7'),
(1468, 151, '_wcpdf_formatted_invoice_number', '7'),
(1469, 151, '_wcpdf_invoice_date', '2017-05-26 14:54:09'),
(1471, 151, '_wcpdf_invoice_exists', '1'),
(1472, 151, '_order_stock_reduced', 'yes'),
(1473, 152, '_order_key', 'wc_order_5928967733c5d'),
(1474, 152, '_customer_user', '1'),
(1475, 152, '_payment_method', 'bacs'),
(1476, 152, '_payment_method_title', 'Transferencia Bancaria'),
(1477, 152, '_transaction_id', ''),
(1478, 152, '_customer_ip_address', '::1'),
(1479, 152, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1480, 152, '_created_via', 'checkout'),
(1481, 152, '_date_completed', ''),
(1482, 152, '_completed_date', ''),
(1483, 152, '_date_paid', ''),
(1484, 152, '_paid_date', ''),
(1485, 152, '_cart_hash', 'bd1005d6476ceb82147fc8eb12beeb5f'),
(1486, 152, '_billing_first_name', ''),
(1487, 152, '_billing_last_name', ''),
(1488, 152, '_billing_company', 'papas fritas y aosciados'),
(1489, 152, '_billing_address_1', 'centro de rubio'),
(1490, 152, '_billing_address_2', ''),
(1491, 152, '_billing_city', 'rubio'),
(1492, 152, '_billing_state', 'Tachira'),
(1493, 152, '_billing_postcode', '5030'),
(1494, 152, '_billing_country', ''),
(1495, 152, '_billing_email', 'bvillamizarespitia@gmail.com'),
(1496, 152, '_billing_phone', '04266754603'),
(1497, 152, '_shipping_first_name', ''),
(1498, 152, '_shipping_last_name', ''),
(1499, 152, '_shipping_company', ''),
(1500, 152, '_shipping_address_1', ''),
(1501, 152, '_shipping_address_2', ''),
(1502, 152, '_shipping_city', ''),
(1503, 152, '_shipping_state', ''),
(1504, 152, '_shipping_postcode', ''),
(1505, 152, '_shipping_country', ''),
(1506, 152, '_order_currency', 'VEF'),
(1507, 152, '_cart_discount', '0'),
(1508, 152, '_cart_discount_tax', '0'),
(1509, 152, '_order_shipping', '0'),
(1510, 152, '_order_shipping_tax', '0'),
(1511, 152, '_order_tax', '0'),
(1512, 152, '_order_total', '20000.00'),
(1513, 152, '_order_version', '3.0.7'),
(1514, 152, '_prices_include_tax', 'no'),
(1515, 152, '_billing_address_index', '  papas fritas y aosciados centro de rubio  rubio Tachira 5030  bvillamizarespitia@gmail.com 04266754603'),
(1516, 152, '_shipping_address_index', '        '),
(1517, 152, '_shipping_method', ''),
(1518, 152, '_billing_nombre_completo', 'beatriz villamizar'),
(1519, 152, '_billing_cedula_identidad', 'J'),
(1520, 152, '_billing_documento_identidad', '25921524-9'),
(1521, 152, 'billing_nombre_completo', 'beatriz villamizar'),
(1522, 152, 'billing_cedula_identidad', 'J'),
(1523, 152, 'billing_documento_identidad', '25921524-9'),
(1524, 152, 'ywot_carrier_name', 'Envio'),
(1525, 152, '_recorded_sales', 'yes'),
(1526, 152, '_recorded_coupon_usage_counts', 'yes'),
(1527, 152, '_wcpdf_invoice_number', '8'),
(1528, 152, '_wcpdf_formatted_invoice_number', '8'),
(1529, 152, '_wcpdf_invoice_date', '2017-05-26 14:56:29'),
(1531, 152, '_wcpdf_invoice_exists', '1'),
(1532, 152, '_order_stock_reduced', 'yes'),
(1533, 153, '_order_key', 'wc_order_592899b226fe7'),
(1534, 153, '_customer_user', '2'),
(1535, 153, '_payment_method', 'bacs'),
(1536, 153, '_payment_method_title', 'Transferencia Bancaria'),
(1537, 153, '_transaction_id', ''),
(1538, 153, '_customer_ip_address', '::1'),
(1539, 153, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36'),
(1540, 153, '_created_via', 'checkout'),
(1541, 153, '_date_completed', ''),
(1542, 153, '_completed_date', ''),
(1543, 153, '_date_paid', ''),
(1544, 153, '_paid_date', ''),
(1545, 153, '_cart_hash', 'c9d4d099436020b1e37bfcdb8423f7e0'),
(1546, 153, '_billing_first_name', ''),
(1547, 153, '_billing_last_name', ''),
(1548, 153, '_billing_company', 'sascha fitness criolla'),
(1549, 153, '_billing_address_1', 'la concorida'),
(1550, 153, '_billing_address_2', ''),
(1551, 153, '_billing_city', 'san cristobal'),
(1552, 153, '_billing_state', 'tachira'),
(1553, 153, '_billing_postcode', '5030'),
(1554, 153, '_billing_country', ''),
(1555, 153, '_billing_email', 'romerovivianapr@gmail.com'),
(1556, 153, '_billing_phone', '04147028594'),
(1557, 153, '_shipping_first_name', ''),
(1558, 153, '_shipping_last_name', ''),
(1559, 153, '_shipping_company', ''),
(1560, 153, '_shipping_address_1', ''),
(1561, 153, '_shipping_address_2', ''),
(1562, 153, '_shipping_city', ''),
(1563, 153, '_shipping_state', ''),
(1564, 153, '_shipping_postcode', ''),
(1565, 153, '_shipping_country', ''),
(1566, 153, '_order_currency', 'VEF'),
(1567, 153, '_cart_discount', '0'),
(1568, 153, '_cart_discount_tax', '0'),
(1569, 153, '_order_shipping', '0'),
(1570, 153, '_order_shipping_tax', '0'),
(1571, 153, '_order_tax', '0'),
(1572, 153, '_order_total', '15000.00'),
(1573, 153, '_order_version', '3.0.7'),
(1574, 153, '_prices_include_tax', 'no'),
(1575, 153, '_billing_address_index', '  sascha fitness criolla la concorida  san cristobal tachira 5030  romerovivianapr@gmail.com 04147028594'),
(1576, 153, '_shipping_address_index', '        '),
(1577, 153, '_shipping_method', ''),
(1578, 153, '_billing_nombre_completo', 'viviana romero'),
(1579, 153, '_billing_cedula_identidad', 'V'),
(1580, 153, '_billing_documento_identidad', '20999994'),
(1581, 153, 'billing_nombre_completo', 'viviana romero'),
(1582, 153, 'billing_cedula_identidad', 'V'),
(1583, 153, 'billing_documento_identidad', '20999994'),
(1584, 153, 'ywot_carrier_name', 'Envio'),
(1585, 153, '_recorded_sales', 'yes'),
(1586, 153, '_recorded_coupon_usage_counts', 'yes'),
(1587, 153, '_wcpdf_invoice_number', '9'),
(1588, 153, '_wcpdf_formatted_invoice_number', '9'),
(1589, 153, '_wcpdf_invoice_date', '2017-05-26 15:10:15'),
(1591, 153, '_wcpdf_invoice_exists', '1'),
(1592, 153, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dposts`
--

CREATE TABLE IF NOT EXISTS `wp_dposts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=154 ;

--
-- Volcado de datos para la tabla `wp_dposts`
--

INSERT INTO `wp_dposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-20 13:34:26', '2017-05-20 19:34:26', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2017-05-20 22:42:51', '2017-05-21 04:42:51', '', 0, 'http://localhost/distribuidora/?p=1', 0, 'post', '', 1),
(8, 1, '2017-05-20 18:39:06', '2017-05-21 00:39:06', '[woocommerce_search]', 'Woocommerce Predictive Search', '', 'publish', 'closed', 'closed', '', 'woocommerce-search', '', '', '2017-05-21 20:26:49', '2017-05-22 02:26:49', '', 0, 'http://localhost/distribuidora/woocommerce-search/', 0, 'page', '', 0),
(9, 1, '2017-05-20 18:41:30', '2017-05-21 00:41:30', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2017-05-20 18:41:30', '2017-05-21 00:41:30', '', 0, 'http://localhost/distribuidora/tienda/', 0, 'page', '', 0),
(10, 1, '2017-05-20 18:41:31', '2017-05-21 00:41:31', '[woocommerce_cart]', 'Carro', '', 'publish', 'closed', 'closed', '', 'carro', '', '', '2017-05-21 20:26:31', '2017-05-22 02:26:31', '', 0, 'http://localhost/distribuidora/carro/', 0, 'page', '', 0),
(11, 1, '2017-05-20 18:41:31', '2017-05-21 00:41:31', '[woocommerce_checkout]', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-comprar', '', '', '2017-05-21 20:26:25', '2017-05-22 02:26:25', '', 0, 'http://localhost/distribuidora/finalizar-comprar/', 0, 'page', '', 0),
(12, 1, '2017-05-20 18:41:31', '2017-05-21 00:41:31', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'mi-cuenta', '', '', '2017-05-21 20:26:38', '2017-05-22 02:26:38', '', 0, 'http://localhost/distribuidora/mi-cuenta/', 0, 'page', '', 0),
(13, 1, '2017-05-20 18:45:14', '2017-05-21 00:45:14', 'xxxx producto', 'nuevo producto x', 'xxx producto mas', 'trash', 'open', 'closed', '', 'nuevo-producto-x__trashed', '', '', '2017-05-20 22:03:23', '2017-05-21 04:03:23', '', 0, 'http://localhost/distribuidora/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2017-05-20 19:54:04', '2017-05-21 01:54:04', '', 'enana', '', 'trash', 'open', 'open', '', 'enana__trashed', '', '', '2017-05-20 22:42:46', '2017-05-21 04:42:46', '', 0, 'http://localhost/distribuidora/?p=14', 0, 'post', '', 0),
(15, 1, '2017-05-20 19:54:04', '2017-05-21 01:54:04', '', 'enana', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-05-20 19:54:04', '2017-05-21 01:54:04', '', 14, 'http://localhost/distribuidora/2017/05/20/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-20 21:45:57', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:45:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-05-20 21:45:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:45:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-05-20 21:45:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:45:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=19', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-05-20 21:45:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:45:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-05-20 21:46:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:46:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-05-20 21:46:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 21:46:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-05-20 21:56:08', '2017-05-21 03:56:08', '', 'de-juguetes-lego-icono-7513-128', '', 'inherit', 'open', 'closed', '', 'de-juguetes-lego-icono-7513-128', '', '', '2017-05-20 21:56:08', '2017-05-21 03:56:08', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/de-juguetes-lego-icono-7513-128.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2017-05-20 21:59:28', '2017-05-21 03:59:28', '', 'perfume-icon', '', 'inherit', 'open', 'closed', '', 'perfume-icon', '', '', '2017-05-20 21:59:28', '2017-05-21 03:59:28', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/perfume-icon.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2017-05-20 22:02:11', '2017-05-21 04:02:11', '', 'icono_cosmeticos', '', 'inherit', 'open', 'closed', '', 'icono_cosmeticos', '', '', '2017-05-20 22:02:11', '2017-05-21 04:02:11', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/icono_cosmeticos.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2017-05-20 22:08:18', '2017-05-21 04:08:18', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos\r\n\r\n</div>\r\n<div></div>', 'Power Rangers', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'publish', 'open', 'closed', '', 'power-rangers', '', '', '2017-05-20 22:08:20', '2017-05-21 04:08:20', '', 0, 'http://localhost/distribuidora/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2017-05-20 22:07:58', '2017-05-21 04:07:58', '', 'power_ranguers_juguetes', '', 'inherit', 'open', 'closed', '', 'power_ranguers_juguetes', '', '', '2017-05-20 22:07:58', '2017-05-21 04:07:58', '', 28, 'http://localhost/distribuidora/wp-content/uploads/2017/05/power_ranguers_juguetes.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2017-05-20 22:40:30', '2017-05-21 04:40:30', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N', 'Fragancia Carolina Herrera', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. N', 'publish', 'open', 'closed', '', 'fragancia-carolina-herrera', '', '', '2017-05-20 22:40:32', '2017-05-21 04:40:32', '', 0, 'http://localhost/distribuidora/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2017-05-20 22:40:19', '2017-05-21 04:40:19', '', 'carolina_herrera_fragancia', '', 'inherit', 'open', 'closed', '', 'carolina_herrera_fragancia', '', '', '2017-05-20 22:40:19', '2017-05-21 04:40:19', '', 31, 'http://localhost/distribuidora/wp-content/uploads/2017/05/carolina_herrera_fragancia.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-05-20 22:42:51', '2017-05-21 04:42:51', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-20 22:42:51', '2017-05-21 04:42:51', '', 1, 'http://localhost/distribuidora/2017/05/20/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-05-20 22:43:05', '2017-05-21 04:43:05', '[woocommerce_cart]', 'Carro', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-20 22:43:05', '2017-05-21 04:43:05', '', 10, 'http://localhost/distribuidora/2017/05/20/10-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-05-20 22:44:50', '2017-05-21 04:44:50', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-20 22:44:50', '2017-05-21 04:44:50', '', 12, 'http://localhost/distribuidora/2017/05/20/12-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-20 22:45:54', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 22:45:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2017-05-20 22:45:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 22:45:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2017-05-20 22:45:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 22:45:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2017-05-20 22:45:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-20 22:45:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2017-05-21 11:26:55', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 11:26:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2017-05-21 11:26:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 11:26:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2017-05-21 11:26:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 11:26:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2017-05-21 11:26:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 11:26:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2017-05-21 12:16:16', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 12:16:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2017-05-21 12:16:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 12:16:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2017-05-21 12:16:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 12:16:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2017-05-21 12:16:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 12:16:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=47', 1, 'nav_menu_item', '', 0),
(50, 1, '2017-05-21 13:22:24', '2017-05-21 19:22:24', '', 'minion-972908_1280', '', 'inherit', 'open', 'closed', '', 'minion-972908_1280', '', '', '2017-05-21 13:22:24', '2017-05-21 19:22:24', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/minion-972908_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-05-21 13:22:46', '2017-05-21 19:22:46', '', 'cropped-minion-972908_1280.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-minion-972908_1280-jpg', '', '', '2017-05-21 13:22:46', '2017-05-21 19:22:46', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-minion-972908_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-05-21 13:23:29', '2017-05-21 19:23:29', '{\n    "estore::header_image": {\n        "value": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-minion-972908_1280.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::header_image_data": {\n        "value": {\n            "url": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-minion-972908_1280.jpg",\n            "thumbnail_url": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-minion-972908_1280.jpg",\n            "timestamp": 1495394570710,\n            "attachment_id": 51,\n            "width": 2000,\n            "height": 506\n        },\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a851f3f2-46f8-4cf8-89c8-dbb89ff8f8ab', '', '', '2017-05-21 13:23:29', '2017-05-21 19:23:29', '', 0, 'http://localhost/distribuidora/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2017-05-21 13:28:14', '2017-05-21 19:28:14', '', 'play-stone-1743645_1920', '', 'inherit', 'open', 'closed', '', 'play-stone-1743645_1920', '', '', '2017-05-21 13:28:14', '2017-05-21 19:28:14', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/play-stone-1743645_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2017-05-21 13:41:25', '2017-05-21 19:41:25', '{\n    "estore::background_image": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_ac_btn": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_currency": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_bar_activation": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_logo_placement": {\n        "value": "show_both",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_global_layout": {\n        "value": "right_sidebar",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::custom_logo": {\n        "value": 55,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "blogname": {\n        "value": "Distribuidora Sia",\n        "type": "option",\n        "user_id": 1\n    },\n    "blogdescription": {\n        "value": "Juguetes Cosmeticos Perfumeria",\n        "type": "option",\n        "user_id": 1\n    },\n    "site_icon": {\n        "value": 56,\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2ab47b4-2efc-4209-b90a-a82b5ed5ec23', '', '', '2017-05-21 13:41:25', '2017-05-21 19:41:25', '', 0, 'http://localhost/distribuidora/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2017-05-21 13:38:15', '2017-05-21 19:38:15', 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-power_ranguers_juguetes.jpg', 'cropped-power_ranguers_juguetes.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-power_ranguers_juguetes-jpg', '', '', '2017-05-21 13:38:15', '2017-05-21 19:38:15', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-power_ranguers_juguetes.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-05-21 13:41:00', '2017-05-21 19:41:00', 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-de-juguetes-lego-icono-7513-128.png', 'cropped-de-juguetes-lego-icono-7513-128.png', '', 'inherit', 'open', 'closed', '', 'cropped-de-juguetes-lego-icono-7513-128-png', '', '', '2017-05-21 13:41:00', '2017-05-21 19:41:00', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-de-juguetes-lego-icono-7513-128.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2017-05-21 13:43:26', '2017-05-21 19:43:26', 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-de-juguetes-lego-icono-7513-128-1.png', 'cropped-de-juguetes-lego-icono-7513-128-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-de-juguetes-lego-icono-7513-128-1-png', '', '', '2017-05-21 13:43:26', '2017-05-21 19:43:26', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-de-juguetes-lego-icono-7513-128-1.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2017-05-21 13:47:49', '2017-05-21 19:47:49', '{\n    "estore::custom_logo": {\n        "value": 57,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_media_placement": {\n        "value": "header_media_below_main_menu",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::header_image": {\n        "value": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-minion-972908_1280.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::header_image_data": {\n        "value": {\n            "url": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-minion-972908_1280.jpg",\n            "thumbnail_url": "http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-minion-972908_1280.jpg",\n            "timestamp": 1495396049725,\n            "attachment_id": 59,\n            "width": 2000,\n            "height": 400\n        },\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49024faa-8eb4-47a9-be09-7f96c2b99de4', '', '', '2017-05-21 13:47:49', '2017-05-21 19:47:49', '', 0, 'http://localhost/distribuidora/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2017-05-21 13:47:26', '2017-05-21 19:47:26', '', 'cropped-cropped-minion-972908_1280.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-minion-972908_1280-jpg', '', '', '2017-05-21 13:47:26', '2017-05-21 19:47:26', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-minion-972908_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2017-05-21 14:52:15', '2017-05-21 20:52:15', '{\n    "estore::estore_header_media_placement": {\n        "value": "header_media_below_main_menu",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sidebars_widgets[estore_sidebar_header]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_estore_featured_posts_carousel_widget[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    },\n    "estore::estore_payment_logo1": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "widget_woocommerce_product_search[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[estore_sidebar_right]": {\n        "value": [\n            "woocommerce_product_search-2",\n            "categories-2",\n            "woocommerce_price_filter-2",\n            "woocommerce_layered_nav_filters-2",\n            "woocommerce_widget_cart-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "estore::estore_logo_placement": {\n        "value": "show_both",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_ac_btn": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_currency": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fb249ad-27ae-4274-9b2e-db917174fc78', '', '', '2017-05-21 14:52:15', '2017-05-21 20:52:15', '', 0, 'http://localhost/distribuidora/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2017-05-21 14:01:23', '2017-05-21 20:01:23', '', 'banco_bicentenario', '', 'inherit', 'open', 'closed', '', 'banco_bicentenario', '', '', '2017-05-21 14:01:23', '2017-05-21 20:01:23', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/banco_bicentenario.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2017-05-21 14:53:32', '2017-05-21 20:53:32', '{\n    "estore::estore_header_ac_btn": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4396fb49-b17d-431a-9f44-62c4b72afbfc', '', '', '2017-05-21 14:53:32', '2017-05-21 20:53:32', '', 0, 'http://localhost/distribuidora/?p=62', 0, 'customize_changeset', '', 0),
(64, 1, '2017-05-21 15:00:48', '2017-05-21 21:00:48', '[woocommerce_search]', 'Woocommerce Predictive Search', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-05-21 15:00:48', '2017-05-21 21:00:48', '', 8, 'http://localhost/distribuidora/2017/05/21/8-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-05-21 15:01:36', '2017-05-21 21:01:36', '[woocommerce_checkout]', 'Finalizar compra', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-21 15:01:36', '2017-05-21 21:01:36', '', 11, 'http://localhost/distribuidora/2017/05/21/11-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-05-21 15:03:40', '2017-05-21 21:03:40', '', 'Terminos y Condiciones', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-05-21 20:27:18', '2017-05-22 02:27:18', '', 0, 'http://localhost/distribuidora/?page_id=66', 0, 'page', '', 0),
(67, 1, '2017-05-21 16:17:59', '2017-05-21 22:17:59', '', 'Terminos y Condiciones', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-05-21 16:17:59', '2017-05-21 22:17:59', '', 66, 'http://localhost/distribuidora/2017/05/21/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-05-21 16:29:31', '2017-05-21 22:29:31', '{\n    "estore::background_color": {\n        "value": "#ffffff",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::estore_header_media_placement": {\n        "value": "header_media_below_main_menu",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::nav_menu_locations[primary]": {\n        "value": -74574628,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::nav_menu_locations[header]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-1692174224]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "estore::nav_menu_locations[secondary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-74574628]": {\n        "value": {\n            "name": "Tienda2",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9163f91-b572-40df-96e8-9024118e0628', '', '', '2017-05-21 16:29:31', '2017-05-21 22:29:31', '', 0, 'http://localhost/distribuidora/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2017-05-21 16:30:21', '2017-05-21 22:30:21', '{\n    "estore::nav_menu_locations[primary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::nav_menu_locations[header]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "estore::nav_menu_locations[secondary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[25]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd619b00-6a41-4592-b0dc-442200eb2f4d', '', '', '2017-05-21 16:30:21', '2017-05-21 22:30:21', '', 0, 'http://localhost/distribuidora/2017/05/21/bd619b00-6a41-4592-b0dc-442200eb2f4d/', 0, 'customize_changeset', '', 0),
(71, 1, '2017-05-21 17:04:14', '2017-05-21 23:04:14', '{\n    "layerstore::layerstore_demo_front_page": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "layerstore::layerstore_front_page_demo_carousel": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "layerstore::searchbar-mobile": {\n        "value": "visible",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "layerstore::maxstore_socials": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9718b760-1c70-46af-b43f-8a07cd2aaf71', '', '', '2017-05-21 17:04:14', '2017-05-21 23:04:14', '', 0, 'http://localhost/distribuidora/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2017-05-21 17:05:31', '2017-05-21 23:05:31', '{\n    "layerstore::woo-breadcrumbs": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "layerstore::woo_gallery_zoom": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "layerstore::woo_gallery_slider": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '08c90688-373f-4cfe-9a02-29cd116ed690', '', '', '2017-05-21 17:05:31', '2017-05-21 23:05:31', '', 0, 'http://localhost/distribuidora/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2017-05-21 17:06:39', '2017-05-21 23:06:39', 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-cropped-minion-972908_1280.jpg', 'cropped-cropped-cropped-minion-972908_1280.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-cropped-minion-972908_1280-jpg', '', '', '2017-05-21 17:06:39', '2017-05-21 23:06:39', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/cropped-cropped-cropped-minion-972908_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-05-21 17:50:59', '2017-05-21 23:50:59', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2017-05-21 17:50:59', '2017-05-21 23:50:59', '', 0, 'http://localhost/distribuidora/wishlist/', 0, 'page', '', 0),
(81, 1, '2017-05-21 17:56:48', '2017-05-21 23:56:48', '', 'productos', '', 'inherit', 'open', 'closed', '', 'productos', '', '', '2017-05-21 17:56:48', '2017-05-21 23:56:48', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/productos.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2017-05-21 18:00:37', '2017-05-22 00:00:37', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</p>', 'Tinte para cabello', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen', 'publish', 'open', 'closed', '', 'tinte-para-cabello', '', '', '2017-05-24 15:04:16', '2017-05-24 21:04:16', '', 0, 'http://localhost/distribuidora/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2017-05-21 18:00:03', '2017-05-22 00:00:03', '', 'tinte_cabello', '', 'inherit', 'open', 'closed', '', 'tinte_cabello', '', '', '2017-05-21 18:00:03', '2017-05-22 00:00:03', '', 82, 'http://localhost/distribuidora/wp-content/uploads/2017/05/tinte_cabello.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-05-21 18:04:09', '2017-05-22 00:04:09', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</p>', 'Mouse Inalambrico', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen', 'publish', 'open', 'closed', '', 'mouse-inalambrico', '', '', '2017-05-24 14:32:31', '2017-05-24 20:32:31', '', 0, 'http://localhost/distribuidora/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2017-05-21 18:03:24', '2017-05-22 00:03:24', '', 'mouse_inalambrico', '', 'inherit', 'open', 'closed', '', 'mouse_inalambrico', '', '', '2017-05-21 18:03:24', '2017-05-22 00:03:24', '', 84, 'http://localhost/distribuidora/wp-content/uploads/2017/05/mouse_inalambrico.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2017-05-21 18:10:31', '2017-05-22 00:10:31', '{\n    "maxstore::front_page_demo_banner_title": {\n        "value": "Distribuidora Sia",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::front_page_demo_banner_desc": {\n        "value": "Donde encontraras los que necesites",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::front_page_demo_style": {\n        "value": "style-one",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::front_page_demo_banner": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::front_page_demo_banner_img": {\n        "value": "http://localhost/distribuidora/wp-content/uploads/2017/05/banner_distribuidora_sia.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b3fd611-4f59-4599-8172-a5464d95485b', '', '', '2017-05-21 18:10:31', '2017-05-22 00:10:31', '', 0, 'http://localhost/distribuidora/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2017-05-21 18:09:32', '2017-05-22 00:09:32', '', 'banner_distribuidora_sia', '', 'inherit', 'open', 'closed', '', 'banner_distribuidora_sia', '', '', '2017-05-21 18:09:32', '2017-05-22 00:09:32', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/banner_distribuidora_sia.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-05-21 18:16:18', '2017-05-22 00:16:18', '{\n    "maxstore::maxstore_socials": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::wishlist-top-icon": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::woo-breadcrumbs": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::nav_menu_locations[main_menu]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[26]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "maxstore::woo_gallery_zoom": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "maxstore::woo_gallery_slider": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-558124815]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5fd112de-36d3-47d0-9f20-27f08b856e58', '', '', '2017-05-21 18:16:18', '2017-05-22 00:16:18', '', 0, 'http://localhost/distribuidora/?p=88', 0, 'customize_changeset', '', 0),
(89, 1, '2017-05-21 18:20:52', '2017-05-22 00:20:52', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2017-05-22 09:21:58', '2017-05-22 15:21:58', '', 0, 'http://localhost/distribuidora/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2017-05-21 18:19:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-21 18:19:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=90', 1, 'nav_menu_item', '', 0),
(93, 1, '2017-05-21 18:23:25', '0000-00-00 00:00:00', '', 'Terminos y Condiciones', '', 'draft', 'open', 'open', '', '', '', '', '2017-05-21 18:23:25', '2017-05-22 00:23:25', '', 0, 'http://localhost/distribuidora/?p=93', 0, 'post', '', 0),
(94, 1, '2017-05-21 18:24:21', '2017-05-22 00:24:21', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen\r\n\r\n<strong>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimenLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</strong>', 'Terminos y Condiciones', '', 'publish', 'closed', 'closed', '', 'terminos-y-condiciones', '', '', '2017-05-21 18:24:21', '2017-05-22 00:24:21', '', 0, 'http://localhost/distribuidora/?page_id=94', 0, 'page', '', 0),
(95, 1, '2017-05-21 18:24:21', '2017-05-22 00:24:21', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen\r\n\r\n<strong>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimenLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen</strong>', 'Terminos y Condiciones', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-05-21 18:24:21', '2017-05-22 00:24:21', '', 94, 'http://localhost/distribuidora/2017/05/21/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-05-21 18:30:09', '2017-05-22 00:30:09', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2017-05-22 09:21:59', '2017-05-22 15:21:59', '', 0, 'http://localhost/distribuidora/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2017-05-21 18:32:05', '2017-05-22 00:32:05', '[contact-form-7 id="107" title="Contact form 1"]', 'Contactenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2017-05-21 21:47:39', '2017-05-22 03:47:39', '', 0, 'http://localhost/distribuidora/?page_id=97', 0, 'page', '', 0),
(98, 1, '2017-05-21 18:32:05', '2017-05-22 00:32:05', '<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen', 'Contactenos', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-05-21 18:32:05', '2017-05-22 00:32:05', '', 97, 'http://localhost/distribuidora/2017/05/21/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-05-21 18:33:01', '2017-05-22 00:33:01', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2017-05-22 09:21:59', '2017-05-22 15:21:59', '', 0, 'http://localhost/distribuidora/?p=99', 4, 'nav_menu_item', '', 0),
(103, 1, '2017-05-21 21:17:17', '2017-05-22 03:17:17', '', 'Categorias', '', 'publish', 'closed', 'closed', '', 'categorias', '', '', '2017-05-21 21:17:17', '2017-05-22 03:17:17', '', 0, 'http://localhost/distribuidora/?page_id=103', 0, 'page', '', 0),
(104, 1, '2017-05-21 21:17:17', '2017-05-22 03:17:17', '', 'Categorias', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-05-21 21:17:17', '2017-05-22 03:17:17', '', 103, 'http://localhost/distribuidora/2017/05/21/103-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-05-21 21:18:52', '2017-05-22 03:18:52', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2017-05-22 09:21:59', '2017-05-22 15:21:59', '', 0, 'http://localhost/distribuidora/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2017-05-21 21:20:57', '2017-05-22 03:20:57', '<label> Nombre (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Correo electronico\r\n    [email* your-email] </label>\r\n\r\n<label> Numero telefonico\r\n[tel* tel-218 id:cel] </label>\r\n\r\n<label> Ciudad\r\n[text Ciudad] </label>\r\n\r\n<label> Tema\r\n    [text your-subject] </label>\r\n\r\n<label> Tu mensaje\r\n    [textarea your-message] </label>\r\n\r\n[submit "Enviar"]\n1\nDistribuidora Sia "[your-subject]"\n[your-name] <bvillamizarespitia@gmail.com>\nbvillamizarespitia@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Distribuidora Sia (http://localhost/distribuidora)\nReply-To: [your-email]\n\n\n\n\nDistribuidora Sia "[your-subject]"\nDistribuidora Sia <bvillamizarespitia@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Distribuidora Sia (http://localhost/distribuidora)\nReply-To: bvillamizarespitia@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-05-21 22:01:02', '2017-05-22 04:01:02', '', 0, 'http://localhost/distribuidora/?post_type=wpcf7_contact_form&#038;p=107', 0, 'wpcf7_contact_form', '', 0),
(109, 1, '2017-05-21 21:27:49', '2017-05-22 03:27:49', '[contact-form-7 id="108" title="Untitled"]', 'Contactenos', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-05-21 21:27:49', '2017-05-22 03:27:49', '', 97, 'http://localhost/distribuidora/2017/05/21/97-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-05-21 21:42:18', '2017-05-22 03:42:18', '[contact-form-7 id="110" title="Contacto"]', 'Contactenos', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-05-21 21:42:18', '2017-05-22 03:42:18', '', 97, 'http://localhost/distribuidora/2017/05/21/97-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-05-21 21:47:39', '2017-05-22 03:47:39', '[contact-form-7 id="107" title="Contact form 1"]', 'Contactenos', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-05-21 21:47:39', '2017-05-22 03:47:39', '', 97, 'http://localhost/distribuidora/2017/05/21/97-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-05-22 14:14:27', '2017-05-22 20:14:27', '', 'Order &ndash; mayo 22, 2017 @ 02:14 PM', 'yo lo paso a reirar en su tienda', 'trash', 'open', 'closed', 'order_592346a31f442', 'order-may-22-2017-0814-pm__trashed', '', '', '2017-05-22 07:37:51', '2017-05-22 13:37:51', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=115', 0, 'shop_order', '', 1),
(116, 1, '2017-05-22 14:20:33', '2017-05-22 20:20:33', '', 'Order &ndash; mayo 22, 2017 @ 02:20 PM', '', 'trash', 'open', 'closed', 'order_592348118e18a', 'order-may-22-2017-0820-pm__trashed', '', '', '2017-05-22 06:30:53', '2017-05-22 12:30:53', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=116', 0, 'shop_order', '', 1),
(117, 1, '2017-05-22 15:41:23', '2017-05-22 21:41:23', '', 'Order &ndash; mayo 22, 2017 @ 03:41 PM', '', 'wc-completed', 'open', 'closed', 'order_59235b03855e7', 'order-may-22-2017-0941-pm', '', '', '2017-05-22 07:40:56', '2017-05-22 13:40:56', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=117', 0, 'shop_order', '', 4),
(118, 1, '2017-05-22 05:11:00', '2017-05-22 11:11:00', '', 'Order &ndash; mayo 22, 2017 @ 05:11 AM', '', 'wc-completed', 'closed', 'closed', 'order_5922c752e0b03', 'order-may-22-2017-1111-am', '', '', '2017-05-22 07:39:25', '2017-05-22 13:39:25', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=118', 0, 'shop_order', '', 4),
(119, 1, '2017-05-22 05:42:35', '2017-05-22 11:42:35', '', 'Order &ndash; mayo 22, 2017 @ 05:42 AM', '', 'trash', 'open', 'closed', 'order_5922ceabec83d', 'order-may-22-2017-1142-am__trashed', '', '', '2017-05-22 07:38:05', '2017-05-22 13:38:05', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=119', 0, 'shop_order', '', 1),
(121, 1, '2017-05-22 06:15:12', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-22 06:15:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/distribuidora/?p=121', 0, 'post', '', 0),
(124, 1, '2017-05-22 07:36:13', '2017-05-22 13:36:13', '', 'Order &ndash; mayo 22, 2017 @ 07:36 AM', '', 'trash', 'open', 'closed', 'order_5922e94d1ebf5', 'order-may-22-2017-0136-pm__trashed', '', '', '2017-05-22 07:37:58', '2017-05-22 13:37:58', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=124', 0, 'shop_order', '', 2),
(127, 1, '2017-05-23 15:51:19', '2017-05-23 21:51:19', '', 'Order &ndash; mayo 23, 2017 @ 03:51 PM', 'enviar rapido', 'wc-on-hold', 'open', 'closed', 'order_5924aed78b945', 'order-may-23-2017-0951-pm', '', '', '2017-05-23 15:51:22', '2017-05-23 21:51:22', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=127', 0, 'shop_order', '', 2),
(131, 1, '2017-05-23 10:51:56', '2017-05-23 16:51:56', '', 'Order &ndash; mayo 23, 2017 @ 10:51 AM', '', 'wc-pending', 'open', 'closed', 'order_592468ac6dba9', 'order-may-23-2017-0451-pm', '', '', '2017-05-23 10:51:56', '2017-05-23 16:51:56', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&p=131', 0, 'shop_order', '', 0),
(133, 1, '2017-05-24 13:14:52', '2017-05-24 19:14:52', '[wcmp_vendor]', 'Vendor Dashboard', '', 'publish', 'closed', 'closed', '', 'wcmp', '', '', '2017-05-24 13:14:52', '2017-05-24 19:14:52', '', 0, 'http://localhost/distribuidora/wcmp/', 0, 'page', '', 0),
(134, 1, '2017-05-24 13:14:52', '2017-05-24 19:14:52', '[vendor_registration]', 'Vendor Registration', '', 'publish', 'closed', 'closed', '', 'wcmp_vendor_registration', '', '', '2017-05-24 13:14:52', '2017-05-24 19:14:52', '', 0, 'http://localhost/distribuidora/wcmp_vendor_registration/', 0, 'page', '', 0),
(137, 1, '2017-05-24 14:20:32', '2017-05-24 20:20:32', '[wc_frontend_manager]', 'WC Frontend Manager', '', 'publish', 'closed', 'closed', '', 'wc_frontend_manager', '', '', '2017-05-24 14:20:35', '2017-05-24 20:20:35', '', 0, 'http://localhost/distribuidora/wc_frontend_manager/', 0, 'page', '', 0),
(138, 1, '2017-05-24 14:20:35', '2017-05-24 20:20:35', '[wc_frontend_manager]', 'WC Frontend Manager', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-05-24 14:20:35', '2017-05-24 20:20:35', '', 137, 'http://localhost/distribuidora/2017/05/24/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2017-05-24 14:24:27', '2017-05-24 20:24:27', '', '7501012302685', '', 'inherit', 'open', 'closed', '', '7501012302685', '', '', '2017-05-24 14:24:27', '2017-05-24 20:24:27', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/7501012302685.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2017-05-24 14:25:16', '2017-05-24 20:25:16', '<p>Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad Secadora de ala calidad</p>', 'Secadora', 'Secadora de ala calidad', 'publish', 'open', 'closed', '', 'secadora', '', '', '2017-05-24 14:25:16', '2017-05-24 20:25:16', '', 0, 'http://localhost/distribuidora/product/secadora/', 0, 'product', '', 0),
(142, 1, '2017-05-24 21:13:36', '2017-05-25 03:13:36', '', 'plancha_cabello', '', 'inherit', 'open', 'closed', '', 'plancha_cabello', '', '', '2017-05-24 21:13:36', '2017-05-25 03:13:36', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/plancha_cabello.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-05-24 21:15:01', '2017-05-25 03:15:01', '<p>Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabelloPlancha para cabello</p>', 'Plancha para cabello', 'Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello Plancha para cabello', 'publish', 'open', 'closed', '', 'plancha-para-cabello', '', '', '2017-05-24 21:15:01', '2017-05-25 03:15:01', '', 0, 'http://localhost/distribuidora/product/plancha-para-cabello/', 0, 'product', '', 0),
(144, 1, '2017-05-24 22:13:55', '2017-05-25 04:13:55', '', 'botox', '', 'inherit', 'open', 'closed', '', 'botox', '', '', '2017-05-24 22:13:55', '2017-05-25 04:13:55', '', 0, 'http://localhost/distribuidora/wp-content/uploads/2017/05/botox.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_dposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(145, 1, '2017-05-24 22:14:47', '2017-05-25 04:14:47', '<p>botoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotoxbotox</p>', 'botox', 'botox botox botox botoxbotox', 'publish', 'open', 'closed', '', 'botox', '', '', '2017-05-24 22:15:21', '2017-05-25 04:15:21', '', 0, 'http://localhost/distribuidora/product/botox/', 0, 'product', '', 0),
(146, 1, '2017-05-25 10:38:15', '2017-05-25 16:38:15', '', 'Order &ndash; mayo 25, 2017 @ 10:38 AM', '', 'wc-on-hold', 'open', 'closed', 'order_592708778b75e', 'order-may-25-2017-0438-pm', '', '', '2017-05-25 10:38:18', '2017-05-25 16:38:18', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=146', 0, 'shop_order', '', 2),
(147, 1, '2017-05-25 10:56:09', '2017-05-25 16:56:09', '', 'Order &ndash; mayo 25, 2017 @ 10:56 AM', '', 'wc-on-hold', 'open', 'closed', 'order_59270ca91d34b', 'order-may-25-2017-0456-pm', '', '', '2017-05-25 10:56:11', '2017-05-25 16:56:11', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=147', 0, 'shop_order', '', 2),
(148, 1, '2017-05-26 14:23:24', '2017-05-26 20:23:24', '', 'Order &ndash; mayo 26, 2017 @ 02:23 PM', '', 'wc-on-hold', 'open', 'closed', 'order_59288ebc7e1de', 'order-may-26-2017-0823-pm', '', '', '2017-05-26 14:23:27', '2017-05-26 20:23:27', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=148', 0, 'shop_order', '', 3),
(149, 1, '2017-05-26 14:37:31', '2017-05-26 20:37:31', '', 'Order &ndash; mayo 26, 2017 @ 02:37 PM', 'hello', 'wc-on-hold', 'open', 'closed', 'order_5928920b411d3', 'order-may-26-2017-0837-pm', '', '', '2017-05-26 14:37:34', '2017-05-26 20:37:34', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=149', 0, 'shop_order', '', 2),
(150, 1, '2017-05-26 14:48:07', '2017-05-26 20:48:07', '', 'Order &ndash; mayo 26, 2017 @ 02:48 PM', '', 'wc-on-hold', 'open', 'closed', 'order_59289487c3b03', 'order-may-26-2017-0848-pm', '', '', '2017-05-26 14:48:10', '2017-05-26 20:48:10', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=150', 0, 'shop_order', '', 2),
(151, 1, '2017-05-26 14:54:02', '2017-05-26 20:54:02', '', 'Order &ndash; mayo 26, 2017 @ 02:54 PM', '', 'wc-on-hold', 'open', 'closed', 'order_592895eace3e8', 'order-may-26-2017-0854-pm', '', '', '2017-05-26 14:54:06', '2017-05-26 20:54:06', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=151', 0, 'shop_order', '', 3),
(152, 1, '2017-05-26 14:56:23', '2017-05-26 20:56:23', '', 'Order &ndash; mayo 26, 2017 @ 02:56 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5928967734bfd', 'order-may-26-2017-0856-pm', '', '', '2017-05-26 14:56:27', '2017-05-26 20:56:27', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 2),
(153, 1, '2017-05-26 15:10:10', '2017-05-26 21:10:10', '', 'Order &ndash; mayo 26, 2017 @ 03:10 PM', 'soy enana', 'wc-on-hold', 'open', 'closed', 'order_592899b227b9f', 'order-may-26-2017-0910-pm', '', '', '2017-05-26 15:10:13', '2017-05-26 21:10:13', '', 0, 'http://localhost/distribuidora/?post_type=shop_order&#038;p=153', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dps_exclude`
--

CREATE TABLE IF NOT EXISTS `wp_dps_exclude` (
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dps_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dps_postmeta` (
`meta_id` bigint(20) NOT NULL,
  `ps_post_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dps_posts`
--

CREATE TABLE IF NOT EXISTS `wp_dps_posts` (
  `post_id` bigint(20) NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_dps_posts`
--

INSERT INTO `wp_dps_posts` (`post_id`, `post_title`, `post_type`) VALUES
(9, 'Tienda', 'page'),
(10, 'Carro', 'page'),
(11, 'Finalizar compra', 'page'),
(12, 'My account', 'page'),
(14, 'enana', 'post'),
(28, 'Power Rangers', 'product');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dps_product_sku`
--

CREATE TABLE IF NOT EXISTS `wp_dps_product_sku` (
  `post_id` bigint(20) NOT NULL,
  `sku` text COLLATE utf8mb4_unicode_ci,
  `post_parent` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_dps_product_sku`
--

INSERT INTO `wp_dps_product_sku` (`post_id`, `sku`, `post_parent`) VALUES
(28, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dtermmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dtermmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `wp_dtermmeta`
--

INSERT INTO `wp_dtermmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '0'),
(2, 15, 'display_type', ''),
(3, 15, 'thumbnail_id', '25'),
(4, 16, 'order', '0'),
(5, 16, 'display_type', ''),
(6, 16, 'thumbnail_id', '26'),
(7, 17, 'order', '0'),
(8, 17, 'display_type', ''),
(9, 17, 'thumbnail_id', '27'),
(10, 15, 'product_count_product_cat', '1'),
(11, 18, 'product_count_product_tag', '1'),
(12, 19, 'product_count_product_tag', '1'),
(13, 20, 'product_count_product_tag', '1'),
(14, 21, 'product_count_product_tag', '1'),
(15, 16, 'product_count_product_cat', '1'),
(16, 22, 'product_count_product_tag', '1'),
(17, 23, 'product_count_product_tag', '1'),
(18, 24, 'product_count_product_tag', '1'),
(19, 27, 'order', '0'),
(20, 27, 'display_type', ''),
(21, 27, 'thumbnail_id', '81'),
(22, 17, 'product_count_product_cat', '3'),
(23, 28, 'product_count_product_tag', '1'),
(24, 29, 'product_count_product_tag', '1'),
(25, 30, 'product_count_product_tag', '1'),
(26, 27, 'product_count_product_cat', '2'),
(27, 31, 'product_count_product_tag', '1'),
(28, 32, 'product_count_product_tag', '1'),
(29, 33, 'product_count_product_tag', '1'),
(30, 34, 'product_count_product_tag', '1'),
(31, 35, 'product_count_product_tag', '1'),
(32, 37, 'product_count_product_tag', '1'),
(33, 38, 'product_count_product_tag', '1'),
(34, 39, 'product_count_product_tag', '1'),
(35, 40, 'product_count_product_tag', '1'),
(36, 41, 'product_count_product_tag', '1'),
(37, 42, 'product_count_product_tag', '1'),
(38, 43, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dterms`
--

CREATE TABLE IF NOT EXISTS `wp_dterms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `wp_dterms`
--

INSERT INTO `wp_dterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Jugueteria', 'jugueteria', 0),
(16, 'Perfumería', 'perfumeria', 0),
(17, 'Cosméticos', 'cosmeticos', 0),
(18, 'juguetes', 'juguetes', 0),
(19, 'jugueteria', 'jugueteria', 0),
(20, 'power rangers', 'power-rangers', 0),
(21, 'juguetes para niños', 'juguetes-para-ninos', 0),
(22, 'carolina herrera', 'carolina-herrera', 0),
(23, 'frangancia femenina', 'frangancia-femenina', 0),
(24, 'perfumes de mujer', 'perfumes-de-mujer', 0),
(27, 'Productos', 'productos', 0),
(28, 'cosmeticos', 'cosmeticos', 0),
(29, 'tinte', 'tinte', 0),
(30, 'tinte para el cabello', 'tinte-para-el-cabello', 0),
(31, 'mouse', 'mouse', 0),
(32, 'inalambrico', 'inalambrico', 0),
(33, 'mouse inalambrico', 'mouse-inalambrico', 0),
(34, 'tecnologia', 'tecnologia', 0),
(35, 'genius', 'genius', 0),
(36, 'Terminos y Condiciones', 'terminos-y-condiciones', 0),
(37, 'secadora', 'secadora', 0),
(38, 'plancha de cabello', 'plancha-de-cabello', 0),
(39, 'plancha para cabello', 'plancha-para-cabello', 0),
(40, 'plancha', 'plancha', 0),
(41, 'cabello', 'cabello', 0),
(42, 'botox', 'botox', 0),
(43, 'quitar arrugas', 'quitar-arrugas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dterm_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_dterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_dterm_relationships`
--

INSERT INTO `wp_dterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 1, 0),
(28, 2, 0),
(28, 15, 0),
(28, 18, 0),
(28, 19, 0),
(28, 20, 0),
(28, 21, 0),
(31, 2, 0),
(31, 16, 0),
(31, 22, 0),
(31, 23, 0),
(31, 24, 0),
(82, 2, 0),
(82, 9, 0),
(82, 17, 0),
(82, 28, 0),
(82, 29, 0),
(82, 30, 0),
(84, 2, 0),
(84, 27, 0),
(84, 31, 0),
(84, 32, 0),
(84, 33, 0),
(84, 34, 0),
(84, 35, 0),
(89, 36, 0),
(93, 1, 0),
(96, 36, 0),
(99, 36, 0),
(106, 36, 0),
(140, 2, 0),
(140, 27, 0),
(140, 37, 0),
(143, 2, 0),
(143, 17, 0),
(143, 38, 0),
(143, 39, 0),
(143, 40, 0),
(143, 41, 0),
(145, 2, 0),
(145, 17, 0),
(145, 42, 0),
(145, 43, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dterm_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_dterm_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `wp_dterm_taxonomy`
--

INSERT INTO `wp_dterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 7),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', 'En nuestra tienda encontraras los mejores juguetes del mercado', 0, 1),
(16, 16, 'product_cat', 'Los mejores perfumes para el y ella.', 0, 1),
(17, 17, 'product_cat', 'Los mejores cosméticos para el cuidado de la piel y para toda ocasión ', 0, 3),
(18, 18, 'product_tag', '', 0, 1),
(19, 19, 'product_tag', '', 0, 1),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_tag', '', 0, 1),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(27, 27, 'product_cat', 'La mayor variedad de productos', 0, 2),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'nav_menu', '', 0, 4),
(37, 37, 'product_tag', '', 0, 1),
(38, 38, 'product_tag', '', 0, 1),
(39, 39, 'product_tag', '', 0, 1),
(40, 40, 'product_tag', '', 0, 1),
(41, 41, 'product_tag', '', 0, 1),
(42, 42, 'product_tag', '', 0, 1),
(43, 43, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dusermeta`
--

CREATE TABLE IF NOT EXISTS `wp_dusermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=102 ;

--
-- Volcado de datos para la tabla `wp_dusermeta`
--

INSERT INTO `wp_dusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bcve'),
(2, 1, 'first_name', 'Beatriz Villamizar'),
(3, 1, 'last_name', 'villamizar'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_dcapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_duser_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'yith_wcwl_panel'),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_ddashboard_quick_press_last_post_id', '121'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:11:"css-classes";i:3;s:3:"xfn";i:4;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(21, 1, 'wp_duser-settings', 'libraryContent=browse&mfold=o'),
(22, 1, 'wp_duser-settings-time', '1495655431'),
(23, 1, 'nav_menu_recently_edited', '36'),
(24, 1, 'last_update', '1495832182'),
(25, 1, 'billing_first_name', 'Beatriz Villamizar'),
(26, 1, 'billing_last_name', 'villamizar'),
(27, 1, 'billing_company', 'papas fritas y aosciados'),
(28, 1, 'billing_address_1', 'centro de rubio'),
(29, 1, 'billing_address_2', 'rubio'),
(30, 1, 'billing_city', 'rubio'),
(31, 1, 'billing_state', 'Tachira'),
(32, 1, 'billing_postcode', '5030'),
(33, 1, 'billing_country', 'VE'),
(34, 1, 'billing_email', 'bvillamizarespitia@gmail.com'),
(35, 1, 'billing_phone', '04266754603'),
(44, 1, 'paying_customer', '1'),
(45, 1, 'closedpostboxes_shop_order', 'a:0:{}'),
(46, 1, 'metaboxhidden_shop_order', 'a:0:{}'),
(51, 2, 'nickname', 'vprr'),
(52, 2, 'first_name', ''),
(53, 2, 'last_name', ''),
(54, 2, 'description', ''),
(55, 2, 'rich_editing', 'true'),
(56, 2, 'comment_shortcuts', 'false'),
(57, 2, 'admin_color', 'fresh'),
(58, 2, 'use_ssl', '0'),
(59, 2, 'show_admin_bar_front', 'true'),
(60, 2, 'locale', ''),
(61, 2, 'wp_dcapabilities', 'a:1:{s:8:"customer";b:1;}'),
(62, 2, 'wp_duser_level', '0'),
(63, 2, 'session_tokens', 'a:2:{s:64:"3a19de13dc50346a63c26ca7604b6030a59abdef1674d656feff7eee56a68214";a:4:{s:10:"expiration";i:1496863941;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1495654341;}s:64:"84d8a5abc8d403b214dd58890a8a4448826916ae82e21aac8cf2d42b522d8c07";a:4:{s:10:"expiration";i:1496005699;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1495832899;}}'),
(83, 1, 'shipping_method', ''),
(84, 1, 'billing_nombre_completo', 'beatriz villamizar'),
(85, 1, 'billing_cedula_identidad', 'J'),
(86, 1, 'billing_documento_identidad', '25921524-9'),
(87, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"903ce9225fca3e988c2af215d4e544d3";a:9:{s:10:"product_id";i:143;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:25000;s:13:"line_subtotal";d:25000;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(89, 2, 'last_update', '1495833009'),
(90, 2, 'billing_company', 'sascha fitness criolla'),
(91, 2, 'billing_address_1', 'la concorida'),
(92, 2, 'billing_city', 'san cristobal'),
(93, 2, 'billing_state', 'tachira'),
(94, 2, 'billing_postcode', '5030'),
(95, 2, 'billing_email', 'romerovivianapr@gmail.com'),
(96, 2, 'billing_phone', '04147028594'),
(97, 2, 'shipping_method', ''),
(98, 2, 'billing_nombre_completo', 'viviana romero'),
(99, 2, 'billing_cedula_identidad', 'V'),
(100, 2, 'billing_documento_identidad', '20999994'),
(101, 2, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"2b24d495052a8ce66358eb576b8912c8";a:9:{s:10:"product_id";i:145;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:20000;s:13:"line_subtotal";d:20000;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dusers`
--

CREATE TABLE IF NOT EXISTS `wp_dusers` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `wp_dusers`
--

INSERT INTO `wp_dusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bcve', '$P$BT7QTMKTYHP/0n7FautzuOy8cMCxa20', 'bcve', 'bvillamizarespitia@gmail.com', '', '2017-05-20 19:34:25', '', 0, 'Beatriz Villamizar villamizar'),
(2, 'vprr', '$P$BGaG3frJoCz7a0joBVpFTA0.kBgOVl0', 'vprr', 'romerovivianapr@gmail.com', '', '2017-05-24 19:32:19', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwcmp_products_map`
--

CREATE TABLE IF NOT EXISTS `wp_dwcmp_products_map` (
`ID` bigint(20) NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `wp_dwcmp_products_map`
--

INSERT INTO `wp_dwcmp_products_map` (`ID`, `product_title`, `product_ids`, `created`) VALUES
(1, 'Mouse Inalambrico', '84', '2017-05-24 19:14:52'),
(2, 'Tinte para cabello', '82', '2017-05-24 19:14:53'),
(3, 'Fragancia Carolina Herrera', '31', '2017-05-24 19:14:53'),
(4, 'Power Rangers', '28', '2017-05-24 19:14:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwcmp_vendor_orders`
--

CREATE TABLE IF NOT EXISTS `wp_dwcmp_vendor_orders` (
`ID` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `commission_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `commission_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_trashed` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_api_keys` (
`key_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) unsigned NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) unsigned NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_log`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_log` (
`log_id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_order_itemmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=163 ;

--
-- Volcado de datos para la tabla `wp_dwoocommerce_order_itemmeta`
--

INSERT INTO `wp_dwoocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '84'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '15000'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '15000'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_product_id', '84'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '2'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '30000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '30000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(19, 3, '_product_id', '84'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '2'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '30000'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '30000'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(28, 4, '_product_id', '28'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '1'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '20000'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '20000'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(37, 5, '_product_id', '31'),
(38, 5, '_variation_id', '0'),
(39, 5, '_qty', '1'),
(40, 5, '_tax_class', ''),
(41, 5, '_line_subtotal', '100000'),
(42, 5, '_line_subtotal_tax', '0'),
(43, 5, '_line_total', '100000'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(46, 6, '_product_id', '28'),
(47, 6, '_variation_id', '0'),
(48, 6, '_qty', '1'),
(49, 6, '_tax_class', ''),
(50, 6, '_line_subtotal', '20000'),
(51, 6, '_line_subtotal_tax', '0'),
(52, 6, '_line_total', '20000'),
(53, 6, '_line_tax', '0'),
(54, 6, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(55, 7, '_product_id', '82'),
(56, 7, '_variation_id', '0'),
(57, 7, '_qty', '1'),
(58, 7, '_tax_class', ''),
(59, 7, '_line_subtotal', '5000'),
(60, 7, '_line_subtotal_tax', '0'),
(61, 7, '_line_total', '5000'),
(62, 7, '_line_tax', '0'),
(63, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(64, 8, '_product_id', '82'),
(65, 8, '_variation_id', '0'),
(66, 8, '_qty', '1'),
(67, 8, '_tax_class', ''),
(68, 8, '_line_subtotal', '5000'),
(69, 8, '_line_subtotal_tax', '0'),
(70, 8, '_line_total', '5000'),
(71, 8, '_line_tax', '0'),
(72, 8, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(73, 9, '_product_id', '31'),
(74, 9, '_variation_id', '0'),
(75, 9, '_qty', '1'),
(76, 9, '_tax_class', ''),
(77, 9, '_line_subtotal', '100000'),
(78, 9, '_line_subtotal_tax', '0'),
(79, 9, '_line_total', '100000'),
(80, 9, '_line_tax', '0'),
(81, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(82, 10, '_product_id', '143'),
(83, 10, '_variation_id', '0'),
(84, 10, '_qty', '1'),
(85, 10, '_tax_class', ''),
(86, 10, '_line_subtotal', '25000'),
(87, 10, '_line_subtotal_tax', '0'),
(88, 10, '_line_total', '25000'),
(89, 10, '_line_tax', '0'),
(90, 10, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(91, 11, '_product_id', '143'),
(92, 11, '_variation_id', '0'),
(93, 11, '_qty', '1'),
(94, 11, '_tax_class', ''),
(95, 11, '_line_subtotal', '25000'),
(96, 11, '_line_subtotal_tax', '0'),
(97, 11, '_line_total', '25000'),
(98, 11, '_line_tax', '0'),
(99, 11, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(100, 12, '_product_id', '28'),
(101, 12, '_variation_id', '0'),
(102, 12, '_qty', '1'),
(103, 12, '_tax_class', ''),
(104, 12, '_line_subtotal', '20000'),
(105, 12, '_line_subtotal_tax', '0'),
(106, 12, '_line_total', '20000'),
(107, 12, '_line_tax', '0'),
(108, 12, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(109, 13, '_product_id', '140'),
(110, 13, '_variation_id', '0'),
(111, 13, '_qty', '1'),
(112, 13, '_tax_class', ''),
(113, 13, '_line_subtotal', '15000'),
(114, 13, '_line_subtotal_tax', '0'),
(115, 13, '_line_total', '15000'),
(116, 13, '_line_tax', '0'),
(117, 13, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(118, 14, '_product_id', '140'),
(119, 14, '_variation_id', '0'),
(120, 14, '_qty', '1'),
(121, 14, '_tax_class', ''),
(122, 14, '_line_subtotal', '15000'),
(123, 14, '_line_subtotal_tax', '0'),
(124, 14, '_line_total', '15000'),
(125, 14, '_line_tax', '0'),
(126, 14, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(127, 15, '_product_id', '28'),
(128, 15, '_variation_id', '0'),
(129, 15, '_qty', '1'),
(130, 15, '_tax_class', ''),
(131, 15, '_line_subtotal', '20000'),
(132, 15, '_line_subtotal_tax', '0'),
(133, 15, '_line_total', '20000'),
(134, 15, '_line_tax', '0'),
(135, 15, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(136, 16, '_product_id', '140'),
(137, 16, '_variation_id', '0'),
(138, 16, '_qty', '1'),
(139, 16, '_tax_class', ''),
(140, 16, '_line_subtotal', '15000'),
(141, 16, '_line_subtotal_tax', '0'),
(142, 16, '_line_total', '15000'),
(143, 16, '_line_tax', '0'),
(144, 16, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(145, 17, '_product_id', '145'),
(146, 17, '_variation_id', '0'),
(147, 17, '_qty', '1'),
(148, 17, '_tax_class', ''),
(149, 17, '_line_subtotal', '20000'),
(150, 17, '_line_subtotal_tax', '0'),
(151, 17, '_line_total', '20000'),
(152, 17, '_line_tax', '0'),
(153, 17, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(154, 18, '_product_id', '140'),
(155, 18, '_variation_id', '0'),
(156, 18, '_qty', '1'),
(157, 18, '_tax_class', ''),
(158, 18, '_line_subtotal', '15000'),
(159, 18, '_line_subtotal_tax', '0'),
(160, 18, '_line_total', '15000'),
(161, 18, '_line_tax', '0'),
(162, 18, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_order_items` (
`order_item_id` bigint(20) unsigned NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `wp_dwoocommerce_order_items`
--

INSERT INTO `wp_dwoocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Mouse Inalambrico', 'line_item', 115),
(2, 'Mouse Inalambrico', 'line_item', 116),
(3, 'Mouse Inalambrico', 'line_item', 117),
(4, 'Power Rangers', 'line_item', 118),
(5, 'Fragancia Carolina Herrera', 'line_item', 119),
(6, 'Power Rangers', 'line_item', 124),
(7, 'Tinte para cabello', 'line_item', 127),
(8, 'Tinte para cabello', 'line_item', 131),
(9, 'Fragancia Carolina Herrera', 'line_item', 146),
(10, 'Plancha para cabello', 'line_item', 147),
(11, 'Plancha para cabello', 'line_item', 148),
(12, 'Power Rangers', 'line_item', 148),
(13, 'Secadora', 'line_item', 149),
(14, 'Secadora', 'line_item', 150),
(15, 'Power Rangers', 'line_item', 151),
(16, 'Secadora', 'line_item', 151),
(17, 'botox', 'line_item', 152),
(18, 'Secadora', 'line_item', 153);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_payment_tokenmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_payment_tokens` (
`token_id` bigint(20) unsigned NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_sessions` (
`session_id` bigint(20) unsigned NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=143 ;

--
-- Volcado de datos para la tabla `wp_dwoocommerce_sessions`
--

INSERT INTO `wp_dwoocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(134, '1', 'a:1:{s:8:"customer";s:838:"a:24:{s:8:"postcode";s:4:"5030";s:4:"city";s:5:"rubio";s:9:"address_1";s:15:"centro de rubio";s:7:"address";s:15:"centro de rubio";s:9:"address_2";s:5:"rubio";s:5:"state";s:7:"Tachira";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:4:"5030";s:13:"shipping_city";s:5:"rubio";s:18:"shipping_address_1";s:15:"centro de rubio";s:16:"shipping_address";s:15:"centro de rubio";s:18:"shipping_address_2";s:5:"rubio";s:14:"shipping_state";s:7:"Tachira";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;s:10:"first_name";s:18:"Beatriz Villamizar";s:9:"last_name";s:10:"villamizar";s:7:"company";s:24:"papas fritas y aosciados";s:5:"phone";s:11:"04266754603";s:5:"email";s:28:"bvillamizarespitia@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1495858543),
(142, '2', 'a:20:{s:8:"customer";s:799:"a:24:{s:8:"postcode";s:4:"5030";s:4:"city";s:13:"san cristobal";s:9:"address_1";s:12:"la concorida";s:7:"address";s:12:"la concorida";s:9:"address_2";s:0:"";s:5:"state";s:7:"tachira";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:4:"5030";s:13:"shipping_city";s:13:"san cristobal";s:18:"shipping_address_1";s:12:"la concorida";s:16:"shipping_address";s:12:"la concorida";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:7:"tachira";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:22:"sascha fitness criolla";s:5:"phone";s:11:"04147028594";s:5:"email";s:25:"romerovivianapr@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:21:"chosen_payment_method";s:4:"bacs";s:4:"cart";s:310:"a:1:{s:32:"2b24d495052a8ce66358eb576b8912c8";a:9:{s:10:"product_id";i:145;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:20000;s:13:"line_subtotal";d:20000;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";d:20000;s:5:"total";d:20000;s:8:"subtotal";i:20000;s:15:"subtotal_ex_tax";i:20000;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1496005744),
(85, '5e8c013b2acaef0da66d0e7e50000ac7', 'a:1:{s:8:"customer";s:636:"a:24:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1495827139);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_shipping_zones` (
`zone_id` bigint(20) unsigned NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_shipping_zone_locations` (
`location_id` bigint(20) unsigned NOT NULL,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
`instance_id` bigint(20) unsigned NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_tax_rates` (
`tax_rate_id` bigint(20) unsigned NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dwoocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_dwoocommerce_tax_rate_locations` (
`location_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dyith_wcwl`
--

CREATE TABLE IF NOT EXISTS `wp_dyith_wcwl` (
`ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_dyith_wcwl_lists`
--

CREATE TABLE IF NOT EXISTS `wp_dyith_wcwl_lists` (
`ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_dyith_wcwl_lists`
--

INSERT INTO `wp_dyith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'J20HMHXPM73X', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_dcommentmeta`
--
ALTER TABLE `wp_dcommentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_dcomments`
--
ALTER TABLE `wp_dcomments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10)), ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp_dlinks`
--
ALTER TABLE `wp_dlinks`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_doptions`
--
ALTER TABLE `wp_doptions`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_dpostmeta`
--
ALTER TABLE `wp_dpostmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_dposts`
--
ALTER TABLE `wp_dposts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_dps_exclude`
--
ALTER TABLE `wp_dps_exclude`
 ADD PRIMARY KEY (`object_id`,`object_type`);

--
-- Indices de la tabla `wp_dps_postmeta`
--
ALTER TABLE `wp_dps_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `ps_post_id` (`ps_post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_dps_posts`
--
ALTER TABLE `wp_dps_posts`
 ADD PRIMARY KEY (`post_id`), ADD KEY `post_type` (`post_type`);

--
-- Indices de la tabla `wp_dps_product_sku`
--
ALTER TABLE `wp_dps_product_sku`
 ADD PRIMARY KEY (`post_id`), ADD KEY `post_parent` (`post_parent`);

--
-- Indices de la tabla `wp_dtermmeta`
--
ALTER TABLE `wp_dtermmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_dterms`
--
ALTER TABLE `wp_dterms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_dterm_relationships`
--
ALTER TABLE `wp_dterm_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_dterm_taxonomy`
--
ALTER TABLE `wp_dterm_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_dusermeta`
--
ALTER TABLE `wp_dusermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_dusers`
--
ALTER TABLE `wp_dusers`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_dwcmp_products_map`
--
ALTER TABLE `wp_dwcmp_products_map`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `wp_dwcmp_vendor_orders`
--
ALTER TABLE `wp_dwcmp_vendor_orders`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `vendor_orders` (`order_id`,`vendor_id`,`commission_id`,`product_id`);

--
-- Indices de la tabla `wp_dwoocommerce_api_keys`
--
ALTER TABLE `wp_dwoocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_dwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_dwoocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_dwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_dwoocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indices de la tabla `wp_dwoocommerce_log`
--
ALTER TABLE `wp_dwoocommerce_log`
 ADD PRIMARY KEY (`log_id`), ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_dwoocommerce_order_itemmeta`
--
ALTER TABLE `wp_dwoocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_dwoocommerce_order_items`
--
ALTER TABLE `wp_dwoocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_dwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_dwoocommerce_payment_tokenmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `payment_token_id` (`payment_token_id`), ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_dwoocommerce_payment_tokens`
--
ALTER TABLE `wp_dwoocommerce_payment_tokens`
 ADD PRIMARY KEY (`token_id`), ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_dwoocommerce_sessions`
--
ALTER TABLE `wp_dwoocommerce_sessions`
 ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indices de la tabla `wp_dwoocommerce_shipping_zones`
--
ALTER TABLE `wp_dwoocommerce_shipping_zones`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_dwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_dwoocommerce_shipping_zone_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `location_id` (`location_id`), ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_dwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_dwoocommerce_shipping_zone_methods`
 ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_dwoocommerce_tax_rates`
--
ALTER TABLE `wp_dwoocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`), ADD KEY `tax_rate_state` (`tax_rate_state`(2)), ADD KEY `tax_rate_class` (`tax_rate_class`(10)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_dwoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_dwoocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_dyith_wcwl`
--
ALTER TABLE `wp_dyith_wcwl`
 ADD PRIMARY KEY (`ID`), ADD KEY `prod_id` (`prod_id`);

--
-- Indices de la tabla `wp_dyith_wcwl_lists`
--
ALTER TABLE `wp_dyith_wcwl_lists`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `wishlist_token` (`wishlist_token`), ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_dcommentmeta`
--
ALTER TABLE `wp_dcommentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dcomments`
--
ALTER TABLE `wp_dcomments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `wp_dlinks`
--
ALTER TABLE `wp_dlinks`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_doptions`
--
ALTER TABLE `wp_doptions`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1288;
--
-- AUTO_INCREMENT de la tabla `wp_dpostmeta`
--
ALTER TABLE `wp_dpostmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1593;
--
-- AUTO_INCREMENT de la tabla `wp_dposts`
--
ALTER TABLE `wp_dposts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT de la tabla `wp_dps_postmeta`
--
ALTER TABLE `wp_dps_postmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dtermmeta`
--
ALTER TABLE `wp_dtermmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `wp_dterms`
--
ALTER TABLE `wp_dterms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `wp_dterm_taxonomy`
--
ALTER TABLE `wp_dterm_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `wp_dusermeta`
--
ALTER TABLE `wp_dusermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT de la tabla `wp_dusers`
--
ALTER TABLE `wp_dusers`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_dwcmp_products_map`
--
ALTER TABLE `wp_dwcmp_products_map`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_dwcmp_vendor_orders`
--
ALTER TABLE `wp_dwcmp_vendor_orders`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_api_keys`
--
ALTER TABLE `wp_dwoocommerce_api_keys`
MODIFY `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_dwoocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_dwoocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_log`
--
ALTER TABLE `wp_dwoocommerce_log`
MODIFY `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_order_itemmeta`
--
ALTER TABLE `wp_dwoocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_order_items`
--
ALTER TABLE `wp_dwoocommerce_order_items`
MODIFY `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_dwoocommerce_payment_tokenmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_payment_tokens`
--
ALTER TABLE `wp_dwoocommerce_payment_tokens`
MODIFY `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_sessions`
--
ALTER TABLE `wp_dwoocommerce_sessions`
MODIFY `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_shipping_zones`
--
ALTER TABLE `wp_dwoocommerce_shipping_zones`
MODIFY `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_dwoocommerce_shipping_zone_locations`
MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_dwoocommerce_shipping_zone_methods`
MODIFY `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_tax_rates`
--
ALTER TABLE `wp_dwoocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dwoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_dwoocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dyith_wcwl`
--
ALTER TABLE `wp_dyith_wcwl`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_dyith_wcwl_lists`
--
ALTER TABLE `wp_dyith_wcwl_lists`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
