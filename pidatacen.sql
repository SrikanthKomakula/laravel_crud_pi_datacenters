-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 03:20 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pidatacen`
--

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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('14ecca0125ea10ca9fa5b59c3bdaa23cb09a7e6e4b1601c05339c9727d9de5889dc001d4307239af', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 03:56:50', '2020-07-09 03:56:50', '2021-07-09 09:26:50'),
('18bea11b10885cc8d1fee77b41639f7dbfc3a7f82cf2f0bc3e5efa778481d3bf4f48c9ae9fe5d37a', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 03:43:34', '2020-07-09 03:43:34', '2021-07-09 09:13:34'),
('1c00ada2ff1a5e74b8bdcc879733179a73d9a6566eeacbd0df26fe097b96865eb8101a602ea0042a', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 00:20:57', '2020-07-09 00:20:57', '2021-07-09 05:50:57'),
('22fa6b2e10783f3ba2b283a586872e11d3c4bc96758791b2e8f33775bd697e1cda80abe3c08f4789', 17, 1, 'Auth Token', '[]', 0, '2020-07-09 06:02:18', '2020-07-09 06:02:18', '2021-07-09 11:32:18'),
('478bfbee7b21c670aa45ae5851f86135574290cd4110cf38892e251520e8065657c3f2977a9bd123', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 04:11:25', '2020-07-09 04:11:25', '2021-07-09 09:41:25'),
('93796a500a009a68d776ce7accc3af259c10751ea625d5cf728ead63c6d9ff74e45e77fc616d2c41', 17, 1, 'Auth Token', '[]', 0, '2020-07-09 06:01:45', '2020-07-09 06:01:45', '2021-07-09 11:31:45'),
('b07954368203c63ae2f19d97836a6d79e65fdbc6235a4371bc864d862e066611d097420618293411', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 00:31:31', '2020-07-09 00:31:31', '2021-07-09 06:01:31'),
('b151372035017d334dd50fb520a3cc7bb3b48d8e5e9a156af557187588fc1fc61b18badce70dae02', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 00:32:54', '2020-07-09 00:32:54', '2021-07-09 06:02:54'),
('c171a5f1b1b8d16820a11fc4c8659f5d9d25965752e0dbfa4c407f10bcbc603d480a6d04bf27c51e', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 04:21:12', '2020-07-09 04:21:12', '2021-07-09 09:51:12'),
('c2ded3dcdd9eec612f076a524f1889e0ad7366bc57760d68ff9426bdc549d0db9f3a041aabf45d4f', 2, 1, 'Auth Token', '[]', 0, '2020-07-08 23:41:40', '2020-07-08 23:41:40', '2021-07-09 05:11:40'),
('cf78f4524afe7f8eba35c5ab2da71449fb323b89b02f976a9c3f137af25f712b8cacf8d67e58609c', 2, 1, 'Auth Token', '[]', 0, '2020-07-08 23:35:19', '2020-07-08 23:35:19', '2021-07-09 05:05:19'),
('cfb89a80c65163b4f8517ae7f4914481b883e3b56a8bf1020906cf60c0ffc28b0db09ccb7b207943', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 03:58:11', '2020-07-09 03:58:11', '2021-07-09 09:28:11'),
('d5e046a511ee5362bcceb35d8791f5cdd316c097ccfea7d9de0f9418337c2cd5e97b4109c8f3660b', 17, 1, 'Auth Token', '[]', 0, '2020-07-09 06:01:13', '2020-07-09 06:01:13', '2021-07-09 11:31:13'),
('f62344a95de9932293f84f92261aebff46be2fc3491292eb3b2c82fb9c82da3144b5797a08bd9a2f', 2, 1, 'Auth Token', '[]', 0, '2020-07-08 23:39:33', '2020-07-08 23:39:33', '2021-07-09 05:09:33'),
('fbba34f77d0c9cfe32bfe398a268cce6e0f380e72252b8061a82a961a6b0a5abdcadce6945b9bf72', 17, 1, 'Auth Token', '[]', 0, '2020-07-09 06:00:06', '2020-07-09 06:00:06', '2021-07-09 11:30:06'),
('febcb17c69b6ab93ea0190922f9b53d9ac1cfb8eba011ec03205ec62729ad3513d95a1a217603351', 2, 1, 'Auth Token', '[]', 0, '2020-07-09 00:20:17', '2020-07-09 00:20:17', '2021-07-09 05:50:17');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5gqlwgC0PkAfZfJChGjXTP8jinyKwuZsagd7sroP', NULL, 'http://localhost', 1, 0, 0, '2020-07-08 22:58:24', '2020-07-08 22:58:24'),
(2, NULL, 'Laravel Password Grant Client', 'WKy65FmsyhFAS239FRzkqQlwjQGkYCn6jBokPK5V', 'users', 'http://localhost', 0, 1, 0, '2020-07-08 22:58:24', '2020-07-08 22:58:24');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-08 22:58:24', '2020-07-08 22:58:24');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'test', 'test@datacenters.com', NULL, '$2y$10$N7qTF.ZSj2oi5NdLNV1w8uP5c9JGpZNP7Aj775DcFA4/NkLvPjLqi', NULL, '2020-07-09 05:59:49', '2020-07-09 05:59:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
