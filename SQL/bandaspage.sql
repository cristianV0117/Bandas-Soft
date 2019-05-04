-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2019 a las 19:02:23
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bandaspage`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bands`
--

CREATE TABLE `bands` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creado_el` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `imagen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bands`
--

INSERT INTO `bands` (`id`, `nombre`, `descripcion`, `creado_el`, `created_at`, `updated_at`, `pais_id`, `imagen_id`) VALUES
(4, 'denied perversity', 'denied', '2019-02-20 00:00:00', '2019-02-20 20:45:49', '2019-02-20 20:45:49', 44, NULL),
(5, 'abominable pudridity', 'abominable pudridity', '2019-02-14 00:00:00', '2019-02-21 21:38:37', '2019-02-21 21:38:37', 170, NULL),
(6, 'WOLFPACK', 'BANDA DE BEATDOWN', '2019-04-23 00:00:00', '2019-04-23 20:45:07', '2019-04-23 20:45:07', 44, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_genres`
--

CREATE TABLE `band_genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `bandas_id` int(10) UNSIGNED NOT NULL,
  `generos_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `band_genres`
--

INSERT INTO `band_genres` (`id`, `bandas_id`, `generos_id`, `created_at`, `updated_at`) VALUES
(8, 4, 1, '2019-02-20 20:45:49', '2019-02-20 20:45:49'),
(9, 4, 2, '2019-02-20 20:45:49', '2019-02-20 20:45:49'),
(10, 4, 3, '2019-02-20 20:45:49', '2019-02-20 20:45:49'),
(11, 5, 2, '2019-02-21 21:38:37', '2019-02-21 21:38:37'),
(12, 6, 2, '2019-04-23 20:45:07', '2019-04-23 20:45:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_record_companies`
--

CREATE TABLE `band_record_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `banda_id` int(10) UNSIGNED NOT NULL,
  `sello_discografico_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `band_record_companies`
--

INSERT INTO `band_record_companies` (`id`, `banda_id`, `sello_discografico_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-07-13 15:24:10', '2018-07-13 15:24:10'),
(2, 2, 1, '2018-07-13 17:01:04', '2018-07-13 17:01:04'),
(3, 2, 2, '2018-07-13 17:01:04', '2018-07-13 17:01:04'),
(4, 3, 1, '2018-07-16 16:27:57', '2018-07-16 16:27:57'),
(5, 4, 1, '2019-02-20 20:45:49', '2019-02-20 20:45:49'),
(6, 5, 3, '2019-02-21 21:38:37', '2019-02-21 21:38:37'),
(7, 6, 1, '2019-04-23 20:45:07', '2019-04-23 20:45:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 'Albania ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(3, 'Algeria ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(4, 'American Samoa ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(5, 'Andorra ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(6, 'Angola ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(7, 'Anguilla ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(8, 'Antigua & Barbuda ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(9, 'Argentina ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(10, 'Armenia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(11, 'Aruba ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(12, 'Australia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(13, 'Austria ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(14, 'Azerbaijan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(15, 'Bahamas, The ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(16, 'Bahrain ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(17, 'Bangladesh ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(18, 'Barbados ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(19, 'Belarus ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(20, 'Belgium ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(21, 'Belize ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(22, 'Benin ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(23, 'Bermuda ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(24, 'Bhutan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(25, 'Bolivia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(26, 'Bosnia & Herzegovina ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(27, 'Botswana ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(28, 'Brazil ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(29, 'British Virgin Is. ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(30, 'Brunei ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(31, 'Bulgaria ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(32, 'Burkina Faso ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(33, 'Burma ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(34, 'Burundi ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(35, 'Cambodia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(36, 'Cameroon ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(37, 'Canada ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(38, 'Cape Verde ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(39, 'Cayman Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(40, 'Central African Rep. ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(41, 'Chad ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(42, 'Chile ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(43, 'China ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(44, 'Colombia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(45, 'Comoros ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(46, 'Congo, Dem. Rep. ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(47, 'Congo, Repub. of the ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(48, 'Cook Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(49, 'Costa Rica ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(50, 'Cote dIvoire ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(51, 'Croatia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(52, 'Cuba ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(53, 'Cyprus ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(54, 'Czech Republic ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(55, 'Denmark ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(56, 'Djibouti ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(57, 'Dominica ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(58, 'Dominican Republic ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(59, 'East Timor ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(60, 'Ecuador ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(61, 'Egypt ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(62, 'El Salvador ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(63, 'Equatorial Guinea ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(64, 'Eritrea ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(65, 'Estonia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(66, 'Ethiopia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(67, 'Faroe Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(68, 'Fiji ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(69, 'Finland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(70, 'France ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(71, 'French Guiana ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(72, 'French Polynesia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(73, 'Gabon ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(74, 'Gambia, The ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(75, 'Gaza Strip ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(76, 'Georgia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(77, 'Germany ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(78, 'Ghana ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(79, 'Gibraltar ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(80, 'Greece ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(81, 'Greenland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(82, 'Grenada ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(83, 'Guadeloupe ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(84, 'Guam ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(85, 'Guatemala ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(86, 'Guernsey ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(87, 'Guinea ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(88, 'Guinea-Bissau ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(89, 'Guyana ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(90, 'Haiti ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(91, 'Honduras ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(92, 'Hong Kong ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(93, 'Hungary ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(94, 'Iceland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(95, 'India ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(96, 'Indonesia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(97, 'Iran ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(98, 'Iraq ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(99, 'Ireland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(100, 'Isle of Man ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(101, 'Israel ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(102, 'Italy ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(103, 'Jamaica ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(104, 'Japan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(105, 'Jersey ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(106, 'Jordan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(107, 'Kazakhstan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(108, 'Kenya ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(109, 'Kiribati ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(110, 'Korea, North ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(111, 'Korea, South ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(112, 'Kuwait ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(113, 'Kyrgyzstan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(114, 'Laos ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(115, 'Latvia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(116, 'Lebanon ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(117, 'Lesotho ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(118, 'Liberia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(119, 'Libya ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(120, 'Liechtenstein ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(121, 'Lithuania ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(122, 'Luxembourg ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(123, 'Macau ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(124, 'Macedonia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(125, 'Madagascar ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(126, 'Malawi ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(127, 'Malaysia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(128, 'Maldives ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(129, 'Mali ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(130, 'Malta ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(131, 'Marshall Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(132, 'Martinique ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(133, 'Mauritania ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(134, 'Mauritius ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(135, 'Mayotte ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(136, 'Mexico ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(137, 'Micronesia, Fed. St. ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(138, 'Moldova ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(139, 'Monaco ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(140, 'Mongolia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(141, 'Montserrat ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(142, 'Morocco ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(143, 'Mozambique ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(144, 'Namibia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(145, 'Nauru ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(146, 'Nepal ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(147, 'Netherlands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(148, 'Netherlands Antilles ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(149, 'New Caledonia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(150, 'New Zealand ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(151, 'Nicaragua ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(152, 'Niger ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(153, 'Nigeria ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(154, 'N. Mariana Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(155, 'Norway ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(156, 'Oman ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(157, 'Pakistan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(158, 'Palau ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(159, 'Panama ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(160, 'Papua New Guinea ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(161, 'Paraguay ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(162, 'Peru ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(163, 'Philippines ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(164, 'Poland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(165, 'Portugal ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(166, 'Puerto Rico ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(167, 'Qatar ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(168, 'Reunion ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(169, 'Romania ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(170, 'Russia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(171, 'Rwanda ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(172, 'Saint Helena ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(173, 'Saint Kitts & Nevis ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(174, 'Saint Lucia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(175, 'St Pierre & Miquelon ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(176, 'Saint Vincent and the Grenadines ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(177, 'Samoa ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(178, 'San Marino ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(179, 'Sao Tome & Principe ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(180, 'Saudi Arabia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(181, 'Senegal ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(182, 'Serbia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(183, 'Seychelles ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(184, 'Sierra Leone ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(185, 'Singapore ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(186, 'Slovakia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(187, 'Slovenia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(188, 'Solomon Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(189, 'Somalia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(190, 'South Africa ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(191, 'Spain ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(192, 'Sri Lanka ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(193, 'Sudan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(194, 'Suriname ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(195, 'Swaziland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(196, 'Sweden ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(197, 'Switzerland ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(198, 'Syria ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(199, 'Taiwan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(200, 'Tajikistan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(201, 'Tanzania ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(202, 'Thailand ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(203, 'Togo ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(204, 'Tonga ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(205, 'Trinidad & Tobago ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(206, 'Tunisia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(207, 'Turkey ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(208, 'Turkmenistan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(209, 'Turks & Caicos Is ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(210, 'Tuvalu ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(211, 'Uganda ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(212, 'Ukraine ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(213, 'United Arab Emirates ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(214, 'United Kingdom ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(215, 'United States ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(216, 'Uruguay ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(217, 'Uzbekistan ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(218, 'Vanuatu ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(219, 'Venezuela ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(220, 'Vietnam ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(221, 'Virgin Islands ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(222, 'Wallis and Futuna ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(223, 'West Bank ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(224, 'Western Sahara ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(225, 'Yemen ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(226, 'Zambia ', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(227, 'Zimbabwe ', '2018-06-12 22:19:59', '2018-06-12 22:19:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Death Metal', '2018-07-10 14:47:21', '2018-07-10 14:47:21'),
(2, 'Slamming Death Metal', '2018-07-10 14:50:11', '2018-07-10 14:50:11'),
(3, 'Brutal Death Metal', '2018-07-10 14:50:25', '2018-07-10 14:50:25'),
(4, 'troch', '2019-02-20 20:44:41', '2019-02-20 20:44:41'),
(5, 'troch', '2019-02-21 20:07:37', '2019-02-21 20:07:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instruments`
--

CREATE TABLE `instruments` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instruments`
--

INSERT INTO `instruments` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Voice', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 'Guitar', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(3, 'Bass', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(5, 'Drums', '2018-07-13 11:01:41', '2018-07-13 11:01:41'),
(6, 'holaaaaaa', '2019-02-20 20:47:04', '2019-02-20 20:47:04'),
(7, 'citofono', '2019-02-21 13:46:18', '2019-02-21 13:46:18'),
(8, 'las pelotas', '2019-04-23 21:32:27', '2019-04-23 21:32:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `line_ups`
--

CREATE TABLE `line_ups` (
  `id` int(10) UNSIGNED NOT NULL,
  `bandas_id` int(10) UNSIGNED NOT NULL,
  `musicos_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(69, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_resets_table', 1),
(71, '2018_06_07_221817_create_bands_table', 1),
(72, '2018_06_07_221843_create_band_genres_table', 1),
(73, '2018_06_07_221940_create_band_record_companies_table', 1),
(74, '2018_06_07_221956_create_countries_table', 1),
(75, '2018_06_07_222012_create_genres_table', 1),
(76, '2018_06_07_222026_create_images_table', 1),
(77, '2018_06_07_222040_create_instruments_table', 1),
(78, '2018_06_07_222102_create_musical_productions_table', 1),
(79, '2018_06_07_222119_create_musicians_table', 1),
(80, '2018_06_07_222146_create_musician__instruments_table', 1),
(81, '2018_06_07_222215_create_record_companies_table', 1),
(82, '2018_06_07_222243_create_singles_table', 1),
(83, '2018_06_07_222315_create_type_of_musical_productions_table', 1),
(84, '2018_06_07_223004_create_roles_table', 1),
(85, '2018_06_07_224241_create_role_user_table', 1),
(86, '2018_06_13_204748_create_line_ups_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musical_productions`
--

CREATE TABLE `musical_productions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicians`
--

CREATE TABLE `musicians` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musicians`
--

INSERT INTO `musicians` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'cristian', '2018-07-05 15:02:07', '2018-07-05 15:02:07'),
(2, 'alexander Claros Motato', '2018-07-05 15:44:19', '2018-07-05 15:44:19'),
(3, 'cristian', '2018-07-05 17:28:30', '2018-07-05 17:28:30'),
(4, 'alexander Claros Motato', '2018-07-05 17:29:54', '2018-07-05 17:29:54'),
(5, 'briam moreno rios', '2018-07-05 17:30:09', '2018-07-05 17:30:09'),
(6, 'alvaro', '2018-07-05 17:30:16', '2018-07-05 17:30:16'),
(7, 'cristian', '2018-07-05 19:00:14', '2018-07-05 19:00:14'),
(8, 'pablo', '2018-07-05 21:52:54', '2018-07-05 21:52:54'),
(9, 'x', '2018-07-05 21:54:05', '2018-07-05 21:54:05'),
(10, 'cristian', '2018-07-10 09:07:24', '2018-07-10 09:07:24'),
(11, 'cristian', '2018-07-13 11:34:51', '2018-07-13 11:34:51'),
(12, 'funciona', '2018-07-13 16:30:32', '2018-07-13 16:30:32'),
(13, 'cristian0177', '2019-02-20 20:45:09', '2019-02-20 20:45:09'),
(14, 'Santiago Hurtado', '2019-04-23 21:32:43', '2019-04-23 21:32:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musician__instruments`
--

CREATE TABLE `musician__instruments` (
  `id` int(10) UNSIGNED NOT NULL,
  `instrumentos_id` int(10) UNSIGNED NOT NULL,
  `musicos_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musician__instruments`
--

INSERT INTO `musician__instruments` (`id`, `instrumentos_id`, `musicos_id`, `created_at`, `updated_at`) VALUES
(2, 1, 11, '2018-07-13 11:34:51', '2018-07-13 11:34:51'),
(4, 1, 13, '2019-02-20 20:45:09', '2019-02-20 20:45:09'),
(5, 8, 14, '2019-04-23 21:32:43', '2019-04-23 21:32:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record_companies`
--

CREATE TABLE `record_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `record_companies`
--

INSERT INTO `record_companies` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Pathologically Explicit', 'sello de españa', '2018-07-12 10:09:18', '2018-07-12 10:09:18'),
(2, 'hemorrh', 'sello de prueba', '2018-07-12 10:09:33', '2018-07-12 10:09:33'),
(3, 'selllo', 'sello', '2019-02-20 20:43:23', '2019-02-20 20:43:23'),
(4, 'To give your application a speed boost, you should To give your application a speed boost, you should', 'To give your application a speed boost, you should', '2019-02-20 20:49:31', '2019-02-20 20:49:31'),
(5, 'selllo', 'rt', '2019-03-07 14:30:55', '2019-03-07 14:30:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 'user', 'User', '2018-06-12 22:19:59', '2018-06-12 22:19:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 1, 2, '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(3, 2, 5, '2018-07-05 21:48:43', '2018-07-05 21:48:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `singles`
--

CREATE TABLE `singles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_musical_productions`
--

CREATE TABLE `type_of_musical_productions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_of_musical_productions`
--

INSERT INTO `type_of_musical_productions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Album', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 'EP', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(3, 'Single', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(4, 'OficialVideo', '2018-06-12 22:19:59', '2018-06-12 22:19:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@example.com', '$2y$10$PX/jaBN2YhG8SZIOLWpR2.R5Bj5U.qD6.sASmdk.EZtiWItzG1d5q', NULL, '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(2, 'Admin', 'cvasquez@ciudaddemascotas.com', '$2y$10$pblG/96BBRDLwEeQGRX6Z.c/K75Gf4IoTRc27Sd94qAZKRBgZeklG', 'CisFgMVNKrgYYbf09Qni4lf5PYlWc9zFOl6vpRxwZue7ank9TmpaRKbj2hhS', '2018-06-12 22:19:59', '2018-06-12 22:19:59'),
(3, 'pablo', 'pmelo@ciudaddemascotas.com', '$2y$10$PIPDp0erFb0ktwfwXOp.EuGT6biUuMxybXWBWaPQRGDg9xKlPMphK', NULL, '2018-07-05 21:44:33', '2018-07-05 21:44:33'),
(4, 'hola', 'hola@gmail.com', '$2y$10$tKzLUk3dLOY7AOu5TwRwu.FkNG5En2cMLtQWhsWHZwHvOsgvgS6gS', NULL, '2018-07-05 21:46:24', '2018-07-05 21:46:24'),
(5, 'pablo', 'pablox2000andres@gmail.com', '$2y$10$DxDaE0F3HshQJYlhb0P8aOt0LEDvVVmwNq/6zeXXbbcALVCdRqNzu', NULL, '2018-07-05 21:48:43', '2018-07-05 21:48:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bands`
--
ALTER TABLE `bands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `band_genres`
--
ALTER TABLE `band_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `band_record_companies`
--
ALTER TABLE `band_record_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `line_ups`
--
ALTER TABLE `line_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `musical_productions`
--
ALTER TABLE `musical_productions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `musicians`
--
ALTER TABLE `musicians`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `musician__instruments`
--
ALTER TABLE `musician__instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `record_companies`
--
ALTER TABLE `record_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `singles`
--
ALTER TABLE `singles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_of_musical_productions`
--
ALTER TABLE `type_of_musical_productions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bands`
--
ALTER TABLE `bands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `band_genres`
--
ALTER TABLE `band_genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `band_record_companies`
--
ALTER TABLE `band_record_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `line_ups`
--
ALTER TABLE `line_ups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `musical_productions`
--
ALTER TABLE `musical_productions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `musicians`
--
ALTER TABLE `musicians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `musician__instruments`
--
ALTER TABLE `musician__instruments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `record_companies`
--
ALTER TABLE `record_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `singles`
--
ALTER TABLE `singles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_of_musical_productions`
--
ALTER TABLE `type_of_musical_productions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
