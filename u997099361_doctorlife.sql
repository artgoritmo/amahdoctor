-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-10-2022 a las 22:43:56
-- Versión del servidor: 10.5.12-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u997099361_doctorlife`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time_start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_end` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `date`, `time_start`, `time_end`, `visited`, `reason`, `created_at`, `updated_at`) VALUES
(1, 2, '2022-10-18', '09:30', '10:00', '1', 'Ok', '2022-10-17 15:05:20', '2022-10-17 20:00:51'),
(2, 3, '2022-10-18', '08:00', '08:30', '1', 'dra. belen', '2022-10-17 19:59:07', '2022-10-17 20:00:44'),
(3, 3, '2022-10-18', '08:30', '09:00', '1', 'dra. julio', '2022-10-17 20:00:23', '2022-10-17 20:00:40'),
(4, 3, '2022-10-17', '08:00', '08:30', '0', NULL, '2022-10-17 20:11:43', '2022-10-17 20:11:43'),
(5, 3, '2022-10-17', '08:00', '08:30', '2', NULL, '2022-10-17 20:11:43', '2022-10-20 15:18:26'),
(6, 3, '2022-11-07', '08:00', '08:30', '1', NULL, '2022-10-17 21:51:05', '2022-10-20 15:15:56'),
(7, 3, '2022-10-18', '10:30', '11:00', '1', NULL, '2022-10-18 15:21:06', '2022-10-20 15:15:52'),
(9, 4, '2022-10-21', '08:30', '09:00', '1', NULL, '2022-10-20 15:17:33', '2022-10-20 15:17:57'),
(10, 2, '2022-10-24', '14:30', '15:00', '1', NULL, '2022-10-24 11:54:52', '2022-10-24 21:57:51'),
(11, 2, '2022-10-25', '11:30', '12:00', '0', NULL, '2022-10-24 14:29:22', '2022-10-24 14:29:22'),
(12, 3, '2022-10-27', '08:00', '08:30', '1', NULL, '2022-10-24 15:38:52', '2022-10-24 20:14:47'),
(13, 2, '2022-10-25', '13:00', '13:30', '0', NULL, '2022-10-24 21:57:31', '2022-10-24 21:57:31'),
(14, 4, '2022-10-25', '14:30', '15:00', '1', NULL, '2022-10-24 22:01:02', '2022-10-24 22:05:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `due_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposited_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_without_tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_with_tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `billings`
--

INSERT INTO `billings` (`id`, `user_id`, `payment_mode`, `payment_status`, `reference`, `created_at`, `updated_at`, `due_amount`, `deposited_amount`, `vat`, `total_without_tax`, `total_with_tax`) VALUES
(1, 2, 'Cash', 'Partially Paid', 'b42281', '2022-10-17 16:25:23', '2022-10-17 16:25:23', '-10000000', '10000000', '19', '0', '0'),
(2, 2, 'Cheque', 'Paid', 'b61406', '2022-10-17 16:25:54', '2022-10-17 16:25:54', '0', '0', '19', '0', '0'),
(3, 2, 'Cash', 'Paid', 'b59876', '2022-10-17 16:26:12', '2022-10-17 16:26:12', '0', '595', '19', '500', '595'),
(4, 2, 'Cash', 'Paid', 'b46580', '2022-10-18 01:22:27', '2022-10-18 01:22:27', '0', '0', '19', '0', '0'),
(5, 3, 'Cash', 'Paid', 'b64306', '2022-10-18 01:22:46', '2022-10-18 01:22:46', '0', '0', '19', '0', '0'),
(6, 2, 'Cash', 'Paid', 'b72604', '2022-10-18 16:32:13', '2022-10-18 16:32:13', '0', '0', '19', '0', '0'),
(7, 3, 'Cash', 'Paid', 'b69977', '2022-10-20 15:17:05', '2022-10-20 15:17:05', '0', '0', '19', '0', '0'),
(8, 2, 'Cash', 'Paid', 'b38575', '2022-10-24 21:58:26', '2022-10-24 21:58:26', '0', '0', '19', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billing_items`
--

CREATE TABLE `billing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billing_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `billing_items`
--

INSERT INTO `billing_items` (`id`, `billing_id`, `invoice_title`, `invoice_amount`, `created_at`, `updated_at`) VALUES
(1, 3, 'elver galarga', '500', '2022-10-17 16:26:12', '2022-10-17 16:26:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `speciality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `drugs`
--

CREATE TABLE `drugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trade_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `drugs`
--

INSERT INTO `drugs` (`id`, `trade_name`, `generic_name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tylex', 'paracetamol', 'SIN NOTA', '2022-10-17 16:28:43', '2022-10-17 16:28:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `historys`
--

CREATE TABLE `historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historys`
--

INSERT INTO `historys` (`id`, `user_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 'Hola', 'Jajsjdnf fbdjdjskfmfn', '2022-10-17 14:45:55', '2022-10-17 14:45:55'),
(2, 3, 'ITA', 'Ingreso por dolor en la garganta y se le aplicó obuprofeno y desketoprofeno', '2022-10-24 13:05:17', '2022-10-24 13:05:17'),
(3, 3, 'CITA 2', 'Se aplica relleno en la pieza a8', '2022-10-24 13:05:52', '2022-10-24 13:05:52'),
(4, 3, '2', 'A s dos dedos d dke', '2022-10-24 13:16:51', '2022-10-24 13:16:51'),
(5, 3, '3', 'Ss  ssks sisns', '2022-10-24 13:16:58', '2022-10-24 13:16:58'),
(6, 3, '4', 'Jddnbbdjdjbd ddiidd', '2022-10-24 13:17:06', '2022-10-24 13:17:06'),
(7, 3, '6', 'Sus dd d d  d d dd\r\nD\r\nDd\r\n\r\nD\r\nD\r\nD d d d d d d  dd\r\n\r\nD\r\nD\r\nD\r\nD', '2022-10-24 13:17:19', '2022-10-24 13:17:19'),
(8, 4, 'Ojos', 'Malos ojos', '2022-10-24 22:06:14', '2022-10-24 22:06:14');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_10_000506_create_drugs_table', 1),
(5, '2020_09_10_103451_create_prescriptions_table', 1),
(6, '2020_09_10_154523_create_prescription_drugs_table', 1),
(7, '2020_09_14_174033_create_patients_table', 1),
(8, '2020_09_16_095938_create_settings_table', 1),
(9, '2020_09_16_230135_create_tests_table', 1),
(10, '2020_09_16_230830_create_prescription_tests_table', 1),
(11, '2020_09_18_010549_create_appointments_table', 1),
(12, '2020_09_18_180127_create_doctors_table', 1),
(13, '2020_09_19_164615_create_billings_table', 1),
(14, '2020_09_19_180540_create_billing_items_table', 1),
(15, '2020_09_29_185732_create_documents_table', 1),
(16, '2021_11_22_232428_add_balance_to_billings_table', 1),
(17, '2021_11_23_132554_create_historys_table', 1),
(18, '2022_05_27_000537_add_reason_to_appointments_table', 1),
(19, '2022_06_12_123945_create_permission_tables', 1),
(20, '2022_06_13_132658_add_image_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

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
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `patients`
--

INSERT INTO `patients` (`id`, `user_id`, `birthday`, `phone`, `gender`, `blood`, `adress`, `weight`, `height`, `created_at`, `updated_at`) VALUES
(1, 2, '2018-09-05', '35467887', 'Male', 'A-', 'Hiji', '15', '1.80', '2022-10-17 13:43:00', '2022-10-17 13:43:00'),
(2, 3, '1988-11-08', '65610104', 'Male', 'O+', 'castellano', '85', '1.80', '2022-10-17 19:43:34', '2022-10-17 19:44:09'),
(3, 4, '1983-03-03', '226699', 'Male', 'A+', NULL, '186', '175', '2022-10-20 12:44:10', '2022-10-20 12:44:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add patient', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(2, 'view patient', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(3, 'edit patient', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(4, 'view all patients', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(5, 'delete patient', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(6, 'create health history', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(7, 'delete health history', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(8, 'add medical files', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(9, 'delete medical files', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(10, 'create appointment', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(11, 'view all appointments', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(12, 'delete appointment', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(13, 'edit appointment', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(14, 'create prescription', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(15, 'view prescription', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(16, 'view all prescriptions', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(17, 'edit prescription', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(18, 'delete prescription', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(19, 'print prescription', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(20, 'create drug', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(21, 'edit drug', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(22, 'view drug', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(23, 'delete drug', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(24, 'view all drugs', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(25, 'create diagnostic test', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(26, 'edit diagnostic test', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(27, 'view all diagnostic tests', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(28, 'delete diagnostic test', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(29, 'create invoice', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(30, 'edit invoice', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(31, 'view invoice', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(32, 'view all invoices', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(33, 'delete invoice', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(34, 'print invoice', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(35, 'manage settings', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(36, 'manage roles', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advices` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `user_id`, `reference`, `advices`, `created_at`, `updated_at`) VALUES
(1, 2, 'p79598', NULL, '2022-10-17 16:22:46', '2022-10-17 16:22:46'),
(2, 2, 'p30932', NULL, '2022-10-17 16:24:51', '2022-10-17 16:24:51'),
(3, 2, 'p78036', NULL, '2022-10-17 16:29:28', '2022-10-17 16:29:28'),
(4, 2, 'p49455', NULL, '2022-10-17 21:51:41', '2022-10-17 21:51:41'),
(5, 3, 'p10318', NULL, '2022-10-18 02:54:27', '2022-10-18 02:54:27'),
(6, 3, 'p13411', NULL, '2022-10-18 02:54:28', '2022-10-18 02:54:28'),
(7, 2, 'p79283', NULL, '2022-10-19 03:07:47', '2022-10-19 03:07:47'),
(8, 2, 'p65117', NULL, '2022-10-19 03:07:48', '2022-10-19 03:07:48'),
(9, 4, 'p61737', NULL, '2022-10-20 12:45:13', '2022-10-20 12:45:13'),
(10, 2, 'p24256', NULL, '2022-10-20 13:09:55', '2022-10-20 13:09:55'),
(11, 3, 'p90028', NULL, '2022-10-20 15:16:12', '2022-10-20 15:16:12'),
(12, 2, 'p58208', NULL, '2022-10-24 11:54:17', '2022-10-24 11:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescription_drugs`
--

CREATE TABLE `prescription_drugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `drug_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_advice` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prescription_drugs`
--

INSERT INTO `prescription_drugs` (`id`, `prescription_id`, `drug_id`, `type`, `strength`, `dose`, `duration`, `drug_advice`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 'asd', NULL, NULL, NULL, NULL, '2022-10-20 12:45:13', '2022-10-20 12:45:13'),
(2, 11, 1, NULL, NULL, NULL, NULL, NULL, '2022-10-20 15:16:45', '2022-10-20 15:16:45'),
(3, 11, 1, NULL, NULL, NULL, NULL, NULL, '2022-10-20 15:16:45', '2022-10-20 15:16:45'),
(4, 12, 1, NULL, NULL, NULL, NULL, NULL, '2022-10-24 11:54:17', '2022-10-24 11:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescription_tests`
--

CREATE TABLE `prescription_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `test_id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prescription_tests`
--

INSERT INTO `prescription_tests` (`id`, `prescription_id`, `test_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 's', '2022-10-20 12:45:13', '2022-10-20 12:45:13'),
(2, 11, 1, NULL, '2022-10-20 15:16:45', '2022-10-20 15:16:45'),
(3, 12, 1, NULL, '2022-10-24 11:54:17', '2022-10-24 11:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(2, 'Receptionist', 'web', '2022-10-17 00:59:13', '2022-10-17 00:59:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'NACIONAL CODE', NULL, '2022-10-17 04:01:04'),
(2, 'address', '150 Logts : Bloc 16 N° 02 OUED TARFA - Draria', NULL, NULL),
(3, 'phone', '+57 3504931577', NULL, '2022-10-17 01:03:53'),
(4, 'hospital_email', 'admin@nacionalcode.com', NULL, '2022-10-17 01:03:53'),
(5, 'currency', '$', NULL, NULL),
(6, 'vat', '19', NULL, NULL),
(7, 'language', 'es', NULL, '2022-10-17 01:03:53'),
(8, 'appointment_interval', '30', NULL, NULL),
(9, 'saturday_from', NULL, NULL, NULL),
(10, 'saturday_to', NULL, NULL, NULL),
(11, 'sunday_from', NULL, NULL, NULL),
(12, 'sunday_to', NULL, NULL, NULL),
(13, 'monday_from', '08:00', NULL, NULL),
(14, 'monday_to', '17:00', NULL, NULL),
(15, 'tuesday_from', '08:00', NULL, NULL),
(16, 'tuesday_to', '17:00', NULL, NULL),
(17, 'wednesday_from', '08:00', NULL, NULL),
(18, 'wednesday_to', '17:00', NULL, NULL),
(19, 'thursday_from', '08:00', NULL, NULL),
(20, 'thursday_to', '17:00', NULL, NULL),
(21, 'friday_from', '08:00', NULL, NULL),
(22, 'friday_to', '17:00', NULL, NULL),
(23, 'title', 'Nacional Code', '2022-10-17 01:03:53', '2022-10-17 01:03:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tests`
--

INSERT INTO `tests` (`id`, `test_name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'ozonopocoyoterapia', 'el paciente se ozonopocoyotea', '2022-10-17 16:28:05', '2022-10-17 16:28:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'patient',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Doctorino', 'admin@nacionalcode.com', NULL, '$2y$10$nuwKPhwSmQ31xvrgx26HZuhT/PuRadtdYiDIa5W5jYgXTDreiBpKa', 'admin', NULL, 'ix1IhtdoCPhS7NQD9yufvfDroKwXUtUwQMdTxYN5Og5iwlMtzHAPm1uf9leJ', '2022-10-17 00:59:13', '2022-10-17 00:59:13'),
(2, 'Luc', 'sky@gmail.com', NULL, '$2y$10$TeOmDTC9JFlj3k3kJKy2JObr4y4RFDbXkxFTdpiOJp82DuLnICmU2', 'patient', 'bTvLtzdxsju9TCQ-16660141391131998112373733202503.jpg', NULL, '2022-10-17 13:43:00', '2022-10-17 13:43:00'),
(3, 'DANIEL', 'dco@gmail.com', NULL, '$2y$10$YOdQ5HC93R246/EChM8j1u2/LD2EaIbrvJ.7MOtuHDw0UCDKa/3F2', 'patient', '', NULL, '2022-10-17 19:43:34', '2022-10-17 19:43:34'),
(4, 'Javier Enriquez', 'javiermarcelo6225@gmail.com', NULL, '$2y$10$CFgwkKgw8CsGXBtPTvzX.e1VKz8/tB656JQuWPnf13dDue/mrnUZu', 'patient', '', NULL, '2022-10-20 12:44:10', '2022-10-20 12:44:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billings_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `billing_items`
--
ALTER TABLE `billing_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_items_billing_id_foreign` (`billing_id`);

--
-- Indices de la tabla `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historys`
--
ALTER TABLE `historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historys_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `prescription_drugs`
--
ALTER TABLE `prescription_drugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_drugs_prescription_id_foreign` (`prescription_id`),
  ADD KEY `prescription_drugs_drug_id_foreign` (`drug_id`);

--
-- Indices de la tabla `prescription_tests`
--
ALTER TABLE `prescription_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_tests_prescription_id_foreign` (`prescription_id`),
  ADD KEY `prescription_tests_test_id_foreign` (`test_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tests`
--
ALTER TABLE `tests`
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
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `billing_items`
--
ALTER TABLE `billing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historys`
--
ALTER TABLE `historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `prescription_drugs`
--
ALTER TABLE `prescription_drugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prescription_tests`
--
ALTER TABLE `prescription_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `billings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `billing_items`
--
ALTER TABLE `billing_items`
  ADD CONSTRAINT `billing_items_billing_id_foreign` FOREIGN KEY (`billing_id`) REFERENCES `billings` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `historys`
--
ALTER TABLE `historys`
  ADD CONSTRAINT `historys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prescription_drugs`
--
ALTER TABLE `prescription_drugs`
  ADD CONSTRAINT `prescription_drugs_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_drugs_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prescription_tests`
--
ALTER TABLE `prescription_tests`
  ADD CONSTRAINT `prescription_tests_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_tests_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
