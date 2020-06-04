-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` int(10) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_08_205408_create_messages_table', 1),
(4, '2018_05_14_221217_add_read_to_messages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone`, `name`, `email`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(230, '(901) 664-7363 x9430', 'Eudora Johnson DVM', 'mayra04@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'g4fvmLVp6o', '2020-05-27 15:58:51', '2020-05-27 15:58:51'),
(231, '507.460.9288 x39450', 'Haylie Goyette', 'addison.zboncak@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'IJF8ULJn8D', '2020-05-27 15:59:00', '2020-05-27 15:59:00'),
(232, '665.473.4616 x774', 'Jett Gibson', 'ferne.pollich@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'eTmt9ww9OP', '2020-05-27 15:59:02', '2020-05-27 15:59:02'),
(233, '778.374.9417 x951', 'Dr. Annabell Hackett MD', 'vrolfson@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'z4ii9Cw878', '2020-05-27 15:59:11', '2020-05-27 15:59:11'),
(234, '591.875.1222', 'Dr. Anissa Emard PhD', 'gschulist@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '8fWDPwP4W3', '2020-05-27 15:59:13', '2020-05-27 15:59:13'),
(236, '1-705-231-1564 x18349', 'Blanca Harvey', 'scrona@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'UtleS5BepP', '2020-05-27 16:00:58', '2020-05-27 16:00:58'),
(238, '(581) 403-2111', 'Miss Effie Rath', 'yhilpert@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'GhJrIWDxUa', '2020-05-27 16:01:05', '2020-05-27 16:01:05'),
(239, '1-782-938-6238', 'Aletha Kerluke', 'oran.reichert@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'JpOceMSycI', '2020-05-27 16:01:07', '2020-05-27 16:01:07'),
(240, '(432) 263-2772 x612', 'Winfield Franecki II', 'cali.green@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '2MU5c9k4XP', '2020-05-27 16:01:12', '2020-05-27 16:01:12'),
(241, '305.947.2589', 'Neal Keebler II', 'wmacejkovic@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'S3p1VBAvJu', '2020-05-27 16:01:14', '2020-05-27 16:01:14'),
(247, '(493) 782-6908 x796', 'Letha Lehner', 'koepp.karelle@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'nKjhBXpcDU', '2020-05-27 16:10:24', '2020-05-27 16:10:24'),
(248, '(949) 488-7951', 'Connie Steuber', 'heller.durward@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'ENa3DxWc0Z', '2020-05-27 16:10:31', '2020-05-27 16:10:31'),
(249, '(214) 961-0821', 'Ms. Shanon Kautzer Jr.', 'pshanahan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '4y2YMfIaqL', '2020-05-27 16:10:32', '2020-05-27 16:10:32'),
(250, '1-427-729-3671 x26510', 'Dr. Ernesto Prosacco', 'oheathcote@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'ZS1VUyORk4', '2020-05-27 16:10:35', '2020-05-27 16:10:35'),
(251, '1-558-707-6750 x3193', 'Brayan Wintheiser', 'blair61@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '5A4FN9Bi5N', '2020-05-27 16:10:35', '2020-05-27 16:10:35'),
(255, '+12478529552', 'Dr. Myra Kuhic', 'ahegmann@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'gqd72uz6EC', '2020-05-27 16:53:56', '2020-05-27 16:53:56'),
(259, '1-262-516-3550', 'Luis Collins', 'rosalinda.hills@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'UBN6SgZWXn', '2020-05-27 16:54:22', '2020-05-27 16:54:22'),
(260, '859.307.2100 x327', 'Elise Grimes II', 'drew.parisian@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'MGSC1z6LlC', '2020-05-27 16:54:29', '2020-05-27 16:54:29'),
(261, '1-587-965-6389', 'Raleigh Borer', 'kamren61@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'r06LP0wlXg', '2020-05-27 16:54:30', '2020-05-27 16:54:30'),
(262, '1-259-594-2273 x333', 'Kenyon Hauck MD', 'block.mia@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '7Y0DzSxQod', '2020-05-27 16:54:31', '2020-05-27 16:54:31'),
(263, '306-653-8084', 'Johan Mraz', 'lea.bayer@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'nz7DxMW7db', '2020-05-27 16:54:34', '2020-05-27 16:54:34'),
(270, '1-513-700-5286', 'Bianka Windler', 'reynold.feest@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'gnPedDiI9v', '2020-05-27 17:02:45', '2020-05-27 17:02:45'),
(271, '+1-285-242-1520', 'Mrs. Charlene Graham Sr.', 'catherine15@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '7IkQBWweyr', '2020-05-27 17:02:50', '2020-05-27 17:02:50'),
(272, '1-742-762-2766', 'Joanie Stark I', 'benton.wintheiser@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'JO2C3jWyZ4', '2020-05-27 17:02:51', '2020-05-27 17:02:51'),
(273, '685.417.9497', 'Afton Toy', 'wcole@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'di6BfPpYdq', '2020-05-27 17:02:52', '2020-05-27 17:02:52'),
(274, '895-966-2721 x45424', 'Emerson Steuber MD', 'hardy.osinski@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'eeqhjtF4ZF', '2020-05-27 17:02:53', '2020-05-27 17:02:53'),
(276, NULL, 'Augustė', 'auguste@gmail.com', '$2y$10$aHPpkYQZwJvTSd7uOphJQ.WWFo5AQbLte1kqZA25Cc8VXayKSYVOa', '575899710.png', 'P9jtKBEMZhbXeb8qq3719mLPdiIEfx2j0vK5ZJGcNa8bmC7Nu7LmDnFzpuKi', '2020-05-27 17:42:46', '2020-05-27 17:43:35'),
(282, '992.706.2921 x06147', 'Dr. Kayley Mitchell II', 'swehner@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'v3DXUOnlAO', '2020-05-27 20:05:16', '2020-05-27 20:05:16'),
(283, '905.224.2694', 'Corbin Corkery', 'ggleason@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'tFV2Ki3Nuo', '2020-05-27 20:05:22', '2020-05-27 20:05:22'),
(284, '345.920.7696 x535', 'Laron Haag', 'wyman.stephanie@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '9XzwkNcRi5', '2020-05-27 20:05:23', '2020-05-27 20:05:23'),
(285, '+17304189652', 'Misty Hirthe', 'harber.llewellyn@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'ynlKWi5evI', '2020-05-27 20:05:24', '2020-05-27 20:05:24'),
(286, '284-307-8147', 'Hilton Murray', 'jones.tito@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'zXLI9Nqj31', '2020-05-27 20:05:25', '2020-05-27 20:05:25'),
(293, '373.866.2554 x44432', 'Myrna Powlowski', 'demario.macejkovic@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Tx39EyjHCY', '2020-05-27 21:25:50', '2020-05-27 21:25:50'),
(294, '+19303477669', 'Dr. Candelario Stanton V', 'tracey.turner@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Nsk2zPf5he', '2020-05-27 21:25:56', '2020-05-27 21:25:56'),
(295, '1-668-954-3778 x53103', 'Adell Heaney', 'tsmith@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'F69gtc9A8u', '2020-05-27 21:25:57', '2020-05-27 21:25:57'),
(296, '(417) 960-4944 x03119', 'Nicola Ryan', 'nhuel@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'mkNSzs3J1l', '2020-05-27 21:26:00', '2020-05-27 21:26:00'),
(297, '(440) 854-7759 x760', 'Ali Dibbert', 'osvaldo.brakus@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Z2ymvtOfV3', '2020-05-27 21:26:00', '2020-05-27 21:26:00'),
(304, '1-913-372-6872 x200', 'Nayeli Quitzon', 'bthompson@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '7UtBjL2jmt', '2020-05-27 23:39:34', '2020-05-27 23:39:34'),
(305, '349.361.3365', 'Florian Crona II', 'dora96@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'mCJWlFxTI1', '2020-05-27 23:39:39', '2020-05-27 23:39:39'),
(306, '1-694-782-2493 x75994', 'Warren Hansen', 'christiansen.caitlyn@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'AAedQYZ3i4', '2020-05-27 23:39:40', '2020-05-27 23:39:40'),
(307, '1-204-537-6230 x6771', 'Einar Emard DDS', 'dylan72@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '0t6Jno8Ixg', '2020-05-27 23:39:42', '2020-05-27 23:39:42'),
(308, '+1.242.229.7324', 'Lucious Jaskolski', 'icrooks@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'ZT61Bo268w', '2020-05-27 23:39:42', '2020-05-27 23:39:42'),
(315, '1-862-581-0621', 'Dr. Raphael Gerlach', 'xkub@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'VtGKKgnqF7', '2020-05-28 02:24:32', '2020-05-28 02:24:32'),
(316, '787-862-9089', 'Miss Nona Kuvalis', 'kyler.tremblay@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'OJJmaNcxe1', '2020-05-28 02:24:42', '2020-05-28 02:24:42'),
(317, '(545) 556-0650', 'Vidal Haag', 'theo00@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'l8BHTDUXjU', '2020-05-28 02:24:44', '2020-05-28 02:24:44'),
(318, '+1.446.740.6231', 'Dr. Eudora Ledner DVM', 'xgrant@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'qxnNvoJaJ6', '2020-05-28 02:24:46', '2020-05-28 02:24:46'),
(319, '904-380-9183 x567', 'Prof. Delmer Monahan', 'justina83@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'bK3HuzqCRi', '2020-05-28 02:24:46', '2020-05-28 02:24:46'),
(326, '1-542-964-6198 x27060', 'Cory Schoen', 'davon.dibbert@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '3wo3emLZ7b', '2020-05-28 09:12:53', '2020-05-28 09:12:53'),
(327, '279-277-8911', 'Lera Lubowitz', 'emile18@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'KZifjAn1IH', '2020-05-28 09:13:00', '2020-05-28 09:13:00'),
(328, '459-424-1072', 'Brent Beer', 'edwardo66@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '0RhKASU3mB', '2020-05-28 09:13:01', '2020-05-28 09:13:01'),
(329, '+1-675-400-5163', 'Noe Rau', 'legros.candido@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'ZKeMG2urjZ', '2020-05-28 09:13:03', '2020-05-28 09:13:03'),
(330, '(815) 514-3483 x3796', 'Daisha Koepp', 'harley90@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'c8psHLarTd', '2020-05-28 09:13:03', '2020-05-28 09:13:03'),
(337, '+1.827.771.8232', 'Herman Hackett', 'tyrell.nienow@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'dT7APMTNZo', '2020-05-28 09:41:16', '2020-05-28 09:41:16'),
(338, '372-466-4978 x78445', 'Cyril Beer', 'klocko.german@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'TgQ8sIBDM9', '2020-05-28 09:41:23', '2020-05-28 09:41:23'),
(339, '+1.510.869.9479', 'Rhett Douglas', 'obeer@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'EbG8Whn4mg', '2020-05-28 09:41:24', '2020-05-28 09:41:24'),
(340, '1-886-299-2803', 'Tamara Batz PhD', 'mgrady@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '958uJzil6w', '2020-05-28 09:41:26', '2020-05-28 09:41:26'),
(341, '(553) 455-1625 x7471', 'Claudie Mertz', 'carolyn53@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'X1E17OUuQy', '2020-05-28 09:41:27', '2020-05-28 09:41:27'),
(348, '772-333-5527', 'Marcia Roberts', 'emery.greenfelder@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'dfTtG5FBxC', '2020-05-28 10:00:13', '2020-05-28 10:00:13'),
(349, '968-586-1530 x3711', 'Jarrett Bernhard', 'qwill@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'bvQ5lFfUSd', '2020-05-28 10:00:19', '2020-05-28 10:00:19'),
(350, '(543) 828-9884 x562', 'Ms. Madalyn Reinger', 'tillman.denesik@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'huFr7Gv76S', '2020-05-28 10:00:20', '2020-05-28 10:00:20'),
(351, '606.312.8899', 'Shaniya Armstrong IV', 'garland.lakin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '5EJCSTE4a6', '2020-05-28 10:00:22', '2020-05-28 10:00:22'),
(352, '223.587.7618', 'Mrs. Carlotta McClure', 'braxton.rempel@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Q94H0e2U4g', '2020-05-28 10:00:23', '2020-05-28 10:00:23'),
(359, '618.956.2697 x756', 'Marge Barton', 'ryan.lane@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'YzfiLDgx8A', '2020-06-03 21:43:28', '2020-06-03 21:43:28'),
(360, '+19269008212', 'Kirsten Turcotte', 'vergie04@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'uPbpqqcRnA', '2020-06-03 21:43:34', '2020-06-03 21:43:34'),
(361, '386-745-9638', 'Bertram Pollich', 'hberge@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'aVjf3arKLh', '2020-06-03 21:43:35', '2020-06-03 21:43:35'),
(362, '373-922-3234', 'Karl McLaughlin', 'bernhard.oceane@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '5rTK2oQaVx', '2020-06-03 21:43:38', '2020-06-03 21:43:38'),
(363, '+17023869156', 'Juliana Grimes V', 'wilford52@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Hz69Kq2af5', '2020-06-03 21:43:38', '2020-06-03 21:43:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
