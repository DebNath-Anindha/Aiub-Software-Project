-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 06:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeforeveryone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_verification_code` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `image`, `status`, `email_verified_at`, `password`, `password_verification_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '01787909822', NULL, '0', NULL, '$2y$10$TBwuTGgzw60yjtfs2gICKuibFhv1gKqErAdy8PVWxr5EwE.HDq0HO', NULL, NULL, '2021-12-03 11:19:19', '2022-01-05 07:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Python', '938331639070714.png', 1, '2021-12-09 11:25:14', '2021-12-13 12:59:39'),
(5, 'Laravel', '917001639145737.png', 1, '2021-12-10 08:15:37', '2021-12-13 13:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `course_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Shaon', 'shaon@gmail.com', 4, 'aaaaaaaaaaProgravida nibh vel velit auctor alinean sollicitudin, lorem quis bibendum auctor, nisi elit consequat.', '2021-12-15 12:38:41', '2021-12-15 12:38:41'),
(2, 'Dhaka', 'ssitdeveloper04@gmail.com', 4, 'aaaaaaaaaaProgravida nibh vel velit auctor alinean sollicitudin, lorem quis bibendum auctor, nisi elit consequat.', '2021-12-15 12:38:55', '2021-12-15 12:38:55'),
(3, 'Dhaka', 'ssitdeveloper04@gmail.com', 4, 'Progravida nibh vel velit auctor alinean sollicitudin, lorem quis bibendum auctor, nisi elit consequat.', '2021-12-15 12:40:07', '2021-12-15 12:40:07'),
(4, 'Dhaka', 'ssitdeveloper04@gmail.com', 4, 'jhgjhgku', '2021-12-21 08:07:27', '2021-12-21 08:07:27'),
(5, 'Dhaka', 'ssitdeveloper04@gmail.com', 5, 'ssssssssssss', '2021-12-25 09:48:52', '2021-12-25 09:48:52'),
(6, 'Shaon', 'admin@gmail.com', 4, 'ddddd', '2022-01-07 11:25:46', '2022-01-07 11:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seat` int(119) DEFAULT NULL,
  `seat_fill_up` int(119) DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_playlist` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top` tinyint(4) NOT NULL DEFAULT 0,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `seat`, `seat_fill_up`, `mentor_id`, `category_id`, `subcategory_id`, `name`, `description`, `image`, `price`, `vedio`, `full_playlist`, `section`, `top`, `details`, `created_at`, `updated_at`) VALUES
