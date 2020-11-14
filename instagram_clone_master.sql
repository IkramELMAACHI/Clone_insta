-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 14 nov. 2020 à 00:21
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `instagram_clone_master`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'sasa', 2, 1, '2020-08-13 09:04:20', '2020-08-13 09:04:20'),
(2, 'lool', 2, 1, '2020-08-13 09:09:20', '2020-08-13 09:09:20'),
(3, 'beautiful :heart_eyes:', 4, 6, '2020-10-25 20:47:16', '2020-10-25 20:47:16'),
(4, 'Je ne me vous pas!!', 3, 10, '2020-10-25 21:22:55', '2020-10-25 21:22:55'),
(5, 'BAZAAR', 6, 15, '2020-10-25 21:48:04', '2020-10-25 21:48:04'),
(6, 'Ohhh', 6, 14, '2020-10-25 21:48:45', '2020-10-25 21:48:45'),
(7, '😍😍😍', 6, 14, '2020-10-25 21:48:59', '2020-10-25 21:48:59'),
(8, '😍😍😍😍', 6, 9, '2020-10-25 21:49:20', '2020-10-25 21:49:20'),
(9, 'hahahahaha', 5, 16, '2020-10-25 22:30:03', '2020-10-25 22:30:03'),
(10, 'hey lucas what ar u looking for??', 3, 17, '2020-10-25 22:38:23', '2020-10-25 22:38:23'),
(11, 'LMAO', 3, 16, '2020-10-25 22:38:36', '2020-10-25 22:38:36'),
(12, '😍😍😍', 3, 12, '2020-10-25 22:41:23', '2020-10-25 22:41:23'),
(13, '😍😍😍', 3, 10, '2020-10-25 22:41:47', '2020-10-25 22:41:47'),
(14, 'ca va bien le pantalon blanc', 2, 16, '2020-10-25 22:46:35', '2020-10-25 22:46:35'),
(16, '❤️', 1, 15, '2020-10-26 17:14:16', '2020-10-26 17:14:16'),
(17, '❤️', 1, 14, '2020-10-26 17:14:36', '2020-10-26 17:14:36'),
(18, '❤️', 1, 17, '2020-10-26 17:14:52', '2020-10-26 17:14:52'),
(27, 'beautiful', 1, 18, '2020-10-28 00:55:22', '2020-10-28 00:55:22');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `State` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `State`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2020-08-13 09:04:26', '2020-08-13 09:04:26'),
(2, 1, 1, 2, '2020-08-13 13:56:33', '2020-08-13 13:56:33'),
(3, 1, 1, 3, '2020-08-13 14:18:51', '2020-08-13 14:18:51'),
(4, 1, 1, 1, '2020-10-25 19:14:24', '2020-10-25 19:14:24'),
(5, 1, 1, 4, '2020-10-25 19:22:30', '2020-10-25 19:22:30'),
(6, 1, 2, 6, '2020-10-25 20:18:21', '2020-10-25 20:18:21'),
(7, 1, 2, 5, '2020-10-25 20:18:27', '2020-10-25 20:18:27'),
(8, 1, 2, 4, '2020-10-25 20:18:34', '2020-10-25 20:18:34'),
(9, 1, 2, 3, '2020-10-25 20:18:40', '2020-10-25 20:18:40'),
(10, 1, 3, 6, '2020-10-25 20:32:09', '2020-10-25 20:32:09'),
(11, 1, 2, 7, '2020-10-25 20:34:25', '2020-10-25 20:34:25'),
(12, 1, 5, 9, '2020-10-25 20:57:52', '2020-10-25 20:57:52'),
(13, 1, 5, 7, '2020-10-25 20:58:09', '2020-10-25 20:58:09'),
(14, 1, 5, 8, '2020-10-25 20:58:14', '2020-10-25 20:58:14'),
(15, 1, 5, 6, '2020-10-25 20:58:21', '2020-10-25 20:58:21'),
(16, 1, 5, 5, '2020-10-25 20:58:28', '2020-10-25 20:58:28'),
(17, 1, 5, 4, '2020-10-25 20:58:33', '2020-10-25 20:58:33'),
(18, 1, 5, 3, '2020-10-25 20:58:40', '2020-10-25 20:58:40'),
(19, 1, 5, 2, '2020-10-25 20:58:48', '2020-10-25 20:58:48'),
(20, 1, 3, 11, '2020-10-25 21:20:25', '2020-10-25 21:20:25'),
(21, 1, 4, 11, '2020-10-25 21:23:45', '2020-10-25 21:23:45'),
(22, 1, 4, 10, '2020-10-25 21:23:50', '2020-10-25 21:23:50'),
(23, 1, 4, 8, '2020-10-25 21:23:57', '2020-10-25 21:23:57'),
(24, 1, 4, 7, '2020-10-25 21:24:05', '2020-10-25 21:24:05'),
(25, 1, 4, 5, '2020-10-25 21:24:11', '2020-10-25 21:24:11'),
(26, 1, 4, 4, '2020-10-25 21:24:18', '2020-10-25 21:24:18'),
(27, 1, 1, 5, '2020-10-25 21:31:17', '2020-10-25 21:31:17'),
(28, 0, 1, 11, '2020-10-25 21:31:26', '2020-10-26 16:50:56'),
(29, 1, 1, 12, '2020-10-25 21:31:33', '2020-10-25 21:31:33'),
(30, 1, 1, 7, '2020-10-25 21:31:47', '2020-10-25 21:31:47'),
(31, 1, 1, 6, '2020-10-25 21:31:58', '2020-10-25 21:31:58'),
(32, 1, 1, 8, '2020-10-25 21:32:41', '2020-10-25 21:32:41'),
(33, 1, 1, 13, '2020-10-25 21:35:47', '2020-10-25 21:35:47'),
(34, 1, 1, 10, '2020-10-25 21:36:25', '2020-10-25 21:36:25'),
(35, 1, 1, 9, '2020-10-25 21:36:37', '2020-10-25 21:36:37'),
(36, 1, 4, 15, '2020-10-25 21:44:05', '2020-10-25 21:44:05'),
(37, 1, 4, 14, '2020-10-25 21:44:11', '2020-10-26 14:08:22'),
(38, 1, 4, 13, '2020-10-25 21:44:18', '2020-10-26 12:44:33'),
(39, 1, 4, 12, '2020-10-25 21:44:28', '2020-10-25 21:44:28'),
(40, 1, 4, 9, '2020-10-25 21:44:36', '2020-10-25 21:44:36'),
(41, 1, 4, 6, '2020-10-25 21:44:44', '2020-10-25 21:44:44'),
(42, 1, 6, 16, '2020-10-25 21:47:36', '2020-10-25 21:47:36'),
(43, 1, 6, 5, '2020-10-25 22:23:26', '2020-10-25 22:23:26'),
(44, 1, 6, 14, '2020-10-25 22:23:31', '2020-10-25 22:23:31'),
(45, 1, 6, 9, '2020-10-25 22:23:39', '2020-10-25 22:23:39'),
(46, 1, 6, 6, '2020-10-25 22:23:45', '2020-10-25 22:23:45'),
(47, 1, 5, 16, '2020-10-25 22:29:48', '2020-10-25 22:29:48'),
(48, 1, 5, 15, '2020-10-25 22:30:12', '2020-10-25 22:30:12'),
(49, 1, 5, 17, '2020-10-25 22:35:10', '2020-10-25 22:35:10'),
(50, 1, 5, 13, '2020-10-25 22:35:19', '2020-10-25 22:35:19'),
(51, 1, 5, 14, '2020-10-25 22:35:28', '2020-10-25 22:35:28'),
(52, 1, 5, 12, '2020-10-25 22:35:42', '2020-10-25 22:35:42'),
(53, 1, 5, 11, '2020-10-25 22:35:48', '2020-10-25 22:35:48'),
(54, 1, 4, 17, '2020-10-25 22:36:17', '2020-10-26 14:10:57'),
(55, 1, 4, 16, '2020-10-25 22:36:26', '2020-10-26 12:31:29'),
(56, 1, 3, 17, '2020-10-25 22:37:38', '2020-10-25 22:37:38'),
(57, 1, 3, 16, '2020-10-25 22:38:44', '2020-10-25 22:38:44'),
(58, 1, 3, 13, '2020-10-25 22:38:51', '2020-10-25 22:38:51'),
(59, 1, 3, 10, '2020-10-25 22:38:59', '2020-10-25 22:38:59'),
(60, 1, 3, 9, '2020-10-25 22:39:08', '2020-10-25 22:39:08'),
(61, 1, 3, 12, '2020-10-25 22:39:18', '2020-10-25 22:39:18'),
(62, 1, 3, 7, '2020-10-25 22:39:30', '2020-10-25 22:39:30'),
(63, 1, 3, 19, '2020-10-25 22:40:36', '2020-10-25 22:40:36'),
(64, 1, 3, 18, '2020-10-25 22:40:42', '2020-10-25 22:40:42'),
(65, 1, 3, 15, '2020-10-25 22:40:51', '2020-10-25 22:40:51'),
(66, 1, 3, 14, '2020-10-25 22:41:00', '2020-10-25 22:41:00'),
(67, 1, 2, 20, '2020-10-25 22:45:39', '2020-10-25 22:45:39'),
(68, 1, 2, 18, '2020-10-25 22:45:45', '2020-10-25 22:45:45'),
(69, 1, 2, 19, '2020-10-25 22:45:50', '2020-10-25 22:45:50'),
(70, 1, 2, 17, '2020-10-25 22:45:55', '2020-10-25 22:45:55'),
(71, 1, 2, 14, '2020-10-25 22:47:11', '2020-10-25 22:47:11'),
(72, 1, 2, 9, '2020-10-25 22:47:22', '2020-10-25 22:47:22'),
(73, 1, 2, 12, '2020-10-25 22:47:35', '2020-10-25 22:47:35'),
(74, 1, 1, 22, '2020-10-25 22:50:54', '2020-10-26 16:57:06'),
(75, 1, 1, 21, '2020-10-25 22:51:05', '2020-10-25 22:51:05'),
(76, 1, 1, 20, '2020-10-25 22:51:12', '2020-10-26 17:07:04'),
(77, 1, 1, 19, '2020-10-25 22:51:18', '2020-10-26 16:48:22'),
(78, 1, 1, 16, '2020-10-25 22:51:25', '2020-10-25 22:51:25'),
(79, 1, 1, 14, '2020-10-25 23:04:23', '2020-10-25 23:04:23'),
(80, 1, 4, 22, '2020-10-26 10:48:17', '2020-10-26 14:09:09'),
(81, 1, 4, 18, '2020-10-26 11:03:22', '2020-10-26 13:19:17'),
(82, 1, 4, 20, '2020-10-26 11:24:35', '2020-10-26 14:10:45'),
(83, 1, 4, 19, '2020-10-26 11:40:11', '2020-10-26 14:10:51'),
(84, 1, 4, 21, '2020-10-26 11:41:53', '2020-10-26 13:58:15'),
(85, 1, 1, 17, '2020-10-26 17:11:19', '2020-10-26 17:11:19'),
(86, 1, 1, 15, '2020-10-26 17:11:28', '2020-10-26 17:11:28'),
(87, 1, 1, 18, '2020-10-28 00:55:07', '2020-10-28 00:55:07');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_10_093150_create_profiles_table', 1),
(5, '2020_03_10_112448_create_posts_table', 1),
(6, '2020_03_13_180815_creates_profile_user_pivot_table', 1),
(7, '2020_06_25_194640_create_comments_table', 1),
(8, '2020_08_10_141328_create_likes_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `caption`, `image`, `likes`, `created_at`, `updated_at`) VALUES
(1, 1, 'saaaaaaaaaaaaaaaaaaaaaaaa', 'uploads/o92VWBbhXHB3H5nfXk8t1byfEwDOyibqDRcz5jBi.jpeg', 0, '2020-08-13 08:54:58', '2020-08-13 08:54:58'),
(2, 2, 'sssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxx', 'uploads/ihT1uzfewUEbcVTpgejeWp4XzlglS8GoNGH5fl6W.jpeg', 0, '2020-08-13 09:06:21', '2020-08-13 09:06:21'),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt mauris sit amet diam egestas, vitae imperdiet justo mollis. Nulla aliquet dui ut sem fermentum, et pellentesque metus porttitor.', 'uploads/KAto75bLNOG1F8tElF1GaUb6Ov41YR0AJDxX61ei.jpeg', 0, '2020-08-13 13:55:13', '2020-08-13 13:55:13'),
(4, 1, 'cute <3', 'uploads/mkQiXvjnZGR9zHVsc4A2ScHF39BKq0JOMyDPzcEa.jpeg', 0, '2020-10-25 19:21:27', '2020-10-25 19:21:27'),
(5, 2, '🌺🌺', 'uploads/7Pf0sK58T63kLrgXem70NvCPaiVQTStYtHDRvKCh.png', 0, '2020-10-25 19:27:41', '2020-10-25 19:27:41'),
(6, 2, 'Pinkk <3', 'uploads/33RIKQqPQ9hijK59bvtdy5AwxT3JMy9BmhmMLV0E.png', 0, '2020-10-25 20:10:40', '2020-10-25 20:10:40'),
(7, 3, 'Priyanka Chopra Loves Homemade Achaar', 'uploads/QDhvpbZvmLYwrep6owpHFKUpXkRMAxpssn6SF4mc.jpeg', 0, '2020-10-25 20:29:03', '2020-10-25 20:29:03'),
(8, 4, 'Verified\r\nAll glammed up to create the perfect Mystic Bronze look inspired by my new #GalaxyNote20Ultra', 'uploads/qBySsS8nt1RT2kbQv1WhUfAZceSS817A6MrmKYs7.png', 0, '2020-10-25 20:38:37', '2020-10-25 20:38:37'),
(9, 5, 'Budapest - Interrail 2017 👜', 'uploads/5D1IsO37mCl9TFqIl0izHjTkZLNOWpQ8lZECa2KW.png', 0, '2020-10-25 20:56:58', '2020-10-25 20:56:58'),
(10, 6, 'Guys <3', 'uploads/f6psHbH5DFIffeNHJMLwEA0JZzdukvXygMFzOzNa.png', 0, '2020-10-25 21:15:05', '2020-10-25 21:15:05'),
(11, 3, 'In the end, nature will win 💚', 'uploads/LHYQAMH4rctuCjr0GZ2pAPwzswcsU6EjFqAqrelu.jpeg', 0, '2020-10-25 21:20:12', '2020-10-25 21:20:12'),
(12, 1, 'Happy Women\'s Day to us <3 <3 🌷🌷🌷', 'uploads/D1oiQHXKZoZJbeLyYBedNkyA3RO7oE7VloKIvW7O.png', 0, '2020-10-25 21:30:53', '2020-10-25 21:30:53'),
(13, 1, '🌲💛', 'uploads/YrvsiCkzBqP9d6OtrURuE5dB8d68naUxWibFos77.png', 0, '2020-10-25 21:35:29', '2020-10-25 21:35:29'),
(14, 4, 'Glam up just like me with @splashfashions this Eid 💜💜Shop online at www.splashfashions.com 🥰😍😘', 'uploads/50uSk7nUuxMJ6vh2x3hKTyWnAWfElTT94AeU0kUu.png', 0, '2020-10-25 21:43:01', '2020-10-25 21:43:01'),
(15, 4, 'Verified\r\n#Repost @bazaarindia\r\n・・・\r\nOur May cover star Jacqueline Fernandez (@jacquelinef143), created our cover story images while quarantined out on a Panvel farmhouse, where she is reconnecting with nature, and her inner artist. This cover special celebrates just some of the things that are bringing us joy right now—beautiful imagery, nature, and the hope of a better future.', 'uploads/SKUZOw2XAea7cTwcviir9xvOfhXSkZlVgKOvJe78.png', 0, '2020-10-25 21:43:58', '2020-10-25 21:43:58'),
(16, 6, 'Lavage de pieds dans le caniveau ❤', 'uploads/JlyqdIsfCEMuaTCNYr8GsKq5H1FGQ67PXhBdkHad.png', 0, '2020-10-25 21:47:17', '2020-10-25 21:47:17'),
(17, 5, 'Buddies', 'uploads/0TUUimcgsEOAVjnJtJANc5Gl8yn53e0NB4674oOT.png', 0, '2020-10-25 22:28:25', '2020-10-25 22:28:25'),
(18, 4, 'Playing Sona Mukerjee, a loyal wife who sets out to prove her husband’s innocence.. How far will she go for love?\r\nThis one is close to my heart and excited to share that the trailer will be out at 12 PM on @netflix_in on 17 April!! Mrs. Serial Killer premieres May 1 ❤️❤️❤️❤️', 'uploads/r2BNZN99ZPNTSogPzTBJoXeZCBqor383Otb5mCv9.png', 0, '2020-10-25 22:36:43', '2020-10-25 22:36:43'),
(19, 3, 'Life in one photo...', 'uploads/tlSRdXrnKppQSwv0ijcL3ECJfABSrVf3WTWx6g9o.png', 0, '2020-10-25 22:40:19', '2020-10-25 22:40:19'),
(20, 2, '😍😍😍', 'uploads/DrYvNrj5tBOOrJAR5W1pVo8vdwrHWlkyMY5RCXOo.png', 0, '2020-10-25 22:45:13', '2020-10-25 22:45:13'),
(21, 1, 'Auberge Imine Taghya Gorge du Dades', 'uploads/ctINwKtXydxamAKHBiFER2meYDHH16GwQ1MTazAl.png', 0, '2020-10-25 22:49:48', '2020-10-25 22:49:48'),
(22, 1, 'kaki shan', 'uploads/1lb2d3hqHExuYCs93rfUNiDVuFXiTY7HN8QBEioe.jpeg', 0, '2020-10-25 22:50:38', '2020-10-25 22:50:38');

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `website`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'FullStack Web developer (Laravel PHP -ReactJs)\r\nPorfolio :', 'https://ikramelmaachi.github.io/Portfolio-IkramELMAACHI/', 'profile/pYskopy3mBdwqtpgJRv1SVDlsRXPDLrmc7iK5GZw.jpeg', '2020-08-13 08:20:12', '2020-10-25 21:29:37'),
(2, 2, NULL, NULL, 'profile/GyDuokhAffOlyenOGlRSfNjBpGvy8ZZsXrjpWaoo.png', '2020-08-13 09:03:56', '2020-10-25 20:10:54'),
(3, 3, NULL, NULL, 'profile/pvTwtLAFUChtpRJrhNBE7kBtLwux2HjGaJFMU1ny.jpeg', '2020-09-08 14:16:25', '2020-10-25 20:25:46'),
(4, 4, NULL, NULL, 'profile/ov5EiXK36plWB2JQkFGHPnCL5RTCRm4oDh6osZSX.png', '2020-10-25 20:36:31', '2020-10-25 20:37:35'),
(5, 5, NULL, NULL, 'profile/o23LUVH8LTlqbSKLPvEyCXEnIxHaX2MsHluME4bv.png', '2020-10-25 20:49:35', '2020-10-25 20:57:33'),
(6, 6, 'Habite à Lyon\r\n\r\nDe Marseille', NULL, 'profile/XstPchJ8iB6KUvI75V737sFTCXtDzBu1IMiivSDS.png', '2020-10-25 21:11:03', '2020-10-25 21:13:15');

