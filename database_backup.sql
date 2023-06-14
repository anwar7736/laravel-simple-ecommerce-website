-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2023 at 04:55 AM
-- Server version: 10.6.11-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft_demo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `speech` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `page_desc` varchar(255) NOT NULL,
  `slider_img_one` varchar(255) DEFAULT NULL,
  `slider_img_two` varchar(255) DEFAULT NULL,
  `slider_img_three` varchar(255) DEFAULT NULL,
  `slider_caption_one` varchar(255) NOT NULL,
  `slider_caption_two` varchar(255) NOT NULL,
  `slider_caption_three` varchar(255) NOT NULL,
  `title_one` varchar(255) NOT NULL,
  `title_two` varchar(255) NOT NULL,
  `desc_one` varchar(255) NOT NULL,
  `desc_two` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `cover_image`, `page_title`, `sub_title`, `speech`, `signature`, `page_desc`, `slider_img_one`, `slider_img_two`, `slider_img_three`, `slider_caption_one`, `slider_caption_two`, `slider_caption_three`, `title_one`, `title_two`, `desc_one`, `desc_two`, `video`, `site_name`, `site_url`, `created_at`, `updated_at`) VALUES
(1, '0906_hp_lux_takeover_c06_img1666683720.jpg', 'About Us', 'Read More About Us', '“What I do is about living the best life you can and enjoying the fullness of the life around you. From what you wear to the way you live to the way you love.”', 'signature1666683720.svg', 'Ralph Lauren Corporation (NYSE:RL) is a global leader in the design, marketing and distribution of premium lifestyle products in five categories: apparel, accessories, home, fragrances, and hospitality. For more than 50 years, Ralph Lauren\'s reputation an', 'https://fabbystitch.com/frontend/img/0823_hp_c07_img.jpg', 'https://fabbystitch.com/frontend/img/0906_hp_lux_takeover_c06_img.jpg', 'https://fabbystitch.com/frontend/img/0906_hp_lux_takeover_c02_img.jpg', 'Mirpur, Dhaka\r\n\r\n\r\n', 'Paltan, Dhaka\r\n\r\n\r\n', 'Mohammadpur, Dhaka\r\n\r\n\r\n', 'Our Culture', 'Philanthropy', 'Ralph Lauren is an entrepreneurial, creative business that is built upon a foundation of strong, collaborative relationships. We are a world-class team that has been creating, elevating and celebrating authentic American design and culture since 1967. As', 'We have a strong commitment to giving back to the communities where we live and work. Over the years we have led a variety of philanthropic initiatives supporting programs for cancer care and prevention, education, volunteerism, and the environment.\r\nRalp', 'zxvyS_3tmHM', 'Fabby Stitch', 'Fabby Stitch', '2022-10-24 06:12:58', '2022-10-25 05:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test sdfgbvregb erre gher', '0906_hp_lux_takeover_c06_img1666696656.jpg', '2022-10-25 09:17:36', '2022-10-25 09:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` tinyint(3) DEFAULT NULL,
  `parent_id` tinyint(4) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type_id`, `parent_id`, `name`, `url`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(2, NULL, NULL, 'watch', 'watch', '2022-12-17 21:36:45', '2023-02-15 00:25:28', '61awFXzj8RL._SL1000_1676399128.jpg', 1),
(3, NULL, NULL, 'Mobile Phone', 'mobile-phone', '2022-12-17 21:39:12', '2023-03-23 13:06:08', 'mobile cat16713529281679555168.png', 1),
(4, NULL, NULL, 'Laptop', 'Laptop', '2022-12-17 21:39:58', '2023-03-23 13:05:57', 'laptop cat16713529091679555157.png', 1),
(5, NULL, NULL, 'Kitchen', 'kitchen', '2022-12-17 21:41:53', '2023-03-23 13:05:46', 'kitchen cat16713528941679555146.png', 1),
(6, NULL, NULL, 'Health care', 'health-care', '2022-12-17 21:44:08', '2023-03-23 13:05:29', 'health16713528621679555129.png', 1),
(9, NULL, NULL, 'Grocery', 'Grocery', '2022-12-18 16:59:16', '2023-03-23 13:05:18', 'Grocery1679555118.png', 1),
(10, NULL, NULL, 'Fashion', 'fashion', '2022-12-18 16:59:35', '2023-03-23 13:00:15', 'fashion1679554815.png', 1),
(11, NULL, NULL, 'Cosmetics', 'cosmetics', '2022-12-18 17:00:02', '2023-03-23 12:56:47', 'cosmetics1679554607.jpg', 1),
(14, NULL, 2, 'mens watch', 'mens watch', '2023-02-08 15:31:36', '2023-02-08 15:31:36', NULL, NULL),
(15, NULL, NULL, 'Hand Bag', 'Hand Bag', '2023-02-18 03:04:20', '2023-02-18 03:07:09', 'bg pink1676668029.jpg', NULL),
(18, NULL, NULL, 'Gadgets', 'Gadgets', '2023-02-27 17:28:37', '2023-05-19 18:20:48', 'il_1140xN.4108445418_d1om1684498848.jpg', NULL),
(19, NULL, NULL, 'tShirt', 'tshirt', '2023-03-18 22:31:24', '2023-05-19 18:20:40', 'ST2000-OBLU1684498840.jpg', NULL),
(20, NULL, NULL, 'Camping tent', 'Camping tent', '2023-03-18 22:32:19', '2023-05-19 18:20:17', '4-6-Person-Large-Family-Camping-Tents-Waterproof-Double-Layer-Outdoor-Party-Two-Bedrooms-Windproof-4.jpg_Q90.jpg_1684498817.webp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Default', '000', NULL, '2022-12-17 07:21:06', '2022-12-17 07:21:06'),
(2, 'red', '#FF0000', NULL, '2023-02-07 17:23:27', '2023-02-07 17:23:27'),
(3, 'Black', '#000000', NULL, '2023-02-07 17:23:42', '2023-02-07 17:23:42'),
(4, 'Blue', '0', NULL, '2023-02-19 17:37:49', '2023-02-19 17:37:49'),
(5, 'Pink', '0', NULL, '2023-02-19 17:37:56', '2023-02-19 17:37:56'),
(6, 'Purple', '0', NULL, '2023-02-19 17:38:05', '2023-02-19 21:01:31'),
(7, 'Orange', '0', NULL, '2023-02-19 17:38:20', '2023-02-19 17:38:20'),
(8, 'Chocolate', '0', NULL, '2023-02-19 20:23:15', '2023-02-19 20:23:15'),
(9, 'White', '0', NULL, '2023-02-19 20:24:03', '2023-02-19 20:24:03'),
(10, 'Olive', '0', NULL, '2023-02-19 20:54:35', '2023-02-19 20:54:35'),
(11, 'Ash', '0', NULL, '2023-02-19 21:00:52', '2023-02-19 21:00:52'),
(12, 'Brown', '0', NULL, '2023-02-19 21:01:02', '2023-02-19 21:01:02'),
(13, 'Navy Blue', '0', NULL, '2023-02-19 21:08:50', '2023-02-19 21:08:50'),
(14, 'Sky Blue', '0', NULL, '2023-02-19 21:09:01', '2023-02-19 21:09:01'),
(15, 'Lemon', '0', NULL, '2023-02-19 21:18:37', '2023-02-19 21:18:37'),
(16, 'Merun', '0', NULL, '2023-02-19 21:38:02', '2023-02-19 21:38:02'),
(17, 'Green', '0', NULL, '2023-02-19 22:53:08', '2023-02-19 22:53:08'),
(18, 'Nude', '0', NULL, '2023-02-19 22:58:00', '2023-02-19 22:58:00'),
(19, 'Golden', '0', NULL, '2023-02-19 23:07:02', '2023-02-19 23:07:02'),
(20, 'Coffee', '0', NULL, '2023-02-19 23:15:14', '2023-02-19 23:15:14'),
(21, 'Blue', '4', NULL, '2023-05-27 23:28:57', '2023-05-27 23:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_products`
--

CREATE TABLE `combo_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `combo_id` smallint(6) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `size_id` tinyint(4) NOT NULL,
  `quantity` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Arif Hossain', '0156456456', 'tutul@faanush.com', 'test', '2022-11-24 16:53:17', '2022-11-24 16:53:17'),
(2, 'Arsenio Cline', '01310186926', 'hymov@mailinator.com', 'Dolores dolore nobis', '2023-01-29 16:02:27', '2023-01-29 16:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `discount_type` varchar(40) DEFAULT NULL,
  `minimum_amount` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `code`, `amount`, `start`, `end`, `status`, `discount_type`, `minimum_amount`, `created_at`, `updated_at`) VALUES
(2, 'www1', '100.00', '2022-12-16', '2022-12-16', NULL, 'fixed', '1000.00', '2022-12-16 16:41:25', '2022-12-16 21:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Redx', '0156456456', 'client@client.com', 'dhaka', '2022-12-17 07:59:45', '2022-12-17 07:59:45'),
(2, 'Pathao', NULL, NULL, 'Mohammadpur, Dhaka', '2023-05-23 14:17:12', '2023-05-23 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `title`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ঢাকার ভিতর', '60.00', 1, NULL, '2023-06-12 14:58:16'),
(3, 'ঢাকার বাহির', '150.00', 1, '0000-00-00 00:00:00', '2022-12-16 15:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_section_images`
--

CREATE TABLE `home_section_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `section` int(2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_for_small` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_section_images`
--

INSERT INTO `home_section_images` (`id`, `title`, `text`, `image`, `mobile_image`, `section`, `link`, `is_for_small`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'best offer1680701109.jpg', 'best offer1680701109.jpg', 2, 'discount-products', NULL, '2023-01-03 19:32:30', '2023-04-05 19:25:09'),
(3, NULL, NULL, 'new arrival1680701307.jpg', 'new arrival1680701307.jpg', 1, 'products-list', 1, '2023-04-05 19:23:47', '2023-04-05 19:28:27'),
(4, NULL, NULL, 'rrr1681055929.jpg', 'rrr1681055929.jpg', 3, 'products-list', NULL, '2023-04-05 19:24:18', '2023-04-09 21:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tracking_code` text DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `recommend_num` int(11) DEFAULT NULL,
  `discount_num` int(11) DEFAULT NULL,
  `newarrival_num` int(11) DEFAULT NULL,
  `bkash` tinyint(4) DEFAULT NULL,
  `bkash_number` varchar(100) DEFAULT NULL,
  `nogod` tinyint(4) DEFAULT NULL,
  `nogod_number` varchar(100) NOT NULL,
  `rocket` tinyint(4) DEFAULT NULL,
  `rocket_number` varchar(100) DEFAULT NULL,
  `paypal` tinyint(4) DEFAULT NULL,
  `paypal_account` varchar(100) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_account` varchar(100) DEFAULT NULL,
  `supp_num1` varchar(20) DEFAULT NULL,
  `supp_num2` varchar(20) DEFAULT NULL,
  `supp_num3` varchar(20) DEFAULT NULL,
  `number_visibility` int(11) DEFAULT NULL,
  `coupon_visibility` tinyint(4) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `redx_api_base_url` varchar(255) DEFAULT NULL,
  `redx_api_access_token` varchar(1000) DEFAULT NULL,
  `pathao_api_base_url` varchar(255) DEFAULT NULL,
  `pathao_api_access_token` varchar(1500) DEFAULT NULL,
  `pathao_store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `site_name`, `site_logo`, `owner_phone`, `owner_email`, `address`, `tracking_code`, `copyright`, `facebook`, `instagram`, `youtube`, `recommend_num`, `discount_num`, `newarrival_num`, `bkash`, `bkash_number`, `nogod`, `nogod_number`, `rocket`, `rocket_number`, `paypal`, `paypal_account`, `stripe`, `stripe_account`, `supp_num1`, `supp_num2`, `supp_num3`, `number_visibility`, `coupon_visibility`, `currency`, `redx_api_base_url`, `redx_api_access_token`, `pathao_api_base_url`, `pathao_api_access_token`, `pathao_store_id`) VALUES
(1, 'Soft IT Global Demo', '680927051.png', '01615597820', 'softitglobal@gmail.com', 'Mohammadpur', NULL, '© 2022. All rights reserved by Softitglobal & Developed By', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 12, 12, 48, 1, '01615597820', 0, '01615597820', 0, '01615597820', 0, 'softitglobal@gmail.com', 0, 'admin@gmail.com', '01700000000', '01700000001', '01700000002', 3, 0, 'BDT', 'https://sandbox.redx.com.bd/v1.0.0-beta', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI3Nzc2MjAiLCJpYXQiOjE2NzI4MTgyMDIsImlzcyI6IkVyeEZSY2VuemNOMkZrcmdyYXBUM1p6ZXN4emx2NnBOIiwic2hvcF9pZCI6Nzc3NjIwLCJ1c2VyX2lkIjoxNjQzNDY0fQ.1PO9zwZ-Wgy7bgzMfJ414EiEdqVCnSDJoodNXe1NNOU', 'https://hermes-api.p-stageenv.xyz', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjM2NWUyY2M3YjIxYzNhYTM0ZWFmM2Y3ZDY3OGM3ZDIxY2NkMjM4MjZhZjdlNGI2YzZiYTAwNTAyNTI1MGU3MTgwYTE2Mjk0ZmQwMGE1OTVhIn0.eyJhdWQiOiIyNjciLCJqdGkiOiIzNjVlMmNjN2IyMWMzYWEzNGVhZjNmN2Q2NzhjN2QyMWNjZDIzODI2YWY3ZTRiNmM2YmEwMDUwMjUyNTBlNzE4MGExNjI5NGZkMDBhNTk1YSIsImlhdCI6MTY4NDkxNTYzMCwibmJmIjoxNjg0OTE1NjMwLCJleHAiOjE2ODUzNDc2MzAsInN1YiI6IjM1MiIsInNjb3BlcyI6W119.jhAAwQOiL9It1If5KqCDqEXNfFnNal559166AQC782OwHgQMcysxt46-uUPfPViko_coZjD4MqXZZHc6CaVznfxU-6GTC4Bi-OTjTowUfGgJOi0PYXtxhn5fSxU_1_aFazvXaAlh2Css5H7oz_KH2zSZTpW42_yQzHK-d3UCcfWPuYO-0cYEWlfbvD8hA8GZVOHhz8e2k6Kn702GERWh251PyBsHLheCLo5g07l7d3KB6Hgd9KYDjPEeOEjJn_FIewVp8mJaa4a39CgCYlnDwujKfq2B8KUBpKkTJ75tRxtZiQnZNv4dK2lDtAAZnLY_UPgGSU1yLwZWXft08-A0G3NvZYBY2TuMFKNZa_L4TpEPJur0JYHjfgB0z1izqMD1BIk_lfZAtubvx3a1u9OZC9jx1YgNsUdSb-yWwjkELxuRleYGvY46RkhZ-ZdbpZZRIQpfGKf4bl3tPGRXgZTjdr-kRkq7IRkxJix_0xwz8HhYxC0nohdCpUJatiulrhCWZ5m1lONjBOXg1TJmfRH07Y6e-p8Vqvs9WqbsXUONcfTpUTnyrZ-1H3fkxh4CqFzdJ7F0Smm8YSPp_mWIH4JGCK8brhC6bEpy2nZeEvWq-nlnUNDTmshignvnt0DQttU8e0c6vf_FI_HMhtk_jsMl3RX9-QsNvodGmv9UlqDgFRc', 267);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_21_061530_create_products_table', 2),
(6, '2022_09_21_105808_create_sliders_table', 3),
(7, '2022_09_21_105823_create_categories_table', 3),
(8, '2022_09_21_110337_add_title_to_sliders_table', 4),
(9, '2022_09_22_073647_add_image_to_categories_table', 5),
(10, '2022_09_27_092211_create_orders_table', 6),
(11, '2022_09_27_092410_create_order_details_table', 6),
(12, '2022_09_27_092547_create_order_payments_table', 6),
(13, '2022_09_28_152539_create_types_table', 7),
(14, '2022_09_28_152648_create_sizes_table', 7),
(15, '2022_09_28_152701_create_product_sizes_table', 8),
(16, '2022_10_13_111702_create_home_section_images_table', 9),
(17, '2022_10_14_104010_create_purchase_payments_table', 10),
(18, '2022_10_14_104112_create_purchases_table', 10),
(19, '2022_10_14_104348_create_purchase_lines_table', 10),
(20, '2022_10_14_105435_create_product_stocks_table', 10),
(21, '2022_10_14_120042_create_suppliers_table', 11),
(22, '2022_10_19_115117_create_permission_tables', 12),
(23, '2022_10_24_114941_create_about_us_table', 13),
(24, '2022_10_24_120601_create_careers_table', 13),
(25, '2022_10_25_173552_create_social_icons_table', 13),
(26, '2022_10_27_123708_create_combos_table', 14),
(27, '2022_10_27_123729_create_combo_products_table', 14),
(28, '2022_11_11_150834_create_product_images_table', 15),
(29, '2022_11_20_001912_create_colors_table', 16),
(30, '2022_11_20_002214_create_variations_table', 16),
(31, '2022_11_24_224227_create_contacts_table', 17),
(32, '2022_12_17_134049_create_couriers_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(6, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 24),
(8, 'App\\Models\\User', 836),
(8, 'App\\Models\\User', 837),
(9, 'App\\Models\\User', 77),
(9, 'App\\Models\\User', 78),
(9, 'App\\Models\\User', 872);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'due',
  `status` varchar(50) DEFAULT 'pending',
  `amount` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `final_amount` decimal(10,2) DEFAULT 0.00,
  `delivery_charge_id` tinyint(4) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT 0.00,
  `delivery_type` tinyint(4) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `courier_id` tinyint(3) DEFAULT NULL,
  `courier_tracking_id` varchar(255) DEFAULT NULL,
  `assign_user_id` mediumint(10) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `shipping_address`, `area_id`, `area_name`, `city`, `state`, `zip_code`, `first_name`, `last_name`, `mobile`, `email`, `date`, `payment_status`, `status`, `amount`, `tax`, `discount`, `final_amount`, `delivery_charge_id`, `shipping_charge`, `delivery_type`, `note`, `courier_id`, `courier_tracking_id`, `assign_user_id`, `store_id`, `weight`, `created_at`, `updated_at`) VALUES
(145, 130, '1677605144', 'Sylhet Beanibazar', NULL, NULL, NULL, NULL, NULL, 'MD. Nizam UDDIN', NULL, '01813787559', NULL, '2023-02-28', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk na', NULL, NULL, 24, NULL, NULL, '2023-02-28 23:25:44', '2023-03-02 12:03:00'),
(148, 133, '1677637838', 'Chandra, Kaliakoir, Gazipur.', NULL, NULL, NULL, NULL, NULL, 'Khandaker Rashid', NULL, '01711700065', NULL, '2023-03-01', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn,prkn', NULL, NULL, 24, NULL, NULL, '2023-03-01 08:30:38', '2023-03-06 12:49:38'),
(159, 146, '1677694083', 'Gazipur.Konabari. nosar market', NULL, NULL, NULL, NULL, NULL, 'Alif', NULL, '01908001776', NULL, '2023-03-02', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-02 00:08:03', '2023-03-06 12:53:52'),
(160, 147, '1677698548', 'Bagha,Rajshahi', NULL, NULL, NULL, NULL, NULL, 'Samir', NULL, '01766169648', NULL, '2023-03-02', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-02 01:22:28', '2023-03-07 12:14:41'),
(162, 149, '1677725560', 'মিঠামইন, কিশোরগঞ্জ।', NULL, NULL, NULL, NULL, NULL, 'শ্যামল চন্দ্র', NULL, '01711300229', NULL, '2023-03-02', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, ',bk,prkn', NULL, NULL, 24, NULL, NULL, '2023-03-02 08:52:40', '2023-03-11 12:45:54'),
(169, 156, '1677788902', 'fde', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '3456789', NULL, '2023-03-03', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-03 02:28:22', '2023-03-04 11:43:56'),
(177, 165, '1677823638', '45 new Eskaton, The Grand Terrace Flat#802, Building #A  , Dhaka', NULL, NULL, NULL, NULL, NULL, 'Adeel', NULL, '01706520392', NULL, '2023-03-03', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-03 12:07:18', '2023-03-06 11:34:00'),
(184, 172, '1677842396', 'Hemayetpur -joynabari- savar-dhaka', NULL, NULL, NULL, NULL, NULL, 'md. masum', NULL, '01700553554', NULL, '2023-03-03', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'No,nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-03 17:19:56', '2023-03-07 12:17:56'),
(185, 173, '1677845233', 'Mizmizi taltola club, siddhirganj, narayanganj', NULL, NULL, NULL, NULL, NULL, 'md kamal hossen', NULL, '01841080706', NULL, '2023-03-03', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk,prkn,bk', NULL, NULL, 24, NULL, NULL, '2023-03-03 18:07:13', '2023-03-11 12:46:15'),
(187, 175, '1677854970', 'XEN, LGED\r\nRangpur Region \r\nRangpur', NULL, NULL, NULL, NULL, NULL, 'Engr. M A Monsur Shawon', NULL, '01713011530', NULL, '2023-03-03', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-03 20:49:30', '2023-03-11 14:33:13'),
(188, 176, '1677856594', 'Bera Upazila pabna', NULL, NULL, NULL, NULL, NULL, 'Mosaddek', NULL, '01739578951', NULL, '2023-03-03', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-03 21:16:34', '2023-03-11 14:33:40'),
(189, 177, '1677862400', 'Chandra, Kaliakoir, Gazipur.', NULL, NULL, NULL, NULL, NULL, 'Khandaker Rashid', NULL, '01711700065', NULL, '2023-03-03', 'due', 'cancell', '1460.00', '0.00', '0.00', '1460.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-03 22:53:20', '2023-03-07 14:55:25'),
(198, 185, '1677871576', 'Lichutola, dewanpara, jamalpur sadar, jamalpur', NULL, NULL, NULL, NULL, NULL, 'Tauhid Ahamed', NULL, '01789002500', NULL, '2023-03-04', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk na,ring howar por phn  kete day', NULL, NULL, 24, NULL, NULL, '2023-03-04 01:26:16', '2023-03-07 14:57:21'),
(216, 201, '1677937331', 'Flat -A9 ABC Homes 28 Milkvita Road Section-7 Mirpur Dhaka Bangladesh', NULL, NULL, NULL, NULL, NULL, 'Md. Shafiqul Islam', NULL, '01811429588', NULL, '2023-03-04', 'due', 'cancell', '390.00', '0.00', '0.00', '450.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-04 19:42:11', '2023-03-05 11:08:07'),
(217, 202, '1677938926', 'Gawshia, Bhulta, Rupganj Narayanganj', NULL, NULL, NULL, NULL, NULL, 'Asif', NULL, '01777993500', NULL, '2023-03-04', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk,prkn,n', NULL, NULL, 24, NULL, NULL, '2023-03-04 20:08:46', '2023-03-13 12:32:29'),
(218, 203, '1677939052', 'Gawshia, Bhulta, Rupganj Narayanganj', NULL, NULL, NULL, NULL, NULL, 'Ashif', NULL, '01777993500', NULL, '2023-03-04', 'due', 'cancell', '570.00', '0.00', '0.00', '670.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-04 20:10:52', '2023-03-05 11:07:58'),
(231, 216, '1677991662', '466 / b Khilgoan Taltala, Dhaka -1219, Bangladesh,', NULL, NULL, NULL, NULL, NULL, 'Mithu', NULL, '01813511111', NULL, '2023-03-05', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'double order', NULL, NULL, 24, NULL, NULL, '2023-03-05 10:47:42', '2023-03-05 11:10:59'),
(236, 222, '1678037643', 'Moulovibazar sherpur', NULL, NULL, NULL, NULL, NULL, 'Riyad', NULL, '01722624572', NULL, '2023-03-05', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-05 23:34:03', '2023-03-13 12:32:48'),
(244, 230, '1678081177', 'H/n-b-58,chaybaria,ward no-09,Dhamrai municipality, Dhamrai, Dhaka.', NULL, NULL, NULL, NULL, NULL, 'ডাঃ কবির উদ্দিন', NULL, '01711198090', NULL, '2023-03-06', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'busy,nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-06 11:39:37', '2023-03-13 12:35:03'),
(248, 234, '1678098960', 'Uttara', NULL, NULL, NULL, NULL, NULL, 'Mesbah', NULL, '01720389510', NULL, '2023-03-06', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-06 16:36:00', '2023-03-13 12:35:51'),
(249, 235, '1678109282', '466/b Khilgoan Taltala Dhaka -1219.', NULL, NULL, NULL, NULL, NULL, 'Mitbu', NULL, '01813511111', NULL, '2023-03-06', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-06 19:28:02', '2023-03-07 11:41:20'),
(251, 237, '1678121399', '466/b khilgoan taltala,Dhaka-1219.', NULL, NULL, NULL, NULL, NULL, 'Mithu', NULL, '01813511111', NULL, '2023-03-06', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-06 22:49:59', '2023-03-07 11:43:32'),
(253, 239, '1678122188', 'Road 03, House 05, Sector 07, Uttara.', NULL, NULL, NULL, NULL, NULL, 'Ziaul', NULL, '01711233784', NULL, '2023-03-06', 'due', 'cancell', '1420.00', '0.00', '0.00', '1420.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-06 23:03:08', '2023-03-07 11:40:01'),
(254, 240, '1678136296', 'গাবতলি আমিন বাজার', NULL, NULL, NULL, NULL, NULL, 'ফয়সাল', NULL, '01976539977', NULL, '2023-03-07', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-07 02:58:16', '2023-03-13 12:36:02'),
(262, 248, '1678169462', 'Laksam.Bazer.Laksam.cumilla.', NULL, NULL, NULL, NULL, NULL, 'SHOHEL', NULL, '01715232024', NULL, '2023-03-07', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn,busy', NULL, NULL, 24, NULL, NULL, '2023-03-07 12:11:02', '2023-03-13 12:36:54'),
(276, 263, '1678244819', 'House # 01, Road 96, Gulshan-2, Dhaka.', NULL, NULL, NULL, NULL, NULL, 'Shahirul Sikder', NULL, '01731111111', NULL, '2023-03-08', 'due', 'cancell', '920.00', '0.00', '0.00', '920.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-08 09:06:59', '2023-03-13 11:41:27'),
(286, 273, '1678255491', 'Lakshmipur powrosova word no 1', NULL, NULL, NULL, NULL, NULL, 'Muhammad ahad', NULL, '01711060072', NULL, '2023-03-08', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk,bk', NULL, NULL, 24, NULL, NULL, '2023-03-08 12:04:51', '2023-03-16 12:06:42'),
(288, 275, '1678266725', 'Meghna Ghat Sonorga, Narayanganj', NULL, NULL, NULL, NULL, NULL, 'Mustafizur', NULL, '+8801711428304', NULL, '2023-03-08', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-08 15:12:05', '2023-03-13 12:42:51'),
(290, 277, '1678287434', 'Bulta Rupgonj Narayanganj', NULL, NULL, NULL, NULL, NULL, 'Bijoy khan', NULL, '01911880111', NULL, '2023-03-08', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn,prkn', NULL, NULL, 24, NULL, NULL, '2023-03-08 20:57:14', '2023-03-16 12:06:50'),
(308, 296, '1678386715', 'Banwari Nager,Faridpur Pabna', NULL, NULL, NULL, NULL, NULL, 'Zubayer Hasan', NULL, '01764383751', NULL, '2023-03-10', 'due', 'cancell', '1750.00', '0.00', '0.00', '1750.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-10 00:31:55', '2023-03-11 11:03:42'),
(310, 299, '1678420295', 'খান লজ , ভান্ডারিয়া- সদর\r\nভান্ডারিয়া- পিরোজপুর ।', NULL, NULL, NULL, NULL, NULL, 'দিপু খান', NULL, '01711328915', NULL, '2023-03-10', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'bk,prkn', 1, NULL, 24, NULL, NULL, '2023-03-10 09:51:35', '2023-03-16 12:07:27'),
(323, 310, '1678524874', 'Hotel Prince, Jahangir Market, D.T Road, Kadamtali, Chittagong, Bangladesh', NULL, NULL, NULL, NULL, NULL, 'Tanvir', NULL, '01313766588', NULL, '2023-03-11', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-11 14:54:34', '2023-03-16 12:09:05'),
(333, 319, '1678616466', 'Mollick Bari C N B road Barisal', NULL, NULL, NULL, NULL, NULL, 'Noman', NULL, '01775577865', NULL, '2023-03-12', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'off,off', NULL, NULL, 24, NULL, NULL, '2023-03-12 16:21:06', '2023-03-16 12:58:27'),
(339, 325, '1678639577', 'জিরানি বাজার সাভার', NULL, NULL, NULL, NULL, NULL, 'মিনহাজ', NULL, '01959944891', NULL, '2023-03-12', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-12 22:46:17', '2023-03-16 12:58:45'),
(353, 339, '1678691506', 'Kaderabad housing, r 2, h 5, Mohammad pur', NULL, NULL, NULL, NULL, NULL, 'Alli', NULL, '01971332825', NULL, '2023-03-13', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-13 13:11:46', '2023-03-13 13:31:08'),
(360, 346, '1678707237', 'Mirpur 60 fit amtola Bazar er samnee', NULL, NULL, NULL, NULL, NULL, 'Jisan', NULL, '01873958181', NULL, '2023-03-13', 'due', 'cancell', '2360.00', '0.00', '0.00', '2360.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-13 17:33:57', '2023-03-13 17:38:05'),
(363, 349, '1678714311', 'গাইবান্ধা সদর', NULL, NULL, NULL, NULL, NULL, 'আব্দুল রাজ্জাক', NULL, '01710146664', NULL, '2023-03-13', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, 'prkn', 1, NULL, 24, NULL, NULL, '2023-03-13 19:31:51', '2023-03-16 12:58:54'),
(368, 354, '1678725670', 'Post: panchashar,Village: mukterpur,Thana: munshiganj sadar,Dist: munshiganj', NULL, NULL, NULL, NULL, NULL, 'Ileus', NULL, '+8801753753451', NULL, '2023-03-13', 'due', 'cancell', '1800.00', '0.00', '0.00', '1800.00', 3, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-13 22:41:10', '2023-03-16 12:59:05'),
(371, 357, '1678731155', 'Baroipara. Ashulia.Dhaka', NULL, NULL, NULL, NULL, NULL, 'Niloy', NULL, '8801717400777', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, 'bk na', 1, NULL, 24, NULL, NULL, '2023-03-14 00:12:35', '2023-03-14 14:49:53'),
(374, 360, '1678734416', 'Mirpur 60 fit amtola Bazar', NULL, NULL, NULL, NULL, NULL, 'Jisan', NULL, '01873958181', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-14 01:06:56', '2023-03-14 15:06:24'),
(378, 364, '1678737546', 'Sherpur জেলা Sherpur সদর 2100', NULL, NULL, NULL, NULL, NULL, 'Moon', NULL, '01711233038', NULL, '2023-03-14', 'due', 'cancell', '1750.00', '0.00', '0.00', '1750.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-14 01:59:06', '2023-03-16 12:59:16'),
(380, 366, '1678738765', 'Sohan mobile galary & furniture,pukurpar,Jirabo,Ashulia, Dhaka.', NULL, NULL, NULL, NULL, NULL, 'Md Shohan', NULL, '01827756733', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, 'bk na', 1, NULL, 24, NULL, NULL, '2023-03-14 02:19:25', '2023-03-14 11:16:47'),
(383, 369, '1678758920', 'Mithamain', NULL, NULL, NULL, NULL, NULL, 'Shyamal', NULL, '01711300229', NULL, '2023-03-14', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', 1, NULL, 24, NULL, NULL, '2023-03-14 07:55:20', '2023-03-16 12:59:28'),
(384, 370, '1678760133', 'Z-51bazer bus stand road Ghazipur Sadar', NULL, NULL, NULL, NULL, NULL, 'rocky khandaker', NULL, '01705505224', NULL, '2023-03-14', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk na', 1, NULL, 24, NULL, NULL, '2023-03-14 08:15:33', '2023-03-16 12:59:37'),
(386, 372, '1678767115', 'Dhaka,house no-,road no-,', NULL, NULL, NULL, NULL, NULL, 'Bimol', NULL, '01815650286', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-14 10:11:55', '2023-03-18 11:50:09'),
(387, 373, '1678767381', 'Sayedpur koroitola,Narayanganj  sadar,Narayanganj', NULL, NULL, NULL, NULL, NULL, 'Mh Shehoron', NULL, '01670969448', NULL, '2023-03-14', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-14 10:16:21', '2023-03-18 11:50:20'),
(392, 378, '1678781658', 'ওইটা পড়ে থাকো দক্ষিণ পূর্বপাড়া নাটোর', NULL, NULL, NULL, NULL, NULL, 'Ali', NULL, '01716697058', NULL, '2023-03-14', 'due', 'cancell', '680.00', '0.00', '0.00', '780.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-14 14:14:18', '2023-03-18 14:06:09'),
(393, 379, '1678781713', 'Shariatpur sador', NULL, NULL, NULL, NULL, NULL, 'Eng. Habib', NULL, '01625823335', NULL, '2023-03-14', 'due', 'cancell', '680.00', '0.00', '0.00', '780.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-14 14:15:13', '2023-03-20 16:01:55'),
(399, 384, '1678797857', 'Airport askona bazar Shahjalal Islami Bank er nice', NULL, NULL, NULL, NULL, NULL, 'Md arif Hossain', NULL, '01719005600', NULL, '2023-03-14', 'due', 'cancell', '1760.00', '0.00', '0.00', '1760.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-14 18:44:17', '2023-03-15 11:51:15'),
(402, 388, '1678806104', 'Kaliakoir Gazipur', NULL, NULL, NULL, NULL, NULL, 'Mahbub alam', NULL, '01716329983', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-14 21:01:44', '2023-03-20 16:02:12'),
(403, 389, '1678806660', 'Meherpur sadar', NULL, NULL, NULL, NULL, NULL, 'Hachib', NULL, '01777609592', NULL, '2023-03-14', 'due', 'cancell', '1750.00', '0.00', '0.00', '1750.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-14 21:11:00', '2023-03-20 16:02:31'),
(404, 390, '1678815034', 'Ayshamosaraf market, zia soroni, Donia, kodomtoli, Dhaka 1236l', NULL, NULL, NULL, NULL, NULL, 'Kazi Mobarak', NULL, '01712185125', NULL, '2023-03-14', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-14 23:30:34', '2023-03-26 02:16:21'),
(412, 398, '1678857799', 'Nangalkot Bazar, Comilla', NULL, NULL, NULL, NULL, NULL, 'Fazal Mahmud', NULL, '01750192486', NULL, '2023-03-15', 'due', 'cancell', '1750.00', '0.00', '0.00', '1750.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-15 11:23:19', '2023-03-16 11:52:42'),
(416, 1, '1678882565', 'sgshgdsr', NULL, NULL, NULL, NULL, NULL, 'Selim', 'Khan', '01762223076', NULL, '2023-03-15', 'due', 'cancell', '1320.00', '0.00', '0.00', '1260.00', 2, '60.00', NULL, 'Note', NULL, NULL, 24, NULL, NULL, '2023-03-15 18:16:05', '2023-03-16 10:45:18'),
(418, 403, '1678883913', 'House no. 01, Road no. 10, Block- C, Bonosree,  Dhaka.', NULL, NULL, NULL, NULL, NULL, 'Ashad', NULL, '01888051539', NULL, '2023-03-15', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-15 18:38:33', '2023-03-16 11:48:51'),
(419, 404, '1678884832', 'ভালুকা নতুন বাস স্ট্যান্ড ভালুকা ময়মনসিং', NULL, NULL, NULL, NULL, NULL, 'রনি', NULL, '01865028444', NULL, '2023-03-15', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-15 18:53:52', '2023-03-20 16:02:44'),
(420, 405, '1678888453', '125 lake circus kalabagan.dhaka.', NULL, NULL, NULL, NULL, NULL, 'Mahmud', NULL, '01302612015', NULL, '2023-03-15', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-15 19:54:13', '2023-03-16 11:48:23'),
(421, 406, '1678891949', 'বগুড়া সারিয়া কান্দী', NULL, NULL, NULL, NULL, NULL, 'বনি', NULL, '01790074284', NULL, '2023-03-15', 'due', 'cancell', '1380.00', '0.00', '0.00', '1440.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-15 20:52:29', '2023-03-20 16:07:05'),
(423, 408, '1678912029', '24 North Brook Hall Road, Banglabazar. Dhaka 1100', NULL, NULL, NULL, NULL, NULL, 'Rabeya Islam lucky', NULL, '01922813263', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 02:27:09', '2023-03-18 18:47:25'),
(424, 409, '1678912540', '১২৬ নম্বর বাসা গ্রীন রোড মোস্তফার ফার্মগেট ঢাকা', NULL, NULL, NULL, NULL, NULL, 'নাজমা বেগম', NULL, '01616002265', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 02:35:40', '2023-03-18 18:47:19'),
(425, 410, '1678912560', 'গাজীপুর মহানগর, জয়দেবপুর সদর মেট্রো থানা, মধ্য ভূরুলিয়া মার্কাজ মসজিদ রোড', NULL, NULL, NULL, NULL, NULL, 'মোঃ আল আমিন খান', NULL, '01734153493', NULL, '2023-03-16', 'due', 'cancell', '1750.00', '0.00', '0.00', '1750.00', 3, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 02:36:00', '2023-03-20 16:02:54'),
(426, 411, '1678913749', 'Chowdhury villa, 78 hazaribagh,  tannery more, jigatala, dhaka 1209', NULL, NULL, NULL, NULL, NULL, 'Imran chowdhury', NULL, '01864222221', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 02:55:49', '2023-03-18 18:46:17'),
(430, 415, '1678933758', 'Tejgao,dhaka', NULL, NULL, NULL, NULL, NULL, 'Alam', NULL, '01823416330', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 08:29:18', '2023-03-20 16:03:03'),
(431, 416, '1678935335', '153/,Rangs Arcade Building,  Gulshan 2', NULL, NULL, NULL, NULL, NULL, 'Nellie', NULL, '01711837736', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 08:55:35', '2023-03-18 18:45:59'),
(436, 422, '1678943651', 'KA-32/12 Nadda, Nasrin Mintu Road, opposite Jamuna Future Park', NULL, NULL, NULL, NULL, NULL, 'Tahsiba', NULL, '01714166144', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 11:14:11', '2023-03-18 18:46:09'),
(437, 423, '1678943770', '১/২ বাবু বাজার, ঢাকা ১১০০', NULL, NULL, NULL, NULL, NULL, 'Mostafa', NULL, '01724431076', NULL, '2023-03-16', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 11:16:10', '2023-03-16 11:48:35'),
(439, 425, '1678945847', 'Mollick Bari C N B road Barisal', NULL, NULL, NULL, NULL, NULL, 'Noman', NULL, '01775577865', NULL, '2023-03-16', 'due', 'cancell', '680.00', '0.00', '0.00', '740.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 11:50:47', '2023-03-25 11:16:44'),
(440, 426, '1678947803', 'Apt 1-B, house 95, Road 6 B, Banani DOHS, Dhaka 1206', NULL, NULL, NULL, NULL, NULL, 'Mehnuma', NULL, '01732229490', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 12:23:23', '2023-03-18 18:45:48'),
(441, 428, '1678949124', 'শিবপুর কলেজ গেইট', NULL, NULL, NULL, NULL, NULL, 'মোরশেদ', NULL, '01711020325', NULL, '2023-03-16', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 12:45:24', '2023-03-16 12:50:38'),
(442, 429, '1678949598', 'Bangladesh,Dhaka,Jurain railgate.', NULL, NULL, NULL, NULL, NULL, 'Sairul', NULL, '01701980040', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 12:53:18', '2023-03-16 12:58:00'),
(444, 1, '1678949796', '689/c,boro mugbazer', NULL, NULL, NULL, NULL, NULL, 'Amirul islam', NULL, '01730405213', NULL, '2023-03-16', 'due', 'cancell', '1770.00', '0.00', '0.00', '1710.00', 2, '60.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 12:56:36', '2023-03-18 18:45:42'),
(446, 432, '1678953414', 'Incredible Fashion LTD.\r\n\r\nKarol Suricala Mouchak Kaliakoir Gazipur.', NULL, NULL, NULL, NULL, NULL, 'Shamim', NULL, '01717141633', NULL, '2023-03-16', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 13:56:54', '2023-03-16 15:14:17'),
(447, 433, '1678956121', '86/7, Begum Villa, 2nd floor, Nijhum Abasik Elaka, Zigatala, Dhaka 1209', NULL, NULL, NULL, NULL, NULL, 'Najnin Ara Keya', NULL, '01759932802', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 14:42:01', '2023-03-18 18:45:36'),
(451, 437, '1678960715', 'Bahaddarhat, Chittagong.', NULL, NULL, NULL, NULL, NULL, 'Mosharraf Hossain', NULL, '01771907980', NULL, '2023-03-16', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-16 15:58:35', '2023-03-16 16:26:45'),
(453, 439, '1678965634', 'Col Asad, H#870, R#12, Ave#02, Mirpur DOHS,', NULL, NULL, NULL, NULL, NULL, 'Asad', NULL, '01769998749', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 17:20:34', '2023-03-18 18:44:10'),
(455, 441, '1678966197', 'House 67; Road 5; sector 13; uttara Dhaka', NULL, NULL, NULL, NULL, NULL, 'Rahman', NULL, '01713048540', NULL, '2023-03-16', 'due', 'cancell', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-16 17:29:57', '2023-03-18 18:44:21'),
(479, 465, '1679120658', 'Nangalkot Cumilla', NULL, NULL, NULL, NULL, NULL, 'Mohin', NULL, '01748950650', NULL, '2023-03-18', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-18 12:24:18', '2023-03-18 12:38:30'),
(481, 467, '1679122278', '235/5, East Nakhalpara, Tejgaon, Dhaka', NULL, NULL, NULL, NULL, NULL, 'Faisal Reza', NULL, '01711378376', NULL, '2023-03-18', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-18 12:51:18', '2023-03-18 13:00:24'),
(483, 470, '1679128301', 'আউপাড়া আনারকলি আশুলিয়া সাভার ঢাকা', NULL, NULL, NULL, NULL, NULL, 'বশির', NULL, '01999998019', NULL, '2023-03-18', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-18 14:31:41', '2023-03-18 14:38:32'),
(489, 477, '1679141375', 'Jahan tower,  South chayabithi,  Joydebpur,  Gazipur', NULL, NULL, NULL, NULL, NULL, 'Md. Akram hossen', NULL, '01864508120', NULL, '2023-03-18', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', NULL, NULL, 24, NULL, NULL, '2023-03-18 18:09:35', '2023-03-19 10:44:36'),
(494, 481, '1679154719', 'শিবপুর ,,নরসিংদি', NULL, NULL, NULL, NULL, NULL, 'মাসুদ রানা', NULL, '01717300565', NULL, '2023-03-18', 'due', 'cancell', '1460.00', '0.00', '0.00', '1460.00', 3, '0.00', NULL, 'bk', 1, NULL, 24, NULL, NULL, '2023-03-18 21:51:59', '2023-03-19 11:16:55'),
(498, 485, '1679166160', 'Joypurhat', NULL, NULL, NULL, NULL, NULL, 'Rimon', NULL, '01735625145', NULL, '2023-03-19', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'bk', 1, NULL, 24, NULL, NULL, '2023-03-19 01:02:40', '2023-03-19 11:39:10'),
(501, 489, '1679172736', 'Z/25 tajmahol road mohomodpur dhaka', NULL, NULL, NULL, NULL, NULL, 'Nipu', NULL, '01715309417', NULL, '2023-03-19', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-19 02:52:16', '2023-03-20 13:29:17'),
(502, 490, '1679176363', 'Road 9/c sector 5 uttora', NULL, NULL, NULL, NULL, NULL, 'Ebrahim', NULL, '01750060200', NULL, '2023-03-19', 'due', 'cancell', '680.00', '0.00', '0.00', '740.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-19 03:52:43', '2023-03-19 11:42:12'),
(505, 493, '1679200794', 'Madaripur Sadar', NULL, NULL, NULL, NULL, NULL, 'Bokul Prodhan', NULL, '01815650286', NULL, '2023-03-19', 'due', 'cancell', '780.00', '0.00', '0.00', '780.00', 3, '0.00', NULL, 'nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-19 10:39:54', '2023-03-20 16:04:33'),
(508, 497, '1679205488', 'Col Zahid. \r\nDirector BRTC.\r\nপরিবহন ভবন। \r\n৫ম তলা, রুম-৫০২.\r\n২১, রাজউক অ্যাভিনিউ। \r\nমতিঝিল বাণিজ্যিক এলাকা।\r\n( DBBL এর পাশে,  ঢাকা স্টেডিয়াম ৩\r\nনং গেট এর পাশে)', NULL, NULL, NULL, NULL, NULL, 'Col Zahid', NULL, '01714083004', NULL, '2023-03-19', 'due', 'cancell', '680.00', '0.00', '0.00', '740.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-19 11:58:08', '2023-03-19 12:21:57'),
(511, 499, '1679212727', 'Sylhet Cantonment \r\nDis: Sylhet', NULL, NULL, NULL, NULL, NULL, 'aminul', NULL, '01711350954', NULL, '2023-03-19', 'due', 'cancell', '740.00', '0.00', '0.00', '740.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-19 13:58:47', '2023-03-20 16:06:49'),
(512, 500, '1679291733', 'বহরপুর বাজার, বালিয়াকান্দি, রাজবাড়ী', NULL, NULL, NULL, NULL, NULL, 'রাকিব', NULL, '01734500650', NULL, '2023-03-20', 'due', 'cancell', '680.00', '0.00', '0.00', '740.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-20 11:55:33', '2023-03-20 16:01:44'),
(519, 505, '1679561276', 'Temakaw fashion 808/1 west Shewrapara, Begum Rokeya Sharani, dhaka-1216', NULL, NULL, NULL, NULL, '1216', 'Limon', NULL, '01912157091', NULL, '2023-03-23', 'due', 'cancell', '810.00', '0.00', '0.00', '810.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-23 14:47:56', '2023-04-27 16:25:29'),
(523, 509, '1679619114', 'Dholbangha palasbari ghaibandha', 1, 'Test Area', NULL, NULL, NULL, 'Rayhan', NULL, '01710309833', NULL, '2023-03-24', 'due', 'on_the_way', '860.00', '0.00', '0.00', '860.00', 2, '0.00', NULL, 'prkn', 1, '20A316MOG0DI', 24, NULL, NULL, '2023-03-24 06:51:54', '2023-05-23 14:36:10'),
(536, 523, '1679715594', 'ঢাকা মোহাম্মাদপুর বুদ্ধিজিবি', NULL, NULL, NULL, NULL, NULL, 'md Alamin islam', NULL, '01782310979', NULL, '2023-03-25', 'due', 'cancell', '710.00', '0.00', '0.00', '710.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 09:39:54', '2023-03-25 10:37:38'),
(537, 524, '1679720336', '6/6, Santibag, Malibag, Dhaka 1217', NULL, NULL, NULL, NULL, NULL, 'Zahiurul', NULL, '01757121888', NULL, '2023-03-25', 'due', 'cancell', '710.00', '0.00', '0.00', '710.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-25 10:58:56', '2023-03-25 11:06:26'),
(548, 533, '1679761942', 'নান্দাইল উপজেলা পরিষদ', NULL, NULL, NULL, NULL, NULL, 'Rabbi', NULL, '01311471750', NULL, '2023-03-25', 'due', 'cancell', '2130.00', '0.00', '0.00', '2130.00', 2, '0.00', NULL, 'double order', NULL, NULL, 24, NULL, NULL, '2023-03-25 22:32:22', '2023-03-26 14:20:16'),
(552, 538, '1679762847', 'মুল্লারহাট', NULL, NULL, NULL, NULL, NULL, 'শেখ রাতুল', NULL, '01869973867', NULL, '2023-03-25', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, 'order ar kotha sune phn kete day', NULL, NULL, 24, NULL, NULL, '2023-03-25 22:47:27', '2023-03-26 15:56:56'),
(553, 539, '1679763091', 'Sahabgnj, Atrai, naogaon', NULL, NULL, NULL, NULL, NULL, 'Moni', NULL, '01752851180', NULL, '2023-03-25', 'due', 'cancell', '890.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-25 22:51:31', '2023-03-27 12:44:13'),
(559, 545, '1679763867', 'Jela...Kurigram thana nageswri...post beparir hut', NULL, NULL, NULL, NULL, NULL, 'Sojib', NULL, '01710674225', NULL, '2023-03-25', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 23:04:27', '2023-03-26 16:05:58'),
(560, 546, '1679763946', 'কুরিয়ার চার্জ ফ্রি হবে কি। যদি হয় তাহলে নিব।সিটি প্যালেছ ফ্লাট নং ৬০৬, ১৬ নং হাজি মহসিন রোড খুলনা সদর', NULL, NULL, NULL, NULL, NULL, 'রাজিউর রহমান', NULL, '01711251371', NULL, '2023-03-25', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 23:05:46', '2023-03-26 16:06:43'),
(566, 552, '1679764787', 'Panchagarh sodor theke 8km \r\nKalaybari moajid', NULL, NULL, NULL, NULL, NULL, 'Siam', NULL, '01970064450', NULL, '2023-03-25', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 23:19:47', '2023-03-26 16:19:29'),
(572, 559, '1679765512', 'Tangail Mirzapur Bashtoil Bazar Satata digital clinic & diagnostic center', NULL, NULL, NULL, NULL, NULL, 'Dr.Minhaz uddin ( tarek)', NULL, '01711931554', NULL, '2023-03-25', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 23:31:52', '2023-03-26 16:22:48'),
(574, 561, '1679765622', 'Brahmanbaria.. Sador', NULL, NULL, NULL, NULL, NULL, 'Nayem', NULL, '01767974397', NULL, '2023-03-25', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-25 23:33:42', '2023-03-27 10:49:49'),
(576, 563, '1679766273', 'Phulpur, Mymensingh', NULL, NULL, NULL, NULL, NULL, 'Tarek uzzaman', NULL, '01713879280', NULL, '2023-03-25', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, 'pore janabe', 1, NULL, 24, NULL, NULL, '2023-03-25 23:44:33', '2023-03-27 12:01:17'),
(585, 572, '1679768130', 'জেলা ও দায়রা জজ আদালত, সিলেট', NULL, NULL, NULL, NULL, NULL, 'tawhid liton', NULL, '88001718978970', NULL, '2023-03-26', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, 'nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-26 00:15:30', '2023-03-26 15:29:25'),
(596, 583, '1679774408', 'West pir moholla. house NO. 138/7 Amborkana Sylhet', NULL, NULL, NULL, NULL, NULL, 'Ali Hussain', NULL, '01679666284', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 02:00:08', '2023-03-26 14:34:59'),
(599, 586, '1679777372', 'Bhuapur Tangail', NULL, NULL, NULL, NULL, NULL, 'Mizan', NULL, '01713988841', NULL, '2023-03-26', 'due', 'cancell', '1200.00', '0.00', '0.00', '1200.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 02:49:32', '2023-03-26 14:28:02'),
(617, 605, '1679809049', 'Jela Kurigram.. Upozela rajibpur', NULL, NULL, NULL, NULL, NULL, 'Sahadat', NULL, '01609221812', NULL, '2023-03-26', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, 'nibe na', NULL, NULL, 24, NULL, NULL, '2023-03-26 11:37:29', '2023-03-26 13:34:24'),
(620, 608, '1679809776', 'sad Udan Ke Samne', NULL, NULL, NULL, NULL, NULL, 'Mdmonirkhan', NULL, '01799695769', NULL, '2023-03-26', 'due', 'cancell', '1440.00', '0.00', '0.00', '1440.00', 2, '0.00', NULL, 'prkn', NULL, NULL, 24, NULL, NULL, '2023-03-26 11:49:36', '2023-03-26 13:11:03'),
(627, 615, '1679811803', 'Sylhet, bishwanath , kajanshi', NULL, NULL, NULL, NULL, NULL, 'hussain', NULL, '01772598802', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, '12 disit number', NULL, NULL, 24, NULL, NULL, '2023-03-26 12:23:23', '2023-03-26 13:02:27'),
(645, 636, '1679822462', 'মিরসরা চট্টগ্রাম', NULL, NULL, NULL, NULL, NULL, 'জিহাদ', NULL, '01773197509', NULL, '2023-03-26', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 15:21:02', '2023-03-27 10:59:26'),
(654, 645, '1679824028', 'শ্যামপাড়া,ছাতক, সুনামগঞ্জ', NULL, NULL, NULL, NULL, NULL, 'Mahin', NULL, '01889471936', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 15:47:08', '2023-03-27 11:43:19'),
(655, 646, '1679824057', 'Mymensingh city', NULL, NULL, NULL, NULL, NULL, 'Nh shakil', NULL, '01825819162', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 15:47:37', '2023-03-27 12:16:07'),
(662, 653, '1679826288', 'Chandipur,kurukgachi,damurhuda,chuadanga', NULL, NULL, NULL, NULL, NULL, 'Bappy', NULL, '01326700053', NULL, '2023-03-26', 'due', 'cancell', '650.00', '0.00', '0.00', '750.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 16:24:48', '2023-03-27 12:07:40'),
(663, 654, '1679827304', 'Mymensingh Sadar', NULL, NULL, NULL, NULL, NULL, 'Alamgir', NULL, '01925643903', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 16:41:44', '2023-03-27 12:07:27'),
(664, 655, '1679827805', 'দত্ত বাড়ি,আবহাওয়া অফিস রোড় পাকার মাথা, ভোলা সদর, ভোলা।', NULL, NULL, NULL, NULL, NULL, 'Depto', NULL, '01868212169', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 16:50:05', '2023-03-27 12:09:35'),
(665, 656, '1679830896', 'আমতলী একে স্কুল চৌরাস্তা,borguna', NULL, NULL, NULL, NULL, NULL, 'Jahidul Islam', NULL, '01755045201', NULL, '2023-03-26', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-26 17:41:36', '2023-03-27 12:12:18'),
(666, 657, '1679831080', 'Feni, razapur, korishmunshi bazar', NULL, NULL, NULL, NULL, NULL, 'Nobi', NULL, '01976857446', NULL, '2023-03-26', 'due', 'cancell', '790.00', '0.00', '0.00', '790.00', 3, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-26 17:44:40', '2023-03-27 12:15:32'),
(672, 664, '1679835723', 'Rohimanagar Shahjalal Sopping Complex.  Kachua,Chandpur', NULL, NULL, NULL, NULL, NULL, 'Md Fahim', NULL, '01638856761', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 19:02:03', '2023-03-27 12:34:16'),
(678, 671, '1679837646', 'Sahabgnj, Atrai, naogaon', NULL, NULL, NULL, NULL, NULL, 'Moni', NULL, '01752851180', NULL, '2023-03-26', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 19:34:06', '2023-03-27 12:43:42'),
(679, 672, '1679837873', 'Thana:Rajibpur\r\nZilla:Kurigram', NULL, NULL, NULL, NULL, NULL, 'Md.Monowar', NULL, '01920967946', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 19:37:53', '2023-03-26 19:37:53'),
(680, 673, '1679838589', 'Airport road Cox\'s Bazar', NULL, NULL, NULL, NULL, NULL, 'Moin uddin', NULL, '01611171272', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 19:49:49', '2023-03-26 19:49:49'),
(681, 675, '1679839666', 'Comilla,Chouddagram', NULL, NULL, NULL, NULL, NULL, 'Balayet hossain', NULL, '01830163648', NULL, '2023-03-26', 'due', 'cancell', '1380.00', '0.00', '0.00', '1480.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 20:07:46', '2023-03-26 20:07:46'),
(686, 680, '1679841980', 'কুমিল্লা কিষোয়ান', NULL, NULL, NULL, NULL, NULL, 'জাহেদুল ইসলাম', NULL, '01972682102', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 20:46:20', '2023-03-26 20:46:20'),
(690, 684, '1679843167', 'খানসামা পাকের হাট', NULL, NULL, NULL, NULL, NULL, 'ইমরান ইসলাম', NULL, '01309456426', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 21:06:07', '2023-03-26 21:06:07'),
(691, 685, '1679843371', 'Ishwardi pabna', NULL, NULL, NULL, NULL, NULL, 'Shuvo', NULL, '01785253720', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 21:09:31', '2023-03-26 21:09:31'),
(698, 693, '1679847080', 'Sikshon', NULL, NULL, NULL, NULL, NULL, 'Surjo', NULL, '01877008312', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 22:11:20', '2023-03-26 22:11:20'),
(700, 695, '1679847206', 'Joleshoritola,Bogura', NULL, NULL, NULL, NULL, NULL, 'Rownak jalan', NULL, '01837296243', NULL, '2023-03-26', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 22:13:26', '2023-03-26 22:13:26'),
(701, 696, '1679847498', 'Bhaluka, Mymensingh', NULL, NULL, NULL, NULL, NULL, 'Adnan', NULL, '01874729843', NULL, '2023-03-26', 'due', 'cancell', '650.00', '0.00', '0.00', '710.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 22:18:18', '2023-03-26 22:18:18'),
(703, 698, '1679847968', 'Tapon chakma', NULL, NULL, NULL, NULL, NULL, 'Tapon chakma', NULL, '01609473878', NULL, '2023-03-26', 'due', 'cancell', '1380.00', '0.00', '0.00', '1480.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 22:26:08', '2023-03-26 22:26:08'),
(709, 706, '1679849216', '৫৪, মিনিতা প্লাজা, নিউ এলিফ্যান্ট রোড, ঢাকা- ১২০৫\r\nদোকান নং- ০৩\r\nটাইম গার্ডেন।', NULL, NULL, NULL, NULL, NULL, 'সিফাত', NULL, '01770739529', NULL, '2023-03-26', 'due', 'cancell', '650.00', '0.00', '0.00', '710.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-26 22:46:56', '2023-03-27 11:33:20'),
(713, 712, '1679854593', 'South kamlapur', NULL, NULL, NULL, NULL, NULL, 'Litil', NULL, '01369693216', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 00:16:33', '2023-03-27 13:30:08'),
(716, 716, '1679854834', 'Jhenaidah', NULL, NULL, NULL, NULL, NULL, 'Noyon', NULL, '01317586002', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 00:20:34', '2023-03-27 00:20:34'),
(717, 717, '1679854851', 'Anulia,assasuni,Satkhira', NULL, NULL, NULL, NULL, NULL, 'Al', NULL, '01911288885', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 00:20:51', '2023-03-27 13:34:39'),
(718, 718, '1679854930', '-গ্রাম : বুড়িচং \r\n-থানা: বুড়িচং\r\n-পো: বু্ড়িচং \r\n-জেলা : কুমিল্লা', NULL, NULL, NULL, NULL, NULL, 'সজল চন্দ্র', NULL, '01638807756', NULL, '2023-03-27', 'due', 'cancell', '750.00', '0.00', '0.00', '750.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-27 00:22:10', '2023-03-27 13:38:17'),
(719, 719, '1679855195', 'Polash treders, college mor, Rohanpur, gomostapur, Chapainawabganj', NULL, NULL, NULL, NULL, NULL, 'HARUN', NULL, '01722856629', NULL, '2023-03-27', 'due', 'cancell', '890.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-03-27 00:26:35', '2023-03-27 13:41:59'),
(725, 726, '1679856552', 'বিভাগঃ রংপুর, \r\nজেলাঃ গাইবান্ধা, \r\nথানাঃ সুন্দরগঞ্জ,', NULL, NULL, NULL, NULL, NULL, 'Sahid', NULL, '01728249006', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 00:49:12', '2023-03-27 00:49:12'),
(730, 732, '1679859815', 'Adabar-2 road', NULL, NULL, NULL, NULL, NULL, 'Saddam', NULL, '01631179760', NULL, '2023-03-27', 'due', 'cancell', '1380.00', '0.00', '0.00', '1440.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 01:43:35', '2023-03-27 01:43:35'),
(739, 741, '1679863095', 'পাবনা সদর উপজেলা', NULL, NULL, NULL, NULL, NULL, 'সিরাজুল ইসলাম', NULL, '01743877338', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 02:38:15', '2023-03-27 02:38:15'),
(741, 743, '1679864663', 'Beanibazar, sylhet.', NULL, NULL, NULL, NULL, NULL, 'Mamunur Rashid', NULL, '01737865303', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 03:04:23', '2023-03-27 03:04:23'),
(745, 747, '1679865786', 'কুমিল্লা বরুড়া', NULL, NULL, NULL, NULL, NULL, 'Abdullah', NULL, '01890633608', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 03:23:06', '2023-03-27 03:23:06'),
(749, 751, '1679867418', 'Nageshwari kurigram 5660', NULL, NULL, NULL, NULL, NULL, 'Md humayun', NULL, '01328918663', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 03:50:18', '2023-03-27 03:50:18'),
(751, 753, '1679868226', 'Mymensingh ,dhobaura,', NULL, NULL, NULL, NULL, NULL, 'Navid', NULL, '01633689595', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 04:03:46', '2023-03-27 04:03:46'),
(763, 765, '1679872826', 'Sakhipur', NULL, NULL, NULL, NULL, NULL, 'Md Majedur Sikder', NULL, '01867847155', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 05:20:26', '2023-03-27 05:20:26'),
(767, 769, '1679873870', 'Kushtia', NULL, NULL, NULL, NULL, NULL, 'Shaimul Karim', NULL, '01714080514', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 05:37:50', '2023-03-27 05:37:50'),
(771, 773, '1679876357', 'Bayatipara Road Khulna', NULL, NULL, NULL, NULL, NULL, 'Prodip', NULL, '01759988877', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 06:19:17', '2023-03-27 06:19:17'),
(772, 774, '1679878071', 'Roni Computer And Shikkha Biponi, Chhagalnaiya, Feni.', NULL, NULL, NULL, NULL, NULL, 'Abu Tohid Roni', NULL, '01400504006', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 06:47:51', '2023-03-27 06:47:51'),
(773, 775, '1679880054', 'বরগুনা তালতলী বাজার', NULL, NULL, NULL, NULL, NULL, 'রফিকুল', NULL, '01719398637', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 07:20:54', '2023-03-27 07:20:54'),
(774, 776, '1679880720', 'Dhaka, nariongonj, chitagon rood', NULL, NULL, NULL, NULL, NULL, 'Rayhan', NULL, '01315394960', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 07:32:00', '2023-03-27 07:32:00'),
(775, 777, '1679881523', 'কিশোরগঞ্জ সদর,বারো আউলিয়ার মোর', NULL, NULL, NULL, NULL, NULL, 'Noore jannat', NULL, '01714410668', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 07:45:23', '2023-03-27 07:45:23'),
(778, 781, '1679883217', 'Birgonj dinajpur', NULL, NULL, NULL, NULL, NULL, 'Alim', NULL, '01952238648', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 08:13:37', '2023-03-27 08:13:37'),
(779, 782, '1679883245', 'কক্সবাজার. লিং রোড.', NULL, NULL, NULL, NULL, NULL, 'Arfat', NULL, '01884562613', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 08:14:05', '2023-03-27 08:14:05'),
(780, 783, '1679883255', 'Monsignj gojaria thana hosendi', NULL, NULL, NULL, NULL, NULL, 'Esmail', NULL, '01737303388', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 08:14:15', '2023-03-27 08:14:15'),
(787, 790, '1679885942', 'Chandpur. Sadar truk rode bhot tola', NULL, NULL, NULL, NULL, NULL, 'Farabi', NULL, '01406527184', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 08:59:02', '2023-03-27 08:59:02'),
(788, 792, '1679886096', 'Chandpur. sadar truk rodr both tola', NULL, NULL, NULL, NULL, NULL, 'Farabi', NULL, '01406527184', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 09:01:36', '2023-03-27 09:01:36'),
(789, 793, '1679886529', 'জেলা পটুয়াখালী থানা মির্জাগনজ কাঠালতলী', NULL, NULL, NULL, NULL, NULL, 'Md jinir', NULL, '01914706885', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 09:08:49', '2023-03-27 09:08:49'),
(792, 796, '1679888212', 'Dhamrai Dolevita', NULL, NULL, NULL, NULL, NULL, 'Tauhid', NULL, '01956236722', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 09:36:52', '2023-03-27 09:36:52'),
(794, 798, '1679888797', 'Rangpur.nojirerhat', NULL, NULL, NULL, NULL, NULL, 'shamim', NULL, '01983856535', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 09:46:37', '2023-03-27 09:46:37'),
(795, 799, '1679888976', 'Fatulla,Narayangonj', NULL, NULL, NULL, NULL, NULL, 'Rasel', NULL, '01770029369', NULL, '2023-03-27', 'due', 'cancell', '690.00', '0.00', '0.00', '790.00', 3, '100.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-03-27 09:49:36', '2023-03-27 09:49:36'),
(833, 825, '1683093044', 'House # 2. Block # D. Line # 11. Section 12. Pallobi . mirpur. Dhaka.', NULL, NULL, NULL, NULL, NULL, 'Enayet Hussain', NULL, '01553606163', NULL, '2023-05-03', 'due', 'pending', '940.00', '0.00', '0.00', '1000.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-03 11:50:44', '2023-05-03 11:50:44'),
(835, 827, '1683176610', '24,24/1   siddeshwari lane, Shantinagor', NULL, NULL, NULL, NULL, NULL, 'Zilani', NULL, '01711166810', NULL, '2023-05-04', 'due', 'pending', '1150.00', '0.00', '0.00', '1210.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-04 11:03:30', '2023-05-04 11:03:30'),
(836, 828, '1683178763', '50, 1 haronath gosh road LALBAG dhaka', NULL, NULL, NULL, NULL, NULL, 'Sufian', NULL, '01879139863', NULL, '2023-05-04', 'due', 'pending', '1150.00', '0.00', '0.00', '1210.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-04 11:39:23', '2023-05-04 11:39:23'),
(838, 829, '1683186479', 'ড. নাওয়াব আলী টাওয়ার রিপ্টের -২, ২৪ পুরানা পল্টন ঢাকা', NULL, NULL, NULL, NULL, NULL, 'নেযামত', NULL, '01775570935', NULL, '2023-05-04', 'due', 'pending', '1150.00', '0.00', '0.00', '1210.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-04 13:47:59', '2023-05-04 13:47:59'),
(841, 832, '1683487984', '21/a road, house- 48/a, sec 14 , uttora', NULL, NULL, NULL, NULL, NULL, 'Rima', NULL, '01715108177', NULL, '2023-05-08', 'due', 'pending', '1390.00', '0.00', '0.00', '1450.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-08 01:33:04', '2023-05-08 01:33:04'),
(842, 833, '1683522075', 'ফ্ল্যাট নাম্বার ৪০৪ গুলশান ২ বাসা নাম্বার ১৭ 59 মশাই রোড নাম্বার', NULL, 'Test Area', NULL, NULL, NULL, 'হালিমা নাহার', NULL, '01711527839', NULL, '2023-05-08', 'due', 'on_the_way', '2840.00', '0.00', '0.00', '2840.00', 2, '0.00', NULL, NULL, 1, NULL, 24, NULL, NULL, '2023-05-08 11:01:15', '2023-06-08 16:59:25'),
(843, 1, '1683536173', 'nn', NULL, NULL, NULL, NULL, NULL, 'demo', NULL, '234567890', NULL, '2023-05-08', 'due', 'pending', '1650.00', '0.00', '0.00', '1710.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-08 14:56:13', '2023-05-08 14:56:13'),
(844, 834, '1683551706', '15 A Green Square \r\nGreen Road \r\nDhaka 1205', 640, NULL, '1', '52', NULL, 'Arupratan', NULL, '01819212678', NULL, '2023-05-08', 'due', 'on_the_way', '1710.00', '0.00', '0.00', '1710.00', 2, '0.00', NULL, NULL, 2, 'DN2405235KMLWG', 24, '55882', '0.5', '2023-05-08 19:15:06', '2023-05-24 14:08:34'),
(845, 838, '587694', 'bjbj', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '234567890', NULL, '2023-05-20', 'due', 'pending', '860.00', '0.00', '0.00', '920.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-20 00:27:48', '2023-05-20 00:27:48'),
(846, 839, '567895', 'nfnfgn', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '454545', NULL, '2023-05-21', 'due', 'pending', '1150.00', '0.00', '0.00', '1210.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-21 13:41:27', '2023-05-21 13:41:27');
INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `shipping_address`, `area_id`, `area_name`, `city`, `state`, `zip_code`, `first_name`, `last_name`, `mobile`, `email`, `date`, `payment_status`, `status`, `amount`, `tax`, `discount`, `final_amount`, `delivery_charge_id`, `shipping_charge`, `delivery_type`, `note`, `courier_id`, `courier_tracking_id`, `assign_user_id`, `store_id`, `weight`, `created_at`, `updated_at`) VALUES
(847, 840, '901176', 'dinajpur', NULL, NULL, NULL, NULL, NULL, 'Md Shah Moazzem', NULL, '01318070454', NULL, '2023-05-22', 'partial', 'on_hold', '950.00', '0.00', '0.00', '950.00', 3, '0.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-22 15:35:04', '2023-05-24 14:59:26'),
(848, 1, '296855', 'dfghdgf', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '3323', NULL, '2023-05-24', 'due', 'pending', '2780.00', '0.00', '0.00', '2840.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-05-24 16:35:14', '2023-05-24 16:35:14'),
(858, 1, '463727', NULL, NULL, NULL, NULL, NULL, NULL, 'Md Anwar', NULL, '01998839860', NULL, '2023-05-30', 'due', 'complete', '410.00', '0.00', '0.00', '330.00', 2, '80.00', NULL, NULL, NULL, NULL, 837, NULL, '0.5', '2023-05-30 12:49:48', '2023-05-30 12:49:48'),
(859, 847, '799561', 'নেত্রকোনা', NULL, NULL, NULL, NULL, NULL, 'সুমর', NULL, '01712972020', NULL, '2023-05-31', 'due', 'pending', '2000.00', '0.00', '0.00', '2150.00', 3, '150.00', NULL, NULL, NULL, NULL, 836, NULL, NULL, '2023-05-31 21:00:11', '2023-05-31 21:00:11'),
(864, 852, '315247', 'fbgb', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '234567890', NULL, '2023-06-04', 'due', 'pending', '2300.00', '0.00', '0.00', '2380.00', 2, '80.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-04 19:38:07', '2023-06-04 19:38:07'),
(868, 856, '769167', 'A', NULL, NULL, NULL, NULL, NULL, 'A', NULL, '01569874563', NULL, '2023-06-09', 'due', 'pending', '1150.00', '0.00', '0.00', '1230.00', 2, '80.00', NULL, NULL, NULL, NULL, 837, NULL, NULL, '2023-06-09 17:14:09', '2023-06-09 17:14:09'),
(878, 862, '956919', 'ডিজড', NULL, NULL, NULL, NULL, NULL, 'গাহসও', NULL, '01759794994', NULL, '2023-06-10', 'due', 'pending', '800.00', '0.00', '0.00', '950.00', 3, '150.00', NULL, NULL, NULL, NULL, 837, NULL, NULL, '2023-06-10 01:05:03', '2023-06-10 01:05:03'),
(879, 863, '203192', 'ds', NULL, NULL, NULL, NULL, NULL, 'Iftiher', NULL, '01858206083', NULL, '2023-06-10', 'due', 'pending', '750.00', '0.00', '0.00', '900.00', 3, '150.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-10 11:11:29', '2023-06-10 11:11:29'),
(880, 864, '455416', 'gnjdn', NULL, NULL, NULL, NULL, NULL, 'Mamunur', NULL, '01979988807', NULL, '2023-06-10', 'due', 'pending', '1090.00', '0.00', '0.00', '1170.00', 2, '80.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-10 11:33:15', '2023-06-10 11:33:15'),
(882, 866, '368652', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 'Jansn', NULL, '0172939272627', NULL, '2023-06-10', 'due', 'pending', '690.00', '0.00', '0.00', '770.00', 2, '80.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-10 19:36:00', '2023-06-10 19:36:00'),
(883, 1, '749733', 'ggr', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '234567890', NULL, '2023-06-10', 'due', 'pending', '3900.00', '0.00', '2500.00', '1480.00', 2, '80.00', NULL, NULL, NULL, NULL, 836, NULL, NULL, '2023-06-10 23:30:39', '2023-06-10 23:30:39'),
(884, 867, '138106', 'Na', 13710, NULL, '64', '168', NULL, 'Naim', NULL, '01938264923', NULL, '2023-06-11', 'due', 'on_the_way', '44190.00', '0.00', '0.00', '44040.00', 3, '150.00', NULL, NULL, 2, NULL, 835, NULL, '2', '2023-06-11 12:27:46', '2023-06-12 15:04:44'),
(885, 868, '841144', 'mm,.', NULL, NULL, NULL, NULL, NULL, 'naz', NULL, '019999999999999', NULL, '2023-06-11', 'due', 'pending', '940.00', '0.00', '0.00', '1090.00', 3, '150.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-11 14:37:14', '2023-06-11 14:37:14'),
(886, 869, '186786', 'Chandpur', NULL, NULL, NULL, NULL, NULL, 'Shah', NULL, '01842289999', NULL, '2023-06-11', 'due', 'pending', '1700.00', '0.00', '0.00', '1850.00', 3, '150.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-11 19:57:12', '2023-06-11 19:57:12'),
(887, 870, '453772', 'Chandpur', NULL, NULL, NULL, NULL, NULL, 'Shah', NULL, '01722289999', NULL, '2023-06-11', 'due', 'pending', '5800.00', '0.00', '3800.00', '2150.00', 3, '150.00', NULL, NULL, NULL, NULL, 836, NULL, NULL, '2023-06-11 19:58:16', '2023-06-11 19:58:16'),
(888, 1, '897193', 'Dhaka', 7700, 'Test Area', '32', '546', NULL, 'Hasan', NULL, '01766997999', NULL, '2023-06-12', 'due', 'pending', '1950.00', '0.00', '0.00', '1800.00', 3, '150.00', NULL, NULL, 2, NULL, 836, NULL, '0.5', '2023-06-12 09:11:18', '2023-06-12 09:11:18'),
(889, 873, '942057', 'নননন', NULL, NULL, NULL, NULL, NULL, '্্্', NULL, '8855', NULL, '2023-06-12', 'due', 'pending', '7090.00', '0.00', '200.00', '6970.00', 2, '80.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-12 10:51:56', '2023-06-12 10:51:56'),
(890, 875, '422896', 'aarestdyui', NULL, NULL, NULL, NULL, NULL, 'Mohammad', NULL, '234565442325', NULL, '2023-06-12', 'due', 'pending', '56500.00', '0.00', '0.00', '56560.00', 2, '60.00', NULL, NULL, NULL, NULL, 837, NULL, NULL, '2023-06-12 15:15:04', '2023-06-12 15:15:04'),
(891, 876, '497672', 'Y=15 momhadpur', NULL, NULL, NULL, NULL, NULL, 'Md Anwar', NULL, '01794030592', NULL, '2023-06-12', 'due', 'pending', '1690.00', '0.00', '0.00', '1840.00', 3, '150.00', NULL, NULL, NULL, NULL, 837, NULL, NULL, '2023-06-12 15:16:03', '2023-06-12 15:16:03'),
(892, 877, '795602', 'garti ghasdft', NULL, NULL, NULL, NULL, NULL, 'gdfgfdgdfgdfg', NULL, '12345678901', NULL, '2023-06-12', 'due', 'pending', '60500.00', '0.00', '0.00', '60650.00', 3, '150.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-12 15:59:41', '2023-06-12 15:59:41'),
(899, 1, '394482', 'fbgb', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '234567890', NULL, '2023-06-13', 'due', 'pending', '12570.00', '0.00', '0.00', '12630.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-13 18:27:14', '2023-06-13 18:27:14'),
(900, 878, '899675', 'dfghjkl', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '33344', NULL, '2023-06-13', 'due', 'pending', '5700.00', '0.00', '0.00', '5760.00', 2, '60.00', NULL, NULL, NULL, NULL, 837, NULL, NULL, '2023-06-13 18:41:28', '2023-06-13 18:41:28'),
(901, 879, '157832', 'dfghjkl', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '33344', NULL, '2023-06-13', 'due', 'pending', '570.00', '0.00', '0.00', '630.00', 2, '60.00', NULL, NULL, NULL, NULL, 836, NULL, NULL, '2023-06-13 18:44:17', '2023-06-13 18:44:17'),
(902, 1, '489512', 'fbgb', NULL, NULL, NULL, NULL, NULL, 'test', NULL, '01721344456', NULL, '2023-06-13', 'due', 'pending', '1690.00', '0.00', '0.00', '1750.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-13 19:04:40', '2023-06-13 19:04:40'),
(903, 1, '903562', 'মিরপুর ১০', NULL, NULL, NULL, NULL, NULL, 'MD MOSHIUZZAMAN', NULL, '01671430930', NULL, '2023-06-13', 'due', 'pending', '1200.00', '0.00', '0.00', '1260.00', 2, '60.00', NULL, NULL, NULL, NULL, 24, NULL, NULL, '2023-06-13 21:23:55', '2023-06-13 21:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `quantity` decimal(5,2) DEFAULT NULL,
  `variation_id` mediumint(9) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `is_stock` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `variation_id`, `unit_price`, `discount`, `is_stock`, `created_at`, `updated_at`) VALUES
(100, 96, 10, '1.00', 9, '1690.00', '0.00', NULL, '2023-01-22 08:36:49', '2023-01-22 08:36:49'),
(101, 97, 3, '2.00', 2, '2000.00', '3800.00', NULL, '2023-01-24 23:49:27', '2023-01-24 23:49:27'),
(102, 97, 6, '1.00', 5, '1100.00', '2400.00', NULL, '2023-01-24 23:49:27', '2023-01-24 23:49:27'),
(103, 97, 21, '1.00', 20, '2150.00', '300.00', NULL, '2023-01-24 23:49:27', '2023-01-24 23:49:27'),
(104, 98, 10, '1.00', 9, '1690.00', '0.00', NULL, '2023-02-03 00:34:27', '2023-02-03 00:34:27'),
(105, 98, 4, '1.00', 3, '1000.00', '3500.00', NULL, '2023-02-03 00:34:27', '2023-02-03 00:34:27'),
(106, 99, 10, '1.00', 9, '1690.00', '0.00', NULL, '2023-02-09 17:30:12', '2023-02-09 17:30:12'),
(107, 100, 4, '1.00', 3, '1000.00', '3500.00', NULL, '2023-02-09 17:47:36', '2023-02-09 17:47:36'),
(108, 100, 5, '1.00', 4, '1400.00', '2500.00', NULL, '2023-02-09 17:47:36', '2023-02-09 17:47:36'),
(109, 101, 40, '1.00', 39, '36500.00', '0.00', NULL, '2023-02-09 17:51:07', '2023-02-09 17:51:07'),
(119, 113, 28, '1.00', 27, '60500.00', '0.00', NULL, '2023-02-10 01:59:03', '2023-02-10 01:59:03'),
(120, 113, 34, '1.00', 33, '470.00', '0.00', NULL, '2023-02-10 01:59:03', '2023-02-10 01:59:03'),
(128, 125, 40, '1.00', 39, '36500.00', '0.00', NULL, '2023-02-10 02:35:05', '2023-02-10 02:35:05'),
(129, 126, 29, '1.00', 28, '1700.00', '0.00', NULL, '2023-02-10 02:52:07', '2023-02-10 02:52:07'),
(130, 127, 10, '1.00', 9, '1690.00', '0.00', NULL, '2023-02-10 02:56:41', '2023-02-10 02:56:41'),
(131, 129, 11, '1.00', 10, '5700.00', '0.00', NULL, '2023-02-10 03:14:03', '2023-02-10 03:14:03'),
(133, 131, 29, '1.00', 28, '1700.00', '0.00', NULL, '2023-02-10 03:29:09', '2023-02-10 03:29:09'),
(144, 145, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-02-28 23:25:45', '2023-02-28 23:25:45'),
(147, 148, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-01 08:30:38', '2023-03-01 08:30:38'),
(158, 159, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-02 00:08:03', '2023-03-02 00:08:03'),
(159, 160, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-02 01:22:28', '2023-03-02 01:22:28'),
(161, 162, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-02 08:52:40', '2023-03-02 08:52:40'),
(168, 169, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-03 02:28:22', '2023-03-03 02:28:22'),
(176, 177, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-03 12:07:18', '2023-03-03 12:07:18'),
(183, 184, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-03 17:19:56', '2023-03-03 17:19:56'),
(184, 185, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-03 18:07:13', '2023-03-03 18:07:13'),
(186, 187, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-03 20:49:30', '2023-03-03 20:49:30'),
(187, 188, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-03 21:16:34', '2023-03-03 21:16:34'),
(188, 189, 94, '2.00', 150, '680.00', '0.00', NULL, '2023-03-03 22:53:20', '2023-03-03 22:53:20'),
(197, 198, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-04 01:26:16', '2023-03-04 01:26:16'),
(215, 216, 15, '1.00', 14, '390.00', '0.00', NULL, '2023-03-04 19:42:11', '2023-03-04 19:42:11'),
(216, 217, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-04 20:08:46', '2023-03-04 20:08:46'),
(217, 218, 32, '1.00', 31, '570.00', '0.00', NULL, '2023-03-04 20:10:52', '2023-03-04 20:10:52'),
(230, 231, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-05 10:47:42', '2023-03-05 10:47:42'),
(235, 236, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-05 23:34:03', '2023-03-05 23:34:03'),
(243, 244, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-06 11:39:37', '2023-03-06 11:39:37'),
(247, 248, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-06 16:36:00', '2023-03-06 16:36:00'),
(248, 249, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-06 19:28:02', '2023-03-06 19:28:02'),
(250, 251, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-06 22:49:59', '2023-03-06 22:49:59'),
(252, 253, 77, '2.00', 133, '680.00', '0.00', NULL, '2023-03-06 23:03:08', '2023-03-06 23:03:08'),
(253, 254, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-07 02:58:16', '2023-03-07 02:58:16'),
(262, 262, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-07 12:11:02', '2023-03-07 12:11:02'),
(276, 276, 98, '1.00', 154, '860.00', '0.00', NULL, '2023-03-08 09:06:59', '2023-03-08 09:06:59'),
(286, 286, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-08 12:04:52', '2023-03-08 12:04:52'),
(288, 288, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-08 15:12:05', '2023-03-08 15:12:05'),
(290, 290, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-08 20:57:14', '2023-03-08 20:57:14'),
(308, 308, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-10 00:31:55', '2023-03-10 00:31:55'),
(310, 310, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-10 09:51:35', '2023-03-10 09:51:35'),
(323, 323, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-11 14:54:34', '2023-03-11 14:54:34'),
(333, 333, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-12 16:21:06', '2023-03-12 16:21:06'),
(339, 339, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-12 22:46:17', '2023-03-12 22:46:17'),
(354, 353, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-13 13:11:46', '2023-03-13 13:11:46'),
(361, 360, 96, '1.00', 152, '750.00', '0.00', NULL, '2023-03-13 17:33:57', '2023-03-13 17:33:57'),
(362, 360, 95, '1.00', 151, '1550.00', '0.00', NULL, '2023-03-13 17:33:57', '2023-03-13 17:33:57'),
(365, 363, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-13 19:31:51', '2023-03-13 19:31:51'),
(370, 368, 89, '1.00', 145, '1700.00', '0.00', NULL, '2023-03-13 22:41:10', '2023-03-13 22:41:10'),
(373, 371, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 00:12:35', '2023-03-14 00:12:35'),
(376, 374, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 01:06:56', '2023-03-14 01:06:56'),
(380, 378, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 01:59:06', '2023-03-14 01:59:06'),
(382, 380, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 02:19:25', '2023-03-14 02:19:25'),
(385, 383, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-14 07:55:20', '2023-03-14 07:55:20'),
(386, 384, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-14 08:15:33', '2023-03-14 08:15:33'),
(388, 386, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 10:11:55', '2023-03-14 10:11:55'),
(389, 387, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-14 10:16:21', '2023-03-14 10:16:21'),
(394, 392, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-14 14:14:18', '2023-03-14 14:14:18'),
(395, 393, 94, '1.00', 150, '680.00', '0.00', NULL, '2023-03-14 14:15:13', '2023-03-14 14:15:13'),
(402, 399, 89, '1.00', 145, '1700.00', '0.00', NULL, '2023-03-14 18:44:17', '2023-03-14 18:44:17'),
(405, 402, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 21:01:44', '2023-03-14 21:01:44'),
(406, 403, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 21:11:00', '2023-03-14 21:11:00'),
(407, 404, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-14 23:30:34', '2023-03-14 23:30:34'),
(415, 412, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-15 11:23:19', '2023-03-15 11:23:19'),
(420, 416, 83, '1.00', 139, '1200.00', '0.00', NULL, '2023-03-15 18:16:05', '2023-03-15 18:16:05'),
(422, 418, 101, '1.00', 157, '690.00', '0.00', NULL, '2023-03-15 18:38:33', '2023-03-15 18:38:33'),
(423, 419, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-15 18:53:52', '2023-03-15 18:53:52'),
(424, 420, 101, '1.00', 157, '690.00', '0.00', NULL, '2023-03-15 19:54:13', '2023-03-15 19:54:13'),
(425, 421, 101, '2.00', 157, '690.00', '0.00', NULL, '2023-03-15 20:52:29', '2023-03-15 20:52:29'),
(427, 423, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 02:27:09', '2023-03-16 02:27:09'),
(428, 424, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 02:35:40', '2023-03-16 02:35:40'),
(429, 425, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 02:36:00', '2023-03-16 02:36:00'),
(430, 426, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 02:55:49', '2023-03-16 02:55:49'),
(434, 430, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 08:29:18', '2023-03-16 08:29:18'),
(435, 431, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 08:55:35', '2023-03-16 08:55:35'),
(440, 436, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 11:14:11', '2023-03-16 11:14:11'),
(441, 437, 101, '1.00', 157, '690.00', '0.00', NULL, '2023-03-16 11:16:10', '2023-03-16 11:16:10'),
(443, 439, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-16 11:50:47', '2023-03-16 11:50:47'),
(444, 440, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 12:23:23', '2023-03-16 12:23:23'),
(445, 441, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-16 12:45:24', '2023-03-16 12:45:24'),
(446, 442, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 12:53:18', '2023-03-16 12:53:18'),
(448, 444, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 12:56:36', '2023-03-16 12:56:36'),
(450, 446, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-16 13:56:54', '2023-03-16 13:56:54'),
(451, 447, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 14:42:01', '2023-03-16 14:42:01'),
(455, 451, 101, '1.00', 157, '690.00', '0.00', NULL, '2023-03-16 15:58:35', '2023-03-16 15:58:35'),
(457, 453, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 17:20:34', '2023-03-16 17:20:34'),
(459, 455, 99, '1.00', 155, '1650.00', '0.00', NULL, '2023-03-16 17:29:57', '2023-03-16 17:29:57'),
(483, 479, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-18 12:24:18', '2023-03-18 12:24:18'),
(485, 481, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-18 12:51:18', '2023-03-18 12:51:18'),
(487, 483, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-18 14:31:41', '2023-03-18 14:31:41'),
(493, 489, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-18 18:09:35', '2023-03-18 18:09:35'),
(498, 494, 77, '2.00', 133, '680.00', '0.00', NULL, '2023-03-18 21:51:59', '2023-03-18 21:51:59'),
(502, 498, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 01:02:40', '2023-03-19 01:02:40'),
(505, 501, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 02:52:16', '2023-03-19 02:52:16'),
(506, 502, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 03:52:43', '2023-03-19 03:52:43'),
(509, 505, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 10:39:54', '2023-03-19 10:39:54'),
(512, 508, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 11:58:08', '2023-03-19 11:58:08'),
(515, 511, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-19 13:58:47', '2023-03-19 13:58:47'),
(516, 512, 77, '1.00', 133, '680.00', '0.00', NULL, '2023-03-20 11:55:33', '2023-03-20 11:55:33'),
(523, 519, 104, '1.00', 160, '750.00', '0.00', NULL, '2023-03-23 14:47:56', '2023-03-23 14:47:56'),
(527, 523, 103, '1.00', 159, '800.00', '0.00', NULL, '2023-03-24 06:51:54', '2023-03-24 06:51:54'),
(542, 536, 101, '1.00', 157, '650.00', '0.00', NULL, '2023-03-25 09:39:54', '2023-03-25 09:39:54'),
(543, 537, 101, '1.00', 157, '650.00', '0.00', NULL, '2023-03-25 10:58:56', '2023-03-25 10:58:56'),
(554, 548, 106, '3.00', 162, '690.00', '0.00', NULL, '2023-03-25 22:32:22', '2023-03-25 22:32:22'),
(558, 552, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 22:47:27', '2023-03-25 22:47:27'),
(559, 553, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 22:51:31', '2023-03-25 22:51:31'),
(565, 559, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:04:27', '2023-03-25 23:04:27'),
(566, 560, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:05:46', '2023-03-25 23:05:46'),
(572, 566, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:19:47', '2023-03-25 23:19:47'),
(578, 572, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:31:52', '2023-03-25 23:31:52'),
(580, 574, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:33:42', '2023-03-25 23:33:42'),
(582, 576, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-25 23:44:33', '2023-03-25 23:44:33'),
(591, 585, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 00:15:30', '2023-03-26 00:15:30'),
(602, 596, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 02:00:08', '2023-03-26 02:00:08'),
(605, 599, 105, '2.00', 161, '550.00', '0.00', NULL, '2023-03-26 02:49:32', '2023-03-26 02:49:32'),
(623, 617, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 11:37:29', '2023-03-26 11:37:29'),
(626, 620, 106, '2.00', 162, '690.00', '0.00', NULL, '2023-03-26 11:49:36', '2023-03-26 11:49:36'),
(633, 627, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 12:23:23', '2023-03-26 12:23:23'),
(651, 645, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 15:21:02', '2023-03-26 15:21:02'),
(660, 654, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 15:47:08', '2023-03-26 15:47:08'),
(661, 655, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 15:47:37', '2023-03-26 15:47:37'),
(668, 662, 101, '1.00', 157, '650.00', '0.00', NULL, '2023-03-26 16:24:48', '2023-03-26 16:24:48'),
(669, 663, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 16:41:44', '2023-03-26 16:41:44'),
(670, 664, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 16:50:05', '2023-03-26 16:50:05'),
(671, 665, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 17:41:36', '2023-03-26 17:41:36'),
(672, 666, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 17:44:40', '2023-03-26 17:44:40'),
(678, 672, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 19:02:03', '2023-03-26 19:02:03'),
(684, 678, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 19:34:06', '2023-03-26 19:34:06'),
(685, 679, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 19:37:53', '2023-03-26 19:37:53'),
(686, 680, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 19:49:49', '2023-03-26 19:49:49'),
(687, 681, 106, '2.00', 162, '690.00', '0.00', NULL, '2023-03-26 20:07:46', '2023-03-26 20:07:46'),
(692, 686, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 20:46:20', '2023-03-26 20:46:20'),
(696, 690, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 21:06:07', '2023-03-26 21:06:07'),
(697, 691, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 21:09:31', '2023-03-26 21:09:31'),
(704, 698, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 22:11:20', '2023-03-26 22:11:20'),
(706, 700, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-26 22:13:26', '2023-03-26 22:13:26'),
(707, 701, 101, '1.00', 157, '650.00', '0.00', NULL, '2023-03-26 22:18:18', '2023-03-26 22:18:18'),
(709, 703, 106, '2.00', 162, '690.00', '0.00', NULL, '2023-03-26 22:26:08', '2023-03-26 22:26:08'),
(715, 709, 101, '1.00', 157, '650.00', '0.00', NULL, '2023-03-26 22:46:56', '2023-03-26 22:46:56'),
(719, 713, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:16:33', '2023-03-27 00:16:33'),
(722, 716, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:20:34', '2023-03-27 00:20:34'),
(723, 717, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:20:51', '2023-03-27 00:20:51'),
(724, 718, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:22:10', '2023-03-27 00:22:10'),
(725, 719, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:26:35', '2023-03-27 00:26:35'),
(731, 725, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 00:49:12', '2023-03-27 00:49:12'),
(736, 730, 106, '2.00', 162, '690.00', '0.00', NULL, '2023-03-27 01:43:35', '2023-03-27 01:43:35'),
(745, 739, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 02:38:15', '2023-03-27 02:38:15'),
(747, 741, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 03:04:23', '2023-03-27 03:04:23'),
(751, 745, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 03:23:06', '2023-03-27 03:23:06'),
(755, 749, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 03:50:18', '2023-03-27 03:50:18'),
(757, 751, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 04:03:46', '2023-03-27 04:03:46'),
(769, 763, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 05:20:26', '2023-03-27 05:20:26'),
(773, 767, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 05:37:50', '2023-03-27 05:37:50'),
(777, 771, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 06:19:17', '2023-03-27 06:19:17'),
(778, 772, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 06:47:51', '2023-03-27 06:47:51'),
(779, 773, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 07:20:54', '2023-03-27 07:20:54'),
(780, 774, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 07:32:00', '2023-03-27 07:32:00'),
(781, 775, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 07:45:23', '2023-03-27 07:45:23'),
(784, 778, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 08:13:37', '2023-03-27 08:13:37'),
(785, 779, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 08:14:05', '2023-03-27 08:14:05'),
(786, 780, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 08:14:15', '2023-03-27 08:14:15'),
(793, 787, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 08:59:02', '2023-03-27 08:59:02'),
(794, 788, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 09:01:36', '2023-03-27 09:01:36'),
(795, 789, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 09:08:49', '2023-03-27 09:08:49'),
(798, 792, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 09:36:52', '2023-03-27 09:36:52'),
(800, 794, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 09:46:37', '2023-03-27 09:46:37'),
(801, 795, 106, '1.00', 162, '690.00', '0.00', NULL, '2023-03-27 09:49:36', '2023-03-27 09:49:36'),
(829, 833, 111, '1.00', 167, '940.00', '0.00', 0, '2023-05-03 11:50:44', '2023-05-03 11:50:44'),
(831, 835, 112, '1.00', 168, '1150.00', '0.00', 0, '2023-05-04 11:03:30', '2023-05-04 11:03:30'),
(832, 836, 112, '1.00', 168, '1150.00', '0.00', 0, '2023-05-04 11:39:23', '2023-05-04 11:39:23'),
(834, 838, 112, '1.00', 168, '1150.00', '0.00', 0, '2023-05-04 13:47:59', '2023-05-04 13:47:59'),
(837, 841, 113, '1.00', 169, '1390.00', '0.00', 0, '2023-05-08 01:33:04', '2023-05-08 01:33:04'),
(838, 842, 113, '2.00', 169, '1390.00', '0.00', 0, '2023-05-08 11:01:15', '2023-05-08 11:01:15'),
(839, 843, 99, '1.00', 155, '1650.00', '0.00', 1, '2023-05-08 14:56:13', '2023-05-08 14:56:13'),
(840, 844, 99, '1.00', 155, '1650.00', '0.00', 1, '2023-05-08 19:15:06', '2023-05-08 19:15:06'),
(841, 845, 98, '1.00', 154, '860.00', '0.00', 1, '2023-05-20 00:27:48', '2023-05-20 00:27:48'),
(842, 846, 112, '1.00', 168, '1150.00', '0.00', 0, '2023-05-21 13:41:27', '2023-05-21 13:41:27'),
(843, 847, 68, '1.00', 103, '850.00', '0.00', 1, '2023-05-22 15:35:04', '2023-05-22 15:35:04'),
(844, 848, 113, '2.00', 169, '1390.00', '0.00', 0, '2023-05-24 16:35:14', '2023-05-24 16:35:14'),
(848, 858, 115, '1.00', 171, '250.00', '0.00', NULL, '2023-05-30 12:49:48', '2023-05-30 12:49:48'),
(849, 859, 100, '1.00', 156, '2000.00', '0.00', 1, '2023-05-31 21:00:11', '2023-05-31 21:00:11'),
(850, 864, 112, '2.00', 168, '1150.00', '0.00', 0, '2023-06-04 19:38:07', '2023-06-04 19:38:07'),
(851, 868, 112, '1.00', 168, '1150.00', '0.00', 0, '2023-06-09 17:14:09', '2023-06-09 17:14:09'),
(852, 878, 103, '1.00', 159, '800.00', '0.00', 1, '2023-06-10 01:05:03', '2023-06-10 01:05:03'),
(853, 879, 96, '1.00', 152, '750.00', '0.00', 1, '2023-06-10 11:11:29', '2023-06-10 11:11:29'),
(854, 880, 80, '1.00', 136, '1090.00', '0.00', 1, '2023-06-10 11:33:15', '2023-06-10 11:33:15'),
(855, 882, 106, '1.00', 162, '690.00', '0.00', 1, '2023-06-10 19:36:00', '2023-06-10 19:36:00'),
(856, 883, 5, '1.00', 4, '1400.00', '2500.00', 0, '2023-06-10 23:30:39', '2023-06-10 23:30:39'),
(857, 884, 10, '1.00', 9, '1690.00', '0.00', 0, '2023-06-11 12:27:46', '2023-06-11 12:27:46'),
(858, 884, 42, '1.00', 41, '41000.00', '0.00', 0, '2023-06-11 12:27:46', '2023-06-11 12:27:46'),
(859, 884, 8, '1.00', 7, '1200.00', '0.00', 0, '2023-06-11 12:27:46', '2023-06-11 12:27:46'),
(860, 885, 34, '2.00', 33, '470.00', '0.00', 0, '2023-06-11 14:37:14', '2023-06-11 14:37:14'),
(861, 886, 89, '1.00', 145, '1700.00', '0.00', 1, '2023-06-11 19:57:12', '2023-06-11 19:57:12'),
(862, 887, 3, '1.00', 2, '2000.00', '3800.00', 0, '2023-06-11 19:58:16', '2023-06-11 19:58:16'),
(863, 889, 11, '1.00', 10, '5700.00', '0.00', 0, '2023-06-12 10:51:56', '2023-06-12 10:51:56'),
(864, 889, 113, '1.00', 169, '1190.00', '200.00', 0, '2023-06-12 10:51:56', '2023-06-12 10:51:56'),
(865, 890, 27, '1.00', 26, '56500.00', '0.00', 0, '2023-06-12 15:15:04', '2023-06-12 15:15:04'),
(866, 891, 10, '1.00', 9, '1690.00', '0.00', 0, '2023-06-12 15:16:03', '2023-06-12 15:16:03'),
(867, 892, 28, '1.00', 27, '60500.00', '0.00', 0, '2023-06-12 15:59:41', '2023-06-12 15:59:41'),
(875, 899, 11, '2.00', 10, '5700.00', '0.00', 0, '2023-06-13 18:27:14', '2023-06-13 18:27:14'),
(876, 899, 15, '3.00', 14, '390.00', '0.00', 0, '2023-06-13 18:27:14', '2023-06-13 18:27:14'),
(877, 900, 11, '1.00', 10, '5700.00', '0.00', 0, '2023-06-13 18:41:28', '2023-06-13 18:41:28'),
(878, 901, 32, '1.00', 31, '570.00', '0.00', 0, '2023-06-13 18:44:17', '2023-06-13 18:44:17'),
(879, 902, 10, '1.00', 9, '1690.00', '0.00', 0, '2023-06-13 19:04:40', '2023-06-13 19:04:40'),
(880, 903, 8, '1.00', 7, '1200.00', '0.00', 0, '2023-06-13 21:23:55', '2023-06-13 21:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `method` varchar(50) DEFAULT 'cash',
  `amount` decimal(10,2) DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `tnx_id` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `method`, `amount`, `date`, `account_no`, `tnx_id`, `email`, `name`, `note`, `created_at`, `updated_at`) VALUES
(4, 100, 'bkash', '2450.00', '2023-02-09', '01762223976', '4643643', NULL, NULL, '', '2023-02-09 17:47:36', '2023-02-09 17:47:36'),
(5, 125, 'paypal', '36500.00', '2023-02-10', NULL, '48H180669Y986232S', NULL, NULL, '', '2023-02-10 02:35:05', '2023-02-10 02:35:05'),
(6, 126, 'paypal', '1700.00', '2023-02-10', NULL, '8YP14009YT589564C', NULL, NULL, '', '2023-02-10 02:52:07', '2023-02-10 02:52:07'),
(7, 127, 'paypal', '1690.00', '2023-02-10', NULL, '3S00984607733072A', NULL, NULL, '', '2023-02-10 02:56:41', '2023-02-10 02:56:41'),
(8, 128, 'bkash', '56550.00', '2023-02-10', '0178888888', '445455', NULL, NULL, '', '2023-02-10 03:05:45', '2023-02-10 03:05:45'),
(9, 129, 'paypal', '5700.00', '2023-02-10', NULL, '5FX773000V781014U', NULL, NULL, '', '2023-02-10 03:14:03', '2023-02-10 03:14:03'),
(11, 131, 'paypal', '1700.00', '2023-02-10', NULL, '29P29737MH783735L', NULL, NULL, '', '2023-02-10 03:29:09', '2023-02-10 03:29:09'),
(12, 132, 'bkash', '36600.00', '2023-02-11', '01613249046', NULL, NULL, NULL, '', '2023-02-11 15:31:24', '2023-02-11 15:31:24'),
(14, 188, 'bkash', '780.00', '2023-03-03', '01739578951', '11223', NULL, NULL, '', '2023-03-03 21:16:34', '2023-03-03 21:16:34'),
(15, 188, 'cash', '0.00', '2023-03-04', NULL, NULL, NULL, NULL, NULL, '2023-03-04 01:10:29', '2023-03-04 01:10:29'),
(16, 188, 'cash', '-780.00', '2023-03-04', NULL, NULL, NULL, NULL, NULL, '2023-03-04 01:11:01', '2023-03-04 01:11:01'),
(26, 847, 'cash', '100.00', '2023-05-23', NULL, NULL, NULL, NULL, NULL, '2023-05-23 22:03:56', '2023-05-23 22:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'about', 'About us', '<p>hi</p>', '2023-02-01 02:39:15', '2023-02-01 02:39:15'),
(2, 'about', 'test', '<p>test data</p>', '2023-02-01 02:39:31', '2023-02-01 02:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'purchase.create', 'web', '2022-10-19 06:04:26', '2022-10-19 09:18:47'),
(2, 'purchase.edit', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(3, 'purchase.delete', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(4, 'role.create', 'web', '2022-10-19 06:04:26', '2022-10-19 06:04:26'),
(5, 'role.edit', 'web', '2022-10-19 08:46:38', '2022-10-19 08:46:38'),
(6, 'role.delete', 'web', '2022-10-19 08:49:08', '2022-10-19 08:49:08'),
(7, 'product.create', 'web', '2022-10-19 08:51:46', '2022-10-19 08:51:46'),
(8, 'product.edit', 'web', '2022-10-19 08:52:01', '2022-10-19 08:52:01'),
(10, 'product.delete', 'web', '2022-10-19 09:21:11', '2022-10-19 09:21:11'),
(11, 'permission.create', 'web', '2022-10-19 09:22:11', '2022-10-19 09:22:11'),
(12, 'permission.edit', 'web', '2022-10-19 09:22:19', '2022-10-19 09:22:19'),
(13, 'permission.delete', 'web', '2022-10-19 09:22:29', '2022-10-19 09:22:29'),
(14, 'order.create', 'web', '2022-10-19 09:22:48', '2022-10-19 09:22:48'),
(15, 'order.edit', 'web', '2022-10-19 09:22:56', '2022-10-19 09:22:56'),
(16, 'order.delete', 'web', '2022-10-19 09:23:03', '2022-10-19 09:23:03'),
(17, 'slider.create', 'web', '2022-10-19 09:23:33', '2022-10-19 09:23:33'),
(18, 'slider.edit', 'web', '2022-10-19 09:23:40', '2022-10-19 09:23:40'),
(19, 'slider.delete', 'web', '2022-10-19 09:23:47', '2022-10-19 09:23:47'),
(20, 'image.create', 'web', '2022-10-19 09:24:00', '2022-10-19 09:24:00'),
(21, 'image.edit', 'web', '2022-10-19 09:24:18', '2022-10-19 09:24:18'),
(22, 'image.delete', 'web', '2022-10-19 09:24:27', '2022-10-19 09:24:27'),
(23, 'type.create', 'web', '2022-10-19 09:24:41', '2022-10-19 09:24:41'),
(24, 'type.edit', 'web', '2022-10-19 09:24:48', '2022-10-19 09:24:48'),
(25, 'type.delete', 'web', '2022-10-19 09:25:21', '2022-10-19 09:25:21'),
(26, 'category.create', 'web', '2022-10-19 09:25:31', '2022-10-19 09:25:31'),
(27, 'category.edit', 'web', '2022-10-19 09:25:41', '2022-10-19 09:25:41'),
(28, 'category.delete', 'web', '2022-10-19 09:25:49', '2022-10-19 09:25:49'),
(29, 'size.create', 'web', '2022-10-19 09:26:02', '2022-10-19 09:26:02'),
(30, 'size.edit', 'web', '2022-10-19 09:26:12', '2022-10-19 09:26:12'),
(31, 'size.delete', 'web', '2022-10-19 09:26:21', '2022-10-19 09:26:21'),
(32, 'discount.create', 'web', '2022-10-19 09:27:11', '2022-10-19 09:27:11'),
(33, 'discount.edit', 'web', '2022-10-19 09:27:18', '2022-10-19 09:27:18'),
(34, 'discount.delete', 'web', '2022-10-19 09:27:26', '2022-10-19 09:27:26'),
(35, 'user.create', 'web', '2022-10-23 05:38:25', '2022-10-23 05:38:25'),
(36, 'user.edit', 'web', '2022-10-23 05:38:36', '2022-10-23 05:38:36'),
(37, 'user.delete', 'web', '2022-10-23 05:38:45', '2022-10-23 05:38:45'),
(42, 'delivery_charge.view', 'web', '2022-12-02 00:44:55', '2022-12-02 00:44:55'),
(43, 'delivery_charge.create', 'web', '2022-12-02 00:45:02', '2022-12-02 00:45:02'),
(44, 'delivery_charge.delete', 'web', '2022-12-02 00:45:08', '2022-12-02 00:45:08'),
(45, 'delivery_charge.edit', 'web', '2022-12-02 00:45:17', '2022-12-02 00:47:08'),
(46, 'purchase.view', 'web', '2022-12-09 01:25:59', '2022-12-09 01:25:59'),
(47, 'category.view', 'web', '2022-12-09 01:27:06', '2022-12-09 01:27:06'),
(48, 'discount.view', 'web', '2022-12-09 01:27:34', '2022-12-09 01:27:34'),
(49, 'image.view', 'web', '2022-12-09 01:28:07', '2022-12-09 01:28:07'),
(50, 'order.view', 'web', '2022-12-09 01:28:19', '2022-12-09 01:28:19'),
(51, 'permission.view', 'web', '2022-12-09 01:28:28', '2022-12-09 01:28:28'),
(52, 'role.view', 'web', '2022-12-09 01:28:49', '2022-12-09 01:28:49'),
(53, 'size.view', 'web', '2022-12-09 01:29:02', '2022-12-09 01:29:02'),
(54, 'user.view', 'web', '2022-12-09 01:29:11', '2022-12-09 01:29:11'),
(55, 'slider.view', 'web', '2022-12-09 01:29:23', '2022-12-09 01:29:23'),
(56, 'type.view', 'web', '2022-12-09 01:29:31', '2022-12-09 01:29:31'),
(57, 'page.create', 'web', '2022-12-09 01:29:44', '2022-12-09 01:29:44'),
(58, 'page.view', 'web', '2022-12-09 01:29:49', '2022-12-09 01:29:49'),
(59, 'page.edit', 'web', '2022-12-09 01:29:56', '2022-12-09 01:29:56'),
(60, 'page.delete', 'web', '2022-12-09 01:30:04', '2022-12-09 01:30:04'),
(61, 'color.view', 'web', '2022-12-09 01:39:50', '2022-12-09 01:39:50'),
(62, 'color.create', 'web', '2022-12-09 01:39:59', '2022-12-09 01:39:59'),
(63, 'color.edit', 'web', '2022-12-09 01:40:07', '2022-12-09 01:40:07'),
(64, 'color.delete', 'web', '2022-12-09 01:40:12', '2022-12-09 01:40:12'),
(65, 'dashboard.access', 'web', '2022-12-09 01:46:46', '2022-12-09 01:46:46'),
(66, 'product.view', 'web', '2022-12-09 13:51:54', '2022-12-09 13:51:54'),
(67, 'coupon_codes.view', 'web', '2022-12-16 16:27:26', '2022-12-16 16:27:26'),
(68, 'coupon_codes.create', 'web', '2022-12-16 16:27:32', '2022-12-16 16:27:32'),
(69, 'coupon_codes.edit', 'web', '2022-12-16 16:27:38', '2022-12-16 16:27:38'),
(70, 'coupon_codes.delete', 'web', '2022-12-16 16:27:43', '2022-12-16 16:27:43'),
(71, 'couriers.view', 'web', '2022-12-17 07:55:45', '2022-12-17 07:55:45'),
(72, 'couriers.create', 'web', '2022-12-17 07:55:51', '2022-12-17 07:55:51'),
(73, 'couriers.edit', 'web', '2022-12-17 07:55:56', '2022-12-17 07:55:56'),
(74, 'couriers.delete', 'web', '2022-12-17 07:56:02', '2022-12-17 07:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(200) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `category_id` smallint(6) DEFAULT NULL,
  `sub_category_id` smallint(6) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `purchase_price` decimal(8,2) DEFAULT 0.00,
  `sell_price` decimal(12,2) DEFAULT 0.00,
  `regular_price` decimal(12,2) DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `optional_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `feature` text DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `discount_type` varchar(40) DEFAULT NULL,
  `after_discount` decimal(8,2) DEFAULT 0.00,
  `dicount_amount` decimal(8,2) DEFAULT 0.00,
  `discount` decimal(8,2) DEFAULT 0.00,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `user_id` mediumint(10) DEFAULT NULL,
  `is_stock` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `type`, `category_id`, `sub_category_id`, `type_id`, `purchase_price`, `sell_price`, `regular_price`, `image`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `is_recommended`, `user_id`, `is_stock`, `created_at`, `updated_at`) VALUES
(2, 'Nike Product', NULL, 'single', 1, NULL, NULL, '120.00', '200.00', NULL, '787825-pink-nike-wallpaper-2048x2048-high-resolution1671261861.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2022-12-17 07:24:21', '2022-12-17 07:24:21'),
(3, 'AMOLED IP68 NFC Control New', NULL, 'single', 2, NULL, NULL, '3800.00', '5800.00', NULL, 'wa111671295601.jpg', NULL, NULL, '<p>✅ System:&nbsp;Android OS, iOS Supported&nbsp;</p>\r\n\r\n<p>✅&nbsp;&nbsp;Bluetooth Call, Custom Dial,&nbsp;NFC&nbsp;Door Unlock, Amoled Display,&nbsp;SMS Alerts Push, Sleep Monitor,&nbsp;Heart Rate, Blood Pressure Monitor, Music Watch.</p>\r\n\r\n<p><img alt=\"\" src=\"http://softitglobal.com/demo2/ck-images/wa1_1671295469.webp\" style=\"height:768px; width:768px\" /></p>', '<p><strong>✅ System:&nbsp;Android OS, iOS Supported&nbsp;</strong></p>\r\n\r\n<p><strong>✅&nbsp;&nbsp;Bluetooth Call, Custom Dial</strong>,&nbsp;<strong>NFC&nbsp;Door Unlock<strong>,</strong> Amoled Display,&nbsp;SMS Alerts Push, Sleep Monitor,&nbsp;Heart Rate, Blood Pressure Monitor</strong><strong>, Music Watch.</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, 'fixed', '2000.00', '3800.00', '3800.00', NULL, 1, 0, '2022-12-17 22:46:41', '2023-06-10 23:29:05'),
(4, 'Best LIGE Luxary watch', NULL, 'single', 2, NULL, NULL, '3500.00', '4500.00', '5500.00', 'L11671296208.jpg', NULL, NULL, NULL, NULL, NULL, 'fixed', '1000.00', '3500.00', '3500.00', NULL, 1, 0, '2022-12-17 22:56:48', '2023-06-10 23:29:58'),
(5, 'LIGE® Aqua Malva', NULL, 'single', 2, NULL, NULL, '2500.00', '3900.00', '3900.00', 'li31671296783.jpg', NULL, NULL, '<p>Brand: LIGE<br />\r\nDisplay: Analog Quartz Watch<br />\r\nStyle: Fashion, Casual, Business, Luxury, Sport<br />\r\nFeatures: Water Resistant, Auto Date, Chronograph, Shock Resistant, Swim,<br />\r\nMain Feature:<br />\r\n&ndash; 100% New With Tag And High Quality;<br />\r\n&ndash; Top Brand Luxury High-Quality Design Dial, Date Display Function;<br />\r\n&ndash; 3ATM / 30M Water Resistant (Support Cold Shower and Swim, do not operate watch when underwater, Do not support hot water);<br />\r\n&ndash; Quality Zinc Alloy Case;<br />\r\n&ndash; Quality Stainless Steel Strap ;<br />\r\nSpecification approximation:<br />\r\n&ndash; Case Diameter: 4.2 cm<br />\r\n&ndash; Case Thickness: 1.2 cm<br />\r\n&ndash; Band Width: 2.2 cm<br />\r\n&ndash; Total Length: 21cm~24cm</p>', '<ul>\r\n	<li>Sales Hotline-01914-795016</li>\r\n	<li>Japan Made Quartz Movement.</li>\r\n	<li>Waterproof ( 3 ATM)</li>\r\n	<li>Solid Stainless Still Strap with Butterfly Clasp</li>\r\n	<li>1 Year International Warranty</li>\r\n</ul>', NULL, 'fixed', '1400.00', '2500.00', '2500.00', NULL, 1, 0, '2022-12-17 23:06:23', '2023-06-10 23:30:09'),
(6, 'Ninja 2-in-1 Blender', NULL, 'single', 5, NULL, NULL, '2400.00', '3500.00', NULL, '61+3+rqbLfL1671913043.jpg', NULL, NULL, '<p>2 Blenders in 1 &ndash; Multi-serve blender and personal blender<br />\r\nAuto-iQ Technology &ndash; One-touch blending programs do all the hard work for you<br />\r\nDurable and Powerful &ndash; 1200W motor drives interchangeable stainless-steel blades to blend tough ingredients<br />\r\nEasy to Use &ndash; Simple controls, manual settings and dishwasher-safe parts<br />\r\nIncludes 2.1L Jug, 700ml Cup with Lid, Pro Extractor Blade, Stacked Blade, Recipe Guide</p>', '<ul>\r\n	<li>\r\n	<h1>Ninja 2-in-1 Blender with Auto-iQ (BN750UK)</h1>\r\n	</li>\r\n	<li>\r\n	<h1>1200 W, 2.1 Litre Jug,</h1>\r\n	</li>\r\n	<li>\r\n	<h1>0.7 Litre Cup, Black/Silver</h1>\r\n	</li>\r\n</ul>', NULL, 'fixed', '1100.00', '2400.00', '2400.00', 1, 1, 0, '2022-12-17 23:15:59', '2023-06-10 23:30:53'),
(7, '5-in-1 Vegetable Cutter', NULL, 'single', 5, NULL, NULL, '900.00', '1600.00', '1700.00', 'img1671536602.jpg', NULL, NULL, '<p>This is a 5-in-1 vegetable cutting slicer that allows you to cut a variety of vegetables and fruits 0.5mm to 8mm thick by simply turning the controllers and pressing the handle. This product is made with a premium hygienic material and the blades are made with 420j stainless steel which is more sharp and durable. There is no need to change the blade of this cutter so you can use water for a long time. This vegetable cutter has hidden blades so it is safer to use.</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Rating</th>\r\n			<td><img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<th>ID</th>\r\n			<td>72158</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Lowest Price</th>\r\n			<td>৳ 1,550</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Item</th>\r\n			<td><a href=\"https://www.bdstall.com/chopper-slicer-appliance/\">Chopper</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Status</th>\r\n			<td>In Stock</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Updated</th>\r\n			<td>3 days ago</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Seller Location</th>\r\n			<td>Dhaka, Bangladesh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-17 23:18:07', '2023-06-10 23:31:03'),
(8, 'Super Vegetable Cutter', NULL, 'single', 5, NULL, NULL, '650.00', '1200.00', '1200.00', 'v111671299223.jpg', NULL, NULL, '<p>With it you can cut more fruits, vegetables, potatoes, carrots, cucumbers in less time, it will save you a lot of time. There are 2 cutting inserts so that the components can be easily cut to the desired shape.</p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Rating</th>\r\n			<td><img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /> <img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"height:14px; width:15px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<th>ID</th>\r\n			<td>67017</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Lowest Price</th>\r\n			<td>৳ 799</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Item</th>\r\n			<td><a href=\"https://www.bdstall.com/chopper-slicer-appliance/\">Chopper</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>Status</th>\r\n			<td>In Stock</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Updated</th>\r\n			<td>3 days ago</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Seller Location</th>\r\n			<td>Dhaka, Bangladesh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-17 23:47:03', '2023-06-10 23:31:13'),
(9, 'Analog-Digital Waterproof Original Watch AEQ-110BW-9AV', 'AEQ-110BW-9AV', 'single', 2, NULL, NULL, '4870.00', '5490.00', NULL, 'AEQ-110BW-9AV_l1671343787.jpg', NULL, NULL, '<p>Function</p>\r\n\r\n<ul>\r\n	<li>10-Year Battery Life</li>\r\n	<li>100-Meter Water Resistance</li>\r\n	<li>World Time</li>\r\n	<li>Telememo 30</li>\r\n	<li>1/100-Second Stopwatch</li>\r\n	<li>Alarms</li>\r\n	<li>Resin Glass</li>\r\n	<li>Case-Bezel Material: Resin</li>\r\n	<li>Resin Band</li>\r\n	<li>World Time</li>\r\n	<li>Countdown Timer</li>\r\n	<li>3-Daily Alarms with-1 Snooze Alarm</li>\r\n	<li>Hourly Time Signal</li>\r\n	<li>Full Auto-Calendar</li>\r\n	<li>12/24-Hour Format</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;30 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 10 Years</li>\r\n	<li>Size of Case: 52.2&times;46.6&times;16.6 mm</li>\r\n	<li>Total Weight: 49g</li>\r\n	<li>True International&nbsp;Warranty/Guaranty&nbsp;1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', NULL, NULL, 'fixed', '4690.00', '800.00', '800.00', 1, 1, 0, '2022-12-18 12:09:47', '2023-06-10 23:31:21'),
(10, 'Multifunction Scissors Professional Chicken/Fish Cutter', NULL, 'single', 5, NULL, NULL, '1080.00', '1690.00', NULL, '4c98c8ebc1b8c5ef379759dcfd5a11b31671344008.jpg', NULL, NULL, '<p><img src=\"https://ae01.alicdn.com/kf/S5ad71836013c4e76b98b8fde9ef4f145B.jpg\" /><img src=\"https://ae01.alicdn.com/kf/S24174b30fb764e489be50ccbf7f353f19.jpg\" /><img src=\"https://ae01.alicdn.com/kf/Sa768f68938aa4f07b068509597f720cew.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:13:28', '2023-06-10 23:31:37'),
(11, 'Metal Fashion Original Watch MTP-1314SG-1AV', 'MTP-1314SG-1AV', 'single', 2, NULL, NULL, '4900.00', '5700.00', NULL, 'MTP-1314SG-1AV_l1671344077.jpg', NULL, NULL, '<h2>Description</h2>\r\n\r\n<p>Function</p>\r\n\r\n<ul>\r\n	<li>50-Meter Water Resistance</li>\r\n	<li>Date Display at 3 O&rsquo;clock</li>\r\n	<li>A Simple, Easy-to-Use Design</li>\r\n	<li>Mineral Glass</li>\r\n	<li>Case-Bezel: Ion Plated</li>\r\n	<li>Stainless Steel Band</li>\r\n	<li>Triple-Fold Buckle</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;20 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 3 Years</li>\r\n	<li>Size of Case: 50&times;44.9&times;9.4mm</li>\r\n	<li>Total Weight: 126g</li>\r\n	<li>True International Warranty/Guaranty 1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:14:37', '2023-06-10 23:31:48'),
(12, 'Multifunctional Original Watch MTP-1374L-1AV', 'MTP-1374L-1AV', 'single', 2, NULL, NULL, '5200.00', '6000.00', NULL, 'MTP-1374L-1AV_l1671344321.jpg', NULL, NULL, '<p>Function</p>\r\n\r\n<ul>\r\n	<li>50-Meter Water Resistance</li>\r\n	<li>Day and Date Indicator</li>\r\n	<li>Genuine Leather Band</li>\r\n	<li>Mineral Glass</li>\r\n	<li>Case-Bezel: Ion Plated</li>\r\n	<li>Regular Timekeeping</li>\r\n	<li>Accuracy: &plusmn;20 Seconds/Month</li>\r\n	<li>Approx. Battery Life: 3 Years</li>\r\n	<li>Size of Case: 47&times;43.5&times;10.4 mm</li>\r\n	<li>Total Weight: 66g</li>\r\n	<li>True International Warranty/Guaranty 1-year.</li>\r\n	<li>Brand New CASIO.</li>\r\n</ul>', '<p>Function</p>\r\n\r\n<ul>\r\n	<li>50-Meter Water Resistance</li>\r\n	<li>Day and Date Indicator</li>\r\n	<li>Genuine Leather Band</li>\r\n	<li>Mineral Glass</li>\r\n	<li>Case-Bezel: Ion Plated</li>\r\n</ul>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:18:41', '2023-06-10 23:32:50'),
(13, 'Garlic Press Manual Garlic Mincer Chopping Garlic Tools', NULL, 'single', 5, NULL, NULL, '320.00', '670.00', NULL, 'c80c2675adbed59aa0be051f403829ef1671344344.jpg', NULL, NULL, '<p><img alt=\"রসুন সরঞ্জাম - Buy রসুন সরঞ্জাম at Best Price in Bangladesh |  www.daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/87093095aa88ef7776907eb64f5b780b.jpg\" /></p>\r\n\r\n<p><img alt=\"Hot Sale] Stainless Steel Garlic Press Manual Garlic Mincer Chopping Garlic  Tools Curve Fruit Vegetable Tools Kitchen Gadgets | Lazada PH\" src=\"https://lzd-img-global.slatic.net/g/p/4d51b435f37c0d8fb10448eb1cf9bfa7.jpg_720x720q80.jpg_.webp\" /><img alt=\"Stainless Steel Garlic Press Manual Garlic Mincer Crusher Garlic Grater Chopping  Garlic Tools Vegetable Tools Kitchen Gadget - Peeling Garlic - AliExpress\" src=\"https://ae01.alicdn.com/kf/H90a06000793944b2925fb04d1747d3f3i/Stainless-Steel-Garlic-Press-Manual-Garlic-Mincer-Crusher-Garlic-Grater-Chopping-Garlic-Tools-Vegetable-Tools-Kitchen.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:19:04', '2023-06-10 23:33:01'),
(14, 'Strap Fashion Original Watch MTP-B105BL-1AV', 'MTP-B105BL-1AV', 'single', 2, NULL, NULL, '6500.00', '7680.00', NULL, 'MTP-B105BL-1AV1671344477.jpg', NULL, NULL, '<h1>Strap Fashion Original Watch MTP-B105BL-1AV</h1>\r\n\r\n<p><img alt=\"\" src=\"http://www.faanush.com/wp-content/uploads/2022/09/MTP-B105BL-1AV.jpg\" style=\"height:600px; width:600px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:21:17', '2023-06-10 23:33:13'),
(15, 'Multi-function Vegetable Peeler', NULL, 'single', 5, NULL, NULL, '190.00', '390.00', NULL, '525f0f2ac360e6d14dd6a5615a8debfd1671344584.jpg', NULL, NULL, '<p><img alt=\"Stainless Steel Multi-function Vegetable Peeler &amp; amp Julienne Cutter  Julienne Peeler Potato Carrot Grater Kitchen Tool: Buy Online at Best  Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/0bf5232b0268455357d7dd9d0a043be1.jpg\" /></p>\r\n\r\n<p><img alt=\"Stainless Steel Multi-function Vegetable Double Peeler Cutter Julienne Peeler  Potato Carrot Grater Kitchen Tool: Buy Online at Best Prices in Bangladesh  | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/28942018aac3811457777242baf9a6db.jpg\" /></p>\r\n\r\n<p><img alt=\"Stainless Steel Multi-function Vegetable Double Peeler Cutter Julienne Peeler  Potato Carrot Grater Kitchen Tool: Buy Online at Best Prices in Bangladesh  | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/d6ab21e3de23389be8635a7a9ae1beb4.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:23:04', '2023-06-10 23:33:26'),
(16, 'AGR – Luxury Aventadori waterproof watch', 'AGR', 'single', 2, NULL, NULL, '1450.00', '1950.00', NULL, 'b11671344750.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/10/b2.webp\" style=\"height:720px; width:720px\" /><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/10/b3.webp\" style=\"height:720px; width:720px\" /><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/10/b4.webp\" style=\"height:720px; width:720px\" /></p>', NULL, NULL, 'fixed', '1450.00', '500.00', '500.00', 1, 1, 0, '2022-12-18 12:25:50', '2023-06-10 23:33:35'),
(17, 'Fitness-centered Stainless Steel Omelet Mold Breakfast Maker', NULL, 'single', 5, NULL, NULL, '110.00', '280.00', NULL, '0afebbb0-d391-479e-9791-2a11d41c6f4e.b7928180072a33695e0ec132a1ab9a261671344773.jpeg', NULL, NULL, '<p><img alt=\"1PC Fitness centered Stainless Steel Omelet Mold Breakfast Maker Fried Egg  Device Five form Durable Molds Kitchen Accessories|Egg &amp; Pancake Rings| -  AliExpress\" src=\"https://ae01.alicdn.com/kf/H87208ecc91d3440497ba86a0159a9899u/1PC-Fitness-centered-Stainless-Steel-Omelet-Mold-Breakfast-Maker-Fried-Egg-Device-Five-form-Durable-Molds.jpg_Q90.jpg_.webp\" /><img alt=\"10pcs Fitness-centered Stainless Steel Omelet Mold Breakfast Maker Kitchen  Cooking Kit Fried Egg Device Durable Molds | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/7991dfb5-6ecf-4b9f-991e-d8ee585d2055.49c5eb5c12a591e0e79cc6f32053bf48.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /><img alt=\"10pcs Fitness-centered Stainless Steel Omelet Mold Breakfast Maker Kitchen  Cooking Kit Fried Egg Device Durable Molds | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/96b53c54-2ec3-4d16-8b46-027f5bded54c.40c55b49e525af2cac602267ed54b461.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /><img alt=\"Infancy Store - Amazing prodcuts with exclusive discounts on AliExpress\" src=\"https://ae04.alicdn.com/kf/H84b1645f651a45ab8bb56fe6a299c58c8.png_640x640.png\" /></p>', NULL, NULL, 'fixed', '230.00', '50.00', '50.00', 1, 1, 0, '2022-12-18 12:26:13', '2023-06-10 23:33:45'),
(18, 'DIY Plastic Dumplings Maker Mold', NULL, 'single', 5, NULL, NULL, '90.00', '190.00', NULL, 'beedcc3dee4d353f8ba2c51ee348ed631671344913.jpg', NULL, NULL, '<p>Plastica Polpetta Stampi Cibo Cinese Jiaozi Maker Pasta Presse Polpetta Pie Ravioli A Mano Da Cucina di Stampo Creativo FAI DA TE di Strumenti di</p>\r\n\r\n<p><img src=\"https://ae01.alicdn.com/kf/S0f0530ab637949b7bf330553b48a00a4K.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"3Pcs Dumpling Mold Ravioli Mould Dumpling Maker Pierogi Turnover Empanada  Dough Press Mould Maker Kitchen Gadgets | Walmart Canada\" src=\"https://i5.walmartimages.com/asr/412146cf-76b8-4fd2-ac9a-0acabae0fd8b_1.2058a45f7b0ef4e2e5234e456edf6cb3.jpeg?odnHeight=2000&amp;odnWidth=2000&amp;odnBg=ffffff\" /></p>', NULL, NULL, 'fixed', '160.00', '30.00', '30.00', NULL, 1, 0, '2022-12-18 12:28:33', '2023-06-10 23:33:57'),
(19, 'Business Class Golden chronograph watch NV02GL', 'NV02GL', 'single', 2, NULL, NULL, '2750.00', '3250.00', NULL, '760763efb7a3a1f5fc50f95db5f14d821671344916.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/11/760763efb7a3a1f5fc50f95db5f14d82.jpg\" style=\"height:750px; width:750px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/11/GL2.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://trustshop24.net/wp-content/uploads/2022/11/GL4.jpg\" style=\"height:868px; width:950px\" /></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:28:36', '2023-06-10 23:34:07'),
(20, 'Piping Cream Pastry Bag + 6 Stainless Steel Nozzle Set', NULL, 'single', 5, NULL, NULL, '190.00', '390.00', NULL, '95a6119dcd0eaf41eeb03a9aa3274b281671345162.jpg', NULL, NULL, '<p><strong>Product Description:</strong><br />\r\nName: Cake Decorating Nozzle Set<br />\r\nMaterial: Silicone+Stainless steel<br />\r\nSize :spend directly under high 3.3CM diameter 1.8CM.<br />\r\nThe piping bag length 31CM* diameter 17CM<br />\r\nPackage:1pcs Pastry bag + 6pcs Stainless steel Nozzle + 1pcs White converter<br />\r\n<br />\r\n<strong>Package Included:</strong><br />\r\n1 Set Cake Decorating Nozzle Set<br />\r\n<br />\r\n<strong>Please Note:</strong><br />\r\n-Due to hand measure, the size may have 1-2 cm error<br />\r\n-Due to Different Monitor, the color may have difference<br />\r\n-Due to long shipping, the item may damage in transit, if the item damage, pls contact us firstly immediately before leave feedback, thanks for your understanding.<br />\r\n<img src=\"https://ae01.alicdn.com/kf/H2eaf7932fb5e4afe939f398b7eee0773g.jpg?width=800&amp;height=60&amp;hash=860\" /><img src=\"https://ae01.alicdn.com/kf/Hca34723f2cbd4ad897c6390657a778d4r.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"6 Piece Cake Decorating Set Frosting Icing Piping Bag Tips with Steel  Nozzles, Reusable &amp; Washable: Buy Online at Best Prices in Bangladesh |  Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/f3a755a4f1b8d15269732cfecf01b380.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:32:43', '2023-06-10 23:34:32'),
(21, 'Business class golden watch, color guaranty and waterproof AY03GL', 'AY03GL', 'single', 2, NULL, NULL, '1970.00', '2450.00', NULL, '312237946_471533318376882_2887324828416828911_n1671345178.jpg', NULL, NULL, '<p><img src=\"https://trustshop24.net/wp-content/uploads/2022/11/312237946_471533318376882_2887324828416828911_n.webp\" /></p>', NULL, NULL, 'fixed', '2150.00', '300.00', '300.00', 1, 1, 0, '2022-12-18 12:32:58', '2023-06-10 23:34:42'),
(22, 'Creative orange juice squeezer lemon sprayer', NULL, 'single', 5, NULL, NULL, '90.00', '180.00', NULL, '9eab48ff2eb58da329d597a2c9f699991671345344.jpg', NULL, NULL, '<p><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/H87e0456cea204decbea3f5fac36ce27eS.jpg?width=800&amp;height=800&amp;hash=1600\" /><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/Hac2ad298cce04e69b90280c8ab2417175.jpg?width=582&amp;height=592&amp;hash=1174\" /><img alt=\"aeProduct.getSubject()\" src=\"https://ae01.alicdn.com/kf/H11f1e17cf52a46379bb4c1c626735b3fb.jpg?width=749&amp;height=713&amp;hash=1462\" /><img alt=\"2PCS Lemon Sprayer Gadget Creative Fruit Juice Squeezer Tool Easy Use &amp;  Clean Perfect Christmas Gift Kitchen Accessories - AliExpress\" src=\"https://ae01.alicdn.com/kf/He0076d7fa6da4bdcbe1c9b4056e6da98J/2PCS-Lemon-Sprayer-Gadget-Creative-Fruit-Juice-Squeezer-Tool-Easy-Use-Clean-Perfect-Christmas-Gift-Kitchen.jpg_.webp\" /></p>', NULL, NULL, 'fixed', '160.00', '20.00', '20.00', NULL, 1, 0, '2022-12-18 12:35:44', '2023-06-10 23:34:51'),
(23, 'vivo X70 Pro - Official', 'X70', 'single', 3, NULL, NULL, '65000.00', '70000.00', NULL, 'x701671345420.jpg', NULL, NULL, '<p>The latest<strong>&nbsp;Vivo X70 Pro - Official Price in Bangladesh</strong>&nbsp;starts from BDT 70,000. Vivo X70 Pro is now available in only&nbsp;<strong>one version, 12/256GB.&nbsp;</strong>Most exclusive features are-&nbsp;<strong>Android 11,</strong>&nbsp;<strong>Dual sim</strong>,&nbsp;<strong>6.56 inches</strong>&nbsp;display,&nbsp;<strong>Octa-core</strong>&nbsp;CPU,&nbsp;<strong>50MP+8MP+12MP+12MP</strong>&nbsp;Main camera,&nbsp;<strong>32MP</strong>&nbsp;Selfie camera and&nbsp;<strong>Li-Po 4450</strong>&nbsp;mAh battery. X70 pro price in Bangladesh is very legitimate at Apple Gadgets ltd. You can find the best cheap rate at Apple Gadgets Ltd.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Vivo X70 pro phone is one of the best vivo available on Bangladesh&#39;s market. It also has a very&nbsp;<strong>affordable price in Bangladesh.</strong>&nbsp;It is sturdy and offers&nbsp;<strong>Li-Po 4450 mAh</strong>, the longest battery life. So what are you waiting to do? Take advantage of the Vivo X70 Pro - Official for the&nbsp;<strong>lowest available price in BD.&nbsp;</strong>Order now.&nbsp;</p>', NULL, NULL, 'fixed', '69000.00', '1000.00', '1000.00', NULL, 1, 0, '2022-12-18 12:37:00', '2023-06-10 23:35:01'),
(24, 'USB Mini Handheld Fan', NULL, 'single', 18, NULL, NULL, '290.00', '490.00', NULL, '35917534-0a6e-408f-9833-fbb617c55a4e.d5771875e5b8a8d4b456f9093858ddd41671345607.jpeg', NULL, NULL, '<p><img src=\"https://ae01.alicdn.com/kf/S99b4ae6cc97f4e1bb012300752bb697cc.jpg\" /><img alt=\"USB Rechargeable Mini Hand Fan: Buy Online at Best Prices in Bangladesh |  Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/3b4c279d5c3a06300accaa54b7481f3e.jpg\" /><img alt=\"Mini USB Rechargeable Hand Fan: Buy Online at Best Prices in Bangladesh |  Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/32d39c95537455a4431959bbc0c83743.jpg\" /><img alt=\"Rechargeable Ultra Lightweight Handheld 3-Speed Mini USB Fan Price in  Bangladesh | Bdstall\" src=\"https://www.bdstall.com/asset/product-image/giant_172277.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:40:07', '2023-06-10 23:35:23'),
(25, 'iPhone SE 2022', 'se 3', 'single', 3, NULL, NULL, '42000.00', '47000.00', NULL, 'se31671345679.jpg', NULL, NULL, '<p>Storage:&nbsp; 64GB</p>\r\n\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/5020-58821.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:41:19', '2023-06-10 23:35:39'),
(26, 'VIS PRIME CEILING FAN', NULL, 'single', 18, NULL, NULL, '3200.00', '4800.00', NULL, 'crompton-fans-500x5001671345879.jpg', NULL, NULL, '<p><strong>Features:&nbsp;</strong><br />\r\n* 99.9% pure copper wire<br />\r\n* High quality electric silicon sheet<br />\r\n* High precisions chrome steel ball bearings<br />\r\n* Powder coating paint<br />\r\n* Whisper quiet motor<br />\r\n* Regulated/Dimmer control<br />\r\n* Ideal for year round operation&nbsp;<br />\r\n* Safety wire for preventing any unwanted accidents<br />\r\n* Aerodynamic blades allow high velocity and maximum air delivery throughout the room<br />\r\n<br />\r\n<strong>Technical Specifications:</strong><br />\r\n* Rated Voltage: 220-230 Volt<br />\r\n* Rated Power: 80 Watt<br />\r\n* Frequency: 50Hz<br />\r\n* Speed: 320 R.P.M.<br />\r\n* Air Delivery: 220 M&sup3;/Min</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:44:39', '2023-06-10 23:35:59'),
(27, 'iPhone 11', '11', 'single', 3, NULL, NULL, '52000.00', '56500.00', NULL, '111671345962.jpg', NULL, NULL, '<p><strong>Storage:&nbsp; &nbsp;64GB</strong></p>\r\n\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/iphone%2011%20price%20in%20bangladesh-3459.png\" style=\"height:462px; width:817px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><strong>iPhone 11</strong></h1>\r\n\r\n<p>iPhone 11 is a combination of everything but in a proper amount. It holds a completely new dual-camera system and a marvelous chipset.&nbsp; It has the toughest glass in a smartphone and day-long battery backup. All these features make the iPhone 11 pioneer among recent flagships.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Alluring Design</p>\r\n\r\n<p>Magnificent Camera</p>\r\n\r\n<p>Sustainable Battery Life</p>\r\n\r\n<p>Powerful Performance</p>\r\n\r\n<p>Top-notch Security</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>iPhone 11 - Overview</strong></h2>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Alluring Design</strong></h3>\r\n\r\n<p>iPhone 11 pro is a complete phone. Whether it comes to design or alluring colors. It packs a matte-finished back glass with perfectly fitted buttons. The round edge and the perfectly aligned dual camera make it even more beautiful. The design accomplishes with the colors. Black, Red, White, Yellow, Purple, Green every color makes the outlook different but still gorgeous.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Magnificent Camera</strong></h3>\r\n\r\n<p>Comes with two different cameras: Wide and Ultrawide. But both cameras do the same. Takes awesome photos.&nbsp; Ultrawide mode increases the field of view more than four times. You can get a top-notch quality video. Furthermore, the night mode is surprising, you will get the best low-light pictures ever.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Sustainable Battery Life</strong></h3>\r\n\r\n<p>Comes with an upgraded non-removable battery with great battery life. In exact point, Li-Ion 3110 mAh non-remove-able battery. Alongside the battery, it holds a fast wired charging system. You can charge it fully with a charging cable in less than&nbsp; 1.5 hours. You can also charge the phone with a Qi wireless charger.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Powerful Performance</strong></h3>\r\n\r\n<p>The phone is among the greatest performances ever thanks to the newest A13 bionic chipset with a neural engine. The chipset is a smart chip that can sustain every feature in a wiser approach in addition to being a powerful performer. Particularly in terms of battery life.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Top-notch Security</strong></h3>\r\n\r\n<p>Privacy concerns are a constant problem for iPhone. iPhone 11&nbsp; did not modify anything. Your personal information is constantly in your hands thanks to the iPhone. Safari&#39;s smart blocking capabilities stop trackers from monitoring your browsing. It displays the banned information from your Privacy Report. So, whether you browse the web or use apps on your iPhone, it is entirely safe. Face Id is the most reliable lock solution when it comes to locking phones.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Look over the specifications of the iPhone 11 in the &ldquo;Specification&rdquo; part.</p>', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:46:02', '2023-06-10 23:36:13'),
(28, 'iPhone 12 Mini', '12mini', 'single', 3, NULL, NULL, '54700.00', '60500.00', NULL, '12mini1671346173.jpg', NULL, NULL, '<h1><strong>iPhone 12 Mini</strong></h1>\r\n\r\n<p>Blast past fast- the motto of the iPhone 12 series shows the significant upgrade of the iPhone 12. Unlike the other 12 series phone,iPhone 12 mini comes with some extraordinary features. It holds a super powerful chip along with an advanced dual‑camera system. Built with a ceramic shield front that&#39;s tougher than any smartphone glass. It has a bright, beautiful OLED display. Altogether, every upgraded feature comes to iPhone 12 mini yet in a compact size.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>iPhone 12 Mini Key Features</strong></h2>\r\n\r\n<p>Impeccable Design</p>\r\n\r\n<p>Advanced &amp; Impressive Chipset</p>\r\n\r\n<p>Mega Battery Life</p>\r\n\r\n<p>Excellent Camera</p>\r\n\r\n<p>MagSafe Compatibility</p>\r\n\r\n<p>Water and Dust Resistance</p>\r\n\r\n<p>Substantial Security Options</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>iPhone 12 Mini Features Overview</strong></h2>\r\n\r\n<h3><strong>Compact in Size</strong></h3>\r\n\r\n<p>iPhone 12 mini is the smallest phone in iPhone 12 series. It has a 5.7-inch display but is full of advanced features.&nbsp; This phone is perfect for those who love compact-sized phones. Though the size is compact.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Here Comes Something Great</strong>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Performance</strong></p>\r\n\r\n<p>iPhone 12 mini fills with some extraordinary hardware and software. The hardware and software work together seamlessly. As a result, a great performance is coming out. iPhone holds an&nbsp; A14 Bionic chipset with the latest iOS and groundbreaking GPU. Overall this powerful and fast chipset with the latest updateable software delivers smooth performance in every aspect.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Battery Life</strong></p>\r\n\r\n<p>Comes with an upgraded non-removable battery with great battery life. In exact point, Li-Ion 2227 mAh non-remove-able battery. Alongside the battery, for the first time, iPhone introduced Magsafe, a 15W wireless charging system. You can also charge the phone with a 7.5W Qi wireless charger.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Display</strong></p>\r\n\r\n<p>iPhone 12 mini has a great Super Retina XDR display with wide color and haptic touch capacity. The iPhone 12 mini display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. It increases the viewable area. The display is so much strong and durable for its ceramic shield protection.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Design</strong></p>\r\n\r\n<p>iPhone 12 mini holds a simple yet gorgeous design. It features a&nbsp; completely new flat-edged design with aluminum edges. The phone is thinner and smarter than ever. The buttons are set in an ideal way and the camera is perfectly fitted in a great place. iPhone 12 mini is available in six colors: Blue, Green, Black, White, Product Red, and special Purple.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Camera</strong></p>\r\n\r\n<p>The phone feature a dual-camera setup with wide and ultra-wide lenses. It holds a more capable Smart HDR and improved Night mode with support for the selfie camera. Moreover, the camera introduces ultra-wide for the first time. The exclusive Night mode Time-lapse feature is added to the iPhone 12 mini camera. The camera is capable of recording Dolby Vision with 700 million colors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Security</strong></p>\r\n\r\n<p>iPhone always helps put you in control of your personal information. Safari intelligently helps block trackers from profiling you&rsquo;re browsing. It shows you the data that have been blocked in your Privacy Report. So you can browse or run apps on your iPhone with complete security.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Resistance</strong></p>\r\n\r\n<p>It holds an IP68-rated Splash, Water, and Dust Resistant. Apple calls it the Oops resistance. So you can use the phone however you want as well as where ever you want.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Some Extra Greatness Comes with these Extra Features</strong></h3>\r\n\r\n<p>The Long-listing features are not finished yet. Here is the name of some must mentionable features&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Solution for Everything&nbsp;</strong></p>\r\n\r\n<p>The hardware and software of the iPhone 12 mini work together seamlessly to bring everything with one tap. If you want to pair new AirPods with your iPhone 12 mini, pair it with a simple one‑tap setup. On the other hand, sharing photos, videos, or contacts with nearby friends become so easy. Just AirDrop lists their names onscreen, so you can choose with a tap.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Great Durability</strong></p>\r\n\r\n<p>iPhone 12 mini is designed for long-lasting. Superstrong material build quality and IP68 resistance make iPhone incredibly durable.&nbsp; Automatic iOS updates deliver new features and security enhancements that keep your iPhone up to date. That helps your iPhone to run beautifully for a long time</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:49:33', '2023-06-10 23:36:23'),
(29, 'Mini Wireless Earbuds Earphone', NULL, 'single', 18, NULL, NULL, '900.00', '1700.00', NULL, '9eaceae9888fb39ff7635d7d457d735c1671346183.jpg', NULL, NULL, '<p><img alt=\"M32B TWS Wireless Earbuds Price in Bangladesh - ShopZ BD\" src=\"https://ae03.alicdn.com/kf/H69ff3e1541ae4e01a76ca6a51786b1d2D.jpg\" /><img alt=\"M32B TWS Touch Bluetooth-compatible 5.1 Earphones Mini Wireless Earbuds  Earphone Deep Bass Sports Headset With Charging Box Call time: about 4  hours: Buy Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/44eaf05d27d7b03aa0ba0b754292833c.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:49:43', '2023-06-10 23:36:43'),
(30, 'ROG Phone 6', 'rog', 'single', 3, NULL, NULL, '124000.00', '126000.00', NULL, 'asus1671346347.jpg', NULL, NULL, '<p>Storage:&nbsp; &nbsp;16/512GB</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:52:27', '2023-06-10 23:36:55'),
(31, 'Asus Zenfone 9', 'Zenfone 9', 'single', 3, NULL, NULL, '73700.00', '78500.00', NULL, 'Asus-Zenfone-9-Midnight-Black-17501671346467.jpg', NULL, NULL, '<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/Asus-Zenfone-9-Price-in-Bangladesh-6108.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 12:54:27', '2023-06-10 23:37:09'),
(32, 'Smart Music Led Light Bulb With Remote', NULL, 'single', 18, NULL, NULL, '270.00', '570.00', NULL, '7d398ff4f0cab4d4ca29aa565f2743311671346492.jpg', NULL, NULL, '<ul>\r\n	<li>Product details of LED Bluetooth Smart Music Colored led Light Bulb With Remote Control&amp; Bluetooth Speaker RGB Changing Color Music Lamp Built-in Audio Speaker-Pass Folder</li>\r\n	<li>Item Name: Led Music Bulb With Bluetooth &amp; Speaker</li>\r\n	<li>Product Color: White</li>\r\n	<li>Light Color : Multi Colors</li>\r\n	<li>Light Source: LED</li>\r\n	<li>Compatible Product: Universal</li>\r\n	<li>Bluetooth Version: V4.2</li>\r\n	<li>Supported Profile: A2DP</li>\r\n	<li>Base Type: E27</li>\r\n	<li>Rated power: 12W</li>\r\n	<li>Speaker Power: 3W</li>\r\n	<li>Special Feature: Super Bass, Portable, Wireless</li>\r\n	<li>Voltage: 100-240V/50Hz-60Hz</li>\r\n	<li>Bluetooth distance: Around 10 meter</li>\r\n	<li>Remote controller : 24 keys type</li>\r\n	<li>Material : PC/ABShttps://youtu.be/Bwr_sB-ZCG4</li>\r\n	<li><img alt=\"Smart Led Remote Control Bluetooth Speaker Music Bulb - AC, RGB remote  control Bluetooth music bulb lamp, Led Music Bulb With Bluetooth Speaker -  multycolour: Buy Online at Best Prices in Bangladesh |\" src=\"https://static-01.daraz.com.bd/p/e08f90fe3772d1dffc4106f5332986b3.jpg\" /><img alt=\"Smart Speaker Bulb With Remote Control LED Light Smart Bulb: Buy Online at  Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/b25f87ef5bdd09e779e23292a2b7217c.jpg\" /></li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 12:54:52', '2023-06-10 23:37:32'),
(33, 'Oppo F21 Pro - Official', 'F21 Pro', 'single', 3, NULL, NULL, '26000.00', '28200.00', NULL, 'f211671346726.jpg', NULL, NULL, '<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/oppo-f21-pro-price-in-bangladesh-8557.png\" /></p>\r\n\r\n<h1><strong>Oppo F21 Pro Official</strong></h1>\r\n\r\n<p>When it&#39;s time to talk about Oppo F21 Pro, then the first thing coming out is it&rsquo;s ultimate self portrait taking capability. It&nbsp; comes with an astounding camera that takes the standard of selfie to a new level. Alongside camera features it also holds a system performance optimizer with a long battery backup.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All these things can be possible on a very friendly budget. So many dynamic camera modes surely gives you an opportunity&nbsp; to capture every precious moment.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The sleek outlook&nbsp; combines with alluring colors and makes the phone&nbsp; the prime of mid level.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 key factors that makes the difference</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Flagship Sony IMX709 Selfie Sensor</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>AI Portrait Enhancement</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Fiberglass Leather</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ultra Slim Retro Design</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>Specifications of Oppo F21Pro</strong></h2>\r\n\r\n<h3><strong>Selfie Master Camera</strong></h3>\r\n\r\n<p>The phone breaks the silence with its ultimate selfie camera. With flagship Sony IMX709 selfie sensor and several selfie modes take out of the world quality selfies in every light whether it is low or highlight.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The 64MP Triple camera gives you a great photography experience with its multiple camera features. You can capture your perfect moment with a 48MP wide main camera with great details&nbsp; and 2MP each depth and macro camera. Which helps to get precise and natural depth photos and also explore the miniature world.The dynamic night plus makes your night more dazzling by taking extraordinary night photos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Night Plus Mode Flash Snapshot Segment 1st Microlens Camera features make the photography totally impressive and blow your mind.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>32 MP HDR selfie camera with Sony IMX709 selfie sensor, AI Portrait Enhancement, Bokeh Flare Portrait features are changing the definition of selfie capable of taking share worthy crisp self portraits and makes your moment beautiful then ever.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Main Camera</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>64 MP(wide)</p>\r\n	</li>\r\n	<li>\r\n	<p>2 MP (macro)</p>\r\n	</li>\r\n	<li>\r\n	<p>2 MP(depth)</p>\r\n	</li>\r\n	<li>\r\n	<p>Night Plus Mode&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Flash Snapshot</p>\r\n	</li>\r\n	<li>\r\n	<p>Segment 1st Microlens Camera</p>\r\n	</li>\r\n	<li>\r\n	<p>1080p Video at 30fps</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Selfie Camera</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>32MP Selfie Camera</p>\r\n	</li>\r\n	<li>\r\n	<p>Sony IMX709 selfie sensor</p>\r\n	</li>\r\n	<li>\r\n	<p>AI Portrait Enhancement</p>\r\n	</li>\r\n	<li>\r\n	<p>Bokeh Flare Portrait</p>\r\n	</li>\r\n	<li>\r\n	<p>1080p Videography at 30fps</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Mind Blowing Performance</strong>&nbsp;</h3>\r\n\r\n<p>The phone holds an Octa core Qualcomm SM6225 Snapdragon 680 4G (6 nm) processor and PowerVR GM9446.These powerful elements boost the phones performance better than ever. You will feel the smooth performance when using the phone. The phone also serves it best while gaming and increases the gaming performance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Qualcomm SM6225 Snapdragon 680 4G (6 nm)</p>\r\n	</li>\r\n	<li>\r\n	<p>Octa-core&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>2.4GHz Kryo 265 Gold</p>\r\n	</li>\r\n	<li>\r\n	<p>Adreno 610</p>\r\n	</li>\r\n	<li>\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>ColorOS 12.1</p>\r\n	</li>\r\n	<li>\r\n	<p>8GB RAM</p>\r\n	</li>\r\n	<li>\r\n	<p>256 GB Storage</p>\r\n	</li>\r\n	<li>\r\n	<p>MicroSDXC support</p>\r\n	</li>\r\n	<li>\r\n	<p>UFS 2.2 Storage System</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>Luxurious Retro Design</strong>&nbsp;</h3>\r\n\r\n<p>The ultra thin design with exclusive dazzling finish with fiberglass leather attached retro look makes it more fascinating to the users. It is also fingerprint proof and wear resistant and the back is so shiny. The giant AMOLED display with punch hole pattern and under display optical fingerprint makes it smoother than ever.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The AI quad Cameras set in a fantastic fitted with a vector module.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The elegance of the phone&nbsp; is filled with its color. The discerning finish with 2 marvelous colors takes the elegance level to a new level. Cosmic Black&nbsp; and Sunset orange&nbsp; are available colors of Oppo F21 Pro .</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Luxurious Retro Design</p>\r\n	</li>\r\n	<li>\r\n	<p>Lavish Back with Fiberglass Leather</p>\r\n	</li>\r\n	<li>\r\n	<p>Well patterned body design</p>\r\n	</li>\r\n	<li>\r\n	<p>Vector Patterned Camera Module</p>\r\n	</li>\r\n	<li>\r\n	<p>Ultra Slim (7.5mm)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ultra Thin (175gm)</p>\r\n	</li>\r\n	<li>\r\n	<p>AMOLED Display with punch hole Pattern</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Mega Battery</strong></h3>\r\n\r\n<p>This Oppo phone contains a massive battery. 4500mAh in exact measurement. So you have not to worry about battery backup. Just go on with this long lasting battery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Because it also has a 33W fast charging that boosts your battery within minutes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Li-Po 4500 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Non-removable</p>\r\n	</li>\r\n	<li>\r\n	<p>33W Fast Charging&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Reverse Charging</p>\r\n	</li>\r\n</ul>', NULL, NULL, 'fixed', '26200.00', '2000.00', '2000.00', 1, 1, 0, '2022-12-18 12:58:46', '2023-06-10 23:37:46'),
(34, 'Wireless Bluetooth Speaker TF USB FM', NULL, 'single', 18, NULL, NULL, '270.00', '470.00', NULL, '4382efe82d3065217e6e876ce2a532a61671346862.jpg', NULL, NULL, '<ul>\r\n	<li>Multimedia speakers</li>\r\n	<li>Simple design</li>\r\n	<li>Sound Booster</li>\r\n	<li>Low noise amplifier design</li>\r\n	<li>Color: blue,balck,red,golden,silver.</li>\r\n	<li>Size: 38*38*47cm.</li>\r\n	<li>Material: Plastic.</li>\r\n	<li>TF card supporteded: Yes.</li>\r\n	<li>Battery type: Lithium polymer.</li>\r\n	<li>Battery Capacity: 300 mAh.(Build in)</li>\r\n	<li>Charging mode: Charging seat.</li>\r\n	<li>Major function: TF-card support,answer phone call,listen to music.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Best WS 887 Wireless Bluetooth Speaker TF USB FM AUX Portable Music Mini  Speaker For all: Buy Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/704992fc534a322c8d7eb60f922ea5a9.jpg\" /></p>\r\n\r\n<p><img alt=\"Portable Mini Bluetooth Wireless Speaker Stereo Music\" src=\"https://udvabony.com/wp-content/uploads/2021/05/Portable-Rechargeable-Mini-Bluetooth-Wireless-Speaker-WS-887-Stereo-Music-Speaker-Hand-Free-TF-Card-FM-Memory-Card-Bluetooth-USB-4-247x296.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 13:01:02', '2023-06-10 23:38:28'),
(35, 'Mega base Purse Sound Solid Wood USB Speaker', NULL, 'single', 18, NULL, 7, '490.00', '990.00', NULL, '9eb12f6ac9280fc41024e3e69a9a8f611671347175.jpg', NULL, NULL, '<ul>\r\n	<li>USB Power</li>\r\n	<li>3.55mm Audio Jack</li>\r\n	<li>Support All Audio Music</li>\r\n	<li>3D Muaic Sound Effect</li>\r\n	<li>1 pair</li>\r\n</ul>\r\n\r\n<p><img alt=\"Buy D092 Solid Wood USB Speaker Bass Stereo Desktop Laptop Sound Box  Subwoofer at affordable prices — free shipping, real reviews with photos —  Joom\" src=\"https://img.joomcdn.net/84ff2f94d656e19098d66d4aecac1d7879ec093a_original.jpeg\" /></p>\r\n\r\n<p><img alt=\"Buy D092 Solid Wood USB Speaker Bass Stereo Desktop Laptop Sound Box  Subwoofer at affordable prices — free shipping, real reviews with photos —  Joom\" src=\"https://img.joomcdn.net/94372e470fe7462e1242cb8befcde75ddafefb38_original.jpeg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:06:15', '2023-06-10 23:39:09'),
(36, 'HAVIT SK473 2.0 USB SPEAKER', NULL, 'single', 18, NULL, 7, '450.00', '950.00', NULL, 'Havit-HV-SK473-2.0-Channel-USB-Multimedia-PC-Speakers-11671347377.jpg', NULL, NULL, '<ul>\r\n	<li>BRAND : Havit</li>\r\n	<li>MODEL : HV-SK473</li>\r\n	<li>CONNECTIVITY : USB 2.0</li>\r\n	<li>TYPE : wired</li>\r\n	<li>Connecting : computer, CD player and MP3 player etc.</li>\r\n	<li>Output power : 3W*2(RMS)</li>\r\n	<li>Sensitivity：84db</li>\r\n	<li>Impedance：4&Omega;</li>\r\n	<li>Frequency response : 90 HZ-20KHZ</li>\r\n	<li>Power input : 5v (USB)</li>\r\n	<li><img alt=\"Havit HV-SK473 USB 2.0 Speaker Price in Bangladesh\" src=\"https://img.bdshop.com/ib/xggvZmyolk.jpg\" /></li>\r\n	<li><img alt=\"Havit HV-SK473 USB 2.0 Speaker Price in Bangladesh\" src=\"https://www.bdshop.com/pub/media/catalog/product/cache/eaf695a7c2edd83636a0242f7ce59484/h/a/havit_hv-sk473_usb_2.0_speaker.jpg\" /></li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:09:37', '2023-06-10 23:39:37');
INSERT INTO `products` (`id`, `name`, `sku`, `type`, `category_id`, `sub_category_id`, `type_id`, `purchase_price`, `sell_price`, `regular_price`, `image`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `is_recommended`, `user_id`, `is_stock`, `created_at`, `updated_at`) VALUES
(37, 'Toshiba Dynabook Satellite Pro C40-G-109 Celeron 5205U 14\" HD Laptop', 'C40-G-109', 'single', 4, NULL, NULL, '28700.00', '31500.00', NULL, '11671347560.jpg', NULL, NULL, '<h2>Specification</h2>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Processor</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Processor Brand</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Model</td>\r\n			<td>Celeron 5205U</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Genration</td>\r\n			<td>10th Gen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Frequency</td>\r\n			<td>1.90 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Core</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Thread</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Cache</td>\r\n			<td>2 MB</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Display</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Display Size</td>\r\n			<td>14 Inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Resolution</td>\r\n			<td>HD (1,366 x 768)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Touch Screen</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Features</td>\r\n			<td>16:9 LED Backlit, Non-reflective Anti-Glare</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Memory</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM Type</td>\r\n			<td>DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bus Speed</td>\r\n			<td>3200MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total RAM Slot</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Max RAM Capacity</td>\r\n			<td>Up to 16GB</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Storage</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Storage Type</td>\r\n			<td>M.2 SATA SSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage Capacity</td>\r\n			<td>128GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Extra M.2 Slot</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Graphics</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Graphics Model</td>\r\n			<td>Intel UHD Graphics</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics Memory</td>\r\n			<td>Shared</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Keyboard &amp; TouchPad</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Keyboard Type</td>\r\n			<td>Frameless black tile keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TouchPad</td>\r\n			<td>ClickPad</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Camera &amp; Audio</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>WebCam</td>\r\n			<td>HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speaker</td>\r\n			<td>Stereo speakers</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphone</td>\r\n			<td>Dual Mic</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Ports &amp; Slots</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Optical Drive</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Reader</td>\r\n			<td>1 &times; micro SD card slot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI Port</td>\r\n			<td>1 &times; HDMI-out (including 4K support)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3 Port</td>\r\n			<td>2 &times; USB 3.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C / Thunderbolt Port</td>\r\n			<td>1 &times; USB 3.1 Type-C Gen 1 port which supports Data transfer, Power Delivery and Display Port</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Network &amp; Connectivity</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>LAN</td>\r\n			<td>Gigabit Ethernet LAN (10BASE-T/100BASE-TX/1000BASE-T)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WiFi</td>\r\n			<td>802.11ac, agn (Dual Band) AC CM251</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Bluetooth 5.0</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Security</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Fingerprint Sensor</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Security Locker Slot</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Security Chip</td>\r\n			<td>Firmware Trusted Platform Module (fTPM)</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Software</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Pro</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Power</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Battery Type</td>\r\n			<td>2 cell lithium-ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery Capacity</td>\r\n			<td>45.6WHR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adapter Type</td>\r\n			<td>45W</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Physical Specification</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Dark Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>328 x 224.8 x 18.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>1.55 kg</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Other Features</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Other Features</td>\r\n			<td>Anti-bacterial paint coating, Japanese Industrial Standard Z 2801:2010 tested</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:12:40', '2023-06-10 23:39:51'),
(38, 'Acer TravelMate TMB 311-31-C3CD Celeron N4020 11.6\" HD Laptop', '311-31-C3CD', 'single', 4, NULL, NULL, '28900.00', '32500.00', NULL, '221671347704.jpg', NULL, NULL, '<h2>Specification</h2>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Basic Information</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Intel Celeron N4020 Processor (4M Cache, 1.10 GHz up to 2.80 GHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>11.6&quot; HD (1366 x 768) Display</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory</td>\r\n			<td>4GB DDR4 RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage</td>\r\n			<td>256GB SSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics</td>\r\n			<td>Intel UHD Graphics 600</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Intel SOC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Linux</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>48 Wh 3-cell Li-ion battery</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adapter</td>\r\n			<td>3-pin 45 W AC adapter</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio</td>\r\n			<td>Two built-in stereo speakers (1.5Wx2=3W)</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Input Devices</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Keyboard</td>\r\n			<td>Standard Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WebCam</td>\r\n			<td>HD Cam + Mic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Reader</td>\r\n			<td>1x microSD</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Network &amp; Wireless Connectivity</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>LAN</td>\r\n			<td>Gigabit Ethernet</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>IEEE 802.11a/b/g/n/ac</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Bluetooth 5.0</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Ports, Connectors &amp; Slots</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>USB (s)</td>\r\n			<td>2x USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>1 x HDMI</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Physical Specification</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Dimensions (W x D x H)</td>\r\n			<td>Height: 0.82&quot;<br />\r\n			Width: 11.6&quot;<br />\r\n			Depth: 8.5&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>3.09 lb</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color(s)</td>\r\n			<td>Black</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:15:04', '2023-06-10 23:40:04'),
(39, 'TP-Link Archer A6 AC1200 Wireless', NULL, 'single', 18, NULL, NULL, '3600.00', '4500.00', NULL, 'archer-a6-v3-02-500x5001671347775.jpg', NULL, NULL, '<p>AC120<img alt=\"TP-Link Archer A6 V3 AC1200 WiFi Router Price in Bangladesh\" src=\"https://www.startech.com.bd/image/cache/catalog/router/tp-link/archer-a6-v3/archer-a6-v3-01-500x500.jpg\" />0 Dual-Band Wi-Fi 867 Mbps at 5 GHz and 300 Mbps at 2.4 GHz band</p>\r\n\r\n<ul>\r\n	<li>MU-MIMO TechnologySimultaneously transfers data to multiple devices for 2&Atilde; faster performance</li>\r\n	<li>Boosted Coverage Four externalantennas equipped withBeamformingtechnology extend and concentrate the Wi-Fi signals</li>\r\n	<li>Access Point ModeSupports AP Mode totransformyour wiredconnection into wireless network</li>\r\n	<li>Easy SetupSet up your Wi-Fi in minutes with TP-Link Tether app.</li>\r\n	<li>#tp link router</li>\r\n</ul>\r\n\r\n<p>The TP-Link Archer A6 V3 AC1200 1200mbps MU-MIMO Mesh WiFi Router Dual-band router boosts Internet speed to 1200Mbps (300Mbps for 2.4GHz + 900Mbps for 5GHz), minimizing buffering and making it suitable for 4K streaming. Gigabit router has 4 Gigabit LAN ports, suitable for any internet plan and allowing you to connect your wired devices immediately. It includes four exterior antennas that use Beamforming technology to enhance and focus Wi-Fi transmissions. This router&#39;s MU-MIMO technology (5 GHz band) allows for fast speeds for many devices at the same time. Supports AP mode for converting your wired connection to a wireless network, making it an ideal home wireless router. WPA3, the most recent Wi-Fi security standard, adds additional features to increase cyber security on personal networks. TP-Link OneMesh- By adding a OneMesh Wi-Fi extender, you can easily build a Wi-Fi network with a single Wi-Fi name for seamless coverage across your house. Compatible with all Internet Service Providers, including AT&amp;T, Verizon, Xfinity, Spectrum, RCN, Cox, Century Link, and Frontier (A modem is required for most Internet Service Providers)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2022-12-18 13:16:15', '2023-06-10 23:40:25'),
(40, 'Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1\" HD Touch Laptop', 'D330', 'single', 4, NULL, NULL, '32600.00', '36500.00', NULL, '31671347993.jpg', NULL, NULL, '<h2>Description</h2>\r\n\r\n<h2>Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1&quot; HD Touch Laptop</h2>\r\n\r\n<p>The Ideapad D330 has computing power and all the fun and mobility of a lightweight tablet. From multitasking to connecting with friends online and streaming shows. This Ideapad D330 featured 4GB DDR4 RAM, 128GB eMMC and Intel UHD 600 Graphics, and Windows 10 Home. The Lenovo Ideapad D330 comes with 10.1&quot; (1280 x 800) HD IPS WXGA LED Antiscratch Brightness: 300nits, Aspect Ratio: 16:10, Color Gamut: 50% NTSC Display. This Lenovo IdeaPad D330 has an abundance of ports, including a USB-C 3.1 to help you charge other devices or transfer data at speeds up to 10 Gbps. Its display can generate lifelike clarity with 2S stereo Speakers Dolby Premium Audio is the perfect combination for entertainment. This Lenovo IdeaPad D330 10IGL comes with 1 year Limited Warranty (1 year for Battery and Adapter, Terms &amp; Conditions Apply As Per Lenovo)</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 13:19:53', '2023-06-10 23:44:23'),
(41, 'Tenda N301 Wireless N300 Router', NULL, 'single', 18, NULL, NULL, '1080.00', '1900.00', NULL, 'Tenda N301-1-500x5001671348023.jpg', NULL, NULL, '<p>DescriptionTenda N301 Wireless N300 Easy Setup Router Easy setup and enjoy a security wireless network in a minute,Wireless security encryption easily at a push of WPS buttonWork as client to connect ISP network and share the Internet,300Mbps wireless speed ideal for interruption sensitive applicationsStandard&amp;Protocol IEEE 802.3/3U IEEE 802.11n/g/b,Interface1 10/100Mbps WAN Port;3 10/100Mbps LAN PortsAntenna2 fixed 5dbi Omni Directional antenas,Internet Connection TypeDynamic IP,PPPOE,Static IP,L2TP,PPTPWork as client to connect ISP network and share the Internet, 300Mbps wireless speed ideal for interruption sensitive applicationsStandard&amp;Protocol IEEE 802.3/3U IEEE 802.11n/g/b, Interface1 10/100 Mbps WAN Port;3 10/100 Mbps LAN PortsAntenna-2 fixed 5dbi Omni Directional antenas,Internet Connection Type Dynamic IP,</p>\r\n\r\n<p><img alt=\"Tenda N301 Wireless-N300 Easy Setup Router 5-DBI\" src=\"https://dtt1c9id3txwq.cloudfront.net/assets/images/000/890/151/original/router-repetidor-tenda-inalambrico-n301-alto-rendimiento-D_NQ_NP_619937-MCO31007264118_062019-F.jpg?1590042948\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:20:23', '2023-06-10 23:44:39'),
(42, 'Asus Vivobook X515MA Celeron N4020 15.6\" HD Laptop', 'X515MA', 'single', 4, NULL, NULL, '37000.00', '41000.00', NULL, '4441671348216.jpg', NULL, NULL, '<h2>Specification</h2>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Processor</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Processor Brand</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Model</td>\r\n			<td>Celeron Processor N4020</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Frequency</td>\r\n			<td>1.10 GHz up to 2.80 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Core</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Thread</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Cache</td>\r\n			<td>4MB</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Display</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Display Size</td>\r\n			<td>15.6 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Resolution</td>\r\n			<td>HD (1366 x 768)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Touch Screen</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Features</td>\r\n			<td>16:9 aspect ratio</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Memory</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM Type</td>\r\n			<td>DDR4</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Storage</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Storage Type</td>\r\n			<td>HDD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage Capacity</td>\r\n			<td>1TB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDD RPM</td>\r\n			<td>5400RPM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Extra M.2 Slot</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supported SSD Type</td>\r\n			<td>M.2 NVMe</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Graphics</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Graphics Model</td>\r\n			<td>Intel UHD Graphics 600</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics Memory</td>\r\n			<td>Shared</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Keyboard &amp; TouchPad</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Keyboard Type</td>\r\n			<td>Backlit Chiclet Keyboard with Num-key</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TouchPad</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Camera &amp; Audio</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>WebCam</td>\r\n			<td>VGA Webcam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speaker</td>\r\n			<td>SonicMaster Built-in speaker</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphone</td>\r\n			<td>Built-in microphone</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Ports &amp; Slots</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Optical Drive</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI Port</td>\r\n			<td>1x HDMI 1.4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3 Port</td>\r\n			<td>2x USB 2.0 Type-A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C / Thunderbolt Port</td>\r\n			<td>1x USB 3.2 Gen 1 Type-C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headphone &amp; Microphone Port</td>\r\n			<td>1x 3.5mm Combo Audio Jack</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Network &amp; Connectivity</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>LAN</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WiFi</td>\r\n			<td>Wi-Fi 5(802.11ac)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Bluetooth 4.1 (Dual band) 1*1</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Security</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Fingerprint Sensor</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Security Chip</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Software</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 11 Home</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Power</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Battery Type</td>\r\n			<td>2-cell Li-ion (2S1P)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery Capacity</td>\r\n			<td>37WHrs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adapter Type</td>\r\n			<td>&oslash;4.0, 33W AC Adapter, Output: 19V DC, 1.75A, 33W, Input: 100-240V AC 50/60Hz universal</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Physical Specification</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Transparent Silver (BR763W-X515MA)<br />\r\n			Slate Gray (BR662W-X515MA)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>1.80 kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:23:36', '2023-06-10 23:44:50'),
(43, 'Tripod stand for mobile', NULL, 'single', 18, NULL, NULL, '380.00', '680.00', NULL, 'ab111d39ae95f878f55129e82c0f69fb1671348301.jpg', NULL, NULL, '<ul>\r\n	<li>Introduction:</li>\r\n	<li>Maximum working height: about 9 fit</li>\r\n	<li>Minimum working height: About 80CM</li>\r\n	<li>Material:Aluminum Alloy</li>\r\n	<li>Suitable item:used for reflector umbrella, softboxes, photo lighting,and some photo equipment</li>\r\n	<li>what&#39;s new on this Marked II version</li>\r\n	<li>1. new design of &quot;screw locking system</li>\r\n	<li>2. 1/4&quot; screw tip on the stem</li>\r\n	<li>Top Quality Aluminum Adjustable Light Stand is very good for professional photographer for their studio. It can be used for many purposes , strobe flash lights, backgrounds and with reflectors</li>\r\n	<li>Specifications:</li>\r\n	<li>Height is adjustable from 2ft 9in to 6ft 4in 5/8&rdquo; stem</li>\r\n	<li>Uses quick release levers, allowing full and smooth height adjustments</li>\r\n	<li>Footprint is 2ft 1in to provide extra stability</li>\r\n	<li>Made from alluminum alloy with a professional black satin finish</li>\r\n	<li>Folds up quickly and easily</li>\r\n	<li>2ft 5in long when closed</li>\r\n	<li>Max load of 3.2kg/7lbs</li>\r\n	<li>bubble and box packing.</li>\r\n	<li><img alt=\"6 Feet Tripod Stand 2.1 Mobile Stand Camera Stand with Mobile holder: Buy  Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/fe845dad297b4d12c04d626010101bc5.png\" /></li>\r\n</ul>\r\n\r\n<p><img alt=\"6 fit tripod stand for mobile 6 Fit Tripod Stand 6 fit long tripod for  mobile: Buy Online at Best Prices in Bangladesh | Daraz.com.bd\" src=\"https://static-01.daraz.com.bd/p/9a94b39be6cbb40a006200091b57b041.png\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 13:25:01', '2023-06-10 23:45:15'),
(44, 'HP 15s-du3611TU Core i3 11th Gen 15.6\" FHD Laptop', '15s-du3611TU', 'single', 4, NULL, NULL, '51300.00', '54500.00', NULL, '51671348538.jpg', NULL, NULL, '<h2>Specification</h2>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Processor</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Processor Brand</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Model</td>\r\n			<td>Core i3-1125G4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Genration</td>\r\n			<td>11th Gen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Frequency</td>\r\n			<td>2.00 GHz up to 3.70 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Core</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Thread</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Cache</td>\r\n			<td>8 MB</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Chipset</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Chipset Model</td>\r\n			<td>Intel Integrated SoC</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Display</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Display Size</td>\r\n			<td>15.6 Inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Resolution</td>\r\n			<td>FHD (1920 x 1080)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Features</td>\r\n			<td>Micro-edge<br />\r\n			Anti-glare<br />\r\n			250 nits<br />\r\n			45% NTSC</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Memory</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4 GB (1 x 4 GB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM Type</td>\r\n			<td>DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Removable</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bus Speed</td>\r\n			<td>2666 MHz</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Storage</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Storage Type</td>\r\n			<td>SATA HDD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage Capacity</td>\r\n			<td>1 TB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDD RPM</td>\r\n			<td>5400 rpm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Extra M.2 Slot</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Graphics</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Graphics Model</td>\r\n			<td>Intel UHD Graphics</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics Memory</td>\r\n			<td>Shared</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Keyboard &amp; TouchPad</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Keyboard Type</td>\r\n			<td>Natural silver keyboard with numeric keypad</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TouchPad</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Camera &amp; Audio</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>WebCam</td>\r\n			<td>HP True Vision 720p HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speaker</td>\r\n			<td>Dual speakers</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphone</td>\r\n			<td>Integrated dual array digital microphones</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Ports &amp; Slots</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Optical Drive</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Reader</td>\r\n			<td>1x multi-format SD media card reader</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI Port</td>\r\n			<td>1x HDMI 1.4b</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3 Port</td>\r\n			<td>2x SuperSpeed USB 3.2 Gen 1&times;1 Type-A 5Gbps signaling rate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C / Thunderbolt Port</td>\r\n			<td>1x SuperSpeed USB Type-C&reg; 5Gbps signaling rate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headphone &amp; Microphone Port</td>\r\n			<td>1x headphone/microphone combo</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Network &amp; Connectivity</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>LAN</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WiFi</td>\r\n			<td>Realtek RTL8821CE-M 802.11a/b/g/n/ac (1x1) Wi-Fi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Bluetooth 4.2</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Security</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Fingerprint Sensor</td>\r\n			<td>N/A</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Software</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 11 Home</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Power</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Battery Type</td>\r\n			<td>3-cell Li-ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery Capacity</td>\r\n			<td>41 Wh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Backup Time (Approx)</td>\r\n			<td>Up to 5 hours and 30 minutes ( Mixed Usage )<br />\r\n			Up to 7 hours and 15 minutes 9 Video Playback )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Adapter Type</td>\r\n			<td>45 W Smart AC power adapter</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"3\">Physical Specification</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>35.85 x 24.2 x 1.99 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>1.75 kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', 1, 1, 0, '2022-12-18 13:28:58', '2023-06-10 23:45:28'),
(45, 'HP DeskJet 2320 All-in-One Printer', NULL, 'single', 18, NULL, NULL, '7500.00', '9900.00', NULL, '2320-03-500x5001671355734.jpg', NULL, NULL, '<ul>\r\n	<li>Brand: HP</li>\r\n	<li>Model: HP DeskJet 2320 All-in-One Ink Printer</li>\r\n	<li>Functions: Print, Scan, Copy</li>\r\n	<li>Output Color Color</li>\r\n	<li>Print Speed (Black) 20ppm</li>\r\n	<li>Print Speed (Color) 16ppm</li>\r\n</ul>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>\r\n			<p>HP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>DeskJet 2320</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Print Speed</p>\r\n			</td>\r\n			<td>\r\n			<p>Print speed black: ISO: Up to 7.5 ppm Draft: Up to 20 ppm Print speed color: ISO: Up to 5.5 ppm Draft: Up to 16 ppm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>First page out (ready)</p>\r\n			</td>\r\n			<td>\r\n			<p>Black: As fast as 15 sec Color: As fast as 18 sec&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Resolution</p>\r\n			</td>\r\n			<td>\r\n			<p>4800 x 1200 dpi (Color), 1200 x 1200 dpi (Black)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Print Technology</p>\r\n			</td>\r\n			<td>\r\n			<p>HP Thermal Inkjet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Duplex Printing</p>\r\n			</td>\r\n			<td>\r\n			<p>Manual (driver support provided)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Duty cycle</p>\r\n			</td>\r\n			<td>\r\n			<p>Up to 1000 pages</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Interface</p>\r\n			</td>\r\n			<td>\r\n			<p>1 Hi-Speed USB 2.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Paper Sizes</p>\r\n			</td>\r\n			<td>\r\n			<p>A4; B5; A6; DL envelope MEDIA SIZES, CUSTOM: 89 x 127 to 215 x 279 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Types</p>\r\n			</td>\r\n			<td>\r\n			<p>Plain paper, Photo paper, Brochure paper</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Weight</p>\r\n			</td>\r\n			<td>\r\n			<p>3.42 kg</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Input Capacity</p>\r\n			</td>\r\n			<td>\r\n			<p>Input tray 60 sheet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Output capacity</p>\r\n			</td>\r\n			<td>\r\n			<p>Output tray 25 sheet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Monthly Print Volume</p>\r\n			</td>\r\n			<td>\r\n			<p>Up to 1000 pages</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Maximum Number of Copies</p>\r\n			</td>\r\n			<td>\r\n			<p>Up to 9 copies</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Printer Memory</p>\r\n			</td>\r\n			<td>\r\n			<p>128 Mb</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Printer Memory Type</p>\r\n			</td>\r\n			<td>\r\n			<p>DRAM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Storage</p>\r\n			</td>\r\n			<td>\r\n			<p>32 Mb Flash</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Card Slot / USB Host</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x USB 2.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Power Source/ Power Consumption</p>\r\n			</td>\r\n			<td>\r\n			<p>220 to 240 VAC, 50/60 Hz, 0.05 watts (off), 1.83 watts (ready), 0.83 watt (sleep), 0.05 watts (auto-off)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Supported Operating System&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Windows 7, 10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimensions</p>\r\n			</td>\r\n			<td>\r\n			<p>425.2 x 304.1 x 149.1 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Other</p>\r\n			</td>\r\n			<td>\r\n			<p>Print technology: HP Thermal Inkjet, Printer drivers included: HP PCL 3 GUI, Number of print cartridges: 2 (1 each black, tri-color), Scanner type: Flatbed, Scan file format: JPEG, TIFF, PDF, BMP, PNG, Bit depth: 24-bit, Copies maximum: Up to 9 copies, operating humidity: 20 - 80% RH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Warranty</p>\r\n			</td>\r\n			<td>\r\n			<p>1 Year</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Specifications of HP DeskJet 2320 All-in-One Ink Printer</h2>\r\n\r\n<ul>\r\n	<li>Brand\r\n	<p>HP</p>\r\n	</li>\r\n	<li>SKU\r\n	<p>259461702_BD-1213260908</p>\r\n	</li>\r\n	<li>USB Support\r\n	<p>Yes</p>\r\n	</li>\r\n	<li>Printer Connectivity Type\r\n	<p>USB</p>\r\n	</li>\r\n	<li>Input Tray Capacity (papers)\r\n	<p>51-100 Sheet</p>\r\n	</li>\r\n	<li>Mono/Color\r\n	<p>Mono &amp; Color</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>What&rsquo;s in the box</p>\r\n\r\n<p>HP DeskJet 2320 All-in-One Ink Printer &amp; 1 Set Cartridges</p>\r\n\r\n<p><img alt=\"HP DeskJet 2320 All-in-One Ink Printer – SmallBridge\" src=\"https://www.smallbridgebd.com/wp-content/uploads/2022/01/hp-deskjet-2320.png\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2022-12-18 15:28:54', '2023-06-10 23:45:53'),
(50, 'mens casio watch', 'w15', 'single', 2, 14, 1, '5000.00', '8000.00', NULL, 'c111675848821.jpg', NULL, NULL, '<p>Join us in celebrating the G-SHOCK 40th by choosing one of these spectacular metal-clad watches, which are inspired by the stones adventurers have used to navigate since ancient times. The special colors of the minerals ancient seafarers used to find their way are reproduced in these watch designs with forging, ion plating, and masking processes, giving each metal bezel a one-of-a-kind look. The bands are made with colored or translucent resin and are uniquely textured with hot-stamping and Garal color molding techniques.</p>', '<p>Countdown timer Measuring</p>\r\n\r\n<p>unit: 1 second Input</p>\r\n\r\n<p>range: 1 minute to 24 hours</p>\r\n\r\n<p>(1-minute increments and 1-hour increments)</p>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2023-02-08 15:33:41', '2023-06-10 23:46:33'),
(55, 'EBB-11 Hand bag -China', 'EBB-11', 'single', 15, NULL, NULL, '1050.00', '1650.00', NULL, 'bg pink1676668623.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 16cm</strong></p>\r\n\r\n<p><strong>*Width 22 cm</strong></p>\r\n\r\n<p><strong>*Thickness 10 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', '<p>Imported Ladies Hand Bag from China&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-18 03:17:03', '2023-02-18 03:17:03'),
(58, 'Imported Ladies Hand Bag from China EBB-01', 'EBB-01', 'variable', 15, NULL, 7, '500.00', '650.00', NULL, 'ebb11676816747.jpg', NULL, NULL, '<p><strong>Triangle bag<br />\r\n★Size<br />\r\n*Upper width 20cm<br />\r\n*lower width 20 cm<br />\r\n*height 13cm<br />\r\n*thickness 5cm<br />\r\n*shoulder strap 120 cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 20:25:47', '2023-02-20 00:34:02'),
(59, 'Imported Ladies Hand Bag from China EBB-02', 'EBB-02', 'variable', 15, NULL, 7, '650.00', '850.00', NULL, 'ebb21676817840.png', NULL, NULL, '<p><strong>Material PU leather<br />\r\n*Handle High 14cm<br />\r\n*Width 21cm<br />\r\n*thickness 8cm<br />\r\n*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(60, 'Imported Ladies Hand Bag from China EBB-03', 'EBB-03', 'variable', 15, NULL, 7, '750.00', '950.00', NULL, 'ebb31676818637.png', NULL, NULL, '<p><strong>Material PU leather<br />\r\n*High 13cm<br />\r\n*Width 21 cm<br />\r\n*thickness 8.5 cm<br />\r\n*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(61, 'Imported Ladies Hand Bag from China EBB-04', 'EBB-04', 'variable', 15, NULL, 7, '580.00', '850.00', NULL, 'ebb41676819189.png', NULL, NULL, '<p><strong>Material PU leather<br />\r\n*Handle High 15cm<br />\r\n*Width 20.5 cm<br />\r\n*thickness 8 cm<br />\r\n*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(62, 'Imported Ladies Hand Bag from China EBB-05', 'EBB-05', 'variable', 15, NULL, 7, '500.00', '650.00', NULL, 'ebb551676819861.jpg', NULL, NULL, '<p><strong>Material Synthetic Shootha</strong></p>\r\n\r\n<p><strong>*High 14cm<br />\r\n*Width 18 cm<br />\r\n*thickness 6 cm<br />\r\n*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(63, 'Imported Ladies Hand Bag from China EBB-06', 'EBB-06', 'variable', 15, NULL, 7, '650.00', '800.00', NULL, 'ebb61676820122.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 12cm</strong></p>\r\n\r\n<p><strong>*Width 21 cm</strong></p>\r\n\r\n<p><strong>*Thickness 7 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(64, 'Imported Ladies Hand Bag from China EBB-08', 'EBB-08', 'variable', 15, NULL, 7, '500.00', '700.00', NULL, 'ebb881676820400.png', NULL, NULL, '<p><strong>Material PU leather</strong></p>\r\n\r\n<p><strong>*High 14 cm</strong></p>\r\n\r\n<p><strong>*Width 21 cm</strong></p>\r\n\r\n<p><strong>*thickness 6 cm</strong></p>\r\n\r\n<p><strong>*Shoulder Strap 120cm.</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(65, 'Imported Ladies Hand Bag from China EBB-09', 'EBB-09', 'variable', 15, NULL, 7, '850.00', '1100.00', NULL, 'ebb991676820789.jpg', NULL, NULL, '<p><strong>Material PU leather</strong></p>\r\n\r\n<p><strong>*High 17.5cm</strong></p>\r\n\r\n<p><strong>*Width 23 cm</strong></p>\r\n\r\n<p><strong>*thickness 12 cm</strong></p>\r\n\r\n<p><strong>*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(66, 'Imported Ladies Hand Bag from China EBB-10', 'EBB-10', 'variable', 15, NULL, 7, '650.00', '850.00', NULL, 'ebb101676821250.png', NULL, NULL, '<p><strong>Material PU leather</strong></p>\r\n\r\n<p><strong>*High 17.5cm</strong></p>\r\n\r\n<p><strong>*Width 23 cm</strong></p>\r\n\r\n<p><strong>*thickness 12 cm</strong></p>\r\n\r\n<p><strong>*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(67, 'Imported Ladies Hand Bag from China EBB-11', 'EBB-11', 'variable', 15, NULL, 7, '1500.00', '1850.00', NULL, 'ebb11a1676825580.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 16cm</strong></p>\r\n\r\n<p><strong>*Width 22 cm</strong></p>\r\n\r\n<p><strong>*Thickness 10 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(68, 'Imported Ladies Hand Bag from China EBB-12', 'EBB-12', 'variable', 15, NULL, 7, '650.00', '850.00', NULL, 'ebb12c1676825839.jpg', NULL, NULL, '<p><strong>Material PU leather</strong></p>\r\n\r\n<p><strong>*High 15 cm</strong></p>\r\n\r\n<p><strong>*Width 24 cm</strong></p>\r\n\r\n<p><strong>*thickness 10 cm</strong></p>\r\n\r\n<p><strong>*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(69, 'Imported Ladies Hand Bag from China EBB-13', 'EBB-13', 'variable', 15, NULL, 7, '650.00', '900.00', NULL, 'ebb13a1676826055.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 15 cm</strong></p>\r\n\r\n<p><strong>*Upper Width 20 cm</strong></p>\r\n\r\n<p><strong>*Lower&nbsp; Width 22 cm</strong></p>\r\n\r\n<p><strong>*Thickness&nbsp; 8 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(70, 'Imported Ladies Hand Bag from China EBB-14', 'EBB-14', 'variable', 15, NULL, 7, '750.00', '1000.00', NULL, 'ebb14c1676826407.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 17cm</strong></p>\r\n\r\n<p><strong>*Width 28 cm</strong></p>\r\n\r\n<p><strong>*Thickness 5.5 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(71, 'Imported Ladies Hand Bag from China EBB-15', 'EBB-15', 'variable', 15, NULL, 7, '1000.00', '1250.00', NULL, 'ebb15a1676826608.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 16 cm</strong></p>\r\n\r\n<p><strong>*Width 24 cm</strong></p>\r\n\r\n<p><strong>*Thickness 13 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(72, 'Imported Ladies Hand Bag from China EBB-16', 'EBB-16', 'variable', 15, NULL, 7, '1250.00', '1500.00', NULL, 'ebb16c1676827007.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 17cm</strong></p>\r\n\r\n<p><strong>*Width 22cm</strong></p>\r\n\r\n<p><strong>*Thickness 10cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(73, 'Imported Ladies Hand Bag from China EBB-17', 'EBB-17', 'variable', 15, NULL, 7, '680.00', '900.00', NULL, 'ebb17a1676827235.png', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 15 cm</strong></p>\r\n\r\n<p><strong>*Width 10 cm</strong></p>\r\n\r\n<p><strong>*Thickness 8 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(74, 'Imported Ladies Hand Bag from China EBB-18', 'EBB-18', 'variable', 15, NULL, 7, '1550.00', '1700.00', NULL, 'ebb18a1676827793.jpg', NULL, NULL, '<p><strong>Material PU Leather</strong></p>\r\n\r\n<p><strong>*High 14cm</strong></p>\r\n\r\n<p><strong>*Width 24 cm</strong></p>\r\n\r\n<p><strong>*Thickness 9 cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(75, 'Imported Ladies Hand Bag from China EBB-19', 'EBB-19', 'variable', 15, NULL, 7, '1380.00', '1550.00', NULL, 'ebb19a1676827936.jpg', NULL, NULL, '<p><strong>Material PU leather (jelly)</strong></p>\r\n\r\n<p><strong>*High 15 cm</strong></p>\r\n\r\n<p><strong>*Width 24 cm</strong></p>\r\n\r\n<p><strong>*thickness 10 cm</strong></p>\r\n\r\n<p><strong>*Shoulder Strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:32:16', '2023-02-19 23:32:16'),
(76, 'Imported Ladies Hand Bag from China EBB-20', 'EBB-20', 'single', 15, NULL, 7, '450.00', '550.00', NULL, 'ebb20a1676828097.jpg', NULL, NULL, '<p><strong>Material - PU leather</strong></p>\r\n\r\n<p><strong>*Height 17cm</strong></p>\r\n\r\n<p><strong>*Widht 19cm</strong></p>\r\n\r\n<p><strong>*thickness 7cm</strong></p>\r\n\r\n<p><strong>*Shoulder strap 120cm</strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-19 23:34:57', '2023-02-19 23:34:57'),
(77, 'Smart Voice Command Control USB Light', 'usb light', 'single', 18, NULL, 7, '280.00', '680.00', NULL, '51cH2wbOLaL1677497155.jpg', NULL, NULL, '<ul>\r\n	<li>[Easy to use] No WIFI, no Bluetooth, built-in voice module, can be used directly</li>\r\n	<li>[Powerful function] It can change color, adjust brightness, turn on and off</li>\r\n	<li>[USB power supply] It can be powered by laptop, power bank and charger, and can be placed anywhere in the home</li>\r\n	<li>[Angle adjustment] Use soft materials to adjust the angle at will</li>\r\n	<li>Voice command: turn on the light, turn off the light, Dim the light, Brighten the light</li>\r\n	<li>Operation method: USB plug-in</li>\r\n	<li>Input: DC 5V Product</li>\r\n	<li>color: white Pillar: silicone hose</li>\r\n	<li>Applications: reading, learning, working, office, bedroom</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-27 17:25:55', '2023-02-28 01:29:39'),
(78, 'M90 PRO TWS Wireless Bluetooth 5.3 Headphones Stereo', 'M90 PRO', 'single', 18, NULL, 7, '520.00', '1070.00', NULL, 'Auriculares-TWS-originales-inal-mbricos-por-Bluetooth-5-2-auriculares-deportivos-con-Control-t-ctil-auriculares_41677498552.webp', NULL, NULL, '<p>1.Model:M90 pro</p>\r\n\r\n<p>2.Bluetooth specification:V5.2</p>\r\n\r\n<p>3.Bluetooth Profile:A2DP,AVRCP, HFP, HSP</p>\r\n\r\n<p>4.Working voltage:3.1V~4.2V</p>\r\n\r\n<p>5.Charging voltage:5V-1A</p>\r\n\r\n<p>6.Battery capacity of the headset: 40MAH</p>\r\n\r\n<p>7.Battery capacity of the storage box:1200MAH</p>\r\n\r\n<p>8.Transmission distance:&gt;10M</p>\r\n\r\n<p>9.Call time:About 4-5 hours</p>\r\n\r\n<p>10.Play time:About 4-5 hours</p>\r\n\r\n<p>11.Waterprof :IPX5</p>\r\n\r\n<p>12.Charging time of headset:1h</p>\r\n\r\n<p>13.Charging time of the Charging box:2h</p>\r\n\r\n<p>14.Support system:All Bluetooth devices and mobile phones</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(79, 'M35 TWS True Wireless Earbuds Stylish Wood Design', 'm35', 'single', 18, NULL, 7, '760.00', '1450.00', NULL, '3fd670f2bbe339f27b19743ffb713b371677499761.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h1_1677703195.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h2_1677703212.jpg\" style=\"height:698px; width:698px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Bluetooth specification : V5.3</li>\r\n	<li>&nbsp;Bluetooth Profile : A2DP, AVRCP, HFP, HSP</li>\r\n	<li>&nbsp;Working voltage : 3.1V~4.2V</li>\r\n	<li>&nbsp;Charging voltage : 5V-1A</li>\r\n	<li>&nbsp;Battery capacity of the headset : 50MAH</li>\r\n	<li>&nbsp;Battery capacity of the storage box : 2000MAH</li>\r\n	<li>&nbsp;Transmission distance : &gt;10M</li>\r\n	<li>&nbsp;Call time : About 4-5h</li>\r\n	<li>&nbsp;Play time : About 6h</li>\r\n	<li>&nbsp;Waterproof : IPX6</li>\r\n	<li>Charging time of headset : 1h</li>\r\n	<li>Charging time of the Charging box : 2h</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-27 18:09:21', '2023-03-02 02:40:16'),
(80, 'Aeropex Wireless Bone Conduction Headphone', 'bone', 'single', 18, NULL, 7, '550.00', '1090.00', NULL, 'download1677500848.jfif', NULL, NULL, '<p>SPECIFICATION</p>\r\n\r\n<p>Type:Bone Conduction Headphone</p>\r\n\r\n<p>Transmission Range: 10m</p>\r\n\r\n<p>Model:MSL-02</p>\r\n\r\n<p>Battery type:Lithium battery</p>\r\n\r\n<p>Voice Tips: Support</p>\r\n\r\n<p>Capacity: 150mAh Charging time:about 1-2 hours Colours:Black/Gray/Red/Blue</p>\r\n\r\n<p>Wireless version:V5.1</p>\r\n\r\n<p>Wireless mode:Handsfree/Headset/A2DP Radio frequency:2.4GHz</p>\r\n\r\n<p>Talking time:About 3-4H</p>\r\n\r\n<p>Music Play time: About 3-4H Standby time: About 120H</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-27 18:27:28', '2023-02-27 18:27:28'),
(81, 'Rechargeable Diamond Crystal Multicolor Table Lamp', NULL, 'single', 18, NULL, 7, '880.00', '1580.00', NULL, 'la1677528391.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/lc_1677528220.jpg\" style=\"height:627px; width:627px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Hf3416bbbc9444e79a53699f25e0a560bA_1677528347.jpg\" style=\"height:631px; width:631px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/H27da7e68363042dca144cff49d7b1783z_1677528242.jpg\" style=\"height:632px; width:632px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(82, 'P47 - Wireless Bluetooth Headphone', 'P47', 'single', 18, NULL, 7, '235.00', '520.00', NULL, 'eng_pl_Wireless-headphones-p47-bluetooth-mp3-microphone-3432_11677562611.jpg', NULL, NULL, '<ul>\r\n	<li>Bluetooth: Yes</li>\r\n	<li>Application: Gaming,Running,Sport</li>\r\n	<li>Charging Time.: 2h</li>\r\n	<li>Driver unit: 40mm</li>\r\n	<li>Frequency response: 50~20000Hz</li>\r\n	<li>Impedance: 32ohms</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 11:36:51', '2023-02-28 11:36:51'),
(83, 'T500 Plus Smart Watch', 'T500', 'single', 18, NULL, 7, '600.00', '1200.00', NULL, '7f4208c1a8d35feea7c1d1e79b80da611677563386.jpg', NULL, NULL, '<h2>T500 Plus Smart Watch</h2>\r\n\r\n<p>T500 Plus Smart Watch Men Women 1.54inch Full Touch Screen Bluetooth Call Waterproof Heart Rate Smartwatch For Android IOS Phone</p>\r\n\r\n<p><strong>Feature:</strong></p>\r\n\r\n<ul>\r\n	<li>1.75 inch HD fully fitted 2.5D arc TP,</li>\r\n	<li>T500 Plus Smart Watch Black Color is an IPS color screen, Ultra-High resolution,</li>\r\n	<li>280Ma High-Efficiency Battery</li>\r\n</ul>\r\n\r\n<p><strong>Specification:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Mechanism: No</li>\r\n	<li>SIM Card Available: No</li>\r\n	<li>System: None</li>\r\n	<li>GPS: No</li>\r\n	<li>Type: On Wrist</li>\r\n	<li>Compatibility: All Compatible</li>\r\n	<li>ROM: &lt;128MB</li>\r\n	<li>Rear Camera: None</li>\r\n	<li>Language: english</li>\r\n	<li>RAM: &lt;128MB</li>\r\n	<li>Waterproof Grade: Not Waterproof</li>\r\n	<li>Multiple Dials: Yes</li>\r\n	<li>Battery Capacity: 180-220mAh</li>\r\n	<li>Network Mode: None</li>\r\n	<li>CPU Model: MTK2502</li>\r\n	<li>Style: SPORT</li>\r\n	<li>Movement Type: Electronic</li>\r\n	<li>Screen Shape: Square</li>\r\n	<li>Resolution: 240*240</li>\r\n	<li>APP Download Available: No</li>\r\n	<li>Case Material: ALLOY</li>\r\n	<li>CPU Manufacturer: Mediatek</li>\r\n	<li>Display Size: 1.54inch</li>\r\n	<li>Band Material: Silica Gel</li>\r\n	<li>Application Age Group: Adult</li>\r\n	<li>Battery Detachable: No</li>\r\n	<li>Band Detachable: Yes</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 11:49:46', '2023-02-28 11:49:46'),
(84, 'T800 Pro Max Smart Watch', 'T800', 'single', 18, NULL, 7, '1000.00', '1800.00', NULL, '2022111410302445c48cce2e2d7fbd1677563894.png', NULL, NULL, '<p>Model Number: T800 Pro Max</p>\r\n\r\n<p>Place of Origin: Guangdong, China</p>\r\n\r\n<p>Certification: RoHS, CE, FCC, etc</p>\r\n\r\n<p>Warranty: 1 Year</p>\r\n\r\n<p>CPU: YC1133</p>\r\n\r\n<p>Flash: 32MB</p>\r\n\r\n<p>G-Sensor: Yes</p>\r\n\r\n<p>M-Sensor: Yes</p>\r\n\r\n<p>Bluetooth: 5.0</p>\r\n\r\n<p>LCD: 1.81 Inch</p>\r\n\r\n<p>Motor: Yes</p>\r\n\r\n<p>Microphone: Yes</p>\r\n\r\n<p>Side Key: Yes</p>\r\n\r\n<p>Power Amplifier: Yes</p>\r\n\r\n<p>Battery Capacity: 220mAh</p>\r\n\r\n<p>APP: Hiwatch Pro</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 11:58:14', '2023-02-28 11:58:14');
INSERT INTO `products` (`id`, `name`, `sku`, `type`, `category_id`, `sub_category_id`, `type_id`, `purchase_price`, `sell_price`, `regular_price`, `image`, `optional_image`, `description`, `body`, `feature`, `color`, `discount_type`, `after_discount`, `dicount_amount`, `discount`, `is_recommended`, `user_id`, `is_stock`, `created_at`, `updated_at`) VALUES
(85, 'Smart Watch Series-7 & ipods-12 Earbuds', 'Series-7', 'single', 18, NULL, 7, '1600.00', '3180.00', NULL, '771677564858.webp', NULL, NULL, '<p>7 Pro Max Smart Watch | Android &amp; IOS | Blood Pressure Sensor | Heart Rate Sensor | IP67 Waterproof | Smart Watch<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;IWO i7 Series 7 Smart watch<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Display Size: 1.75INCH<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Latest 2021 Model Series 7<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;SIM Card Available: No<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;System: Android Wear<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;System: Android OS<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Compatibility: All Compatible<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;ROM: &lt;128MB<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;RAM: &lt;128MB.<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Waterproof Grade: Life Waterproof<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Multiple Dials: Yes<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Battery Capacity: 180-220mAh<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;CPU Model: MTK2502D<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Resolution: 240*385<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Case Material: Alloy<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;CPU Manufacturer: MediaTek<br />\r\n<img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png\" />&nbsp;Band Detachable: Yes<br />\r\nIpods-12 Earbuds&nbsp;<br />\r\n1. Driver: 15mm<br />\r\n2. Impedance: 9 OHM<br />\r\n3. Bluetooth version: Bluetooth 5.0<br />\r\n4. Output power: 40mW;Battery capacity 35MAH , charging box is 300mh .<br />\r\n5. Bluetooth distance: 10 meters<br />\r\n6. Frequency response: 20-20000Hz<br />\r\n7. Operating voltage range: 3.0V-4.2V<br />\r\n8. Powerful noise de-noising circuit (active noise reduction)<br />\r\n9. Charging time about 1-2 hours .<br />\r\n10. Talk time is about 2-3 hours (a pair of earphones use together ),music time about 2-3 hours (a pair of earphones use together ) , Charging box can charge for the earphons about 3-5 times.</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:14:18', '2023-02-28 12:14:18'),
(86, 'T55 Plus Smartwatch Series 6', 'T55', 'single', 18, NULL, 7, '950.00', '1900.00', NULL, 't5551677565544.webp', NULL, NULL, '<ul>\r\n	<li>Product Type: Smartwatch</li>\r\n	<li>Appearance shape : square</li>\r\n	<li>Bracelet size : 260*20*2.3mm</li>\r\n	<li>Bracelet weight 31.8g</li>\r\n	<li>Main screen size : 1.75inch high-definition color screen</li>\r\n	<li>touch screen : Full screen touch</li>\r\n	<li>Screen Resolution : 240*240</li>\r\n	<li>CPU platform&nbsp; MT2502</li>\r\n	<li>FLASH : RAM128KB+ROM1M</li>\r\n	<li>Bluetooth : Support BLE4.0</li>\r\n	<li>Acceleration sensor : G-sensor</li>\r\n	<li>Photoelectric sensor : SC7R30</li>\r\n	<li>Battery type: built-in&nbsp; lithium battery</li>\r\n	<li>Battery capacity : 170mAh</li>\r\n	<li>Charging method magnetic charging</li>\r\n	<li>Function introduction heart rate, blood pressure monitoring, sports data collection,</li>\r\n	<li>&nbsp;sleep monitoring, sedentary reminder, with client APP, personalized settings,&nbsp;</li>\r\n	<li>synchronized sports data, call reminder, alarm clock, stopwatch,Music control ,&nbsp;</li>\r\n	<li>photo, find mobile phone, information push</li>\r\n	<li>Packing box size : 101*81*71mm</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(87, 'TW8 Ultra Smart Watch', 'TW8', 'single', 18, NULL, 7, '1800.00', '3200.00', NULL, 'tw881677565828.webp', NULL, NULL, '<table style=\"width:691px\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Device</th>\r\n			<th>TW8Ultra</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Shape</td>\r\n			<td>Square</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>49*44*14.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>50g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Colors</td>\r\n			<td>Black, Orange, Green</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>IPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>1.85 Inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Resolution</td>\r\n			<td>240*280</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Compatible Os</td>\r\n			<td>Android &amp; IOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sensors</td>\r\n			<td>\r\n			<ul>\r\n				<li>Heart rate Sensor</li>\r\n				<li>G Sensor</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>V5.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Belt Replaceable</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speaker</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphone</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Multi-sports mode</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Heart rate monitor</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blood Oxygen Monitor</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blood Pressure Monitor</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Waterproof</td>\r\n			<td>IP67 Waterproof</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Additional Features</td>\r\n			<td>\r\n			<ul>\r\n				<li>Bluetooth calling</li>\r\n				<li>Thermometer</li>\r\n				<li>Sedentary reminder</li>\r\n				<li>Sleep monitor</li>\r\n				<li>Alarm</li>\r\n				<li>Barometer</li>\r\n				<li>Brightness Adjusting &hellip;.etc</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery Capacity</td>\r\n			<td>190 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Normal usage</td>\r\n			<td>2-3 days</td>\r\n		</tr>\r\n		<tr>\r\n			<td>App name</td>\r\n			<td>SZOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Strap</td>\r\n			<td>Silicone</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(88, 'HW22 Pro  Smartwatch', 'HW22', 'single', 18, NULL, 7, '1450.00', '2800.00', NULL, 'hw221677566161.jpg', NULL, NULL, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Display</th>\r\n			<td>1.78 inch IPS screen 2.5D Curved</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>HS6621</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Internal Memory</th>\r\n			<td>128MB</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Connectivity</th>\r\n			<td>Bluetooth V5.2</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sensors</th>\r\n			<td>G-sensor, SC7R30 Heart Rate Sensor</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Battery</th>\r\n			<td>200mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Software</th>\r\n			<td>Support Android 5.0 and above, iOS 10.0 and above</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Other Features</th>\r\n			<td>Waterproof IP67<br />\r\n			2 Hours Charging Time<br />\r\n			Wireless Charging<br />\r\n			Zinc Alloy &amp; Plastic Material<br />\r\n			50g Weight<br />\r\n			45 x 38.3 x 12.8mm Dimension<br />\r\n			20mm Strap Dimension<br />\r\n			7 Hours Bluetooth Call</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(89, 'LP V9A WIRELESS SPEAKER (GOOD BASS)', 'LP V9A', 'single', 18, NULL, 7, '840.00', '1700.00', NULL, 'lp11677566693.jpg', NULL, NULL, '<p>Type: Bluetooth Speaker<br />\r\nConnection method: Bluetooth connection<br />\r\nInterface type: USB<br />\r\nBattery capacity: 1800<br />\r\nFrequency response range: 100HZ-20KHZ<br />\r\nSignal to noise ratio: &ge;75dB<br />\r\nPower supply mode: built-in lithium battery<br />\r\nChannel: 2.1<br />\r\nPlay time: 2 hours<br />\r\nExtended storage: 32GB<br />\r\nBluetooth protocol: 4.1<br />\r\nNumber of speakers: 2<br />\r\nEffective distance: 10 meters<br />\r\nFunction: card, radio<br />\r\nMode of operation: button<br />\r\nApplicable people: General<br />\r\nDisplay: Yes<br />\r\nPlay format: MP3<br />\r\nShell material: plastic<br />\r\nWhether to support APP: No<br />\r\nSupport format: U disk<br />\r\nSpeaker adjustment mode: button<br />\r\nIs there a radio function: there is<br />\r\nBox material: plastic</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(90, 'M10 TWS WIRELESS EARBUD', 'M10', 'single', 18, NULL, 7, '400.00', '790.00', NULL, 'M10-TWS-Wireless-Earbuds1677567467.jpg', NULL, NULL, '<p>Bluetooth version: 5.1</p>\r\n\r\n<p>Protocol: HFP 1.7 / HSP1.2 / A2DP 1 / AVRCP 1.6/ SPP1.2 / PBAP1.0</p>\r\n\r\n<p>Noise reduction version: CVC8.0</p>\r\n\r\n<p>Frequency range: 2402MHz ~ 2480MHz</p>\r\n\r\n<p>Working distance: 10m</p>\r\n\r\n<p>Charging input voltage and current: 5V</p>\r\n\r\n<p>Headphone battery capacity：50mAh</p>\r\n\r\n<p>Charging compartment battery capacity: 2000mAh</p>\r\n\r\n<p>Headphone charging time 2 hours</p>\r\n\r\n<p>Music playback time: 4-5 hours</p>\r\n\r\n<p>Talk time: 4-5 hours</p>\r\n\r\n<p><strong>Specifications:</strong>The latest Bluetooth V5.1 technology&nbsp;Using CVC8.0 digital noise reduction technology&nbsp;High capacity batteries are used for a long time&nbsp;IPX7 waterproof and sweatproof&nbsp;Binaural separation design&nbsp;Designed for sports</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 12:57:47', '2023-02-28 12:57:47'),
(91, 'M28 TWS Wireless Gaming Earbuds', 'M28', 'single', 18, NULL, 7, '530.00', '1050.00', NULL, 'm2821677567885.webp', NULL, NULL, '<ul>\r\n	<li>Product model: M28</li>\r\n	<li>Bluetooth version: V5.1</li>\r\n	<li>Battery life: about 5 hours</li>\r\n	<li>Standby time: about 180 hours</li>\r\n	<li>Impedance: 320</li>\r\n	<li>Rated input: 5V</li>\r\n	<li>Frequency response: 20Hz 20KHz</li>\r\n	<li>Transmission distance: about 10 m</li>\r\n	<li>Lighting ffect: colorful atmosphere light</li>\r\n	<li>Control method: smart Press</li>\r\n	<li>Noise reduction version: CVC8.0</li>\r\n	<li>Headset battery:50mAh</li>\r\n	<li>Charging case battery:2000mAh</li>\r\n	<li>Colour: black</li>\r\n	<li>Material: ABS</li>\r\n	<li>Size: 12 x 7.3 x 4.7CM</li>\r\n	<li>Speaker size: 8mm</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(92, 'Joyroom T03s PRO ANC Noise Cancellation Bluetooth Earbuds', 'T03s', 'single', 18, NULL, 7, '1650.00', '3300.00', NULL, 'jr21677568573.jpg', NULL, NULL, '<p>Specifications:</p>\r\n\r\n<p>Brand： JOYROOM</p>\r\n\r\n<p>Model: JR-T03s Pro</p>\r\n\r\n<p>Wearing method:in-ear</p>\r\n\r\n<p>Bluetooth: V5.0</p>\r\n\r\n<p>Earphone battery capacity:30mAh</p>\r\n\r\n<p>Charging case battery capacity:360mAh</p>\r\n\r\n<p>Music time:2 ~ 3h</p>\r\n\r\n<p>Call time:2 ~ 3h</p>\r\n\r\n<p>Charging time of charging case:1.3 hours</p>\r\n\r\n<p>Charging time of earphone:1.2 hours</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 13:16:13', '2023-02-28 13:16:13'),
(93, 'Multi functional Extendable Bluetooth Selfie Stick with Remote', 'N08S', 'single', 18, NULL, 7, '280.00', '650.00', NULL, 'n081677580010.jpg', NULL, NULL, '<p>Bluetooth Extendable Selfie Stick with Wireless Remote for Making , Vlog Videos and Tripod Stand Selfie Stick for Mobile and All Smart Phones Three-in-one Compact selfie stick with Wireless Remote Control and integrated with tripod, with led light , product length up to 750MM, the range of the wireless connection can be up to 10 meters. New experience great for Selfies, Group Photos, Face-time, Life-logging, Video shooting, Social live. Designed For: Mobile, Video Camera, Point &amp; Shoot Camera Load Capacity: 400 g Height Range: 185 mm - 750 mm Number of Leg Sections: 3 Material: ABS Plastic, steel</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-02-28 16:26:50', '2023-02-28 16:26:50'),
(94, 'Smart Voice Command Control USB Light-multimood', 'light03', 'single', 18, NULL, 7, '280.00', '680.00', NULL, '51GP2q35RhL._AC_UL600_SR600,600_1677690733.jpg', NULL, NULL, '<ul>\r\n	<li>[Easy to use] No WIFI, no Bluetooth, built-in voice module, can be used directly</li>\r\n	<li>[Powerful function] It can change color, adjust brightness, turn on and off</li>\r\n	<li>[USB power supply] It can be powered by laptop, power bank and charger, and can be placed anywhere in the home</li>\r\n	<li>[Angle adjustment] Use soft materials to adjust the angle at will</li>\r\n	<li>Voice command: turn on the light, turn off the light, Dim the light, Brighten the light</li>\r\n	<li>Operation method: USB plug-in</li>\r\n	<li>Input: DC 5V Product</li>\r\n	<li>color: white Pillar: silicone hose</li>\r\n	<li>Applications: reading, learning, working, office, bedroom</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(95, 'M18 Pro Flashlight Earbuds', 'M18', 'single', 18, NULL, 7, '750.00', '1550.00', NULL, '665414bc7b25a14fac70319449b68c331678004956.jpg', NULL, NULL, '<ul>\r\n	<li>M18 Pro Flashlight Earbuds Hifi Sound Wireless Bluetooth With Charging LCD And Magnet Power Bank Case</li>\r\n	<li>a lightweight, small, and waterproof body</li>\r\n	<li>Practical LED lamp that supports the SOS global distress signal</li>\r\n	<li>suitable for trekking and camping</li>\r\n	<li>support for bicycle lights includes</li>\r\n	<li>Perfect for bicycle supplemental lights</li>\r\n	<li>supports the ability to charge mobile devices</li>\r\n	<li>2000mAh lithium-ion rechargeable built-in power bank</li>\r\n	<li>circuit with intelligent integrated charge and discharge</li>\r\n	<li>Integrated Bluetooth speaker for TF and radio playback of MP3 songs</li>\r\n	<li>has a hands-free feature for making hands-free phone calls.Size: 125 x 35mm in diameter</li>\r\n</ul>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-05 14:29:16', '2023-04-05 19:18:03'),
(96, 'Elf Table Lamp', 'Elf', 'single', 18, NULL, 7, '360.00', '750.00', NULL, 'e31678011147.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/e1_1678011078.jpg\" style=\"height:865px; width:865px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/e2_1678011124.jpg\" style=\"height:865px; width:865px\" /></p>\r\n\r\n<p>Material: ABS</p>\r\n\r\n<p>&nbsp;Battery Capacity: 400mAh</p>\r\n\r\n<p>Voltage Input: 5V</p>\r\n\r\n<p>Voltage Output: 4V</p>\r\n\r\n<p>Power Input: 3W</p>\r\n\r\n<p>Power Output: 1.6W</p>\r\n\r\n<p>Input Current: 1A</p>\r\n\r\n<p>Output Current: 0.5A</p>\r\n\r\n<p>Input Frequency: 50Hz</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-05 14:46:22', '2023-04-05 19:17:56'),
(97, 'Rechargeable Diamond Crystal Multicolor Table Lamp-touch, Remote', 'tl01', 'single', 18, NULL, 7, '800.00', '1480.00', NULL, 'l11678014965.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l1_1678014918.jpg\" style=\"height:873px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l2_1678014935.jpg\" style=\"height:873px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/l6_1678014953.jpg\" style=\"height:813px; width:800px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-05 17:16:05', '2023-04-05 19:17:46'),
(98, 'WOW Skin Science Red Onion Black Seed Oil Shampoo', 'w1', 'single', 6, NULL, NULL, '200.00', '860.00', NULL, 'w21678227007.jpg', NULL, NULL, '<p>WOW Skin Science Red Onion Black Seed Oil Shampoo&nbsp;- 300ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Get strong and lustrous hair with WOW Skin Science Red Onion Black Seed Oil Shampoo. This shampoo may help tackle hair loss, scalp buildups and dull, weak hair. The shampoo, formulated with natural ingredients, helps strengthen hair follicles and clarify blocked roots. It is infused with red onion extract with strong antioxidant properties that help protect the scalp and hair, promotes blood circulation to the roots. Black seed oil rich in fatty acids nourishes scalp and roots. Sweet almond oil keeps the scalp and hair conditioned. It can be used to hydrate the roots and scalp and help make hair look healthy and lustrous. Red onion extract, black seed oil aid in rejuvenating tired scalp and weak hair. Suitable for all hair types, this shampoo cleanses and moisturizes your hair and scalp and helps to improve hair texture. This shampoo helps to revive your tired scalp and hair. Use this shampoo to help improve hair texture and strengthen the strands</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MADE IN INDIA</p>\r\n\r\n<p>Net Weight - 300ml</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-08 04:10:07', '2023-04-05 19:17:38'),
(99, 'Desktop smart multi-function lamp socket - with remote', 'lamp11', 'single', 18, NULL, 7, '950.00', '1650.00', NULL, 'S20cc60a5792b40b79041414e54bd20cfw1678351410.jpg', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S2f4bcc2627864365bb814fb148d23dbcJ_1678351269.jpg\" style=\"height:1201px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S42bcb4e7d2a04d479d0a2133b03e7d4at_1678351289.jpg\" style=\"height:1249px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S170c8fce862a41c6a52c39899e743bcfo_1678351320.jpg\" style=\"height:1506px; width:790px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/S260404064ec4489388ae63e43cf65cddO_1678351340.jpg\" style=\"height:1050px; width:790px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-09 14:43:30', '2023-04-05 19:17:28'),
(101, 'Hairmax Hair Growth Serum 10x more powerfull (3pc course )', 'Hairmax01', 'single', 11, NULL, NULL, '160.00', '650.00', NULL, 'h41678818110.webp', NULL, NULL, '<p>Hairmax Miracle Hair Growth Serum intensively stimulates hair growth 10x and prevents hair loss. Stimulates micro-circulation and thus nourishes and revitalizes hair follicles a root lifting viscosity that promotes visibly thicker hair. Formulated with the highest concentration of Hairmax unique Hair Growth Serum, this performance led, non-greasy serum is dermatologically tested for use on sensitive scalps and lightweight enough for everyday use. Results can be expected between 2 - 4 months, with daily use.</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/h3_1678818028.jpeg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Untitled_1679688211.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/Untitled1_1679688234.jpg\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-15 00:21:50', '2023-04-05 19:17:12'),
(103, 'Wireless Bluetooth Speaker - Torch-table lamp. 3 in 1', '3in1specker', 'single', 18, NULL, 7, '400.00', '800.00', NULL, 'l11679161480.jpg', NULL, NULL, '<p>Wireless Bluetooth Speaker - Torch-table lamp. 3 in 1</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-18 23:44:40', '2023-04-05 19:16:52'),
(104, 'Color changing bathroom-kitchen Faucet Head', NULL, 'single', 5, NULL, 7, '240.00', '750.00', '0.00', 'a21679517107.jpg', NULL, NULL, '<ul>\r\n	<li><strong>100% একদম নতুন এবং উচ্চ মানের।</strong></li>\r\n	<li><strong>ABS ক্রোমিং উপাদান, চমৎকার জারা প্রতিরোধের, টেকসই।</strong></li>\r\n	<li><strong>জলের স্রোতকে রূপান্তরিত করে আলোর সুন্দর জলপ্রপাত।</strong></li>\r\n	<li><strong>আলো জলের চাপ দ্বারা সক্রিয় হয় এবং জলের সাথে স্বয়ংক্রিয়ভাবে বন্ধ হয়ে যায়।</strong></li>\r\n	<li><strong>এটি চমত্কার করতে বাথরুম বা রান্নাঘরের জন্য আদর্শ।</strong></li>\r\n	<li><strong>নীল আলো এবং 7 টি রঙ জলের তাপমাত্রা দ্বারা প্রভাবিত হয় না।</strong></li>\r\n	<li><strong>1 রঙ: নীল আলো, জল প্রবাহিত হলে কলটি নীল রঙে আলোকিত হবে।</strong></li>\r\n	<li><strong>3 রঙ: রঙের পরিবর্তন আপনাকে জলের তাপমাত্রা মনে করিয়ে দেয়।</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 1) জল ঠান্ডা হলে জল নীল হয়ে যায় (তাপমাত্রা 31 ডিগ্রি সেলসিয়াসের নিচে)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 2) জল উষ্ণ হলে জল সবুজ হয়ে যায় (তাপমাত্রা 32&deg;C 43&deg;C)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 3) জল গরম হলে জল লাল হয়ে যায় (তাপমাত্রা 44-50 ডিগ্রি সেলসিয়াসের উপরে)</strong></li>\r\n	<li><strong>&nbsp; &nbsp; 4) তাপমাত্রা 50 ডিগ্রি সেলসিয়াসের উপরে হলে জল লাল হয়ে যায়।</strong></li>\r\n	<li><strong>যখন জলের তাপমাত্রা 51 ডিগ্রি সেন্টিগ্রেডের উপরে, লাল ফ্ল্যাশ আপনাকে সতর্ক করার জন্য স্ক্যাল্ড হওয়া এড়াতে হবে।</strong></li>\r\n	<li><strong>7 রঙ: জল প্রবাহিত হওয়ার পরে অনেক রঙ একই সময়ে এলোমেলোভাবে হালকা হবে।</strong></li>\r\n	<li><strong>(বিজ্ঞপ্তি: অনুগ্রহ করে মনে রাখবেন যে কাজের প্রক্রিয়া চলাকালীন গোলমাল স্বাভাবিক।)</strong></li>\r\n	<li><strong>(দ্রষ্টব্য: অনুগ্রহ করে ম্যানুয়াল পরিমাপের কারণে 1-3 মিমি ত্রুটির অনুমতি দিন এবং আলো এবং পর্দার কারণে সামান্য রঙের পার্থক্য।)</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/a2_1679517102.jpg\" style=\"height:1000px; width:1000px\" /></strong></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-23 02:31:47', '2023-04-05 19:14:01'),
(105, 'Belly Drainage Slimming Ginger Oil', NULL, 'single', 6, NULL, 7, '100.00', '550.00', '0.00', 'Untitled1679685116.jpg', NULL, NULL, '<p>বেলি ড্রেনেজ আদা এসেনশিয়াল অয়েল ডিটক্সিফাই করে এবং স্লিম করে, চর্বি কমায় এবং ত্বককে সতেজ করে।<br />\r\n<br />\r\n&nbsp;রক্ত সঞ্চালনকে উৎসাহিত করে এবং রক্তের স্থবিরতা দূর করে।<br />\r\n<br />\r\n&nbsp;ব্যবহার: পেট, পা, নিতম্ব, ঘাড় সহ শরীরের যেকোনো অংশে ব্যাবহার করতে পারবেন<br />\r\n<br />\r\n&nbsp;তেল শোষণ করতে সাহায্য করার জন্য আপনার আঙ্গুল দিয়ে ত্বকে ফ্লিক করুন।<br />\r\n<br />\r\n&nbsp;Belly Drainage Ginger Oil apply the product to belly button and let it absorb to achieve slimming effect. Fast fat burning and eliminate cellulite cell 10 times more effective than applying on skin. It is quite safe and effective, and it can be used on a daily basis.<br />\r\n<br />\r\n&nbsp;Belly button deep absorption to achieve slimming effectively.<br />\r\n<br />\r\n&nbsp;Improves blood, boost vital fluid circulation body to fit.<br />\r\n<br />\r\n&nbsp;Burn Fats naturally with no harm effect.<br />\r\n<br />\r\n&nbsp;Herbal formula that made from high quality need oil extract.<br />\r\n<br />\r\n&nbsp;How to Use:------<br />\r\n<br />\r\n&nbsp;Clean belly button carefully.<br />\r\n<br />\r\n&nbsp;Apply this product.<br />\r\n<br />\r\n&nbsp;Let your belly button absorbed.</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-25 01:11:56', '2023-04-05 19:15:09'),
(106, 'Original Facial Exfoliating Gel Soft Clean Weekly Peeling PAPAYA', NULL, 'single', 6, NULL, NULL, '180.00', '690.00', '0.00', 'p11679690315.jpg', NULL, NULL, '<p>Usage:</p>\r\n\r\n<p>Step 1: After cleansing face, take appropriate products smear on the face.</p>\r\n\r\n<p>Step 2: Along the skin texture and gently massage in circular motions for 1-2 minutes, until the dead skin off the dirt.</p>\r\n\r\n<p>Step 3: The rinse with water.</p>\r\n\r\n<p>Please Note:</p>\r\n\r\n<p>1.That due to lighting effect and computer color, the actual colors may be slightly different from the picture.</p>\r\n\r\n<p>2.If the skin wound, do not use this product in the wound, sensitive skin with caution.</p>\r\n\r\n<p>3.Please do a skin test before use, no irritation can use.</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p1_1679690177.jpg\" style=\"height:1600px; width:1200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p2_1679690213.PNG\" style=\"height:288px; width:775px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/p3_1679690238.png\" style=\"height:1024px; width:2666px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-03-25 02:38:35', '2023-04-05 19:14:13'),
(107, 'First Product', '3464', 'single', 3, NULL, 2, '12000.00', '13000.00', '0.00', 'itel-Vision-2-Plus-image1680687924.jpg', NULL, NULL, '<p>dsgdsg</p>', '<p>sgds</p>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-04-05 15:45:24', '2023-04-05 15:45:24'),
(108, 'Second Product', '8548', 'single', 4, NULL, 4, '40000.00', '42000.00', '0.00', 'pexels-nataliya-vaitkevich-62144761680688071.jpg', NULL, NULL, '<p>esgd</p>', '<p>gdsgds</p>', NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2023-04-05 15:47:51', '2023-04-05 15:47:51'),
(109, 'High quality 18k gold plated bling zircon shell pearl necklace N928', 'N928', 'single', 10, NULL, 7, '500.00', '540.00', '0.00', 'H847dced9230849479d4b59ccd109eac0a-430x4301681293662.webp', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(110, 'Couple Jewelry Stainless Steel Bracelet- Love Heart Lock', 'LOVE LOCKET', 'single', 10, NULL, 7, '500.00', '560.00', '0.00', 'L11681293826.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 1, '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(111, 'ম্যানুয়াল হ্যান্ড প্রেস জুসার বড় সাইজ', 'juicer', 'single', 5, NULL, 7, '480.00', '940.00', '0.00', 'j31683055001.webp', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/j4_1683054997.webp\" style=\"height:600px; width:600px\" /></p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2023-05-03 01:16:41', '2023-05-03 01:16:51'),
(112, 'Airplane Launcher Toys Soft Foam', 'Airplane Launcher', 'single', 18, NULL, 7, '550.00', '1150.00', '0.00', '207710850_max1683144145.jpg', NULL, NULL, '<p><span dir=\"auto\">ফোম প্লেন গান(কোড:PG1 : ১টি ফোম প্লেন &amp; ১টি বন্দুক সহজে নষ্ট হবে না। ঘরে এবং বাইরেও খেলতে পারবে। দেয়ালে লাগলেও নষ্ট হবে না সহজে, শরীর এ লাগলেও ইনজুরি হবে না । খুবই মজার আর নিরাপদ একটা খেলেন। (১ টি প্লেন + ১ টি বন্দুক ), প্লেন সাইজ- ১ ফিট এর বেশি। এক্সট্রা প্লেন আছে । </span></p>\r\n\r\n<p><span dir=\"auto\">Cash on delivery available (COD). শুধুমাত্র ঢাকার বাইরের হলে ডেলিভারী চার্জ অ্যাডভান্স দিতে হবে।</span></p>\r\n\r\n<p>Material:EVA+ABS</p>\r\n\r\n<p>Size:as shown</p>\r\n\r\n<p>includes: 1 set x Plane Toy</p>\r\n\r\n<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/71tYARDt8UL._AC_SY450__1683144131.jpg\" style=\"height:450px; width:474px\" /></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, 1, 0, '2023-05-04 02:02:25', '2023-05-04 02:10:04'),
(113, '3 in 1 rechargeable kitchen tool, chopper, blender beater', 'blender beater', 'single', 5, NULL, 7, '800.00', '1390.00', '0.00', 'a11683460235.webp', NULL, NULL, '<p><img alt=\"\" src=\"https://dailyshopbd.net/ck-images/5c1129a3-0ffe-489e-bc82-b636cbae24c7.__CR0,0,970,600_PT0_SX970_V1____1682608751_1683460215.jpg\" style=\"height:600px; width:970px\" /></p>', NULL, NULL, 'fixed', '1190.00', '200.00', '200.00', NULL, 1, 0, '2023-05-07 17:50:35', '2023-06-04 11:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'wa221671295601.jpg', '2022-12-17 22:46:41', '2022-12-17 22:46:41'),
(2, 4, 'l21671296208.jpg', '2022-12-17 22:56:48', '2022-12-17 22:56:48'),
(3, 4, 'l31671296208.jpg', '2022-12-17 22:56:48', '2022-12-17 22:56:48'),
(4, 4, 'l41671296208.jpg', '2022-12-17 22:56:48', '2022-12-17 22:56:48'),
(5, 5, 'Li11671296783.jpg', '2022-12-17 23:06:23', '2022-12-17 23:06:23'),
(6, 5, 'li21671296783.jpg', '2022-12-17 23:06:23', '2022-12-17 23:06:23'),
(7, 7, 'v21671297487.jpg', '2022-12-17 23:18:07', '2022-12-17 23:18:07'),
(9, 8, 'v221671299223.jpg', '2022-12-17 23:47:03', '2022-12-17 23:47:03'),
(10, 37, '111671347560.jpg', '2022-12-18 13:12:40', '2022-12-18 13:12:40'),
(11, 37, '1111671347560.jpg', '2022-12-18 13:12:40', '2022-12-18 13:12:40'),
(12, 38, '21671347704.jpg', '2022-12-18 13:15:04', '2022-12-18 13:15:04'),
(13, 38, '2221671347704.jpg', '2022-12-18 13:15:04', '2022-12-18 13:15:04'),
(14, 38, '22221671347704.jpg', '2022-12-18 13:15:04', '2022-12-18 13:15:04'),
(15, 40, '331671347993.jpg', '2022-12-18 13:19:53', '2022-12-18 13:19:53'),
(16, 40, '3331671347993.jpg', '2022-12-18 13:19:53', '2022-12-18 13:19:53'),
(17, 40, '33331671347993.jpg', '2022-12-18 13:19:53', '2022-12-18 13:19:53'),
(18, 40, '333331671347993.jpg', '2022-12-18 13:19:53', '2022-12-18 13:19:53'),
(19, 42, '41671348216.jpg', '2022-12-18 13:23:36', '2022-12-18 13:23:36'),
(20, 42, '441671348216.jpg', '2022-12-18 13:23:36', '2022-12-18 13:23:36'),
(21, 44, '551671348538.jpg', '2022-12-18 13:28:58', '2022-12-18 13:28:58'),
(22, 44, '5551671348538.jpg', '2022-12-18 13:28:58', '2022-12-18 13:28:58'),
(23, 44, '55551671348538.jpg', '2022-12-18 13:28:58', '2022-12-18 13:28:58'),
(24, 44, '555551671348538.jpg', '2022-12-18 13:28:58', '2022-12-18 13:28:58'),
(29, 50, 'c221675848821.jpg', '2023-02-08 15:33:41', '2023-02-08 15:33:41'),
(30, 50, 'c331675848821.jpg', '2023-02-08 15:33:41', '2023-02-08 15:33:41'),
(31, 55, 'bg pink1676668623.jpg', '2023-02-18 03:17:03', '2023-02-18 03:17:03'),
(32, 58, 'ebb111111676816747.jpg', '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(33, 58, 'ebb1111111676816747.jpg', '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(34, 58, 'ebb111676816747.jpg', '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(35, 58, 'ebb1111676816747.jpg', '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(36, 58, 'ebb11111676816747.jpg', '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(37, 59, 'ebb221676817840.png', '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(38, 59, 'ebb2221676817840.png', '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(39, 60, 'ebb331676818637.png', '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(40, 60, 'ebb3331676818637.png', '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(41, 60, 'ebb33331676818637.png', '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(42, 60, 'ebb333331676818637.png', '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(43, 61, 'ebb441676819189.png', '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(44, 61, 'ebb4441676819189.png', '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(45, 61, 'ebb44441676819189.png', '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(46, 61, 'ebb444441676819189.png', '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(47, 62, 'ebb51676819861.jpg', '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(48, 62, 'ebb5551676819861.jpg', '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(49, 63, 'ebb661676820122.jpg', '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(50, 63, 'ebb6661676820122.jpg', '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(51, 63, 'ebb66661676820122.jpg', '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(52, 63, 'ebb666661676820122.jpg', '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(53, 64, 'ebb81676820400.png', '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(54, 64, 'ebb8881676820400.png', '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(55, 65, 'ebb91676820789.jpg', '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(56, 65, 'ebb9991676820789.jpg', '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(57, 65, 'ebb99991676820789.jpg', '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(58, 65, 'ebb999991676820789.jpg', '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(59, 65, 'ebb9999991676820789.jpg', '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(60, 66, 'ebb10101676821250.png', '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(61, 66, 'ebb1010101676821250.png', '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(62, 66, 'ebb101010101676821250.png', '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(63, 67, 'ebb11b1676825580.jpg', '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(64, 67, 'ebb11c1676825580.jpg', '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(65, 67, 'ebb11d1676825580.jpg', '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(66, 68, 'ebb12a1676825839.jpg', '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(67, 68, 'ebb12b1676825839.jpg', '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(68, 68, 'ebb12d1676825839.jpg', '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(69, 69, 'ebb13b1676826055.jpg', '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(70, 69, 'ebb13c1676826055.png', '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(71, 70, 'ebb14a1676826407.jpg', '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(72, 70, 'ebb14b1676826407.jpg', '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(73, 70, 'ebb14d1676826407.jpg', '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(74, 72, 'ebb16a1676827007.jpg', '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(75, 72, 'ebb16b1676827007.jpg', '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(76, 72, 'ebb16d1676827007.jpg', '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(77, 73, 'ebb17b1676827235.png', '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(78, 73, 'ebb17c1676827235.png', '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(79, 73, 'ebb17d1676827235.png', '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(80, 73, 'ebb17e1676827235.jpg', '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(81, 74, 'ebb18b1676827793.jpg', '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(82, 74, 'ebb18c1676827793.jpg', '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(83, 74, 'ebb18d1676827793.jpg', '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(84, 74, 'ebb18e1676827793.jpg', '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(85, 75, 'ebb19b1676827936.jpg', '2023-02-19 23:32:16', '2023-02-19 23:32:16'),
(86, 76, 'ebb20b1676828097.png', '2023-02-19 23:34:57', '2023-02-19 23:34:57'),
(87, 76, 'ebb20c1676828097.png', '2023-02-19 23:34:57', '2023-02-19 23:34:57'),
(88, 77, 'lk-51677497155.webp', '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(89, 77, 'lk-5001677497155.jpg', '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(90, 77, 'lk-50001677497155.webp', '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(91, 77, 'lk-500001677497155.webp', '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(92, 77, 'lk-50000001677497155.webp', '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(93, 77, '6635eaae-dfd1-4eec-ac56-fe5ed208a848.__CR0,0,970,600_PT0_SX970_V1___1677497405.jpg', '2023-02-27 17:30:05', '2023-02-27 17:30:05'),
(94, 78, '9c08e883622898d27dd8ac6a4d226b341677498552.jpg', '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(95, 78, 'hqdefault1677498552.jpg', '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(96, 78, 'M90-Pro-TWS-True-Wireless-Earbuds1677498552.webp', '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(97, 78, 'ProductDetailsPackof1StyleCodeCHAKALISV0021FitRegularFabricLycraBlendSleeveHalfSleevePatternPrintedReversibleNoCollarButtonDownColorBlackFabricCareDrycleanonly_-2022-10-16T162350.1251677498552.webp', '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(98, 79, 'Bluetooth-5-2-M35-TWS-Wireless-Earphones-Headphones-Stereo-Noise-Reduction-Bass-Touch-Control-In-ear.jpg_220x220xz.jpg_1677499761.webp', '2023-02-27 18:09:21', '2023-02-27 18:09:21'),
(99, 81, 'H27da7e68363042dca144cff49d7b1783z1677528391.jpg', '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(100, 81, 'la1677528391.jpg', '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(101, 81, 'lb1677528391.jpg', '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(102, 81, 'lc1677528391.jpg', '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(103, 81, 'ld1677528391.jpg', '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(104, 82, '0185468_p47-wireless-bluetooth-folded-stereo-headphone-with-sd-card-slot_5501677562611.jpeg', '2023-02-28 11:36:51', '2023-02-28 11:36:51'),
(105, 82, '164182003617511_464971677562611.jfif', '2023-02-28 11:36:51', '2023-02-28 11:36:51'),
(106, 83, 'd31ae33f8f07d63898b37834a51ee70c1677563386.jpg', '2023-02-28 11:49:46', '2023-02-28 11:49:46'),
(107, 83, 'T500-Plus-Smart-Watch-500x500-550x5501677563386.jpg', '2023-02-28 11:49:46', '2023-02-28 11:49:46'),
(108, 84, 'e50ee3e096499996665671b4113186a21677563894.jpg', '2023-02-28 11:58:14', '2023-02-28 11:58:14'),
(109, 84, 'H65054f2bba3f494db3a2e185647d05f1b1677563894.jpg', '2023-02-28 11:58:14', '2023-02-28 11:58:14'),
(110, 85, '71677564858.jpg', '2023-02-28 12:14:18', '2023-02-28 12:14:18'),
(111, 85, '7771677564858.webp', '2023-02-28 12:14:18', '2023-02-28 12:14:18'),
(112, 86, 't51677565544.jpg', '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(113, 86, 't551677565544.jpg', '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(114, 86, 't55551677565544.jpg', '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(115, 87, 'tw81677565828.webp', '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(116, 87, 'tw8881677565828.jpg', '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(117, 87, 'tw88881677565828.webp', '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(118, 88, 'hw21677566161.jpg', '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(119, 88, 'hw2221677566161.webp', '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(120, 88, 'hw22221677566161.jpg', '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(121, 89, 'lp21677566693.webp', '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(122, 89, 'lp31677566693.jpg', '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(123, 89, 'lp41677566693.jpg', '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(124, 89, 'lp51677566693.webp', '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(125, 90, 'm101677567467.webp', '2023-02-28 12:57:47', '2023-02-28 12:57:47'),
(126, 91, 'm281677567885.jpg', '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(127, 91, 'M28-TWS-Wireless-Gaming-Earbuds1677567885.jpg', '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(128, 91, 'm2881677567885.jpg', '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(129, 91, 'm28221677567885.jpg', '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(130, 91, 'm28881677567885.jfif', '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(131, 92, 'jr11677568573.jpg', '2023-02-28 13:16:13', '2023-02-28 13:16:13'),
(132, 92, 'jr31677568573.png', '2023-02-28 13:16:13', '2023-02-28 13:16:13'),
(133, 93, 'n0881677580010.jpg', '2023-02-28 16:26:50', '2023-02-28 16:26:50'),
(134, 93, 'n08881677580010.jpg', '2023-02-28 16:26:50', '2023-02-28 16:26:50'),
(135, 94, 'l11677690733.jpg', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(136, 94, 'l21677690733.webp', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(137, 94, 'l31677690733.jpg', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(138, 94, 'l41677690733.webp', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(139, 94, 'l51677690733.webp', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(140, 94, 'l61677690733.webp', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(141, 94, 'l71677690733.jpg', '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(142, 79, 'h11677703216.jpg', '2023-03-02 02:40:16', '2023-03-02 02:40:16'),
(143, 79, 'h21677703216.jpg', '2023-03-02 02:40:16', '2023-03-02 02:40:16'),
(144, 95, '4-21678004956.jpg', '2023-03-05 14:29:16', '2023-03-05 14:29:16'),
(145, 95, '13424051_NjIwLTEyNDAtMGVkM2ExOTE4Yw1678004956.webp', '2023-03-05 14:29:16', '2023-03-05 14:29:16'),
(146, 95, 'download1678004956.jfif', '2023-03-05 14:29:16', '2023-03-05 14:29:16'),
(147, 96, 'S9addaf88bae14673832c2d623b02ff81F1678005982.jpg', '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(148, 96, 'S37c9ce80eb4048309431ea007c85afc2x1678005982.jpg', '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(149, 96, 'S3849d95c342b46b08319a3d5475a4acf01678005982.jpg', '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(150, 96, 'Sf8f6fa352eb44810a38aac1eeec408f8C1678005982.jpg', '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(151, 97, 'l21678014965.jpg', '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(152, 97, 'l31678014965.jpg', '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(153, 97, 'l41678014965.jpg', '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(154, 97, 'l51678014965.jpg', '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(155, 97, 'l61678014965.jpg', '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(156, 95, '47486d8ba53398dd1445000ac30c1ed61678223519.jpg', '2023-03-08 03:11:59', '2023-03-08 03:11:59'),
(157, 95, 'e111678223519.jpg', '2023-03-08 03:11:59', '2023-03-08 03:11:59'),
(158, 95, 'e221678223519.jpg', '2023-03-08 03:11:59', '2023-03-08 03:11:59'),
(159, 95, 'images1678223519.jpg', '2023-03-08 03:11:59', '2023-03-08 03:11:59'),
(160, 98, 'w11678227007.jpg', '2023-03-08 04:10:07', '2023-03-08 04:10:07'),
(161, 98, 'w31678227007.jpg', '2023-03-08 04:10:07', '2023-03-08 04:10:07'),
(162, 99, 'S42bcb4e7d2a04d479d0a2133b03e7d4at1678351410.jpg', '2023-03-09 14:43:30', '2023-03-09 14:43:30'),
(163, 99, 'S260404064ec4489388ae63e43cf65cddO1678351410.jpg', '2023-03-09 14:43:30', '2023-03-09 14:43:30'),
(164, 101, '81yShaI7DGL._AC_SL1500_1678818110.jpg', '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(165, 101, 'h21678818110.jpg', '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(166, 101, 'h31678818110.jpeg', '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(167, 101, 'h41678818110.webp', '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(171, 103, 'D_NQ_NP_892872-MLM43531756348_092020-O1679161480.jpg', '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(172, 103, 'D_NQ_NP_636188-MLM43531724769_092020-O1679161480.jpg', '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(173, 103, '390b817062787bb4a684aa19339211d91679161480.jpg', '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(174, 103, '7751878_db6755ac-69c7-47e1-98bd-eb647cd99c06_713_7131679161480.jpg', '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(175, 104, 'a11679517107.jpg', '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(176, 104, 'a21679517107.jpg', '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(177, 104, 'a31679517107.jpg', '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(178, 104, 'a41679517107.jpg', '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(179, 104, 'a51679517107.jpg', '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(180, 105, 'z11679685116.jpg', '2023-03-25 01:11:56', '2023-03-25 01:11:56'),
(181, 106, 'AA1679690315.png', '2023-03-25 02:38:35', '2023-03-25 02:38:35'),
(182, 106, 'hd16794753421679690315.png', '2023-03-25 02:38:35', '2023-03-25 02:38:35'),
(183, 106, 'images1679690315.jpg', '2023-03-25 02:38:35', '2023-03-25 02:38:35'),
(184, 109, 'P11681293662.webp', '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(185, 109, 'P21681293662.webp', '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(186, 109, 'P31681293662.webp', '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(187, 109, 'P41681293662.webp', '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(188, 110, 'L21681293826.jpg', '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(189, 110, 'L31681293826.jpg', '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(190, 110, 'l3-430x4301681293826.jpg', '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(191, 110, 'L41681293826.jpg', '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(192, 110, 'L51681293826.jpg', '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(193, 111, 'j11683055001.jpg', '2023-05-03 01:16:41', '2023-05-03 01:16:41'),
(194, 111, 'j21683055001.jpg', '2023-05-03 01:16:41', '2023-05-03 01:16:41'),
(195, 111, 'j41683055001.webp', '2023-05-03 01:16:41', '2023-05-03 01:16:41'),
(196, 112, '71tYARDt8UL._AC_SY450_1683144145.jpg', '2023-05-04 02:02:25', '2023-05-04 02:02:25'),
(197, 112, '207710850_max1683144145.jpg', '2023-05-04 02:02:25', '2023-05-04 02:02:25'),
(198, 112, '455591597_max1683144145.jpg', '2023-05-04 02:02:25', '2023-05-04 02:02:25'),
(199, 113, 'a21683460235.jpg', '2023-05-07 17:50:35', '2023-05-07 17:50:35'),
(200, 113, 'a31683460235.jpg', '2023-05-07 17:50:35', '2023-05-07 17:50:35'),
(201, 113, 'a41683460235.jpg', '2023-05-07 17:50:35', '2023-05-07 17:50:35'),
(202, 113, 'a51683460235.webp', '2023-05-07 17:50:35', '2023-05-07 17:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `review` decimal(4,0) DEFAULT 0,
  `user_id` mediumint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `message`, `name`, `review`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 12, 'Good Service', 'Abu bakkar', '5', 1, '2023-01-01 18:02:34', '2023-01-01 18:02:34'),
(2, 32, '981503', 'jafor jos', '5', 61, '2023-01-15 14:07:34', '2023-01-15 14:07:34'),
(3, 94, 'want to buy', 'Dr Munir', '4', 159, '2023-03-03 21:44:17', '2023-03-03 21:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` tinyint(4) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `variation_id` mediumint(10) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variation_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '0.00', '2022-12-17 07:33:13', '2023-03-11 15:59:20'),
(2, 3, 2, '-2.00', '2022-12-17 23:19:35', '2023-03-11 15:59:23'),
(3, 4, 3, '-2.00', '2022-12-17 23:20:04', '2023-03-11 15:59:29'),
(4, 5, 4, '-1.00', '2022-12-17 23:23:20', '2023-03-11 15:59:31'),
(5, 6, 5, '-1.00', '2022-12-17 23:23:42', '2023-03-11 15:59:33'),
(6, 7, 6, '0.00', '2022-12-17 23:24:11', '2023-03-11 15:59:09'),
(7, 9, 8, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(8, 10, 9, '-6.00', '2022-12-20 17:40:05', '2023-06-13 18:28:30'),
(9, 11, 10, '-1.00', '2022-12-20 17:40:05', '2023-06-13 18:28:30'),
(10, 12, 11, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(11, 13, 12, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(12, 14, 13, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(13, 15, 14, '100.00', '2022-12-20 17:40:05', '2023-06-13 18:14:05'),
(14, 45, 44, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(15, 44, 43, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(16, 43, 42, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(17, 42, 41, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(18, 41, 40, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(19, 40, 39, '-3.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(20, 39, 38, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(21, 34, 33, '-1.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(22, 33, 32, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(23, 32, 31, '0.00', '2022-12-20 17:40:05', '2023-06-13 18:14:05'),
(24, 31, 30, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(25, 30, 29, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(26, 29, 28, '-3.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(27, 28, 27, '-1.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(28, 27, 26, '-1.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(29, 26, 25, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(30, 25, 24, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(31, 24, 23, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(32, 23, 22, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(33, 22, 21, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(34, 21, 20, '-1.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(35, 19, 18, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(36, 17, 16, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(37, 16, 15, '0.00', '2022-12-20 17:40:05', '2023-03-11 15:59:06'),
(38, 58, 59, '10.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(39, 58, 60, '10.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(40, 58, 61, '10.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(41, 58, 62, '10.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(42, 59, 63, '10.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(43, 59, 64, '10.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(44, 59, 65, '10.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(45, 60, 66, '10.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(46, 60, 67, '10.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(47, 60, 68, '10.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(48, 60, 69, '10.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(49, 60, 70, '10.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(50, 61, 71, '10.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(51, 61, 72, '10.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(52, 61, 73, '10.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(53, 61, 74, '10.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(54, 61, 75, '10.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(55, 62, 76, '10.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(56, 62, 77, '10.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(57, 62, 78, '10.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(58, 63, 79, '10.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(59, 63, 80, '10.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(60, 63, 81, '10.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(61, 63, 82, '10.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(62, 63, 83, '10.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(63, 64, 84, '10.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(64, 64, 85, '10.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(65, 64, 86, '10.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(66, 65, 87, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(67, 65, 88, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(68, 65, 89, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(69, 65, 90, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(70, 65, 91, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(71, 65, 92, '10.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(72, 66, 93, '10.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(73, 66, 94, '10.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(74, 66, 95, '10.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(75, 66, 96, '10.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(76, 67, 97, '10.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(77, 67, 98, '10.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(78, 67, 99, '10.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(79, 67, 100, '10.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(80, 68, 101, '10.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(81, 68, 102, '10.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(82, 68, 103, '9.00', '2023-02-20 00:25:08', '2023-05-22 15:35:04'),
(83, 68, 104, '10.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(84, 69, 105, '10.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(85, 69, 106, '10.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(86, 69, 107, '10.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(87, 70, 108, '10.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(88, 70, 109, '10.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(89, 70, 110, '10.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(90, 71, 111, '10.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(91, 71, 112, '10.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(92, 71, 113, '10.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(93, 71, 114, '10.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(94, 71, 115, '10.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(95, 72, 116, '10.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(96, 72, 117, '10.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(97, 72, 118, '10.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(98, 72, 119, '10.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(99, 73, 120, '10.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(100, 73, 121, '10.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(101, 73, 122, '10.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(102, 73, 123, '10.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(103, 73, 124, '10.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(104, 74, 125, '10.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(105, 74, 126, '10.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(106, 74, 127, '10.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(107, 74, 128, '10.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(108, 74, 129, '10.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(109, 75, 130, '10.00', '2023-02-20 00:32:32', '2023-03-23 10:29:36'),
(110, 75, 131, '10.00', '2023-02-20 00:32:32', '2023-02-20 00:32:32'),
(111, 76, 132, '10.00', '2023-02-20 00:33:12', '2023-02-20 00:33:12'),
(112, 79, 135, '4010.00', '2023-02-27 18:28:47', '2023-02-28 16:31:01'),
(113, 80, 136, '4009.00', '2023-02-27 18:29:11', '2023-06-10 11:33:15'),
(114, 78, 134, '4010.00', '2023-02-27 18:29:45', '2023-02-28 16:31:01'),
(115, 77, 133, '123978.00', '2023-02-27 18:30:23', '2023-05-03 01:34:44'),
(116, 81, 137, '12000.00', '2023-02-28 02:07:06', '2023-05-03 01:34:43'),
(117, 92, 148, '4010.00', '2023-02-28 13:49:49', '2023-02-28 16:31:01'),
(118, 91, 147, '4010.00', '2023-02-28 13:50:07', '2023-02-28 16:31:01'),
(119, 90, 146, '4010.00', '2023-02-28 13:50:26', '2023-02-28 16:31:01'),
(120, 89, 145, '4007.00', '2023-02-28 13:50:47', '2023-06-11 19:57:12'),
(121, 88, 144, '4010.00', '2023-02-28 13:51:06', '2023-03-11 12:24:07'),
(122, 87, 143, '4010.00', '2023-02-28 13:51:25', '2023-03-04 03:01:16'),
(123, 86, 142, '14010.00', '2023-02-28 13:51:44', '2023-03-11 12:32:11'),
(124, 85, 141, '4010.00', '2023-02-28 13:52:00', '2023-02-28 16:31:01'),
(125, 84, 140, '4010.00', '2023-02-28 13:52:19', '2023-02-28 16:31:01'),
(126, 83, 139, '4019.00', '2023-02-28 13:52:36', '2023-05-30 11:16:05'),
(127, 82, 138, '4010.00', '2023-02-28 13:52:52', '2023-02-28 16:31:01'),
(128, 93, 149, '4000.00', '2023-02-28 16:31:01', '2023-03-04 03:01:00'),
(129, 94, 150, '978.00', '2023-03-01 23:12:37', '2023-05-03 01:34:44'),
(130, 95, 151, '4999.00', '2023-03-05 14:47:24', '2023-05-03 01:34:43'),
(131, 96, 152, '3998.00', '2023-03-05 14:47:24', '2023-06-10 11:11:29'),
(132, 97, 153, '50000.00', '2023-03-05 17:17:05', '2023-05-03 01:34:43'),
(133, 98, 154, '99998.00', '2023-03-08 04:10:32', '2023-05-20 00:27:48'),
(134, 99, 155, '11974.00', '2023-03-09 14:44:04', '2023-05-08 19:15:06'),
(135, 100, 156, '2.00', '2023-03-11 15:41:20', '2023-05-31 21:00:11'),
(136, 101, 157, '990.00', '2023-03-15 02:24:28', '2023-05-03 01:34:44'),
(137, 104, 160, '10000.00', '2023-03-23 02:32:12', '2023-05-03 01:34:27'),
(138, 103, 159, '49998.00', '2023-03-24 00:56:09', '2023-06-10 01:05:03'),
(139, 105, 161, '49998.00', '2023-03-25 01:12:28', '2023-05-03 01:31:09'),
(140, 106, 162, '59933.00', '2023-03-25 02:39:09', '2023-06-10 19:36:00'),
(141, 110, 166, '1000.00', '2023-04-12 16:05:14', '2023-05-03 01:34:27'),
(142, 109, 165, '10000.00', '2023-04-12 16:05:14', '2023-04-12 16:05:14'),
(143, 108, 164, '1.00', '2023-04-16 11:54:39', '2023-04-16 11:54:39'),
(144, 111, 167, '2.00', '2023-05-03 01:30:54', '2023-05-03 01:30:54'),
(145, 112, 168, '2.00', '2023-05-07 21:53:54', '2023-05-07 21:53:54'),
(146, 113, 169, '3.00', '2023-05-07 21:53:54', '2023-05-08 00:21:06'),
(147, 115, 171, '0.00', '2023-05-30 12:49:10', '2023-05-30 12:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` smallint(6) DEFAULT NULL,
  `user_id` smallint(6) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `user_id`, `note`, `ref`, `date`, `status`, `discount_type`, `discount_amount`, `shipping_cost`, `amount`, `created_at`, `updated_at`) VALUES
(12, 1, 1, 'EBB-01', 'ref845303', '2023-02-19', 'received', NULL, NULL, NULL, '20000.00', '2023-02-19 23:39:07', '2023-02-20 00:34:31'),
(13, 1, 1, 'EBB-02', 'ref262402', '2023-02-19', 'received', NULL, NULL, NULL, '19500.00', '2023-02-19 23:41:57', '2023-02-20 00:18:01'),
(14, 1, 1, 'EBB-03', 'ref799485', '2023-02-20', 'received', NULL, NULL, NULL, '37500.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(15, 1, 1, 'EBB-04', 'ref938481', '2023-02-20', 'received', NULL, NULL, NULL, '29000.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(16, 1, 1, 'EBB-05', 'ref916494', '2023-02-20', 'received', NULL, NULL, NULL, '15000.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(17, 1, 1, 'EBB-06', 'ref647499', '2023-02-20', 'received', NULL, NULL, NULL, '32500.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(18, 1, 1, 'EBB-08', 'ref286675', '2023-02-20', 'received', NULL, NULL, NULL, '15000.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(19, 1, 1, 'EBB-09', 'ref135636', '2023-02-20', 'received', NULL, NULL, NULL, '51000.00', '2023-02-20 00:22:52', '2023-02-20 00:23:11'),
(20, 1, 1, 'EBB-10', 'ref196880', '2023-02-20', 'received', NULL, NULL, NULL, '26000.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(21, 1, 1, 'EBB-11', 'ref731729', '2023-02-20', 'received', NULL, NULL, NULL, '60000.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(22, 1, 1, 'EBB-12', 'ref602622', '2023-02-20', 'received', NULL, NULL, NULL, '26000.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(23, 1, 1, 'EBB-13', 'ref203507', '2023-02-20', 'received', NULL, NULL, NULL, '19500.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(24, 1, 1, 'EBB-14', 'ref743770', '2023-02-20', 'received', NULL, NULL, NULL, '22500.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(25, 1, 1, 'EBB-15', 'ref189098', '2023-02-20', 'received', NULL, NULL, NULL, '50000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(26, 1, 1, 'EBB-16', 'ref677977', '2023-02-20', 'received', NULL, NULL, NULL, '50000.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(27, 1, 1, 'EBB-17', 'ref429301', '2023-02-20', 'received', NULL, NULL, NULL, '34000.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(28, 1, 1, 'EBB-18', 'ref568701', '2023-02-20', 'received', NULL, NULL, NULL, '77500.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(29, 1, 1, 'EBB-19', 'ref450717', '2023-02-20', 'received', NULL, NULL, NULL, '27600.00', '2023-02-20 00:32:32', '2023-02-20 00:32:32'),
(30, 1, 1, 'EBB-20', 'ref522953', '2023-02-20', 'received', NULL, NULL, NULL, '4500.00', '2023-02-20 00:33:12', '2023-02-20 00:33:12'),
(31, 1, 1, NULL, 'ref414557', '2023-02-27', 'received', NULL, NULL, NULL, '7600.00', '2023-02-27 18:28:47', '2023-02-27 18:28:47'),
(32, 1, 1, NULL, 'ref421865', '2023-02-27', 'received', NULL, NULL, NULL, '5500.00', '2023-02-27 18:29:11', '2023-02-27 18:29:11'),
(33, 1, 1, 'm90', 'ref525207', '2023-02-27', 'received', NULL, NULL, NULL, '5200.00', '2023-02-27 18:29:45', '2023-02-27 18:29:45'),
(34, 1, 1, 'voice control light', 'ref593210', '2023-02-27', 'received', NULL, NULL, NULL, '2800.00', '2023-02-27 18:30:23', '2023-02-27 18:30:23'),
(35, 1, 1, NULL, 'ref421364', '2023-02-28', 'received', NULL, NULL, NULL, '33600000.00', '2023-02-28 01:30:36', '2023-02-28 01:30:36'),
(36, 1, 1, NULL, 'ref523307', '2023-02-28', 'received', NULL, NULL, NULL, '10560000.00', '2023-02-28 02:07:06', '2023-02-28 02:07:06'),
(37, 1, 1, 'T03s', 'ref919399', '2023-02-28', 'received', NULL, NULL, NULL, '16500.00', '2023-02-28 13:49:49', '2023-02-28 13:49:49'),
(38, 1, 1, 'M28', 'ref668294', '2023-02-28', 'received', NULL, NULL, NULL, '5300.00', '2023-02-28 13:50:07', '2023-02-28 13:50:07'),
(39, 1, 1, 'M10', 'ref651279', '2023-02-28', 'received', NULL, NULL, NULL, '4000.00', '2023-02-28 13:50:26', '2023-02-28 13:50:26'),
(40, 1, 1, 'LP V9A', 'ref389229', '2023-02-28', 'received', NULL, NULL, NULL, '8400.00', '2023-02-28 13:50:47', '2023-02-28 13:50:47'),
(41, 1, 1, 'HW22', 'ref953282', '2023-02-28', 'received', NULL, NULL, NULL, '14500.00', '2023-02-28 13:51:06', '2023-02-28 13:51:06'),
(42, 1, 1, 'TW8', 'ref307004', '2023-02-28', 'received', NULL, NULL, NULL, '18000.00', '2023-02-28 13:51:25', '2023-02-28 13:51:25'),
(43, 1, 1, 'T55', 'ref524682', '2023-02-28', 'received', NULL, NULL, NULL, '9500.00', '2023-02-28 13:51:44', '2023-02-28 13:51:44'),
(44, 1, 1, 'Series-7', 'ref851493', '2023-02-28', 'received', NULL, NULL, NULL, '16000.00', '2023-02-28 13:52:00', '2023-02-28 13:52:00'),
(45, 1, 1, 'T800', 'ref527868', '2023-02-28', 'received', NULL, NULL, NULL, '10000.00', '2023-02-28 13:52:19', '2023-02-28 13:52:19'),
(46, 1, 1, 'T500', 'ref322437', '2023-02-28', 'received', NULL, NULL, NULL, '6000.00', '2023-02-28 13:52:36', '2023-02-28 13:52:36'),
(47, 1, 1, 'P47', 'ref295555', '2023-02-28', 'received', NULL, NULL, NULL, '2350.00', '2023-02-28 13:52:52', '2023-02-28 13:52:52'),
(48, 1, 1, NULL, 'ref835304', '2023-02-28', 'received', NULL, NULL, NULL, '63280000.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(49, 1, 1, NULL, 'ref781778', '2023-03-01', 'received', NULL, NULL, NULL, '280000.00', '2023-03-01 23:12:37', '2023-03-01 23:12:37'),
(50, 1, 1, NULL, 'ref514911', '2023-03-05', 'received', NULL, NULL, NULL, '5190000.00', '2023-03-05 14:47:24', '2023-03-05 14:47:24'),
(51, 1, 1, NULL, 'ref382156', '2023-03-05', 'received', NULL, NULL, NULL, '40000000.00', '2023-03-05 17:17:05', '2023-03-05 17:17:05'),
(52, 1, 1, NULL, 'ref187199', '2023-03-08', 'received', NULL, NULL, NULL, '20000000.00', '2023-03-08 04:10:32', '2023-03-08 04:10:32'),
(53, 1, 1, NULL, 'ref461323', '2023-03-09', 'received', NULL, NULL, NULL, '11400000.00', '2023-03-09 14:44:04', '2023-03-09 14:44:04'),
(54, 1, 1, 'My Note', '34534', '2023-03-11', 'received', NULL, NULL, NULL, '6000.00', '2023-03-11 15:41:20', '2023-03-11 15:41:20'),
(55, 1, 1, NULL, 'today', '2023-03-11', 'received', NULL, NULL, NULL, '6000.00', '2023-03-11 15:57:54', '2023-03-11 15:57:54'),
(56, 1, 1, NULL, 'ref661526', '2023-03-15', 'received', NULL, NULL, NULL, '160000.00', '2023-03-15 02:24:28', '2023-03-15 02:24:28'),
(57, 1, 1, NULL, 'ref433636', '2023-03-23', 'received', NULL, NULL, NULL, '2400000.00', '2023-03-23 02:32:12', '2023-03-23 02:32:12'),
(58, 1, 1, NULL, 'ref753744', '2023-03-24', 'received', NULL, NULL, NULL, '20000000.00', '2023-03-24 00:56:09', '2023-03-24 00:56:09'),
(59, 1, 1, NULL, 'ref974164', '2023-03-25', 'received', NULL, NULL, NULL, '5000000.00', '2023-03-25 01:12:28', '2023-03-25 01:12:28'),
(60, 1, 1, NULL, 'ref761883', '2023-03-25', 'received', NULL, NULL, NULL, '10800000.00', '2023-03-25 02:39:09', '2023-03-25 02:39:09'),
(61, 1, 1, NULL, '20', '2023-04-08', 'received', NULL, NULL, NULL, '0.00', '2023-04-08 22:14:57', '2023-04-08 22:14:57'),
(62, 1, 1, NULL, 'ref326747', '2023-04-12', 'received', NULL, NULL, NULL, '5500000.00', '2023-04-12 16:05:14', '2023-04-12 16:05:14'),
(63, 1, 1, NULL, 'ref578739', '2023-05-30', 'received', NULL, NULL, NULL, '200.00', '2023-05-30 12:49:10', '2023-05-30 12:49:10'),
(64, 1, 1, NULL, 'ref573627', '2023-06-13', 'received', NULL, NULL, NULL, '19000.00', '2023-06-13 17:49:05', '2023-06-13 17:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `variation_id` smallint(10) NOT NULL,
  `product_id` mediumint(9) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_lines`
--

INSERT INTO `purchase_lines` (`id`, `purchase_id`, `variation_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(39, 12, 59, 58, '10.00', '500.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(40, 12, 60, 58, '10.00', '500.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(41, 12, 61, 58, '10.00', '500.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(42, 12, 62, 58, '10.00', '500.00', '2023-02-19 23:39:07', '2023-02-19 23:39:07'),
(43, 13, 63, 59, '10.00', '650.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(44, 13, 64, 59, '10.00', '650.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(45, 13, 65, 59, '10.00', '650.00', '2023-02-19 23:41:57', '2023-02-19 23:41:57'),
(46, 14, 66, 60, '10.00', '750.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(47, 14, 67, 60, '10.00', '750.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(48, 14, 68, 60, '10.00', '750.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(49, 14, 69, 60, '10.00', '750.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(50, 14, 70, 60, '10.00', '750.00', '2023-02-20 00:17:45', '2023-02-20 00:17:45'),
(51, 15, 71, 61, '10.00', '580.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(52, 15, 72, 61, '10.00', '580.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(53, 15, 73, 61, '10.00', '580.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(54, 15, 74, 61, '10.00', '580.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(55, 15, 75, 61, '10.00', '580.00', '2023-02-20 00:19:26', '2023-02-20 00:19:26'),
(56, 16, 76, 62, '10.00', '500.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(57, 16, 77, 62, '10.00', '500.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(58, 16, 78, 62, '10.00', '500.00', '2023-02-20 00:20:16', '2023-02-20 00:20:16'),
(59, 17, 79, 63, '10.00', '650.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(60, 17, 80, 63, '10.00', '650.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(61, 17, 81, 63, '10.00', '650.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(62, 17, 82, 63, '10.00', '650.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(63, 17, 83, 63, '10.00', '650.00', '2023-02-20 00:21:07', '2023-02-20 00:21:07'),
(64, 18, 84, 64, '10.00', '500.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(65, 18, 85, 64, '10.00', '500.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(66, 18, 86, 64, '10.00', '500.00', '2023-02-20 00:22:02', '2023-02-20 00:22:02'),
(67, 19, 87, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(68, 19, 88, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(69, 19, 89, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(70, 19, 90, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(71, 19, 91, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(72, 19, 92, 65, '10.00', '850.00', '2023-02-20 00:22:52', '2023-02-20 00:22:52'),
(73, 20, 93, 66, '10.00', '650.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(74, 20, 94, 66, '10.00', '650.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(75, 20, 95, 66, '10.00', '650.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(76, 20, 96, 66, '10.00', '650.00', '2023-02-20 00:23:44', '2023-02-20 00:23:44'),
(77, 21, 97, 67, '10.00', '1500.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(78, 21, 98, 67, '10.00', '1500.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(79, 21, 99, 67, '10.00', '1500.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(80, 21, 100, 67, '10.00', '1500.00', '2023-02-20 00:24:29', '2023-02-20 00:24:29'),
(81, 22, 101, 68, '10.00', '650.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(82, 22, 102, 68, '10.00', '650.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(83, 22, 103, 68, '10.00', '650.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(84, 22, 104, 68, '10.00', '650.00', '2023-02-20 00:25:08', '2023-02-20 00:25:08'),
(85, 23, 105, 69, '10.00', '650.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(86, 23, 106, 69, '10.00', '650.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(87, 23, 107, 69, '10.00', '650.00', '2023-02-20 00:25:34', '2023-02-20 00:25:34'),
(88, 24, 108, 70, '10.00', '750.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(89, 24, 109, 70, '10.00', '750.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(90, 24, 110, 70, '10.00', '750.00', '2023-02-20 00:26:42', '2023-02-20 00:26:42'),
(91, 25, 111, 71, '10.00', '1000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(92, 25, 112, 71, '10.00', '1000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(93, 25, 113, 71, '10.00', '1000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(94, 25, 114, 71, '10.00', '1000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(95, 25, 115, 71, '10.00', '1000.00', '2023-02-20 00:29:33', '2023-02-20 00:29:33'),
(96, 26, 116, 72, '10.00', '1250.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(97, 26, 117, 72, '10.00', '1250.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(98, 26, 118, 72, '10.00', '1250.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(99, 26, 119, 72, '10.00', '1250.00', '2023-02-20 00:30:17', '2023-02-20 00:30:17'),
(100, 27, 120, 73, '10.00', '680.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(101, 27, 121, 73, '10.00', '680.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(102, 27, 122, 73, '10.00', '680.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(103, 27, 123, 73, '10.00', '680.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(104, 27, 124, 73, '10.00', '680.00', '2023-02-20 00:31:11', '2023-02-20 00:31:11'),
(105, 28, 125, 74, '10.00', '1550.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(106, 28, 126, 74, '10.00', '1550.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(107, 28, 127, 74, '10.00', '1550.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(108, 28, 128, 74, '10.00', '1550.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(109, 28, 129, 74, '10.00', '1550.00', '2023-02-20 00:31:59', '2023-02-20 00:31:59'),
(110, 29, 130, 75, '10.00', '1380.00', '2023-02-20 00:32:32', '2023-02-20 00:32:32'),
(111, 29, 131, 75, '10.00', '1380.00', '2023-02-20 00:32:32', '2023-02-20 00:32:32'),
(112, 30, 132, 76, '10.00', '450.00', '2023-02-20 00:33:12', '2023-02-20 00:33:12'),
(113, 31, 135, 79, '10.00', '760.00', '2023-02-27 18:28:47', '2023-02-27 18:28:47'),
(114, 32, 136, 80, '10.00', '550.00', '2023-02-27 18:29:11', '2023-02-27 18:29:11'),
(115, 33, 134, 78, '10.00', '520.00', '2023-02-27 18:29:45', '2023-02-27 18:29:45'),
(116, 34, 133, 77, '10.00', '280.00', '2023-02-27 18:30:23', '2023-02-27 18:30:23'),
(117, 35, 133, 77, '120000.00', '280.00', '2023-02-28 01:30:36', '2023-02-28 01:30:36'),
(118, 36, 137, 81, '12000.00', '880.00', '2023-02-28 02:07:06', '2023-02-28 02:07:06'),
(119, 37, 148, 92, '10.00', '1650.00', '2023-02-28 13:49:49', '2023-02-28 13:49:49'),
(120, 38, 147, 91, '10.00', '530.00', '2023-02-28 13:50:07', '2023-02-28 13:50:07'),
(121, 39, 146, 90, '10.00', '400.00', '2023-02-28 13:50:26', '2023-02-28 13:50:26'),
(122, 40, 145, 89, '10.00', '840.00', '2023-02-28 13:50:47', '2023-02-28 13:50:47'),
(123, 41, 144, 88, '10.00', '1450.00', '2023-02-28 13:51:06', '2023-02-28 13:51:06'),
(124, 42, 143, 87, '10.00', '1800.00', '2023-02-28 13:51:25', '2023-02-28 13:51:25'),
(125, 43, 142, 86, '10.00', '950.00', '2023-02-28 13:51:44', '2023-02-28 13:51:44'),
(126, 44, 141, 85, '10.00', '1600.00', '2023-02-28 13:52:00', '2023-02-28 13:52:00'),
(127, 45, 140, 84, '10.00', '1000.00', '2023-02-28 13:52:19', '2023-02-28 13:52:19'),
(128, 46, 139, 83, '10.00', '600.00', '2023-02-28 13:52:36', '2023-02-28 13:52:36'),
(129, 47, 138, 82, '10.00', '235.00', '2023-02-28 13:52:52', '2023-02-28 13:52:52'),
(130, 48, 149, 93, '4000.00', '280.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(131, 48, 148, 92, '4000.00', '1650.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(132, 48, 147, 91, '4000.00', '530.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(133, 48, 146, 90, '4000.00', '400.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(134, 48, 145, 89, '4000.00', '840.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(135, 48, 144, 88, '4000.00', '1450.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(136, 48, 143, 87, '4000.00', '1800.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(137, 48, 142, 86, '14000.00', '950.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(138, 48, 141, 85, '4000.00', '1600.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(139, 48, 140, 84, '4000.00', '1000.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(140, 48, 139, 83, '4000.00', '600.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(141, 48, 138, 82, '4000.00', '235.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(142, 48, 136, 80, '4000.00', '550.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(143, 48, 135, 79, '4000.00', '760.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(144, 48, 134, 78, '4000.00', '520.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(145, 48, 133, 77, '4000.00', '280.00', '2023-02-28 16:31:01', '2023-02-28 16:31:01'),
(146, 49, 150, 94, '1000.00', '280.00', '2023-03-01 23:12:37', '2023-03-01 23:12:37'),
(147, 50, 151, 95, '5000.00', '750.00', '2023-03-05 14:47:24', '2023-03-05 14:47:24'),
(148, 50, 152, 96, '4000.00', '360.00', '2023-03-05 14:47:24', '2023-03-05 14:47:24'),
(149, 51, 153, 97, '50000.00', '800.00', '2023-03-05 17:17:05', '2023-03-05 17:17:05'),
(150, 52, 154, 98, '100000.00', '200.00', '2023-03-08 04:10:32', '2023-03-08 04:10:32'),
(151, 53, 155, 99, '12000.00', '950.00', '2023-03-09 14:44:04', '2023-03-09 14:44:04'),
(152, 54, 156, 100, '3.00', '2000.00', '2023-03-11 15:41:20', '2023-03-11 15:41:20'),
(153, 55, 139, 83, '10.00', '600.00', '2023-03-11 15:57:54', '2023-03-11 15:57:54'),
(154, 56, 157, 101, '1000.00', '160.00', '2023-03-15 02:24:28', '2023-03-15 02:24:28'),
(155, 57, 160, 104, '10000.00', '240.00', '2023-03-23 02:32:12', '2023-03-23 02:32:12'),
(156, 58, 159, 103, '50000.00', '400.00', '2023-03-24 00:56:09', '2023-03-24 00:56:09'),
(157, 59, 161, 105, '50000.00', '100.00', '2023-03-25 01:12:28', '2023-03-25 01:12:28'),
(158, 60, 162, 106, '60000.00', '180.00', '2023-03-25 02:39:09', '2023-03-25 02:39:09'),
(159, 62, 166, 110, '1000.00', '500.00', '2023-04-12 16:05:14', '2023-04-12 16:05:14'),
(160, 62, 165, 109, '10000.00', '500.00', '2023-04-12 16:05:14', '2023-04-12 16:05:14'),
(161, 63, 171, 115, '1.00', '200.00', '2023-05-30 12:49:10', '2023-05-30 12:49:10'),
(162, 64, 14, 15, '100.00', '190.00', '2023-06-13 17:49:05', '2023-06-13 17:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` mediumint(9) NOT NULL,
  `date` date DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'web', '2022-10-19 11:26:05', '2022-10-19 11:26:05'),
(7, 'user', 'web', '2022-10-20 05:17:08', '2022-10-20 05:17:08'),
(8, 'worker', 'web', '2022-10-20 05:17:20', '2022-10-20 05:17:20'),
(9, 'vendor', 'web', '2022-11-17 00:51:15', '2022-11-17 00:51:15'),
(10, 'Client', 'web', '2023-01-09 13:03:59', '2023-01-09 13:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 6),
(1, 8),
(1, 9),
(1, 10),
(2, 6),
(2, 8),
(2, 9),
(3, 6),
(3, 8),
(3, 9),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 6),
(8, 7),
(8, 9),
(10, 6),
(10, 7),
(10, 9),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(14, 10),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(26, 9),
(26, 10),
(27, 6),
(27, 9),
(28, 6),
(28, 9),
(29, 6),
(29, 10),
(30, 6),
(31, 6),
(32, 6),
(32, 10),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(42, 6),
(42, 10),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(46, 10),
(47, 6),
(47, 9),
(47, 10),
(48, 6),
(48, 10),
(49, 6),
(49, 10),
(50, 6),
(50, 8),
(50, 10),
(51, 6),
(51, 10),
(52, 6),
(52, 10),
(53, 6),
(53, 10),
(54, 6),
(54, 10),
(55, 6),
(55, 10),
(56, 6),
(56, 10),
(57, 6),
(57, 10),
(58, 6),
(58, 10),
(59, 6),
(60, 6),
(61, 6),
(61, 10),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(65, 8),
(65, 9),
(65, 10),
(66, 6),
(66, 9),
(66, 10),
(67, 6),
(67, 10),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(71, 10),
(72, 6),
(72, 10),
(73, 6),
(74, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_default` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `is_default`, `created_at`, `updated_at`) VALUES
(3, 'free', NULL, '2023-02-19 17:40:22', '2023-02-19 17:40:22'),
(4, 'M', NULL, '2023-05-27 23:04:22', '2023-05-27 23:04:22'),
(5, 'L', NULL, '2023-05-27 23:04:27', '2023-05-27 23:04:27'),
(6, 'Xl', NULL, '2023-05-27 23:04:32', '2023-05-27 23:04:32'),
(7, '40', NULL, '2023-06-08 17:07:56', '2023-06-08 17:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `created_at`, `updated_at`, `title`, `link`, `description`) VALUES
(2, 'banner 21672140430.jpg', 'banner 2 mobile1672140430.jpg', '2022-12-18 13:35:49', '2022-12-27 17:27:10', 'home1', NULL, NULL),
(3, 'banner phone16713931191672140170.jpg', 'banner 11672140170.jpg', '2022-12-19 01:51:59', '2022-12-27 17:22:50', 'Home phone', 'https://softitglobal.com/demo2/c/mobile-phone', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `title`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Fb', 'www.Facebook.com', 'Screenshot_20230526-0216381685207390.jpg', '2023-05-27 23:07:49', '2023-05-27 23:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_top` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `image`, `is_top`, `created_at`, `updated_at`) VALUES
(1, 'Casio', 'Casio-logo-365x3651676220708.jpg', 1, '2022-12-27 13:37:46', '2023-02-12 22:51:48'),
(2, 'Samsung', 'Samsung-Logo-21676220580.png', 1, '2022-12-27 13:38:05', '2023-02-12 22:49:40'),
(3, 'Oppo', 'Oppo-Logo.wine1676220591.png', 1, '2022-12-27 13:38:20', '2023-02-12 22:49:51'),
(4, 'Aceer', 'Acer-logo1672127670.jpg', 1, '2022-12-27 13:54:30', '2022-12-27 13:54:30'),
(5, 'Apple', 'apple1672131259.jpg', 1, '2022-12-27 13:54:43', '2022-12-27 14:54:19'),
(6, 'Mi', 'mi1672131592.jpg', 1, '2022-12-27 14:56:11', '2022-12-27 14:59:52'),
(7, 'China', NULL, NULL, '2023-02-19 17:37:18', '2023-02-19 17:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(200) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `business_name`, `first_name`, `last_name`, `email`, `username`, `mobile`, `email_verified_at`, `password`, `image`, `remember_token`, `status`, `is_seller`, `created_at`, `updated_at`) VALUES
(1, 'Soft IT Global', 'Soft IT', 'Admin', 'admin@gmail.com', 'admin', '01700000000', NULL, '$2y$10$8The6JoD9HggSKB1LNYjPO7gVKvqwmApQnszBCRe9SbwPRNJsmlTG', '1529651761.webp', NULL, NULL, NULL, '2022-09-20 23:53:37', '2023-05-07 16:55:45'),
(24, 'rimi', 'rimi', 'rrr', 'rimi@gmail.com', 'rimi', '01863651124', NULL, '$2y$10$tN03VKy9MZOgKb8VBIlHuOLAd.otV1f6wA8GEEiXYQFSLkwRrZeJS', NULL, NULL, NULL, NULL, '2022-12-18 20:47:35', '2022-12-24 18:59:11'),
(153, NULL, 'Abdul Khalaque', NULL, NULL, NULL, '01717588115', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 20:24:29', '2023-03-02 20:24:29'),
(154, NULL, 'Rafiq', NULL, NULL, NULL, '01940202010', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 20:34:46', '2023-03-02 20:34:46'),
(155, NULL, 'আনিস', NULL, NULL, NULL, '01769057657', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 20:45:28', '2023-03-02 20:45:28'),
(156, NULL, 'test', NULL, NULL, NULL, '3456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 02:28:22', '2023-03-03 02:28:22'),
(157, NULL, 'Sadat Hassan.', NULL, NULL, NULL, '01858277028', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 06:10:57', '2023-03-03 06:10:57'),
(158, NULL, 'Md Islam Uddin', NULL, NULL, NULL, '01713083881', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 08:52:35', '2023-03-03 08:52:35'),
(159, NULL, NULL, NULL, NULL, NULL, '01711521062', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 08:54:19', '2023-03-03 08:54:19'),
(160, NULL, 'M A Latif', NULL, NULL, NULL, '01833332838', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 09:15:42', '2023-03-03 09:15:42'),
(161, NULL, 'Adeel', NULL, NULL, NULL, '01706520392', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 10:18:05', '2023-03-03 10:18:05'),
(162, NULL, 'Abdullah', NULL, NULL, NULL, '01713176458', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 10:53:32', '2023-03-03 10:53:32'),
(163, NULL, 'Rabby', NULL, NULL, NULL, '01715533233', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:09:39', '2023-03-03 11:09:39'),
(164, NULL, 'Rabbi', NULL, NULL, NULL, '01717300089', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:57:20', '2023-03-03 11:57:20'),
(165, NULL, 'Adeel', NULL, NULL, NULL, '01706520392', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 12:07:18', '2023-03-03 12:07:18'),
(166, NULL, 'Monirul Islam', NULL, NULL, NULL, '01906297800', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 12:26:56', '2023-03-03 12:26:56'),
(167, NULL, 'Abdullah Al Baki', NULL, NULL, NULL, '+8801731846899', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 13:02:10', '2023-03-03 13:02:10'),
(168, NULL, 'Arifur Rahman', NULL, NULL, NULL, '01819093934', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 13:05:08', '2023-03-03 13:05:08'),
(169, NULL, 'Shahina Akter', NULL, NULL, NULL, '01763341247', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 13:30:31', '2023-03-03 13:30:31'),
(170, NULL, 'Taslimul', NULL, NULL, NULL, '01729230476', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 14:25:12', '2023-03-03 14:25:12'),
(171, NULL, 'Masud', NULL, NULL, NULL, '01641854490', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 16:57:43', '2023-03-03 16:57:43'),
(172, NULL, 'md. masum', NULL, NULL, NULL, '01700553554', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 17:19:56', '2023-03-03 17:19:56'),
(173, NULL, 'md kamal hossen', NULL, NULL, NULL, '01841080706', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 18:07:13', '2023-03-03 18:07:13'),
(174, NULL, 'Abul Hossain Khokon', NULL, NULL, NULL, '01711869897', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 19:25:44', '2023-03-03 19:25:44'),
(175, NULL, 'Engr. M A Monsur Shawon', NULL, NULL, NULL, '01713011530', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 20:49:30', '2023-03-03 20:49:30'),
(176, NULL, 'Mosaddek', NULL, NULL, NULL, '01739578951', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 21:16:34', '2023-03-03 21:16:34'),
(177, NULL, 'Khandaker Rashid', NULL, NULL, NULL, '01711700065', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 22:53:20', '2023-03-03 22:53:20'),
(178, NULL, 'Dr.Shahidul Alam', NULL, NULL, NULL, '01711525969', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 23:42:44', '2023-03-03 23:42:44'),
(179, NULL, 'Milon', NULL, NULL, NULL, '01971174000', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 23:48:33', '2023-03-03 23:48:33'),
(180, NULL, 'ARM Monjur Rahi', NULL, NULL, NULL, '01550155096', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 00:19:03', '2023-03-04 00:19:03'),
(181, NULL, 'Saqlain', NULL, NULL, NULL, '01816700014', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 00:30:29', '2023-03-04 00:30:29'),
(182, NULL, 'Mufti Mostafa Asrafi', NULL, NULL, NULL, '01765260010', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 00:40:19', '2023-03-04 00:40:19'),
(183, NULL, 'Md ontu', NULL, NULL, NULL, '01973474745', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 00:42:32', '2023-03-04 00:42:32'),
(184, NULL, 'test order', NULL, NULL, NULL, '34567890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 00:59:30', '2023-03-04 00:59:30'),
(185, NULL, 'Tauhid Ahamed', NULL, NULL, NULL, '01789002500', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 01:26:16', '2023-03-04 01:26:16'),
(186, NULL, 'test', NULL, NULL, NULL, '0177777777', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 02:11:59', '2023-03-04 02:11:59'),
(187, NULL, 'sayem', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 02:44:37', '2023-03-04 02:44:37'),
(188, NULL, 'another test order', NULL, NULL, NULL, '01987654567', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 02:48:04', '2023-03-04 02:48:04'),
(189, NULL, 'sayem new', NULL, NULL, NULL, '01732445678', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 03:00:01', '2023-03-04 03:00:01'),
(190, NULL, 'faysal rahman', NULL, NULL, NULL, '01911582468', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 04:13:31', '2023-03-04 04:13:31'),
(191, NULL, 'Sultan', NULL, NULL, NULL, '01716422464', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 09:45:12', '2023-03-04 09:45:12'),
(192, NULL, 'Tanvir', NULL, NULL, NULL, '01711538838', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 10:38:55', '2023-03-04 10:38:55'),
(193, NULL, 'Azmat', NULL, NULL, NULL, '01711535355', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 10:40:21', '2023-03-04 10:40:21'),
(194, NULL, 'Tonima reza', NULL, NULL, NULL, '01747232863', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 10:45:32', '2023-03-04 10:45:32'),
(195, NULL, 'Mehedi Hasan', NULL, NULL, NULL, '01738339296', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 11:35:47', '2023-03-04 11:35:47'),
(196, NULL, 'Nazim', NULL, NULL, NULL, '+8801883333333', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 11:54:32', '2023-03-04 11:54:32'),
(197, NULL, 'Rasel', NULL, NULL, NULL, '01841218621', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 12:52:57', '2023-03-04 12:52:57'),
(198, NULL, 'Abu Rihan', NULL, NULL, NULL, '01707000844', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 15:33:42', '2023-03-04 15:33:42'),
(199, NULL, 'Asif', NULL, NULL, NULL, '01706100881', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 15:52:15', '2023-03-04 15:52:15'),
(200, NULL, 'Md. Shafiqul Islam', NULL, NULL, NULL, '01811429588', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 19:37:41', '2023-03-04 19:37:41'),
(201, NULL, 'Md. Shafiqul Islam', NULL, NULL, NULL, '01811429588', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 19:42:11', '2023-03-04 19:42:11'),
(202, NULL, 'Asif', NULL, NULL, NULL, '01777993500', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 20:08:46', '2023-03-04 20:08:46'),
(203, NULL, 'Ashif', NULL, NULL, NULL, '01777993500', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 20:10:52', '2023-03-04 20:10:52'),
(204, NULL, 'Dr Munir', NULL, NULL, NULL, '01711521062', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 20:30:16', '2023-03-04 20:30:16'),
(205, NULL, 'Mostofa Kamal', NULL, NULL, NULL, '01711521800', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 22:35:35', '2023-03-04 22:35:35'),
(206, NULL, 'test', NULL, NULL, NULL, '0177778888', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 22:53:54', '2023-03-04 22:53:54'),
(207, NULL, 'Mahfuz', NULL, NULL, NULL, '01755557358', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04 23:29:42', '2023-03-04 23:29:42'),
(208, NULL, 'Jannat', NULL, NULL, NULL, '01708159003', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 01:16:56', '2023-03-05 01:16:56'),
(209, NULL, 'Ashfak', NULL, NULL, NULL, '01722336604', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 03:18:33', '2023-03-05 03:18:33'),
(210, NULL, 'Sonia', NULL, NULL, NULL, '01825603862', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 03:28:17', '2023-03-05 03:28:17'),
(211, NULL, 'Wazed', NULL, NULL, NULL, '01827685919', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 04:52:07', '2023-03-05 04:52:07'),
(212, NULL, 'Mithu', NULL, NULL, NULL, '01813511111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 06:55:08', '2023-03-05 06:55:08'),
(213, NULL, NULL, NULL, NULL, NULL, '01711560280', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 07:28:18', '2023-03-05 07:28:18'),
(214, NULL, 'Prof Mashfiqus Salehin', NULL, NULL, NULL, '01937164753', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 07:59:22', '2023-03-05 07:59:22'),
(215, NULL, 'Aminul Arifeen', NULL, NULL, NULL, '1787687034', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 08:26:20', '2023-03-05 08:26:20'),
(216, NULL, 'Mithu', NULL, NULL, NULL, '01813511111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 10:47:42', '2023-03-05 10:47:42'),
(217, NULL, 'Mritunjoy Banerjee', NULL, NULL, NULL, '01713015966', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 10:49:47', '2023-03-05 10:49:47'),
(218, NULL, 'Dr. Senford Sircar', NULL, NULL, NULL, '01713003619', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 11:32:37', '2023-03-05 11:32:37'),
(219, NULL, 'Elias', NULL, NULL, NULL, '01307797555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 11:58:41', '2023-03-05 11:58:41'),
(220, NULL, 'Md Mominul', NULL, NULL, NULL, '01718000092', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 15:35:58', '2023-03-05 15:35:58'),
(221, NULL, NULL, NULL, NULL, NULL, '01811419518', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 22:02:19', '2023-03-05 22:02:19'),
(222, NULL, 'Riyad', NULL, NULL, NULL, '01722624572', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 23:34:03', '2023-03-05 23:34:03'),
(223, NULL, 'Faruk Ahmed', NULL, NULL, NULL, '01711804136', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 00:15:37', '2023-03-06 00:15:37'),
(224, NULL, 'Mohammad Hasan', NULL, NULL, NULL, '01786258257', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 01:24:58', '2023-03-06 01:24:58'),
(225, NULL, 'Naima', NULL, NULL, NULL, '01670932005', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 01:57:24', '2023-03-06 01:57:24'),
(226, NULL, 'Raya islam', NULL, NULL, NULL, '01747363713', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 04:16:11', '2023-03-06 04:16:11'),
(227, NULL, 'Golam', NULL, NULL, NULL, '01711224012', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 10:22:44', '2023-03-06 10:22:44'),
(228, NULL, 'Capt. Ashraf Niaz Azad', NULL, NULL, NULL, '01611798130', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 10:31:16', '2023-03-06 10:31:16'),
(229, NULL, 'Mizanur Rahman', NULL, NULL, NULL, '01712882300', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 10:56:24', '2023-03-06 10:56:24'),
(230, NULL, 'ডাঃ কবির উদ্দিন', NULL, NULL, NULL, '01711198090', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 11:39:37', '2023-03-06 11:39:37'),
(231, NULL, 'Koushik ahammed', NULL, NULL, NULL, '01703250008', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 12:58:48', '2023-03-06 12:58:48'),
(232, NULL, 'Bilson Mree', NULL, NULL, NULL, '01716892314', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 13:35:38', '2023-03-06 13:35:38'),
(233, NULL, 'Ab babu', NULL, NULL, NULL, '01720583851', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 13:53:24', '2023-03-06 13:53:24'),
(234, NULL, 'Mesbah', NULL, NULL, NULL, '01720389510', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 16:36:00', '2023-03-06 16:36:00'),
(235, NULL, 'Mitbu', NULL, NULL, NULL, '01813511111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 19:28:02', '2023-03-06 19:28:02'),
(236, NULL, 'Mithu', NULL, NULL, NULL, '01813511111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 22:48:00', '2023-03-06 22:48:00'),
(237, NULL, 'Mithu', NULL, NULL, NULL, '01813511111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 22:49:59', '2023-03-06 22:49:59'),
(238, NULL, 'Shuvo', NULL, NULL, NULL, '01717054188', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 22:59:53', '2023-03-06 22:59:53'),
(239, NULL, 'Ziaul', NULL, NULL, NULL, '01711233784', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 23:03:08', '2023-03-06 23:03:08'),
(240, NULL, 'ফয়সাল', NULL, NULL, NULL, '01976539977', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 02:58:16', '2023-03-07 02:58:16'),
(241, NULL, 'Nadim', NULL, NULL, NULL, '01911920183', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 07:21:32', '2023-03-07 07:21:32'),
(242, NULL, 'Atik', NULL, NULL, NULL, '01710247724', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 07:47:51', '2023-03-07 07:47:51'),
(243, NULL, 'Hasan', NULL, NULL, NULL, '01670742613', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 08:30:08', '2023-03-07 08:30:08'),
(244, NULL, 'Ruhul', NULL, NULL, NULL, '01835666626', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 09:28:25', '2023-03-07 09:28:25'),
(245, NULL, 'MAHFUZUR RAHMAN', NULL, NULL, NULL, '01977015636', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 11:37:25', '2023-03-07 11:37:25'),
(246, NULL, 'MD Jewel Rana', NULL, NULL, NULL, '01711687522', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 11:48:11', '2023-03-07 11:48:11'),
(247, NULL, 'Saiful Islam', NULL, NULL, NULL, '01717172846', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 11:54:17', '2023-03-07 11:54:17'),
(248, NULL, 'SHOHEL', NULL, NULL, NULL, '01715232024', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 12:11:02', '2023-03-07 12:11:02'),
(249, NULL, 'Zico Bhai', NULL, NULL, NULL, '01730810893', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 13:17:39', '2023-03-07 13:17:39'),
(250, NULL, 'Ahamed', NULL, NULL, NULL, '01714110694', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 15:10:35', '2023-03-07 15:10:35'),
(251, NULL, 'Proma', NULL, NULL, NULL, '01719984347', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 17:06:50', '2023-03-07 17:06:50'),
(252, NULL, 'Tasauf', NULL, NULL, NULL, '01760580023', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 17:41:24', '2023-03-07 17:41:24'),
(253, NULL, 'tawfique zaman', NULL, NULL, NULL, '01621147242', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 18:57:36', '2023-03-07 18:57:36'),
(254, NULL, 'Hamza', NULL, NULL, NULL, '01791911783', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 19:44:05', '2023-03-07 19:44:05'),
(255, NULL, 'Kabir', NULL, NULL, NULL, '01714135352', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 20:43:51', '2023-03-07 20:43:51'),
(256, NULL, 'A Jabbar Gazi Nantu', NULL, NULL, NULL, '01911955877', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 21:44:34', '2023-03-07 21:44:34'),
(257, NULL, NULL, NULL, NULL, NULL, '01716038999', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-07 23:10:37', '2023-03-07 23:10:37'),
(258, NULL, 'PROTIK', NULL, NULL, NULL, '01748839557', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 00:33:47', '2023-03-08 00:33:47'),
(259, NULL, 'Zami', NULL, NULL, NULL, '01817296367', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 01:40:04', '2023-03-08 01:40:04'),
(260, NULL, 'Sabrina Saba', NULL, NULL, NULL, '01843634530', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 02:38:59', '2023-03-08 02:38:59'),
(261, NULL, 'Md Shajahan', NULL, NULL, NULL, '01713063156', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 06:09:12', '2023-03-08 06:09:12'),
(262, NULL, 'Samrat', NULL, NULL, NULL, '+8801629628844', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 08:23:11', '2023-03-08 08:23:11'),
(263, NULL, 'Shahirul Sikder', NULL, NULL, NULL, '01731111111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 09:06:59', '2023-03-08 09:06:59'),
(264, NULL, 'Farhana Rahman', NULL, NULL, NULL, '01710825802', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 09:35:33', '2023-03-08 09:35:33'),
(265, NULL, 'Mashiur', NULL, NULL, NULL, '01711356109', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 09:56:39', '2023-03-08 09:56:39'),
(266, NULL, 'তাহসিন রেজা TAHSIN REZA', NULL, NULL, NULL, '01715111217', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 10:01:04', '2023-03-08 10:01:04'),
(267, NULL, 'Ashiqul Islam', NULL, NULL, NULL, '01714112682', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 10:06:29', '2023-03-08 10:06:29'),
(268, NULL, 'Safayet', NULL, NULL, NULL, '01913397935', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 10:16:30', '2023-03-08 10:16:30'),
(269, NULL, 'মোঃ ইয়াছিন', NULL, NULL, NULL, '01911929777', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 10:21:10', '2023-03-08 10:21:10'),
(270, NULL, 'Dr. Adnan', NULL, NULL, NULL, '+8801711017685', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 10:42:45', '2023-03-08 10:42:45'),
(271, NULL, 'Iqbal Amin', NULL, NULL, NULL, '01819231658', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 11:32:16', '2023-03-08 11:32:16'),
(272, NULL, 'Farhan', NULL, NULL, NULL, '01678038028', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 11:46:38', '2023-03-08 11:46:38'),
(273, NULL, 'Muhammad ahad', NULL, NULL, NULL, '01711060072', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 12:04:51', '2023-03-08 12:04:51'),
(274, NULL, 'Fayez', NULL, NULL, NULL, '01313476507', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 12:47:17', '2023-03-08 12:47:17'),
(275, NULL, 'Mustafizur', NULL, NULL, NULL, '+8801711428304', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 15:12:05', '2023-03-08 15:12:05'),
(276, NULL, 'Zakir Ahmed', NULL, NULL, NULL, '01919292547', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 19:36:09', '2023-03-08 19:36:09'),
(277, NULL, 'Bijoy khan', NULL, NULL, NULL, '01911880111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 20:57:14', '2023-03-08 20:57:14'),
(278, NULL, 'Khan', NULL, NULL, NULL, '8801711566953', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 00:22:07', '2023-03-09 00:22:07'),
(279, NULL, 'Shahed', NULL, NULL, NULL, '01714047230', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 00:38:13', '2023-03-09 00:38:13'),
(280, NULL, 'nadia nitul', NULL, NULL, NULL, '01717205986', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 00:48:10', '2023-03-09 00:48:10'),
(281, NULL, 'Noman', NULL, NULL, NULL, '01701205092', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 01:56:25', '2023-03-09 01:56:25'),
(282, NULL, 'K m shah', NULL, NULL, NULL, '01684381825', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 07:28:49', '2023-03-09 07:28:49'),
(283, NULL, NULL, NULL, NULL, NULL, '01711220227', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 08:19:29', '2023-03-09 08:19:29'),
(284, NULL, 'Susil Kumar Das', NULL, NULL, NULL, '01711461596', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 08:30:14', '2023-03-09 08:30:14'),
(285, NULL, 'Saiful', NULL, NULL, NULL, '01715255153', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 09:18:21', '2023-03-09 09:18:21'),
(286, NULL, 'Maruf', NULL, NULL, NULL, '01844169394', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 10:06:07', '2023-03-09 10:06:07'),
(287, NULL, 'test order', NULL, NULL, NULL, '0179888765', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 10:38:00', '2023-03-09 10:38:00'),
(288, NULL, 'dccd', NULL, NULL, NULL, '22333', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 14:50:15', '2023-03-09 14:50:15'),
(289, NULL, 'Bushra', NULL, NULL, NULL, '01819063111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 16:12:09', '2023-03-09 16:12:09'),
(290, NULL, 'Salauddin khan', NULL, NULL, NULL, '01911920183', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 16:15:49', '2023-03-09 16:15:49'),
(291, NULL, 'Tahera', NULL, NULL, NULL, '01970661133', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 17:25:03', '2023-03-09 17:25:03'),
(292, NULL, NULL, NULL, NULL, NULL, '01670038048', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 18:17:23', '2023-03-09 18:17:23'),
(293, NULL, 'SM Ajior Rahman', NULL, NULL, NULL, '01712579026', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 19:23:16', '2023-03-09 19:23:16'),
(294, NULL, NULL, NULL, NULL, NULL, '01711428304', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 19:36:04', '2023-03-09 19:36:04'),
(295, NULL, 'Masud', NULL, NULL, NULL, '01737988619', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 20:33:50', '2023-03-09 20:33:50'),
(296, NULL, 'Zubayer Hasan', NULL, NULL, NULL, '01764383751', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 00:31:55', '2023-03-10 00:31:55'),
(297, NULL, NULL, NULL, NULL, NULL, '01776296214', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 02:00:13', '2023-03-10 02:00:13'),
(298, NULL, 'Shuvro', NULL, NULL, NULL, '01815846747', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 04:41:18', '2023-03-10 04:41:18'),
(299, NULL, 'দিপু খান', NULL, NULL, NULL, '01711328915', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 09:51:35', '2023-03-10 09:51:35'),
(300, NULL, 'Nilufa Akter', NULL, NULL, NULL, '01552498969', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 10:58:36', '2023-03-10 10:58:36'),
(301, NULL, 'Md Minhazul Abedin (Minhaz)', NULL, NULL, NULL, '01628760304', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 11:06:48', '2023-03-10 11:06:48'),
(302, NULL, 'MD Nazmul Haque', NULL, NULL, NULL, '01681430143', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 12:05:31', '2023-03-10 12:05:31'),
(303, NULL, 'Farhana', NULL, NULL, NULL, '01817384157', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 12:10:10', '2023-03-10 12:10:10'),
(304, NULL, 'Sharmin Sultana Jitu', NULL, NULL, NULL, '01781257973', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 12:54:35', '2023-03-10 12:54:35'),
(305, NULL, 'Prince', NULL, NULL, NULL, '01910550363', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 04:04:13', '2023-03-11 04:04:13'),
(306, NULL, 'Ishmum Zaman', NULL, NULL, NULL, '+8801970284392', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 04:32:57', '2023-03-11 04:32:57'),
(307, NULL, 'ASM Waheduzzaman', NULL, NULL, NULL, '01709640273', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 13:10:56', '2023-03-11 13:10:56'),
(308, NULL, 'Muhammad Showkat Hossain', NULL, NULL, NULL, '01819210367', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 13:21:53', '2023-03-11 13:21:53'),
(309, NULL, 'Md. Shoaib Hassan', NULL, NULL, NULL, '01787388781', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 14:10:56', '2023-03-11 14:10:56'),
(310, NULL, 'Tanvir', NULL, NULL, NULL, '01313766588', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 14:54:34', '2023-03-11 14:54:34'),
(311, NULL, 'Shamsuzzoha Noyon', NULL, NULL, NULL, '01977545405', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 15:09:38', '2023-03-11 15:09:38'),
(312, NULL, 'test', NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 15:24:04', '2023-03-11 15:24:04'),
(313, NULL, 'test', NULL, NULL, NULL, '35255', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 15:24:58', '2023-03-11 15:24:58'),
(314, NULL, 'Dr M Lutfor Rahman', NULL, NULL, NULL, '+101715792510', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 15:24:23', '2023-03-12 15:24:23'),
(315, NULL, 'test', NULL, NULL, NULL, '4545454', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 15:29:17', '2023-03-12 15:29:17'),
(316, NULL, 'Mir Zahed', NULL, NULL, NULL, '01678076391', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 15:32:32', '2023-03-12 15:32:32'),
(317, NULL, 'Omar Faruk', NULL, NULL, NULL, '01711667493', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 16:03:59', '2023-03-12 16:03:59'),
(318, NULL, 'Abdullah', NULL, NULL, NULL, '01671081239', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 16:20:53', '2023-03-12 16:20:53'),
(319, NULL, 'Noman', NULL, NULL, NULL, '01775577865', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 16:21:06', '2023-03-12 16:21:06'),
(320, NULL, 'Z.H.Chowdhury', NULL, NULL, NULL, '01819444430', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 18:30:53', '2023-03-12 18:30:53'),
(321, NULL, 'মোঃ ইকবাল হোসেন', NULL, NULL, NULL, '01716771200', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 19:45:46', '2023-03-12 19:45:46'),
(322, NULL, 'ABM MAHBUBUR RAHMAN', NULL, NULL, NULL, '01712911326', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 20:29:48', '2023-03-12 20:29:48'),
(323, NULL, 'Salman', NULL, NULL, NULL, '01819643650', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 21:35:08', '2023-03-12 21:35:08'),
(324, NULL, 'Raj Sattar', NULL, NULL, NULL, '01791317478', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 21:37:17', '2023-03-12 21:37:17'),
(325, NULL, 'মিনহাজ', NULL, NULL, NULL, '01959944891', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 22:46:17', '2023-03-12 22:46:17'),
(326, NULL, 'Nur afzal', NULL, NULL, NULL, '01711947217', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-12 23:01:50', '2023-03-12 23:01:50'),
(327, NULL, 'Md. Shajibul', NULL, NULL, NULL, '01611110208', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 00:35:27', '2023-03-13 00:35:27'),
(328, NULL, 'Sharif Uddin Ahmed', NULL, NULL, NULL, '01711705797', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 01:29:49', '2023-03-13 01:29:49'),
(329, NULL, 'আহসান উল্লাহ তমাল', NULL, NULL, NULL, '01711564976', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 02:32:58', '2023-03-13 02:32:58'),
(330, NULL, 'Shanjida Akhter', NULL, NULL, NULL, '01708524019', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 07:37:59', '2023-03-13 07:37:59'),
(331, NULL, 'Nur Khasru', NULL, NULL, NULL, '+8801712190735', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:12:18', '2023-03-13 09:12:18'),
(332, NULL, 'ফারজানা', NULL, NULL, NULL, '01712926765', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:30:38', '2023-03-13 09:30:38'),
(333, NULL, 'Foysal', NULL, NULL, NULL, '01755691271', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:40:58', '2023-03-13 09:40:58'),
(334, NULL, 'M.B. Doza', NULL, NULL, NULL, '01987606060', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:45:13', '2023-03-13 09:45:13'),
(335, NULL, 'ShafiulAlam', NULL, NULL, NULL, '01817129050', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 10:55:13', '2023-03-13 10:55:13'),
(336, NULL, 'N A Masud', NULL, NULL, NULL, '01911426106', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 11:19:37', '2023-03-13 11:19:37'),
(337, NULL, 'Reaz Faruque', NULL, NULL, NULL, '01819218332', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 12:34:59', '2023-03-13 12:34:59'),
(338, NULL, 'RAZIA Sultana  Chowdhury', NULL, NULL, NULL, '01711748758', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 12:44:51', '2023-03-13 12:44:51'),
(339, NULL, 'Alli', NULL, NULL, NULL, '01971332825', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 13:11:46', '2023-03-13 13:11:46'),
(340, NULL, 'Md.Mizanur Rahmam', NULL, NULL, NULL, '01745818704', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 13:28:03', '2023-03-13 13:28:03'),
(341, NULL, 'Brig Gen Naimul Hoq', NULL, NULL, NULL, '01720066233', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 14:39:21', '2023-03-13 14:39:21'),
(342, NULL, 'Sabrina Saba', NULL, NULL, NULL, '01843634530', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 15:13:46', '2023-03-13 15:13:46'),
(343, NULL, 'মোঃ ইকবাল হোসেন', NULL, NULL, NULL, '01711524521', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 16:12:09', '2023-03-13 16:12:09'),
(344, NULL, 'Dr Himel chakma', NULL, NULL, NULL, '01811442885', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 17:09:41', '2023-03-13 17:09:41'),
(345, NULL, 'Jisan', NULL, NULL, NULL, '01873958181', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 17:31:09', '2023-03-13 17:31:09'),
(346, NULL, 'Jisan', NULL, NULL, NULL, '01873958181', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 17:33:57', '2023-03-13 17:33:57'),
(347, NULL, 'K m  Sirajul', NULL, NULL, NULL, '01712589487', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 18:04:59', '2023-03-13 18:04:59'),
(348, NULL, 'Major Syrus', NULL, NULL, NULL, '8801713091546', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 19:18:06', '2023-03-13 19:18:06'),
(349, NULL, 'আব্দুল রাজ্জাক', NULL, NULL, NULL, '01710146664', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 19:31:51', '2023-03-13 19:31:51'),
(350, NULL, 'Faisal Ahmed', NULL, NULL, NULL, '+8801733557760', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 19:36:55', '2023-03-13 19:36:55'),
(351, NULL, 'Momen khan', NULL, NULL, NULL, '01682024105', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 20:12:56', '2023-03-13 20:12:56'),
(352, NULL, 'Ashraful Alam', NULL, NULL, NULL, '01864217622', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 21:10:35', '2023-03-13 21:10:35'),
(353, NULL, 'Faria', NULL, NULL, NULL, '01713187939', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 22:39:20', '2023-03-13 22:39:20'),
(354, NULL, 'Ileus', NULL, NULL, NULL, '+8801753753451', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 22:41:10', '2023-03-13 22:41:10'),
(355, NULL, 'Dr Jesmin Chowdhury', NULL, NULL, NULL, '01714396123', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 23:38:13', '2023-03-13 23:38:13'),
(356, NULL, 'khokon', NULL, NULL, NULL, '01939912604', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 00:10:34', '2023-03-14 00:10:34'),
(357, NULL, 'Niloy', NULL, NULL, NULL, '8801717400777', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 00:12:35', '2023-03-14 00:12:35'),
(358, NULL, NULL, NULL, NULL, NULL, '01766551179', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 00:24:18', '2023-03-14 00:24:18'),
(359, NULL, 'Sumaiya', NULL, NULL, NULL, '01408606908', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 00:37:10', '2023-03-14 00:37:10'),
(360, NULL, 'Jisan', NULL, NULL, NULL, '01873958181', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 01:06:56', '2023-03-14 01:06:56'),
(361, NULL, 'Dipto Samajder', NULL, NULL, NULL, '01303838711', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 01:17:54', '2023-03-14 01:17:54'),
(362, NULL, 'Sadik', NULL, NULL, NULL, '01715672071', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 01:27:30', '2023-03-14 01:27:30'),
(363, NULL, 'Jafor hoq', NULL, NULL, NULL, '01753666871', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 01:51:44', '2023-03-14 01:51:44'),
(364, NULL, 'Moon', NULL, NULL, NULL, '01711233038', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 01:59:06', '2023-03-14 01:59:06'),
(365, NULL, 'Abid', NULL, NULL, NULL, '01841841181', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 02:07:59', '2023-03-14 02:07:59'),
(366, NULL, 'Md Shohan', NULL, NULL, NULL, '01827756733', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 02:19:25', '2023-03-14 02:19:25'),
(367, NULL, 'Rijbee', NULL, NULL, NULL, '01732542700', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 02:36:41', '2023-03-14 02:36:41'),
(368, NULL, 'Nafiz', NULL, NULL, NULL, '01675915701', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 03:59:42', '2023-03-14 03:59:42'),
(369, NULL, 'Shyamal', NULL, NULL, NULL, '01711300229', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 07:55:20', '2023-03-14 07:55:20'),
(370, NULL, 'rocky khandaker', NULL, NULL, NULL, '01705505224', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 08:15:33', '2023-03-14 08:15:33'),
(371, NULL, 'Mustafa', NULL, NULL, NULL, '01850214621', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 09:53:56', '2023-03-14 09:53:56'),
(372, NULL, 'Bimol', NULL, NULL, NULL, '01815650286', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 10:11:55', '2023-03-14 10:11:55'),
(373, NULL, 'Mh Shehoron', NULL, NULL, NULL, '01670969448', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 10:16:21', '2023-03-14 10:16:21'),
(374, NULL, 'Ashrafun', NULL, NULL, NULL, '01750616361', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 11:14:41', '2023-03-14 11:14:41'),
(375, NULL, 'Mr. SOHEL', NULL, NULL, NULL, '01712882300', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 11:47:51', '2023-03-14 11:47:51'),
(376, NULL, 'Muhd Zakir', NULL, NULL, NULL, '01552407668', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 12:01:43', '2023-03-14 12:01:43'),
(377, NULL, 'Suraiya Akhter', NULL, NULL, NULL, '01716379641', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 13:02:47', '2023-03-14 13:02:47'),
(378, NULL, 'Ali', NULL, NULL, NULL, '01716697058', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 14:14:18', '2023-03-14 14:14:18'),
(379, NULL, 'Eng. Habib', NULL, NULL, NULL, '01625823335', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 14:15:13', '2023-03-14 14:15:13'),
(380, NULL, 'Adin', NULL, NULL, NULL, '01955100766', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 14:26:03', '2023-03-14 14:26:03'),
(381, NULL, 'Tania', NULL, NULL, NULL, '01746129970', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 15:26:07', '2023-03-14 15:26:07'),
(382, NULL, 'Mr. Firoz Ahmed', NULL, NULL, NULL, '01714133430', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 17:18:35', '2023-03-14 17:18:35'),
(383, NULL, 'Md arif Hossain', NULL, NULL, NULL, '01719005600', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 18:41:08', '2023-03-14 18:41:08'),
(384, NULL, 'Md arif Hossain', NULL, NULL, NULL, '01719005600', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 18:44:17', '2023-03-14 18:44:17'),
(385, NULL, 'Amit Gomes', NULL, NULL, NULL, '01787057436', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 18:47:43', '2023-03-14 18:47:43'),
(386, NULL, 'Araf', NULL, NULL, NULL, '01796046903', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 18:53:42', '2023-03-14 18:53:42'),
(387, NULL, NULL, NULL, NULL, NULL, '01611538644', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 19:19:04', '2023-03-14 19:19:04'),
(388, NULL, 'Mahbub alam', NULL, NULL, NULL, '01716329983', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 21:01:43', '2023-03-14 21:01:43'),
(389, NULL, 'Hachib', NULL, NULL, NULL, '01777609592', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 21:11:00', '2023-03-14 21:11:00'),
(390, NULL, 'Kazi Mobarak', NULL, NULL, NULL, '01712185125', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 23:30:34', '2023-03-14 23:30:34'),
(391, NULL, 'Arif', NULL, NULL, NULL, '01743916462', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 01:04:44', '2023-03-15 01:04:44'),
(392, NULL, 'Hasan', NULL, NULL, NULL, '01972787849', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 02:12:19', '2023-03-15 02:12:19'),
(393, NULL, NULL, NULL, NULL, NULL, '01711504255', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 02:42:20', '2023-03-15 02:42:20'),
(394, NULL, 'Md arifuzzaman', NULL, NULL, NULL, '01711476402', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 06:37:52', '2023-03-15 06:37:52'),
(395, NULL, 'Azad', NULL, NULL, NULL, '01713013315', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 07:42:50', '2023-03-15 07:42:50'),
(396, NULL, 'Parvez', NULL, NULL, NULL, '01675448220', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 07:47:52', '2023-03-15 07:47:52'),
(397, NULL, 'Tutul', NULL, NULL, NULL, '01834880617', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 08:46:23', '2023-03-15 08:46:23'),
(398, NULL, 'Fazal Mahmud', NULL, NULL, NULL, '01750192486', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 11:23:19', '2023-03-15 11:23:19'),
(399, NULL, 'Mohammad Ashraful Alam', NULL, NULL, NULL, '01715114345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 11:55:05', '2023-03-15 11:55:05'),
(400, NULL, 'Shamsun Nahar', NULL, NULL, NULL, '01771813372', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 12:04:23', '2023-03-15 12:04:23'),
(401, NULL, 'Shampa', NULL, NULL, NULL, '01911369631', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 13:24:35', '2023-03-15 13:24:35'),
(402, NULL, 'Farhana', NULL, NULL, NULL, '01706320039', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 18:18:15', '2023-03-15 18:18:15'),
(403, NULL, 'Ashad', NULL, NULL, NULL, '01888051539', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 18:38:33', '2023-03-15 18:38:33'),
(404, NULL, 'রনি', NULL, NULL, NULL, '01865028444', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 18:53:52', '2023-03-15 18:53:52'),
(405, NULL, 'Mahmud', NULL, NULL, NULL, '01302612015', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 19:54:13', '2023-03-15 19:54:13'),
(406, NULL, 'বনি', NULL, NULL, NULL, '01790074284', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 20:52:29', '2023-03-15 20:52:29'),
(407, NULL, 'Maisha', NULL, NULL, NULL, '01675101107', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 22:59:24', '2023-03-15 22:59:24'),
(408, NULL, 'Rabeya Islam lucky', NULL, NULL, NULL, '01922813263', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:27:09', '2023-03-16 02:27:09'),
(409, NULL, 'নাজমা বেগম', NULL, NULL, NULL, '01616002265', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:35:40', '2023-03-16 02:35:40'),
(410, NULL, 'মোঃ আল আমিন খান', NULL, NULL, NULL, '01734153493', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:36:00', '2023-03-16 02:36:00'),
(411, NULL, 'Imran chowdhury', NULL, NULL, NULL, '01864222221', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:55:49', '2023-03-16 02:55:49'),
(412, NULL, 'Ali', NULL, NULL, NULL, '01712585693', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 07:33:37', '2023-03-16 07:33:37'),
(413, NULL, 'VP Chakravorty', NULL, NULL, NULL, '01404097863', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 07:34:19', '2023-03-16 07:34:19'),
(414, NULL, 'Tanjida', NULL, NULL, NULL, '01750341603', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 07:38:53', '2023-03-16 07:38:53'),
(415, NULL, 'Alam', NULL, NULL, NULL, '01823416330', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 08:29:18', '2023-03-16 08:29:18'),
(416, NULL, 'Nellie', NULL, NULL, NULL, '01711837736', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 08:55:35', '2023-03-16 08:55:35'),
(417, NULL, 'Dr Mominul Islam', NULL, NULL, NULL, '+8801726200151', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 09:21:22', '2023-03-16 09:21:22'),
(418, NULL, 'Fahamida ani', NULL, NULL, NULL, '01715003555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 09:34:43', '2023-03-16 09:34:43'),
(419, NULL, NULL, NULL, NULL, NULL, '01772133667', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 10:26:08', '2023-03-16 10:26:08'),
(420, NULL, 'Azmain Ashraf', NULL, NULL, NULL, '01780180208', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 10:41:17', '2023-03-16 10:41:17'),
(421, NULL, 'Johura', NULL, NULL, NULL, '01875782276', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 11:09:14', '2023-03-16 11:09:14'),
(422, NULL, 'Tahsiba', NULL, NULL, NULL, '01714166144', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 11:14:11', '2023-03-16 11:14:11'),
(423, NULL, 'Mostafa', NULL, NULL, NULL, '01724431076', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 11:16:10', '2023-03-16 11:16:10'),
(424, NULL, 'Khurrom Aziz', NULL, NULL, NULL, '01713430902', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 11:35:04', '2023-03-16 11:35:04'),
(425, NULL, 'Noman', NULL, NULL, NULL, '01775577865', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 11:50:47', '2023-03-16 11:50:47'),
(426, NULL, 'Mehnuma', NULL, NULL, NULL, '01732229490', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 12:23:23', '2023-03-16 12:23:23'),
(427, NULL, NULL, NULL, NULL, NULL, '01966228098', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 12:38:25', '2023-03-16 12:38:25'),
(428, NULL, 'মোরশেদ', NULL, NULL, NULL, '01711020325', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 12:45:24', '2023-03-16 12:45:24'),
(429, NULL, 'Sairul', NULL, NULL, NULL, '01701980040', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 12:53:18', '2023-03-16 12:53:18'),
(430, NULL, NULL, NULL, NULL, NULL, '01715244100', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 13:13:24', '2023-03-16 13:13:24'),
(431, NULL, 'Maksudul Alam', NULL, NULL, NULL, '01755540506', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 13:35:55', '2023-03-16 13:35:55'),
(432, NULL, 'Shamim', NULL, NULL, NULL, '01717141633', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 13:56:54', '2023-03-16 13:56:54'),
(433, NULL, 'Najnin Ara Keya', NULL, NULL, NULL, '01759932802', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 14:42:01', '2023-03-16 14:42:01'),
(434, NULL, 'Fazlu Khan', NULL, NULL, NULL, '01712103952', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:01:24', '2023-03-16 15:01:24'),
(435, NULL, 'Rejuan', NULL, NULL, NULL, '+8801611674472', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:17:39', '2023-03-16 15:17:39'),
(436, NULL, 'Sikder', NULL, NULL, NULL, '01774179484', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:46:12', '2023-03-16 15:46:12'),
(437, NULL, 'Mosharraf Hossain', NULL, NULL, NULL, '01771907980', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 15:58:35', '2023-03-16 15:58:35'),
(438, NULL, 'Arupratan', NULL, NULL, NULL, '01819212678', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 16:35:29', '2023-03-16 16:35:29'),
(439, NULL, 'Asad', NULL, NULL, NULL, '01769998749', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 17:20:34', '2023-03-16 17:20:34'),
(440, NULL, 'Mohammad Aynul', NULL, NULL, NULL, '+8801730041009', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 17:25:37', '2023-03-16 17:25:37'),
(441, NULL, 'Rahman', NULL, NULL, NULL, '01713048540', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 17:29:57', '2023-03-16 17:29:57'),
(442, NULL, 'Mosahead', NULL, NULL, NULL, '01911111193', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 18:12:17', '2023-03-16 18:12:17'),
(443, NULL, 'শাহ ইয়ামিন উল ইসলাম', NULL, NULL, NULL, '01711311924', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 18:13:03', '2023-03-16 18:13:03'),
(444, NULL, 'MD Zakir Hossain', NULL, NULL, NULL, '01911621047', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 18:19:04', '2023-03-16 18:19:04'),
(445, NULL, 'M. Hossain', NULL, NULL, NULL, '01307447377', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 21:30:52', '2023-03-16 21:30:52'),
(446, NULL, 'Zia', NULL, NULL, NULL, '01757401858', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 21:31:47', '2023-03-16 21:31:47'),
(447, NULL, 'Mihir', NULL, NULL, NULL, '01819126487', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 22:32:53', '2023-03-16 22:32:53'),
(448, NULL, NULL, NULL, NULL, NULL, '01857299090', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 05:59:46', '2023-03-17 05:59:46'),
(449, NULL, 'MD Mahabubur Rahman', NULL, NULL, NULL, '01723147055', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 07:24:33', '2023-03-17 07:24:33'),
(450, NULL, 'MD MAHBUBUR RAHMAN', NULL, NULL, NULL, '01977444411', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 08:11:50', '2023-03-17 08:11:50'),
(451, NULL, 'M Masud Shahjahan', NULL, NULL, NULL, '+8801766675386', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 09:15:03', '2023-03-17 09:15:03'),
(452, NULL, 'Siddiqur rahman', NULL, NULL, NULL, '01817660007', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 10:06:27', '2023-03-17 10:06:27'),
(453, NULL, 'Capt. Faravi', NULL, NULL, NULL, '01769926862', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 10:36:41', '2023-03-17 10:36:41'),
(454, NULL, 'Sila', NULL, NULL, NULL, '01711536517', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 11:10:06', '2023-03-17 11:10:06'),
(455, NULL, NULL, NULL, NULL, NULL, '01920190666', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 03:19:55', '2023-03-18 03:19:55'),
(456, NULL, 'Ramzan', NULL, NULL, NULL, '01777168254', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 03:21:48', '2023-03-18 03:21:48'),
(457, NULL, 'Kamrul Khan', NULL, NULL, NULL, '01819181373', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 04:00:20', '2023-03-18 04:00:20'),
(458, NULL, 'Shuvo', NULL, NULL, NULL, '01670923867', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 04:42:00', '2023-03-18 04:42:00'),
(459, NULL, 'Saadiya', NULL, NULL, NULL, '01767564151', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 05:02:06', '2023-03-18 05:02:06'),
(460, NULL, 'TANVEERUL HAQUE', NULL, NULL, NULL, '+8801711525470', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 06:24:44', '2023-03-18 06:24:44'),
(461, NULL, 'Iqbal Jafer', NULL, NULL, NULL, '01755589331', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 08:01:59', '2023-03-18 08:01:59'),
(462, NULL, 'Mohammad Arif', NULL, NULL, NULL, '01819287297', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 11:22:16', '2023-03-18 11:22:16'),
(463, NULL, 'Mynul Haque', NULL, NULL, NULL, '01720808888', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 11:32:24', '2023-03-18 11:32:24'),
(464, NULL, 'Anwar', NULL, NULL, NULL, '01824603679', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 12:01:14', '2023-03-18 12:01:14'),
(465, NULL, 'Mohin', NULL, NULL, NULL, '01748950650', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 12:24:18', '2023-03-18 12:24:18'),
(466, NULL, 'farzana haider', NULL, NULL, NULL, '8801711389572', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 12:35:31', '2023-03-18 12:35:31'),
(467, NULL, 'Faisal Reza', NULL, NULL, NULL, '01711378376', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 12:51:18', '2023-03-18 12:51:18'),
(468, NULL, 'Burhanuddin', NULL, NULL, NULL, '+8801711822207', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 13:32:15', '2023-03-18 13:32:15'),
(469, NULL, NULL, NULL, NULL, NULL, '01730332205', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 13:59:12', '2023-03-18 13:59:12'),
(470, NULL, 'বশির', NULL, NULL, NULL, '01999998019', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 14:31:41', '2023-03-18 14:31:41'),
(471, NULL, NULL, NULL, NULL, NULL, '01720963207', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 14:41:29', '2023-03-18 14:41:29'),
(472, NULL, 'Ehsan K Shoaib.', NULL, NULL, NULL, '01619869300', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 14:41:47', '2023-03-18 14:41:47'),
(473, NULL, 'Tanjil', NULL, NULL, NULL, '01717365179', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 14:49:18', '2023-03-18 14:49:18'),
(474, NULL, 'Ahsan', NULL, NULL, NULL, '01712556477', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 15:31:22', '2023-03-18 15:31:22'),
(475, NULL, 'Alamin Ahmed', NULL, NULL, NULL, '01787694242', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 15:44:32', '2023-03-18 15:44:32'),
(476, NULL, 'নাহিদা', NULL, NULL, NULL, '01770193752', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 16:48:39', '2023-03-18 16:48:39'),
(477, NULL, 'Md. Akram hossen', NULL, NULL, NULL, '01864508120', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 18:09:35', '2023-03-18 18:09:35'),
(478, NULL, 'Imran Ahmed', NULL, NULL, NULL, '01400336149', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 19:43:37', '2023-03-18 19:43:37'),
(479, NULL, 'Dhruba Naha', NULL, NULL, NULL, '01779476579', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 20:06:41', '2023-03-18 20:06:41'),
(480, NULL, 'Moshiur rahaman', NULL, NULL, NULL, '01819274556', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 20:39:39', '2023-03-18 20:39:39'),
(481, NULL, 'মাসুদ রানা', NULL, NULL, NULL, '01717300565', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 21:51:59', '2023-03-18 21:51:59'),
(482, NULL, 'Mahmudul kabir', NULL, NULL, NULL, '01786939922', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 22:06:17', '2023-03-18 22:06:17'),
(483, NULL, 'Raihanul Hoq Siraji', NULL, NULL, NULL, '01711506938', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 22:20:45', '2023-03-18 22:20:45'),
(484, NULL, 'Naushad', NULL, NULL, NULL, '01720064624', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-18 23:10:03', '2023-03-18 23:10:03'),
(485, NULL, 'Rimon', NULL, NULL, NULL, '01735625145', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 01:02:40', '2023-03-19 01:02:40'),
(486, NULL, 'Khurshid', NULL, NULL, NULL, '01711534147', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 01:42:53', '2023-03-19 01:42:53'),
(487, NULL, 'Saiful Islam Piash', NULL, NULL, NULL, '+8801790593849', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 02:44:33', '2023-03-19 02:44:33'),
(488, NULL, NULL, NULL, NULL, NULL, '01790593849', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 02:45:14', '2023-03-19 02:45:14'),
(489, NULL, 'Nipu', NULL, NULL, NULL, '01715309417', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 02:52:16', '2023-03-19 02:52:16'),
(490, NULL, 'Ebrahim', NULL, NULL, NULL, '01750060200', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 03:52:43', '2023-03-19 03:52:43'),
(491, NULL, 'Tanim Siddiquee', NULL, NULL, NULL, '01922364555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 08:17:24', '2023-03-19 08:17:24'),
(492, NULL, 'Khurrom Aziz', NULL, NULL, NULL, '01713430902', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 10:17:54', '2023-03-19 10:17:54'),
(493, NULL, 'Bokul Prodhan', NULL, NULL, NULL, '01815650286', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 10:39:54', '2023-03-19 10:39:54'),
(494, NULL, 'Zahir', NULL, NULL, NULL, '01819435166', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 10:46:33', '2023-03-19 10:46:33'),
(495, NULL, 'M Abdus Salam', NULL, NULL, NULL, '01918178888', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 11:49:47', '2023-03-19 11:49:47'),
(496, NULL, 'Col Zahid', NULL, NULL, NULL, '01714083004', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 11:58:08', '2023-03-19 11:58:08'),
(497, NULL, 'Col Zahid', NULL, NULL, NULL, '01714083004', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 11:58:08', '2023-03-19 11:58:08'),
(498, NULL, 'Md Sohel', NULL, NULL, NULL, '+8801301362472', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 12:48:11', '2023-03-19 12:48:11'),
(499, NULL, 'aminul', NULL, NULL, NULL, '01711350954', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 13:58:47', '2023-03-19 13:58:47'),
(500, NULL, 'রাকিব', NULL, NULL, NULL, '01734500650', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-20 11:55:33', '2023-03-20 11:55:33'),
(501, NULL, 'Test', NULL, NULL, NULL, '0522', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-22 21:32:07', '2023-03-22 21:32:07'),
(502, NULL, 'test', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 02:50:19', '2023-03-23 02:50:19'),
(503, NULL, 'Mustafa', NULL, NULL, NULL, '01850214621', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 10:13:49', '2023-03-23 10:13:49'),
(504, NULL, 'prince', NULL, NULL, NULL, '+8801711166031', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 14:23:18', '2023-03-23 14:23:18'),
(505, NULL, 'Limon', NULL, NULL, NULL, '01912157091', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 14:47:56', '2023-03-23 14:47:56'),
(506, NULL, 'Limon', NULL, NULL, NULL, '01912157091', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 14:47:56', '2023-03-23 14:47:56');
INSERT INTO `users` (`id`, `business_name`, `first_name`, `last_name`, `email`, `username`, `mobile`, `email_verified_at`, `password`, `image`, `remember_token`, `status`, `is_seller`, `created_at`, `updated_at`) VALUES
(507, NULL, 'Tahmina Rahman', NULL, NULL, NULL, '01713030049', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 04:58:33', '2023-03-24 04:58:33'),
(508, NULL, 'মোঃ মন্টী খান', NULL, NULL, NULL, '01948997144', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 06:26:07', '2023-03-24 06:26:07'),
(509, NULL, 'Rayhan', NULL, NULL, NULL, '01710309833', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 06:51:54', '2023-03-24 06:51:54'),
(510, NULL, 'সাহিদ', NULL, NULL, NULL, '01790463300', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 08:46:49', '2023-03-24 08:46:49'),
(511, NULL, 'Abdur Razzak', NULL, NULL, NULL, '01722054200', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 10:35:05', '2023-03-24 10:35:05'),
(512, NULL, 'রুবেল', NULL, NULL, NULL, '01925919230', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 12:03:00', '2023-03-24 12:03:00'),
(513, NULL, 'Rony', NULL, NULL, NULL, '01713666498', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 14:26:22', '2023-03-24 14:26:22'),
(514, NULL, 'Mohammed', 'Azaad', 'a01620236036@gmail.com', NULL, '01620236036', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 16:58:59', '2023-03-24 17:03:29'),
(515, NULL, 'Md Alom', NULL, NULL, NULL, '01877789893', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 17:14:59', '2023-03-24 17:14:59'),
(516, NULL, 'মোঃ রফিকুল ইসলাম', NULL, NULL, NULL, '01938085720', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 20:51:47', '2023-03-24 20:51:47'),
(517, NULL, 'Md Mannan sarker', NULL, NULL, NULL, '01707269560', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-24 22:13:28', '2023-03-24 22:13:28'),
(518, NULL, 'trst', NULL, NULL, NULL, '665', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 02:48:52', '2023-03-25 02:48:52'),
(519, NULL, 'Money after hair grow', NULL, NULL, NULL, '01885500500', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 06:27:11', '2023-03-25 06:27:11'),
(520, NULL, 'Kaniz fatema chowdhury', NULL, NULL, NULL, '01731163584', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 06:30:13', '2023-03-25 06:30:13'),
(521, NULL, 'Morshed', NULL, NULL, NULL, '+8801711082135', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 08:13:07', '2023-03-25 08:13:07'),
(522, NULL, 'Prof Dr tripti', NULL, NULL, NULL, '01711354169', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 08:41:10', '2023-03-25 08:41:10'),
(523, NULL, 'md Alamin islam', NULL, NULL, NULL, '01782310979', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 09:39:54', '2023-03-25 09:39:54'),
(524, NULL, 'Zahiurul', NULL, NULL, NULL, '1757121888', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 10:58:56', '2023-03-25 10:58:56'),
(525, NULL, 'জুলহাস', NULL, NULL, NULL, '01935265024', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 11:37:00', '2023-03-25 11:37:00'),
(526, NULL, 'Shafi Samudra', NULL, NULL, NULL, '01716124944', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 12:20:05', '2023-03-25 12:20:05'),
(527, NULL, 'nayem', NULL, NULL, NULL, '8801968388588', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 12:31:53', '2023-03-25 12:31:53'),
(528, NULL, 'Muhaimin', NULL, NULL, NULL, '01959688747', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 13:14:23', '2023-03-25 13:14:23'),
(529, NULL, 'test', NULL, NULL, NULL, '33344', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 15:47:12', '2023-03-25 15:47:12'),
(530, NULL, 'S. Rahman', NULL, NULL, NULL, '01817660007', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 17:26:48', '2023-03-25 17:26:48'),
(531, NULL, NULL, NULL, NULL, NULL, '01950727620', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 19:24:09', '2023-03-25 19:24:09'),
(532, NULL, 'Monir Hossain Siddique', NULL, NULL, NULL, '01819089062', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:31:21', '2023-03-25 22:31:21'),
(533, NULL, 'Rabbi', NULL, NULL, NULL, '01311471750', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:32:22', '2023-03-25 22:32:22'),
(534, NULL, 'Nayan', NULL, NULL, NULL, '01642771358', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:34:08', '2023-03-25 22:34:08'),
(535, NULL, NULL, NULL, NULL, NULL, '01601955335', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:39:42', '2023-03-25 22:39:42'),
(536, NULL, 'Mehedi', NULL, NULL, NULL, '+8801867843267', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:41:11', '2023-03-25 22:41:11'),
(537, NULL, 'Shakhawat', NULL, NULL, NULL, '01711683108', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:41:21', '2023-03-25 22:41:21'),
(538, NULL, 'শেখ রাতুল', NULL, NULL, NULL, '01869973867', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:47:27', '2023-03-25 22:47:27'),
(539, NULL, 'Moni', NULL, NULL, NULL, '01752851180', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:51:31', '2023-03-25 22:51:31'),
(540, NULL, 'হাসনাত', NULL, NULL, NULL, '01720306855', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:51:58', '2023-03-25 22:51:58'),
(541, NULL, 'Asif', NULL, NULL, NULL, '01712068595', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:56:32', '2023-03-25 22:56:32'),
(542, NULL, 'Ashraful', NULL, NULL, NULL, '01717985109', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 22:56:58', '2023-03-25 22:56:58'),
(543, NULL, 'M.Zaman', NULL, NULL, NULL, '01711563301', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:03:30', '2023-03-25 23:03:30'),
(544, NULL, 'Md.Amran', NULL, NULL, NULL, '01715648108', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:04:04', '2023-03-25 23:04:04'),
(545, NULL, 'Sojib', NULL, NULL, NULL, '01710674225', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:04:27', '2023-03-25 23:04:27'),
(546, NULL, 'রাজিউর রহমান', NULL, NULL, NULL, '01711251371', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:05:46', '2023-03-25 23:05:46'),
(547, NULL, 'AD Abdur Rahim', NULL, NULL, NULL, '01711780335', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:06:57', '2023-03-25 23:06:57'),
(548, NULL, 'Arshad', NULL, NULL, NULL, '01816944071', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:09:16', '2023-03-25 23:09:16'),
(549, NULL, 'Subrata Ray', NULL, NULL, NULL, '01609008296', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:11:03', '2023-03-25 23:11:03'),
(550, NULL, 'Labib', NULL, NULL, NULL, '01751290676', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:11:29', '2023-03-25 23:11:29'),
(551, NULL, 'আরিয়ান আবির', NULL, NULL, NULL, '01940144369', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:16:34', '2023-03-25 23:16:34'),
(552, NULL, 'Siam', NULL, NULL, NULL, '01970064450', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:19:47', '2023-03-25 23:19:47'),
(553, NULL, 'Tanzil islam', NULL, NULL, NULL, '01616411441', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:21:53', '2023-03-25 23:21:53'),
(554, NULL, NULL, NULL, NULL, NULL, '01834876436', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:23:48', '2023-03-25 23:23:48'),
(555, NULL, 'Akramul Azim', NULL, NULL, NULL, '01712684293', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:25:55', '2023-03-25 23:25:55'),
(556, NULL, 'Md forhad khan', NULL, NULL, NULL, '01870105663', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:26:11', '2023-03-25 23:26:11'),
(557, NULL, 'HASAN', NULL, NULL, NULL, '01966003004', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:27:25', '2023-03-25 23:27:25'),
(558, NULL, 'Naaz', NULL, NULL, NULL, '01712917198', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:29:42', '2023-03-25 23:29:42'),
(559, NULL, 'Dr.Minhaz uddin ( tarek)', NULL, NULL, NULL, '01711931554', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:31:52', '2023-03-25 23:31:52'),
(560, NULL, 'মাহফুজ আলম', NULL, NULL, NULL, '01310227471', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:32:32', '2023-03-25 23:32:32'),
(561, NULL, 'Nayem', NULL, NULL, NULL, '01767974397', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:33:42', '2023-03-25 23:33:42'),
(562, NULL, 'Fakhrul Azam', NULL, NULL, NULL, '01819272700', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:35:37', '2023-03-25 23:35:37'),
(563, NULL, 'Tarek uzzaman', NULL, NULL, NULL, '01713879280', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:44:33', '2023-03-25 23:44:33'),
(564, NULL, 'Shayan', NULL, NULL, NULL, '01750025040', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:44:45', '2023-03-25 23:44:45'),
(565, NULL, 'Sadia', NULL, NULL, NULL, '01711961733', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:45:55', '2023-03-25 23:45:55'),
(566, NULL, 'Ruhul Amin', NULL, NULL, NULL, '01642520804', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:46:21', '2023-03-25 23:46:21'),
(567, NULL, 'Ramim Chowdhury', NULL, NULL, NULL, '01319009399', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:47:20', '2023-03-25 23:47:20'),
(568, NULL, 'Doha', NULL, NULL, NULL, '01913232523', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 23:54:07', '2023-03-25 23:54:07'),
(569, NULL, 'Apu', NULL, NULL, NULL, '01715297039', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:01:28', '2023-03-26 00:01:28'),
(570, NULL, 'Humayun', NULL, NULL, NULL, '01756873185', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:04:03', '2023-03-26 00:04:03'),
(571, NULL, 'Aminul sir', NULL, NULL, NULL, '01401414438', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:13:27', '2023-03-26 00:13:27'),
(572, NULL, 'tawhid liton', NULL, NULL, NULL, '88001718978970', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:15:30', '2023-03-26 00:15:30'),
(573, NULL, 'Azizul', NULL, NULL, NULL, '01703808838', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:29:02', '2023-03-26 00:29:02'),
(574, NULL, 'Zunayed', NULL, NULL, NULL, '01711524863', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:32:56', '2023-03-26 00:32:56'),
(575, NULL, 'Shipa', NULL, NULL, NULL, '01913350060', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:37:21', '2023-03-26 00:37:21'),
(576, NULL, 'Major saleh', NULL, NULL, NULL, '+8801962424702', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:47:46', '2023-03-26 00:47:46'),
(577, NULL, 'Sulyman', NULL, NULL, NULL, '01771723975', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:49:56', '2023-03-26 00:49:56'),
(578, NULL, 'আদিত্য পাল', NULL, NULL, NULL, '01779955252', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 00:52:02', '2023-03-26 00:52:02'),
(579, NULL, 'Md jomir', NULL, NULL, NULL, '01301240052', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 01:03:05', '2023-03-26 01:03:05'),
(580, NULL, 'Bhuiyan, Sattar', NULL, NULL, NULL, '01733655778', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 01:09:49', '2023-03-26 01:09:49'),
(581, NULL, 'Sayem', NULL, NULL, NULL, '01881892933', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 01:49:42', '2023-03-26 01:49:42'),
(582, NULL, 'Rafiqul Islam khan', NULL, NULL, NULL, '01730000354', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 01:50:35', '2023-03-26 01:50:35'),
(583, NULL, 'Ali Hussain', NULL, NULL, NULL, '01679666284', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 02:00:08', '2023-03-26 02:00:08'),
(584, NULL, 'sm manik', NULL, NULL, NULL, '01741644778', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 02:21:02', '2023-03-26 02:21:02'),
(585, NULL, 'Afnan', NULL, NULL, NULL, '01711586659', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 02:29:12', '2023-03-26 02:29:12'),
(586, NULL, 'Mizan', NULL, NULL, NULL, '01713988841', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 02:49:32', '2023-03-26 02:49:32'),
(587, NULL, 'Zohir', NULL, NULL, NULL, '01966445566', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 04:43:56', '2023-03-26 04:43:56'),
(588, NULL, 'Mohammed', NULL, NULL, NULL, '8801620236036', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 05:26:57', '2023-03-26 05:26:57'),
(589, NULL, 'Alal ahmed', NULL, NULL, NULL, '01404884606', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 08:20:41', '2023-03-26 08:20:41'),
(590, NULL, 'Sohel Sarker', NULL, NULL, NULL, '01948257317', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 08:25:29', '2023-03-26 08:25:29'),
(591, NULL, 'Md Mahbubur Rahman', NULL, NULL, NULL, '01715261722', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 08:35:27', '2023-03-26 08:35:27'),
(592, NULL, 'Sangidul Islam Roni', NULL, NULL, NULL, '01877245342', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 08:44:58', '2023-03-26 08:44:58'),
(593, NULL, 'Hlalnif', NULL, NULL, NULL, '01988194708', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 09:20:36', '2023-03-26 09:20:36'),
(594, NULL, 'Zaheed Anam Khan', NULL, NULL, NULL, '01715104600', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 09:29:43', '2023-03-26 09:29:43'),
(595, NULL, 'রাব্বী মিয়া', NULL, NULL, NULL, '01311471750', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 09:45:24', '2023-03-26 09:45:24'),
(596, NULL, 'Imran', NULL, NULL, NULL, '01736434116', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 09:49:00', '2023-03-26 09:49:00'),
(597, NULL, 'Aamad', NULL, NULL, NULL, '+8801794078080', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:09:46', '2023-03-26 10:09:46'),
(598, NULL, 'MD asaduzzaman', NULL, NULL, NULL, '01707334047', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:11:09', '2023-03-26 10:11:09'),
(599, NULL, 'Arman Bin Alvi', NULL, NULL, NULL, '01915447755', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:29:47', '2023-03-26 10:29:47'),
(600, NULL, 'Hasan Khurshid', NULL, NULL, NULL, '01817104598', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:30:24', '2023-03-26 10:30:24'),
(601, NULL, 'Apurbo', NULL, NULL, NULL, '01302149867', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 10:49:01', '2023-03-26 10:49:01'),
(602, NULL, 'Mahir azam', NULL, NULL, NULL, '01757034109', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:06:05', '2023-03-26 11:06:05'),
(603, NULL, NULL, NULL, NULL, NULL, '01943128437', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:06:28', '2023-03-26 11:06:28'),
(604, NULL, 'SAfina', NULL, NULL, NULL, '01711521874', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:08:46', '2023-03-26 11:08:46'),
(605, NULL, 'Sahadat', NULL, NULL, NULL, '01609221812', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:37:29', '2023-03-26 11:37:29'),
(606, NULL, 'আরিফ', NULL, NULL, NULL, '01402468181', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:40:44', '2023-03-26 11:40:44'),
(607, NULL, 'আনিস', NULL, NULL, NULL, '01735725670', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:46:36', '2023-03-26 11:46:36'),
(608, NULL, 'Mdmonirkhan', NULL, NULL, NULL, '01799695769', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:49:36', '2023-03-26 11:49:36'),
(609, NULL, 'Mamun', NULL, NULL, NULL, '01325833080', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:54:47', '2023-03-26 11:54:47'),
(610, NULL, 'Abu', NULL, NULL, NULL, '8801785073513', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 11:55:12', '2023-03-26 11:55:12'),
(611, NULL, 'Rasel sarkar', NULL, NULL, NULL, '01919570148', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:05:05', '2023-03-26 12:05:05'),
(612, NULL, 'Md.Hasibur Rahman Gazi', NULL, NULL, NULL, '01782393171', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:08:40', '2023-03-26 12:08:40'),
(613, NULL, 'Shahtur', NULL, NULL, NULL, '01777773111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:13:28', '2023-03-26 12:13:28'),
(614, NULL, 'Rumel', NULL, NULL, NULL, '01730665320', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:20:35', '2023-03-26 12:20:35'),
(615, NULL, 'hussain', NULL, NULL, NULL, '01772598802', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:23:23', '2023-03-26 12:23:23'),
(616, NULL, 'sayid', NULL, NULL, NULL, '01403187705', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:29:28', '2023-03-26 12:29:28'),
(617, NULL, 'Arup sarkar', NULL, NULL, NULL, '01922652210', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:35:34', '2023-03-26 12:35:34'),
(618, NULL, 'Ahmed zibon', NULL, NULL, NULL, '01764772111', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:36:43', '2023-03-26 12:36:43'),
(619, NULL, NULL, NULL, NULL, NULL, '01811659579', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 12:45:55', '2023-03-26 12:45:55'),
(620, NULL, 'Masum', NULL, NULL, NULL, '01977771952', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:02:25', '2023-03-26 13:02:25'),
(621, NULL, 'Hamim Hasan Mahmud', NULL, NULL, NULL, '01313788013', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:09:42', '2023-03-26 13:09:42'),
(622, NULL, 'Rifat chowdhury', NULL, NULL, NULL, '01711179238', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:17:38', '2023-03-26 13:17:38'),
(623, NULL, 'Borhan uddin', NULL, NULL, NULL, '01755692324', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:38:56', '2023-03-26 13:38:56'),
(624, NULL, 'Fakhrul Hasan Fahad', NULL, NULL, NULL, '01811226406', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:39:36', '2023-03-26 13:39:36'),
(625, NULL, 'Rashidul Hasan', NULL, NULL, NULL, '01713044943', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:40:56', '2023-03-26 13:40:56'),
(626, NULL, 'আদিত্য পাল', NULL, NULL, NULL, '01779955252', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:43:14', '2023-03-26 13:43:14'),
(627, NULL, NULL, NULL, NULL, NULL, '01610013518', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 13:55:10', '2023-03-26 13:55:10'),
(628, NULL, 'Ismail', NULL, NULL, NULL, '01791981059', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:01:28', '2023-03-26 14:01:28'),
(629, NULL, 'Mh Maheb', NULL, NULL, NULL, '01910135330', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:12:00', '2023-03-26 14:12:00'),
(630, NULL, 'সোহান', NULL, NULL, NULL, '01986271084', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:29:22', '2023-03-26 14:29:22'),
(631, NULL, 'সোহান', NULL, NULL, NULL, '01986271084', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:29:22', '2023-03-26 14:29:22'),
(632, NULL, NULL, NULL, NULL, NULL, '01310533342', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:45:17', '2023-03-26 14:45:17'),
(633, NULL, 'রাসিক', NULL, NULL, NULL, '01798490974', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 14:46:31', '2023-03-26 14:46:31'),
(634, NULL, 'Ahmad', NULL, NULL, NULL, '01744612221', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:01:38', '2023-03-26 15:01:38'),
(635, NULL, 'Raju molla', NULL, NULL, NULL, '8801319632580', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:16:11', '2023-03-26 15:16:11'),
(636, NULL, 'জিহাদ', NULL, NULL, NULL, '01773197509', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:21:02', '2023-03-26 15:21:02'),
(637, NULL, 'Husam uddin', NULL, NULL, NULL, '01781639761', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:28:03', '2023-03-26 15:28:03'),
(638, NULL, 'Abbas uddin', NULL, NULL, NULL, '01826751620', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:28:08', '2023-03-26 15:28:08'),
(639, NULL, 'সজীব', NULL, NULL, NULL, '01976456771', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:34:12', '2023-03-26 15:34:12'),
(640, NULL, 'মো: আল মারুফ', NULL, NULL, NULL, '01717385894', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:37:20', '2023-03-26 15:37:20'),
(641, NULL, 'ইউসুফ', NULL, NULL, NULL, '01812023920', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:40:57', '2023-03-26 15:40:57'),
(642, NULL, 'Mahabub Sarker', NULL, NULL, NULL, '01309950131', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:41:22', '2023-03-26 15:41:22'),
(643, NULL, 'Shohel', NULL, NULL, NULL, '01839052608', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:42:08', '2023-03-26 15:42:08'),
(644, NULL, 'মোহাম্মদ নুর', NULL, NULL, NULL, '01829121496', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:45:52', '2023-03-26 15:45:52'),
(645, NULL, 'Mahin', NULL, NULL, NULL, '01889471936', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:47:08', '2023-03-26 15:47:08'),
(646, NULL, 'Nh shakil', NULL, NULL, NULL, '01825819162', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:47:37', '2023-03-26 15:47:37'),
(647, NULL, 'Afroza', NULL, NULL, NULL, '01768746402', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:48:29', '2023-03-26 15:48:29'),
(648, NULL, 'Jubayer Ahmmed Jabed', NULL, NULL, NULL, '01786086238', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:51:49', '2023-03-26 15:51:49'),
(649, NULL, 'K E H Rahat', NULL, NULL, NULL, '01979746680', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:53:00', '2023-03-26 15:53:00'),
(650, NULL, 'সজীব', NULL, NULL, NULL, '01609806694', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 15:55:32', '2023-03-26 15:55:32'),
(651, NULL, 'Asaduzzaman Pavel', NULL, NULL, NULL, '01810399970', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 16:12:05', '2023-03-26 16:12:05'),
(652, NULL, 'Md aslam', NULL, NULL, NULL, '01782244040', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 16:13:13', '2023-03-26 16:13:13'),
(653, NULL, 'Bappy', NULL, NULL, NULL, '01326700053', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 16:24:48', '2023-03-26 16:24:48'),
(654, NULL, 'Alamgir', NULL, NULL, NULL, '01925643903', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 16:41:44', '2023-03-26 16:41:44'),
(655, NULL, 'Depto', NULL, NULL, NULL, '01868212169', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 16:50:05', '2023-03-26 16:50:05'),
(656, NULL, 'Jahidul Islam', NULL, NULL, NULL, '01755045201', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 17:41:36', '2023-03-26 17:41:36'),
(657, NULL, 'Nobi', NULL, NULL, NULL, '01976857446', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 17:44:40', '2023-03-26 17:44:40'),
(658, NULL, 'Rana', NULL, NULL, NULL, '01733390056', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:11:10', '2023-03-26 18:11:10'),
(659, NULL, 'Riyad', NULL, NULL, NULL, '01734912441', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:34:38', '2023-03-26 18:34:38'),
(660, NULL, NULL, NULL, NULL, NULL, '01628173547', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:35:37', '2023-03-26 18:35:37'),
(661, NULL, 'বরকত উল্লাহ', NULL, NULL, NULL, '01316215302', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:52:30', '2023-03-26 18:52:30'),
(662, NULL, 'IKRA', NULL, NULL, NULL, '01766188858', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:53:05', '2023-03-26 18:53:05'),
(663, NULL, 'Priyash', NULL, NULL, NULL, '01730884596', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 18:57:21', '2023-03-26 18:57:21'),
(664, NULL, 'Md Fahim', NULL, NULL, NULL, '01638856761', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:02:03', '2023-03-26 19:02:03'),
(665, NULL, 'ফায়সাল উদ্দিন', NULL, NULL, NULL, '01845092947', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:03:48', '2023-03-26 19:03:48'),
(666, NULL, '-Dr.Enamul hasan', NULL, NULL, NULL, '01673195058', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:16:16', '2023-03-26 19:16:16'),
(667, NULL, 'Ashad', NULL, NULL, NULL, '01888051539', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:22:06', '2023-03-26 19:22:06'),
(668, NULL, 'Riad', NULL, NULL, NULL, '01855366406', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:27:36', '2023-03-26 19:27:36'),
(669, NULL, 'Rasel', NULL, NULL, NULL, '01834667374', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:32:08', '2023-03-26 19:32:08'),
(670, NULL, NULL, NULL, NULL, NULL, '01911320137', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:33:06', '2023-03-26 19:33:06'),
(671, NULL, 'Moni', NULL, NULL, NULL, '01752851180', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:34:06', '2023-03-26 19:34:06'),
(672, NULL, 'Md.Monowar', NULL, NULL, NULL, '01920967946', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:37:53', '2023-03-26 19:37:53'),
(673, NULL, 'Moin uddin', NULL, NULL, NULL, '01611171272', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:49:49', '2023-03-26 19:49:49'),
(674, NULL, NULL, NULL, NULL, NULL, '01934552636', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 19:50:29', '2023-03-26 19:50:29'),
(675, NULL, 'Balayet hossain', NULL, NULL, NULL, '01830163648', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:07:46', '2023-03-26 20:07:46'),
(676, NULL, 'মীর মনির হোসেন', NULL, NULL, NULL, '01744239919', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:12:54', '2023-03-26 20:12:54'),
(677, NULL, 'MD SHOHAG MIA', NULL, NULL, NULL, '01921302666', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:21:45', '2023-03-26 20:21:45'),
(678, NULL, 'Juned Ahmed', NULL, NULL, NULL, '01787562112', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:36:19', '2023-03-26 20:36:19'),
(679, NULL, 'Saurav', NULL, NULL, NULL, '01757889227', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:39:15', '2023-03-26 20:39:15'),
(680, NULL, 'জাহেদুল ইসলাম', NULL, NULL, NULL, '01972682102', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:46:20', '2023-03-26 20:46:20'),
(681, NULL, 'Pinku sarkar', NULL, NULL, NULL, '01744730700', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:55:48', '2023-03-26 20:55:48'),
(682, NULL, 'Tahmina Rahman', NULL, NULL, NULL, '01713030049', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:56:19', '2023-03-26 20:56:19'),
(683, NULL, 'Rifat', NULL, NULL, NULL, '01738085028', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 20:56:57', '2023-03-26 20:56:57'),
(684, NULL, 'ইমরান ইসলাম', NULL, NULL, NULL, '01309456426', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:06:07', '2023-03-26 21:06:07'),
(685, NULL, 'Shuvo', NULL, NULL, NULL, '01785253720', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:09:31', '2023-03-26 21:09:31'),
(686, NULL, 'Omar', NULL, NULL, NULL, '01749699642', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:17:41', '2023-03-26 21:17:41'),
(687, NULL, 'মো অাবু বককর ছিদ্দিক', NULL, NULL, NULL, '01811333104', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:41:44', '2023-03-26 21:41:44'),
(688, NULL, 'Md.Bablu', NULL, NULL, NULL, '01533620068', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:42:01', '2023-03-26 21:42:01'),
(689, NULL, NULL, NULL, NULL, NULL, '01590003775', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:50:12', '2023-03-26 21:50:12'),
(690, NULL, 'Tofael', NULL, NULL, NULL, '01755550800', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:53:08', '2023-03-26 21:53:08'),
(691, NULL, 'জান্নাত এডভোকেট', NULL, NULL, NULL, '01304731665', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 21:53:32', '2023-03-26 21:53:32'),
(692, NULL, 'MD.Ariful islam', NULL, NULL, NULL, '01853472876', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:09:19', '2023-03-26 22:09:19'),
(693, NULL, 'Surjo', NULL, NULL, NULL, '01877008312', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:11:20', '2023-03-26 22:11:20'),
(694, NULL, 'বাবু ত্রিপুরা', NULL, NULL, NULL, '01869228453', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:11:32', '2023-03-26 22:11:32'),
(695, NULL, 'Rownak jalan', NULL, NULL, NULL, '01837296243', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:13:26', '2023-03-26 22:13:26'),
(696, NULL, 'Adnan', NULL, NULL, NULL, '01874729843', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:18:18', '2023-03-26 22:18:18'),
(697, NULL, 'Shawkat ara khanam', NULL, NULL, NULL, '01716306611', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:21:33', '2023-03-26 22:21:33'),
(698, NULL, 'Tapon chakma', NULL, NULL, NULL, '01609473878', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:26:08', '2023-03-26 22:26:08'),
(699, NULL, NULL, NULL, NULL, NULL, '01575487004', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:26:12', '2023-03-26 22:26:12'),
(700, NULL, 'মুহাম্মদ রুহুল আমীন', NULL, NULL, NULL, '01846528855', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:28:37', '2023-03-26 22:28:37'),
(701, NULL, NULL, NULL, NULL, NULL, '01825959113', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:31:02', '2023-03-26 22:31:02'),
(702, NULL, 'Miah Muhammad Arnab', NULL, NULL, NULL, '01863365155', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:33:17', '2023-03-26 22:33:17'),
(703, NULL, 'Rasel Ahmed', NULL, NULL, NULL, '01718888400', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:36:45', '2023-03-26 22:36:45'),
(704, NULL, 'Rasel', NULL, NULL, NULL, '01302069044', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:38:00', '2023-03-26 22:38:00'),
(705, NULL, 'Arman Hossen Asif', NULL, NULL, NULL, '01950972356', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:40:10', '2023-03-26 22:40:10'),
(706, NULL, 'সিফাত', NULL, NULL, NULL, '01770739529', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:46:56', '2023-03-26 22:46:56'),
(707, NULL, 'সিফাত', NULL, NULL, NULL, '01770739529', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:46:56', '2023-03-26 22:46:56'),
(708, NULL, 'সিফাত', NULL, NULL, NULL, '01770739529', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:46:57', '2023-03-26 22:46:57'),
(709, NULL, 'Farabi', NULL, NULL, NULL, '01728181103', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 22:49:55', '2023-03-26 22:49:55'),
(710, NULL, 'Md Azman Hossain', NULL, NULL, NULL, '01742595708', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 23:52:20', '2023-03-26 23:52:20'),
(711, NULL, NULL, NULL, NULL, NULL, '01773908318', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:13:50', '2023-03-27 00:13:50'),
(712, NULL, 'Litil', NULL, NULL, NULL, '01369693216', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:16:33', '2023-03-27 00:16:33'),
(713, NULL, 'Dr. Mizan', NULL, NULL, NULL, '01760114450', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:18:25', '2023-03-27 00:18:25'),
(714, NULL, 'Bijoy', NULL, NULL, NULL, '01825127294', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:19:44', '2023-03-27 00:19:44'),
(715, NULL, 'Bijoy', NULL, NULL, NULL, '01825127294', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:19:44', '2023-03-27 00:19:44'),
(716, NULL, 'Noyon', NULL, NULL, NULL, '01317586002', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:20:34', '2023-03-27 00:20:34'),
(717, NULL, 'Al', NULL, NULL, NULL, '01911288885', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:20:51', '2023-03-27 00:20:51'),
(718, NULL, 'সজল চন্দ্র', NULL, NULL, NULL, '01638807756', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:22:10', '2023-03-27 00:22:10'),
(719, NULL, 'HARUN', NULL, NULL, NULL, '01722856629', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:26:35', '2023-03-27 00:26:35'),
(720, NULL, 'Roni', NULL, NULL, NULL, '01777435290', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:28:21', '2023-03-27 00:28:21'),
(721, NULL, 'Ishan', NULL, NULL, NULL, '01315817014', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:33:07', '2023-03-27 00:33:07'),
(722, NULL, NULL, NULL, NULL, NULL, '01920005555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:40:06', '2023-03-27 00:40:06'),
(723, NULL, 'মাহবুবুল হক', NULL, NULL, NULL, '01965209890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:40:47', '2023-03-27 00:40:47'),
(724, NULL, 'ইমতিয়াজ আহমেদ টুটুল', NULL, NULL, NULL, '01716599617', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:45:12', '2023-03-27 00:45:12'),
(725, NULL, 'মোঃফরহাদ', NULL, NULL, NULL, '01714995499', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:45:51', '2023-03-27 00:45:51'),
(726, NULL, 'Sahid', NULL, NULL, NULL, '01728249006', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:49:12', '2023-03-27 00:49:12'),
(727, NULL, 'Siyam dewan', NULL, NULL, NULL, '01853239980', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 00:55:36', '2023-03-27 00:55:36'),
(728, NULL, 'Muhammad Selim', NULL, NULL, NULL, '01603251838', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:06:24', '2023-03-27 01:06:24'),
(729, NULL, NULL, NULL, NULL, NULL, '01852903450', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:19:24', '2023-03-27 01:19:24'),
(730, NULL, 'Showrob', NULL, NULL, NULL, '01643235363', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:19:47', '2023-03-27 01:19:47'),
(731, NULL, 'MD Rafi', NULL, NULL, NULL, '01766574507', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:37:53', '2023-03-27 01:37:53'),
(732, NULL, 'Saddam', NULL, NULL, NULL, '01631179760', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:43:35', '2023-03-27 01:43:35'),
(733, NULL, 'Irfan', NULL, NULL, NULL, '01940154646', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:46:04', '2023-03-27 01:46:04'),
(734, NULL, 'Mohammad Arif Faisal', NULL, NULL, NULL, '01716223061', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:46:22', '2023-03-27 01:46:22'),
(735, NULL, 'Md.Fabian', NULL, NULL, NULL, '01717102834', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:56:28', '2023-03-27 01:56:28'),
(736, NULL, 'Md.Mahbubul', NULL, NULL, NULL, '01711806467', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:13:12', '2023-03-27 02:13:12'),
(737, NULL, 'Jishan Chowdhury', NULL, NULL, NULL, '01839997576', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:19:49', '2023-03-27 02:19:49'),
(738, NULL, 'Nazmul', NULL, NULL, NULL, '01819152484', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:22:20', '2023-03-27 02:22:20'),
(739, NULL, 'ma_sum', NULL, NULL, NULL, '01784578889', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:23:57', '2023-03-27 02:23:57'),
(740, NULL, 'opu', NULL, NULL, NULL, '01727108660', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:32:12', '2023-03-27 02:32:12'),
(741, NULL, 'সিরাজুল ইসলাম', NULL, NULL, NULL, '01743877338', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:38:15', '2023-03-27 02:38:15'),
(742, NULL, 'Manik', NULL, NULL, NULL, '01712278321', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 02:52:50', '2023-03-27 02:52:50'),
(743, NULL, 'Mamunur Rashid', NULL, NULL, NULL, '01737865303', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:04:23', '2023-03-27 03:04:23'),
(744, NULL, 'আফ্রিদি হাসান', NULL, NULL, NULL, '01842708155', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:06:49', '2023-03-27 03:06:49'),
(745, NULL, 'Nahidul islam', NULL, NULL, NULL, '01313260156', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:14:16', '2023-03-27 03:14:16'),
(746, NULL, 'Nadim hossen', NULL, NULL, NULL, '01850198513', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:18:05', '2023-03-27 03:18:05'),
(747, NULL, 'Abdullah', NULL, NULL, NULL, '01890633608', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:23:06', '2023-03-27 03:23:06'),
(748, NULL, 'মিনহাজ', NULL, NULL, NULL, '01931553047', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:27:11', '2023-03-27 03:27:11'),
(749, NULL, 'Shotabdi', NULL, NULL, NULL, '01300294870', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:36:58', '2023-03-27 03:36:58'),
(750, NULL, 'arif md', NULL, NULL, NULL, '01312474447', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:39:28', '2023-03-27 03:39:28'),
(751, NULL, 'Md humayun', NULL, NULL, NULL, '01328918663', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:50:18', '2023-03-27 03:50:18'),
(752, NULL, 'Lucky Ahmed', NULL, NULL, NULL, '01711932392', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 03:58:36', '2023-03-27 03:58:36'),
(753, NULL, 'Navid', NULL, NULL, NULL, '01633689595', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:03:46', '2023-03-27 04:03:46'),
(754, NULL, 'Dr.Monsur', NULL, NULL, NULL, '01309001996', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:03:56', '2023-03-27 04:03:56'),
(755, NULL, 'মোঃ মনিরুজ্জামান খান', NULL, NULL, NULL, '01712106131', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:08:13', '2023-03-27 04:08:13'),
(756, NULL, 'Irin pervin', NULL, NULL, NULL, '01759254344', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:12:47', '2023-03-27 04:12:47'),
(757, NULL, 'Md.Monzurul Islam', NULL, NULL, NULL, '01716258580', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:18:21', '2023-03-27 04:18:21'),
(758, NULL, 'মোহাম্মদ নুর', NULL, NULL, NULL, '01840885886', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:19:32', '2023-03-27 04:19:32'),
(759, NULL, 'Nazmul', NULL, NULL, NULL, '01862615972', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:22:28', '2023-03-27 04:22:28'),
(760, NULL, 'Shibly', NULL, NULL, NULL, '01713048759', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:29:46', '2023-03-27 04:29:46'),
(761, NULL, 'Abdullah', NULL, NULL, NULL, '01716696195', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:33:11', '2023-03-27 04:33:11'),
(762, NULL, 'Shomrat', NULL, NULL, NULL, '01640616865', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 04:33:38', '2023-03-27 04:33:38'),
(763, NULL, 'Mijanur Rahman', NULL, NULL, NULL, '01712795156', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:09:03', '2023-03-27 05:09:03'),
(764, NULL, 'হানিফ', NULL, NULL, NULL, '01600300723', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:11:14', '2023-03-27 05:11:14'),
(765, NULL, 'Md Majedur Sikder', NULL, NULL, NULL, '01867847155', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:20:26', '2023-03-27 05:20:26'),
(766, NULL, 'শান্ত বড়ুয়া', NULL, NULL, NULL, '01644208273', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:23:15', '2023-03-27 05:23:15'),
(767, NULL, 'Oli', NULL, NULL, NULL, '01716171482', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:27:43', '2023-03-27 05:27:43'),
(768, NULL, 'আব্দুল কুদ্দুস', NULL, NULL, NULL, '01711575064', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:28:48', '2023-03-27 05:28:48'),
(769, NULL, 'Shaimul Karim', NULL, NULL, NULL, '01714080514', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:37:50', '2023-03-27 05:37:50'),
(770, NULL, 'Md.sumon Ahmed', NULL, NULL, NULL, '1711582417', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 05:45:37', '2023-03-27 05:45:37'),
(771, NULL, 'Janaka', NULL, NULL, NULL, '+8801300386195', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:04:03', '2023-03-27 06:04:03'),
(772, NULL, 'Shihab', NULL, NULL, NULL, '01311425519', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:08:59', '2023-03-27 06:08:59'),
(773, NULL, 'Prodip', NULL, NULL, NULL, '01759988877', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:19:17', '2023-03-27 06:19:17'),
(774, NULL, 'Abu Tohid Roni', NULL, NULL, NULL, '01400504006', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:47:51', '2023-03-27 06:47:51'),
(775, NULL, 'রফিকুল', NULL, NULL, NULL, '01719398637', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:20:54', '2023-03-27 07:20:54'),
(776, NULL, 'Rayhan', NULL, NULL, NULL, '01315394960', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:32:00', '2023-03-27 07:32:00'),
(777, NULL, 'Noore jannat', NULL, NULL, NULL, '01714410668', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:45:23', '2023-03-27 07:45:23'),
(778, NULL, 'Ripan jyoti chakma', NULL, NULL, NULL, '01782923216', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:52:11', '2023-03-27 07:52:11'),
(779, NULL, NULL, NULL, NULL, NULL, '01867592812', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:53:05', '2023-03-27 07:53:05'),
(780, NULL, 'Mehedi', NULL, NULL, NULL, '01764695944', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:06:59', '2023-03-27 08:06:59'),
(781, NULL, 'Alim', NULL, NULL, NULL, '01952238648', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:13:37', '2023-03-27 08:13:37'),
(782, NULL, 'Arfat', NULL, NULL, NULL, '01884562613', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:14:05', '2023-03-27 08:14:05'),
(783, NULL, 'Esmail', NULL, NULL, NULL, '01737303388', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:14:15', '2023-03-27 08:14:15'),
(784, NULL, 'মোঃ রাকিবুল ইসলাম', NULL, NULL, NULL, '01941935142', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:24:52', '2023-03-27 08:24:52'),
(785, NULL, 'Md javed', NULL, NULL, NULL, '01840311208', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:32:12', '2023-03-27 08:32:12'),
(786, NULL, 'Ahsun', NULL, NULL, NULL, '+8801712295386', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:39:45', '2023-03-27 08:39:45'),
(787, NULL, 'Salman', NULL, NULL, NULL, '01712960204', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:44:52', '2023-03-27 08:44:52'),
(788, NULL, 'মোহাম্মদ তারেক জিয়া', NULL, NULL, NULL, '01638570030', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:48:29', '2023-03-27 08:48:29'),
(789, NULL, 'saiful islam', NULL, NULL, NULL, '01727984654', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:56:23', '2023-03-27 08:56:23'),
(790, NULL, 'Farabi', NULL, NULL, NULL, '01406527184', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 08:59:02', '2023-03-27 08:59:02'),
(791, NULL, 'Farabi', NULL, NULL, NULL, '01406527184', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:00:07', '2023-03-27 09:00:07'),
(792, NULL, 'Farabi', NULL, NULL, NULL, '01406527184', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:01:36', '2023-03-27 09:01:36'),
(793, NULL, 'Md jinir', NULL, NULL, NULL, '01914706885', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:08:49', '2023-03-27 09:08:49'),
(794, NULL, 'Moniruzzaman', NULL, NULL, NULL, '01962400937', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:11:15', '2023-03-27 09:11:15'),
(795, NULL, 'Rahim', NULL, NULL, NULL, '01301441462', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:32:17', '2023-03-27 09:32:17'),
(796, NULL, 'Tauhid', NULL, NULL, NULL, '01956236722', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:36:52', '2023-03-27 09:36:52'),
(797, NULL, 'Mehedi Hasan Miraz', NULL, NULL, NULL, '01568102137', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:40:22', '2023-03-27 09:40:22'),
(798, NULL, 'shamim', NULL, NULL, NULL, '01983856535', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:46:37', '2023-03-27 09:46:37'),
(799, NULL, 'Rasel', NULL, NULL, NULL, '01770029369', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:49:35', '2023-03-27 09:49:35'),
(800, NULL, 'Naeem Ahmed', NULL, NULL, NULL, '01771102559', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:50:30', '2023-03-27 09:50:30'),
(801, NULL, 'Rafiq Chowdhury', NULL, NULL, NULL, '01711505745', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 09:53:29', '2023-03-27 09:53:29'),
(802, NULL, 'Zubayer', NULL, NULL, NULL, '01764383751', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:05:47', '2023-03-27 10:05:47'),
(803, NULL, 'Hannan', NULL, NULL, NULL, '01713224466', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:08:27', '2023-03-27 10:08:27'),
(804, NULL, 'Shanto', NULL, NULL, NULL, '01406229243', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:10:21', '2023-03-27 10:10:21'),
(805, NULL, 'Tusher', NULL, NULL, NULL, '01322439960', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:11:15', '2023-03-27 10:11:15'),
(806, NULL, 'আরিয়ান', NULL, NULL, NULL, '01983272426', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:12:38', '2023-03-27 10:12:38'),
(807, NULL, 'Mahejur', NULL, NULL, NULL, '01939555122', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:14:51', '2023-03-27 10:14:51'),
(808, NULL, 'Sajid', NULL, NULL, NULL, '01777890286', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:30:20', '2023-03-27 10:30:20'),
(809, NULL, 'Md mazed', NULL, NULL, NULL, '01863451576', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:36:25', '2023-03-27 10:36:25'),
(810, NULL, 'Shajedur', NULL, NULL, NULL, '01749786267', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:39:29', '2023-03-27 10:39:29'),
(811, NULL, NULL, NULL, NULL, NULL, '01706873661', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 10:41:12', '2023-03-27 10:41:12'),
(812, NULL, 'jihad', NULL, NULL, NULL, '01615852571', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 11:08:21', '2023-03-27 11:08:21'),
(813, NULL, 'Monir', NULL, NULL, NULL, '01590003775', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 11:51:14', '2023-03-27 11:51:14'),
(814, NULL, 'রবিন ভাই', NULL, NULL, NULL, '01646926803', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 12:08:28', '2023-03-27 12:08:28'),
(815, NULL, 'shabbier', NULL, NULL, NULL, '01811275729', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 20:34:39', '2023-03-27 20:34:39'),
(817, NULL, 'Sohail ahmed', NULL, NULL, NULL, '01711542262', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-01 09:30:50', '2023-04-01 09:30:50'),
(818, NULL, 'Paypal Testing', NULL, NULL, NULL, '01700000000', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-03 16:30:14', '2023-04-03 16:30:14'),
(819, NULL, 'sdfgsd', NULL, NULL, NULL, '01615597820', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 16:59:24', '2023-04-05 16:59:24'),
(820, NULL, 'Hasinul', NULL, NULL, NULL, '01673916841', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 00:54:46', '2023-04-06 00:54:46'),
(821, NULL, 'test', NULL, NULL, NULL, '46556', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-09 14:05:18', '2023-04-09 14:05:18'),
(822, NULL, 'test', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 01:17:23', '2023-05-03 01:17:23'),
(823, NULL, 'test', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 01:18:36', '2023-05-03 01:18:36'),
(824, NULL, 'সৌরভ', NULL, NULL, NULL, '01921543211', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:44:08', '2023-05-03 10:44:08'),
(825, NULL, 'Enayet Hussain', NULL, NULL, NULL, '01553606163', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 11:50:44', '2023-05-03 11:50:44'),
(826, NULL, 'test', NULL, NULL, NULL, '33344', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 02:09:32', '2023-05-04 02:09:32'),
(827, NULL, 'Zilani', NULL, NULL, NULL, '01711166810', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 11:03:30', '2023-05-04 11:03:30'),
(828, NULL, 'Sufian', NULL, NULL, NULL, '01879139863', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 11:39:23', '2023-05-04 11:39:23'),
(829, NULL, 'নেযামত', NULL, NULL, NULL, '01775570935', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 13:47:59', '2023-05-04 13:47:59'),
(830, NULL, 'test', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-07 17:52:37', '2023-05-07 17:52:37'),
(831, NULL, 'test', NULL, NULL, NULL, '03456789', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 00:20:37', '2023-05-08 00:20:37'),
(832, NULL, 'Rima', NULL, NULL, NULL, '01715108177', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 01:33:04', '2023-05-08 01:33:04'),
(833, NULL, 'হালিমা নাহার', NULL, NULL, NULL, '01711527839', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 11:01:15', '2023-05-08 11:01:15'),
(834, NULL, 'Arupratan', NULL, NULL, NULL, '01819212678', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 19:15:06', '2023-05-08 19:15:06'),
(836, 'Softitglobal', 'Shontosh', 'shontosh', 'shontosh@gmail.com', 'shontosh', NULL, NULL, '$2y$10$Gtr42OpJm0v0lO7fR9ixvuAvCTRN0bBUkkG3eOs9N2h6V2xOljRX.', NULL, NULL, NULL, NULL, '2023-05-19 19:00:17', '2023-05-19 19:00:17'),
(837, 'Soft IT Global', 'Arif', 'Arif', 'arif@gmail.com', 'arif', NULL, NULL, '$2y$10$KBR6KFHn2.bs97Hr8wizY.NsB.Tc3gh7nRiGb08q9dFKZRoOOWYtW', NULL, NULL, NULL, NULL, '2023-05-19 19:01:02', '2023-05-19 19:01:02'),
(838, NULL, 'test', NULL, NULL, NULL, '234567890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-20 00:27:48', '2023-05-20 00:27:48'),
(839, NULL, 'test', NULL, NULL, NULL, '454545', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-21 13:41:27', '2023-05-21 13:41:27'),
(840, NULL, 'Md Shah Moazzem', NULL, NULL, NULL, '01318070454', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-22 15:35:04', '2023-05-22 15:35:04'),
(841, NULL, 'Chy', NULL, NULL, NULL, '6558863555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 18:40:33', '2023-05-26 18:40:33'),
(842, NULL, 'Chy', NULL, NULL, NULL, '6558863555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 18:40:44', '2023-05-26 18:40:44'),
(843, NULL, 'Chy', NULL, NULL, NULL, '6558863555', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 18:40:46', '2023-05-26 18:40:46'),
(844, NULL, 'Hhg', NULL, NULL, NULL, '08523697412', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 18:41:34', '2023-05-26 18:41:34'),
(845, NULL, 'Hhg', NULL, NULL, NULL, '08523697412', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 18:41:37', '2023-05-26 18:41:37'),
(846, NULL, NULL, NULL, NULL, NULL, '01672696621', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-27 15:11:57', '2023-05-27 15:11:57'),
(847, NULL, 'সুমর', NULL, NULL, NULL, '01712972020', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 21:00:11', '2023-05-31 21:00:11'),
(848, NULL, 'Ttest', NULL, NULL, NULL, '12345678901', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 02:37:28', '2023-06-04 02:37:28'),
(849, NULL, 'Ttest', NULL, NULL, NULL, '12345678901', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 02:37:39', '2023-06-04 02:37:39'),
(850, NULL, 'test', NULL, NULL, NULL, '234567890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 19:33:16', '2023-06-04 19:33:16'),
(851, NULL, 'test', NULL, NULL, NULL, '234567890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 19:33:39', '2023-06-04 19:33:39'),
(852, NULL, 'test', NULL, NULL, NULL, '234567890', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 19:38:07', '2023-06-04 19:38:07'),
(853, NULL, 'Sadikul islam', NULL, NULL, NULL, '01978750230', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 10:39:48', '2023-06-09 10:39:48'),
(854, NULL, 'Sadikul islam', NULL, NULL, NULL, '01978750230', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 10:41:10', '2023-06-09 10:41:10'),
(855, NULL, 'hira', NULL, NULL, NULL, '01976621897', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:53:31', '2023-06-09 15:53:31'),
(856, NULL, 'A', NULL, NULL, NULL, '01569874563', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 17:14:09', '2023-06-09 17:14:09'),
(857, NULL, NULL, NULL, NULL, NULL, '01673543394', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 21:38:21', '2023-06-09 21:38:21'),
(858, NULL, 'Biology', NULL, NULL, NULL, '01979988807', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 23:02:55', '2023-06-09 23:02:55'),
(859, NULL, 'Test', NULL, NULL, NULL, '66988', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 23:33:07', '2023-06-09 23:33:07'),
(860, NULL, 'Test', NULL, NULL, NULL, '66988', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 23:33:13', '2023-06-09 23:33:13'),
(861, NULL, 'Test', NULL, NULL, NULL, '66985669888', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 23:33:19', '2023-06-09 23:33:19'),
(862, NULL, 'গাহসও', NULL, NULL, NULL, '01759794994', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10 01:05:03', '2023-06-10 01:05:03'),
(863, NULL, 'Iftiher', NULL, NULL, NULL, '01858206083', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10 11:11:29', '2023-06-10 11:11:29'),
(864, NULL, 'Mamunur', NULL, NULL, NULL, '01979988807', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10 11:33:15', '2023-06-10 11:33:15'),
(865, NULL, 'Jahir', NULL, NULL, NULL, '01611603233', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10 16:35:44', '2023-06-10 16:35:44'),
(866, NULL, 'Jansn', NULL, NULL, NULL, '0172939272627', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10 19:36:00', '2023-06-10 19:36:00');
INSERT INTO `users` (`id`, `business_name`, `first_name`, `last_name`, `email`, `username`, `mobile`, `email_verified_at`, `password`, `image`, `remember_token`, `status`, `is_seller`, `created_at`, `updated_at`) VALUES
(867, NULL, 'Naim', NULL, NULL, NULL, '01938264923', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-11 12:27:46', '2023-06-11 12:27:46'),
(868, NULL, NULL, NULL, NULL, NULL, '01752853403', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-11 13:08:56', '2023-06-11 13:08:56'),
(869, NULL, 'Shah', NULL, NULL, NULL, '01842289999', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-11 19:57:12', '2023-06-11 19:57:12'),
(870, NULL, 'Shah', NULL, NULL, NULL, '01722289999', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-11 19:58:16', '2023-06-11 19:58:16'),
(871, NULL, NULL, NULL, NULL, NULL, '01831315114', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 00:22:12', '2023-06-12 00:22:12'),
(872, NULL, 'TEST', 'TEST', 'naimprince010@gmail.com', NULL, NULL, NULL, '$2y$10$eG18TeIrTib3GXqh/0f/gOUjE/CEd.RZaoEI7T7MlEEL.aw79W9le', NULL, NULL, 1, 1, '2023-06-12 09:15:42', '2023-06-12 09:15:42'),
(873, NULL, '্্্', NULL, NULL, NULL, '8855', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 10:51:56', '2023-06-12 10:51:56'),
(874, NULL, NULL, NULL, NULL, NULL, '01550027833', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 14:45:13', '2023-06-12 14:45:13'),
(875, NULL, 'Mohammad', NULL, NULL, NULL, '234565442325', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 15:15:04', '2023-06-12 15:15:04'),
(876, NULL, 'Md Anwar', NULL, NULL, NULL, '01794030592', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 15:16:03', '2023-06-12 15:16:03'),
(877, NULL, 'gdfgfdgdfgdfg', NULL, NULL, NULL, '12345678901', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 15:59:41', '2023-06-12 15:59:41'),
(878, NULL, 'test', NULL, NULL, NULL, '33344', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-13 18:41:28', '2023-06-13 18:41:28'),
(879, NULL, 'test', NULL, NULL, NULL, '33344', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-13 18:44:17', '2023-06-13 18:44:17'),
(880, NULL, NULL, NULL, NULL, NULL, '01828444460', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 00:21:14', '2023-06-14 00:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` tinyint(4) DEFAULT NULL,
  `color_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `product_id`, `size_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2022-12-17 07:24:21', '2022-12-17 07:24:21'),
(2, 3, 3, 1, '2022-12-17 22:46:41', '2023-06-10 23:29:05'),
(3, 4, 3, 1, '2022-12-17 22:56:48', '2023-06-10 23:29:58'),
(4, 5, 3, 1, '2022-12-17 23:06:23', '2023-06-10 23:30:09'),
(5, 6, 3, 1, '2022-12-17 23:15:59', '2023-06-10 23:30:53'),
(6, 7, 3, 1, '2022-12-17 23:18:07', '2023-06-10 23:31:03'),
(7, 8, 3, 1, '2022-12-17 23:47:03', '2023-06-10 23:31:13'),
(8, 9, 3, 1, '2022-12-18 12:09:47', '2023-06-10 23:31:21'),
(9, 10, 3, 1, '2022-12-18 12:13:28', '2023-06-10 23:31:37'),
(10, 11, 3, 1, '2022-12-18 12:14:37', '2023-06-10 23:31:48'),
(11, 12, 3, 1, '2022-12-18 12:18:41', '2023-06-10 23:32:50'),
(12, 13, 3, 1, '2022-12-18 12:19:04', '2023-06-10 23:33:01'),
(13, 14, 3, 1, '2022-12-18 12:21:17', '2023-06-10 23:33:13'),
(14, 15, 3, 1, '2022-12-18 12:23:04', '2023-06-10 23:33:26'),
(15, 16, 3, 1, '2022-12-18 12:25:50', '2023-06-10 23:33:35'),
(16, 17, 3, 1, '2022-12-18 12:26:13', '2023-06-10 23:33:45'),
(17, 18, 3, 1, '2022-12-18 12:28:33', '2023-06-10 23:33:57'),
(18, 19, 3, 1, '2022-12-18 12:28:36', '2023-06-10 23:34:07'),
(19, 20, 3, 1, '2022-12-18 12:32:43', '2023-06-10 23:34:32'),
(20, 21, 3, 1, '2022-12-18 12:32:58', '2023-06-10 23:34:42'),
(21, 22, 3, 1, '2022-12-18 12:35:44', '2023-06-10 23:34:51'),
(22, 23, 3, 1, '2022-12-18 12:37:00', '2023-06-10 23:35:01'),
(23, 24, 3, 1, '2022-12-18 12:40:07', '2023-06-10 23:35:23'),
(24, 25, 3, 1, '2022-12-18 12:41:19', '2023-06-10 23:35:39'),
(25, 26, 3, 1, '2022-12-18 12:44:39', '2023-06-10 23:35:59'),
(26, 27, 3, 1, '2022-12-18 12:46:03', '2023-06-10 23:36:13'),
(27, 28, 3, 1, '2022-12-18 12:49:33', '2023-06-10 23:36:23'),
(28, 29, 3, 1, '2022-12-18 12:49:43', '2023-06-10 23:36:43'),
(29, 30, 3, 1, '2022-12-18 12:52:27', '2023-06-10 23:36:55'),
(30, 31, 3, 1, '2022-12-18 12:54:27', '2023-06-10 23:37:09'),
(31, 32, 3, 1, '2022-12-18 12:54:52', '2023-06-10 23:37:32'),
(32, 33, 3, 1, '2022-12-18 12:58:46', '2023-06-10 23:37:46'),
(33, 34, 3, 1, '2022-12-18 13:01:02', '2023-06-10 23:38:28'),
(34, 35, 3, 1, '2022-12-18 13:06:15', '2023-06-10 23:39:09'),
(35, 36, 3, 1, '2022-12-18 13:09:37', '2023-06-10 23:39:37'),
(36, 37, 3, 1, '2022-12-18 13:12:40', '2023-06-10 23:39:51'),
(37, 38, 3, 1, '2022-12-18 13:15:04', '2023-06-10 23:40:04'),
(38, 39, 3, 1, '2022-12-18 13:16:15', '2023-06-10 23:40:25'),
(39, 40, 3, 1, '2022-12-18 13:19:53', '2023-06-10 23:44:23'),
(40, 41, 3, 1, '2022-12-18 13:20:23', '2023-06-10 23:44:39'),
(41, 42, 3, 1, '2022-12-18 13:23:36', '2023-06-10 23:44:50'),
(42, 43, 3, 1, '2022-12-18 13:25:01', '2023-06-10 23:45:15'),
(43, 44, 3, 1, '2022-12-18 13:28:58', '2023-06-10 23:45:28'),
(44, 45, 3, 1, '2022-12-18 15:28:54', '2023-06-10 23:45:53'),
(50, 50, 3, 1, '2023-02-08 15:33:41', '2023-06-10 23:46:33'),
(56, 55, 1, 1, '2023-02-18 03:17:03', '2023-02-18 03:17:03'),
(59, 58, 3, 3, '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(60, 58, 3, 5, '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(61, 58, 3, 8, '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(62, 58, 3, 9, '2023-02-19 20:25:47', '2023-02-19 20:25:47'),
(63, 59, 3, 2, '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(64, 59, 3, 3, '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(65, 59, 3, 9, '2023-02-19 20:44:00', '2023-02-19 20:44:00'),
(66, 60, 3, 3, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(67, 60, 3, 2, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(68, 60, 3, 4, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(69, 60, 3, 9, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(70, 60, 3, 10, '2023-02-19 20:57:17', '2023-02-19 20:57:17'),
(71, 61, 3, 3, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(72, 61, 3, 5, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(73, 61, 3, 11, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(74, 61, 3, 12, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(75, 61, 3, 2, '2023-02-19 21:06:29', '2023-02-19 21:06:29'),
(76, 62, 3, 14, '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(77, 62, 3, 13, '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(78, 62, 3, 7, '2023-02-19 21:17:41', '2023-02-19 21:17:41'),
(79, 63, 3, 3, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(80, 63, 3, 9, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(81, 63, 3, 5, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(82, 63, 3, 12, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(83, 63, 3, 15, '2023-02-19 21:22:02', '2023-02-19 21:22:02'),
(84, 64, 3, 3, '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(85, 64, 3, 5, '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(86, 64, 3, 9, '2023-02-19 21:26:40', '2023-02-19 21:26:40'),
(87, 65, 3, 2, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(88, 65, 3, 3, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(89, 65, 3, 5, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(90, 65, 3, 10, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(91, 65, 3, 11, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(92, 65, 3, 12, '2023-02-19 21:33:09', '2023-02-19 21:33:09'),
(93, 66, 3, 3, '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(94, 66, 3, 16, '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(95, 66, 3, 5, '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(96, 66, 3, 11, '2023-02-19 21:40:50', '2023-02-19 21:40:50'),
(97, 67, 3, 2, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(98, 67, 3, 5, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(99, 67, 3, 3, '2023-02-19 22:53:00', '2023-02-19 22:53:00'),
(100, 67, 3, 17, '2023-02-19 22:53:00', '2023-02-19 22:53:19'),
(101, 68, 3, 2, '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(102, 68, 3, 16, '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(103, 68, 3, 3, '2023-02-19 22:57:19', '2023-02-19 22:57:19'),
(104, 68, 3, 18, '2023-02-19 22:57:19', '2023-02-19 22:58:09'),
(105, 69, 3, 16, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(106, 69, 3, 3, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(107, 69, 3, 12, '2023-02-19 23:00:55', '2023-02-19 23:00:55'),
(108, 70, 3, 3, '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(109, 70, 3, 9, '2023-02-19 23:06:47', '2023-02-19 23:06:47'),
(110, 70, 3, 19, '2023-02-19 23:06:47', '2023-02-19 23:07:25'),
(111, 71, 3, 2, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(112, 71, 3, 5, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(113, 71, 3, 4, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(114, 71, 3, 3, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(115, 71, 3, 6, '2023-02-19 23:10:08', '2023-02-19 23:10:08'),
(116, 72, 3, 3, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(117, 72, 3, 5, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(118, 72, 3, 12, '2023-02-19 23:16:47', '2023-02-19 23:16:47'),
(119, 72, 3, 20, '2023-02-19 23:16:47', '2023-02-19 23:16:57'),
(120, 73, 3, 9, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(121, 73, 3, 5, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(122, 73, 3, 3, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(123, 73, 3, 10, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(124, 73, 3, 20, '2023-02-19 23:20:35', '2023-02-19 23:20:35'),
(125, 74, 3, 2, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(126, 74, 3, 12, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(127, 74, 3, 20, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(128, 74, 3, 3, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(129, 74, 3, 9, '2023-02-19 23:29:53', '2023-02-19 23:29:53'),
(130, 75, 3, 19, '2023-02-19 23:32:16', '2023-02-19 23:32:16'),
(131, 75, 3, 17, '2023-02-19 23:32:16', '2023-02-19 23:32:16'),
(132, 76, 3, 3, '2023-02-19 23:34:57', '2023-02-19 23:34:57'),
(133, 77, 3, 1, '2023-02-27 17:25:55', '2023-02-27 17:25:55'),
(134, 78, 3, 1, '2023-02-27 17:49:12', '2023-02-27 17:49:12'),
(135, 79, 3, 1, '2023-02-27 18:09:21', '2023-02-27 18:09:21'),
(136, 80, 3, 1, '2023-02-27 18:27:28', '2023-02-27 18:27:28'),
(137, 81, 3, 1, '2023-02-28 02:06:31', '2023-02-28 02:06:31'),
(138, 82, 3, 1, '2023-02-28 11:36:51', '2023-02-28 11:36:51'),
(139, 83, 3, 1, '2023-02-28 11:49:46', '2023-02-28 11:49:46'),
(140, 84, 3, 1, '2023-02-28 11:58:14', '2023-02-28 11:58:14'),
(141, 85, 3, 1, '2023-02-28 12:14:18', '2023-02-28 12:14:18'),
(142, 86, 3, 1, '2023-02-28 12:25:44', '2023-02-28 12:25:44'),
(143, 87, 3, 1, '2023-02-28 12:30:28', '2023-02-28 12:30:28'),
(144, 88, 3, 1, '2023-02-28 12:36:01', '2023-02-28 12:36:01'),
(145, 89, 3, 1, '2023-02-28 12:44:53', '2023-02-28 12:44:53'),
(146, 90, 3, 1, '2023-02-28 12:57:47', '2023-02-28 12:57:47'),
(147, 91, 3, 1, '2023-02-28 13:04:45', '2023-02-28 13:04:45'),
(148, 92, 3, 1, '2023-02-28 13:16:13', '2023-02-28 13:16:13'),
(149, 93, 3, 1, '2023-02-28 16:26:50', '2023-02-28 16:26:50'),
(150, 94, 3, 1, '2023-03-01 23:12:13', '2023-03-01 23:12:13'),
(151, 95, 3, 1, '2023-03-05 14:29:16', '2023-03-05 14:29:16'),
(152, 96, 3, 1, '2023-03-05 14:46:22', '2023-03-05 14:46:22'),
(153, 97, 3, 1, '2023-03-05 17:16:05', '2023-03-05 17:16:05'),
(154, 98, 3, 1, '2023-03-08 04:10:07', '2023-03-08 04:10:07'),
(155, 99, 3, 1, '2023-03-09 14:43:30', '2023-03-09 14:43:30'),
(157, 101, 3, 1, '2023-03-15 00:21:50', '2023-03-15 00:21:50'),
(159, 103, 3, 1, '2023-03-18 23:44:40', '2023-03-18 23:44:40'),
(160, 104, 3, 1, '2023-03-23 02:31:47', '2023-03-23 02:31:47'),
(161, 105, 3, 1, '2023-03-25 01:11:56', '2023-03-25 01:11:56'),
(162, 106, 3, 1, '2023-03-25 02:38:35', '2023-03-25 02:38:35'),
(163, 107, 3, 1, '2023-04-05 15:45:24', '2023-04-05 15:45:24'),
(164, 108, 3, 1, '2023-04-05 15:47:51', '2023-04-05 15:47:51'),
(165, 109, 3, 1, '2023-04-12 16:01:02', '2023-04-12 16:01:02'),
(166, 110, 3, 1, '2023-04-12 16:03:46', '2023-04-12 16:03:46'),
(167, 111, 3, 1, '2023-05-03 01:16:41', '2023-05-03 01:16:41'),
(168, 112, 3, 1, '2023-05-04 02:02:25', '2023-05-04 02:02:25'),
(169, 113, 3, 1, '2023-05-07 17:50:35', '2023-05-07 17:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_products`
--
ALTER TABLE `combo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_section_images`
--
ALTER TABLE `home_section_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_products`
--
ALTER TABLE `combo_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_section_images`
--
ALTER TABLE `home_section_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
