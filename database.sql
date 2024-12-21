-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 04:15 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `shortDesc` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(191) NOT NULL,
  `categories` enum('desserts','main_dish','salads') NOT NULL,
  `create_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `shortDesc`, `image`, `description`, `author`, `categories`, `create_user_id`, `created_at`, `updated_at`) VALUES
(219, 'Dolor facere quo sapiente ex e', 'Similique perspiciatis nulla vero incididunt nostrud expedita eos debitis', NULL, 'Neque blanditiis err.', 'Dina Nafez', 'salads', 39, '2024-12-20 11:10:36', '2024-12-20 11:10:36'),
(220, 'Ratione in provident quos occ', 'In alias omnis sint commodo', '1734704717-220.jpg', 'Quis omnis quia ipsu.', 'Dina Nafez', 'salads', 39, '2024-12-20 11:25:17', '2024-12-20 11:25:17'),
(221, 'Read Books', 'This book is important for my report', '1734710911-221.jpg', 'my report should have some of the book sentences&nbsp;', 'Dina Nafez', 'salads', 41, '2024-12-20 13:08:31', '2024-12-20 13:08:31'),
(222, 'Deleniti quidem mini', 'Facilis consectetur cum porro officia dolorem enim laudantium', '1734780462-222.jpg', 'Asperiores minim acc.', 'Abd Nafez', 'salads', 44, '2024-12-21 08:27:42', '2024-12-21 08:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `blog_id`, `user_id`, `created_at`, `updated_at`) VALUES
(146, 219, 41, '2024-12-20 12:18:10', '2024-12-20 12:18:10'),
(147, 220, 41, '2024-12-20 13:25:54', '2024-12-20 13:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_05_083027_create_blogs_table', 1),
(6, '2024_12_05_083049_create_temp_table', 1),
(7, '2024_12_05_095910_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'API Token', '838dd7840e141cf1b7f78703779621118596ad09de215f91e3953e16dc8c563f', '[\"*\"]', NULL, NULL, '2024-12-06 16:52:08', '2024-12-06 16:52:08'),
(2, 'App\\Models\\User', 2, 'API Token', 'c6f9528fa112f1bd0dfe350b733cf3e2ee0a87259fe74876a6d574d7ef84cf43', '[\"*\"]', NULL, NULL, '2024-12-06 16:57:08', '2024-12-06 16:57:08'),
(3, 'App\\Models\\User', 2, 'API Token', '4789b6d45f22a3af6e8564d14a3384cafc865173c646e4bbb95c36aeddd089c9', '[\"*\"]', NULL, NULL, '2024-12-07 02:46:29', '2024-12-07 02:46:29'),
(4, 'App\\Models\\User', 2, 'API Token', 'c80f24632fe74426d222fca0681eec5906d0883cb8a762bc094e31621d03549d', '[\"*\"]', NULL, NULL, '2024-12-07 02:49:07', '2024-12-07 02:49:07'),
(5, 'App\\Models\\User', 2, 'API Token', 'fba8606fa49187a8dc9686cc7523c23165dad3fc0bb77861406ca84d072a7760', '[\"*\"]', NULL, NULL, '2024-12-07 02:51:40', '2024-12-07 02:51:40'),
(6, 'App\\Models\\User', 2, 'API Token', '12707eb5889870ca0ea0d22c538ab64c7f82eee6768426290f1e3c8b8b61612f', '[\"*\"]', NULL, NULL, '2024-12-07 02:55:03', '2024-12-07 02:55:03'),
(7, 'App\\Models\\User', 2, 'API Token', '32c4ec6430c028d100f3f5ea49b10987d577d353fb5318209a7f0affbf6ca265', '[\"*\"]', NULL, NULL, '2024-12-07 03:23:07', '2024-12-07 03:23:07'),
(8, 'App\\Models\\User', 2, 'API Token', 'de7b7436d358457dc19bda5af434b635774d4af3d143fb158327d68a54001335', '[\"*\"]', NULL, NULL, '2024-12-07 03:25:39', '2024-12-07 03:25:39'),
(9, 'App\\Models\\User', 3, 'API Token', '0f7810411657b8df7db7a5347a5aeef03d06838e01320e107fb257c441bfe7a7', '[\"*\"]', NULL, NULL, '2024-12-07 03:29:03', '2024-12-07 03:29:03'),
(10, 'App\\Models\\User', 2, 'API Token', 'b193c451abd7817614619c19b2715bd1424c4ee2b7b2e105c671910dc5c1a0cd', '[\"*\"]', NULL, NULL, '2024-12-07 03:37:10', '2024-12-07 03:37:10'),
(11, 'App\\Models\\User', 4, 'API Token', '41ecf3f55b76f57dd0fb58960aa0133c3f062059bf2c8e570c5659522665b05c', '[\"*\"]', NULL, NULL, '2024-12-07 03:43:36', '2024-12-07 03:43:36'),
(12, 'App\\Models\\User', 5, 'API Token', 'aa1c1353f483041f015f5b64a964afef21c18e93875cfd73848e7c27f558d4e9', '[\"*\"]', NULL, NULL, '2024-12-07 07:46:31', '2024-12-07 07:46:31'),
(13, 'App\\Models\\User', 2, 'API Token', 'ee91c2f4a4ad0e8189288182901d6c38e4a6049108c599648044ae1cdc4c45c7', '[\"*\"]', NULL, NULL, '2024-12-07 09:03:01', '2024-12-07 09:03:01'),
(14, 'App\\Models\\User', 5, 'API Token', '2664efb713a8237a9efefd6aae2dd8c3e0b68943d7cfcf6dbac645e43b6d2692', '[\"*\"]', NULL, NULL, '2024-12-07 09:03:38', '2024-12-07 09:03:38'),
(15, 'App\\Models\\User', 6, 'API Token', '3ffd9c1bcbbfc4757c9e672eaa07a5423e68430d14d6434d4e6ee1f80dfe6d52', '[\"*\"]', NULL, NULL, '2024-12-07 12:38:16', '2024-12-07 12:38:16'),
(17, 'App\\Models\\User', 7, 'API Token', 'dcdef45f1db111c1e2f4e5ff2af15ee4cd6005be98dbf54d34ff9ca33e739c61', '[\"*\"]', NULL, NULL, '2024-12-07 12:46:49', '2024-12-07 12:46:49'),
(18, 'App\\Models\\User', 7, 'API Token', '25c34e52e155a68529dfff7ab6d083ae582a8c4dcb8b3d9cbd7b61ef0da074b6', '[\"*\"]', NULL, NULL, '2024-12-07 12:47:04', '2024-12-07 12:47:04'),
(19, 'App\\Models\\User', 7, 'API Token', 'a222b4a399c3daf66fad4d93e03f7e696be32a401d5aab2db4223784615407cf', '[\"*\"]', NULL, NULL, '2024-12-07 12:47:22', '2024-12-07 12:47:22'),
(20, 'App\\Models\\User', 8, 'API Token', '3f4e2150c0339006f502c0b9b6d24e0c5d25b44c5ca3167f206bbd431e4d03c0', '[\"*\"]', NULL, NULL, '2024-12-07 13:45:43', '2024-12-07 13:45:43'),
(21, 'App\\Models\\User', 8, 'API Token', 'd6a0d46b84046b29dfb2f3b1ac3d2506ff5cd131d15061725e5aaeec62f6dcaa', '[\"*\"]', NULL, NULL, '2024-12-07 13:45:53', '2024-12-07 13:45:53'),
(22, 'App\\Models\\User', 5, 'API Token', 'f427965b947d9204121980b3338c49d507c940dd2fffd770f6fcac1bdee188bf', '[\"*\"]', NULL, NULL, '2024-12-07 13:46:02', '2024-12-07 13:46:02'),
(23, 'App\\Models\\User', 8, 'API Token', '92cb0cfd2741896c6e37c689a7cd4a70613572c6bdc77cda2b45af20c1eb67dc', '[\"*\"]', NULL, NULL, '2024-12-07 13:46:53', '2024-12-07 13:46:53'),
(24, 'App\\Models\\User', 8, 'API Token', '26e832a2b822d5006431b35f2b50f67f1daf10403b50d2c52999c1ff05e3d7b1', '[\"*\"]', NULL, NULL, '2024-12-07 13:47:08', '2024-12-07 13:47:08'),
(25, 'App\\Models\\User', 8, 'API Token', '44562e50ea227385db2961537d76bf14f6985aa9d3391939797427a95559200c', '[\"*\"]', NULL, NULL, '2024-12-07 13:47:23', '2024-12-07 13:47:23'),
(27, 'App\\Models\\User', 8, 'API Token', 'e775608acf8e58bc48ee9575df9b220e01a2337e933cd1b72da0a488376d76d5', '[\"*\"]', NULL, NULL, '2024-12-07 14:46:19', '2024-12-07 14:46:19'),
(28, 'App\\Models\\User', 8, 'API Token', '6efef4c36ce7a0e1f0cc7b948cca4b605bb05680daa2622b1e8dde85b21be0a8', '[\"*\"]', NULL, NULL, '2024-12-07 14:46:27', '2024-12-07 14:46:27'),
(29, 'App\\Models\\User', 9, 'API Token', 'afbdefd66b391801dde7ff78293a64b2090de8b526b13c3132e266e0923c4ff4', '[\"*\"]', NULL, NULL, '2024-12-07 14:47:13', '2024-12-07 14:47:13'),
(31, 'App\\Models\\User', 9, 'API Token', 'c27b520897c06cec397409b2c3f9e7c8c922308f53a5b0184dfbfee58b4b45fc', '[\"*\"]', NULL, NULL, '2024-12-07 14:51:08', '2024-12-07 14:51:08'),
(36, 'App\\Models\\User', 12, 'API Token', 'bc17b7cf3619beca7940210bfbc98204ae2146529b21281874ba05fb984b1917', '[\"*\"]', NULL, NULL, '2024-12-08 02:22:32', '2024-12-08 02:22:32'),
(40, 'App\\Models\\User', 1, 'API Token', '471527e27142f2c6bbc04de1ce9f0a7ecc786c7c7a90088c5e21d32c1fded4ee', '[\"*\"]', NULL, NULL, '2024-12-08 03:22:27', '2024-12-08 03:22:27'),
(41, 'App\\Models\\User', 14, 'API Token', 'bad8423aebc28f57ae5fb1fe47281f75d0a21685f64e0478a59fcff2bf1b7478', '[\"*\"]', NULL, NULL, '2024-12-08 03:23:29', '2024-12-08 03:23:29'),
(45, 'App\\Models\\User', 16, 'API Token', 'be8cb7ea801be3db4bf72c84f6d02e5d456b17810d6e83e29e5cf0bbeb9517c1', '[\"*\"]', NULL, NULL, '2024-12-08 04:55:12', '2024-12-08 04:55:12'),
(46, 'App\\Models\\User', 16, 'API Token', '19de7f183ae8a634d5585ba76b5fcc6d1aba08d4ec2d4756c6bd48d092efd4ef', '[\"*\"]', NULL, NULL, '2024-12-08 04:55:22', '2024-12-08 04:55:22'),
(52, 'App\\Models\\User', 18, 'API Token', '4e5032c60fab9661fb1075c6150a268866074aacf60148f2460e4672084bea43', '[\"*\"]', NULL, NULL, '2024-12-08 10:03:12', '2024-12-08 10:03:12'),
(54, 'App\\Models\\User', 19, 'API Token', '83915d563ec8fad728797a465015917ab1d87d14d18434819128dcbd87421bc2', '[\"*\"]', NULL, NULL, '2024-12-09 05:33:57', '2024-12-09 05:33:57'),
(55, 'App\\Models\\User', 19, 'API Token', '0780d43160dea18bc727b2ff2fd9159ee3ada0d68e4126cbdc7bdaacfa19f194', '[\"*\"]', NULL, NULL, '2024-12-09 11:40:56', '2024-12-09 11:40:56'),
(56, 'App\\Models\\User', 19, 'API Token', 'ea904b4709658eeb0c096236f6a5cb9f85260bf6a5910673e877f5afe145bf64', '[\"*\"]', NULL, NULL, '2024-12-09 11:52:10', '2024-12-09 11:52:10'),
(57, 'App\\Models\\User', 19, 'API Token', 'cdc5d06860a0be69a23e6047db9528b57b639e66f71d79d085fb5b26bbe9ed9b', '[\"*\"]', NULL, NULL, '2024-12-09 12:58:22', '2024-12-09 12:58:22'),
(58, 'App\\Models\\User', 19, 'API Token', '73019f88996ead2efe0192c9cb522781d6105305351a31075809df6649cf63a2', '[\"*\"]', NULL, NULL, '2024-12-09 13:13:09', '2024-12-09 13:13:09'),
(59, 'App\\Models\\User', 19, 'API Token', 'a752f45867c5987e0018400d449fcf4e833877f4272d9f6a4f27ad95d75b08f6', '[\"*\"]', NULL, NULL, '2024-12-09 13:58:36', '2024-12-09 13:58:36'),
(60, 'App\\Models\\User', 20, 'API Token', 'f0f21343ce59e9410ea6521dc8eeb1f62e52ae8de763e5ec3bd2438940d79b26', '[\"*\"]', NULL, NULL, '2024-12-09 14:19:12', '2024-12-09 14:19:12'),
(61, 'App\\Models\\User', 21, 'API Token', '2ea4a580400110f5cdf41e2e3ae60dcecf0e865fbf0099eff487d3ee0d526e6d', '[\"*\"]', NULL, NULL, '2024-12-09 14:22:16', '2024-12-09 14:22:16'),
(62, 'App\\Models\\User', 22, 'API Token', '619e441568bc24540b9d744ed39b3dbf36c2017fe2734cdc53a9fa2c5754e8fb', '[\"*\"]', NULL, NULL, '2024-12-09 14:24:23', '2024-12-09 14:24:23'),
(63, 'App\\Models\\User', 22, 'API Token', '74fa2cb9eba6c9a400adb598e65a3484ee28f060f57a95862e5cf759f9b766bf', '[\"*\"]', NULL, NULL, '2024-12-09 14:27:28', '2024-12-09 14:27:28'),
(64, 'App\\Models\\User', 22, 'API Token', '48609238dc87cce7e26d810a567dc9da179a8bc1c49113383b7373d5a7c43241', '[\"*\"]', NULL, NULL, '2024-12-09 14:57:20', '2024-12-09 14:57:20'),
(65, 'App\\Models\\User', 22, 'API Token', '344c6acb466774cd504763365d93fb82d619c3eb8ea00b5696d314292da8e0a6', '[\"*\"]', NULL, NULL, '2024-12-09 14:59:27', '2024-12-09 14:59:27'),
(66, 'App\\Models\\User', 22, 'API Token', '5ef5d096f5a632614d40a61b0aec93296a01ca8dbb3aa9223d057dddbc541381', '[\"*\"]', NULL, NULL, '2024-12-09 15:01:28', '2024-12-09 15:01:28'),
(67, 'App\\Models\\User', 22, 'API Token', 'dcbc7a87dc4d324f633281a026a517e5d777d0ac9488da6a4f7bc5404b08f0af', '[\"*\"]', NULL, NULL, '2024-12-09 15:26:31', '2024-12-09 15:26:31'),
(68, 'App\\Models\\User', 23, 'API Token', '9baf51322bade28e9b8001909cd16186304b5e647385a4b5b2b071eeb27b4eb4', '[\"*\"]', NULL, NULL, '2024-12-10 02:00:50', '2024-12-10 02:00:50'),
(69, 'App\\Models\\User', 15, 'API Token', '049d75dc72819bc44d32df309500ed5e1769cd20d156016c1b90cfcd6b7f87a1', '[\"*\"]', NULL, NULL, '2024-12-10 02:11:35', '2024-12-10 02:11:35'),
(70, 'App\\Models\\User', 23, 'API Token', '03cd4b30d8da1aeae2d86d806867e98ed1ef8137a48fa77722fe55274d7e4ea5', '[\"*\"]', NULL, NULL, '2024-12-10 02:18:06', '2024-12-10 02:18:06'),
(71, 'App\\Models\\User', 22, 'API Token', 'f0c294c888db53df0085ffa22f98a7f515a7093beb68cf799cd72061ba7e9d0a', '[\"*\"]', NULL, NULL, '2024-12-10 02:38:53', '2024-12-10 02:38:53'),
(72, 'App\\Models\\User', 24, 'API Token', '87ba67402de7dc8d40d2dc99d11a3e2decd22791e737fefbe0048dd9c482c2b2', '[\"*\"]', NULL, NULL, '2024-12-10 02:52:34', '2024-12-10 02:52:34'),
(73, 'App\\Models\\User', 26, 'API Token', 'c0d0b979b4c9755ff16d6faf089e7f3d0193c752fbbe630c3aae654001c2676f', '[\"*\"]', NULL, NULL, '2024-12-10 03:26:45', '2024-12-10 03:26:45'),
(74, 'App\\Models\\User', 29, 'API Token', '603cbfc7fa6349fc2646ce1dea5c8ef7de078310a04843dbec95676763dfff6c', '[\"*\"]', NULL, NULL, '2024-12-10 03:32:51', '2024-12-10 03:32:51'),
(75, 'App\\Models\\User', 22, 'API Token', '0c50af3bcb0bc3be8e0d4ec90ae23e4d0985dbdf089f45b734d17cec9e5aa323', '[\"*\"]', NULL, NULL, '2024-12-10 03:38:32', '2024-12-10 03:38:32'),
(76, 'App\\Models\\User', 30, 'API Token', '37cbadff280e57e6f35f00c7fd600810a033e9d08c340b3b0f75554fcd970849', '[\"*\"]', NULL, NULL, '2024-12-10 03:39:30', '2024-12-10 03:39:30'),
(77, 'App\\Models\\User', 22, 'API Token', 'efdf22150f5e812a662ed65f06ff2e41764d0e95f07b4d0eda70049b98f6baf9', '[\"*\"]', NULL, NULL, '2024-12-10 05:00:12', '2024-12-10 05:00:12'),
(78, 'App\\Models\\User', 31, 'API Token', '1a8a76c0b941d078755b7f60f9e4eb2fcab246092fa0e10cbae174e7be4e5b2a', '[\"*\"]', NULL, NULL, '2024-12-10 06:12:04', '2024-12-10 06:12:04'),
(79, 'App\\Models\\User', 32, 'API Token', '2beb93a58463d0b66d153350e72531ab816e51c116d43d959024bf42c2991249', '[\"*\"]', NULL, NULL, '2024-12-10 06:21:13', '2024-12-10 06:21:13'),
(80, 'App\\Models\\User', 33, 'API Token', 'e95cecb242f51dc0b9c60c3e851290b9f88e68306deaf4805f2a1896cc42ccd7', '[\"*\"]', NULL, NULL, '2024-12-10 06:23:12', '2024-12-10 06:23:12'),
(81, 'App\\Models\\User', 34, 'API Token', '33a2075969efc6ba0820abb90b2006ebbb75ba8b4876fdb66a276ddeb5bf673c', '[\"*\"]', NULL, NULL, '2024-12-10 06:39:21', '2024-12-10 06:39:21'),
(82, 'App\\Models\\User', 38, 'API Token', '2abe26d784a703ce04c5502ec019eed0d9a3a32dfcac44b5822b7b9f8eddb0e9', '[\"*\"]', NULL, NULL, '2024-12-20 09:25:39', '2024-12-20 09:25:39'),
(83, 'App\\Models\\User', 39, 'API Token', '89943abfcb305de0aff32e80e7d8dea70f9813061f487d75f7f05795822d5fd6', '[\"*\"]', NULL, NULL, '2024-12-20 09:38:38', '2024-12-20 09:38:38'),
(84, 'App\\Models\\User', 41, 'API Token', '4598596a5e6a7bcb6cd64b0b36f50f6a1d9567e1bbfa2b84c1ee00537022d16a', '[\"*\"]', NULL, NULL, '2024-12-20 12:18:00', '2024-12-20 12:18:00'),
(85, 'App\\Models\\User', 44, 'API Token', 'c57f37ffe0dba1c1e33a4235b4a35001272219778eaebe38375438828ec86136', '[\"*\"]', NULL, NULL, '2024-12-21 08:23:43', '2024-12-21 08:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1733481861.jpg', '2024-12-06 07:44:21', '2024-12-06 07:44:21'),
(2, '1733481987.jpg', '2024-12-06 07:46:27', '2024-12-06 07:46:27'),
(3, '1733482592.jpg', '2024-12-06 07:56:32', '2024-12-06 07:56:32'),
(4, '1733482765.jpg', '2024-12-06 07:59:25', '2024-12-06 07:59:25'),
(5, '1733483099.jpg', '2024-12-06 08:04:59', '2024-12-06 08:04:59'),
(6, '1733483111.jpg', '2024-12-06 08:05:11', '2024-12-06 08:05:11'),
(7, '1733486180.png', '2024-12-06 08:56:20', '2024-12-06 08:56:20'),
(8, '1733486540.png', '2024-12-06 09:02:20', '2024-12-06 09:02:20'),
(9, '1733495583.jpg', '2024-12-06 11:33:03', '2024-12-06 11:33:03'),
(10, '1733568307.png', '2024-12-07 07:45:07', '2024-12-07 07:45:07'),
(11, '1733568433.png', '2024-12-07 07:47:13', '2024-12-07 07:47:13'),
(12, '1733569065.png', '2024-12-07 07:57:45', '2024-12-07 07:57:45'),
(13, '1733571956.png', '2024-12-07 08:45:56', '2024-12-07 08:45:56'),
(14, '1733571968.jpg', '2024-12-07 08:46:08', '2024-12-07 08:46:08'),
(15, '1733572547.png', '2024-12-07 08:55:47', '2024-12-07 08:55:47'),
(16, '1733572945.png', '2024-12-07 09:02:25', '2024-12-07 09:02:25'),
(17, '1733572962.jpg', '2024-12-07 09:02:42', '2024-12-07 09:02:42'),
(18, '1733572998.jpg', '2024-12-07 09:03:18', '2024-12-07 09:03:18'),
(19, '1733583296.png', '2024-12-07 11:54:56', '2024-12-07 11:54:56'),
(20, '1733589979.jpg', '2024-12-07 13:46:19', '2024-12-07 13:46:19'),
(21, '1733590054.jpg', '2024-12-07 13:47:34', '2024-12-07 13:47:34'),
(22, '1733590905.png', '2024-12-07 14:01:45', '2024-12-07 14:01:45'),
(23, '1733590920.png', '2024-12-07 14:02:00', '2024-12-07 14:02:00'),
(24, '1733594108.png', '2024-12-07 14:55:08', '2024-12-07 14:55:08'),
(25, '1733595874.jpg', '2024-12-07 15:24:34', '2024-12-07 15:24:34'),
(26, '1733597246.png', '2024-12-07 15:47:26', '2024-12-07 15:47:26'),
(27, '1733633712.jpg', '2024-12-08 01:55:12', '2024-12-08 01:55:12'),
(28, '1733634042.png', '2024-12-08 02:00:42', '2024-12-08 02:00:42'),
(29, '1733634056.jpg', '2024-12-08 02:00:56', '2024-12-08 02:00:56'),
(30, '1733635240.png', '2024-12-08 02:20:40', '2024-12-08 02:20:40'),
(31, '1733635433.png', '2024-12-08 02:23:53', '2024-12-08 02:23:53'),
(32, '1733636064.png', '2024-12-08 02:34:24', '2024-12-08 02:34:24'),
(33, '1733637809.png', '2024-12-08 03:03:29', '2024-12-08 03:03:29'),
(34, '1733640007.jpg', '2024-12-08 03:40:07', '2024-12-08 03:40:07'),
(35, '1733640057.jpg', '2024-12-08 03:40:57', '2024-12-08 03:40:57'),
(36, '1733640137.png', '2024-12-08 03:42:17', '2024-12-08 03:42:17'),
(37, '1733640223.png', '2024-12-08 03:43:43', '2024-12-08 03:43:43'),
(38, '1733640519.jpg', '2024-12-08 03:48:39', '2024-12-08 03:48:39'),
(39, '1733640571.jpg', '2024-12-08 03:49:31', '2024-12-08 03:49:31'),
(40, '1733640621.jpg', '2024-12-08 03:50:21', '2024-12-08 03:50:21'),
(41, '1733640654.jpg', '2024-12-08 03:50:54', '2024-12-08 03:50:54'),
(42, '1733640825.jpg', '2024-12-08 03:53:45', '2024-12-08 03:53:45'),
(43, '1733640878.png', '2024-12-08 03:54:38', '2024-12-08 03:54:38'),
(44, '1733640926.jpg', '2024-12-08 03:55:26', '2024-12-08 03:55:26'),
(45, '1733641000.png', '2024-12-08 03:56:40', '2024-12-08 03:56:40'),
(46, '1733641090.jpg', '2024-12-08 03:58:10', '2024-12-08 03:58:10'),
(47, '1733641231.jpg', '2024-12-08 04:00:31', '2024-12-08 04:00:31'),
(48, '1733641275.jpg', '2024-12-08 04:01:15', '2024-12-08 04:01:15'),
(49, '1733641333.jpg', '2024-12-08 04:02:13', '2024-12-08 04:02:13'),
(50, '1733641437.png', '2024-12-08 04:03:57', '2024-12-08 04:03:57'),
(51, '1733641506.webp', '2024-12-08 04:05:06', '2024-12-08 04:05:06'),
(52, '1733641552.png', '2024-12-08 04:05:52', '2024-12-08 04:05:52'),
(53, '1733641585.png', '2024-12-08 04:06:25', '2024-12-08 04:06:25'),
(54, '1733641620.webp', '2024-12-08 04:07:00', '2024-12-08 04:07:00'),
(55, '1733641644.png', '2024-12-08 04:07:24', '2024-12-08 04:07:24'),
(56, '1733641720.png', '2024-12-08 04:08:40', '2024-12-08 04:08:40'),
(57, '1733641750.webp', '2024-12-08 04:09:10', '2024-12-08 04:09:10'),
(58, '1733641773.webp', '2024-12-08 04:09:33', '2024-12-08 04:09:33'),
(59, '1733641808.png', '2024-12-08 04:10:08', '2024-12-08 04:10:08'),
(60, '1733641832.png', '2024-12-08 04:10:32', '2024-12-08 04:10:32'),
(61, '1733641864.webp', '2024-12-08 04:11:04', '2024-12-08 04:11:04'),
(62, '1733641891.png', '2024-12-08 04:11:31', '2024-12-08 04:11:31'),
(63, '1733641924.webp', '2024-12-08 04:12:04', '2024-12-08 04:12:04'),
(64, '1733641967.webp', '2024-12-08 04:12:47', '2024-12-08 04:12:47'),
(65, '1733642000.webp', '2024-12-08 04:13:20', '2024-12-08 04:13:20'),
(66, '1733642033.png', '2024-12-08 04:13:53', '2024-12-08 04:13:53'),
(67, '1733642065.webp', '2024-12-08 04:14:25', '2024-12-08 04:14:25'),
(68, '1733642091.jpg', '2024-12-08 04:14:51', '2024-12-08 04:14:51'),
(69, '1733642127.webp', '2024-12-08 04:15:27', '2024-12-08 04:15:27'),
(70, '1733642152.webp', '2024-12-08 04:15:52', '2024-12-08 04:15:52'),
(71, '1733642181.webp', '2024-12-08 04:16:21', '2024-12-08 04:16:21'),
(72, '1733642214.webp', '2024-12-08 04:16:54', '2024-12-08 04:16:54'),
(73, '1733642245.webp', '2024-12-08 04:17:25', '2024-12-08 04:17:25'),
(74, '1733642271.webp', '2024-12-08 04:17:51', '2024-12-08 04:17:51'),
(75, '1733642297.jpg', '2024-12-08 04:18:17', '2024-12-08 04:18:17'),
(76, '1733642394.jpg', '2024-12-08 04:19:54', '2024-12-08 04:19:54'),
(77, '1733643350.jpg', '2024-12-08 04:35:50', '2024-12-08 04:35:50'),
(78, '1733644694.webp', '2024-12-08 04:58:14', '2024-12-08 04:58:14'),
(79, '1733644725.webp', '2024-12-08 04:58:45', '2024-12-08 04:58:45'),
(80, '1733644738.webp', '2024-12-08 04:58:58', '2024-12-08 04:58:58'),
(81, '1733644774.png', '2024-12-08 04:59:34', '2024-12-08 04:59:34'),
(82, '1733645712.webp', '2024-12-08 05:15:12', '2024-12-08 05:15:12'),
(83, '1733645781.webp', '2024-12-08 05:16:21', '2024-12-08 05:16:21'),
(84, '1733647730.webp', '2024-12-08 05:48:50', '2024-12-08 05:48:50'),
(85, '1733647778.webp', '2024-12-08 05:49:38', '2024-12-08 05:49:38'),
(86, '1733649225.webp', '2024-12-08 06:13:45', '2024-12-08 06:13:45'),
(87, '1733650695.jpg', '2024-12-08 06:38:15', '2024-12-08 06:38:15'),
(88, '1733650719.webp', '2024-12-08 06:38:39', '2024-12-08 06:38:39'),
(89, '1733650736.jpg', '2024-12-08 06:38:56', '2024-12-08 06:38:56'),
(90, '1733664876.webp', '2024-12-08 10:34:36', '2024-12-08 10:34:36'),
(91, '1733733386.webp', '2024-12-09 05:36:26', '2024-12-09 05:36:26'),
(92, '1733733421.webp', '2024-12-09 05:37:01', '2024-12-09 05:37:01'),
(93, '1733733623.jpg', '2024-12-09 05:40:23', '2024-12-09 05:40:23'),
(94, '1733733739.webp', '2024-12-09 05:42:19', '2024-12-09 05:42:19'),
(95, '1733736166.webp', '2024-12-09 06:22:46', '2024-12-09 06:22:46'),
(96, '1733755322.webp', '2024-12-09 11:42:02', '2024-12-09 11:42:02'),
(97, '1733755357.jpg', '2024-12-09 11:42:37', '2024-12-09 11:42:37'),
(98, '1733755473.webp', '2024-12-09 11:44:33', '2024-12-09 11:44:33'),
(99, '1733755713.webp', '2024-12-09 11:48:33', '2024-12-09 11:48:33'),
(100, '1733755762.jpg', '2024-12-09 11:49:22', '2024-12-09 11:49:22'),
(101, '1733755946.webp', '2024-12-09 11:52:26', '2024-12-09 11:52:26'),
(102, '1733756114.jpg', '2024-12-09 11:55:14', '2024-12-09 11:55:14'),
(103, '1733756189.jpg', '2024-12-09 11:56:29', '2024-12-09 11:56:29'),
(104, '1733756522.jpg', '2024-12-09 12:02:02', '2024-12-09 12:02:02'),
(105, '1733756686.jpg', '2024-12-09 12:04:46', '2024-12-09 12:04:46'),
(106, '1733756704.jpg', '2024-12-09 12:05:04', '2024-12-09 12:05:04'),
(107, '1733756709.png', '2024-12-09 12:05:09', '2024-12-09 12:05:09'),
(108, '1733756831.jpg', '2024-12-09 12:07:11', '2024-12-09 12:07:11'),
(109, '1733757100.jpg', '2024-12-09 12:11:40', '2024-12-09 12:11:40'),
(110, '1733757249.webp', '2024-12-09 12:14:09', '2024-12-09 12:14:09'),
(111, '1733757287.jpg', '2024-12-09 12:14:47', '2024-12-09 12:14:47'),
(112, '1733757333.jpg', '2024-12-09 12:15:33', '2024-12-09 12:15:33'),
(113, '1733757368.webp', '2024-12-09 12:16:08', '2024-12-09 12:16:08'),
(114, '1733757663.jpg', '2024-12-09 12:21:03', '2024-12-09 12:21:03'),
(115, '1733757669.webp', '2024-12-09 12:21:09', '2024-12-09 12:21:09'),
(116, '1733757754.jpg', '2024-12-09 12:22:34', '2024-12-09 12:22:34'),
(117, '1733757775.jpg', '2024-12-09 12:22:55', '2024-12-09 12:22:55'),
(118, '1733758993.jpg', '2024-12-09 12:43:13', '2024-12-09 12:43:13'),
(119, '1733759007.jpg', '2024-12-09 12:43:27', '2024-12-09 12:43:27'),
(120, '1733759140.jpg', '2024-12-09 12:45:40', '2024-12-09 12:45:40'),
(121, '1733759551.jpg', '2024-12-09 12:52:31', '2024-12-09 12:52:31'),
(122, '1733760136.jpg', '2024-12-09 13:02:16', '2024-12-09 13:02:16'),
(123, '1733760411.webp', '2024-12-09 13:06:51', '2024-12-09 13:06:51'),
(124, '1733760439.jpg', '2024-12-09 13:07:19', '2024-12-09 13:07:19'),
(125, '1733760490.webp', '2024-12-09 13:08:10', '2024-12-09 13:08:10'),
(126, '1733760546.webp', '2024-12-09 13:09:06', '2024-12-09 13:09:06'),
(127, '1733760589.jpg', '2024-12-09 13:09:49', '2024-12-09 13:09:49'),
(128, '1733760799.jpg', '2024-12-09 13:13:19', '2024-12-09 13:13:19'),
(129, '1733761275.jpg', '2024-12-09 13:21:15', '2024-12-09 13:21:15'),
(130, '1733761696.jpg', '2024-12-09 13:28:16', '2024-12-09 13:28:16'),
(131, '1733762186.jpg', '2024-12-09 13:36:26', '2024-12-09 13:36:26'),
(132, '1733762334.webp', '2024-12-09 13:38:54', '2024-12-09 13:38:54'),
(133, '1733762485.jpg', '2024-12-09 13:41:25', '2024-12-09 13:41:25'),
(134, '1733763528.webp', '2024-12-09 13:58:48', '2024-12-09 13:58:48'),
(135, '1733765191.jpg', '2024-12-09 14:26:31', '2024-12-09 14:26:31'),
(136, '1733765279.webp', '2024-12-09 14:27:59', '2024-12-09 14:27:59'),
(137, '1733765388.jpg', '2024-12-09 14:29:48', '2024-12-09 14:29:48'),
(138, '1733765476.jpg', '2024-12-09 14:31:16', '2024-12-09 14:31:16'),
(139, '1733765605.webp', '2024-12-09 14:33:25', '2024-12-09 14:33:25'),
(140, '1733765977.webp', '2024-12-09 14:39:37', '2024-12-09 14:39:37'),
(141, '1733766131.jpg', '2024-12-09 14:42:11', '2024-12-09 14:42:11'),
(142, '1733766454.jpg', '2024-12-09 14:47:34', '2024-12-09 14:47:34'),
(143, '1733766920.webp', '2024-12-09 14:55:20', '2024-12-09 14:55:20'),
(144, '1733767216.jpg', '2024-12-09 15:00:16', '2024-12-09 15:00:16'),
(145, '1733767301.webp', '2024-12-09 15:01:41', '2024-12-09 15:01:41'),
(146, '1733769080.jpg', '2024-12-09 15:31:20', '2024-12-09 15:31:20'),
(147, '1733771178.png', '2024-12-09 16:06:18', '2024-12-09 16:06:18'),
(148, '1733771206.png', '2024-12-09 16:06:46', '2024-12-09 16:06:46'),
(149, '1733771242.webp', '2024-12-09 16:07:22', '2024-12-09 16:07:22'),
(150, '1733771298.jpg', '2024-12-09 16:08:18', '2024-12-09 16:08:18'),
(151, '1733771376.jpg', '2024-12-09 16:09:36', '2024-12-09 16:09:36'),
(152, '1733771392.webp', '2024-12-09 16:09:52', '2024-12-09 16:09:52'),
(153, '1733771708.jpg', '2024-12-09 16:15:08', '2024-12-09 16:15:08'),
(154, '1733771726.jpg', '2024-12-09 16:15:26', '2024-12-09 16:15:26'),
(155, '1733807178.png', '2024-12-10 02:06:18', '2024-12-10 02:06:18'),
(156, '1733807193.webp', '2024-12-10 02:06:33', '2024-12-10 02:06:33'),
(157, '1733807211.jpg', '2024-12-10 02:06:51', '2024-12-10 02:06:51'),
(158, '1733807247.webp', '2024-12-10 02:07:27', '2024-12-10 02:07:27'),
(159, '1733808268.jpg', '2024-12-10 02:24:28', '2024-12-10 02:24:28'),
(160, '1733808319.webp', '2024-12-10 02:25:19', '2024-12-10 02:25:19'),
(161, '1733808443.png', '2024-12-10 02:27:23', '2024-12-10 02:27:23'),
(162, '1733809430.png', '2024-12-10 02:43:50', '2024-12-10 02:43:50'),
(163, '1733809448.jpg', '2024-12-10 02:44:09', '2024-12-10 02:44:09'),
(164, '1733809600.webp', '2024-12-10 02:46:40', '2024-12-10 02:46:40'),
(165, '1733809638.webp', '2024-12-10 02:47:18', '2024-12-10 02:47:18'),
(166, '1733809652.webp', '2024-12-10 02:47:32', '2024-12-10 02:47:32'),
(167, '1733809965.png', '2024-12-10 02:52:45', '2024-12-10 02:52:45'),
(168, '1733809997.png', '2024-12-10 02:53:17', '2024-12-10 02:53:17'),
(169, '1733810042.png', '2024-12-10 02:54:02', '2024-12-10 02:54:02'),
(170, '1733810425.jpg', '2024-12-10 03:00:25', '2024-12-10 03:00:25'),
(171, '1733812664.webp', '2024-12-10 03:37:44', '2024-12-10 03:37:44'),
(172, '1733817708.webp', '2024-12-10 05:01:48', '2024-12-10 05:01:48'),
(173, '1733821838.png', '2024-12-10 06:10:38', '2024-12-10 06:10:38'),
(174, '1733821855.webp', '2024-12-10 06:10:55', '2024-12-10 06:10:55'),
(175, '1733822136.webp', '2024-12-10 06:15:36', '2024-12-10 06:15:36'),
(176, '1733822437.png', '2024-12-10 06:20:37', '2024-12-10 06:20:37'),
(177, '1733822491.png', '2024-12-10 06:21:31', '2024-12-10 06:21:31'),
(178, '1733822630.webp', '2024-12-10 06:23:50', '2024-12-10 06:23:50'),
(179, '1733823633.png', '2024-12-10 06:40:33', '2024-12-10 06:40:33'),
(180, '1733823670.webp', '2024-12-10 06:41:10', '2024-12-10 06:41:10'),
(181, '1734702250.PNG', '2024-12-20 10:44:10', '2024-12-20 10:44:10'),
(182, '1734702369.PNG', '2024-12-20 10:46:09', '2024-12-20 10:46:09'),
(183, '1734702407.PNG', '2024-12-20 10:46:47', '2024-12-20 10:46:47'),
(184, '1734704716.jpg', '2024-12-20 11:25:16', '2024-12-20 11:25:16'),
(185, '1734710847.jpg', '2024-12-20 13:07:27', '2024-12-20 13:07:27'),
(186, '1734780460.jpg', '2024-12-21 08:27:40', '2024-12-21 08:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `phone_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'Razan', 'razanbasel34@gmail.com', NULL, '$2y$10$jhZ7UQq7jaFlOIXr5JC17ekFtwZa/YEnnIK7PLdTgm.Or9Hhe9xTO', 'female', NULL, NULL, '2024-12-08 03:31:18', '2024-12-10 02:12:16'),
(16, 'razan basel hussein alhroub', 'sadeen@gmail.com', NULL, '$2y$10$afDmpmayH.nqkHGpb5c1k.f64oexyk/.q0CMScOdIMPXlIcSwsZRe', 'female', NULL, NULL, '2024-12-08 04:34:41', '2024-12-08 04:34:41'),
(17, 'razan alhroub', 'Razan_alhroub@gmail.com', NULL, '$2y$10$uaTz7DoxSQaWdLNwgPV0d.1aptJxtFHswW/IrD/y7B/zatEOHHQ5e', 'female', NULL, NULL, '2024-12-08 05:51:26', '2024-12-08 05:51:26'),
(18, 'razan basel hussein alhroub', 'oroub@gmail.com', NULL, '$2y$10$0Z2JKo66DYR9KC12kiSedOxFpVJ7rQvtLmP7PGV4Pqq2IplUUuhbu', 'female', NULL, NULL, '2024-12-08 06:37:07', '2024-12-08 06:37:07'),
(19, 'razan basel', 'razanaa@gmail.com', NULL, '$2y$10$r6cx4Y8IIIRuMEHqGHxQ2uND8CEzPXVDEB3uU/I/uK.uBAnpE0uEe', 'female', NULL, NULL, '2024-12-09 05:33:47', '2024-12-09 10:00:55'),
(20, 'razan basel hussein alhroub', 'razan.baselalhroub@gmail.com', NULL, '$2y$10$1aqoLnsuQaQGSyP19Rl1MemR9mISmFVNZ0AmcTpQSMrM34ITtZB1K', 'female', NULL, NULL, '2024-12-09 14:19:02', '2024-12-09 14:19:02'),
(21, 'razan basel hussein alhroub', 'razanhh@gmail.com', NULL, '$2y$10$IpfnmBxHEE4uitKfaHM9FuMZVFcRumkahlGdtty9iAJqrX3BXk0/G', 'female', NULL, NULL, '2024-12-09 14:20:56', '2024-12-09 14:20:56'),
(22, 'razan alhroub', 'razannnnn@gmail.com', NULL, '$2y$10$IdrYSw8q.BHyQh60y93nO.VwMAP5HFiR7T8edCjjW5pCIDRpz6N2a', 'female', NULL, NULL, '2024-12-09 14:24:12', '2024-12-09 14:24:12'),
(23, 'razan alhroub', 'razanananann@gmail.com', NULL, '$2y$10$IAgAwSv0xEwvT0KYzKBUVek8c.fP7yWG6pXv.Q9EZHH/I5EEk7eqm', 'female', NULL, NULL, '2024-12-10 01:57:59', '2024-12-10 01:57:59'),
(24, 'razan alhroub', 'razanhhhh@gmail.com', NULL, '$2y$10$T0A9wN9mI5SX5/EMiarfEeil2OsccvEOqFcEfTi0IHSCMHQ7dWHp6', 'female', NULL, NULL, '2024-12-10 02:52:25', '2024-12-10 02:52:25'),
(25, 'Issa sroor', 'razanbasel434@gmail.com', NULL, '$2y$10$jTamsav0IhLYOZ358oxX2OXavr976XtmnlteFlHp9lgRazw4/MJiC', 'male', NULL, NULL, '2024-12-10 03:23:44', '2024-12-10 03:23:44'),
(26, 'Issa sroor', 'Issa@gmail.com', NULL, '$2y$10$iM/jW155WoJivhi99celnec4GxjrkCYClXrqRh4YV/bICsHpclYwe', 'male', NULL, NULL, '2024-12-10 03:26:26', '2024-12-10 03:26:26'),
(27, 'Dina nafez', 'dina@gmail.com', NULL, '$2y$10$l/H2FEpGLAjHtnlp3jRG9OwDrckKrO/XyVmBj8fMJySVBtfJDuh.S', 'female', NULL, NULL, '2024-12-10 03:28:49', '2024-12-10 03:28:49'),
(28, 'razan basel', 'razanaah@gmail.com', NULL, '$2y$10$VYcruCexraSOW7yh7yRHIOcqTfnABieXnLWyMolKHJMP5f37q98GC', 'female', NULL, NULL, '2024-12-10 03:31:02', '2024-12-10 03:31:02'),
(29, 'razan basel hussein alhroub', 'Razasassan@gmail.com', NULL, '$2y$10$gnHMkMkai1jubn7vBcmo.u.2U6MJtthkRpvjSaf.xtFwubALeHrye', 'female', NULL, NULL, '2024-12-10 03:32:31', '2024-12-10 03:32:31'),
(30, 'razan alhroub', 'razan.b.aldddhroub@gmail.com', NULL, '$2y$10$QRQhcGD8CBNP5xv3WaYHyeJO4GXAW0TrD6lG3qnL1e.QqwA50az.G', 'female', NULL, NULL, '2024-12-10 03:39:20', '2024-12-10 03:39:20'),
(31, 'razan alhroub', 'razanbaselalhroub@gmail.com', NULL, '$2y$10$Y2ucq6jVW0NLXr7QWSQx0O8dD20MUD2NHc9Ujiky/8CxGtzOzRt36', 'female', NULL, NULL, '2024-12-10 06:11:53', '2024-12-10 06:11:53'),
(32, 'razanbase', 'razannnnnnnnn@gmail.com', NULL, '$2y$10$D766g/ur5UxY9JqLtsb3ZuynU2ozeycGUN0SeriFeK.deL0C0ubhK', 'female', NULL, NULL, '2024-12-10 06:21:08', '2024-12-10 06:21:08'),
(33, 'razan basel', 'razannnnnnnnnnnann@gmail.com', NULL, '$2y$10$ZCqW9JTGpPgz/qCSd5nLLOgilq1VCidOmnu2fxmfcBMhydqso.mSW', 'female', NULL, NULL, '2024-12-10 06:23:07', '2024-12-10 06:23:07'),
(34, 'ahmad azzam', 'ahmadazzam@gmail.com', NULL, '$2y$10$YokmglYrVe/cgnsIWZkDH.LA7VtZ3STlxIFI94c2L2WZuAE7//Sr.', 'male', NULL, NULL, '2024-12-10 06:39:13', '2024-12-10 06:39:13'),
(35, 'Dennis Aguilar', 'mibaky@mailinator.com', NULL, '$2y$10$PYzJUfDtRa7/ekrPB3JKp.Y3M0.P9QXHBY43zyShsNEBMClQb.IrW', 'female', NULL, NULL, '2024-12-20 09:16:53', '2024-12-20 09:16:53'),
(36, 'Dina Nafez', 'nafez.dina@gmail.com', NULL, '$2y$10$FB4kIXz4ilVkEoFc2AoL9ecISQyVrmQnZrkzbQoHkLEFUquf67JSK', 'female', NULL, NULL, '2024-12-20 09:17:50', '2024-12-20 09:17:50'),
(37, 'John Doe', 'john@example.com', NULL, '$2y$10$xr37g6QTcIgRiIllOHBEpOAKQidDBD0Bla0uZMuZiMq9t9nTYqsmG', 'female', NULL, NULL, '2024-12-20 09:22:52', '2024-12-20 09:22:52'),
(38, 'Dina Nafez', 'nafez444.dina@gmail.com', NULL, '$2y$10$jdbRUXwQPeKQXLnY/Rdi/uM6uxYm/a2S70OlivhFGpjWoddiDEPGu', 'female', NULL, NULL, '2024-12-20 09:25:26', '2024-12-20 09:25:26'),
(39, 'Dina Nafez', 'nafez55.dina@gmail.com', NULL, '$2y$10$EAoTYXYd91628wIudLEnCOU3LSIZz4YkISkGHEj/NwCRdgtwoAYh2', 'female', NULL, NULL, '2024-12-20 09:38:13', '2024-12-20 09:38:13'),
(40, 'Jordan Sims', 'wyry@mailinator.com', NULL, '$2y$10$gkrhWsjcu7Papq.s2LjMZuqzQMrmwm6jecd47kX/ACqJb3JCbH9EG', 'female', NULL, NULL, '2024-12-20 12:16:57', '2024-12-20 12:16:57'),
(41, 'Dina Nafez', 'nafez66.dina@gmail.com', NULL, '$2y$10$PzUvIoa7eYH5pq6l0nYlQeM7WU60x7n0smOMouDXWAHuXWBVymg3O', 'female', NULL, NULL, '2024-12-20 12:17:48', '2024-12-20 12:17:48'),
(42, 'Prescott Roberson', 'govi@mailinator.com', NULL, '$2y$10$LVnCKmyM6AH8GHHnmZn0Tum4bIvP5.4.dtojzzmhXOtq4COY4gjgm', 'male', NULL, NULL, '2024-12-21 08:22:19', '2024-12-21 08:22:19'),
(43, 'Rhiannon Golden', 'comyjif@mailinator.com', NULL, '$2y$10$gu8w3OxDQJALsqxtXR4p8uJb/wPDpuy6l89q6kJ4tLlwxgpbPxAMu', 'female', NULL, NULL, '2024-12-21 08:22:20', '2024-12-21 08:22:20'),
(44, 'Abd Nafez', 'nafez77.dina@gmail.com', NULL, '$2y$10$OMq6CAwXuCBOfSMgj4Qd.OMnwzRvgg98rBuRzN09wruRMjiXlG5By', 'male', NULL, NULL, '2024-12-21 08:23:31', '2024-12-21 08:23:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_create_user_id_foreign` (`create_user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_blog_id_foreign` (`blog_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

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
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_create_user_id_foreign` FOREIGN KEY (`create_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
