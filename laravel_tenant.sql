-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tenant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `merchant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `store_id`, `name`, `created_at`, `updated_at`, `merchant_id`) VALUES
(1, 1, 'Category 1', '2025-02-05 08:31:01', '2025-02-05 08:31:01', 4),
(2, 1, 'Category 2', '2025-02-05 08:31:24', '2025-02-05 08:31:24', 4),
(3, 2, 'Category M', '2025-02-05 08:31:45', '2025-02-05 08:31:45', 4),
(4, 2, 'Category N', '2025-02-05 08:32:01', '2025-02-05 08:32:01', 4),
(5, 5, 'Abir Category 1', '2025-02-05 10:30:46', '2025-02-05 10:30:46', 7),
(6, 6, 'Abir Category 2', '2025-02-05 10:31:10', '2025-02-05 10:31:10', 7),
(7, 7, 'Abdullah Category 1', '2025-02-05 10:46:59', '2025-02-05 10:46:59', 8),
(8, 8, 'Abdullah Category 2', '2025-02-05 10:47:21', '2025-02-05 10:47:21', 8),
(9, 9, 'Joy Category 1', '2025-02-05 11:10:57', '2025-02-05 11:10:57', 9),
(10, 10, 'Joy Category 2', '2025-02-05 11:11:13', '2025-02-05 11:11:13', 9),
(11, 11, 'Hasan C', '2025-02-06 00:19:48', '2025-02-06 00:19:48', 10),
(12, 12, 'Safir c', '2025-02-06 00:29:13', '2025-02-06 00:29:13', 11),
(13, 13, 'halim c', '2025-02-06 00:37:12', '2025-02-06 00:37:12', 12),
(14, 14, 'Azad C', '2025-02-06 00:55:29', '2025-02-06 00:55:29', 13),
(15, 15, 'Sakim ct', '2025-02-06 01:11:35', '2025-02-06 01:11:35', 14),
(16, 16, 'Anis c', '2025-02-06 01:15:09', '2025-02-06 01:15:09', 15);

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
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `name`, `email`, `shop_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mamun', 'mamun@gmail.com', 'Maa Enterprise', '$2y$12$UdH23kTfZKaSCwwWQQfZYOaQu7QsVPns0eUPHLl9lvZPT.ycIIoxu', '2025-02-04 09:08:30', '2025-02-04 09:08:30'),
(2, 'Amir', 'asm@gmail.com', 'Maa Enterprises', '$2y$12$qLPpGIZLGWe5mz/GhrRH4.eThS/ntS/xQi74fiEJA5h6y0W3O2pmq', '2025-02-04 09:10:48', '2025-02-04 09:10:48'),
(3, 'Samir', 'sm@gmail.com', 'Sm Shop', '$2y$12$kUncnjfyRzK06uWLeU0wleYcc3IBAYcCB7xaWc1koTR9ooM60QTI6', '2025-02-04 09:13:56', '2025-02-04 09:13:56'),
(4, 'Jamil', 'jamil@gmail.com', 'Jamil Shop', '$2y$12$fjUl7e1jxxBvZxguwvsUU.fGs5l1zQeeqALov3E6Bemhq8UUwtHO2', '2025-02-04 22:27:02', '2025-02-04 22:27:02'),
(5, 'Kamal', 'kamal@gmail.com', 'Kamal Enterprise', '$2y$12$AGvptdrhJNbwlUIDqVvU4OqPXCHmgq19i0lKK.VZFge1XolCM04Ja', '2025-02-05 05:23:53', '2025-02-05 05:23:53'),
(6, 'Nazrul', 'nazrul@gmail.com', 'Nazrul Enterprise', '$2y$12$xmC7mRvBI63.izZ8MTVp2O8x8w5WgBW20NGq7ZCa1MzFwcETzEK9i', '2025-02-05 05:27:06', '2025-02-05 05:27:06'),
(7, 'Abir', 'abir@gmail.com', 'Abir Shop', '$2y$12$8lMxwY/CQ0Vcqxw4PJwFHe98ObwLl.bCkq6aQ//QkWT2n8SlRpT3O', '2025-02-05 10:29:18', '2025-02-05 10:29:18'),
(8, 'Abdullah', 'abuhmdabdullah@gmail.com', 'Abdullah Shop', '$2y$12$hWSU2kLmW4HQmnGKkr9aWO6rOdYKsY2sqjDh2tdLJgtdhg7C4T1je', '2025-02-05 10:43:51', '2025-02-05 10:43:51'),
(9, 'Joy', 'joy@gmail.com', 'Joy Shop', '$2y$12$NXK3X3OXRTgBxufxnqy5l.L3TJmX6BVJp0ftwblrHOMT3qif22ooK', '2025-02-05 11:09:06', '2025-02-05 11:09:06'),
(10, 'Hasan', 'hasan@gmail.com', 'Hasan Shop', '$2y$12$/tSdoMNtbvsXODn.pRGMAOXxwH89xtwL6V/ZO8jUcPWbP2Mh/rTG.', '2025-02-06 00:18:41', '2025-02-06 00:18:41'),
(11, 'Sakib', 'safir@gmail.com', 'Safir@gmail.com', '$2y$12$e170q.p7uqye/ZbO/qjJdOxvxoqnVxrFSoyv7sjV.81wqXYYGSjhC', '2025-02-06 00:28:07', '2025-02-06 00:28:07'),
(12, 'Halim', 'halim@gmail.com', 'Halim shop', '$2y$12$AJI0v0ZbXy5NK/Co7AKFP.CV3cH/m7Rd63XjEjkysvYBKKZlybxMm', '2025-02-06 00:36:07', '2025-02-06 00:36:07'),
(13, 'Azad', 'azad@gmail.com', 'Azad Shop', '$2y$12$UqYUGb2Gotp1R80ORGU4reyQLG16bKOQfMwAoyTRbRo/vvVLroRUG', '2025-02-06 00:54:49', '2025-02-06 00:54:49'),
(14, 'Sakim', 'sakim@gmail.com', 'Sakim Shop', '$2y$12$SJAzhwoMH.qlaSZjZlcr8.kQU.uU2E6XX8n7pvc48SpQ2aqWe5wBa', '2025-02-06 01:10:42', '2025-02-06 01:10:42'),
(15, 'Anis', 'anis@gmail.com', 'Anis Shop', '$2y$12$nHH5hv1ET23Leu2r4PYScObmBbSqns2J0m6GKaFN9G4LVjVYtnYzK', '2025-02-06 01:14:17', '2025-02-06 01:14:17');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_04_133121_create_merchants_table', 2),
(9, '2025_02_05_100439_create_stores_table', 3),
(10, '2025_02_05_100505_create_categories_table', 3),
(11, '2025_02_05_100523_create_products_table', 3),
(12, '2025_02_05_122127_add_merchant_id_to_stores_table', 3),
(13, '2025_02_05_124758_add_merchant_id_to_products_table', 3),
(14, '2025_02_05_141250_add_merchant_id_to_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `merchant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `category_id`, `name`, `created_at`, `updated_at`, `merchant_id`) VALUES
(1, 1, 1, 'Product 1', '2025-02-05 08:32:41', '2025-02-05 08:32:41', 4),
(2, 2, 3, 'Product 2', '2025-02-05 08:33:03', '2025-02-05 08:33:03', 4),
(3, 5, 5, 'Abir Product 1', '2025-02-05 10:33:09', '2025-02-05 10:33:09', 7),
(4, 6, 6, 'Abir Product 2', '2025-02-05 10:33:30', '2025-02-05 10:33:30', 7),
(5, 7, 7, 'Abdullah Product 1', '2025-02-05 10:47:58', '2025-02-05 10:47:58', 8),
(6, 8, 8, 'Abdullah Product 2', '2025-02-05 10:48:12', '2025-02-05 10:48:12', 8),
(7, 9, 9, 'Joy Product 1', '2025-02-05 11:11:40', '2025-02-05 11:11:40', 9),
(8, 10, 10, 'Joy Product 2', '2025-02-05 11:11:57', '2025-02-05 11:11:57', 9),
(9, 11, 11, 'Hasan p', '2025-02-06 00:20:10', '2025-02-06 00:20:10', 10),
(10, 12, 12, 'Safir p', '2025-02-06 00:29:30', '2025-02-06 00:29:30', 11),
(11, 13, 13, 'halim p', '2025-02-06 00:37:31', '2025-02-06 00:37:31', 12),
(12, 14, 14, 'Azad P', '2025-02-06 00:55:43', '2025-02-06 00:55:43', 13),
(13, 15, 15, 'Sakim p', '2025-02-06 01:11:52', '2025-02-06 01:11:52', 14),
(14, 16, 16, 'Anis p', '2025-02-06 01:15:24', '2025-02-06 01:15:24', 15);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `merchant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `created_at`, `updated_at`, `merchant_id`) VALUES
(1, 'Store 1', '2025-02-05 06:54:13', '2025-02-05 06:54:13', 4),
(2, 'Store 2', '2025-02-05 06:54:25', '2025-02-05 06:54:25', 4),
(3, 'Store x', '2025-02-05 06:55:00', '2025-02-05 06:55:00', 6),
(4, 'Store y', '2025-02-05 06:55:11', '2025-02-05 06:55:11', 6),
(5, 'Abir Store 1', '2025-02-05 10:30:09', '2025-02-05 10:30:09', 7),
(6, 'Abir Store 2', '2025-02-05 10:30:23', '2025-02-05 10:30:23', 7),
(7, 'Abdullah store', '2025-02-05 10:44:33', '2025-02-05 10:44:33', 8),
(8, 'Abdullah store 1', '2025-02-05 10:44:50', '2025-02-05 10:44:50', 8),
(9, 'Joy Store', '2025-02-05 11:10:02', '2025-02-05 11:10:02', 9),
(10, 'Joy Store 1', '2025-02-05 11:10:16', '2025-02-05 11:10:16', 9),
(11, 'Hasan 1', '2025-02-06 00:19:34', '2025-02-06 00:19:34', 10),
(12, 'Safir shop', '2025-02-06 00:28:53', '2025-02-06 00:28:53', 11),
(13, 'halim st', '2025-02-06 00:36:56', '2025-02-06 00:36:56', 12),
(14, 'Azad st', '2025-02-06 00:55:16', '2025-02-06 00:55:16', 13),
(15, 'Sakim St', '2025-02-06 01:11:21', '2025-02-06 01:11:21', 14),
(16, 'Anis Store', '2025-02-06 01:14:51', '2025-02-06 01:14:51', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Salam', 'salam@gmail.com', NULL, '$2y$12$Po5EGQN0eJ4AhF.M87Zmk.s9ScS6XoEklaKBkWhhrGx72m198ksrq', NULL, '2025-02-04 22:59:46', '2025-02-04 22:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_store_id_foreign` (`store_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchants_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_name_unique` (`name`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  ADD CONSTRAINT `categories_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
