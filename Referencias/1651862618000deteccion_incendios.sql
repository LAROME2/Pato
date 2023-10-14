-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2022 a las 01:20:40
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deteccion_incendios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediciones`
--

CREATE TABLE `mediciones` (
  `sensor_ID` varchar(20) DEFAULT NULL,
  `sensor_TipoDato` varchar(15) NOT NULL,
  `sensor_Dato` float NOT NULL,
  `sensor_fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `sensor_noM` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mediciones`
--

INSERT INTO `mediciones` (`sensor_ID`, `sensor_TipoDato`, `sensor_Dato`, `sensor_fecha`, `sensor_noM`) VALUES
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:12', 1),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:32', 2),
('GNodeP', 'ppm de CO', 296.45, '2022-05-04 21:14:32', 3),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:33', 4),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:14:33', 5),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:14:34', 6),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:36', 7),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:38', 8),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:14:40', 9),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:14:40', 10),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:40', 11),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:43', 12),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:45', 13),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:14:46', 14),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:14:47', 15),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:48', 16),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:49', 17),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:14:53', 18),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:53', 19),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:14:53', 20),
('GNodeP', 'ppm de CO', 116.03, '2022-05-04 21:14:54', 21),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:14:58', 22),
('HNodeP', 'Porcentaje de h', 64, '2022-05-04 21:14:58', 23),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:14:59', 24),
('GNodeP', 'ppm de CO', 68.6, '2022-05-04 21:15:00', 25),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:15:02', 26),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:15:03', 27),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:15:48', 28),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:15:49', 29),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:15:49', 30),
('GNodeP', 'ppm de CO', 116.03, '2022-05-04 21:15:50', 31),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:15:51', 32),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:15:53', 33),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:15:54', 34),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:15:56', 35),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:15:57', 36),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:15:58', 37),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:15:58', 38),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:02', 39),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:02', 40),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:03', 41),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:16:04', 42),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:07', 43),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:08', 44),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:08', 45),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:16:11', 46),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:16:11', 47),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:16:11', 48),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:11', 49),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:16:11', 50),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:11', 51),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:11', 52),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:16:12', 53),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:12', 54),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:16:12', 55),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:13', 56),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:14', 57),
('FNodeL', 'Detección_Flama', 977, '2022-05-04 21:16:14', 58),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:15', 59),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:15', 60),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:16:18', 61),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:18', 62),
('FNodeL', 'Detección_Flama', 81, '2022-05-04 21:16:19', 63),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:20', 64),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:16:20', 65),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:21', 66),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:23', 67),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:24', 68),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:16:24', 69),
('GNodeP', 'ppm de CO', 78.89, '2022-05-04 21:16:25', 70),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:26', 71),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:27', 72),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:28', 73),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:28', 74),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:16:29', 75),
('GNodeP', 'ppm de CO', 59.27, '2022-05-04 21:16:32', 76),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:33', 77),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:33', 78),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:33', 79),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:34', 80),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:16:34', 81),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:37', 82),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:38', 83),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:16:39', 84),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:16:39', 85),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:16:39', 86),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:40', 87),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:41', 88),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:43', 89),
('FNodeL', 'Detección_Flama', 87, '2022-05-04 21:16:44', 90),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:16:45', 91),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:45', 92),
('GNodeP', 'ppm de CO', 223.33, '2022-05-04 21:16:46', 93),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:46', 94),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:48', 95),
('FNodeL', 'Detección_Flama', 82, '2022-05-04 21:16:49', 96),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:50', 97),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:16:53', 98),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:16:53', 99),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:16:54', 100),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:54', 101),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:54', 102),
('FNodeL', 'Detección_Flama', 74, '2022-05-04 21:16:54', 103),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:16:58', 104),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:16:58', 105),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:16:58', 106),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:16:59', 107),
('FNodeL', 'Detección_Flama', 72, '2022-05-04 21:16:59', 108),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:17:00', 109),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:03', 110),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:04', 111),
('FNodeL', 'Detección_Flama', 79, '2022-05-04 21:17:05', 112),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:05', 113),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:06', 114),
('GNodeP', 'ppm de CO', 246.13, '2022-05-04 21:17:07', 115),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:08', 116),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:08', 117),
('FNodeL', 'Detección_Flama', 70, '2022-05-04 21:17:09', 118),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:11', 119),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:11', 120),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:11', 121),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:13', 122),
('GNodeP', 'ppm de CO', 59.27, '2022-05-04 21:17:14', 123),
('FNodeL', 'Detección_Flama', 77, '2022-05-04 21:17:14', 124),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:16', 125),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:17', 126),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:18', 127),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:18', 128),
('FNodeL', 'Detección_Flama', 81, '2022-05-04 21:17:19', 129),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:20', 130),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:17:21', 131),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:23', 132),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:24', 133),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:24', 134),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:17:25', 135),
('FNodeL', 'Detección_Flama', 76, '2022-05-04 21:17:25', 136),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:17:28', 137),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:28', 138),
('HNodeP', 'Porcentaje de h', 64, '2022-05-04 21:17:28', 139),
('FNodeL', 'Detección_Flama', 322, '2022-05-04 21:17:29', 140),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:29', 141),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:30', 142),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:33', 143),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:33', 144),
('FNodeL', 'Detección_Flama', 269, '2022-05-04 21:17:34', 145),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:17:35', 146),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:36', 147),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:36', 148),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:37', 149),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:38', 150),
('FNodeL', 'Detección_Flama', 81, '2022-05-04 21:17:39', 151),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:42', 152),
('GNodeP', 'ppm de CO', 384.6, '2022-05-04 21:17:42', 153),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:42', 154),
('TNodeP', 'Temperatura en ', 30.8, '2022-05-04 21:17:43', 155),
('Ll-nodeF', 'lluvia', 0, '2022-05-04 21:17:43', 156),
('FNodeL', 'Detección_Flama', 86, '2022-05-04 21:17:44', 157),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:46', 158),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:17:48', 159),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:48', 160),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:17:49', 161),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:17:49', 162),
('FNodeL', 'Detección_Flama', 91, '2022-05-04 21:17:49', 163),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:50', 164),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:17:53', 165),
('FNodeL', 'Detección_Flama', 94, '2022-05-04 21:17:54', 166),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:54', 167),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:17:55', 168),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:17:55', 169),
('GNodeP', 'ppm de CO', 59.27, '2022-05-04 21:17:56', 170),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:17:58', 171),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:17:58', 172),
('FNodeL', 'Detección_Flama', 285, '2022-05-04 21:17:59', 173),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:18:01', 174),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:02', 175),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:18:03', 176),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:18:04', 177),
('GNodeP', 'ppm de CO', 223.33, '2022-05-04 21:18:04', 178),
('FNodeL', 'Detección_Flama', 290, '2022-05-04 21:18:04', 179),
('FNodeL', 'Detección_Flama', 1, '2022-05-04 21:18:07', 180),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:08', 181),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:08', 182),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:18:08', 183),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:09', 184),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:18:10', 185),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:12', 186),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:14', 187),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:14', 188),
('FNodeL', 'Detección_Flama', 977, '2022-05-04 21:18:14', 189),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:14', 190),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:16', 191),
('GNodeP', 'ppm de CO', 59.27, '2022-05-04 21:18:17', 192),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:18', 193),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:19', 194),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:20', 195),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:21', 196),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:21', 197),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:24', 198),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:24', 199),
('GNodeP', 'ppm de CO', 223.33, '2022-05-04 21:18:24', 200),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:25', 201),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:26', 202),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:27', 203),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:28', 204),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:29', 205),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:31', 206),
('GNodeP', 'ppm de CO', 50.85, '2022-05-04 21:18:31', 207),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:33', 208),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:33', 209),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:18:33', 210),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:18:34', 211),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:34', 212),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:38', 213),
('GNodeP', 'ppm de CO', 223.33, '2022-05-04 21:18:38', 214),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:39', 215),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:39', 216),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:39', 217),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:39', 218),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:18:42', 219),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:18:44', 220),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:44', 221),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:45', 222),
('GNodeP', 'ppm de CO', 202.03, '2022-05-04 21:18:45', 223),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:46', 224),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:46', 225),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:18:49', 226),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:49', 227),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:51', 228),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:51', 229),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:52', 230),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:18:52', 231),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:18:53', 232),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:54', 233),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:55', 234),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:18:58', 235),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:18:58', 236),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:18:58', 237),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:18:59', 238),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:18:59', 239),
('GNodeP', 'ppm de CO', 90.19, '2022-05-04 21:18:59', 240),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:04', 241),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:04', 242),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:05', 243),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:05', 244),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:05', 245),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:19:06', 246),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:08', 247),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:19:08', 248),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:09', 249),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:10', 250),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:11', 251),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:19:12', 252),
('GNodeP', 'ppm de CO', 30.54, '2022-05-04 21:19:13', 253),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:19:14', 254),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:14', 255),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:17', 256),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:19:17', 257),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:17', 258),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:19:18', 259),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:19', 260),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:19:20', 261),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:19:21', 262),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:23', 263),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:23', 264),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:24', 265),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:24', 266),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:25', 267),
('GNodeP', 'ppm de CO', 246.13, '2022-05-04 21:19:28', 268),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:28', 269),
('FNodeL', 'Detección_Flama', 972, '2022-05-04 21:19:29', 270),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:29', 271),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:29', 272),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:30', 273),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:34', 274),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:34', 275),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:34', 276),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:19:34', 277),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:36', 278),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:36', 279),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:38', 280),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:38', 281),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:19:39', 282),
('GNodeP', 'ppm de CO', 324.09, '2022-05-04 21:19:41', 283),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:42', 284),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:42', 285),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:43', 286),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:43', 287),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:19:44', 288),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:47', 289),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:48', 290),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:19:48', 291),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:49', 292),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:49', 293),
('FNodeL', 'Detección_Flama', 977, '2022-05-04 21:19:49', 294),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:51', 295),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:19:53', 296),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:54', 297),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:19:55', 298),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:19:55', 299),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:19:55', 300),
('GNodeP', 'ppm de CO', 68.6, '2022-05-04 21:19:55', 301),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:19:58', 302),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:19:59', 303),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:20:00', 304),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:01', 305),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:01', 306),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:20:03', 307),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:20:04', 308),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:20:04', 309),
('FNodeL', 'Detección_Flama', 972, '2022-05-04 21:20:04', 310),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:07', 311),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:08', 312),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:20:08', 313),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:20:08', 314),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:09', 315),
('GNodeP', 'ppm de CO', 68.6, '2022-05-04 21:20:09', 316),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:12', 317),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:20:13', 318),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:14', 319),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:14', 320),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:14', 321),
('GNodeP', 'ppm de CO', 146.54, '2022-05-04 21:20:16', 322),
('HNodeP', 'Porcentaje de h', 68, '2022-05-04 21:20:17', 323),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:18', 324),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:19', 325),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:20', 326),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:20', 327),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:21', 328),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:20:23', 329),
('GNodeP', 'ppm de CO', 296.45, '2022-05-04 21:20:24', 330),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:20:24', 331),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:25', 332),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:26', 333),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:27', 334),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:20:28', 335),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:29', 336),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:30', 337),
('GNodeP', 'ppm de CO', 68.6, '2022-05-04 21:20:30', 338),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:32', 339),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:33', 340),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:33', 341),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:34', 342),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:20:34', 343),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:20:38', 344),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:20:38', 345),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:39', 346),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:39', 347),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:39', 348),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:39', 349),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:43', 350),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:20:43', 351),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:44', 352),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:20:44', 353),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:45', 354),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:46', 355),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:47', 356),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:48', 357),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:49', 358),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:51', 359),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:51', 360),
('GNodeP', 'ppm de CO', 353.45, '2022-05-04 21:20:51', 361),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:52', 362),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:53', 363),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:54', 364),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:20:56', 365),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:20:58', 366),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:20:58', 367),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:20:58', 368),
('GNodeP', 'ppm de CO', 246.13, '2022-05-04 21:20:59', 369),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:20:59', 370),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:00', 371),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:04', 372),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:04', 373),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:04', 374),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:05', 375),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:05', 376),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:21:05', 377),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:09', 378),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:09', 379),
('FNodeL', 'Detección_Flama', 977, '2022-05-04 21:21:09', 380),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:10', 381),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:11', 382),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:21:13', 383),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:13', 384),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:14', 385),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:14', 386),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:17', 387),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:17', 388),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:17', 389),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:19', 390),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:19', 391),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:21:20', 392),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:21', 393),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:23', 394),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:23', 395),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:24', 396),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:21:24', 397),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:26', 398),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:21:27', 399),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:29', 400),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:29', 401),
('FNodeL', 'Detección_Flama', 972, '2022-05-04 21:21:29', 402),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:30', 403),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:30', 404),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:21:34', 405),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:34', 406),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:34', 407),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:35', 408),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:35', 409),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:36', 410),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:39', 411),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:39', 412),
('FNodeL', 'Detección_Flama', 972, '2022-05-04 21:21:39', 413),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:21:41', 414),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:42', 415),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:42', 416),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:43', 417),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:44', 418),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:45', 419),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:47', 420),
('GNodeP', 'ppm de CO', 296.45, '2022-05-04 21:21:48', 421),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:48', 422),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:49', 423),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:21:49', 424),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:50', 425),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:51', 426),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:54', 427),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:54', 428),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:21:55', 429),
('GNodeP', 'ppm de CO', 202.03, '2022-05-04 21:21:55', 430),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:21:55', 431),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:21:56', 432),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:21:59', 433),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:21:59', 434),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:00', 435),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:01', 436),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:01', 437),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:22:02', 438),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:22:04', 439),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:05', 440),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:05', 441),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:07', 442),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:08', 443),
('GNodeP', 'ppm de CO', 202.03, '2022-05-04 21:22:09', 444),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:09', 445),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:10', 446),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:22:10', 447),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:13', 448),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:13', 449),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:14', 450),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:14', 451),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:22:14', 452),
('GNodeP', 'ppm de CO', 68.6, '2022-05-04 21:22:16', 453),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:17', 454),
('FNodeL', 'Detección_Flama', 973, '2022-05-04 21:22:19', 455),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:19', 456),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:20', 457),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:20', 458),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:23', 459),
('GNodeP', 'ppm de CO', 130.68, '2022-05-04 21:22:23', 460),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:24', 461),
('FNodeL', 'Detección_Flama', 974, '2022-05-04 21:22:24', 462),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:26', 463),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:27', 464),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:27', 465),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:22:29', 466),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:29', 467),
('GNodeP', 'ppm de CO', 246.13, '2022-05-04 21:22:31', 468),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:31', 469),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:32', 470),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:34', 471),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:34', 472),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:22:34', 473),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:35', 474),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:22:38', 475),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:39', 476),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:39', 477),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:39', 478),
('FNodeL', 'Detección_Flama', 975, '2022-05-04 21:22:39', 479),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:40', 480),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:44', 481),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:22:44', 482),
('FNodeL', 'Detección_Flama', 970, '2022-05-04 21:22:44', 483),
('GNodeP', 'ppm de CO', 919.72, '2022-05-04 21:22:45', 484),
('FNodeL', 'Detección_Flama', 0, '2022-05-04 21:22:45', 485),
('Ll-nodeF', 'lluvia', 1, '2022-05-04 21:22:45', 486),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:48', 487),
('TNodeP', 'Temperatura en ', 31.1, '2022-05-04 21:22:49', 488),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:22:52', 489),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:53', 490),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:54', 491),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:22:57', 492),
('GNodeP', 'ppm de CO', 116.03, '2022-05-04 21:22:59', 493),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:22:59', 494),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:01', 495),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:23:04', 496),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:23:06', 497),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:06', 498),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:23:09', 499),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:10', 500),
('GNodeP', 'ppm de CO', 163.69, '2022-05-04 21:23:13', 501),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:14', 502),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:23:15', 503),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:18', 504),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:23:19', 505),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:23:20', 506),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:23', 507),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:23:25', 508),
('GNodeP', 'ppm de CO', 163.69, '2022-05-04 21:23:27', 509),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:27', 510),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:23:30', 511),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:31', 512),
('GNodeP', 'ppm de CO', 116.03, '2022-05-04 21:23:34', 513),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:23:35', 514),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:36', 515),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:23:40', 516),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:40', 517),
('GNodeP', 'ppm de CO', 324.09, '2022-05-04 21:23:41', 518),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:44', 519),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:23:45', 520),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:23:48', 521),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:49', 522),
('TNodeP', 'Temperatura en ', 31.3, '2022-05-04 21:23:50', 523),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:53', 524),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:23:55', 525),
('TNodeP', 'Temperatura en ', 31.1, '2022-05-04 21:23:55', 526),
('HNodeP', 'Porcentaje de h', 62, '2022-05-04 21:23:57', 527),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:24:00', 528),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:01', 529),
('GNodeP', 'ppm de CO', 417.6, '2022-05-04 21:24:02', 530),
('TNodeP', 'Temperatura en ', 31.1, '2022-05-04 21:24:05', 531),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:06', 532),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:24:09', 533),
('TNodeP', 'Temperatura en ', 31, '2022-05-04 21:24:10', 534),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:10', 535),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:15', 536),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:24:15', 537),
('GNodeP', 'ppm de CO', 182.16, '2022-05-04 21:24:16', 538),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:19', 539),
('TNodeP', 'Temperatura en ', 30.9, '2022-05-04 21:24:20', 540),
('GNodeP', 'ppm de CO', 270.49, '2022-05-04 21:24:23', 541),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:23', 542),
('TNodeP', 'Temperatura en ', 31.2, '2022-05-04 21:24:25', 543),
('HNodeP', 'Porcentaje de h', 63, '2022-05-04 21:24:27', 544);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_flama`
--

