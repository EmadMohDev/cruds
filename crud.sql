-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 12:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active , 0 = unactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'tv', 1, '2022-11-30 08:59:14', '2022-11-30 08:59:14', NULL),
(2, 'Labtob', 1, '2022-11-30 08:59:37', '2022-11-30 08:59:37', NULL),
(3, 'Phones', 1, '2022-11-30 08:59:51', '2022-11-30 09:01:49', NULL),
(4, 'andorid', 1, '2022-11-30 09:00:54', '2022-11-30 09:00:54', 3);

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_to_content` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `name`, `visible_to_content`) VALUES
(1, 'Advanced Text', 1),
(2, 'Normal Text', 1),
(3, 'Image', 1),
(4, 'Audio', 1),
(5, 'Video', 1),
(6, 'External Link', 1),
(7, 'Selector', 0),
(8, 'Time', 0),
(9, 'Weekend Days', 0),
(10, 'File', 0),
(11, 'Languages', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `who_saw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, 'default', '{\"uuid\":\"43bb4dbf-ae67-46fc-8539-6327bcb45e43\",\"displayName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\AssignPermissionsToRole\\\":0:{}\"}}', 0, NULL, 1669804805, 1669804805),
(2, 'default', '{\"uuid\":\"594d9cf0-9cd6-44f8-9f03-fe363fae35ba\",\"displayName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\AssignPermissionsToRole\\\":0:{}\"}}', 0, NULL, 1669805055, 1669805055),
(3, 'default', '{\"uuid\":\"e7303b10-3fe7-4017-ac29-4fa39b4e0c5f\",\"displayName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\AssignPermissionsToRole\\\":0:{}\"}}', 0, NULL, 1669805400, 1669805400),
(4, 'default', '{\"uuid\":\"1a0d06d8-91f8-4286-9c30-55a5753157bc\",\"displayName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AssignPermissionsToRole\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\AssignPermissionsToRole\\\":0:{}\"}}', 0, NULL, 1669805529, 1669805529);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `route`, `icon`, `visible`, `parent_id`, `order`) VALUES
(1, '{\"en\":\"Dashboard\",\"ar\":\"لوحة التحكم\"}', '/', 'fas fa-home', 1, NULL, 1),
(2, '{\"en\":\"Configurations\",\"ar\":\"التكوينات\"}', NULL, 'fas fa-cogs', 1, NULL, 2),
(3, '{\"en\":\"Settings\",\"ar\":\"الإعدادات\"}', 'settings.index', 'fas fa-tools', 1, 2, 3),
(4, '{\"en\":\"Menus\",\"ar\":\"القوائم\"}', 'menus.index', 'fa fa-bars', 1, 2, 4),
(5, '{\"en\":\"Image Tools\",\"ar\":\"أدوات الصور\"}', NULL, 'fa fa-image', 1, 2, 5),
(6, '{\"en\":\"Routes\",\"ar\":\"المسارات\"}', NULL, 'fa fa-anchor', 0, NULL, 6),
(7, '{\"en\":\"List Routes\",\"ar\":\"عرض المسارات\"}', 'routes.index', 'fa fa-list', 0, 6, 7),
(8, '{\"en\":\"Assign Roles\",\"ar\":\"تمكين صلاحيات\"}', 'routes.assign', 'fa fa-link', 0, 6, 8),
(9, '{\"en\":\"Roles\",\"ar\":\"الأدوار\"}', 'roles.index', 'fa fa-shield-virus', 0, NULL, 9),
(10, '{\"en\":\"Permissions\",\"ar\":\"الأذونات\"}', 'permissions.index', 'fas fa-hand-paper', 0, NULL, 10),
(11, '{\"en\":\"Users\",\"ar\":\"المستخدمين\"}', NULL, 'fa fa-users', 1, NULL, 11),
(12, '{\"en\":\"List Users\",\"ar\":\"عرض المستخدمين\"}', 'users.index', 'fa fa-list', 1, 11, 12),
(13, '{\"en\":\"Create Users\",\"ar\":\"إنشاء مستخدم\"}', 'users.create', 'fa fa-plus', 1, 11, 13),
(14, '{\"en\":\"Content Types\",\"ar\":\"أنواع المحتوي\"}', 'content_types.index', 'fa fa-folder', 1, 2, 14),
(15, '{\"en\":\"Categories\",\"ar\":\"التصنيفات\"}', NULL, 'fa fa-share', 1, NULL, 15),
(16, '{\"en\":\"List Categories\",\"ar\":\"عرض التصنيفات\"}', 'categories.index', 'fa fa-list', 1, 15, 16),
(17, '{\"en\":\"Create Category\",\"ar\":\"إنشاء تصنيف\"}', 'categories.create', 'fa fa-plus', 1, 15, 17),
(18, '{\"en\":\"Products\",\"ar\":\"المنتجات\"}', NULL, 'fa fa-share', 1, NULL, 18),
(19, '{\"en\":\"List Products\",\"ar\":\"عرض المنتجات\"}', 'products.index', 'fa fa-list', 1, 18, 19),
(20, '{\"en\":\"Create Product\",\"ar\":\"إنشاء منتج\"}', 'products.create', 'fa fa-plus', 1, 18, 20);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_000001_create_password_pin_codes_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_04_15_110426_create_permission_tables', 1),
(12, '2022_04_22_210402_create_routes_table', 1),
(13, '2022_04_22_225742_create_role_route_table', 1),
(14, '2022_05_07_082530_create_notifications_table', 1),
(15, '2022_05_10_132034_create_content_types_table', 1),
(16, '2022_05_13_104429_create_settings_table', 1),
(17, '2022_05_13_202620_create_menus_table', 1),
(18, '2022_05_14_162456_create_jobs_table', 1),
(19, '2022_06_27_124649_create_emails_table', 1),
(20, '2022_11_28_102510_create_category', 1),
(21, '2022_11_28_102858_create_product', 1),
(22, '2022_11_28_103227_add_parent_id_to_categories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `password_pin_codes`
--

CREATE TABLE `password_pin_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'homes-index', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(2, 'filemanagers-index', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(3, 'routes-index', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(4, 'routes-download', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(5, 'routes-syncRoutes', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(6, 'routes-syncPermissions', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(7, 'routes-edit', 'web,api', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(8, 'routes-update', 'web,api', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(9, 'routes-assign', 'web,api', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(10, 'routes-assignRoles', 'web,api', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(11, 'users-index', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(12, 'users-create', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(13, 'users-store', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(14, 'users-show', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(15, 'users-edit', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(16, 'users-update', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(17, 'users-destroy', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(18, 'users-multidelete', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(19, 'users-export', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(20, 'users-import', 'web,api', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(21, 'users-saveImport', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(22, 'users-search', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(23, 'profiles-index', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(24, 'profiles-info', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(25, 'profiles-avatar', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(26, 'profiles-password', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(27, 'profiles-roles', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(28, 'profiles-permissions', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(29, 'roles-index', 'web,api', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(30, 'roles-create', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(31, 'roles-store', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(32, 'roles-show', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(33, 'roles-edit', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(34, 'roles-update', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(35, 'roles-destroy', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(36, 'roles-getPermissions', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(37, 'roles-multidelete', 'web,api', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(38, 'permissions-index', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(39, 'permissions-create', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(40, 'permissions-store', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(41, 'permissions-edit', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(42, 'permissions-update', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(43, 'permissions-destroy', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(44, 'permissions-multidelete', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(45, 'settings-index', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(46, 'settings-create', 'web,api', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(47, 'settings-store', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(48, 'settings-edit', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(49, 'settings-update', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(50, 'settings-destroy', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(51, 'settings-getTypeInput', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(52, 'settings-multidelete', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(53, 'contenttypes-index', 'web,api', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(54, 'contenttypes-create', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(55, 'contenttypes-store', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(56, 'contenttypes-edit', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(57, 'contenttypes-update', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(58, 'contenttypes-destroy', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(59, 'contenttypes-multidelete', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(60, 'contenttypes-toggleVisible', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(61, 'menus-index', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(62, 'menus-create', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(63, 'menus-store', 'web,api', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(64, 'menus-show', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(65, 'menus-edit', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(66, 'menus-update', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(67, 'menus-destroy', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(68, 'menus-toggleVisible', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(69, 'menus-reorder', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(70, 'categories-index', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(71, 'categories-create', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(72, 'categories-store', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(73, 'categories-edit', 'web,api', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(74, 'categories-update', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(75, 'categories-destroy', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(76, 'categories-multidelete', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(77, 'categories-activeToggle', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(78, 'products-index', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(79, 'products-create', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(80, 'products-store', 'web,api', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(81, 'products-show', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(82, 'products-edit', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(83, 'products-update', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(84, 'products-destroy', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(85, 'products-multidelete', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(86, 'emails-readAll', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(87, 'emails-index', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(88, 'emails-create', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(89, 'emails-store', 'web,api', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(90, 'emails-show', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(91, 'emails-destroy', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(92, 'emails-count', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(93, 'emails-list', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(94, 'emails-new', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(95, 'searches-index', 'web,api', '2022-11-30 08:52:09', '2022-11-30 08:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `category_id`, `tags`, `image`, `created_at`, `updated_at`) VALUES
(1, 'llabtop  1', 'labtop description', 2, 'tag1,tag2', 'Id4gdLR1HGgwOwyiIsaRHnFxG3zvStiE760Ejwvb.jpg', '2022-11-30 09:03:26', '2022-11-30 09:03:26'),
(2, 'phone 1', 'phone 1 description', 3, 'tag3,tag4', 'SfncbAdhtRn7lSKqE9h4Q62rVe5rBTKRHRQtlwJf.jpg', '2022-11-30 09:04:39', '2022-11-30 09:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(2, 'RBT', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(3, 'Subscriptions', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(4, 'Digital Media', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(5, 'Social Media', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(6, 'Multimedia', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(7, 'Development', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(8, 'IT', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(9, 'Legal', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(10, 'CEO Assistant', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(11, 'Content', 'web,api', '2022-11-30 08:51:57', '2022-11-30 08:51:57'),
(12, 'Quality', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(13, 'RBT Upload', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(14, 'Reports', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(15, 'Finance', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(16, 'Ceo', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(17, 'Acount', 'web,api', '2022-11-30 08:51:58', '2022-11-30 08:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_route`
--

CREATE TABLE `role_route` (
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `controller` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `func` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleware` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `controller`, `func`, `method`, `middleware`, `namespace`, `uri`, `route`, `prefix`, `where`, `created_at`, `updated_at`) VALUES
(1, 'HomeController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard', 'dashboard./', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(2, 'FileManagerController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/file-manager', 'dashboard.file.manager', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(3, 'RouteController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes', 'dashboard.routes.index', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(4, 'RouteController', 'download', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/download', 'dashboard.routes.download', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(5, 'RouteController', 'syncRoutes', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/sync-routes', 'dashboard.routes.syncRoutes', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(6, 'RouteController', 'syncPermissions', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/sync-permissions', 'dashboard.routes.syncPermissions', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(7, 'RouteController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/{route}/edit', 'dashboard.routes.edit', '/dashboard', '', '2022-11-30 08:51:58', '2022-11-30 08:51:58'),
(8, 'RouteController', 'update', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/{route}/update', 'dashboard.routes.update', '/dashboard', '', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(9, 'RouteController', 'assign', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/assign-roles', 'dashboard.routes.assign', '/dashboard', '', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(10, 'RouteController', 'assignRoles', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/routes/assign-roles', 'dashboard.routes.assign-roles', '/dashboard', '', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(11, 'UserController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users', 'dashboard.users.index', '/dashboard', '', '2022-11-30 08:51:59', '2022-11-30 08:51:59'),
(12, 'UserController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/create', 'dashboard.users.create', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(13, 'UserController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users', 'dashboard.users.store', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(14, 'UserController', 'show', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/{user}', 'dashboard.users.show', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(15, 'UserController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/{user}/edit', 'dashboard.users.edit', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(16, 'UserController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/{user}', 'dashboard.users.update', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(17, 'UserController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/{user}', 'dashboard.users.destroy', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(18, 'UserController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/multidelete', 'dashboard.users.multidelete', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(19, 'UserController', 'export', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/excel/export', 'dashboard.users.excel.export', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(20, 'UserController', 'import', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/excel/import', 'dashboard.users.excel.import.form', '/dashboard', '', '2022-11-30 08:52:00', '2022-11-30 08:52:00'),
(21, 'UserController', 'saveImport', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/excel/import', 'dashboard.users.excel.import', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(22, 'UserController', 'search', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/users/search/form', 'dashboard.users.search.form', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(23, 'ProfileController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile', 'dashboard.profile.index', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(24, 'ProfileController', 'info', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile/info', 'dashboard.profile.info', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(25, 'ProfileController', 'avatar', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile/avatar', 'dashboard.profile.avatar', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(26, 'ProfileController', 'password', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile/password', 'dashboard.profile.password', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(27, 'ProfileController', 'roles', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile/roles', 'dashboard.profile.roles', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(28, 'ProfileController', 'permissions', 'PUT', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/profile/permissions', 'dashboard.profile.permissions', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(29, 'RoleController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles', 'dashboard.roles.index', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(30, 'RoleController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/create', 'dashboard.roles.create', '/dashboard', '', '2022-11-30 08:52:01', '2022-11-30 08:52:01'),
(31, 'RoleController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles', 'dashboard.roles.store', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(32, 'RoleController', 'show', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/{role}', 'dashboard.roles.show', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(33, 'RoleController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/{role}/edit', 'dashboard.roles.edit', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(34, 'RoleController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/{role}', 'dashboard.roles.update', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(35, 'RoleController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/{role}', 'dashboard.roles.destroy', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(36, 'RoleController', 'getPermissions', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/get/permissions', 'dashboard.roles.permissions', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(37, 'RoleController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/roles/multidelete', 'dashboard.roles.multidelete', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(38, 'PermissionController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions', 'dashboard.permissions.index', '/dashboard', '', '2022-11-30 08:52:02', '2022-11-30 08:52:02'),
(39, 'PermissionController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions/create', 'dashboard.permissions.create', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(40, 'PermissionController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions', 'dashboard.permissions.store', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(41, 'PermissionController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions/{permission}/edit', 'dashboard.permissions.edit', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(42, 'PermissionController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions/{permission}', 'dashboard.permissions.update', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(43, 'PermissionController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions/{permission}', 'dashboard.permissions.destroy', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(44, 'PermissionController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/permissions/multidelete', 'dashboard.permissions.multidelete', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(45, 'SettingController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings', 'dashboard.settings.index', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(46, 'SettingController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/create', 'dashboard.settings.create', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(47, 'SettingController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings', 'dashboard.settings.store', '/dashboard', '', '2022-11-30 08:52:03', '2022-11-30 08:52:03'),
(48, 'SettingController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/{setting}/edit', 'dashboard.settings.edit', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(49, 'SettingController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/{setting}', 'dashboard.settings.update', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(50, 'SettingController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/{setting}', 'dashboard.settings.destroy', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(51, 'SettingController', 'getTypeInput', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/type/input', 'dashboard.settings.type.input', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(52, 'SettingController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/settings/multidelete', 'dashboard.settings.multidelete', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(53, 'ContentTypeController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types', 'dashboard.content_types.index', '/dashboard', '', '2022-11-30 08:52:04', '2022-11-30 08:52:04'),
(54, 'ContentTypeController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/create', 'dashboard.content_types.create', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(55, 'ContentTypeController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types', 'dashboard.content_types.store', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(56, 'ContentTypeController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/{content_type}/edit', 'dashboard.content_types.edit', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(57, 'ContentTypeController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/{content_type}', 'dashboard.content_types.update', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(58, 'ContentTypeController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/{content_type}', 'dashboard.content_types.destroy', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(59, 'ContentTypeController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/multidelete', 'dashboard.content_types.multidelete', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(60, 'ContentTypeController', 'toggleVisible', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/content_types/visible/toggle/{content_type}', 'dashboard.content_types.visible.toggle', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(61, 'MenuController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus', 'dashboard.menus.index', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(62, 'MenuController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/create', 'dashboard.menus.create', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(63, 'MenuController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus', 'dashboard.menus.store', '/dashboard', '', '2022-11-30 08:52:05', '2022-11-30 08:52:05'),
(64, 'MenuController', 'show', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/{menu}', 'dashboard.menus.show', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(65, 'MenuController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/{menu}/edit', 'dashboard.menus.edit', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(66, 'MenuController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/{menu}', 'dashboard.menus.update', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(67, 'MenuController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/{menu}', 'dashboard.menus.destroy', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(68, 'MenuController', 'toggleVisible', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/{menu}/toggle/visible', 'dashboard.menus.toggle.visible', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(69, 'MenuController', 'reorder', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/menus/reorder', 'dashboard.menus.reorder', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(70, 'CategoryController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories', 'dashboard.categories.index', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(71, 'CategoryController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/create', 'dashboard.categories.create', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(72, 'CategoryController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories', 'dashboard.categories.store', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(73, 'CategoryController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/{category}/edit', 'dashboard.categories.edit', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(74, 'CategoryController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/{category}', 'dashboard.categories.update', '/dashboard', '', '2022-11-30 08:52:06', '2022-11-30 08:52:06'),
(75, 'CategoryController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/{category}', 'dashboard.categories.destroy', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(76, 'CategoryController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/multidelete', 'dashboard.categories.multidelete', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(77, 'CategoryController', 'activeToggle', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/categories/active-toggle', 'dashboard.categories.active.toggle', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(78, 'ProductController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products', 'dashboard.products.index', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(79, 'ProductController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/create', 'dashboard.products.create', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(80, 'ProductController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products', 'dashboard.products.store', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(81, 'ProductController', 'show', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/{product}', 'dashboard.products.show', '/dashboard', '', '2022-11-30 08:52:07', '2022-11-30 08:52:07'),
(82, 'ProductController', 'edit', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/{product}/edit', 'dashboard.products.edit', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(83, 'ProductController', 'update', 'PUT,PATCH', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/{product}', 'dashboard.products.update', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(84, 'ProductController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/{product}', 'dashboard.products.destroy', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(85, 'ProductController', 'multidelete', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/products/multidelete', 'dashboard.products.multidelete', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(86, 'EmailController', 'readAll', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/read/All', 'dashboard.emails.read.all', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(87, 'EmailController', 'index', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails', 'dashboard.emails.index', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(88, 'EmailController', 'create', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/create', 'dashboard.emails.create', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(89, 'EmailController', 'store', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails', 'dashboard.emails.store', '/dashboard', '', '2022-11-30 08:52:08', '2022-11-30 08:52:08'),
(90, 'EmailController', 'show', 'GET,HEAD', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/{email}', 'dashboard.emails.show', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(91, 'EmailController', 'destroy', 'DELETE', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/{email}', 'dashboard.emails.destroy', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(92, 'EmailController', 'count', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/count', 'dashboard.emails.count', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(93, 'EmailController', 'list', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/list', 'dashboard.emails.list', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(94, 'EmailController', 'new', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/emails/new/{limit?}', 'dashboard.emails.list.new', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09'),
(95, 'SearchController', 'index', 'POST', 'web,auth,localeSessionRedirect,localizationRedirect', 'App\\Http\\Controllers\\Backend', 'dashboard/search', 'dashboard.search', '/dashboard', '', '2022-11-30 08:52:09', '2022-11-30 08:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `system` smallint(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'if the project have multi system and each system has settings, 1 is default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `content_type_id`, `system`) VALUES
(1, 'logo', 'uploads/settings/1zLYr1trR95QH71p25fRqAm3TMEcq5JiUfkjznzy.jpg', 3, 1),
(2, 'site_name', 'app', 2, 1),
(3, 'success_audio', 'samples/audios/success.mp3', 4, 1),
(4, 'warrning_audio', 'samples/audios/warrning.mp3', 4, 1),
(5, 'default_lang', 'ar', 11, 1),
(6, 'run_pusher', '1', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'admin@admin.com', '$2y$10$Tl2dlBpzGynhbT3uj.5f1eZy9t9w4Oo0jYAdi8RS/GcW6Qgawn9MS', 'JEQrwVmNWaTErmMG6caTnNkbADW33dZ1XEQnwQi3.jpg', '2022-11-30 08:52:09', 'fC7ZYSemq5', '2022-11-30 08:52:10', '2022-11-30 09:06:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_notifier_id_foreign` (`notifier_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_pin_codes`
--
ALTER TABLE `password_pin_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_pin_codes_email_index` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_route`
--
ALTER TABLE `role_route`
  ADD KEY `role_route_role_id_foreign` (`role_id`),
  ADD KEY `role_route_route_id_foreign` (`route_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `settings_content_type_id_foreign` (`content_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_pin_codes`
--
ALTER TABLE `password_pin_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_notifier_id_foreign` FOREIGN KEY (`notifier_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_route`
--
ALTER TABLE `role_route`
  ADD CONSTRAINT `role_route_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_route_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_content_type_id_foreign` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
