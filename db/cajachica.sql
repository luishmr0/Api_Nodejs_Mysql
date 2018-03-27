-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2018 a las 06:25:40
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cajachica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_laboral`
--

CREATE TABLE IF NOT EXISTS `area_laboral` (
`id_area` int(11) NOT NULL,
  `nombre_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `area_laboral`
--

INSERT INTO `area_laboral` (`id_area`, `nombre_area`) VALUES
(1, 'area1'),
(2, 'area2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE IF NOT EXISTS `clase` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
`id_meta` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `meta`
--

INSERT INTO `meta` (`id_meta`, `nombre`) VALUES
(1, 'meta1'),
(2, 'meta2'),
(3, 'meta3'),
(4, 'meta4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE IF NOT EXISTS `partidas` (
`id_partidas` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`id_programa` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_trabajdor`
--

CREATE TABLE IF NOT EXISTS `proveedor_trabajdor` (
`id_prove_trab` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedor_trabajdor`
--

INSERT INTO `proveedor_trabajdor` (`id_prove_trab`, `nombre`) VALUES
(6, 'Proveedor 1'),
(7, 'Proveedor 2'),
(8, 'Proveedor 3'),
(9, 'Proveedor 4'),
(10, 'Proveedor 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
`id_reporte` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clase` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `dni_ruc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `proveedor_trabajador_id` int(11) NOT NULL,
  `detalle_gasto` text COLLATE utf8_spanish2_ci NOT NULL,
  `importe` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `partidas` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `programa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `area_laboral_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id_reporte`, `fecha`, `clase`, `dni_ruc`, `proveedor_trabajador_id`, `detalle_gasto`, `importe`, `partidas`, `programa`, `area_laboral_id`, `meta_id`) VALUES
(1, '2018-03-08', 'clase1', '9695845', 6, 'detalle 001', '190', 'partida1', 'programa1', 1, 2),
(2, '2018-03-15', 'clase2', '1234124', 10, 'detalle 002', '250', 'partida2', 'programa1', 2, 3),
(3, '2018-03-25', 'clase6', '0000158', 6, 'detalle 003', '1905', 'partidademo', 'programademo', 1, 3),
(5, '2018-03-25', 'clase25', '0000158', 10, 'detalle 004', '1905', 'partidademo2', 'programademo2', 2, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
 ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meta`
--
ALTER TABLE `meta`
 ADD PRIMARY KEY (`id_meta`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
 ADD PRIMARY KEY (`id_partidas`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `proveedor_trabajdor`
--
ALTER TABLE `proveedor_trabajdor`
 ADD PRIMARY KEY (`id_prove_trab`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
 ADD PRIMARY KEY (`id_reporte`), ADD KEY `meta_id` (`meta_id`), ADD KEY `programa_id` (`programa`), ADD KEY `partidas_id` (`partidas`), ADD KEY `prove_id` (`proveedor_trabajador_id`), ADD KEY `clase_id` (`clase`), ADD KEY `arealaboral_id` (`area_laboral_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `meta`
--
ALTER TABLE `meta`
MODIFY `id_meta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
MODIFY `id_partidas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedor_trabajdor`
--
ALTER TABLE `proveedor_trabajdor`
MODIFY `id_prove_trab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id_meta`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_3` FOREIGN KEY (`proveedor_trabajador_id`) REFERENCES `proveedor_trabajdor` (`id_prove_trab`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_4` FOREIGN KEY (`area_laboral_id`) REFERENCES `area_laboral` (`id_area`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
