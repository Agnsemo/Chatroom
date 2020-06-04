-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 03:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `read`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0, 'Non velit minima autem consequuntur distinctio voluptatem.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(2, 8, 5, 0, 'Atque accusamus assumenda in voluptatem explicabo.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(3, 12, 11, 0, 'Facere qui quisquam accusamus voluptatem qui ipsam.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(4, 2, 13, 0, 'Provident culpa qui deserunt temporibus.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(5, 6, 15, 0, 'Sunt veritatis voluptatem fugiat magnam laborum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(6, 1, 9, 0, 'Numquam quia excepturi autem at voluptas aspernatur quod.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(7, 9, 4, 0, 'Harum quia dicta quo minus.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(8, 1, 6, 0, 'Maxime dolores eaque vitae accusantium omnis non.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(9, 1, 2, 0, 'Omnis rerum et et sit incidunt.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(10, 6, 8, 0, 'Ut assumenda voluptas deserunt voluptatem est odit laudantium.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(11, 12, 7, 0, 'Voluptatem tenetur iusto mollitia non voluptas nisi et quod.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(12, 12, 2, 0, 'Quae necessitatibus eos illum ipsa fugiat qui quis perspiciatis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(13, 8, 2, 0, 'Asperiores dolorem illo aut nulla illum adipisci est.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(14, 1, 15, 0, 'Est saepe distinctio aperiam.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(15, 14, 12, 0, 'Dolorem id consequuntur quibusdam nam odit molestiae.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(16, 6, 3, 0, 'Pariatur quo tempore porro sed.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(17, 9, 2, 0, 'Aut accusamus minus tempore.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(18, 10, 15, 0, 'Vitae eum quia ratione et velit omnis adipisci sed.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(19, 2, 11, 0, 'Quia nihil esse sapiente cum est.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(20, 12, 1, 0, 'Optio occaecati ex est qui distinctio laudantium.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(21, 1, 11, 0, 'Dolorem vel vero mollitia iste voluptas libero eum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(22, 10, 4, 0, 'Maxime sint quos eaque qui.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(23, 13, 2, 0, 'Ipsum in numquam laudantium nihil.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(24, 5, 3, 0, 'Et nobis et totam sint ut non.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(25, 11, 9, 0, 'Fugit in libero non cumque fuga sint.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(26, 6, 10, 0, 'Non voluptatum et dolores.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(27, 7, 15, 0, 'Saepe quia quibusdam optio minus qui.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(28, 2, 12, 0, 'Est ipsum et mollitia.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(29, 3, 11, 0, 'Dignissimos aut quia nostrum a et.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(30, 8, 5, 0, 'Quas aut quo ex minus ut qui quas.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(31, 3, 6, 0, 'Iusto pariatur facilis qui cumque modi.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(32, 15, 13, 0, 'Accusamus sequi fugit commodi minima voluptatem.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(33, 1, 9, 0, 'Optio est culpa beatae repellendus maiores placeat unde incidunt.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(34, 4, 7, 0, 'Aut nesciunt dolor sunt sed.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(35, 9, 7, 0, 'Nulla doloribus mollitia iste exercitationem sit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(36, 12, 11, 0, 'Voluptas at fugit tenetur.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(37, 15, 8, 0, 'Recusandae maxime aut architecto eaque.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(38, 7, 12, 0, 'Numquam quia occaecati error dolore eum earum fugit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(39, 12, 10, 0, 'Recusandae rerum debitis natus ab.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(40, 2, 5, 0, 'Corporis quas voluptatem ut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(41, 6, 11, 0, 'Rerum pariatur culpa maiores facere culpa debitis eum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(42, 8, 9, 0, 'Minima eos sunt illum eos.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(43, 14, 1, 0, 'Possimus exercitationem eum nihil omnis consequatur.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(44, 13, 4, 0, 'Cumque dolore exercitationem quisquam eos excepturi ut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(45, 14, 11, 0, 'Aspernatur itaque et qui porro officiis ab.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(46, 3, 7, 0, 'Maxime dolor molestiae tempora incidunt et est consectetur.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(47, 10, 12, 0, 'Cupiditate ad nobis maiores labore cupiditate aspernatur laudantium.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(48, 6, 5, 0, 'Totam alias voluptate ullam sed cum et a vel.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(49, 5, 11, 0, 'Provident quo rerum minus consequatur natus sit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(50, 4, 14, 0, 'Sit est nihil libero aut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(51, 2, 3, 0, 'Enim necessitatibus molestiae recusandae id voluptatem facilis ad optio.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(52, 1, 13, 0, 'Qui in nisi recusandae aspernatur eveniet veniam voluptatem.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(53, 9, 8, 0, 'Praesentium non et occaecati vel aspernatur nobis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(54, 15, 6, 0, 'Quisquam ducimus ratione ipsam.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(55, 5, 11, 0, 'Aut nemo ipsa sed molestiae aut quisquam rerum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(56, 11, 1, 0, 'Et voluptatibus atque ut qui eos saepe sequi vel.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(57, 6, 14, 0, 'Suscipit ut et quas itaque sunt ipsum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(58, 12, 2, 0, 'Distinctio quae sit magnam quas.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(59, 2, 6, 0, 'Dolorem dolor assumenda sunt aliquid qui eum.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(60, 5, 13, 0, 'Laudantium commodi adipisci suscipit sequi veniam sunt.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(61, 11, 10, 0, 'Consequatur asperiores in iste.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(62, 9, 12, 0, 'Est sequi ut iusto nam illum aut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(63, 2, 10, 0, 'Sed amet est nisi voluptas beatae dolorem.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(64, 15, 3, 0, 'Dolore iste molestiae qui.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(65, 5, 1, 0, 'Repudiandae aut voluptates sit qui sed distinctio dolorem.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(66, 14, 1, 0, 'Similique magnam adipisci veritatis quod est officia enim.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(67, 4, 5, 0, 'Quaerat voluptas dolor esse veniam autem sit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(68, 3, 5, 0, 'Ut fuga dolor consequatur blanditiis eaque accusamus et eius.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(69, 14, 5, 0, 'Fuga enim pariatur et qui totam omnis ut quia.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(70, 12, 3, 0, 'Consequatur sit qui ut reprehenderit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(71, 6, 5, 0, 'Tempore et sed totam fugiat omnis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(72, 1, 13, 0, 'Animi quod ut consectetur nam ut odit amet.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(73, 2, 9, 0, 'Eligendi labore similique atque et dignissimos ad.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(74, 14, 11, 0, 'Occaecati excepturi itaque et ut ea exercitationem facere.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(75, 7, 8, 0, 'Exercitationem quae iusto pariatur voluptas qui ut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(76, 2, 10, 0, 'Expedita magnam expedita beatae quia quidem consequuntur.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(77, 3, 9, 0, 'Assumenda sapiente quisquam asperiores sed facilis explicabo sit.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(78, 9, 2, 0, 'Praesentium aut ut iure architecto quam iste.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(79, 6, 3, 0, 'Recusandae architecto fugit at quibusdam reprehenderit soluta.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(80, 3, 4, 0, 'Distinctio nam aut ab placeat est voluptas.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(81, 8, 3, 0, 'Itaque et dolorum delectus sequi.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(82, 8, 6, 0, 'Quo totam qui repellendus.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(83, 12, 7, 0, 'Libero consequatur quia perferendis omnis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(84, 1, 4, 0, 'Voluptate aliquam consectetur eaque modi est laboriosam quos.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(85, 5, 13, 0, 'Molestias similique quis itaque similique est non.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(86, 10, 7, 0, 'Quidem sit dolor praesentium qui.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(87, 12, 11, 0, 'Dolore ducimus a atque optio consectetur.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(88, 3, 6, 0, 'Est autem omnis dolor quidem illo ut asperiores.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(89, 6, 14, 0, 'Eaque rerum ut sequi dolor.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(90, 7, 5, 0, 'Pariatur et dolor repellat qui totam qui quibusdam.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(91, 10, 7, 0, 'Sequi velit eaque accusantium beatae.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(92, 2, 5, 0, 'Praesentium minus officia repellendus ut sit excepturi dignissimos.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(93, 13, 8, 0, 'Quia quas dolore dolor voluptates quia.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(94, 10, 4, 0, 'Et est quae reprehenderit rerum aut officiis debitis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(95, 12, 15, 0, 'Autem non similique eius ea tempora ut vel nobis.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(96, 6, 1, 0, 'Qui debitis distinctio aut.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(97, 2, 10, 0, 'Aut nihil ut ut voluptatem hic occaecati neque.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(98, 5, 6, 0, 'Voluptas veniam consequatur rem magni.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(99, 8, 13, 0, 'Aut voluptatem et alias quos fugiat voluptatem iste.', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(100, 4, 3, 0, 'Quia aut omnis debitis id aut velit est et.', '2020-04-14 16:14:43', '2020-04-14 16:14:43');

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
(1, '890-356-0622 x29080', 'Prof. Glennie Shanahan DVM', 'manderson@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'XHG6mGSubR', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(2, '678-793-8363', 'Ellie Rice', 'skiles.alysson@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Bxrco8K6gC', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(3, '(902) 686-8559 x57343', 'Bradley Olson I', 'lewis.tromp@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'uo1lQ38Bbk', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(4, '(517) 545-3537', 'Pamela Brakus V', 'cmaggio@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'yec6HazrGf', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(5, '336.903.1945 x94455', 'Heath Hilpert IV', 'blesch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'rFxOVP9Kip', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(6, '841.441.8830 x4704', 'Josh Smith', 'rodriguez.raina@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'FNvjUEIo6C', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(7, '391.636.0003 x86556', 'Dr. Coy Eichmann', 'klein.karolann@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'M6TNmFc3Xp', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(8, '1-480-693-8979', 'Angelica Langworth', 'maryam.bernhard@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'laXmmS5e74', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(9, '719.700.6214', 'Eli Reinger', 'kathlyn00@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'xQoHWOnB9W', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(10, '784.242.6644 x24367', 'Mr. Kay Schumm DDS', 'treutel.rossie@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'Qxr67T284e', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(11, '376-529-7790 x50319', 'Carlie Simonis', 'dooley.alejandrin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'qYlIAh4rtd', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(12, '643.642.7184', 'Marquise Collins', 'enrique.schuppe@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'RfKUGF2GiC', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(13, '1-483-491-1554', 'Erik Schaden', 'ujohns@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '2DKifEmFST', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(14, '940-719-0951 x1572', 'Bret Hodkiewicz', 'ora71@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', 'gIvbosYPPo', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(15, '916-481-6956', 'Verna Cormier', 'ernesto.kling@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'http://via.placeholder.com/150x150', '9WJmH9k9hM', '2020-04-14 16:14:43', '2020-04-14 16:14:43'),
(16, NULL, 'migdav', 'davidaviciute.migle@gmail.com', '$2y$10$jASo3txDRDIoLvRwIDshMOU6fIKFnkCIIUg32smp.KyS6d8nfCKfy', '122697999.png', 'NUj7V0v0dJ5s8V33lKwDSltRTaduulJOmgLAaPTWa4VqiXbDHQ1LkBeR0NOI', '2020-04-14 16:16:24', '2020-05-10 12:31:03'),
(54, NULL, 'fakeacc', 'fake@gmail.com', '$2y$10$kXqymaRzj9ebHxHG06vSPO5ktDZyJHMKCb8QULe2xS2D4/lId7lGi', NULL, NULL, '2020-05-05 16:17:03', '2020-05-05 16:17:03');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