CREATE TABLE `sensor_flama` (
  `sensor_ID` varchar(20) NOT NULL,
  `sensorf_modelo` varchar(20) NOT NULL,
  `sensorf_latitud` float NOT NULL,
  `sensorf_longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensor_flama`
--

INSERT INTO `sensor_flama` (`sensor_ID`, `sensorf_modelo`, `sensorf_latitud`, `sensorf_longitud`) VALUES
('FNodeL', 'W104', 29.6509, -100.289);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_gas`
--

CREATE TABLE `sensor_gas` (
  `sensor_ID` varchar(20) NOT NULL,
  `sensorg_modelo` varchar(20) NOT NULL,
  `sensorg_latitud` float NOT NULL,
  `sensorg_longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensor_gas`
--

INSERT INTO `sensor_gas` (`sensor_ID`, `sensorg_modelo`, `sensorg_latitud`, `sensorg_longitud`) VALUES
('GNODEP', 'MQ-2', 25.6509, -100.289);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_humedad`
--

CREATE TABLE `sensor_humedad` (
  `sensor_ID` varchar(20) NOT NULL,
  `sensorh_modelo` varchar(20) NOT NULL,
  `sensorh_latitud` float NOT NULL,
  `sensorh_longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensor_humedad`
--

INSERT INTO `sensor_humedad` (`sensor_ID`, `sensorh_modelo`, `sensorh_latitud`, `sensorh_longitud`) VALUES
('HNODEP', 'DHT11', 25.6509, -100.289);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_lluvia`
--

CREATE TABLE `sensor_lluvia` (
  `sensor_ID` varchar(20) NOT NULL,
  `sensorl_modelo` varchar(20) NOT NULL,
  `sensorl_latitud` float NOT NULL,
  `sensorl_longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensor_lluvia`
--

INSERT INTO `sensor_lluvia` (`sensor_ID`, `sensorl_modelo`, `sensorl_latitud`, `sensorl_longitud`) VALUES
('LNodeF', 'MH-RD', 29.6509, -100.289);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_temperatura`
--

CREATE TABLE `sensor_temperatura` (
  `sensor_ID` varchar(20) NOT NULL,
  `sensort_modelo` varchar(20) NOT NULL,
  `sensort_latitud` float NOT NULL,
  `sensort_longitud` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sensor_temperatura`
--

INSERT INTO `sensor_temperatura` (`sensor_ID`, `sensort_modelo`, `sensort_latitud`, `sensort_longitud`) VALUES
('TNODEP', 'DHT11', 25.6509, -100.289);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  ADD PRIMARY KEY (`sensor_noM`),
  ADD KEY `sensor_ID` (`sensor_ID`);

--
-- Indices de la tabla `sensor_flama`
--
ALTER TABLE `sensor_flama`
  ADD PRIMARY KEY (`sensor_ID`);

--
-- Indices de la tabla `sensor_gas`
--
ALTER TABLE `sensor_gas`
  ADD PRIMARY KEY (`sensor_ID`);

--
-- Indices de la tabla `sensor_humedad`
--
ALTER TABLE `sensor_humedad`
  ADD PRIMARY KEY (`sensor_ID`);

--
-- Indices de la tabla `sensor_lluvia`
--
ALTER TABLE `sensor_lluvia`
  ADD PRIMARY KEY (`sensor_ID`);

--
-- Indices de la tabla `sensor_temperatura`
--
ALTER TABLE `sensor_temperatura`
  ADD PRIMARY KEY (`sensor_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  MODIFY `sensor_noM` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
