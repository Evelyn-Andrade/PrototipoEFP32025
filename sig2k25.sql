-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2025 a las 21:52:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sig2k25`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `id_aplicacion` int(5) NOT NULL,
  `nombre_aplicacion` varchar(25) NOT NULL,
  `estatus_aplicacion` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`id_aplicacion`, `nombre_aplicacion`, `estatus_aplicacion`) VALUES
(123, 'Milin', '1'),
(300, 'Gus', '1'),
(330, 'Clientes', '1'),
(340, 'Vendedores', '1'),
(345, 'Pirulo', '1'),
(360, 'CuentasXc', '1'),
(590, 'Control de Pedidos', '1'),
(689, 'Marta', '1'),
(700, 'Ventas', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `id_banco` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `sede` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_aplicacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `nombre_pc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `id_usuario`, `id_aplicacion`, `fecha`, `ip`, `accion`, `nombre_pc`) VALUES
(1, 84, 1, '2025-04-28 11:13:05', '172.20.10.5', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(2, 85, 1, '2025-05-09 14:46:44', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(3, 85, 1, '2025-05-09 15:21:00', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(4, 85, 301, '2025-05-09 15:21:25', '192.168.200.252', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(5, 85, 1, '2025-05-09 15:24:44', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(6, 85, 1, '2025-05-09 15:32:16', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(7, 85, 1, '2025-05-09 15:43:09', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(8, 85, 1, '2025-05-09 16:02:17', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(9, 85, 1, '2025-05-09 16:03:23', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(10, 85, 1, '2025-05-09 16:06:53', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(11, 85, 1, '2025-05-09 16:10:24', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(12, 85, 1, '2025-05-09 16:11:56', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(13, 85, 1, '2025-05-09 16:45:12', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(14, 85, 1, '2025-05-09 17:03:44', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(15, 85, 1, '2025-05-09 17:11:40', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(16, 85, 1, '2025-05-09 17:15:09', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(17, 85, 1, '2025-05-09 17:34:43', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(18, 85, 1, '2025-05-09 17:52:28', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(19, 85, 1, '2025-05-09 18:04:22', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(20, 85, 1, '2025-05-09 18:05:27', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(21, 85, 1, '2025-05-09 18:07:40', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(22, 85, 1, '2025-05-09 18:36:34', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(23, 85, 1, '2025-05-09 18:37:48', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(24, 85, 1, '2025-05-09 18:38:53', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(25, 85, 1, '2025-05-09 18:45:14', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(26, 85, 1, '2025-05-09 20:59:38', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(27, 85, 1, '2025-05-10 15:57:56', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(28, 85, 1, '2025-05-10 16:00:42', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(29, 85, 1, '2025-05-10 16:21:42', '192.168.200.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(30, 85, 1, '2025-05-11 00:24:23', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(31, 85, 1, '2025-05-11 00:42:45', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(32, 85, 1, '2025-05-11 01:18:09', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(33, 85, 1, '2025-05-11 01:20:34', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(34, 85, 1, '2025-05-11 01:22:27', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(35, 85, 1, '2025-05-11 01:23:45', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(36, 85, 1, '2025-05-11 02:05:06', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(37, 85, 1, '2025-05-11 02:13:28', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(38, 85, 1, '2025-05-11 02:39:03', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(39, 85, 1, '2025-05-11 02:41:11', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(40, 85, 1, '2025-05-11 02:42:15', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(41, 85, 1, '2025-05-11 03:01:40', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(42, 85, 1, '2025-05-11 13:28:32', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(43, 85, 1, '2025-05-11 13:43:14', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(44, 85, 1, '2025-05-11 13:47:56', '192.168.205.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(45, 2026, 1, '2025-05-14 11:35:09', '192.168.179.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(46, 2026, 1, '2025-05-14 11:37:19', '192.168.179.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(47, 2026, 1, '2025-05-14 11:38:18', '192.168.179.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(48, 2026, 1, '2025-05-14 11:47:19', '192.168.179.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(49, 2026, 1, '2025-05-14 12:05:43', '192.168.179.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(50, 2026, 1, '2025-05-14 19:24:09', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(51, 2026, 301, '2025-05-14 19:24:34', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(52, 2026, 301, '2025-05-14 19:24:39', '192.168.100.10', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(53, 2026, 301, '2025-05-14 19:24:50', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(54, 2026, 301, '2025-05-14 19:24:52', '192.168.100.10', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(55, 2026, 301, '2025-05-14 19:25:03', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(56, 2026, 301, '2025-05-14 19:25:05', '192.168.100.10', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(57, 2026, 301, '2025-05-14 19:25:15', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(58, 2026, 1, '2025-05-14 19:25:58', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(59, 2026, 1, '2025-05-14 19:26:55', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(60, 2026, 1, '2025-05-14 19:30:13', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(61, 2026, 1, '2025-05-14 20:06:43', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(62, 2026, 1, '2025-05-14 20:39:46', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(63, 2026, 1, '2025-05-14 21:25:09', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(64, 2026, 225, '2025-05-14 21:26:38', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(65, 2026, 1, '2025-05-14 21:35:28', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(66, 2026, 1, '2025-05-14 21:37:07', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(67, 2026, 1, '2025-05-14 21:39:59', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(68, 2026, 1, '2025-05-14 21:52:04', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(69, 2026, 1, '2025-05-14 22:00:50', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(70, 2026, 1, '2025-05-14 22:02:24', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(71, 2026, 1, '2025-05-14 22:08:54', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(72, 2026, 1, '2025-05-14 22:10:36', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(73, 2026, 1, '2025-05-14 22:14:55', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(74, 2026, 1, '2025-05-14 22:31:39', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(75, 2026, 203, '2025-05-14 22:31:58', '192.168.100.10', 'Ingreso Datos MetodoDePego', 'LAPTOP-OG2AN672'),
(76, 2026, 202, '2025-05-14 22:32:52', '192.168.100.10', 'Ingreso Datos Proveedores', 'LAPTOP-OG2AN672'),
(77, 2026, 1, '2025-05-14 22:34:32', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(78, 2026, 1, '2025-05-15 06:56:15', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(79, 2026, 1, '2025-05-15 07:23:42', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(80, 2026, 1, '2025-05-15 08:38:51', '127.0.0.1', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(81, 2026, 1, '2025-05-15 08:54:09', '127.0.0.1', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(82, 2026, 1, '2025-05-15 10:58:33', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(83, 2026, 1, '2025-05-15 11:05:17', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(84, 2026, 1, '2025-05-15 11:06:03', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(85, 2026, 1, '2025-05-15 11:09:46', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(86, 2026, 1, '2025-05-15 11:15:48', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(87, 2026, 225, '2025-05-15 11:17:29', '192.168.170.252', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(88, 2026, 1, '2025-05-15 11:30:49', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(89, 2026, 1, '2025-05-15 11:54:19', '192.168.170.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(90, 2026, 1, '2025-05-15 16:04:22', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(91, 2026, 1, '2025-05-15 16:07:49', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(92, 2026, 1, '2025-05-15 16:48:44', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(93, 2026, 1, '2025-05-15 17:35:58', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(94, 2026, 1, '2025-05-15 17:40:20', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(95, 2026, 1, '2025-05-15 22:05:01', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(96, 2026, 1, '2025-05-15 22:06:59', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(97, 2026, 1, '2025-05-15 22:10:50', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(98, 2026, 1, '2025-05-16 10:58:07', '192.168.251.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(99, 2026, 1, '2025-05-16 11:45:00', '192.168.251.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(100, 85, 1, '2025-05-16 11:45:54', '192.168.251.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(101, 84, 1, '2025-05-16 11:46:24', '192.168.251.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(102, 2026, 1, '2025-05-16 11:47:16', '192.168.251.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(103, 2026, 1, '2025-05-16 22:21:12', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(104, 2026, 1, '2025-05-16 22:21:32', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(105, 2026, 1, '2025-05-16 22:41:14', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(106, 2026, 1, '2025-05-16 22:42:37', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(107, 2026, 1, '2025-05-16 22:43:08', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(108, 2026, 1, '2025-05-16 22:44:38', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(109, 2026, 1, '2025-05-16 22:46:02', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(110, 2026, 1, '2025-05-16 22:46:25', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(111, 2026, 1, '2025-05-16 22:47:01', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(112, 2026, 1, '2025-05-16 22:47:18', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(113, 2026, 1, '2025-05-16 22:47:59', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(114, 2026, 1, '2025-05-16 23:08:16', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(115, 2026, 1, '2025-05-16 23:21:21', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(116, 2026, 1, '2025-05-17 07:47:37', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(117, 2026, 1, '2025-05-17 08:26:23', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(118, 2026, 100, '2025-05-17 08:27:48', '192.168.100.10', 'Ingreso Datos Usuario', 'LAPTOP-OG2AN672'),
(119, 2026, 1, '2025-05-17 08:29:51', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(120, 2026, 100, '2025-05-17 08:30:59', '192.168.100.10', 'Ingreso Datos Usuario', 'LAPTOP-OG2AN672'),
(121, 2026, 101, '2025-05-17 08:33:05', '192.168.100.10', 'Asignar Todos Los Perfiles a Usuario', 'LAPTOP-OG2AN672'),
(122, 2026, 101, '2025-05-17 08:33:13', '192.168.100.10', 'Eliminar Todos Los Perfiles a Usuario', 'LAPTOP-OG2AN672'),
(123, 2026, 101, '2025-05-17 08:33:18', '192.168.100.10', 'Asignar Perfil a Usuario', 'LAPTOP-OG2AN672'),
(124, 2026, 301, '2025-05-17 08:34:58', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(125, 2026, 301, '2025-05-17 08:35:39', '192.168.100.10', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(126, 2026, 301, '2025-05-17 08:36:42', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(127, 2026, 301, '2025-05-17 08:36:55', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(128, 2026, 301, '2025-05-17 08:37:03', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(129, 2026, 301, '2025-05-17 08:37:15', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(130, 2026, 1, '2025-05-17 08:37:53', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(131, 2026, 1, '2025-05-17 10:45:59', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(132, 2026, 301, '2025-05-17 10:46:29', '192.168.91.252', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(133, 2026, 301, '2025-05-17 10:46:34', '192.168.91.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(134, 2026, 301, '2025-05-17 10:46:51', '192.168.91.252', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(135, 2026, 301, '2025-05-17 10:46:54', '192.168.91.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(136, 2026, 301, '2025-05-17 10:47:11', '192.168.91.252', 'Insertar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(137, 2026, 301, '2025-05-17 10:47:57', '192.168.91.252', 'Eliminar una Aplicacion', 'LAPTOP-OG2AN672'),
(138, 2026, 301, '2025-05-17 10:48:10', '192.168.91.252', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(139, 2026, 301, '2025-05-17 10:48:12', '192.168.91.252', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(140, 2026, 301, '2025-05-17 10:48:14', '192.168.91.252', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(141, 2026, 301, '2025-05-17 10:48:25', '192.168.91.252', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(142, 2026, 301, '2025-05-17 10:48:50', '192.168.91.252', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(143, 2026, 301, '2025-05-17 10:49:03', '192.168.91.252', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(144, 2026, 301, '2025-05-17 10:49:11', '192.168.91.252', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(145, 2026, 301, '2025-05-17 10:49:15', '192.168.91.252', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(146, 2026, 301, '2025-05-17 10:49:20', '192.168.91.252', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(147, 2026, 101, '2025-05-17 10:49:49', '192.168.91.252', 'Asignar Perfil a Usuario', 'LAPTOP-OG2AN672'),
(148, 2026, 101, '2025-05-17 10:50:09', '192.168.91.252', 'Asignar Perfil a Usuario', 'LAPTOP-OG2AN672'),
(149, 2026, 1, '2025-05-17 10:50:58', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(150, 2026, 1, '2025-05-17 11:26:45', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(151, 2026, 301, '2025-05-17 11:27:28', '192.168.91.252', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(152, 2026, 1, '2025-05-17 11:28:10', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(153, 2026, 301, '2025-05-17 11:28:47', '192.168.91.252', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(154, 2026, 1, '2025-05-17 11:32:08', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(155, 2026, 1, '2025-05-17 11:34:01', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(156, 2026, 1, '2025-05-17 12:01:55', '192.168.91.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(157, 2026, 301, '2025-05-17 12:02:24', '192.168.91.252', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(158, 2026, 1, '2025-05-17 12:10:17', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(159, 2026, 301, '2025-05-17 12:10:40', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(160, 2026, 1, '2025-05-17 13:12:16', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(161, 2026, 301, '2025-05-17 13:12:29', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(162, 2026, 301, '2025-05-17 13:13:00', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(163, 2026, 225, '2025-05-17 13:15:48', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(164, 2026, 301, '2025-05-17 13:16:20', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(165, 2026, 301, '2025-05-17 13:16:33', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(166, 2026, 1, '2025-05-17 13:26:32', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(167, 2026, 301, '2025-05-17 13:26:45', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(168, 2026, 301, '2025-05-17 13:26:56', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(169, 2026, 301, '2025-05-17 13:28:25', '192.168.100.10', 'Asignar Todas Las Aplicaciones', 'LAPTOP-OG2AN672'),
(170, 2026, 301, '2025-05-17 13:28:29', '192.168.100.10', 'Eliminar una Aplicacion', 'LAPTOP-OG2AN672'),
(171, 2026, 301, '2025-05-17 13:28:43', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(172, 2026, 1, '2025-05-17 13:41:10', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(173, 2026, 301, '2025-05-17 13:41:35', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(174, 2026, 301, '2025-05-17 13:41:47', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(175, 2026, 301, '2025-05-17 13:44:05', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(176, 2026, 1, '2025-05-17 13:47:14', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(177, 2026, 225, '2025-05-17 13:49:34', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(178, 2026, 301, '2025-05-17 13:51:21', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(179, 2026, 301, '2025-05-17 13:51:40', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(180, 2026, 1, '2025-05-17 13:55:34', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(181, 2026, 301, '2025-05-17 13:55:55', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(182, 2026, 301, '2025-05-17 13:56:06', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(183, 2026, 301, '2025-05-17 13:56:30', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(184, 2026, 1, '2025-05-17 14:37:38', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(185, 2026, 1, '2025-05-17 14:39:02', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(186, 2026, 1, '2025-05-17 14:40:23', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(187, 2026, 1, '2025-05-17 14:47:26', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(188, 2026, 1, '2025-05-17 14:56:22', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(189, 2026, 1, '2025-05-17 14:56:38', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(190, 2026, 1, '2025-05-17 15:00:31', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(191, 2026, 1, '2025-05-17 15:00:43', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(192, 2026, 1, '2025-05-17 15:01:02', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(193, 2026, 1, '2025-05-17 16:35:57', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(194, 2026, 1, '2025-05-17 16:36:26', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(195, 2026, 301, '2025-05-17 16:37:08', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(196, 2026, 301, '2025-05-17 16:38:00', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(197, 2026, 301, '2025-05-17 16:39:37', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(198, 2026, 1, '2025-05-17 16:40:39', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(199, 2026, 1, '2025-05-17 23:57:48', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(200, 2026, 301, '2025-05-17 23:58:02', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(201, 2026, 301, '2025-05-17 23:58:15', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(202, 2026, 301, '2025-05-17 23:58:22', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(203, 2026, 1, '2025-05-18 00:04:40', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(204, 2026, 301, '2025-05-18 00:04:48', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(205, 2026, 301, '2025-05-18 00:05:03', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(206, 2026, 1, '2025-05-18 11:11:38', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(207, 2026, 1, '2025-05-18 11:13:22', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(208, 2026, 1, '2025-05-18 11:13:56', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(209, 2026, 1, '2025-05-18 11:17:08', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(210, 2026, 1, '2025-05-18 12:49:14', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(211, 2026, 301, '2025-05-18 12:50:13', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(212, 2026, 301, '2025-05-18 12:50:59', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(213, 2026, 301, '2025-05-18 12:53:51', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(214, 2026, 1, '2025-05-18 14:36:30', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(215, 2026, 301, '2025-05-18 14:39:22', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(216, 2026, 301, '2025-05-18 14:39:42', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(217, 2026, 1, '2025-05-18 14:41:25', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(218, 2026, 301, '2025-05-18 14:41:36', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(219, 2026, 301, '2025-05-18 14:41:44', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(220, 2026, 301, '2025-05-18 14:42:24', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(221, 2026, 301, '2025-05-18 14:42:46', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(222, 2026, 1, '2025-05-18 15:17:51', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(223, 2026, 301, '2025-05-18 15:18:10', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(224, 2026, 301, '2025-05-18 15:18:26', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(225, 2026, 301, '2025-05-18 15:18:39', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(226, 2026, 301, '2025-05-18 15:18:55', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(227, 2026, 1, '2025-05-18 15:24:16', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(228, 2026, 301, '2025-05-18 15:24:24', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(229, 2026, 301, '2025-05-18 15:24:43', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(230, 2026, 1, '2025-05-18 16:09:30', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(231, 2026, 1, '2025-05-18 16:09:40', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(232, 2026, 225, '2025-05-18 16:10:40', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(233, 2026, 301, '2025-05-18 16:11:02', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(234, 2026, 301, '2025-05-18 16:11:22', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(235, 2026, 301, '2025-05-18 16:12:01', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(236, 2026, 301, '2025-05-18 16:12:09', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(237, 2026, 301, '2025-05-18 16:12:17', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(238, 2026, 1, '2025-05-18 16:24:38', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(239, 2026, 301, '2025-05-18 16:24:54', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(240, 2026, 301, '2025-05-18 16:25:08', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(241, 2026, 1, '2025-05-18 16:35:54', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(242, 2026, 1, '2025-05-18 16:36:06', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(243, 2026, 1, '2025-05-18 16:36:58', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(244, 2026, 301, '2025-05-18 16:37:08', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(245, 2026, 301, '2025-05-18 16:37:20', '192.168.100.10', 'Eliminar una Aplicacion', 'LAPTOP-OG2AN672'),
(246, 2026, 301, '2025-05-18 16:38:02', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(247, 2026, 301, '2025-05-18 16:38:25', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(248, 2026, 301, '2025-05-18 16:39:08', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(249, 2026, 301, '2025-05-18 16:39:34', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(250, 2026, 301, '2025-05-18 16:40:12', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(251, 2026, 1, '2025-05-18 16:54:24', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(252, 2026, 225, '2025-05-18 16:55:24', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(253, 2026, 301, '2025-05-18 16:55:35', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(254, 2026, 301, '2025-05-18 17:00:06', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(255, 2026, 301, '2025-05-18 17:00:10', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(256, 2026, 1, '2025-05-18 17:01:40', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(257, 2026, 301, '2025-05-18 17:01:50', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(258, 2026, 225, '2025-05-18 17:02:37', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(259, 2026, 301, '2025-05-18 17:02:56', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(260, 2026, 1, '2025-05-18 17:27:48', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(261, 2026, 225, '2025-05-18 17:28:34', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(262, 2026, 301, '2025-05-18 17:29:07', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(263, 2026, 301, '2025-05-18 17:30:03', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(264, 2026, 301, '2025-05-18 17:31:35', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(265, 2026, 1, '2025-05-18 18:15:58', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(266, 2026, 225, '2025-05-18 18:17:02', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(267, 2026, 301, '2025-05-18 18:17:19', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(268, 2026, 301, '2025-05-18 18:17:44', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(269, 2026, 301, '2025-05-18 18:20:56', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(270, 2026, 301, '2025-05-18 18:21:08', '192.168.100.10', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(271, 2026, 301, '2025-05-18 18:21:45', '192.168.100.10', 'Salio de Mantenimiento RelAplPerf', 'LAPTOP-OG2AN672'),
(272, 2026, 1, '2025-05-18 19:12:20', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(273, 2026, 1, '2025-05-18 19:22:58', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(274, 2026, 1, '2025-05-18 19:45:10', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(275, 2026, 1, '2025-05-18 19:46:46', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(276, 2026, 1, '2025-05-18 23:57:42', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(277, 2026, 1, '2025-05-18 23:58:53', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(278, 2026, 1, '2025-05-19 00:00:23', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(279, 2026, 1, '2025-05-19 00:05:57', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(280, 2026, 1, '2025-05-19 07:20:56', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(281, 2026, 1, '2025-05-19 07:36:25', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(282, 2026, 1, '2025-05-19 07:47:42', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(283, 2026, 1, '2025-05-19 08:00:08', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(284, 2026, 1, '2025-05-19 08:03:19', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(285, 2026, 1, '2025-05-19 08:04:58', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(286, 2026, 1, '2025-05-19 08:08:08', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(287, 2026, 1, '2025-05-19 08:08:45', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(288, 2026, 1, '2025-05-19 08:13:00', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(289, 2026, 1, '2025-05-19 08:13:54', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(290, 2026, 1, '2025-05-19 08:15:18', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(291, 2026, 1, '2025-05-19 09:09:53', '127.0.0.1', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(292, 2026, 1, '2025-05-19 09:11:16', '127.0.0.1', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(293, 2026, 1, '2025-05-19 09:17:59', '127.0.0.1', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(294, 2026, 1, '2025-05-19 09:28:40', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(295, 2026, 1, '2025-05-19 09:49:26', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(296, 2026, 1, '2025-05-19 09:51:02', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(297, 2026, 1, '2025-05-19 10:02:48', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(298, 2026, 1, '2025-05-19 10:03:41', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(299, 2026, 301, '2025-05-19 10:04:40', '172.20.10.2', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(300, 2026, 301, '2025-05-19 10:04:54', '172.20.10.2', 'Asignar Una Aplicaciones', 'LAPTOP-OG2AN672'),
(301, 2026, 301, '2025-05-19 10:05:05', '172.20.10.2', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(302, 2026, 1, '2025-05-19 10:14:47', '172.20.10.2', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(303, 85, 1, '2025-05-21 18:07:10', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(304, 85, 1, '2025-05-21 18:07:23', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(305, 85, 1, '2025-05-21 18:21:24', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(306, 85, 1, '2025-05-21 18:26:02', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(307, 85, 1, '2025-05-21 19:59:03', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(308, 85, 320, '2025-05-21 19:59:10', '192.168.100.10', 'Regresando Al Login', 'LAPTOP-OG2AN672'),
(309, 85, 1, '2025-05-22 10:15:32', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(310, 85, 320, '2025-05-22 10:16:17', '192.168.100.10', 'Salio del Sistema', 'LAPTOP-OG2AN672'),
(311, 85, 320, '2025-05-22 10:16:18', '192.168.100.10', 'Regresando Al Login', 'LAPTOP-OG2AN672'),
(312, 85, 1, '2025-05-22 10:16:53', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(313, 85, 100, '2025-05-22 10:17:20', '192.168.100.10', 'Ingreso Datos Usuario', 'LAPTOP-OG2AN672'),
(314, 85, 301, '2025-05-22 10:17:57', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(315, 85, 301, '2025-05-22 10:18:13', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(316, 85, 301, '2025-05-22 10:18:18', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(317, 85, 301, '2025-05-22 10:18:22', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(318, 85, 301, '2025-05-22 10:18:27', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(319, 2026, 1, '2025-05-22 10:20:42', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(320, 2026, 101, '2025-05-22 10:22:24', '192.168.100.10', 'Asignar Perfil a Usuario', 'LAPTOP-OG2AN672'),
(321, 2026, 301, '2025-05-22 10:23:12', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(322, 2026, 301, '2025-05-22 10:23:15', '192.168.100.10', 'Asignacion DE Permiso a Perfil', 'LAPTOP-OG2AN672'),
(323, 2026, 301, '2025-05-22 10:23:30', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(324, 2026, 301, '2025-05-22 10:23:34', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(325, 2026, 301, '2025-05-22 10:23:38', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(326, 2026, 301, '2025-05-22 10:23:42', '192.168.100.10', 'Ingreso De RelAplPerf', 'LAPTOP-OG2AN672'),
(327, 2026, 1, '2025-05-22 10:26:57', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(328, 2026, 1, '2025-05-22 10:28:35', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(329, 2026, 320, '2025-05-22 10:28:37', '192.168.100.10', 'Llamado al Mantenimiento Clientes', 'LAPTOP-OG2AN672'),
(330, 2026, 330, '2025-05-22 10:29:14', '192.168.100.10', 'Ingreso Datos clientes', 'LAPTOP-OG2AN672'),
(331, 2026, 330, '2025-05-22 10:29:49', '192.168.100.10', 'Actualizacion Datos Clientes', 'LAPTOP-OG2AN672'),
(332, 2026, 330, '2025-05-22 10:29:56', '192.168.100.10', 'Consulta Datos clientes', 'LAPTOP-OG2AN672'),
(333, 2026, 330, '2025-05-22 10:30:03', '192.168.100.10', 'Actualizacion Datos Clientes', 'LAPTOP-OG2AN672'),
(334, 2026, 330, '2025-05-22 10:30:11', '192.168.100.10', 'Borrar Datos clientes', 'LAPTOP-OG2AN672'),
(335, 2026, 330, '2025-05-22 10:30:29', '192.168.100.10', 'Ayuda Clientes', 'LAPTOP-OG2AN672'),
(336, 2026, 330, '2025-05-22 10:30:49', '192.168.100.10', 'Reporte Clientes', 'LAPTOP-OG2AN672'),
(337, 2026, 320, '2025-05-22 10:31:47', '192.168.100.10', 'Llamado al Mantenimiento Vendedor', 'LAPTOP-OG2AN672'),
(338, 2026, 340, '2025-05-22 10:32:25', '192.168.100.10', 'Registrar Datos Vendedores', 'LAPTOP-OG2AN672'),
(339, 2026, 340, '2025-05-22 10:32:30', '192.168.100.10', 'Limpiar Datos Vendedores', 'LAPTOP-OG2AN672'),
(340, 2026, 340, '2025-05-22 10:32:36', '192.168.100.10', 'Buscar Datos Vendedores', 'LAPTOP-OG2AN672'),
(341, 2026, 340, '2025-05-22 10:32:49', '192.168.100.10', 'Modificar Datos Vendedores', 'LAPTOP-OG2AN672'),
(342, 2026, 340, '2025-05-22 10:33:09', '192.168.100.10', 'Reportes Vendedores', 'LAPTOP-OG2AN672'),
(343, 2026, 320, '2025-05-22 10:33:33', '192.168.100.10', 'Llamado al Mantenimiento Vendedor', 'LAPTOP-OG2AN672'),
(344, 2026, 320, '2025-05-22 10:33:34', '192.168.100.10', 'Llamado al Mantenimiento Clientes', 'LAPTOP-OG2AN672'),
(345, 2026, 320, '2025-05-22 10:33:42', '192.168.100.10', 'Llamado al Transaccional VentasXc', 'LAPTOP-OG2AN672'),
(346, 2026, 360, '2025-05-22 10:35:12', '192.168.100.10', 'Asignar Un Producto', 'LAPTOP-OG2AN672'),
(347, 2026, 360, '2025-05-22 10:36:40', '192.168.100.10', 'Asignar Un Producto', 'LAPTOP-OG2AN672'),
(348, 2026, 360, '2025-05-22 10:37:16', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(349, 2026, 360, '2025-05-22 10:37:24', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(350, 2026, 360, '2025-05-22 10:37:29', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(351, 2026, 360, '2025-05-22 10:37:43', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(352, 2026, 360, '2025-05-22 10:37:49', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(353, 2026, 360, '2025-05-22 10:38:39', '192.168.100.10', 'Reportes Vendedores', 'LAPTOP-OG2AN672'),
(354, 2026, 360, '2025-05-22 10:39:26', '192.168.100.10', 'Ayuda Clientes', 'LAPTOP-OG2AN672'),
(355, 2026, 1, '2025-05-22 12:53:41', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(356, 2026, 320, '2025-05-22 12:55:00', '192.168.100.10', 'Llamado al Transaccional VentasXc', 'LAPTOP-OG2AN672'),
(357, 2026, 320, '2025-05-22 13:17:32', '192.168.100.10', 'Llamado al Mantenimiento Bitacora', 'LAPTOP-OG2AN672'),
(358, 2026, 320, '2025-05-22 13:19:57', '192.168.100.10', 'Llamado al Transaccional VentasXc', 'LAPTOP-OG2AN672'),
(359, 2026, 320, '2025-05-22 13:20:02', '192.168.100.10', 'Llamado al Mantenimiento Clientes', 'LAPTOP-OG2AN672'),
(360, 2026, 320, '2025-05-22 13:20:03', '192.168.100.10', 'Llamado al Mantenimiento Vendedor', 'LAPTOP-OG2AN672'),
(361, 2026, 340, '2025-05-22 13:20:19', '192.168.100.10', 'Reportes Vendedores', 'LAPTOP-OG2AN672'),
(362, 2026, 340, '2025-05-22 13:21:02', '192.168.100.10', 'Ayuda Vendedores', 'LAPTOP-OG2AN672'),
(363, 2026, 320, '2025-05-22 13:22:33', '192.168.100.10', 'Regresando Al Login', 'LAPTOP-OG2AN672'),
(364, 2026, 1, '2025-05-22 13:22:43', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(365, 2026, 1, '2025-05-22 13:26:54', '192.168.100.10', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(366, 2026, 320, '2025-05-22 13:26:58', '192.168.100.10', 'Llamado al Transaccional VentasXc', 'LAPTOP-OG2AN672'),
(367, 2026, 360, '2025-05-22 13:27:11', '192.168.100.10', 'Asignar Un Producto', 'LAPTOP-OG2AN672'),
(368, 2026, 360, '2025-05-22 13:28:05', '192.168.100.10', 'Eliminar un Producto', 'LAPTOP-OG2AN672'),
(369, 2026, 360, '2025-05-22 13:28:06', '192.168.100.10', 'Asignar Un Producto', 'LAPTOP-OG2AN672'),
(370, 2026, 360, '2025-05-22 13:28:47', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(371, 2026, 360, '2025-05-22 13:29:04', '192.168.100.10', 'Asignar Un Producto', 'LAPTOP-OG2AN672'),
(372, 2026, 360, '2025-05-22 13:29:42', '192.168.100.10', 'Generando Venta', 'LAPTOP-OG2AN672'),
(373, 2026, 360, '2025-05-22 13:29:44', '192.168.100.10', 'Reportes Vendedores', 'LAPTOP-OG2AN672'),
(374, 2026, 1, '2025-06-05 07:53:39', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(375, 2026, 201, '2025-06-05 07:54:30', '192.168.202.252', 'Ingreso Datos Perfiles', 'LAPTOP-OG2AN672'),
(376, 2026, 1, '2025-06-05 08:05:56', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(377, 2026, 1, '2025-06-05 12:51:14', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(378, 2026, 1, '2025-06-05 13:04:11', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(379, 2026, 1, '2025-06-05 13:12:56', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(380, 2026, 2025, '2025-06-05 13:13:11', '192.168.202.252', 'Buscar Datos Bodega', 'LAPTOP-OG2AN672'),
(381, 2026, 2025, '2025-06-05 13:13:14', '192.168.202.252', 'Eliminar Registro Bodega', 'LAPTOP-OG2AN672'),
(382, 2026, 2025, '2025-06-05 13:14:20', '192.168.202.252', 'Registrar Datos Bodega', 'LAPTOP-OG2AN672'),
(383, 2026, 2025, '2025-06-05 13:14:22', '192.168.202.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(384, 2026, 2025, '2025-06-05 13:14:50', '192.168.202.252', 'Registrar Datos Bodega', 'LAPTOP-OG2AN672'),
(385, 2026, 2025, '2025-06-05 13:14:57', '192.168.202.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(386, 2026, 2025, '2025-06-05 13:15:26', '192.168.202.252', 'Registrar Datos Bodega', 'LAPTOP-OG2AN672'),
(387, 2026, 1, '2025-06-05 13:20:07', '192.168.202.252', 'Inicio Sesion', 'LAPTOP-OG2AN672'),
(388, 2026, 2025, '2025-06-05 13:22:26', '192.168.202.252', 'Registrar Datos Bodega', 'LAPTOP-OG2AN672'),
(389, 2026, 2025, '2025-06-05 13:22:28', '192.168.202.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(390, 2026, 2025, '2025-06-05 13:22:45', '192.168.202.252', 'Registrar Datos Bodega', 'LAPTOP-OG2AN672'),
(391, 2026, 2025, '2025-06-05 13:22:47', '192.168.202.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(392, 2026, 2025, '2025-06-05 13:22:57', '192.168.202.252', 'Buscar Datos Bodega', 'LAPTOP-OG2AN672'),
(393, 2026, 2025, '2025-06-05 13:23:09', '192.168.202.252', 'Modificar Datos bodega', 'LAPTOP-OG2AN672'),
(394, 2026, 2025, '2025-06-05 13:23:14', '192.168.202.252', 'Eliminar Registro Bodega', 'LAPTOP-OG2AN672'),
(395, 2026, 2025, '2025-06-05 13:23:17', '192.168.202.252', 'Limpiar Datos Aplicacion', 'LAPTOP-OG2AN672'),
(396, 2026, 2025, '2025-06-05 13:23:35', '192.168.202.252', 'Buscar Datos Bodega', 'LAPTOP-OG2AN672'),
(397, 2026, 2025, '2025-06-05 13:23:39', '192.168.202.252', 'Eliminar Registro Bodega', 'LAPTOP-OG2AN672'),
(398, 2026, 2025, '2025-06-05 13:23:44', '192.168.202.252', 'Vista reporte Bodega', 'LAPTOP-OG2AN672');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pkid` varchar(15) NOT NULL,
  `tipo_bodega` varchar(15) DEFAULT NULL,
  `nombre_bodega` varchar(40) DEFAULT NULL,
  `direccion` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`pkid`, `tipo_bodega`, `nombre_bodega`, `direccion`, `estado`) VALUES
('bhyh', 'Carne', 'Pata de res', 'canalitos', '1'),
('abcdf', 'familiar', 'pavo', 'zona2', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(60) NOT NULL,
  `apellido_cliente` varchar(60) NOT NULL,
  `direccion_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(15) DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  `limite_credito` decimal(12,2) DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  `estatus_cliente` varchar(5) DEFAULT NULL,
  `saldo_actual` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `direccion_cliente`, `telefono_cliente`, `email_cliente`, `limite_credito`, `dias_credito`, `estatus_cliente`, `saldo_actual`) VALUES
(3, 'Vicoromar', 'gomez', '15', '15974', 'vicoromarr', 1000.00, 10, '1', 2500.00),
(6, 'Meme', 'Loco', 'Canalitos Lourdes', '34567890', 'loquito@gmail.com', 3000.00, 3, '1', 2900.00),
(7, 'Bartolo', 'Saenz', 'canalitos zona 24', '47066690', 'esoofiaand04@gmail.com', 3000.00, 23, '1', 2300.00),
(8, 'Maria', 'Lopez', 'Canalitos encuentros', '12345678', 'maria@gmail.com', 60000.00, 20, '1', 300.00),
(9, 'Gus', 'Andrade', 'Canalitos Pilas', '47066690', 'gus@gmail.com', 700.00, 23, '1', 10.00),
(10, 'Milo', 'Luna', 'Canalitos Z24', '67903300', 'milinpilin@gmail.com', 1000.00, 2, '1', 20.00),
(11, 'Perla', 'Andrade', 'canalitos lourdes', '12345678', 'perlita123@gmail.com', 300.00, 20, '1', 40.00),
(12, 'Bruno', 'Luna', 'canalitos jaguey', '12008756', 'brunito@gmail.com', 200.00, 12, '1', 55.00),
(13, 'Shakira', 'Mendez', 'Canalitos ', '12340041', 'shakira@gmail.com', 200.00, 12, '1', 10.00),
(15, 'Atenea', 'Andrade', 'Canalitos encuentros', '45678900', 'atenea@gmail.com', 2345.00, 2, '1', 300.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_cpp`
--

CREATE TABLE `compra_cpp` (
  `no_compra` int(11) NOT NULL,
  `nombre_usuario` varchar(60) DEFAULT NULL,
  `apellido_usuario` varchar(60) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `producto` varchar(60) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `saldo_anterior` int(11) DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conciliacion_bancaria`
--

CREATE TABLE `conciliacion_bancaria` (
  `id_conciliacion` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_movimiento_bancario` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT curdate(),
  `saldo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `saldo_actualizado` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT 'CONCILIADO o PENDIENTE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_bancarias`
--

CREATE TABLE `cuentas_bancarias` (
  `id_cuenta` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `id_tipo_cuenta` int(11) NOT NULL,
  `id_tipo_moneda` int(11) NOT NULL,
  `saldo` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_movimientos_bancarios`
--

CREATE TABLE `detalle_movimientos_bancarios` (
  `id_detalle` int(11) NOT NULL,
  `id_movimiento_bancario` int(11) NOT NULL,
  `id_tipo_operacion` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `monto` decimal(15,2) NOT NULL CHECK (`monto` > 0),
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int(11) NOT NULL,
  `nombre_metodo_pago` varchar(60) DEFAULT NULL,
  `estatus_metodo_pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id_metodo_pago`, `nombre_metodo_pago`, `estatus_metodo_pago`) VALUES
(1, 'rrrr', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_bancarios`
--

CREATE TABLE `movimientos_bancarios` (
  `id_movimiento_bancario` int(11) NOT NULL,
  `id_cuenta` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo_saldo` varchar(8) DEFAULT NULL COMMENT 'Acreedor o Deudor',
  `monto` decimal(10,2) DEFAULT NULL COMMENT 'Monto del movimiento',
  `saldo_actualizado` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(85) DEFAULT NULL,
  `estatus_perfil` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `nombre_perfil`, `estatus_perfil`) VALUES
(2, 'chimi', '1'),
(111, 'Gerentes', '1'),
(222, 'Proveedores', '1'),
(333, 'Inversores', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(60) DEFAULT NULL,
  `direccion_proveedor` varchar(100) DEFAULT NULL,
  `telefono_proveedor` varchar(20) DEFAULT NULL,
  `email_proveedor` varchar(100) DEFAULT NULL,
  `saldo_proveedor` int(11) DEFAULT NULL,
  `estatus_proveedor` int(11) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_proveedor`, `direccion_proveedor`, `telefono_proveedor`, `email_proveedor`, `saldo_proveedor`, `estatus_proveedor`, `fecha_registro`) VALUES
(1, 'Marcos', '34567', '23456789', 'ss@gmail.com', 3455, 1, '23/12/2004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relperfapl`
--

CREATE TABLE `relperfapl` (
  `aplicacion_codigo` int(5) NOT NULL,
  `perfil_codigo` int(5) NOT NULL,
  `consultar_rpa` varchar(1) DEFAULT NULL,
  `actualizar_rpa` varchar(1) DEFAULT NULL,
  `eliminar_rpa` varchar(1) DEFAULT NULL,
  `imprimir_rpa` varchar(1) DEFAULT NULL,
  `insertar_rpa` varchar(1) DEFAULT NULL,
  `fecha_rpa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `relperfapl`
--

INSERT INTO `relperfapl` (`aplicacion_codigo`, `perfil_codigo`, `consultar_rpa`, `actualizar_rpa`, `eliminar_rpa`, `imprimir_rpa`, `insertar_rpa`, `fecha_rpa`) VALUES
(330, 111, '1', '1', '1', '1', '1', '17-05-2025'),
(340, 111, '1', '1', '1', '1', '1', '17-05-2025'),
(360, 111, '1', '1', '1', '1', '1', '17-05-2025'),
(700, 111, '1', '1', '1', '1', '1', '17-05-2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relperfusu`
--

CREATE TABLE `relperfusu` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `relperfusu`
--

INSERT INTO `relperfusu` (`id_usuario`, `id_perfil`) VALUES
(2026, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relusuapl`
--

CREATE TABLE `relusuapl` (
  `id_relusuapl` int(10) NOT NULL,
  `id_aplicacion` int(5) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `der_insertar` varchar(1) NOT NULL,
  `der_editar` varchar(1) NOT NULL,
  `der_eliminar` varchar(1) NOT NULL,
  `der_imprimir` varchar(1) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasas_cambio_diario`
--

CREATE TABLE `tasas_cambio_diario` (
  `id_tasa_cambio_diario` int(11) NOT NULL,
  `valor_promedio_dia` decimal(10,2) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bodegas`
--

CREATE TABLE `tbl_bodegas` (
  `bodCodigo` int(11) NOT NULL,
  `bodNombre` varchar(60) DEFAULT NULL,
  `bodDescripcion` varchar(60) DEFAULT NULL,
  `bodFechaIngreso` date DEFAULT NULL,
  `bodFechaSalida` date DEFAULT NULL,
  `bodEstatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_existencias`
--

CREATE TABLE `tbl_existencias` (
  `proCodigo` int(11) NOT NULL,
  `bodCodigo` int(11) NOT NULL,
  `exiSaldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lineas`
--

CREATE TABLE `tbl_lineas` (
  `linCodigo` int(11) NOT NULL,
  `linNombre` varchar(60) DEFAULT NULL,
  `linPrecios` double DEFAULT NULL,
  `linEstatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_lineas`
--

INSERT INTO `tbl_lineas` (`linCodigo`, `linNombre`, `linPrecios`, `linEstatus`) VALUES
(10, 'honda', 50000, '1'),
(12, 'Pasteles', 150, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_marcas`
--

CREATE TABLE `tbl_marcas` (
  `marCodigo` int(11) NOT NULL,
  `marNombre` varchar(60) DEFAULT NULL,
  `marExistencias` int(11) DEFAULT NULL,
  `marPrecios` double DEFAULT NULL,
  `marEstatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_marcas`
--

INSERT INTO `tbl_marcas` (`marCodigo`, `marNombre`, `marExistencias`, `marPrecios`, `marEstatus`) VALUES
(10, 'Nissan', 3, 206, '1'),
(11, 'canalitos delicias', 10, 12.5, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `proCodigo` int(11) NOT NULL,
  `linCodigo` int(11) NOT NULL,
  `marCodigo` int(11) NOT NULL,
  `proNombre` varchar(60) DEFAULT NULL,
  `proPrecios` double DEFAULT NULL,
  `proExistencias` int(11) DEFAULT NULL,
  `proEstatus` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`proCodigo`, `linCodigo`, `marCodigo`, `proNombre`, `proPrecios`, `proExistencias`, `proEstatus`) VALUES
(2, 12, 11, 'Pastel fresas con crema', 150, 236, '1'),
(10, 10, 10, 'Herramienta truper', 106, 0, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `id_tipo_cuenta` int(11) NOT NULL,
  `tipo_cuenta` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `id_tipo_moneda` int(11) NOT NULL,
  `tipo_moneda` varchar(5) NOT NULL,
  `tasa_cambio_usd` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_operacion_bancaria`
--

CREATE TABLE `tipo_operacion_bancaria` (
  `id_tipo_operacion` int(11) NOT NULL,
  `tipo_operacion` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccionalvxc`
--

CREATE TABLE `transaccionalvxc` (
  `no_factura` int(11) NOT NULL,
  `no_venta` varchar(8) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `nombre_cliente` varchar(60) DEFAULT NULL,
  `apellido_cliente` varchar(60) DEFAULT NULL,
  `proCodigo` int(11) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `proPrecios` double(60,2) DEFAULT NULL,
  `saldo_actual` decimal(12,2) DEFAULT NULL,
  `proNombre` varchar(60) DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `fecha_venta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `transaccionalvxc`
--

INSERT INTO `transaccionalvxc` (`no_factura`, `no_venta`, `id_vendedor`, `nombre_cliente`, `apellido_cliente`, `proCodigo`, `cantidad`, `proPrecios`, `saldo_actual`, `proNombre`, `dias_credito`, `total`, `fecha_venta`) VALUES
(6, '93', 3, 'Mailo', 'Melendez', 3034, 1, 10.00, 200.00, 'UNIDAD MANGO', 12, 210.00, '2025-05-22 08:48:38'),
(8, '99', 3, 'Cristian', 'Sipac', 2026, 1, 500.00, 250.00, ' PUYASO RES IMPORTADO EMPACADO', 12, 750.00, '2025-05-22 08:49:00'),
(9, '96', 4, 'Gus', 'Andrade', 2, 2, 150.00, 10.00, 'Pastel fresas con crema', 23, 310.00, '2025-05-22 13:28:12'),
(14, '88', 3, 'Pingu', 'Calderon', 3032, 2, 20.00, 0.00, 'LIBRA DE FRESAS', 7, 40.00, '2025-05-22 08:50:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`) VALUES
(84, 'NUEVO', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(85, 'NUEVO2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(87, 'ESDUARDO', 'b2b2f104d32c638903e151a9b20d6e27b41d8c0c84cf8458738f83ca2f1dd744'),
(2026, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id_vendedor` int(11) NOT NULL,
  `nombre_vendedor` varchar(65) DEFAULT NULL,
  `apellido_vendedor` varchar(65) DEFAULT NULL,
  `direccion_vendedor` varchar(80) DEFAULT NULL,
  `telefono_vendedor` varchar(50) DEFAULT NULL,
  `email_vendedor` varchar(80) DEFAULT NULL,
  `comision` varchar(80) DEFAULT NULL,
  `estatus_vendedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id_vendedor`, `nombre_vendedor`, `apellido_vendedor`, `direccion_vendedor`, `telefono_vendedor`, `email_vendedor`, `comision`, `estatus_vendedor`) VALUES
(1, 'Paola', 'Espinoza', 'Canalitos Delicias', '52721772', 'eandradel2@gmail.com', '2.9%', '1'),
(3, 'Victor', 'Gomez', 'Zona 5 23-4ta calle', '67890012', 'victorC12@gmail.com', '23%', '1'),
(4, 'Irma', 'Luna', 'zona18', '34567890', 'irmaluna@gmial.com', '2.5%', '1'),
(5, 'Sofia', 'Luna', 'canalitos', '67890045', 'sofia@gmail.com', '23.7%', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `no_venta` varchar(8) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`no_venta`, `id_cliente`, `id_producto`, `cantidad`, `precio_unitario`, `total`) VALUES
('25', 3, 10, 5, 5.00, 25.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`id_aplicacion`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra_cpp`
--
ALTER TABLE `compra_cpp`
  ADD PRIMARY KEY (`no_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `conciliacion_bancaria`
--
ALTER TABLE `conciliacion_bancaria`
  ADD PRIMARY KEY (`id_conciliacion`),
  ADD KEY `id_cuenta` (`id_cuenta`),
  ADD KEY `id_movimiento_bancario` (`id_movimiento_bancario`);

--
-- Indices de la tabla `cuentas_bancarias`
--
ALTER TABLE `cuentas_bancarias`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD KEY `id_banco` (`id_banco`),
  ADD KEY `id_tipo_cuenta` (`id_tipo_cuenta`),
  ADD KEY `id_tipo_moneda` (`id_tipo_moneda`);

--
-- Indices de la tabla `detalle_movimientos_bancarios`
--
ALTER TABLE `detalle_movimientos_bancarios`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_movimiento_bancario` (`id_movimiento_bancario`),
  ADD KEY `id_tipo_operacion` (`id_tipo_operacion`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id_metodo_pago`);

--
-- Indices de la tabla `movimientos_bancarios`
--
ALTER TABLE `movimientos_bancarios`
  ADD PRIMARY KEY (`id_movimiento_bancario`),
  ADD KEY `id_cuenta` (`id_cuenta`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `relperfapl`
--
ALTER TABLE `relperfapl`
  ADD PRIMARY KEY (`aplicacion_codigo`,`perfil_codigo`),
  ADD KEY `perfil_codigo` (`perfil_codigo`);

--
-- Indices de la tabla `relperfusu`
--
ALTER TABLE `relperfusu`
  ADD PRIMARY KEY (`id_usuario`,`id_perfil`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- Indices de la tabla `relusuapl`
--
ALTER TABLE `relusuapl`
  ADD PRIMARY KEY (`id_relusuapl`),
  ADD KEY `id_aplicacion` (`id_aplicacion`);

--
-- Indices de la tabla `tasas_cambio_diario`
--
ALTER TABLE `tasas_cambio_diario`
  ADD PRIMARY KEY (`id_tasa_cambio_diario`);

--
-- Indices de la tabla `tbl_bodegas`
--
ALTER TABLE `tbl_bodegas`
  ADD PRIMARY KEY (`bodCodigo`);

--
-- Indices de la tabla `tbl_existencias`
--
ALTER TABLE `tbl_existencias`
  ADD PRIMARY KEY (`proCodigo`,`bodCodigo`),
  ADD KEY `bodCodigo` (`bodCodigo`);

--
-- Indices de la tabla `tbl_lineas`
--
ALTER TABLE `tbl_lineas`
  ADD PRIMARY KEY (`linCodigo`);

--
-- Indices de la tabla `tbl_marcas`
--
ALTER TABLE `tbl_marcas`
  ADD PRIMARY KEY (`marCodigo`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`proCodigo`),
  ADD KEY `linCodigo` (`linCodigo`),
  ADD KEY `marCodigo` (`marCodigo`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`id_tipo_cuenta`);

--
-- Indices de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`id_tipo_moneda`);

--
-- Indices de la tabla `tipo_operacion_bancaria`
--
ALTER TABLE `tipo_operacion_bancaria`
  ADD PRIMARY KEY (`id_tipo_operacion`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `transaccionalvxc`
--
ALTER TABLE `transaccionalvxc`
  ADD PRIMARY KEY (`no_factura`,`no_venta`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `proCodigo` (`proCodigo`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`no_venta`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `id_banco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `compra_cpp`
--
ALTER TABLE `compra_cpp`
  MODIFY `no_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id_metodo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tasas_cambio_diario`
--
ALTER TABLE `tasas_cambio_diario`
  MODIFY `id_tasa_cambio_diario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bodegas`
--
ALTER TABLE `tbl_bodegas`
  MODIFY `bodCodigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_lineas`
--
ALTER TABLE `tbl_lineas`
  MODIFY `linCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_marcas`
--
ALTER TABLE `tbl_marcas`
  MODIFY `marCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `proCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  MODIFY `id_tipo_cuenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  MODIFY `id_tipo_moneda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_operacion_bancaria`
--
ALTER TABLE `tipo_operacion_bancaria`
  MODIFY `id_tipo_operacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra_cpp`
--
ALTER TABLE `compra_cpp`
  ADD CONSTRAINT `compra_cpp_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `relperfapl`
--
ALTER TABLE `relperfapl`
  ADD CONSTRAINT `relperfapl_ibfk_1` FOREIGN KEY (`aplicacion_codigo`) REFERENCES `aplicacion` (`id_aplicacion`),
  ADD CONSTRAINT `relperfapl_ibfk_2` FOREIGN KEY (`perfil_codigo`) REFERENCES `perfiles` (`id_perfil`);

--
-- Filtros para la tabla `relusuapl`
--
ALTER TABLE `relusuapl`
  ADD CONSTRAINT `relusuapl_ibfk_1` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`id_aplicacion`);

--
-- Filtros para la tabla `tbl_existencias`
--
ALTER TABLE `tbl_existencias`
  ADD CONSTRAINT `tbl_existencias_ibfk_1` FOREIGN KEY (`proCodigo`) REFERENCES `tbl_productos` (`proCodigo`),
  ADD CONSTRAINT `tbl_existencias_ibfk_2` FOREIGN KEY (`bodCodigo`) REFERENCES `tbl_bodegas` (`bodCodigo`);

--
-- Filtros para la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD CONSTRAINT `tbl_productos_ibfk_1` FOREIGN KEY (`linCodigo`) REFERENCES `tbl_lineas` (`linCodigo`),
  ADD CONSTRAINT `tbl_productos_ibfk_2` FOREIGN KEY (`marCodigo`) REFERENCES `tbl_marcas` (`marCodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
