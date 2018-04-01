-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2018 a las 23:00:45
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
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
`id_area` int(11) NOT NULL,
  `desc_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `l_activo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `desc_area`, `l_activo`) VALUES
(1, 'area1', 'A'),
(2, 'area2', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE IF NOT EXISTS `clase` (
`id_clase` int(11) NOT NULL,
  `desc_clase` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id_clase`, `desc_clase`) VALUES
(1, 'clase1'),
(2, 'clase2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto`
--

CREATE TABLE IF NOT EXISTS `concepto` (
`id_concepto` int(11) NOT NULL,
  `concepto_gasto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `concepto`
--

INSERT INTO `concepto` (`id_concepto`, `concepto_gasto`) VALUES
(1, 'MOVILIDAD'),
(2, 'BIEN'),
(3, 'SERVICIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
`id_meta` int(11) NOT NULL,
  `desc_meta` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `l_activo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `meta`
--

INSERT INTO `meta` (`id_meta`, `desc_meta`, `l_activo`) VALUES
(5, 'meta1', 'A'),
(6, 'meta2', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE IF NOT EXISTS `partida` (
`id_partida` int(11) NOT NULL,
  `desc_partida` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `partida`
--

INSERT INTO `partida` (`id_partida`, `desc_partida`) VALUES
(1, 'partida1'),
(2, 'partida2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`id_programa` int(11) NOT NULL,
  `desc_programa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_programa` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `desc_programa`, `estado_programa`) VALUES
(1, 'ODAJUD', 'A'),
(2, 'JUSTICIA EN LA COMUNIDAD', 'A'),
(3, 'LABORAL', 'A'),
(4, 'ADMINISTRACION', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
`id_proveedor` int(11) NOT NULL,
  `desc_proveedor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `desc_proveedor`) VALUES
(6, 'Proveedor 1'),
(7, 'Proveedor 2'),
(8, 'Proveedor 3'),
(9, 'Proveedor 4'),
(10, 'Proveedor 6'),
(11, 'proveedor 007'),
(12, 'proveedor 007'),
(13, 'proveedor 007'),
(14, 'proveedor 001'),
(15, 'proveedor 006'),
(16, 'proveedor 00256'),
(17, 'proveedor 00256'),
(18, 'prove 99'),
(19, 'proveedor 44'),
(20, 'proveedor 45'),
(21, 'proveedor fail new');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
`id_reporte` int(11) NOT NULL,
  `presupuesto` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_doc` date NOT NULL,
  `fecha` date NOT NULL,
  `clase_id` int(11) NOT NULL,
  `numero` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `dni_ruc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `detalle_gasto` text COLLATE utf8_spanish2_ci NOT NULL,
  `concepto_id` int(11) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `partida_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id_reporte`, `presupuesto`, `fecha_doc`, `fecha`, `clase_id`, `numero`, `dni_ruc`, `proveedor_id`, `detalle_gasto`, `concepto_id`, `importe`, `partida_id`, `programa_id`, `area_id`, `meta_id`) VALUES
(7, '', '0000-00-00', '2019-03-31', 1, '1', '46712206', 18, 'detalle007', 1, '46.63', 1, 1, 2, 5),
(8, '', '0000-00-00', '2019-03-01', 1, '22', '46712206', 18, 'detalle007', 1, '46.63', 1, 1, 2, 5),
(9, '', '0000-00-00', '2016-06-15', 1, '1', '5454545454', 8, '232323', 1, '232.66', 2, 2, 2, 5),
(10, '', '0000-00-00', '2020-03-06', 1, '12', '46712206', 18, 'detalle0078', 1, '146.63', 1, 1, 2, 5),
(13, '', '0000-00-00', '2020-05-05', 1, '20', '5454545', 13, 'detallesada', 1, '101.99', 1, 1, 2, 5),
(14, 'operacion', '2019-02-02', '2020-05-05', 1, '20', '5454545', 13, 'detallesada', 1, '101.99', 1, 1, 2, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
 ADD PRIMARY KEY (`id_clase`);

--
-- Indices de la tabla `concepto`
--
ALTER TABLE `concepto`
 ADD PRIMARY KEY (`id_concepto`);

--
-- Indices de la tabla `meta`
--
ALTER TABLE `meta`
 ADD PRIMARY KEY (`id_meta`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
 ADD PRIMARY KEY (`id_partida`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
 ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
 ADD PRIMARY KEY (`id_reporte`), ADD KEY `meta_id` (`meta_id`), ADD KEY `programa_id` (`programa_id`), ADD KEY `partidas_id` (`partida_id`), ADD KEY `prove_id` (`proveedor_id`), ADD KEY `clase_id` (`clase_id`), ADD KEY `arealaboral_id` (`area_id`), ADD KEY `clase_id_2` (`clase_id`), ADD KEY `clase_id_3` (`clase_id`), ADD KEY `programa_id_2` (`programa_id`), ADD KEY `partida_id` (`partida_id`), ADD KEY `clase_id_4` (`clase_id`), ADD KEY `concepto_id` (`concepto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
MODIFY `id_clase` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `concepto`
--
ALTER TABLE `concepto`
MODIFY `id_concepto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `meta`
--
ALTER TABLE `meta`
MODIFY `id_meta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
ADD CONSTRAINT `reporte_ibfk_10` FOREIGN KEY (`clase_id`) REFERENCES `clase` (`id_clase`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_11` FOREIGN KEY (`concepto_id`) REFERENCES `concepto` (`id_concepto`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id_meta`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_6` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id_programa`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_7` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id_partida`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_8` FOREIGN KEY (`area_id`) REFERENCES `area` (`id_area`) ON UPDATE CASCADE,
ADD CONSTRAINT `reporte_ibfk_9` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