-- --------------------------------------------------------

--
-- Structure de la table `profile_user`
--

CREATE TABLE `profile_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profile_user`
--

INSERT INTO `profile_user` (`id`, `profile_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 3, 2, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 2, 4, NULL, NULL),
(9, 3, 4, NULL, NULL),
(10, 1, 5, NULL, NULL),
(11, 2, 5, NULL, NULL),
(12, 3, 5, NULL, NULL),
(13, 4, 5, NULL, NULL),
(14, 2, 6, NULL, NULL),
(15, 3, 6, NULL, NULL),
(16, 5, 6, NULL, NULL),
(17, 4, 6, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 5, 3, NULL, NULL),
(20, 6, 4, NULL, NULL),
(21, 4, 1, NULL, NULL),
(22, 5, 1, NULL, NULL),
(23, 6, 1, NULL, NULL),
(24, 5, 4, NULL, NULL),
(25, 6, 5, NULL, NULL),
(26, 4, 3, NULL, NULL),
(27, 4, 2, NULL, NULL),
(28, 5, 2, NULL, NULL),
(29, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ikram@gmail.com', 'Akame San', 'Ikram', NULL, '$2y$10$vvMjtSu2AjsajRvr6rEv4eWG2rxER2MvrAzyeRRXAsQ3PlDF2j0dq', NULL, '2020-08-13 08:20:12', '2020-10-25 21:29:05'),
(2, 'hind@gmail.com', 'Hind Rakoub', 'Hind', NULL, '$2y$10$vWqZsRPuRYKg20Uu4LlwX..lNTTKpm0v1ZbJNPCBQD4MXltX/K3q6', NULL, '2020-08-13 09:03:56', '2020-10-25 22:48:08'),
(3, 'jack@gmail.com', 'Jacqueline', 'jacqueline Fernandez', NULL, '$2y$10$jF5nVfvb8EGPcpgIAAniH.aNeK3Pm/0ZgOviCxjwVUueoSCu6BWDy', NULL, '2020-09-08 14:16:25', '2020-10-25 20:31:03'),
(4, 'mora@gmail.com', 'Mora argentina', 'mora', NULL, '$2y$10$zl3FolkOT6d/uQusBRWc6.vT5N9Gwie2eYE2fOzIA6TLrnQNaV4GG', NULL, '2020-10-25 20:36:30', '2020-10-25 20:36:30'),
(5, 'melvine@gmail.com', 'melvin', 'melvin lecas', NULL, '$2y$10$WsI80JJFqjJLR85FwGybyO3yxnMlzWQifAPJbxmCE8JN8XOiws2Aq', NULL, '2020-10-25 20:49:34', '2020-10-25 20:57:33'),
(6, 'Marguerite@gmail.com', 'Marguerite Lusseau', 'Marguerita', NULL, '$2y$10$7OPRMOK9AEJzusEu0BoSGuOgfh2HJQhZxjn5psHRkEgsNznhisJS6', NULL, '2020-10-25 21:11:02', '2020-10-25 21:11:02');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`);

--
-- Index pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Index pour la table `profile_user`
--
ALTER TABLE `profile_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `profile_user`
--
ALTER TABLE `profile_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
