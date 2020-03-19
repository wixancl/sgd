-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-03-2020 a las 18:13:34
-- Versión del servidor: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `registro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servidor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `backup`
--

INSERT INTO `backup` (`id`, `registro`, `ruta`, `tipo`, `servidor`, `fecha`) VALUES
(1, '2020-03-05_16-36-39', '/var/www/html/script/storage/informe/2020-03-05_16-36-39.txt', '1', 'Tarqueq', '2020-03-05 19:37:14'),
(2, '2020-03-05_16-38-11', '/var/www/html/script/storage/informe/2020-03-05_16-38-11.txt', '1', 'Tarqueq', '2020-03-05 19:38:45'),
(3, '2020-03-05_16-38-11', '/var/www/html/script/storage/log/2020-03-05_16-38-11.zip', '2', 'Tarqueq', '2020-03-05 19:38:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_04_172623_create_roles_table', 1),
(4, '2017_05_04_180213_create_role_user_table', 1),
(40, '2020_02_02_161817_create_cache_table', 8),
(41, '2020_02_22_163733_create_pablos_table', 9),
(42, '2020_02_22_183642_create_guidos_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `documento_id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2017-05-13 12:00:00', '2017-05-13 12:00:00'),
(2, 'Tarqueq', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(442, 1),
(442, 11),
(442, 12),
(442, 13),
(442, 14),
(442, 15),
(442, 16),
(442, 17),
(442, 18),
(443, 1),
(444, 11),
(444, 12),
(444, 16),
(444, 17),
(444, 18),
(445, 11),
(445, 12),
(445, 16),
(445, 17),
(445, 18),
(446, 11),
(446, 12),
(446, 16),
(446, 17),
(446, 18),
(450, 11),
(451, 11),
(452, 11),
(453, 11),
(454, 11),
(456, 1),
(456, 11),
(456, 12),
(456, 16),
(456, 17),
(456, 18),
(458, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3E2JBUFAUsvMaCyjKwp4oPKyCQMhcnI1QuFsQSw0', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2NtQVhIWFNLMjU3V2xsZkFTdlRpenZUSWNsU3NwNFExc0x6cFU3MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1582400325),
('9PH6CWIvALPXjnKmeCSgQYAh2fsuUCLi53XJUHJo', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSVBScUhMM1Y2NkRmeTRjN3VldnFURWoycWVnUFhnQmpJRTcxQ1RzeSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwOi8vbG9jYWxob3N0L3NnZC9wdWJsaWMvYmFja3VwbG9ndGFycXVlcSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTU6ImVzdGFibGVjaW1pZW50byI7TjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1583442126),
('bffzbMVH1YeZo4as4jC6BmbhxvJjLh5Txs8BrSX9', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicU9ZTmFjTHhuanlKMUZtZlNYMkxxMGdnTEVYdEFGcFV4SmFaMkVDQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1581451759),
('Ik30IxZci2n7BIqNQWKV5o7QApaUk3U8lO383nYi', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZDJOWEVxdmtqamQ2SVBkWU0xZ2JyNTZYamJveDRFRENLZWpJa0JWUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1583250577),
('jKGdgIXfWYvjX8IfWrM1Ea95ZdDsGwvDvJUVkrjg', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV1d0ZFZjQTVyaWJPajdxNmdpcGxFejdJR2dKV0VpVjJpbjZpUGFOVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1584563414),
('mksSIrXGPqLIOoLg3eCJ6Lteed7y2v6cRTXpy35y', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiblVtT3lyUlJZQnd2cnU4SHRrYmRYNWtXMTBMNDVxT2JSclB1ODFVdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1583420048),
('mrWz6y1CBNOzea39oQwJEAwRqijWfq2Q0nrrWTka', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQWRHWGF2THQ5ejNGYkVpc0d5TEZ6TVZWSGJFQlZLWkNQRzR3a09xViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYy9iYWNrdXBsb2d0YXJxdWVxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiZXN0YWJsZWNpbWllbnRvIjtOO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1583517322),
('vISIOiXva5jF9TScNpkleP4K7ojdoQKKrMmHrRCp', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmh2YkNOVUlSWWE5bjVKRmhqUEVUNXJtTUVzRndDODYwMXpraEdrdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Qvc2dkL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1584123373);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iniciales` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `iniciales`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.cl', '$2y$10$sYSIf7o.xUudh7FGpujJ.uXF84EJw7tTEEJbnQcQYARatk0Ny/PWK', 'adm', 1, 'o660RLYyorgC4HJ1zl7rjtlFPI2ylfA8efW7CBZS8vzE8dvj8rrNs2TZlMIn', '2017-05-13 06:00:00', '2019-12-08 14:38:12'),
(442, 'Guido Ríos Ciaffaroni', 'guido.rios@redsalud.gov.cl', '$2y$10$NWreBiAsOs2sTc.YfKSqAOvyEwOcXO7dOCTA91JI8/xGCQddxbgHe', 'GRC', 1, 'xUmM8BIg4fW8ArF9ZxMzajZM52hxdyf23gjK7fsKHP92iZ6cF1TcQCHaxuZf', '2019-10-10 15:14:12', '2020-01-02 19:24:21'),
(443, 'Carlos Cornejo', '15542540', '$2y$10$3WWnCxIKxtASrP8bQ8lwr.zX9o9WRv/G1j77WXAltddK05C5iVw.S', 'CC', 1, NULL, '2019-12-06 13:05:04', '2019-12-06 13:05:04'),
(444, 'Francisco Miranda', '7406044', '$2y$10$JB1HiPjsTQPUeFZ.q1KgTO5K6PMq8N8XjfzcW2ETPcdQyRZcttCYm', 'FM', 1, '6qMcczd89cLjPiBGnRY9q5Fmz80iMuMbsPlSWtyQy7RGwnLEgOHdPyNYlElY', '2019-12-08 13:58:42', '2019-12-08 13:58:42'),
(445, 'Rodrigo Riffo Rubio', '10859498', '$2y$10$zX9sKiUzWgeIG3Sn/vb3a.P/bGe82nANRRXCutUHbzvsE00dLoVpy', 'RRR', 1, 'IG5VYZbhLA9HdSKdBgP6QteB1VEyu0oydv8aWuRVGpqfnECGeE9MSm58HSbu', '2019-12-08 14:18:43', '2020-01-07 11:59:39'),
(446, 'Margarita Samame', '9784212', '$2y$10$fOOJBgJ4llSuOGIGkEU7Weie5ZL7NglAhQYdS9oHQBA06nrq7Bq3u', 'MS', 1, NULL, '2019-12-08 14:19:25', '2020-01-07 12:00:27'),
(447, 'Fidel Soto Badilla', '8867411', '$2y$10$h.N5Ldu/7sBpdytaNPpf1eePsRa7cqwNr4TLbyu51FteUtXbHJ7oi', 'FSB', 1, 'PqFjMBylJ5nrscio2wkGCXWW7jQLctDWHeBE8HbbmaTr41tJoptPHAlJPi1R', '2019-12-08 14:20:03', '2020-01-03 12:34:35'),
(448, 'Germain Farias Cuevas', '17398276', '$2y$10$SgtgrekDy2BmiDLVjhmtgOS2r8uB4LsIvjChZzvxH8CkZ/TA/B/EC', 'GFC', 1, 'wyCxUKFVeMzMswQ4lh6Qf1stQ7JyDUYVBrrKZWsNGQB2dUQTkzg2QY1t5mhy', '2019-12-08 14:20:41', '2020-01-03 12:36:46'),
(449, 'Vicente Hevia Roa', '18405510', '$2y$10$TIk/nVPw5g92.rDX8nMKJ.6c1vQDxUxDLl9fix0P7dbE//YzfGp2O', 'VHR', 1, 'o745xGQGTjbQNdDS69J8jW9Qltv3JceOOWoytleQvvwbtG6WbN1kIZrhoKfV', '2019-12-08 14:21:48', '2019-12-08 14:21:48'),
(450, 'Midori Sawada Tsukame', '7042535', '$2y$10$6m/frawSWCx2YVwwEyPrNuaOwyNs905GEi/j.RZmpX67/vTqXdNb2', 'MST', 1, 'ptAB1UlSOTS2SLxYtnv3jKLPE22w2Uow15dcP1QkfJ6Bwb8Pdj1kasx1En6y', '2019-12-08 14:22:27', '2020-01-07 15:36:37'),
(451, 'José Antonio Salinas Torres', '10673370', '$2y$10$6Fw/didf7mwhBFtvDHf8mu2cQf35jnXFdyhRBK3zZckYOjmlwbn2m', 'JST', 1, 'J9OiLL4aUlC6DBJ0BVsU58we7HWqDHU213heCCZ2VOlbOWQESB7aVgwg7iar', '2019-12-08 14:23:02', '2020-01-06 15:36:58'),
(452, 'Solange del Pilar Hernández Martínez', '13060252', '$2y$10$w0M8ro7sgz.bU3Y8kLrabejIUF/Rc7FIz2JdPr2GI1lTDtxTMIJrO', 'SHM', 1, 'j1XTcu8FvgsdaHR1g77CgyqoEgjqk77bKAH30vfWhrVi4IR4DA0MzXBn3o1l', '2019-12-08 14:23:45', '2020-01-06 15:40:03'),
(453, 'Michel Rey Hernández', '23135517', '$2y$10$2bPRHIG.9PssAt8jbZ6JwuYxFAAt161lO/HafVk6XGUOaGU4m9V.G', 'MRH', 1, 'Hl9T8TKsNqh8nQOvEtjXs7HZDZYRhalgqA9c5HoZMOjiZp8TJq64fQadHV5D', '2019-12-08 14:24:28', '2020-01-06 16:06:06'),
(454, 'Liliana Vega Espinoza', '11591408', '$2y$10$wAi1kFlOBZl4K8CBe2bzne6FMa4pYycN3TEtsOwYaG6l/jxBWxGo2', 'LVE', 1, 'JZHLXvN6o0qoZxIRDbxjNtD74Ai8jchbF21juekdLTsx3l80XYkp3MQ46FpG', '2019-12-08 14:25:05', '2020-01-06 15:41:05'),
(455, 'Katherinne Kupferschmidt Silva', '15315920', '$2y$10$MXpXtAO/StNTFLTap8iJeO78JWOZan/ci86b7Km4t862Xba/1Vm3m', 'KKS', 1, NULL, '2019-12-08 14:25:42', '2019-12-08 14:25:42'),
(456, 'Eduardo Jara Urrutia', '12181887', '$2y$10$rUWZRtQ9AWr89aphzZx3jOTB5M7Lc.YrP4SzHd89idxnCAa.yOrNK', 'EJU', 1, '6VSM7L8DVAuhC0VaUxAzhz7c8qEMk5Joaq94B7waZT3T1bGCkQLHbeIuWynU', '2019-12-08 14:35:02', '2020-01-02 23:23:49'),
(457, 'Gabriel Zuñiga Olivares', '14382495-1', '$2y$10$mzBdM5uI3mf/5THDV7Zo1O4xyogbrioKq6opP5lir/sk9kZ3hHJS2', 'GZO', 1, 'n3cMZhDTQ7TQcCvMdRwetooxKFGLsSqEsql2h3bd77p2120nQjgZImiV6kTS', '2019-12-19 13:00:34', '2019-12-19 13:00:34'),
(458, 'Paulina Molina Lillo', '18033640', '$2y$10$Bz6YTLALeuZuE5TfTg7KZetOGAO6SgWVB5Eh1vcCX6muaPB5bh90m', 'PML', 1, '1cha08HRWkLdj6m2pPnRif4BLQR5PySyMdqkeWIHpJx9OtSwTTywvWaATKVq', '2020-01-06 13:42:07', '2020-01-06 13:49:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movimientos_documento_id_foreign` (`documento_id`),
  ADD KEY `movimientos_user_id_foreign` (`user_id`),
  ADD KEY `movimientos_id_index` (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_rol_unique` (`rol`),
  ADD KEY `roles_id_index` (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_index` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
