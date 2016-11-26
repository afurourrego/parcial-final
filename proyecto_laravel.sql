-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2016 a las 02:39:45
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `brand`, `stock`, `price`, `content`, `duedate`, `image`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(8, 'el nombre', 'asdada', 1231, 1221, 'bgfdgdg', '2016-11-18', 'papertoread_1479272032.jpg', 1, 2, '2016-11-16 04:53:52', '2016-11-16 04:53:52'),
(9, 'fdsfa', 'sdfsfs', 12, 2112, 'kllkññk', '2016-11-18', 'papertoread_1479272059.jpg', 1, 2, '2016-11-16 04:54:19', '2016-11-16 04:54:19'),
(10, 'sdfgsdg', 'sdfsdfsd', 121, 101, 'fghfghfhfg', '2016-11-17', 'papertoread_1479272081.jpg', 1, 3, '2016-11-16 04:54:41', '2016-11-16 04:54:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aasdas', '2016-11-15 01:56:59', '2016-11-15 01:56:59'),
(2, 'asdad', '2016-11-15 01:57:02', '2016-11-15 01:57:02'),
(3, 'sadad', '2016-11-15 01:57:06', '2016-11-15 01:57:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `price`, `cantidad`, `pay`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(9, 1221, 1, 1, 1, 8, '2016-11-19 01:39:07', '2016-11-19 04:16:06'),
(10, 1221, 2, 1, 1, 8, '2016-11-19 01:40:09', '2016-11-19 04:48:48'),
(12, 2112, 2, 1, 1, 9, '2016-11-19 03:09:17', '2016-11-19 03:09:17'),
(13, 2112, 2, 1, 1, 9, '2016-11-19 03:09:20', '2016-11-19 03:09:20'),
(17, 101, 2, 1, 1, 10, '2016-11-19 03:21:51', '2016-11-22 01:03:28'),
(20, 1221, 2, 1, 1, 8, '2016-11-19 04:48:56', '2016-11-20 00:00:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_18_194729_create_personas_table', 1),
('2016_11_05_180046_create_categories', 1),
('2016_11_05_180105_create_articles', 1),
('2016_11_05_180122_create_images', 1),
('2016_11_05_180133_create_compras', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `birthdate` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellido`, `email`, `phone`, `address`, `password`, `type`, `birthdate`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cristhian', '', 'cristhianu92@gmail.com', '3113495178', '762022', '$2y$10$EKPpmC7Per5qD5eIEz7dIeDIwGhKL.cnw7sbABaVrn57cQXA/Drwe', 'admin', '0000-00-00', 'rlewx1j92mWj8PGZ4ClSGDplo6AeIjWgKfcPaFeT7OhIObZCXeitcB6tS5HP', '2016-11-15 01:56:38', '2016-11-19 23:48:44'),
(2, 'Dr. Moriah Robel MD', 'Homenick', 'bonnie21@example.net', '513-662-9985 x996', '377 Lemke Springs\nSouth Dagmar, IA 38056', '123', 'admin', '1979-06-28', 'exMp9QbO9W', '2016-11-15 05:02:40', '2016-11-15 05:02:40'),
(3, 'Mr. Barney Stokes Jr.', 'Nienow', 'ernser.lucienne@example.com', '316-959-7662 x80363', '246 Hermina Drive\nVerlieview, WV 77604', '123', 'admin', '1995-04-19', 'Y8z39Nzz5P', '2016-11-15 05:02:40', '2016-11-15 05:02:40'),
(4, 'Anabel Champlin', 'Harris', 'yasmine.parisian@example.com', '1-460-219-2873 x8104', '9710 Weber Greens Apt. 637\nLake Linwoodville, CA 16529', '123', 'admin', '1978-12-22', 'usykVc5cey', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(5, 'Arely Schuppe', 'Ferry', 'orn.estevan@example.org', '(392) 784-2074', '6391 Langworth Shore Apt. 729\nSouth Tommieburgh, HI 06653-9094', '123', 'admin', '1997-05-19', 'y1CfgQqu75', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(6, 'Karen Mohr', 'Zemlak', 'cielo52@example.org', '1-305-565-4168 x384', '805 Cierra Trail Suite 157\nHermanton, AL 50154-4757', '123', 'admin', '2001-06-13', 'ay1y73qzVo', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(7, 'Mavis Altenwerth', 'Medhurst', 'gerhard85@example.org', '+1-609-775-2162', '368 Reuben Trail\nWintheiserbury, IA 42072', '123', 'admin', '1986-04-21', 'JnJqgtR9Hi', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(8, 'Prof. Reyes Upton Sr.', 'Dooley', 'emelia70@example.com', '768.751.3792 x966', '92486 Madisyn Locks Apt. 144\nNew Emelie, GA 66494-5890', '123', 'admin', '1976-01-08', 'kPFmaeBD5G', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(9, 'Abe Stanton V', 'Marks', 'lazaro89@example.com', '1-461-819-4280 x8428', '2151 Adams Islands\nKulasberg, CA 68017', '123', 'admin', '1999-01-12', 'qoLhKFG4G9', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(10, 'Dr. Isac Blanda DVM', 'Cummerata', 'fohara@example.org', '+1-513-385-0735', '14957 Zechariah Spur\nWest Mack, AK 63807', '123', 'admin', '2007-05-28', 'u2lmX4fHtT', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(11, 'Charlie Kozey', 'Prohaska', 'schiller.mabelle@example.net', '(643) 780-9127 x64983', '703 Arlie Islands\nSouth Gregg, ME 89140', '123', 'admin', '1970-08-01', 'teTWwt0bsP', '2016-11-15 05:02:41', '2016-11-15 05:02:41'),
(12, 'afu', '21313', 'c@gmail.com', '1231', '123132', '$2y$10$NFcof0SbmsrC.I04MqpsLONhi6SPLY.LJfQWR1cZ3Ciw8MbjTVJQ6', 'member', '0000-00-00', NULL, '2016-11-17 03:04:20', '2016-11-17 03:04:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_user_id_foreign` (`user_id`),
  ADD KEY `compras_article_id_foreign` (`article_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
