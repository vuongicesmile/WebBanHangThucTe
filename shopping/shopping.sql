-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 01, 2021 lúc 09:08 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'SPORTSWEAR', 0, 'sportswear', '2021-02-19 09:43:38', '2021-02-19 09:43:38', NULL),
(11, 'MENS', 0, 'mens', '2021-02-19 09:45:34', '2021-02-19 09:45:34', NULL),
(12, 'WOMENS', 0, 'womens', '2021-02-19 09:45:47', '2021-02-19 09:45:47', NULL),
(13, 'KIDS', 0, 'kids', '2021-02-19 09:45:59', '2021-02-19 09:45:59', NULL),
(14, 'FASHION', 0, 'fashion', '2021-02-19 09:46:19', '2021-02-19 09:46:19', NULL),
(15, 'HOUSEHOLDS', 0, 'households', '2021-02-19 09:46:31', '2021-02-19 09:46:31', NULL),
(16, 'INTERIORS', 0, 'interiors', '2021-02-19 09:46:42', '2021-02-19 09:46:42', NULL),
(17, 'CLOTHING', 0, 'clothing', '2021-02-19 09:47:14', '2021-02-19 09:47:14', NULL),
(18, 'BAGS', 0, 'bags', '2021-02-19 09:47:25', '2021-02-19 09:47:25', NULL),
(19, 'SHOES', 0, 'shoes', '2021-02-19 09:47:38', '2021-02-19 09:47:38', NULL),
(20, 'NIKE', 10, 'nike', '2021-02-19 09:48:10', '2021-02-19 09:48:10', NULL),
(21, 'UNDER ARMOUR', 10, 'under-armour', '2021-02-19 09:48:27', '2021-02-19 09:48:27', NULL),
(22, 'ADIDAS', 10, 'adidas', '2021-02-19 09:49:03', '2021-02-19 09:49:03', NULL),
(23, 'FENDI', 11, 'fendi', '2021-02-19 09:49:36', '2021-02-19 09:49:36', NULL),
(24, 'GUESS', 11, 'guess', '2021-02-19 09:49:52', '2021-02-19 09:49:52', NULL),
(25, 'VALENTINO', 12, 'valentino', '2021-02-19 09:50:15', '2021-02-27 05:08:14', '2021-02-27 05:08:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu 1', 0, '2021-02-24 10:40:00', '2021-02-24 10:40:00', 'menu-1', NULL),
(2, 'Menu 2', 0, NULL, NULL, '', NULL),
(3, 'Menu 3', 0, NULL, NULL, '', NULL),
(4, 'Menu 1.1', 1, NULL, NULL, '', NULL),
(5, 'menu 1.2', 1, NULL, NULL, '', NULL),
(6, 'menu 2.1-edit', 2, NULL, '2021-02-06 07:00:07', 'menu-21-edit', '2021-02-06 07:00:07'),
(7, 'Menu 1.2.5', 5, NULL, NULL, '', NULL),
(8, 'Menu 2.1', 2, NULL, NULL, '', NULL),
(9, 'Menu 3.1', 3, NULL, NULL, '', NULL),
(10, 'Menu 1.1.1.1', 6, '2021-02-06 05:22:03', '2021-02-06 05:22:03', '', NULL),
(11, 'Menu 4', 0, '2021-02-06 05:30:42', '2021-02-06 05:30:42', '', NULL),
(12, 'Menu 4.1', 11, '2021-02-06 05:31:18', '2021-02-06 05:31:18', '', NULL),
(13, 'Menu 5', 0, '2021-02-06 05:45:53', '2021-02-06 05:45:53', 'menu-5', NULL),
(14, 'Test', 0, '2021-02-24 10:22:59', '2021-02-24 10:23:05', 'test', '2021-02-24 10:23:05'),
(16, 'menu teset', 0, '2021-02-25 04:22:02', '2021-02-25 04:22:02', 'menu-teset', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_02_01_075956_create_categories_table', 1),
(4, '2021_02_06_040926_add_column_deleted_at_table_categories', 2),
(5, '2021_02_06_043404_create_menus_table', 3),
(6, '2021_02_06_123538_add_column_slug_to_menus_table', 4),
(7, '2021_02_06_135318_add_column_soft_delete_to_menus_table', 5),
(8, '2021_02_06_203418_create_products_table', 6),
(9, '2021_02_06_203902_create_product_images_table', 6),
(10, '2021_02_06_204047_create_tags_table', 6),
(11, '2021_02_06_204200_create_product_tags_table', 6),
(12, '2021_02_08_042723_add_column_feature_image_name', 7),
(13, '2021_02_08_050607_add_column_image_name_to_table_product_image', 8),
(14, '2021_02_08_142713_add_column_deleted_at_to_product_table', 9),
(15, '2021_02_10_050628_create_sliders_table', 10),
(16, '2021_02_10_175951_add_column_deleted_at_to_sliders', 11),
(17, '2021_02_13_042247_create_settings_table', 12),
(18, '2021_02_13_122133_add_column_type_settings_table', 13),
(19, '2021_02_15_032336_create_roles_table', 14),
(20, '2021_02_15_032355_create_permissions_table', 14),
(21, '2021_02_15_032846_create_table_user_role', 14),
(22, '2021_02_15_033001_create_table_permission_role', 14),
(23, '2021_02_15_125424_add_column_deleted_at_table_users', 15),
(24, '2021_02_15_141756_add_column_parent_id_permission', 16),
(25, '2021_02_16_042236_add_column_key_permission_table', 17),
(26, '2019_08_19_000000_create_failed_jobs_table', 18),
(27, '2021_02_20_170946_add_column_views_products', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0, ''),
(2, 'Thêm danh mục', 'Thêm danh mục', NULL, NULL, 1, 'add_category'),
(3, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1, 'edit_category'),
(4, 'Xoá danh mục', 'Sửa danh mục', NULL, NULL, 1, 'delete_category'),
(5, 'Danh sách danh mục', 'Danh sách danh mục', NULL, NULL, 1, 'list_category'),
(6, 'Menu', 'Menu', NULL, NULL, 0, ''),
(7, 'Danh sách Menu', 'Dách sách Menu', NULL, NULL, 6, 'list_menu'),
(8, 'Thêm Menu', 'Thêm Menu', NULL, NULL, 6, 'add_menu'),
(9, 'Sửa Menu', 'Sửa Menu', NULL, NULL, 6, 'edit_menu'),
(10, 'Xoá Menu', 'Xoá Menu', NULL, NULL, 6, 'delete_menu'),
(11, 'Slider', 'Slider', NULL, NULL, 0, ''),
(12, 'Danh sách Slider', 'Dách sách Slider', NULL, NULL, 11, 'list_slider'),
(13, 'Thêm Slider', 'Thêm Slider', NULL, NULL, 11, 'add_slider'),
(14, 'Sửa Slider', 'Sửa Slider', NULL, NULL, 11, 'edit_slider'),
(15, 'Xoá Slider', 'Xoá Slider', NULL, NULL, 11, 'delete_slider'),
(16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách Sản phẩm', 'Danh sách Sản phẩm', NULL, NULL, 16, 'list_product'),
(18, 'Thêm Sản phẩm', 'Thêm Sản phẩm', NULL, NULL, 16, 'add_product'),
(19, 'Sửa Sản phẩm', 'Sửa Sản phẩm', NULL, NULL, 16, 'edit_product'),
(20, 'Xoá Sản phẩm', 'Xoá Sản phẩm', NULL, NULL, 16, 'delete_product'),
(21, 'Settings', 'Settings', NULL, NULL, 0, ''),
(22, 'Danh sách Settings', 'Danh sách Settings', NULL, NULL, 21, 'list_settings'),
(23, 'Thêm Settings', 'Thêm Settings', NULL, NULL, 21, 'add_settings'),
(24, 'Sửa Settings', 'Sửa Settings', NULL, NULL, 21, 'edit_settings'),
(25, 'Xoá Settings', 'Xoá Settings', NULL, NULL, 21, 'delete_settings'),
(26, 'nhân viên', 'nhân viên', NULL, NULL, 0, ''),
(27, 'Danh sách nhân viên', 'Danh sách nhân viên', NULL, NULL, 26, 'list_user'),
(28, 'Thêm nhân viên', 'Thêm nhân viên', NULL, NULL, 26, 'add_user'),
(29, 'Sửa nhân viên', 'Sửa nhân viên', NULL, NULL, 26, 'edit_user'),
(30, 'Xoá nhân viên', 'Xoá nhân viên', NULL, NULL, 26, 'delete_user'),
(31, 'Vai trò', 'Vai trò', NULL, NULL, 0, ''),
(32, 'Danh sách Vai trò', 'Danh sách Vai trò', NULL, NULL, 31, 'list_role'),
(33, 'Thêm Vai trò', 'Thêm Vai trò', NULL, NULL, 31, 'add_role'),
(34, 'Sửa Vai trò', 'Sửa Vai trò', NULL, NULL, 31, 'edit_role'),
(35, 'Xoá Vai trò', 'Xoá Vai trò', NULL, NULL, 31, 'delete_role'),
(41, 'test', 'test', '2021-02-17 22:37:40', '2021-02-17 22:37:40', 0, ''),
(42, 'list', 'list', '2021-02-17 22:37:40', '2021-02-17 22:37:40', 41, 'test_list'),
(43, 'add', 'add', '2021-02-17 22:37:40', '2021-02-17 22:37:40', 41, 'test_add'),
(44, 'edit', 'edit', '2021-02-17 22:37:40', '2021-02-17 22:37:40', 41, 'test_edit'),
(45, 'delete', 'delete', '2021-02-17 22:37:40', '2021-02-17 22:37:40', 41, 'test_delete');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 3, NULL, NULL),
(3, 5, 4, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(7, 6, 2, NULL, NULL),
(8, 6, 3, NULL, NULL),
(9, 6, 4, NULL, NULL),
(10, 6, 5, NULL, NULL),
(11, 6, 7, NULL, NULL),
(12, 6, 8, NULL, NULL),
(17, 1, 5, NULL, NULL),
(22, 1, 12, NULL, NULL),
(23, 1, 13, NULL, NULL),
(24, 1, 14, NULL, NULL),
(25, 1, 15, NULL, NULL),
(28, 1, 19, NULL, NULL),
(30, 1, 22, NULL, NULL),
(31, 1, 23, NULL, NULL),
(32, 1, 24, NULL, NULL),
(33, 1, 25, NULL, NULL),
(34, 1, 27, NULL, NULL),
(35, 1, 28, NULL, NULL),
(36, 1, 29, NULL, NULL),
(37, 1, 30, NULL, NULL),
(38, 1, 32, NULL, NULL),
(39, 1, 33, NULL, NULL),
(40, 1, 34, NULL, NULL),
(41, 1, 35, NULL, NULL),
(42, 1, 42, NULL, NULL),
(43, 1, 43, NULL, NULL),
(44, 1, 44, NULL, NULL),
(45, 1, 45, NULL, NULL),
(46, 2, 2, NULL, NULL),
(47, 2, 5, NULL, NULL),
(48, 2, 7, NULL, NULL),
(49, 2, 8, NULL, NULL),
(50, 2, 9, NULL, NULL),
(51, 2, 10, NULL, NULL),
(52, 2, 12, NULL, NULL),
(53, 2, 13, NULL, NULL),
(54, 2, 14, NULL, NULL),
(55, 2, 15, NULL, NULL),
(59, 1, 17, NULL, NULL),
(60, 1, 7, NULL, NULL),
(61, 1, 18, NULL, NULL),
(62, 1, 20, NULL, NULL),
(65, 1, 8, NULL, NULL),
(66, 1, 9, NULL, NULL),
(67, 1, 10, NULL, NULL),
(68, 1, 2, NULL, NULL),
(69, 1, 3, NULL, NULL),
(70, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`) VALUES
(21, 'Giày adidas cho giới trẻ', '900000', '/storage/Product/5/gQxT2w4Reu6xmwpBb94Z.jpg', '<p>Gi&agrave;y adidas</p>\r\n<p><img src=\"http://localhost:8000/storage/photos/5/adidas.jpg\" alt=\"\" width=\"1200\" height=\"1200\" /></p>', 5, 22, '2021-02-28 08:03:55', '2021-02-28 08:05:36', 'adidas.jpg', NULL, NULL),
(22, 'Túi Fendi cho giới trẻ', '1500000', '/storage/Product/5/usWXWP7jHij0IRvzpuBY.jpeg', '<p>T&uacute;i fendi<img src=\"http://localhost:8000/storage/photos/5/f1.jpeg\" alt=\"\" width=\"189\" height=\"266\" /></p>', 5, 23, '2021-02-28 08:14:04', '2021-02-28 08:14:04', 'fendi.jpeg', NULL, NULL),
(23, 'Giày Nike Air cho giới trẻ', '900000', '/storage/Product/5/BE6NlmZEmU06GfBwcAyg.jpeg', '<p>Gi&agrave;y nike<img src=\"http://localhost:8000/storage/photos/5/1.jpg\" alt=\"\" width=\"600\" height=\"312\" /></p>\r\n<p>\"</p>', 5, 20, '2021-02-28 08:21:00', '2021-02-28 08:21:00', 'download.jpeg', NULL, NULL),
(24, 'Đồng hồ Guess', '1500000', '/storage/Product/5/jwlQoUXylMJMrOeUc6eQ.jpeg', '<p>Đồng hồ s&ocirc;s 1</p>', 5, 24, '2021-02-28 08:23:40', '2021-02-28 08:37:02', '1.jpeg', '2021-02-28 08:37:02', NULL),
(25, 'Đồng hồ Guesss', '1500000', '/storage/Product/5/v6BbJMto3A8K0lxiNhX4.jpeg', '<p>\"Đồng</p>', 5, 24, '2021-02-28 08:37:41', '2021-02-28 08:37:41', '3.jpeg', NULL, NULL),
(26, 'Giày Valentiano', '1500000', '/storage/Product/5/85RvTbUFc1H4X3yLkNGA.jpeg', '<p>giayf</p>', 5, 13, '2021-02-28 08:40:20', '2021-02-28 08:40:20', 'hhh.jpeg', NULL, NULL),
(27, 'Giày cho nữ Gucci', '1500000', '/storage/Product/5/fyslmsu4rnjmCYDMzS1D.jpeg', '<p>\"ff</p>', 5, 14, '2021-02-28 08:41:58', '2021-02-28 08:42:33', '4.jpeg', '2021-02-28 08:42:33', NULL),
(28, 'Giày cho nữ Guccii', '1500000', '/storage/Product/5/8aMaau055JXbuSND5Bvi.jpg', '<p>\"gg</p>', 5, 18, '2021-02-28 08:43:10', '2021-02-28 08:43:10', 'adidas.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/Product/1/T0ZxwiDW6ElY7A0V1YOu.jpg', 8, '2021-02-07 22:44:24', '2021-02-07 22:44:24', '1.jpg'),
(2, '/storage/Product/1/d8qDNh9VwkvjWNzmvDd1.jpg', 8, '2021-02-07 22:44:24', '2021-02-07 22:44:24', '2.jpg'),
(3, '/storage/Product/1/qy2CAlpVIbx6TJgJnDhA.jpg', 8, '2021-02-07 22:44:24', '2021-02-07 22:44:24', 'big.jpg'),
(7, '/storage/Product/1/yqZTKvFb0TKQb8zwOigH.jpg', 11, '2021-02-07 23:04:45', '2021-02-07 23:04:45', '1.jpg'),
(8, '/storage/Product/1/rBVPvzH5k370XQIeUR7d.jpg', 12, '2021-02-07 23:29:02', '2021-02-07 23:29:02', '1.jpg'),
(9, '/storage/Product/1/4t4RGUSy4nM8rdyjW2Oz.jpg', 13, '2021-02-07 23:29:59', '2021-02-07 23:29:59', '1.jpg'),
(10, '/storage/Product/1/CMLV4pjtGIR6zKfvC4T9.jpg', 14, '2021-02-07 23:47:20', '2021-02-07 23:47:20', '1.jpg'),
(11, '/storage/Product/1/LNMAowZj3katKz3FT69n.jpg', 14, '2021-02-07 23:47:20', '2021-02-07 23:47:20', '2.jpg'),
(12, '/storage/Product/1/jkfJ2Y4XCMxVZO9xkIun.jpg', 14, '2021-02-07 23:47:20', '2021-02-07 23:47:20', 'big.jpg'),
(13, '/storage/Product/1/CJ1Xi3zKc44PI5kNxtpr.jpg', 15, '2021-02-07 23:49:53', '2021-02-07 23:49:53', '1.jpg'),
(14, '/storage/Product/1/4VHg3cXFLtrIOPh7tSuB.jpg', 15, '2021-02-07 23:49:53', '2021-02-07 23:49:53', '2.jpg'),
(15, '/storage/Product/1/4uCZY4oWeYbeONOE7JAd.jpg', 15, '2021-02-07 23:49:53', '2021-02-07 23:49:53', 'big.jpg'),
(16, '/storage/Product/1/ESICxGIIFlqOCWiJVegu.jpg', 16, '2021-02-08 00:03:31', '2021-02-08 00:03:31', '1.jpg'),
(17, '/storage/Product/1/ZjnE69uaErOYTN8XPrfm.jpg', 17, '2021-02-08 00:04:48', '2021-02-08 00:04:48', '1.jpg'),
(18, '/storage/Product/1/EkuefuXZfvwZ7x07pNG6.jpg', 18, '2021-02-08 00:36:24', '2021-02-08 00:36:24', '2.jpg'),
(19, '/storage/Product/5/MeFNH21TIIhbDPJkbsZb.jpg', 20, '2021-02-20 08:52:18', '2021-02-20 08:52:18', '1.jpg'),
(20, '/storage/Product/5/EsCFltCwuJY4JT02Y3yy.jpeg', 20, '2021-02-20 08:52:18', '2021-02-20 08:52:18', '2.jpeg'),
(21, '/storage/Product/5/WCXwNVbOJpRjUCi0GXsi.jpg', 20, '2021-02-20 08:52:18', '2021-02-20 08:52:18', '3.jpg'),
(22, '/storage/Product/5/XUvTQsBwXyWbrm1R4B4J.jpeg', 21, '2021-02-28 08:03:55', '2021-02-28 08:03:55', '3.jpeg'),
(23, '/storage/Product/5/5N30jsiDme0Gu2VDUj4y.jpeg', 21, '2021-02-28 08:03:55', '2021-02-28 08:03:55', '4.jpeg'),
(24, '/storage/Product/5/0WGVX1p0qBDrpn9eWcpe.jpg', 21, '2021-02-28 08:03:55', '2021-02-28 08:03:55', 'adidas.jpg'),
(25, '/storage/Product/5/lrQl7xQhnQY6yDkPIAjt.jpeg', 22, '2021-02-28 08:14:04', '2021-02-28 08:14:04', '2.jpeg'),
(26, '/storage/Product/5/JkX8GFmk0R6ms2QAVPG2.jpeg', 22, '2021-02-28 08:14:04', '2021-02-28 08:14:04', 'f1.jpeg'),
(27, '/storage/Product/5/2l78myTLNjCBSQG8jK5u.jpeg', 22, '2021-02-28 08:14:04', '2021-02-28 08:14:04', 'fendi.jpeg'),
(28, '/storage/Product/5/WM2jPQfytVAd2KRWGB2e.jpg', 9, '2021-02-28 08:15:28', '2021-02-28 08:15:28', '1.jpg'),
(29, '/storage/Product/5/rf8RHzDThfPSTb3DAsmW.jpg', 9, '2021-02-28 08:15:28', '2021-02-28 08:15:28', '3.jpg'),
(30, '/storage/Product/5/ATZR7P5Ifb7lwT0uHJMk.jpg', 23, '2021-02-28 08:21:00', '2021-02-28 08:21:00', '1.jpg'),
(31, '/storage/Product/5/xF5aqv3B5gpbT7nFz3hu.jpg', 23, '2021-02-28 08:21:00', '2021-02-28 08:21:00', '3.jpg'),
(32, '/storage/Product/5/2KtSJLsQMBP1KMXqLH82.jpeg', 23, '2021-02-28 08:21:00', '2021-02-28 08:21:00', 'download.jpeg'),
(33, '/storage/Product/5/tnGYxUVguaeNcdPO1VQK.jpeg', 24, '2021-02-28 08:23:40', '2021-02-28 08:23:40', '1.jpeg'),
(34, '/storage/Product/5/mlucuEnNwtCDs8jTXzrO.jpeg', 24, '2021-02-28 08:23:40', '2021-02-28 08:23:40', '2.jpeg'),
(35, '/storage/Product/5/gebfuhyXVbtB5i1VDSMt.jpeg', 24, '2021-02-28 08:23:40', '2021-02-28 08:23:40', '3.jpeg'),
(36, '/storage/Product/5/2OffwAAFw9yFNEUq2AQV.jpeg', 25, '2021-02-28 08:37:41', '2021-02-28 08:37:41', '1.jpeg'),
(37, '/storage/Product/5/m8Zo4NSkrCePVBaC5MsN.jpeg', 25, '2021-02-28 08:37:41', '2021-02-28 08:37:41', '2.jpeg'),
(38, '/storage/Product/5/FASVuCoUMAWaezPSw9Ow.jpeg', 25, '2021-02-28 08:37:41', '2021-02-28 08:37:41', '3.jpeg'),
(39, '/storage/Product/5/by15GIPjdmofW0WU6nkh.jpeg', 26, '2021-02-28 08:40:20', '2021-02-28 08:40:20', 'hhh.jpeg'),
(40, '/storage/Product/5/77ZZQ3n7NzY93rxXVArc.jpeg', 27, '2021-02-28 08:41:58', '2021-02-28 08:41:58', '4.jpeg'),
(41, '/storage/Product/5/4IfUrpOT3uJy2df3TZj2.jpeg', 28, '2021-02-28 08:43:10', '2021-02-28 08:43:10', '4.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 13, 1, '2021-02-07 23:29:59', '2021-02-07 23:29:59'),
(2, 13, 2, '2021-02-07 23:29:59', '2021-02-07 23:29:59'),
(3, 14, 3, NULL, NULL),
(4, 14, 4, NULL, NULL),
(5, 14, 5, NULL, NULL),
(9, 16, 6, '2021-02-08 00:03:31', '2021-02-08 00:03:31'),
(10, 17, 6, '2021-02-08 00:04:48', '2021-02-08 00:04:48'),
(11, 18, 7, '2021-02-08 00:36:24', '2021-02-08 00:36:24'),
(12, 15, 11, '2021-02-08 05:11:39', '2021-02-08 05:11:39'),
(13, 15, 12, '2021-02-08 05:11:39', '2021-02-08 05:11:39'),
(15, 15, 14, '2021-02-08 05:15:16', '2021-02-08 05:15:16'),
(16, 19, 15, '2021-02-20 08:15:55', '2021-02-20 08:15:55'),
(17, 19, 16, '2021-02-20 08:15:55', '2021-02-20 08:15:55'),
(18, 20, 15, '2021-02-20 08:52:18', '2021-02-20 08:52:18'),
(19, 20, 16, '2021-02-20 08:52:18', '2021-02-20 08:52:18'),
(20, 1, 17, '2021-02-20 11:48:57', '2021-02-20 11:48:57'),
(21, 1, 18, '2021-02-20 11:48:57', '2021-02-20 11:48:57'),
(22, 2, 17, '2021-02-20 11:49:17', '2021-02-20 11:49:17'),
(23, 3, 19, '2021-02-20 11:49:28', '2021-02-20 11:49:28'),
(24, 4, 20, '2021-02-20 11:49:44', '2021-02-20 11:49:44'),
(25, 5, 21, '2021-02-20 11:49:57', '2021-02-20 11:49:57'),
(26, 6, 22, '2021-02-20 11:50:17', '2021-02-20 11:50:17'),
(27, 9, 15, '2021-02-28 07:52:54', '2021-02-28 07:52:54'),
(28, 21, 23, '2021-02-28 08:03:55', '2021-02-28 08:03:55'),
(29, 22, 24, '2021-02-28 08:14:04', '2021-02-28 08:14:04'),
(30, 23, 15, '2021-02-28 08:21:00', '2021-02-28 08:21:00'),
(31, 24, 25, '2021-02-28 08:23:40', '2021-02-28 08:23:40'),
(32, 25, 26, '2021-02-28 08:37:41', '2021-02-28 08:37:41'),
(33, 26, 27, '2021-02-28 08:40:20', '2021-02-28 08:40:20'),
(34, 27, 28, '2021-02-28 08:41:58', '2021-02-28 08:41:58'),
(35, 28, 29, '2021-02-28 08:43:10', '2021-02-28 08:43:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'Customer', 'Khách hàng', NULL, '2021-03-28 23:25:57'),
(5, 'Editor', 'Người quản trị', '2021-02-15 21:53:45', '2021-03-19 04:01:45'),
(6, 'Editor1', 'Nguoi quan tri1', '2021-02-15 21:54:23', '2021-02-15 22:16:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 4, 2, NULL, NULL),
(4, 4, 4, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 6, 2, NULL, NULL),
(11, 7, 3, NULL, NULL),
(12, 10, 3, NULL, NULL),
(13, 11, 1, NULL, NULL),
(14, 11, 2, NULL, NULL),
(15, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(14, 'phone_contact', '+2 95 01 88 821', '2021-02-20 22:30:29', '2021-02-20 22:30:29', 'Text'),
(15, 'email', 'info@domain.com', '2021-02-20 22:31:23', '2021-02-20 22:31:23', 'Text'),
(16, 'facebook_link', 'https://www.facebook.com/', '2021-02-20 22:32:31', '2021-02-20 22:32:31', 'Text'),
(17, 'linkkendin_link', 'https://www.facebook.com/', '2021-02-20 22:33:05', '2021-02-20 22:33:05', 'Text'),
(18, 'footer_infomation', '<p class=\"pull-left\">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>\r\n                <p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>', '2021-02-20 22:37:11', '2021-02-20 22:37:11', 'Textarea');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'iphone 8', 'dt pro', '/storage/slider/1/9VNSOoLoehwx0Yo2gEFd.jpg', '1.jpg', '2021-02-10 08:18:02', '2021-02-10 11:01:44', '2021-02-10 11:01:44'),
(3, 'iphone 88', 'ip', '/storage/slider/1/am3cz0Cgq0we6kAdJtOF.jpg', '1.jpg', '2021-02-13 07:52:59', '2021-02-13 07:53:03', '2021-02-13 07:53:03'),
(4, 'iphone 899', 'vhk', '/storage/slider/1/CpaDN4yjv0W5E59ml0hr.jpg', '1.jpg', '2021-02-13 08:06:23', '2021-02-13 08:06:26', '2021-02-13 08:06:26'),
(5, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/5/e3Xan3GDcfmeh3hb38OZ.jpg', 'girl3.jpg', '2021-02-19 07:23:30', '2021-02-19 07:23:30', NULL),
(6, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/5/e3Xan3GDcfmeh3hb38OZ.jpg', 'girl3.jpg', '2021-02-19 07:23:30', '2021-02-19 07:23:30', NULL),
(7, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/5/e3Xan3GDcfmeh3hb38OZ.jpg', 'girl3.jpg', '2021-02-19 07:23:30', '2021-02-19 07:23:30', NULL),
(8, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/5/e3Xan3GDcfmeh3hb38OZ.jpg', 'girl3.jpg', '2021-02-19 07:23:30', '2021-02-19 07:23:30', NULL),
(9, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/5/e3Xan3GDcfmeh3hb38OZ.jpg', 'girl3.jpg', '2021-02-19 07:23:30', '2021-02-19 07:23:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iphone 4', '2021-02-07 23:29:59', '2021-02-07 23:29:59'),
(2, 'iphone cua toi', '2021-02-07 23:29:59', '2021-02-07 23:29:59'),
(3, 'iphone 5', '2021-02-07 23:47:20', '2021-02-07 23:47:20'),
(4, 'iphone 5 pro', '2021-02-07 23:47:20', '2021-02-07 23:47:20'),
(5, 'iphone hot nhat thi truong', '2021-02-07 23:47:20', '2021-02-07 23:47:20'),
(6, 'ddd', '2021-02-08 00:03:31', '2021-02-08 00:03:31'),
(7, 'ddddd', '2021-02-08 00:36:24', '2021-02-08 00:36:24'),
(11, '3', '2021-02-08 05:11:39', '2021-02-08 05:11:39'),
(12, '4', '2021-02-08 05:11:39', '2021-02-08 05:11:39'),
(13, '5', '2021-02-08 05:11:39', '2021-02-08 05:11:39'),
(14, 'test1234', '2021-02-08 05:15:16', '2021-02-08 05:15:16'),
(15, 'nike', '2021-02-20 08:15:55', '2021-02-20 08:15:55'),
(16, 'the thao', '2021-02-20 08:15:55', '2021-02-20 08:15:55'),
(17, 'man', '2021-02-20 11:48:57', '2021-02-20 11:48:57'),
(18, 'vip', '2021-02-20 11:48:57', '2021-02-20 11:48:57'),
(19, 'bro', '2021-02-20 11:49:28', '2021-02-20 11:49:28'),
(20, 'haha', '2021-02-20 11:49:44', '2021-02-20 11:49:44'),
(21, 'nothing', '2021-02-20 11:49:57', '2021-02-20 11:49:57'),
(22, 'jjj', '2021-02-20 11:50:17', '2021-02-20 11:50:17'),
(23, 'adidas', '2021-02-28 08:03:55', '2021-02-28 08:03:55'),
(24, 'fendi', '2021-02-28 08:14:04', '2021-02-28 08:14:04'),
(25, 'guess', '2021-02-28 08:23:40', '2021-02-28 08:23:40'),
(26, 'gues', '2021-02-28 08:37:41', '2021-02-28 08:37:41'),
(27, 'valne', '2021-02-28 08:40:20', '2021-02-28 08:40:20'),
(28, 'ff', '2021-02-28 08:41:58', '2021-02-28 08:41:58'),
(29, 'gu', '2021-02-28 08:43:10', '2021-02-28 08:43:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'boide03@gmail.com', NULL, '$2y$10$bhL37oO2.c4bV1XXLxzF0OuInOF//GezY7kXy7oOaASTzSzbgymhW', 'IwkwAT664BaDnpDIVliIuJMCF0963uvvnsl2YONUeWF5NndebYdFJeP7B4GL', NULL, '2021-02-15 06:02:47', '2021-02-15 06:02:47'),
(3, 'Võ Thành Duy', 'boide031@gmail.com.vn', NULL, '$2y$10$JJWgznKtoCZK.Q7DdjnjDO.HPEBlyIdsatZcibB4LIQuHtQYjTMqC', NULL, '2021-02-15 03:29:06', '2021-03-28 23:47:43', NULL),
(4, 'nguyenvuong1', 'boide0322@gmail.com', NULL, '$2y$10$iuj4WONKPvDs5/45M2Kcmepv6eOVry3v0dX15eughQ/aiqdKkDLPO', NULL, '2021-02-15 03:34:26', '2021-02-27 01:30:52', '2021-02-27 01:30:52'),
(5, 'Nguyễn Quốc Vương', '123@gmail.com', NULL, '$2y$10$hOC..fsKUI0iyNbIOHH5bO9rq9NRgYVeScACsdylMLKm2XgyyO68y', NULL, '2021-02-17 20:57:14', '2021-03-19 04:04:04', NULL),
(6, 'Hoàng Ngọc Anh', 'guest@gmail.com', NULL, '$2y$10$I2HK8G/tMsooOUvRr2Lwye.7ZPrWS3ovPHAj/GArw0L3W2qCXkYZ.', NULL, '2021-02-18 11:27:19', '2021-03-19 04:04:19', NULL),
(7, 'Test', 'boide03@gmail.com.vn', NULL, '$2y$10$TC3.UdRrobtPadUdLsjvteWpkAIAQnlEc5Khjf2aUqez2i.LFlsu.', NULL, '2021-02-27 01:37:02', '2021-02-27 01:37:33', '2021-02-27 01:37:33'),
(10, 'test', '13', NULL, '$2y$10$/IbLu5cxqd4cSvCcOZ9qMuhIgzYhz8mHQHQsd/BHw/39QCp7ZRvL.', NULL, '2021-02-27 03:09:20', '2021-02-27 03:11:01', '2021-02-27 03:11:01'),
(11, 'Vi Văn Phúc', 'teo@gmail.com', NULL, '$2y$10$kI8kf4PH6ALER.KVgcqhzeWMCtk/Pf/2JnGy0Hm.UdcR7UfTQSbGe', NULL, '2021-03-09 04:39:45', '2021-03-19 04:04:33', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
