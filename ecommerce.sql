-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 06:50 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_quantity`, `created_at`, `updated_at`) VALUES
(12, '2', '5', '1', '2022-05-16 08:49:10', '2022-05-16 08:49:10'),
(13, '2', '1', '1', '2022-05-16 08:49:31', '2022-05-16 08:49:31'),
(14, '2', '10', '4', '2022-06-13 02:19:27', '2022-06-13 02:19:27'),
(15, '2', '7', '5', '2022-06-13 02:20:57', '2022-06-13 02:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 'All Electronics are Here.', 1, 1, '1651980392.jpg', 'electronics', 'good electronics,electronics', 'good electronics,electronics', '2022-04-03 07:59:01', '2022-05-07 22:26:32'),
(2, 'Mobiles', 'mobile', 'All Mobiles are Here.', 1, 1, '1651980369.webp', 'mobile', 'good mobile phones', 'Good Mobile', '2022-04-03 08:00:08', '2022-05-07 22:26:09'),
(3, 'Household Items', 'household', ' Household Items.', 1, 1, '1651980337.jpg', 'household item', 'good household item', 'Good Household Items', '2022-04-03 08:10:45', '2022-05-07 22:25:37'),
(4, 'Wireless', 'wireless', 'All Wireless Items', 1, 1, '1651452571.jpg', 'wireless', 'good wirelss', 'Good Wireless', '2022-04-03 08:12:10', '2022-05-07 04:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(10, '2022_03_26_115008_create_products_table', 1),
(23, '2014_10_12_000000_create_users_table', 2),
(24, '2014_10_12_100000_create_password_resets_table', 2),
(25, '2019_08_19_000000_create_failed_jobs_table', 2),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(27, '2022_03_26_151502_create_categories_table', 2),
(28, '2022_03_30_085035_create_products_table', 2),
(29, '2022_05_09_112620_create_carts_table', 3),
(30, '2022_05_09_114326_create_carts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$r8Fe1tn6G7w35mGiCUf8bOk03D3OVmwpw3VsvtuY7o/hPj3Myh4TC', '2022-05-01 19:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `trending` tinyint(4) DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `long_description`, `original_price`, `selling_price`, `image`, `quantity`, `tax`, `status`, `trending`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'Charger ', 'wire', 'Good charger avail.', 'We provide good charger and quality with warrenty.', '1300', '1100', '1651452884.jpg', '1', '200', 1, 1, 'good charger', 'Good Charger', 'Good Charger', '2022-04-03 08:18:20', '2022-05-07 05:17:38'),
(2, 1, 'Charger', 'iphone  charger', 'good quality', 'Best Charger and provide best quality', '1700', '900', '1651452841.jpg', '1', '50', 1, 1, 'good charger', 'Good Charger', 'Good Charger', '2022-04-03 10:12:42', '2022-05-07 05:18:21'),
(3, 1, 'Charger', 'nokia  charger', 'Good charger avail.', 'Provide Good quality', '1700', '1500', '1651452811.jpg', '1', '100', 1, 1, 'good charger', 'Good Charger', 'Good Charger', '2022-04-03 10:33:29', '2022-05-07 05:18:36'),
(4, 2, 'Oppo', 'oppo  A7', 'Good Phone', 'Ultra Extraordinary', '28000', '25000', '1652317673.webp', '0', '500', 1, 1, 'mobile', 'good mobile phones', 'Good Mobile', '2022-04-03 10:35:33', '2022-05-11 20:07:53'),
(5, 2, 'Vivo', 'vivo  S1', 'Good Mobile', 'Good Mobile', '34000', '28000', '1651453029.jpg', '1', '1000', 1, 1, 'mobile', 'good mobile phones', 'Good Mobile', '2022-04-03 10:37:47', '2022-05-07 05:19:07'),
(6, 2, 'Iphone', 'iphone 13-pro-max', 'Iphone 13-Pro Max', 'Iphone provide the best quality and security', '215000', '210000', '1651453058.webp', '1', '5000', 1, 1, 'mobile', 'good mobiles', 'Good Mobile', '2022-04-09 05:45:48', '2022-05-07 05:19:19'),
(7, 1, 'PowerBank', 'power-bank', 'Power Bank for Charger', 'Provide Power Bank for best charging', '2300', '2000', '1651452914.jpg', '1', '200', 1, 1, 'electronics', 'good electronics,electronics', 'good electronics,electronics', '2022-04-09 05:48:28', '2022-05-07 05:20:36'),
(8, 3, 'Shirts', 'shirts', 'Outfitter', 'Provide best tuff of shirts', '2500', '2200', '1649501484.jpg', '4', '300', 1, 1, 'household item', 'Good Household Items', 'Good Household Items', '2022-04-09 05:51:24', '2022-05-07 05:20:24'),
(9, 3, 'Shirt', 'shirt', 'Formal shirt', 'Best Quality Shirt', '1500', '1200', '1649501643.jpg', '1', '100', 1, 1, 'household item', 'good household item', 'Good Household Items', '2022-04-09 05:54:03', '2022-05-07 05:20:12'),
(10, 4, 'Airpods', 'air-pods', 'Provide Best Quality', 'Branded Airpods for listning', '4500', '3500', '1651452684.jpg', '1', '400', 1, 1, 'wireless', 'good wirelss', 'Good Wireless', '2022-04-09 05:56:37', '2022-05-07 05:19:57'),
(11, 4, 'Airpods', 'airpods', 'Branded Airpods for listning', 'Branded Airpods', '7000', '5000', '1651452997.jpg', '2', '500', 1, 1, 'wireless', 'good wirelss', 'Good Wireless', '2022-04-09 05:57:54', '2022-05-07 05:19:44'),
(12, 4, 'Airpods', 'air_pods', 'Branded Airpods for listning', 'Branded Airpods', '4500', '3500', '1651452642.jpg', '1', '500', 1, 1, 'wireless', 'good wirelss', 'Good Wireless', '2022-04-09 05:59:25', '2022-05-07 05:19:30'),
(13, 4, 'Airpods', 'airpods', 'Branded Airpods for listning', 'Branded Airpods', '4500', '3500', '1651452625.jpg', '1', '500', 1, 1, 'wireless', 'good wirelss', 'Good Wireless', '2022-04-09 06:00:49', '2022-05-07 05:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$MhZL6xImxNRCYzws.H2AGuVfWdKD417ju6nneltgWK4GOJ7Tb/aQ6', 1, NULL, '2022-04-03 07:39:42', '2022-04-03 07:39:42'),
(2, 'Abdullah', 'abdullahali@gmail.com', NULL, '$2y$10$6JBEeXNDupMGZvEHPhfK0u.JA5Tm23eehMHmPwaY773PRufDqebw6', 0, NULL, '2022-04-19 07:31:30', '2022-04-19 07:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD KEY `products_cate_id_foreign` (`cate_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