(4, 40, 16, 1, 4, 2, 'Python For Beginners', 'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.', '584231639422961.png', '1000', 'https://www.youtube.com/embed/_uQrJ0TkZlc', 'https://www.youtube.com/embed/5Xy-t8k_M4A?list=PLHiZ4m8vCp9M6HVQv7a36cp8LKzyHIePr', 'A', 1, '<h2 id=\"h2_1\" data-tocid=\"h2_toc_1\" class=\"target\" style=\"font-weight: 500; color: rgb(34, 34, 34); font-family: Lato, sans-serif;\">Introduction</h2><p style=\"font-size: 18px; color: rgb(34, 34, 34); line-height: 33px; font-family: Lato, sans-serif;\">While learning Object-Oriented Programming. I decided to dive into its history and it turned out to be fascinating. The term “Object-Oriented Programming” (OOP) was coined by Alan Kay around 1966 while he was at grad school. The language called&nbsp;<span style=\"font-weight: bolder;\">Simula</span>&nbsp;was the first programming language with the features of Object-oriented programming. It was developed in 1967 for making&nbsp;<a title=\"Computer simulation\" href=\"https://en.wikipedia.org/wiki/Computer_simulation\" style=\"color: rgb(0, 123, 255); transition-duration: 500ms; outline: transparent solid 0px; box-shadow: none;\">simulation programs</a>, in which the most important information was called objects.</p><p style=\"font-size: 18px; color: rgb(34, 34, 34); line-height: 33px; font-family: Lato, sans-serif;\"><br></p><p style=\"font-size: 18px; color: rgb(34, 34, 34); line-height: 33px; font-family: Lato, sans-serif;\">Though OOPs were in the market since the early 1960s it was in the 1990s that OOPs began to grow because of C++. Afe ter that, this technique of programming has been adapted by various programming languages including Python Today its application is in almost every field such as Real-time systems, Artificial intelligence, and expert systems, Client-server systems, Object-oriented databases, and many more.</p><p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 45px; color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 18px;\"></ul></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-size: 18px; color: rgb(34, 34, 34); line-height: 33px; font-family: Lato, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">So, in this article, I will explain the basic concepts of Object-Oriented Programming in Python. It is important that you know Python before you continue. You can learn Python using the free course mentioned below-</p>', '2021-12-10 09:14:54', '2022-01-07 11:33:15'),
(5, 40, 0, 1, 5, 3, 'Laravel Basic Crud', 'Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model', '973641639769257.jpeg', '0', 'https://www.youtube.com/embed/92UkADWwH7s', NULL, 'A', 0, '<p><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans Text&quot;, arial, sans-serif;\">Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model</span><br></p>', '2021-12-17 13:27:37', '2022-01-07 11:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commision` double DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_verification_code` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `email`, `phone`, `address`, `commision`, `nid`, `image`, `password`, `password_verification_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'shaon', '7hnazmul@gmail.com', '01303553454', 'Dhaka', 40, '123654789654', '821561638552220.jpg', '$2y$10$/I1hgre1ZCbk0fHiZ62D1Or1/N39eIGY0D5Vx1qUATGpskqpenSsi', '6132', 1, '2021-12-03 11:23:40', '2022-01-05 10:46:38'),
(3, 'shaon', 'shaon@gmail.com', '01735676876', 'dhaka', 40, '12345678521463', '221081641400221.jpg', '$2y$10$MIduRo1ItoelzTbE75VmXO4g/gAK.BpqwHNRYGWLpi9MjyPlk/sui', NULL, 0, '2022-01-05 10:14:18', '2022-01-05 10:46:48');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_16_084312_create_admins_table', 1),
(5, '2021_11_29_002510_create_settings_table', 1),
(6, '2021_11_30_061943_create_managers_table', 1),
(7, '2021_12_03_172356_create_courses_table', 2),
(8, '2021_12_09_162324_create_categories_table', 3),
(9, '2021_12_09_162402_create_sub_categories_table', 3),
(10, '2021_12_10_160955_create_sliders_table', 4),
(12, '2021_12_15_170718_create_comments_table', 5),
(13, '2021_12_17_190214_create_multiple_vedio_table', 6),
(14, '2021_12_18_110751_create_subscribe_table', 7),
(15, '2021_12_18_164458_create_orders_table', 8),
(16, '2021_12_25_173200_create_replies_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `multiple_vedio`
--

CREATE TABLE `multiple_vedio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `vedio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(19) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_income` float DEFAULT NULL,
  `mentor_income` float DEFAULT NULL,
  `amount` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `course_id`, `name`, `email`, `phone`, `admin_income`, `mentor_income`, `amount`, `status`, `address`, `city`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(49, 8, 4, 'Dhaka', 'ssitdeveloper04@gmail.com', '07024077864', 600, 400, '1000', 'Failed', 'dhaka', 'Dhaka', '61c70f53ec3bb', 'BDT', '2021-12-25 12:32:19', '2022-01-07 11:29:12'),
(50, 8, 4, 'Dhaka', 'ssitdeveloper04@gmail.com', '07024077864', 600, 400, '1000', 'Failed', 'dhaka', 'Dhaka', '61c71a712c406', 'BDT', '2022-01-01 13:19:45', '2022-01-07 11:29:00'),
(51, 8, 4, 'Shaon', 'admisssn@gmail.com', '01303556787', 600, 400, '1000', 'Success', 'dhaka', 'london', '61d878943889e', 'BDT', '2022-01-07 17:29:56', '2022-01-07 11:33:15');

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
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'this is reply', NULL, '2021-12-25 12:15:31', '2021-12-25 12:15:31'),
(2, 1, 'this is second reply', NULL, '2021-12-25 12:27:19', '2021-12-25 12:27:19'),
(3, 2, 'dfggdg', NULL, '2022-01-05 03:33:40', '2022-01-05 03:33:40'),
(4, 2, 'dsfgg', NULL, '2022-01-05 03:34:56', '2022-01-05 03:34:56'),
(5, 6, 'dddddd', NULL, '2022-01-07 11:25:59', '2022-01-07 11:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_footer_text` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_title` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_logo` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `brand_name`, `footer_text`, `home_footer_text`, `footer_link`, `title`, `login_title`, `login_logo`, `favicon`, `created_at`, `updated_at`, `facebook`, `instagram`, `linkedin`, `twitter`, `contact`, `phone`, `email`) VALUES
(1, 'Code For Everyone', 'Copyright © 2021  Design By Shaon', 'Contrary to popular belief, Lorem not simplyrandom text. It has roots a classical .', '#', 'code for everyone', 'Code For Everyone', '157501638620520.png', '335431638612354.ico', '2021-12-03 11:21:42', '2021-12-18 06:12:51', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', 'https://www.twitter.com/', 'Level-4, 34, Awal Centre, Banani, Dhaka', '01303553454', 'mail@codeforeveryone.com');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `short_title`, `image`, `link`, `created_at`, `updated_at`) VALUES
(3, 'Become a Programmer', 'As few as six months of individualized, self-paced learning, or as many <br> as four or more years in an accredited Bachelor\'s program. <br> The more complicated answer? It depends on you, your learning method, and your motivational support systems.<br> You have what it takes to become a computer programmer', '530231639247896.png', '#', '2021-12-11 11:28:56', '2021-12-13 11:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'shaon@gmail.com', '2021-12-18 05:19:48', '2021-12-18 05:19:48'),
(2, 'admin@gmail.com', '2021-12-18 05:21:05', '2021-12-18 05:21:05'),
(3, 'admins@gmail.com', '2021-12-18 05:21:18', '2021-12-18 05:21:18'),
(4, 'shaon@gmaiaaaaaaaaaaal.com', '2021-12-18 13:46:12', '2021-12-18 13:46:12'),
(5, 'aaaa@d.com', '2021-12-18 13:47:17', '2021-12-18 13:47:17'),
(6, 'shaonss34@gmail.com', '2021-12-18 13:48:10', '2021-12-18 13:48:10'),
(7, 'admi344n@gmail.com', '2021-12-18 13:48:33', '2021-12-18 13:48:33'),
(8, 'saahaon@gmail.com', '2021-12-18 13:49:16', '2021-12-18 13:49:16'),
(9, 'moniaar@gmail.com', '2021-12-18 13:50:38', '2021-12-18 13:50:38'),
(10, 'shaonaa@gmail.com', '2021-12-18 13:51:30', '2021-12-18 13:51:30'),
(11, 'moaaanir@gmail.com', '2021-12-18 13:52:17', '2021-12-18 13:52:17'),
(12, 'shaoggjjn@gmail.com', '2021-12-21 08:12:13', '2021-12-21 08:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `image`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Python OOPS', '355381639074382.png', 4, 1, '2021-12-09 12:26:22', '2021-12-13 13:02:07'),
(3, 'Laravel Basic', '303971639145776.png', 5, 1, '2021-12-10 08:16:16', '2021-12-13 13:30:29'),
(4, 'DJango', '687181639584680.png', 4, 1, '2021-12-15 10:11:03', '2021-12-15 10:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Dhaka', 'ssitdeveloper04@gmail.com', '01303553454', '1639857769-61be3e697dab9.jpeg', 'dhaka', NULL, '$2y$10$S3obJYRG3H3Ut1kCBdNEX.krn2YujJyplqdos1TFYkn9ITYQZgUXy', NULL, '2021-12-11 15:24:08', '2021-12-18 14:02:49'),
(5, 'Dhaka', 'shaon@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$eL1pAv9yf3.kboFzozXjtuUJleHqgoLaED0DLe0Rbbol6inyFvD3K', NULL, '2022-01-01 07:17:07', '2021-12-19 07:17:07'),
(8, 'Shaon Ahmed', 'shaonahmed703@gmail.com', '01303556787', '1641053091-61d07ba3c9e36.png', 'dhaka', NULL, '$2y$10$Nkpng2vtPUNF6jaWpzgyRuhjU4BTmfjIA7rr3a.6X8tpftV98j1EO', NULL, '2021-12-19 08:41:54', '2022-01-01 10:04:51'),
(9, 'Dhaka', 'shaons@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$jegd13GssN05z.gVJG2bNeVhc7bEaBGureE.6ZiF1CEFCLTBENRX2', NULL, '2021-12-21 10:17:58', '2021-12-21 10:17:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple_vedio`
--
ALTER TABLE `multiple_vedio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `multiple_vedio`
--
ALTER TABLE `multiple_vedio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
