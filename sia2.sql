-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2023 a las 18:24:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sia2`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_stock` (IN `producto_id` INT, IN `cantidad` INT)   BEGIN
                UPDATE materiales SET STOCK = STOCK - cantidad WHERE ID_MATERIAL = producto_id;
            END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidad_juridica`
--

CREATE TABLE `calidad_juridica` (
  `ID_CALIDAD` int(10) UNSIGNED NOT NULL,
  `CALIDAD` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calidad_juridica`
--

INSERT INTO `calidad_juridica` (`ID_CALIDAD`, `CALIDAD`) VALUES
(1, 'PLANTA'),
(2, 'CONTRATA'),
(3, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `ID_CARGO` int(10) UNSIGNED NOT NULL,
  `CARGO` varchar(128) DEFAULT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`ID_CARGO`, `CARGO`, `ID_DIRECCION`) VALUES
(1, 'DIRECTOR REGIONAL', 16),
(2, 'JEFE DE DEPARTAMENTO JURIDICO', 16),
(3, 'JEFE DE DEPARTAMENTO DE FISCALIZACION', 16),
(4, 'JEFE DE DEPARTAMENTO DE ASISTENCIA', 16),
(5, 'JEFE DE DEPARTAMENTO DE AVALUACIONES', 16),
(6, 'JEFE DE DEPARTAMENTO DE PROCEDIMIENTOS ADMINISTRATIVOS', 16),
(7, 'JEFE DE DEPARTAMENTO DE ADMINISTRACION', 16),
(8, 'JEFE DE UNIDAD DE TALCAHUANO', 16),
(9, 'JEFE DE UNIDAD DE LOS ANGELES', 16),
(10, 'JEFE DE UNIDAD DE LEBU', 16),
(11, 'JEFE DE GRUPO CONCEPCION 1', 16),
(12, 'JEFE DE GRUPO CONCEPCION 2', 16),
(13, 'JEFE DE GRUPO CONCEPCION 3', 16),
(14, 'JEFE DE GRUPO CONCEPCION 4', 16),
(15, 'JEFE DE GRUPO CONCEPCION 5', 16),
(16, 'JEFE DE GRUPO CONCEPCION 6', 16),
(17, 'JEFE DE GRUPO CONCEPCION 7', 16),
(18, 'JEFE DE GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO (CTT)', 16),
(19, 'JEFE GRUPO N° 1 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(20, 'JEFE GRUPO N° 2 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(21, 'JEFE GRUPO N° 3 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(22, 'JEFE GRUPO N° 1 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(23, 'JEFE GRUPO N° 2 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(24, 'JEFE GRUPO N° 3 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(25, 'JEFE GRUPO N° 4 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(26, 'JEFE GRUPO N° 1 FISCALIZACION UNIDAD DE CHILLAN', 15),
(27, 'JEFE GRUPO N° 2 FISCALIZACION UNIDAD DE CHILLAN', 15),
(28, 'JEFE GRUPO N° 1 FISCALIZACION UNIDAD DE LOS ANGELES', 16),
(29, 'JEFE GRUPO N° 2 FISCALIZACION UNIDAD DE LOS ANGELES', 16),
(30, 'JEFE GRUPO N° 1 FISCALIZACION TALCAHUANO', 16),
(31, 'JEFE DE UNIDAD DE CHILLAN', 15),
(32, 'JEFE DE UNIDAD DE SAN CARLOS', 15),
(33, 'JEFE DE GRUPO N°1 AVALUACIONES', 16),
(35, 'JEFE DE UNIDAD DE LA UNION', 18),
(36, 'JEDE DE UNIDAD DE LANCO', 18),
(37, 'JEDE DE UNIDAD DE PANGUIPULLI', 18),
(39, 'DIRECTOR REGIONAL', 18),
(40, 'JEFE DE DEPARTAMENTO JURIDICO', 18),
(41, 'JEFE DE DEPARTAMENTO DE FISCALIZACION', 18),
(42, 'JEFE DE DEPARTAMENTO DE ASISTENCIA', 18),
(43, 'JEFE DE DEPARTAMENTO DE AVALUACIONES', 18),
(44, 'JEFE DE OFICINA DE PROCEDIMIENTOS ADMINISTRATIVOS', 18),
(45, 'JEFE DE DEPARTAMENTO DE ADMINISTRACION', 18),
(46, 'JEFE DE GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO (CTT)', 18),
(47, 'JEFE DE GRUPO N°1 AVALUACIONES', 18),
(48, 'JEFE DE OFICINA PROCEDIMIENTOS ADMINISTRATIVOS', 18),
(49, 'JEFE GRUPO N° 3 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(50, 'JEFE GRUPO N° 1 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(51, 'JEFE GRUPO N° 2 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(99, 'FUNCIONARIO', 16),
(991, 'FUNCIONARIO', 18),
(999, 'EXTERNO', 16),
(9991, 'EXTERNO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_salas`
--

CREATE TABLE `categoria_salas` (
  `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL,
  `CATEGORIA_SALA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_salas`
--

INSERT INTO `categoria_salas` (`ID_CATEGORIA_SALA`, `CATEGORIA_SALA`) VALUES
(1, 'SALAS'),
(2, 'BODEGAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `ID_COMUNA` int(10) UNSIGNED NOT NULL,
  `COMUNA` varchar(128) DEFAULT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`ID_COMUNA`, `COMUNA`, `ID_REGION`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Tal-tal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'María Elena', 3),
(20, 'Tocopilla', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paihuano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Rio Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quilpué', 6),
(51, 'Quintero', 6),
(52, 'Villa Alemana', 6),
(53, 'Viña del Mar', 6),
(54, 'Zapallar', 6),
(55, 'La Ligua', 6),
(56, 'Papudo', 6),
(57, 'Petorca', 6),
(58, 'Cabildo', 6),
(59, 'Calle Larga', 6),
(60, 'Los Andes', 6),
(61, 'Rinconada', 6),
(62, 'San Esteban', 6),
(63, 'La Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'Quillota', 6),
(68, 'Buin', 7),
(69, 'Limache', 6),
(70, 'Olmue', 6),
(71, 'Cerrillos', 7),
(72, 'Cerro Navia', 7),
(73, 'Conchalí', 7),
(74, 'El Bosque', 7),
(75, 'Estación Central', 7),
(76, 'Huechuraba', 7),
(77, 'Independencia', 7),
(78, 'La Cisterna', 7),
(79, 'La Florida', 7),
(80, 'La Granja', 7),
(81, 'La Pintana', 7),
(82, 'La Reina', 7),
(83, 'Las Condes', 7),
(84, 'Lo Barnechea', 7),
(85, 'Lo Espejo', 7),
(86, 'Lo Prado', 7),
(87, 'Macul', 7),
(88, 'Maipú', 7),
(89, 'Ñuñoa', 7),
(90, 'Pedro Aguirre Cerda', 7),
(91, 'Peñalolén', 7),
(92, 'Providencia', 7),
(93, 'Pudahuel', 7),
(94, 'Puente Alto', 7),
(95, 'Quilicura', 7),
(96, 'Quinta Normal', 7),
(97, 'Recoleta', 7),
(98, 'Renca', 7),
(99, 'San Bernardo', 7),
(100, 'San Joaquín', 7),
(101, 'San José de Maipo', 7),
(102, 'San Miguel', 7),
(103, 'San Pedro', 7),
(104, 'San Ramón', 7),
(105, 'Santiago Centro', 7),
(106, 'Vitacura', 7),
(107, 'Rancagua', 11),
(108, 'Codegua', 11),
(109, 'Coinco', 11),
(110, 'Coltauco', 11),
(111, 'Doñihue', 11),
(112, 'Graneros', 11),
(113, 'Las Cabras', 11),
(114, 'Machalí', 11),
(115, 'Malloa', 11),
(117, 'Olivar', 11),
(118, 'Peumo', 11),
(119, 'Pichidegua', 11),
(120, 'Quinta de Tilcoco', 11),
(121, 'Rengo', 11),
(122, 'Requínoa', 11),
(123, 'San Vicente', 11),
(124, 'Talca', 9),
(125, 'Constitución', 9),
(126, 'Curepto', 9),
(127, 'Empedrado', 9),
(128, 'Maule', 9),
(129, 'Pelarco', 9),
(130, 'Pencahue', 9),
(131, 'Rio Claro', 9),
(132, 'San Clemente', 9),
(133, 'San Rafael', 9),
(134, 'Cauquenes', 9),
(135, 'Chanco', 9),
(136, 'Pelluhue', 9),
(137, 'Curicó', 9),
(138, 'Hualañé', 9),
(139, 'Licantén', 9),
(140, 'Molina', 9),
(141, 'Rauco', 9),
(142, 'Romeral', 9),
(143, 'Sagrada Familia', 9),
(144, 'Teno', 9),
(145, 'Vichuquén', 9),
(146, 'Linares', 9),
(147, 'Colbún', 9),
(148, 'Longaví', 9),
(149, 'Parral', 9),
(150, 'Retiro', 9),
(151, 'San Javier', 9),
(152, 'Villa Alegre', 9),
(153, 'Yerbas Buenas', 9),
(154, 'Chillán', 10),
(155, 'Bulnes', 10),
(156, 'Chillán Viejo', 10),
(157, 'El Carmen', 10),
(158, 'Pemuco', 10),
(159, 'Pinto', 10),
(160, 'Quillón', 10),
(161, 'San Ignacio', 10),
(162, 'Yungay', 10),
(163, 'Cobquecura', 10),
(164, 'Coelemu', 10),
(165, 'Ninhue', 10),
(166, 'Portezuelo', 10),
(167, 'Quirihue', 10),
(168, 'Ránquil', 10),
(169, 'Treguaco', 10),
(170, 'San Carlos', 10),
(171, 'Coihueco', 10),
(172, 'Ñiquén', 10),
(173, 'San Fabián', 10),
(174, 'San Nicolás', 10),
(175, 'Concepción', 8),
(176, 'Coronel', 8),
(177, 'Chiguayante', 8),
(178, 'Florida', 8),
(179, 'Hualqui', 8),
(180, 'Lota', 8),
(181, 'Penco', 8),
(182, 'San Pedro de la Paz', 8),
(183, 'Santa Juana', 8),
(184, 'Talcahuano', 8),
(185, 'Tomé', 8),
(186, 'Hualpén', 8),
(187, 'Lebu', 8),
(188, 'Arauco', 8),
(189, 'Cañete', 8),
(190, 'Contulmo', 8),
(191, 'Curanilahue', 8),
(192, 'Los Álamos', 8),
(193, 'Tirúa', 8),
(194, 'Los Angeles', 8),
(195, 'Antuco', 8),
(196, 'Cabrero', 8),
(197, 'Laja', 8),
(198, 'Mulchén', 8),
(199, 'Nacimiento', 8),
(200, 'Negrete', 8),
(201, 'Quilaco', 8),
(202, 'Quilleco', 8),
(203, 'San Rosendo', 8),
(204, 'Santa Bárbara', 8),
(205, 'Tucapel', 8),
(206, 'Yumbel', 8),
(207, 'Alto Biobío', 8),
(208, 'Temuco', 12),
(209, 'Carahue', 12),
(210, 'Cunco', 12),
(211, 'Curarrehue', 12),
(212, 'Freire', 12),
(213, 'Galvarino', 12),
(214, 'Gorbea', 12),
(215, 'Lautaro', 12),
(216, 'Loncoche', 12),
(217, 'Melipeuco', 12),
(218, 'Nueva Imperial', 12),
(219, 'Padre las Casas', 12),
(220, 'Perquenco', 12),
(221, 'Pitrufquén', 12),
(222, 'Pucón', 12),
(223, 'Saavedra', 12),
(224, 'Teodoro Schmidt', 12),
(225, 'Toltén', 12),
(226, 'Vilcún', 12),
(227, 'Villarrica', 12),
(228, 'Cholchol', 12),
(229, 'Angol', 12),
(230, 'Collipulli', 12),
(231, 'Curacautín', 12),
(232, 'Ercilla', 12),
(233, 'Lonquimay', 12),
(234, 'Los Sauces', 12),
(235, 'Lumaco', 12),
(236, 'Purén', 12),
(237, 'Renaico', 12),
(238, 'Traiguén', 12),
(239, 'Victoria', 12),
(240, 'Valdivia', 13),
(241, 'Corral', 13),
(242, 'Lanco', 13),
(243, 'Los Lagos', 13),
(244, 'Máfil', 13),
(245, 'Mariquina', 13),
(246, 'Paillaco', 13),
(247, 'Panguipulli', 13),
(248, 'La Unión', 13),
(249, 'Futrono', 13),
(250, 'Lago Ranco', 13),
(251, 'Río Bueno', 13),
(252, 'Puerto Montt', 14),
(253, 'Calbuco', 14),
(254, 'Cochamó', 14),
(255, 'Fresia', 14),
(256, 'Frutillar', 14),
(257, 'Los Muermos', 14),
(258, 'Llanquihue', 14),
(259, 'Maullín', 14),
(260, 'Puerto Varas', 14),
(261, 'Castro', 14),
(262, 'Ancud', 14),
(263, 'Chonchi', 14),
(264, 'Curaco de Vélez', 14),
(265, 'Dalcahue', 14),
(266, 'Puqueldón', 14),
(267, 'Queilén', 14),
(268, 'Quellón', 14),
(269, 'Quemchi', 14),
(270, 'Quinchao', 14),
(271, 'Osorno', 14),
(272, 'Puerto Octay', 14),
(273, 'Purranque', 14),
(274, 'Puyehue', 14),
(275, 'Río Negro', 14),
(276, 'San Juan de la Costa', 14),
(277, 'San Pablo', 14),
(278, 'Coyhaique', 15),
(279, 'Lago Verde', 15),
(280, 'Aysén', 15),
(281, 'Cisnes', 15),
(282, 'Guaitecas', 15),
(283, 'Cochrane', 15),
(284, 'OHiggins', 15),
(285, 'Tortel', 15),
(286, 'Punta Arenas', 16),
(287, 'Laguna Blanca', 16),
(288, 'Río Verde', 16),
(289, 'San Gregorio', 16),
(290, 'Cabo de Hornos', 16),
(292, 'Porvenir', 16),
(293, 'Primavera', 16),
(294, 'Timaukel', 16),
(295, 'Puerto Natales', 16),
(296, 'Torres del Paine', 16),
(297, 'Algarrobo', 6),
(298, 'Cartagena', 6),
(299, 'Catemu', 6),
(300, 'El Quisco', 6),
(301, 'EL Tabo', 6),
(302, 'Isla de Pascua', 6),
(303, 'Llaillay', 6),
(304, 'Putaendo', 6),
(305, 'Panquehue', 6),
(306, 'San Felipe', 6),
(307, 'San Antonio', 6),
(308, 'Santa Maria', 6),
(309, 'Santo Domingo', 6),
(310, 'Chepica', 11),
(311, 'Chimbarongo', 11),
(312, 'La Estrella', 11),
(313, 'Litueche', 11),
(314, 'Lolol', 11),
(315, 'Marchihue', 11),
(316, 'Mostazal', 11),
(317, 'Nancagua', 11),
(318, 'Navidad', 11),
(319, 'Palmilla', 11),
(320, 'Paredones', 11),
(321, 'Peralillo', 11),
(322, 'Pichilemu', 11),
(323, 'Placilla', 11),
(324, 'Pumanque', 11),
(325, 'San Fernando', 11),
(326, 'Santa Cruz', 11),
(327, 'Los Alamos', 8),
(328, 'Chaitén', 14),
(329, 'Futaleufú', 14),
(330, 'Hualaihué', 14),
(331, 'Palena', 14),
(332, 'Chile Chico', 14),
(333, 'Rio Ibañez', 14),
(334, 'Antártica', 16),
(335, 'Alhué', 7),
(336, 'Calera de Tango', 7),
(337, 'Colina', 7),
(338, 'Curacaví', 7),
(339, 'El Monte', 7),
(340, 'Isla Del Maipo', 7),
(341, 'Lampa', 7),
(342, 'María Pinto', 7),
(343, 'Melipilla', 7),
(344, 'Padre Hurtado', 7),
(345, 'Paine', 7),
(346, 'Peñaflor', 7),
(347, 'Pirque', 7),
(348, 'Talagante', 7),
(349, 'Tiltil', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones_regionales`
--

CREATE TABLE `direcciones_regionales` (
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL,
  `DIRECCION` varchar(128) DEFAULT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direcciones_regionales`
--

INSERT INTO `direcciones_regionales` (`ID_DIRECCION`, `DIRECCION`, `ID_REGION`) VALUES
(1, 'DIRECCION REGIONAL DE ARICA', 1),
(2, 'DIRECCION REGIONAL DE IQUIQUE', 2),
(3, 'DIRECCION REGIONAL DE ANTOFAGASTA', 3),
(4, 'DIRECCION REGIONAL DE COPIAPO', 4),
(5, 'DIRECCION REGIONAL DE LA SERENA', 5),
(6, 'DIRECCION REGIONAL DE VALPARAISO', 6),
(7, 'DIRECCION NACIONAL', 7),
(8, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO PONIENTE', 7),
(9, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO SUR', 7),
(10, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO NORTE', 7),
(11, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO ORIENTE', 7),
(12, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO CENTRO', 7),
(13, 'DIRECCION REGIONAL DE RANCAGUA', 11),
(14, 'DIRECCION REGIONAL DE TALCA', 9),
(15, 'DIRECCION REGIONAL DE CHILLAN', 10),
(16, 'DIRECCION REGIONAL DE CONCEPCION', 8),
(17, 'DIRECCION REGIONAL DE TEMUCO', 12),
(18, 'DIRECCION REGIONAL DE VALDIVIA', 13),
(19, 'DIRECCION REGIONAL DE PUERTO MONTT', 14),
(20, 'DIRECCION REGIONAL DE COYHAIQUE', 15),
(21, 'DIRECCION REGIONAL DE PUNTA ARENAS', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `ID_EQUIPO` int(10) UNSIGNED NOT NULL,
  `MARCA_EQUIPO` varchar(128) DEFAULT NULL,
  `MODELO_EQUIPO` varchar(128) DEFAULT NULL,
  `ESTADO_EQUIPO` varchar(128) DEFAULT NULL,
  `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID_EQUIPO`, `MARCA_EQUIPO`, `MODELO_EQUIPO`, `ESTADO_EQUIPO`, `ID_TIPO_EQUIPOS`) VALUES
(1, 'HP', 'HP', 'DISPONIBLE', 1),
(2, 'LENOVO', 'T420', 'DISPONIBLE', 1),
(3, 'SAMSUNG', 'S', 'DISPONIBLE', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escalafon`
--

CREATE TABLE `escalafon` (
  `ID_ESCALAFON` int(10) UNSIGNED NOT NULL,
  `ESCALAFON` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `escalafon`
--

INSERT INTO `escalafon` (`ID_ESCALAFON`, `ESCALAFON`) VALUES
(1, 'TECNICO EN FISCALIZACION'),
(2, 'ADMINISTRATIVO'),
(3, 'FISCALIZADOR TRIBUTARIO'),
(4, 'PROFESIONAL'),
(5, 'DIRECTIVO'),
(6, 'AUXILIAR'),
(7, 'TECNICO EN INFORMATICA'),
(8, 'TECNICO EN AVALUACIONES'),
(9, 'FISCALIZADOR TASADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `ID_FACULTAD` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(128) NOT NULL,
  `CONTENIDO` text NOT NULL,
  `LEY_ASOCIADA` varchar(128) NOT NULL,
  `ART_LEY_ASOCIADA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`ID_FACULTAD`, `NOMBRE`, `CONTENIDO`, `LEY_ASOCIADA`, `ART_LEY_ASOCIADA`) VALUES
(1, 'CITAR CONFORME ART 63 CT', 'PRIMERO: Delego la facultad de citar a los contribuyentes de conformidad a lo previsto en el artículo 63 inciso Segundo del Código Tributario, conceder las prórrogas solicitadas, hasta por un mes, del plazo referido en el inciso citado y solicitar antecedentes de conformidad a lo dispuesto en el inciso tercero de la norma legal en comento.\n                                SEGUNDO: Los documentos que se emitan en virtud de esta delegación de facultades deberán citar el número y fecha de la presente Resolución e incluir, antes de la firma del delegado, la frase \"Por orden del Director Regional\". ', 'Código Tributario', '63'),
(2, 'APLICAR SANCIONES ADMINISTRATIVAS 97 N° 15 Y 16 Y EN EL ARTICULO 109', 'La facultad de aplicar las sanciones administrativas que correspondan respecto de las infracciones tributarias previstas y tipificadas en los artículos 97 N° 15 y 16 y en el artículo 109, todos del Código Tributario, cuando no se haya reclamado de ellas, como asimismo, para conceder las condonaciones que se soliciten respecto de las sanciones que les corresponda aplicar, o disponer la anulación de las referidas infracciones siempre que se cumplan las condiciones establecidas en las resoluciones e instrucciones dictadas al efecto. ', 'Código Tributario', '165'),
(3, 'TERMINAR FRANQUICIAS DFL 2 de 1959', 'Facultad de dejar sin efecto o caducar los beneficios, franquicias y exenciones de aquellas viviendas económicas en que se comprobare la existencia de alguna infracción, en conformidad a lo establecido en el artículo 50 del D.F.L. N° 2, de 1959, como asimismo, para declarar la caducidad de dichos beneficios, franquicias y exenciones en los casos previstos en el artículo 18 del mismo cuerpo legal. ', 'DFL N° 2 DE 1959', '50'),
(4, 'REQUERIR INFORMACION A MUNICIPALIDADES AVALUO SITIOS NO EDIFICADOS, PROPIEDADES ABANDONADAS, POZOS LASTREROS. 1', 'La facultad de requerir información a las Municipalidades, conforme a lo previsto en los artículos 83 y 87 del Código Tributario, y/o dar respuesta a los requerimientos de información de éstas, en los casos que ello sea pertinente, en el curso de la tramitación de los procedimientos administrativos referidos en la Circular N° 54 de 2012. (esta circular fue dejada sin efecto por la Circular 7 de 2017)', 'Código Tributario', '87'),
(5, 'REQUERIR INFORMACION A MUNICIPALIDADES AVALUO SITIOS NO EDIFICADOS, PROPIEDADES ABANDONADAS, POZOS LASTREROS. 2', 'Delegase la facultad de requerir información a las Municipalidades, conforme a lo previsto en el artículo 87 del Código Tributario, y/o dar respuesta a los requerimientos de información de éstas, en los casos que ello sea pertinente, en el curso de la tramitación de los procedimientos administrativos referidos en la Circular N° 54 de 2012. (esta circular fue dejada sin efecto por la Circular 7 de 2017)', 'Código Tributario', '87'),
(6, 'APLICAR SANCIONES ADMINISTRATIVAS 97 NUMEROS 3, 6, 7, 10, 15, 16, 17, 19, 20 y 21 Y EN EL ARTICULO 109', 'Aplicar las sanciones administrativas que correspondan respecto de las infracciones tributarias previstas y tipificadas en el artículo 97 números 3, 6, 7, 10, 15, 16, 17, 19, 20 y 21 y en el artículo 109, ambos del Código Tributario, contenido en el artículo 10 del D.C. 830 de 1974, cuando no se haya reclamado de ellas, y además, conceder las condonaciones que se soliciten respecto de las sanciones que les corresponda aplicar, siempre que se cumplan las condiciones establecidas en las resoluciones e instrucciones dictadas al efecto; \n                                El funcionario designado, al hacer uso de las facultades delegadas, deberá mencionar la presente Resolución, por su número y fecha, y anteponer a su firma la frase \"Por orden del Director Regional\". ', 'Código Tributario', '165'),
(7, 'RESOLVER PETICIONES FUNDADAS EN VICIOS O ERRORES MANIFIESTOS', 'Resolver administrativamente, de acuerdo a lo señalado en el artículo 60, letra B, NO 5 del Código Tributario, contenido en el artículo 10 del D.C. 830 de 1974, las peticiones de revisión fundadas en vicios o errores manifiestos que se deduzcan en cualquier tiempo, respecto de las liquidaciones, giros o resoluciones que incidan en el pago de un impuesto o en los elementos que sirvan de base para determinarlo o que denieguen cualquiera de las peticiones a que se refiere el artículo 126 del citado cuerpo legal; \n                                El funcionario designado, al hacer uso de las facultades delegadas, deberá mencionar la presente Resolución, por su número y fecha, y anteponer a su firma la frase \"Por orden del Director Regional\". ', 'Código Tributario', '6 Letra B N° 5'),
(8, 'RESOLVER RECURSOS DE REPOSICION ADMINISTRATIVA', 'Resolver los recursos de reposición administrativa interpuestos por los contribuyentes de acuerdo con lo dispuesto en el artículo 123 bis del Código Tributario, respecto de las resoluciones, giros y liquidaciones dictadas por la respectiva Dirección Regional. \n                                El funcionario designado, al hacer uso de las facultades delegadas, deberá mencionar la presente Resolución, por su número y fecha, y anteponer a su firma la frase \"Por orden del Director Regional\". ', 'Código Tributario', '123 BIS'),
(9, 'REQUERIR INFORMACION A MUNICIPALIDADES AVALUO SITIOS NO EDIFICADOS, PROPIEDADES ABANDONADAS, POZOS LASTREROS. 1', 'Delegase en el Jefe del Departamento de Avaluaciones de la VIII Dirección Regional y en los Jefes de las Unidades dependientes de la VIII Dirección Concepción, la facultad de requerir información a las Municipalidades, conforme a lo previsto en los artículos 83 y 87 del Código Tributario, y/o dar respuesta a los requerimientos de información de éstas, en los casos que ello sea pertinente, en el curso de la tramitación de los procedimientos administrativos referidos en la Circular N° 14 de 2012. (esta circular fue dejada sin efecto por la Circular 54 de 2012)', 'Código Tributario', '87'),
(10, 'FIRMAR RESOLUCIONES SOBRE CONCESIONES MARITIMAS', 'Delégase, en el Jefe del Departamento de Avaluaciones de la VIII Dirección Regional, la facultad de firmar las resoluciones que fijan el valor comercial de las mejoras fiscales incluidas en las solicitudes de concesiones marítimas mayores o menores, o de su renovación, y permisos o autorizaciones que se relacionen con ellas. ', 'Código Tributario', '69 N° 3'),
(11, 'APLICAR SANCIONES ADMINISTRATIVAS 165 CT', '(?)', '(?)', '(?)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios`
--

CREATE TABLE `formularios` (
  `ID_FORMULARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_FORMULARIO` varchar(128) DEFAULT NULL,
  `TIPO_FORMULARIO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `formularios`
--

INSERT INTO `formularios` (`ID_FORMULARIO`, `NOMBRE_FORMULARIO`, `TIPO_FORMULARIO`) VALUES
(1, 'F1816', 'TIPO B'),
(2, 'F2121', 'TIPO B'),
(3, 'F2816', 'TIPO B'),
(4, 'F2890', 'TIPO B'),
(5, 'F2899', 'TIPO B'),
(6, 'F2900', 'TIPO B'),
(7, 'F3230', 'TIPO B'),
(8, 'F3239', 'TIPO B'),
(9, 'F4415', 'TIPO B'),
(10, 'F4416', 'TIPO B'),
(11, 'F4417', 'TIPO B'),
(12, 'F4418', 'TIPO B'),
(13, 'F0024', 'TIPO B'),
(14, 'FF0024,1', 'TIPO C'),
(15, 'F1575', 'TIPO C'),
(16, 'F2117', 'TIPO C'),
(17, 'Q314', 'TIPO C'),
(18, 'F2771', 'TIPO C'),
(19, 'F2772', 'TIPO C'),
(20, 'Q772.1', 'TIPO C'),
(21, 'Q773', 'TIPO C'),
(22, 'F2773', 'TIPO C'),
(23, 'Q794', 'TIPO C'),
(24, '22895', 'TIPO C'),
(25, 'F3217', 'TIPO C'),
(26, 'F3280', 'TIPO C'),
(27, 'F3285', 'TIPO C'),
(28, 'F3294', 'TIPO C'),
(29, 'F3300', 'TIPO C'),
(30, 'F3301', 'TIPO C'),
(31, 'F3302', 'TIPO C'),
(32, 'F3317', 'TIPO C'),
(33, 'F4423', 'TIPO C'),
(34, 'FNC37', 'TIPO C'),
(35, 'FNC38', 'TIPO C'),
(36, 'FNC47', 'TIPO C'),
(37, 'FNC91', 'TIPO C'),
(38, 'F3238', 'TIPO C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `ID_GRADO` int(10) UNSIGNED NOT NULL,
  `GRADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`ID_GRADO`, `GRADO`) VALUES
(1, 4),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15),
(11, 16),
(12, 17),
(13, 18),
(14, 19),
(15, 20),
(16, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `ID_GRUPO` int(10) UNSIGNED NOT NULL,
  `GRUPO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`ID_GRUPO`, `GRUPO`) VALUES
(1, 'GRUPO N°1 FISCALIZACIÓN'),
(2, 'GRUPO N°2 FISCALIZACIÓN'),
(3, 'GRUPO N°3 FISCALIZACIÓN'),
(4, 'GRUPO N°4 FISCALIZACIÓN'),
(5, 'GRUPO N°5 FISCALIZACIÓN'),
(6, 'GRUPO N°6 FISCALIZACIÓN'),
(7, 'GRUPO N°7 FISCALIZACIÓN'),
(8, 'GRUPO N°1 AVALUACIONES'),
(9, 'GRUPO N°2 AVALUACIONES'),
(10, 'GRUPO N°1 ATENCIÓN DE CONTRIBUYENTES'),
(11, 'GRUPO N°2 ATENCIÓN DE CONTRIBUYENTES'),
(12, 'GRUPO N°1 INFORMACIÓN Y ASISTENCIA'),
(13, 'GRUPO N°1 ATENCIÓN Y ASISTENCIA'),
(14, 'GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO'),
(15, 'GRUPO AVALUACIONES'),
(99, 'NO PERTENECE A GRUPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inexistentes`
--

CREATE TABLE `inexistentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_FORMULARIO` int(11) NOT NULL,
  `RUT` varchar(20) DEFAULT NULL,
  `NOMBRE` varchar(128) DEFAULT NULL,
  `MATERIAL` varchar(128) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `MOTIVO` varchar(1000) DEFAULT NULL,
  `FECHA_PETICION` date DEFAULT NULL,
  `ESTADO` varchar(128) DEFAULT NULL,
  `OBSERVACIONES` varchar(1000) DEFAULT NULL,
  `ID_USUARIO` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `ID_MATERIAL` int(10) UNSIGNED NOT NULL,
  `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL,
  `NOMBRE_MATERIAL` varchar(128) DEFAULT NULL,
  `STOCK` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`ID_MATERIAL`, `ID_TIPO_MAT`, `NOMBRE_MATERIAL`, `STOCK`, `created_at`, `updated_at`) VALUES
(1, 1, 'ESCOBA', 10, NULL, '2023-07-21 13:56:43'),
(2, 1, 'CLORO', 50, NULL, NULL),
(3, 2, 'LAPIZ PASTA ROJO', 93, NULL, NULL),
(4, 2, 'LAPIZ PASTA AZUL', 95, NULL, NULL),
(6, 2, 'LAPIZ CORRECTOR', 63, NULL, NULL),
(7, 3, 'MOUSE INALAMBRICO', 6, NULL, NULL),
(8, 3, 'TECLADO INALAMBRICO', 10, NULL, NULL),
(9, 3, 'AURICULARES', 12, NULL, NULL),
(10, 4, 'TELEVISION', 2, NULL, NULL),
(11, 4, 'MICRONDAS', 2, NULL, NULL),
(12, 4, 'HORNO ELECTRICO', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_23_025644_create_sessions_table', 1),
(7, '2023_02_24_221120_create_materiales_table', 1),
(8, '2023_02_25_033652_create_vehiculos_table', 1),
(9, '2023_03_08_155211_create_solicitud_materiales_table', 1),
(10, '2023_03_17_204021_create_tipo_reparacion_table', 1),
(12, '2023_03_23_152835_create_solicitud_reparacion_vehiculos_table', 1),
(13, '2023_03_23_160041_create_tipo_vehiculos_table', 1),
(14, '2023_03_23_162052_create_tipo_servicios_table', 1),
(15, '2023_03_26_182728_create_formularios_table', 1),
(16, '2023_03_27_144811_create_solicitud_formularios_table', 1),
(17, '2023_03_30_145841_create_tipo_equipos_table', 1),
(18, '2023_03_31_152130_create_equipos_table', 1),
(19, '2023_03_31_154823_create_solicitud_equipos_table', 1),
(20, '2023_04_06_164511_create_categoria_salas_table', 1),
(21, '2023_04_06_180026_create_salas_table', 1),
(22, '2023_04_06_180053_create_solicitud_salas_table', 1),
(23, '2023_04_30_183917_create_permission_tables', 1),
(24, '2023_05_09_153043_create_solicitud_bodegas_table', 1),
(26, '2023_05_15_145345_actualizar_stock_procedure', 1),
(27, '2023_06_02_111429_create_comunas_table', 1),
(28, '2023_06_06_063106_create_resoluciones_table', 1),
(29, '2023_06_08_013121_create_polizas_table', 1),
(30, '2023_06_13_195421_create_facultades_table', 1),
(31, '2023_06_14_043713_create_tipo_resoluciones_table', 1),
(32, '2023_06_19_144119_create_inexistentes_table', 1),
(36, '2023_05_12_154932_create_rel_fun_veh_table', 4),
(37, '2023_03_17_205130_create_rel_fun_rep_general_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 27),
(5, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 10),
(5, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 12),
(5, 'App\\Models\\User', 18),
(5, 'App\\Models\\User', 20),
(5, 'App\\Models\\User', 22),
(5, 'App\\Models\\User', 23),
(5, 'App\\Models\\User', 24),
(5, 'App\\Models\\User', 25),
(5, 'App\\Models\\User', 26),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 30),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 32),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(5, 'App\\Models\\User', 37),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 39),
(5, 'App\\Models\\User', 40),
(5, 'App\\Models\\User', 41),
(5, 'App\\Models\\User', 42),
(5, 'App\\Models\\User', 43),
(5, 'App\\Models\\User', 44),
(5, 'App\\Models\\User', 45),
(5, 'App\\Models\\User', 46),
(5, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 48),
(5, 'App\\Models\\User', 49),
(5, 'App\\Models\\User', 50),
(5, 'App\\Models\\User', 51),
(5, 'App\\Models\\User', 52),
(5, 'App\\Models\\User', 53),
(5, 'App\\Models\\User', 54),
(5, 'App\\Models\\User', 55),
(5, 'App\\Models\\User', 56),
(5, 'App\\Models\\User', 58),
(5, 'App\\Models\\User', 59),
(5, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 61),
(5, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63),
(5, 'App\\Models\\User', 64),
(5, 'App\\Models\\User', 65),
(5, 'App\\Models\\User', 66),
(5, 'App\\Models\\User', 67),
(5, 'App\\Models\\User', 68),
(5, 'App\\Models\\User', 69),
(5, 'App\\Models\\User', 70),
(5, 'App\\Models\\User', 71),
(5, 'App\\Models\\User', 72),
(5, 'App\\Models\\User', 73),
(5, 'App\\Models\\User', 74),
(5, 'App\\Models\\User', 75),
(5, 'App\\Models\\User', 76),
(5, 'App\\Models\\User', 77),
(5, 'App\\Models\\User', 78),
(5, 'App\\Models\\User', 79),
(5, 'App\\Models\\User', 80),
(5, 'App\\Models\\User', 81),
(5, 'App\\Models\\User', 82),
(5, 'App\\Models\\User', 83),
(5, 'App\\Models\\User', 84),
(5, 'App\\Models\\User', 85),
(5, 'App\\Models\\User', 86),
(5, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(5, 'App\\Models\\User', 95),
(5, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 97),
(5, 'App\\Models\\User', 98),
(5, 'App\\Models\\User', 99),
(5, 'App\\Models\\User', 100),
(5, 'App\\Models\\User', 101),
(5, 'App\\Models\\User', 102),
(5, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(5, 'App\\Models\\User', 107),
(5, 'App\\Models\\User', 108),
(5, 'App\\Models\\User', 109),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(5, 'App\\Models\\User', 112),
(5, 'App\\Models\\User', 113),
(5, 'App\\Models\\User', 114),
(5, 'App\\Models\\User', 115),
(5, 'App\\Models\\User', 116),
(5, 'App\\Models\\User', 117),
(5, 'App\\Models\\User', 118),
(5, 'App\\Models\\User', 119),
(5, 'App\\Models\\User', 120),
(5, 'App\\Models\\User', 121),
(5, 'App\\Models\\User', 122),
(5, 'App\\Models\\User', 123),
(5, 'App\\Models\\User', 124),
(5, 'App\\Models\\User', 125),
(5, 'App\\Models\\User', 126),
(5, 'App\\Models\\User', 127),
(5, 'App\\Models\\User', 128),
(5, 'App\\Models\\User', 129),
(5, 'App\\Models\\User', 130),
(5, 'App\\Models\\User', 131),
(5, 'App\\Models\\User', 132),
(5, 'App\\Models\\User', 133),
(5, 'App\\Models\\User', 134),
(5, 'App\\Models\\User', 135),
(5, 'App\\Models\\User', 136),
(5, 'App\\Models\\User', 137),
(5, 'App\\Models\\User', 139),
(5, 'App\\Models\\User', 140),
(5, 'App\\Models\\User', 141),
(5, 'App\\Models\\User', 142),
(5, 'App\\Models\\User', 143),
(5, 'App\\Models\\User', 144),
(5, 'App\\Models\\User', 145),
(5, 'App\\Models\\User', 146),
(5, 'App\\Models\\User', 147),
(5, 'App\\Models\\User', 148),
(5, 'App\\Models\\User', 149),
(5, 'App\\Models\\User', 150),
(5, 'App\\Models\\User', 151),
(5, 'App\\Models\\User', 152),
(5, 'App\\Models\\User', 153),
(5, 'App\\Models\\User', 154),
(5, 'App\\Models\\User', 155),
(5, 'App\\Models\\User', 156),
(5, 'App\\Models\\User', 157),
(5, 'App\\Models\\User', 158),
(5, 'App\\Models\\User', 159),
(5, 'App\\Models\\User', 160),
(5, 'App\\Models\\User', 161),
(5, 'App\\Models\\User', 162),
(5, 'App\\Models\\User', 163),
(5, 'App\\Models\\User', 164),
(5, 'App\\Models\\User', 165),
(5, 'App\\Models\\User', 166),
(5, 'App\\Models\\User', 167),
(5, 'App\\Models\\User', 168),
(5, 'App\\Models\\User', 169),
(5, 'App\\Models\\User', 170),
(5, 'App\\Models\\User', 171),
(5, 'App\\Models\\User', 172),
(5, 'App\\Models\\User', 173),
(5, 'App\\Models\\User', 174),
(5, 'App\\Models\\User', 175),
(5, 'App\\Models\\User', 176),
(5, 'App\\Models\\User', 177),
(5, 'App\\Models\\User', 178),
(5, 'App\\Models\\User', 179),
(5, 'App\\Models\\User', 180),
(5, 'App\\Models\\User', 181),
(5, 'App\\Models\\User', 182),
(5, 'App\\Models\\User', 183),
(5, 'App\\Models\\User', 184),
(5, 'App\\Models\\User', 185),
(5, 'App\\Models\\User', 186),
(5, 'App\\Models\\User', 187),
(5, 'App\\Models\\User', 188),
(5, 'App\\Models\\User', 189),
(5, 'App\\Models\\User', 190),
(5, 'App\\Models\\User', 191),
(5, 'App\\Models\\User', 192),
(5, 'App\\Models\\User', 193),
(5, 'App\\Models\\User', 194),
(5, 'App\\Models\\User', 195),
(5, 'App\\Models\\User', 196),
(5, 'App\\Models\\User', 197),
(5, 'App\\Models\\User', 198),
(5, 'App\\Models\\User', 199),
(5, 'App\\Models\\User', 200),
(5, 'App\\Models\\User', 201),
(5, 'App\\Models\\User', 202),
(5, 'App\\Models\\User', 203),
(5, 'App\\Models\\User', 204),
(5, 'App\\Models\\User', 205),
(5, 'App\\Models\\User', 206),
(5, 'App\\Models\\User', 207),
(5, 'App\\Models\\User', 208),
(5, 'App\\Models\\User', 209),
(5, 'App\\Models\\User', 210),
(5, 'App\\Models\\User', 211),
(5, 'App\\Models\\User', 212),
(5, 'App\\Models\\User', 213),
(5, 'App\\Models\\User', 214),
(5, 'App\\Models\\User', 215),
(5, 'App\\Models\\User', 216),
(5, 'App\\Models\\User', 217),
(5, 'App\\Models\\User', 218),
(5, 'App\\Models\\User', 219),
(5, 'App\\Models\\User', 220),
(5, 'App\\Models\\User', 221),
(5, 'App\\Models\\User', 222),
(5, 'App\\Models\\User', 223),
(5, 'App\\Models\\User', 224),
(5, 'App\\Models\\User', 225),
(5, 'App\\Models\\User', 226),
(5, 'App\\Models\\User', 227),
(5, 'App\\Models\\User', 228),
(5, 'App\\Models\\User', 229),
(5, 'App\\Models\\User', 230),
(5, 'App\\Models\\User', 231),
(5, 'App\\Models\\User', 232),
(5, 'App\\Models\\User', 233),
(5, 'App\\Models\\User', 234),
(5, 'App\\Models\\User', 235),
(5, 'App\\Models\\User', 236),
(5, 'App\\Models\\User', 237),
(5, 'App\\Models\\User', 238),
(5, 'App\\Models\\User', 239),
(5, 'App\\Models\\User', 240),
(5, 'App\\Models\\User', 241),
(5, 'App\\Models\\User', 242),
(5, 'App\\Models\\User', 243),
(5, 'App\\Models\\User', 244),
(5, 'App\\Models\\User', 245),
(5, 'App\\Models\\User', 246),
(5, 'App\\Models\\User', 247),
(5, 'App\\Models\\User', 248),
(5, 'App\\Models\\User', 249),
(5, 'App\\Models\\User', 250),
(5, 'App\\Models\\User', 251),
(5, 'App\\Models\\User', 252),
(5, 'App\\Models\\User', 253),
(5, 'App\\Models\\User', 254),
(5, 'App\\Models\\User', 255),
(5, 'App\\Models\\User', 256),
(5, 'App\\Models\\User', 257),
(5, 'App\\Models\\User', 258),
(5, 'App\\Models\\User', 259),
(5, 'App\\Models\\User', 260),
(5, 'App\\Models\\User', 261),
(5, 'App\\Models\\User', 262),
(5, 'App\\Models\\User', 263),
(5, 'App\\Models\\User', 264),
(5, 'App\\Models\\User', 265),
(5, 'App\\Models\\User', 266),
(5, 'App\\Models\\User', 267),
(5, 'App\\Models\\User', 268),
(5, 'App\\Models\\User', 269),
(5, 'App\\Models\\User', 270),
(5, 'App\\Models\\User', 271),
(5, 'App\\Models\\User', 272),
(5, 'App\\Models\\User', 273),
(5, 'App\\Models\\User', 274),
(5, 'App\\Models\\User', 275),
(5, 'App\\Models\\User', 276),
(5, 'App\\Models\\User', 277),
(5, 'App\\Models\\User', 278),
(5, 'App\\Models\\User', 279),
(5, 'App\\Models\\User', 280),
(5, 'App\\Models\\User', 281),
(5, 'App\\Models\\User', 282),
(5, 'App\\Models\\User', 283),
(5, 'App\\Models\\User', 284),
(5, 'App\\Models\\User', 285),
(5, 'App\\Models\\User', 286),
(5, 'App\\Models\\User', 287),
(5, 'App\\Models\\User', 288),
(5, 'App\\Models\\User', 289),
(5, 'App\\Models\\User', 290),
(5, 'App\\Models\\User', 291),
(5, 'App\\Models\\User', 292),
(5, 'App\\Models\\User', 293),
(5, 'App\\Models\\User', 294),
(5, 'App\\Models\\User', 295),
(5, 'App\\Models\\User', 296),
(5, 'App\\Models\\User', 297),
(5, 'App\\Models\\User', 298),
(5, 'App\\Models\\User', 299),
(5, 'App\\Models\\User', 300),
(5, 'App\\Models\\User', 301),
(5, 'App\\Models\\User', 302),
(5, 'App\\Models\\User', 303),
(5, 'App\\Models\\User', 304),
(5, 'App\\Models\\User', 305),
(5, 'App\\Models\\User', 306),
(5, 'App\\Models\\User', 307),
(5, 'App\\Models\\User', 308),
(5, 'App\\Models\\User', 309),
(5, 'App\\Models\\User', 310),
(5, 'App\\Models\\User', 311),
(5, 'App\\Models\\User', 312),
(5, 'App\\Models\\User', 313),
(5, 'App\\Models\\User', 314),
(5, 'App\\Models\\User', 315),
(5, 'App\\Models\\User', 316),
(5, 'App\\Models\\User', 317),
(5, 'App\\Models\\User', 318),
(5, 'App\\Models\\User', 319),
(5, 'App\\Models\\User', 320),
(5, 'App\\Models\\User', 321),
(5, 'App\\Models\\User', 322),
(5, 'App\\Models\\User', 323),
(5, 'App\\Models\\User', 324),
(5, 'App\\Models\\User', 325),
(5, 'App\\Models\\User', 326),
(5, 'App\\Models\\User', 327),
(5, 'App\\Models\\User', 328),
(5, 'App\\Models\\User', 329),
(5, 'App\\Models\\User', 330),
(5, 'App\\Models\\User', 331),
(5, 'App\\Models\\User', 332),
(5, 'App\\Models\\User', 333),
(5, 'App\\Models\\User', 334),
(5, 'App\\Models\\User', 335),
(5, 'App\\Models\\User', 336),
(5, 'App\\Models\\User', 337),
(5, 'App\\Models\\User', 338),
(5, 'App\\Models\\User', 339),
(5, 'App\\Models\\User', 340),
(5, 'App\\Models\\User', 341),
(5, 'App\\Models\\User', 342),
(5, 'App\\Models\\User', 343),
(5, 'App\\Models\\User', 344),
(5, 'App\\Models\\User', 345),
(5, 'App\\Models\\User', 346),
(5, 'App\\Models\\User', 347),
(5, 'App\\Models\\User', 348),
(5, 'App\\Models\\User', 349),
(5, 'App\\Models\\User', 350),
(5, 'App\\Models\\User', 351),
(5, 'App\\Models\\User', 352),
(5, 'App\\Models\\User', 353),
(5, 'App\\Models\\User', 354),
(5, 'App\\Models\\User', 355),
(5, 'App\\Models\\User', 356),
(5, 'App\\Models\\User', 357),
(5, 'App\\Models\\User', 358),
(5, 'App\\Models\\User', 359),
(5, 'App\\Models\\User', 360),
(5, 'App\\Models\\User', 361),
(5, 'App\\Models\\User', 362),
(5, 'App\\Models\\User', 363),
(5, 'App\\Models\\User', 364),
(5, 'App\\Models\\User', 365),
(5, 'App\\Models\\User', 366),
(5, 'App\\Models\\User', 367),
(5, 'App\\Models\\User', 368),
(5, 'App\\Models\\User', 369),
(5, 'App\\Models\\User', 370),
(5, 'App\\Models\\User', 371),
(5, 'App\\Models\\User', 372),
(5, 'App\\Models\\User', 373),
(5, 'App\\Models\\User', 374),
(5, 'App\\Models\\User', 375),
(5, 'App\\Models\\User', 376),
(5, 'App\\Models\\User', 377),
(5, 'App\\Models\\User', 378),
(5, 'App\\Models\\User', 379),
(5, 'App\\Models\\User', 380),
(5, 'App\\Models\\User', 381),
(5, 'App\\Models\\User', 382),
(6, 'App\\Models\\User', 138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Nivel 1', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(2, 'Nivel 2', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(3, 'Nivel 3', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

CREATE TABLE `polizas` (
  `ID_POLIZA` int(10) UNSIGNED NOT NULL,
  `ID` bigint(20) UNSIGNED NOT NULL,
  `FECHA_VENCIMIENTO_LICENCIA` varchar(191) NOT NULL,
  `NRO_POLIZA` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`ID_POLIZA`, `ID`, `FECHA_VENCIMIENTO_LICENCIA`, `NRO_POLIZA`) VALUES
(5, 186, '16/02/2021', 180504),
(6, 121, '18/12/2028', 102299),
(7, 14, '31/07/2021', 102299),
(8, 39, '13/02/2026', 146882),
(9, 190, '14/07/2021', 161561),
(10, 203, '27/11/2024', 134667),
(11, 91, '07/02/2026', 163806),
(12, 215, '18/10/2021', 150851),
(13, 169, '03/05/2023', 101701),
(14, 104, '17/05/2022', 98396),
(15, 163, '24/07/2020', 114821),
(16, 18, '13/08/2028', 173831),
(17, 146, '22/04/2021', 162488),
(18, 236, '04/09/2026', 117995),
(19, 177, '27/10/2022', 129208),
(20, 220, '22/09/2019', 89630),
(21, 72, '30/08/2022', 96522),
(22, 251, '19/07/2025', 146880),
(23, 22, '12/07/2021', 122659),
(24, 28, '12/02/2029', 163368),
(25, 259, '06/08/2019', 118462),
(26, 213, '07/10/2025', 167446),
(27, 165, '16/10/2022', 125933),
(28, 230, '16/11/2022', 157968),
(29, 97, '14/04/2026', 108267),
(30, 107, '23/06/2025', 178127),
(31, 200, '20/01/2022', 131447),
(32, 166, '06/10/2022', 117002),
(33, 47, '20/01/2024', 89628),
(34, 11, '08/07/2027', 131335),
(35, 10, '11/05/2024', 76206),
(36, 229, '03/04/2024', 147514),
(37, 43, '16/08/2022', 102293),
(38, 53, '21/04/2023', 116391),
(39, 158, '25/11/2020', 157967),
(40, 109, '08/09/2024', 99557),
(41, 174, '09/05/2019', 90114),
(42, 223, '24/09/2024', 160177),
(43, 16, '26/08/2024', 164459),
(44, 278, '12/08/2024', 141735),
(45, 234, '08/11/2022', 92810),
(46, 92, '30/03/2026', 142767),
(47, 210, '17/09/2019', 170423),
(48, 29, '06/02/2023', 173830),
(49, 198, '19/03/2023', 82718),
(50, 141, '23/03/2025', 178233);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `ID_REGION` int(10) UNSIGNED NOT NULL,
  `REGION` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`ID_REGION`, `REGION`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Biobío'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Libertador General Bernardo OHiggins'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_bodegas`
--

CREATE TABLE `rel_fun_bodegas` (
  `ID_SOL_BODEGA` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `MOTIVO_SOL_BODEGA` varchar(1000) DEFAULT NULL,
  `FECHA_SOL_BODEGA` varchar(191) DEFAULT NULL,
  `HORA_INICIO_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_ASIG_BODEGA` timestamp NULL DEFAULT NULL,
  `FECHA_TERM_ASIG_BODEGA` timestamp NULL DEFAULT NULL,
  `BODEGA_PEDIDA` varchar(128) DEFAULT NULL,
  `ESTADO_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `MODIFICADO_POR_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_BODEGA` varchar(1000) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_bodegas`
--

INSERT INTO `rel_fun_bodegas` (`ID_SOL_BODEGA`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `MOTIVO_SOL_BODEGA`, `FECHA_SOL_BODEGA`, `HORA_INICIO_SOL_BODEGA`, `HORA_TERM_SOL_BODEGA`, `FECHA_INICIO_ASIG_BODEGA`, `FECHA_TERM_ASIG_BODEGA`, `BODEGA_PEDIDA`, `ESTADO_SOL_BODEGA`, `MODIFICADO_POR_SOL_BODEGA`, `OBSERV_SOL_BODEGA`, `ID_CATEGORIA_SALA`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'kakdkakd', '2023-07-19 a 2023-07-22', '12:00', NULL, NULL, NULL, 'BODEGA HERAS', 'INGRESADO', NULL, NULL, 2, '2023-07-19 21:43:04', '2023-07-19 21:43:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_equipos`
--

CREATE TABLE `rel_fun_equipos` (
  `ID_SOL_EQUIPOS` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `MOTIVO_SOL_EQUIPO` text DEFAULT NULL,
  `EQUIPO_SOL` text DEFAULT NULL,
  `FECHA_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `HORA_INICIO_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_EQUIPO` timestamp NULL DEFAULT NULL,
  `FECHA_FIN_EQUIPO` timestamp NULL DEFAULT NULL,
  `ESTADO_SOL_EQUIPO` varchar(128) NOT NULL DEFAULT 'INGRESADO',
  `EQUIPO_A_ASIGNAR` text DEFAULT NULL,
  `MODIFICADO_POR_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_EQUIPO` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_equipos`
--

INSERT INTO `rel_fun_equipos` (`ID_SOL_EQUIPOS`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_USUARIO`, `MOTIVO_SOL_EQUIPO`, `EQUIPO_SOL`, `FECHA_SOL_EQUIPO`, `HORA_INICIO_SOL_EQUIPO`, `HORA_TERM_SOL_EQUIPO`, `FECHA_INICIO_EQUIPO`, `FECHA_FIN_EQUIPO`, `ESTADO_SOL_EQUIPO`, `EQUIPO_A_ASIGNAR`, `MODIFICADO_POR_SOL_EQUIPO`, `OBSERV_SOL_EQUIPO`, `created_at`, `updated_at`) VALUES
(3, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana vega monumental', 'NOTEBOOK', '2018-09-28', '09:00', '14:00', '2018-09-26 09:00:00', '2018-09-26 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(15, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(16, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(17, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas  Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(22, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2018-10-26', '09:00', '14:30', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(23, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2018-10-26', '09:00', '14:30', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(30, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana santa juana', 'NOTEBOOK', '2018-11-12', '08:30', '14:30', '2018-11-07 09:00:00', '2018-11-07 09:00:00', 'ACEPTADO', '', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(31, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana lota', 'NOTEBOOK', '2018-11-21', '08:30', '14:30', '2018-11-16 09:00:00', '2018-11-16 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(36, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana tomérnse solicitan 2 equipos ', 'NOTEBOOK', '2018-12-05', '08:30', '14:30', '2018-11-28 09:00:00', '2018-11-28 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(37, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana santa juana c/ router', 'NOTEBOOK', '2018-12-11', '08:30', '14:30', '2018-12-07 09:00:00', '2018-12-07 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(38, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana tomé c/router', 'NOTEBOOK', '2018-12-14', '08:30', '14:30', '2018-12-07 09:00:00', '2018-12-07 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(43, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2019-02-01', '08:30', '14:30', '2019-01-18 09:00:00', '2019-01-18 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(46, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana copiulemu', 'NOTEBOOK', '2019-03-05', '14:00', '17:00', '2019-02-28 09:00:00', '2019-02-28 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(53, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Bajada - Charla de autocuidado por diagnostico efectuado a funcionarios de asistencia al contribuyente.rnSe requiere equipo Notebook, Data, Telón, pedestal  con micrófono y amplificación ', 'NOTEBOOK', '2019-05-09', '15:00', '16:30', '2019-05-08 12:00:00', '2019-05-23 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'RESERVADO', '2019-07-01 04:00:00', NULL),
(54, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Por motivos de bajada de Charla de Autocuidado reagendada para el día Jueves 16 de  Mayo, se solicita DATA, NOTEBOOK, TELON Y PEDESTAL CON MICROFONO para taller en asistencia al contribuyente. a las 15:15 Horas. ', 'NOTEBOOK', '2019-05-16', '15:00', '16:30', '2019-05-14 12:00:00', '2019-05-31 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'SE HABILITARA HALL ASISTENCIA', '2019-07-01 04:00:00', NULL),
(55, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana san pedro de la paz', 'NOTEBOOK', '2019-05-24', '08:30', '14:30', '2019-05-23 12:00:00', '2019-06-10 12:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(57, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana chiguayante', 'NOTEBOOK', '2019-06-04', '09:00', '14:30', '2019-05-31 12:00:00', '2019-06-25 12:00:00', 'RECHAZADO', 'T420', 'SUSAN PARRA QUIROZ', 'retirarlo en informatica', '2019-07-01 04:00:00', NULL),
(58, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Solicita Notebook para realización de ceremonia de becas y premiso de bienestar 2019 a las 10:30 Horas. rn', 'NOTEBOOK', '2019-06-05', '10:30', '17:00', '2019-06-05 12:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'Equipo recepcionado por Johana Ortiz Medina', '2019-07-01 04:00:00', NULL),
(60, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA TOMÉ', 'NOTEBOOK', '2019-06-14', '09:00', '14:30', '2019-06-10 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'Se reserva NOTEBOOK', '2019-07-01 04:00:00', NULL),
(63, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'CHARLA A CONTRIBUYENTES', 'NOTEBOOK', '2019-06-26', '09:30', '13:30', '2019-06-25 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'NOTEBOOK MARCA HP', '2019-07-01 04:00:00', NULL),
(69, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana coronel', 'NOTEBOOK', '2019-07-26', '10:30', '16:00', '2019-07-19 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'PRESTAMO DAVID', '2019-07-01 04:00:00', NULL),
(72, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA CONCEPCIÓN- rnADEMAS SE SOLICITA TELÓN PARA PROYECTAR ', 'NOTEBOOK', '2019-08-05', '09:30', '14:00', '2019-08-02 12:00:00', '2019-08-13 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(73, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, '2 EQUIPOS PARA PLAZA CIUDADANA CONCEPCION', 'NOTEBOOK', '2019-08-05', '09:30', '14:00', '2019-08-02 12:00:00', '2019-09-23 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(74, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA CONCEPCIÓN (TRIBUNALES)rn+ INTERNET MOVIL', 'NOTEBOOK', '2019-08-08', '09:00', '13:30', '2019-08-02 12:00:00', '2019-09-30 09:00:00', 'RECHAZADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'funcionario indica que no suspende actividad - David Cabrera', '2019-07-01 04:00:00', NULL),
(76, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'taller ingreso F1816 grupo 1 asistencia', 'NOTEBOOK', '2019-08-27', '15:30', '17:00', '2019-08-13 12:00:00', '2019-08-13 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'HALL ASISTENCIArnDATArnNOTEBOOKrnTELON', '2019-07-01 04:00:00', NULL),
(82, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana lota ', 'NOTEBOOK', '2019-09-27', '11:00', '16:00', '2019-09-23 09:00:00', '2019-09-23 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'NOTEBOOK + ROUTER', '2019-07-01 04:00:00', NULL),
(86, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'ademas se necesita router para plaza ciudadana a realizar en la comuna de penco ', 'NOTEBOOK', '2019-10-04', '09:00', '14:00', '2019-09-30 09:00:00', '2019-09-30 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'reservado', '2019-07-01 04:00:00', NULL),
(94, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Estimado Luis: rnrnPara el acto ecuménico a realizarse el día de hoy en horario de 15:00 Horas, agradecería puedas disponer de Data, Telón,notebook y Micrófono para el evento.', 'NOTEBOOK', '2019-12-26', '15:00', '16:30', '2019-12-26 09:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'HALL DE ASISTENCIA', '2019-07-01 04:00:00', NULL),
(97, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Charla día de la mujer 2020 en hall de depto. asistencia.rnse necesita data, telón y notebook para exposición de la monitora.rn(además de alargadores  y camera fotográfica para realización del evento)rn', 'NOTEBOOK', '2020-03-04', '15:00', '16:30', '2020-02-29 09:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(98, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 8, 'askkakds', 'AMPLIFICADOR', '2023-07-20 a 2023-07-23', '08:00', '09:00', '2023-07-20 16:00:00', '2023-07-20 18:00:00', 'INGRESADO', 'HP - NOTEBOOK\r\nS - DATA\r\nT420 - NOTEBOOK', 'CRISTIAN ALBERTO GOMEZ  CASTILLO', 'kdkkxfk', '2023-07-20 17:33:40', '2023-07-20 17:34:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_form`
--

CREATE TABLE `rel_fun_form` (
  `ID_SOL_FORM` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_FORMULARIO` int(11) DEFAULT NULL,
  `FORM_SOL` text DEFAULT NULL,
  `ESTADO_SOL_FORM` varchar(191) NOT NULL DEFAULT 'INGRESADO',
  `OBSERV_SOL_FORM` text DEFAULT NULL,
  `MODIFICADO_POR_SOL_FORM` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_form`
--

INSERT INTO `rel_fun_form` (`ID_SOL_FORM`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_FORMULARIO`, `FORM_SOL`, `ESTADO_SOL_FORM`, `OBSERV_SOL_FORM`, `MODIFICADO_POR_SOL_FORM`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', NULL, '- 1 unidad(es) de \"22895\" de tipo \"TIPO C', 'INGRESADO', NULL, NULL, '2023-07-25 22:10:02', '2023-07-25 22:10:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_mat`
--

CREATE TABLE `rel_fun_mat` (
  `ID_SOLICITUD` bigint(20) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `FECHA_DESPACHO` date DEFAULT NULL,
  `MATERIAL_SOL` text NOT NULL,
  `OBSERVACIONES` text NOT NULL DEFAULT 'No existen observaciones',
  `ESTADO_SOL` varchar(20) NOT NULL DEFAULT 'INGRESADO',
  `MODIFICADO_POR` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_mat`
--

INSERT INTO `rel_fun_mat` (`ID_SOLICITUD`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `FECHA_DESPACHO`, `MATERIAL_SOL`, `OBSERVACIONES`, `ESTADO_SOL`, `MODIFICADO_POR`, `created_at`, `updated_at`) VALUES
(2, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2018-07-17', 'Solicita hoja de resmas de carta para secretaria. (1 caja)', 'cerrado en plazo', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(4, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-07-25', '1 SHAMPU PARA VEHICULO FURGON CONCEPCION', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(5, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-07-31', 'ENTREGADA SOLO 10 RESMAS CARTA', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(7, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-08-02', '1 unidad de Lysoform', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(8, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-08-07', 'confort', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(17, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-08-24', 'Archivadores 10Cajas Menphis 50Carpetas plasticas con acoclip 50Carpetas plasticas 50Caras de carton 50Clips chico 50Corchetera 5·Corrector 10Destacadores 10·Gomas de borrar 10Lápiz grafito 10Papel embalaje café 50·Perforadoras 10Plumón pizarra azul 10·Plumón pizarra negro 10·Plumón pizarra rojo 10·Plumón pizarra verde 10Reglas 30 cm 5Post it mediano 10Scotch 20Sacacorchete 5·Separador de archivador (10) 5·Tijera 5', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(23, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-08-27', '·Hojas Carta - 1 caja ·Hojas Oficio - 1 caja', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(27, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-09-05', 'Shampoo VehiculosPATENTE CWYF-10 DE ADMINISTRACION', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(29, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-09-12', '·Rollos de 800 etiquetas BROTHER (Gabinete Electrónico)CANTIDAD : UN ROLLOPARA ENCARGADA DE CORRESPONDENCIA CAROLINA ZAMBRA M.', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(33, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-10-02', 'Hojas Carta -  10 Resmas', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(39, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-10-11', 'Dispensador Toalla Nova (1) para baño varones 2do piso', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(41, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-10-16', 'Hojas Carta - Cantidad: 10 Resmas ', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(60, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-11-09', 'HOJAS CARTA 10 RESMAS ', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(63, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2018-11-12', 'TONER IMPRESORA M4080FX', 'ESTA SOLICITUD NO CORRESPONDE A NUESTRA AREA, SE SOLICITA DIRECTAMENTE A INFORMATICA', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(64, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-11-13', '500 sobres medio oficio blanco', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(67, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2018-11-15', '5555', 'requerimiento en blanco', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(68, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2018-11-15', 'Acoclips (3 cajas)Cajas Menphis (30)Carpetas Plasticas simples (3)sobre americanos (500)sobre Medio Oficio (500)Gomas de borrar (3)clips medianos (5 Cajas)scocht  (15)Elásticos (500g)Archivadores (5)Rollos de cañamo grande (3)Lápiz pasta azul (10)Lápiz pasta negro (5)Cinta de embalaje (5)Corrector (5)Carpetas de carton (30)Hojas Carta (2 cajas)Hojas Oficio (2 Cajas)Papel embalaje café (para envolver) (30)Post it mediano ( 3 Cajas)', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(69, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2018-11-16', 'Hojas Carta Cant: 20,Hojas Oficio Cant: 10,Rollos de cañamo grande Cant: 2,Elásticos (500g) Cant: 2,Clips chico Cant: 10,Accoclips (50) Cant: 10,Corchetes 23-10 Cant: 02Tinta TRODAT Cant: 02Carpetas de carton Cant: 200', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(73, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', '2018-11-21', 'PRUEBAArchivadores  Cant: 0,Lápiz pasta azul Cant: 0,Lomos adhesivos (10) Cant: 0,Destacadores Cant: 0,Plumón permanente azul Cant: 0,Plumón permanente rojo Cant: 0,Plumón pizarra negro Cant: 0,Plumón pizarra verde Cant: 0,Plumón pizarra rojo Cant: 0,Gomas de borrar Cant: 0,Goma para dedos Cant: 0,Goma para dedos Cant: 0,', 'prueba', 'RECHAZADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(88, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-11-30', 'HOJAS CARTA 10 RESMAS', 'SE ENTREGAN 10 RESMAS CARTAS A DEPARTAMENTO DE ADMINISTRACIÓN - FABIOLA VALLADARES', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(92, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2018-12-03', 'Hojas Carta Cant: 40,Hoja Oficio Cant: 20,Cajas Menphis Cant: 40,Carpetas de carton  Cant: 50,Cinta de embalaje Cant: 4,Dispensador de scotch Cant: 2,Scotch Cant: 10,Sobres americanos Cant: 50,', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(93, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2018-12-03', 'Hojas Carta Cant: 40, Hojas Oficio Cant: 20', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(94, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2018-12-06', 'HOJAS CARTA  10 RESMASHOJAS OFICIO  10 RESMAS', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(112, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2018-12-21', '5 shampu para vehiculo5 aromatizantes para vehiculo sede Concepción', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(117, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-01-07', 'Hojas Carta Cant: 10 RESMAS', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(123, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-01-10', 'Carpetas de carton  Cant: 400,Accoclips Cant: 5,Cajas Menphis  Cant: 20,Destacadores Cant: 10,Elásticos (50g) Cant: 10,Post it chico Cant: 20,Post it mediamo Cant: 20,Hojas Carta Cant: 30,Hojas Oficio Cant: 10,', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(125, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '0000-00-00', 'Plumón permanente rojo Cant: 1Plumón permanente azul 1', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(126, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-01-16', 'SOBRES SACO REVISTA  - CANTIDAD 200', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(135, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-01-22', 'Hojas Carta Cant: 40Hojas Oficio Cant:20,', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(137, 9, 'LILIAN RAMIS SOTOMAYOR', '9072801-6', 'GABINETE DEL DIRECTOR', 'lramis@sii.cl', '2019-01-23', '100 sobres tamaño oficio tipo saco', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(140, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-01-30', 'Carpetas de carton  Cant: 50,Cajas Menphis  Cant: 30,Corchetera Cant: 2,Hojas Carta Cant: 20,Hojas Carta Cant: 20,Portaminas 0,5 Cant: 10,Minas 0,5 mm Cant: 10,Scotch Cant: 30,', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(144, 69, 'HERNAN SEGUNDO HERRERA SANZANA', '7632505-7', 'DEPARTAMENTO DE FISCALIZACION', 'hherrera@sii.cl', '2019-02-06', 'toner para impresora principal grupo 2 y 3 fiscalizacion', 'Requerimiento es atendido vía Sistema de Informatica', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(145, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-02-06', 'Se requiere la entrega de una caja de RESMAS DE HOJA TAMAÑO CARTA Y CAJA DE RESMAS TAMAÑO OFICIO', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(147, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-02-07', '1-Rollos de 800 etiquetas BROTHER (Gabinete Electrónico) ', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(148, 21, 'SUSAN PARRA QUIROZ', '10273761-K', 'DEPARTAMENTO DE ADMINISTRACION', 'sparra@sii.cl', '2019-02-08', 'Scoth Cant: 2cinta de embalaje  2achivador : 2', 'RECHAZAR', 'RECHAZADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(149, 21, 'SUSAN PARRA QUIROZ', '10273761-K', 'DEPARTAMENTO DE ADMINISTRACION', 'sparra@sii.cl', '2019-02-08', 'cinta de embalaje 2 unidadesscoth 2 unidades', 'RECHAZAR', 'RECHAZADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(150, 21, 'SUSAN PARRA QUIROZ', '10273761-K', 'DEPARTAMENTO DE ADMINISTRACION', 'sparra@sii.cl', '2019-02-08', 'Cinta de embalaje Cant: 2,Scotch Cant: 2,', 'RECHAZAR', 'RECHAZADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(158, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-02-26', 'HOJAS CARTA 10 RESMAS', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(165, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-03-04', 'Rollos de 800 etiquetas BROTHER (Gabinete Electrónico) Cant: 2,', '07-03-2019 ENTREGADA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(167, 66, 'JENY LISSETTE GONZALES CASTRO', '13449327-5', 'DEPARTAMENTO DE FISCALIZACION', 'jeny.gonzalez@sii.cl', '2019-03-08', 'Hojas Carta 20 resmasHojas Oficio 20 resmas ', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(170, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-03-14', 'Cinta de embalaje 20', '12 cinta de embalaje', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(176, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-03-25', 'HOJAS CARTA 10 RESMAS ---- URGENTE POR FA.....', 'SE ENTREGAN 10 RESMAS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(177, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-03-25', 'compra de combustible según detalle:$7.429.050 de 95$1.800.000 de diesel petróleototal sería $9.229.050', 'COMPRA GESTIONADA', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(185, 93, 'CARMEN PEÑA VALDES', '13727054-4', 'DEPARTAMENTO DE FISCALIZACION', 'carmeng.pena@sii.cl', '2019-04-01', 'se requiere silla funcionario, silla contribuyente, velador y mueble para guardar documentación para el puesto de Jorge Araneda.', 'SILLA FUNCIONARIO ENTREGADA CON MEMO N° 26', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(188, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-04-02', 'Accoclips (50): 2 cajasrnCajas Menphis: 50 unidadesrnCarpetas de carton: 200 unidadesrnCartonero: 2 rnCorchetes 23-10: una cajarnDestacadores: 10 unidadesrnElásticos (50g): 10 bolsitasrnHojas Carta: 20 unidadesrnHojas Oficio: 15 unidadesrnLápiz pasta azul: 20 unidadesrnLápiz pasta negro: 20 unidadesrnPost it chico: 20 unidadesrnPost it mediano: 20 unidadesrnRollos térmicos ENGATEL (Total Pack): 30 unidadesrnSobre saco oficio blanco: 30 unidadesrnTijera: 2 unidadesrnTinta para tampón azul: 4 unidadesrn', 'Se entrega:rnACCOCLIPS 2 CAJASrnCAJAS MENPHIS 25rnCARPETAS DE CARTÓN 200 UNIDADESrnCORCHETES 26-6 4 CAJASrnDESTACADORES 10rnELÁSTICOS 10 BOLSASrnHOJAS CARTAS 10rnHOJAS OFICIO 10rnLÁPIZ PASTA AZUL 20rnLÁPIZ PASTA NEGRO 20rnPOST IT CHICO 20rnPOST IT  MEDIANO 12rnROLLOS TÉRMICOS 30rnSOBRE SACO OFICIO BLANCO 30rnTINTA TAMPÓN AZUL 04rnSCOTH 12', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(189, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-04-03', 'SOLICITA 04 ROLLOS DE NUMEROS PARA OPERACION RENTA MALL DE CORONEL', 'SE ENTREGAN:rn04 ROLLOS DE NUMERO ', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(190, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-04-03', 'CAJAS Menphis 30', '30 CAJAS MEMPHIS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(195, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-04-04', 'cajas Menphis 4 para V. Grandón.rn1 cinta embalaje transparente', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(198, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-04-08', 'Solicito a ustedes la entrega de 3 regalos de cumpleaños de Afiliados al Área de Bienestar correspondiente al mes de Abril de 2019.-', 'SE ENTREGAN TRES PRESENTES DE CUMPLEAÑOS COLOR NARANJO.', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(199, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-04-08', '01 paquete de 10 de bolsa de basura para operación renta, mall de coronel', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(200, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-04-08', '01 paquete de 10 de bolsa de basura para operación renta, mall de coronel', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(201, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-04-11', 'Hojas Carta 10 resmas.', '10 resmas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(203, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-04-12', 'Hojas Oficio Cant: 20,rnHojas Carta Cant: 10,rn', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(205, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-04-12', '50 cajas Memphisrn02 cajas hoja cartarn02 cajas hoja oficiorn10 scochtrn10 lápices borrador liquididorn02 cajas calcosrn', 'SE ENTREGA:rn25 CAJAS MEMPHISrn02 CAJAS HOJA CARTArn02 CAJAS HOJA OFICIOrn10 SCOCHTrn10 LAPICES BORRADOR LIQUIDOrn02 SOBRES CALCO DE 10 C/U', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(206, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-04-12', '10 lápices pasta azul', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(208, 13, 'NELLY MARISELL GALVEZ QUEZADA', '12558133-1', 'DEPARTAMENTO DE ADMINISTRACION', 'ngalvez@sii.cl', '2019-04-17', 'Archivadores  Cant: 1,rn', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(218, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-04-30', 'SOBRE SACO REVISTA  150 (RECIBIDOS DE SAMUEL EL 30-05-19)', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(221, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-05-02', 'Rollos de 800 etiquetas BROTHER (Gabinete Electrónico) - un rollo para Johanna.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(227, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-05-07', 'Hojas Carta Cant: 10 RESMASrn', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(229, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-05-08', 'Se necesita el apoyo de funcionarios para puesta en marcha de charla de autocuidado.rnmesa desplegable, pendón, mantelería, florero, alargador, data , telón, podio. disposición de sillas, etc. rnLUGAR: HALL DE ASISTENCIA AL CONTRIBUYENTE. A LAS 15:00 horas. ', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(233, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-05-14', 'Solicita apoyo de auxiliares - disposición de mesa para Coffe break, telón de bienestar, orden de sillas para reunión. rnDia Jueves 16 de Mayo a las 15:15 Horas en Hall de Asistencia al Contribuyente.', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(238, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-05-16', 'Plumón permanente azul Cant: 6,rnPlumón permanente negro Cant: 6,rnPlumón pizarra negro Cant: 3,rnCorchetes 26-6 (5000) Cant: 10,rnPerforadoras Cant: 3,rnCorrector Cant: 15,rnHojas Carta Cant: 30', 'plumón permanente azul Cant: 4,rnPlumón permanente negro Cant: 4,rnPlumón pizarra azul Cant: 3,rnCorchetes 26-6 (5000) Cant: 6,rnPerforadoras Cant: 1,rnCorrector Cant: 4rnHojas Carta Cant: 30', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(239, 9, 'LILIAN RAMIS SOTOMAYOR', '9072801-6', 'GABINETE DEL DIRECTOR', 'lramis@sii.cl', '2019-05-16', '50 Sobre saco tamaño oficio', 'solicitud nuevamente realiza con n244', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(242, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-05-22', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" CELEBRACIÓN BECAS DE BIENESTAR 2019 CONCEPCIÓN\"rnProyecto facultativo  entregado por mano a la Sra. Damaris Medina con fecha 22/05/2019.-rnMonto $ 597.858rnConvenio Marco ID: 1114617', 'Compra realizada ', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(243, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-05-27', 'ARCHIVADORES 5rnCAJAS MENPHIS 10rnCARTONERO 4rnCINTA EMBALAJE 10rnCORRECTOR 5rnDESTACADOR 5rnGOMA DE BORRAR 5rnHOJAS CARTA 10 RESMASrnHOJAS OFICIO 10 RESMASrnPAPEL EMBALAJE CAFE 30 PLIEGOSrnPLUMON PERMANENTE AZUL 10rnPLUMON PERMANENTE VERDE 10rnPLUMON PERMANENETE ROJO 10rnPLUMON PIZARRA AZUL 10rnPLUMON PIZARRA ROJO 10 rnPLUMON PIZARRA VERDE 10 rnPLUMON PIZARRA NEGRO 10rnTIJERAS 3rnrnrn', 'Entregado rnARCHIVADORES 4rnCAJAS MENPHIS 10rnCARTONERO 4rnCINTA EMBALAJE 05rnCORRECTOR 5rnDESTACADOR 5rnGOMA DE BORRAR 5rnHOJAS CARTA 10 RESMASrnPAPEL EMBALAJE CAFE 22 PLIEGOSrnPLUMON PERMANENTE AZUL 10rnPLUMON PERMANENTE VERDE 10rnPLUMON PERMANENETE ROJO 10rnPLUMON PIZARRA AZUL 05rnPLUMON PIZARRA ROJO 05 rnPLUMON PIZARRA VERDE 05 rnTIJERAS 3rn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(244, 9, 'LILIAN RAMIS SOTOMAYOR', '9072801-6', 'GABINETE DEL DIRECTOR', 'lramis@sii.cl', '2019-05-27', '100 sobres saco tamaño oficio', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(247, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-05-30', 'Hojas Oficio Cant: 10rn', 'Hojas Oficio Cant: 05 RESMAS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(249, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-06-03', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" CELEBRACIÓN BECAS DE BIENESTAR 2019 CHILLAN\"rnProyecto facultativo entregado por mano a la Sra. Damaris Medina con fecha 03/06/2019.-rnMonto $ 82500rnFecha de realización del evento: 11-06-2019.-', 'COMPRA REALIZADA Y ACEPTADA POR PROVEEDOR', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(250, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-06-05', 'Accoclips: 2 cajasrnCajas Menphis: 50 unidadesrnCarpetas de carton: 100 unidadesrnCorchetera: 2 unidadesrnCorchetes 1/4 TRUPER: 2 cajasrnDestacadores: 10 unidadesrnDispensador de scotch: 2 unidadesrnElásticos (50g): 5 bolsitasrnHojas Carta: 40 resmasrnHojas Oficio: 30 resmasrnLápiz pasta azul: 30 unidadesrnLápiz pasta negro: 30 unidadesrnPerforadora: 2 unidadesrnScotch: 20 unidadesrnTijera: 2 unidadesrnSobres americanos: 50 unidadesrnrnrnrnrnrn', 'Accoclips: 2 cajasrnCajas Menphis: 25 unidadesrnCarpetas de carton: 100 unidadesrnCorchetera: 2 unidadesrnDestacadores: 06 unidadesrnDispensador de scotch: 2 unidadesrnElásticos (50g): 5 bolsitasrnHojas Carta: 10 resmasrnLápiz pasta azul: 30 unidadesrnLápiz pasta negro: 30 unidadesrnPerforadora: 1 unidadesrnScotch: 20 unidadesrnTijera: 2 unidadesrnSobres americanos: 50 unidadesrn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(251, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-06-06', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" CAMPEONATO DE BASQUETBOL 2019\"rn Proyecto facultativo entregado por mano a la Sra. Damaris Medina con fecha 06/06/2019.-rn Monto $ 23.633rn Fecha de realización del evento: 29-06-2019.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(267, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-06-27', 'HOJAS CARTA 10 RESMAS ', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(268, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-06-28', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" TARDE RECREATIVA - Compra de Torta\"rnProyecto facultativo entregado por mano a Samuel Vizcarra con fecha 28/06/2019.-rnMonto $ 105.000rnFecha de realización del evento: 11-07-2019.-', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(269, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-06-28', '	Solicita la gestión de Servicios para la generación de Resolución Ex. \" TARDE RECREATIVA - Vales de Alimentacion EDENRED\" (Convenio Marco)rnProyecto facultativo entregado por mano a Samuel Vizcarra con fecha 28/06/2019.-rnMonto $ 100.000rnFecha de realización del evento: 11-07-2019.-', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(279, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-07-17', 'Hojas Carta Cant: 40,rnHojas Oficio Cant: 40,rnCarpetas de carton  Cant: 500,rn', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(283, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-07-23', 'Cajas Menphis  100 UNIDADESrnScotch 7 UNIDADESrnSobres americanos  500 unidadesrnSobres saco revist    500 unidadesrnsobres medio oficio 500 unidadesrnPost it chico   3 CAJASrnPost it mediano  2 CAJASrnHojas Carta   60 RESMArnTinta para tampón azul   3 UNIDADESrnrnHojas Oficio   20 RESMArnPlumón pizarra azul  3 UNIDADESrnPlumón pizarra negro 3 UNIDADESrnPlumón pizarra rojo    3 UNIDADESrnRollos de cañamo grande  3 UNIDADESrnToalla Nova  UNA UNIDAD', '50 cajas menphisrn7 uds scotchrn200 sobres americanosrn500 sobres saco revistasrn100 sobres medio oficiorn24 uds post chicorn24 uds post medianorn30 hojas carta resmarn1 unidad de toalla novarn10 hojas de oficio resmarn2 rollos de cañamo grande rn3 plumones pizarra azulrn3 plumones pizarra rojo', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(285, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-07-24', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" Celebración día del Niño 2019 - (3 Cotizaciones)rn Proyecto facultativo entregado con fecha 24/07/2019.-rn Monto $ 149.750rn Fecha de realización del evento: 14-08-2019.-', 'Solicitud realizada miércoles 08 de agosto 2019', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(286, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-07-25', 'Archivadores 1 UNIDAD', 'Archivadores 1 UNIDAD', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(287, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-07-25', 'Hojas Carta Cant: 30,rnHojas Oficio Cant:30,rn', 'Solicitudes las están haciendo jefes de grupo, por licencia de Maria Cecilia', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(290, 17, 'HILDA DEL PILAR SOBARZO POBLETE', '15614670-6', 'DEPARTAMENTO DE FISCALIZACION', 'hsobarzo@sii.cl', '2019-08-01', 'Basureros metálicos  Cant: 1,rn', 'ENTREGA A CLAUDIA SIERRA OFICINA 2', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(291, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-08-02', 'Hojas Carta 10 resmasrnHojas Oficio 10 resmas', 'Hojas Carta 10 resmasrnHojas Oficio 10 resmas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(294, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-08-05', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" Celebración de Fiestas Patrias/ Unidad de Lebu, Los Angeles, Talcahuano, Sede Concepcion - Vales de Alimentación EDENRED\" (Convenio Marco)rn Proyecto facultativo entregado por mano a Samuel Vizcarra con fecha 05/08/2019.-rn Monto $ 1.192.074 : Sede Concepcion rnMonto $ 264.905: Unidad de Los AngelesrnMonto $ 181.251: Unidad de TalcahuanornMonto $ 55.770: Unidad de Lebu.rn Fecha de realización del evento: 11-07-2019.-', 'COMPRA REALIZADA', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(297, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-08-08', 'LUIS. según lo conversado, solicito la acamara fotografía con batería para el día Miércoles 14 de Agosto (Celebración del día del niño)', 'Camara fotográfica sera llevada a celebración por Guillermo Vasquez', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(300, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', '2019-08-14', '1 CAJA DE HOJAS CARTArn1 CAJA DE HOJAS OFICIO', 'Entregado rn1 CAJA DE HOJAS CARTA ', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(303, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-08-22', '05 tubos fluorescentesrn05 partidoresrn02 ballacsrn02 cilindro para sillasrn', '05 tubos fluorescentesrn05 partidoresrn02 ballacsrn02 cilindro para sillas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(305, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-08-23', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \"Arriendo salón Celebración de Fiestas Patrias Los Angeles\"rn Proyecto facultativo entregado por mano a Samuel Vizcarra con fecha 23/08/2019.-rn Monto $ 100.000rn Fecha de realización del evento: 13-09-2019.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(306, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-08-23', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \"Celebración Dia del niño en Unidad de Los Angeles\"rnProyecto facultativo entregado por mano a Samuel Vizcarra con fecha 23/08/2019.-rnMonto $ 153.000rnFecha de realización del evento: 30-08-2019.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(307, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-08-23', 'Carpetas de carton 100 unidadesrnAccoclips (50) 2 cajasrnSobres americanos 100 unidadesrnrnPor petición de don Leoncio Correa', 'Carpetas de carton 100 unidadesrnAccoclips (50) 2 cajasrnSobres americanos 50 unidadesrn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(310, 17, 'HILDA DEL PILAR SOBARZO POBLETE', '15614670-6', 'DEPARTAMENTO DE FISCALIZACION', 'hsobarzo@sii.cl', '2019-08-26', 'Cajas Menphis  Cant: 200,rnCalco 25 hojas  Cant: 100,rnCarpetas de carton  Cant: 300,rnCinta de embalaje Cant: 50,rnCorchetera Cant: 10,rnCorchetes 1/4 TRUPER Cant: 20,rnCorchetes 26-6 (5000) Cant: 30,rnDestacadores Cant: 30,rnGomas de borrar Cant: 20,rnLápiz pasta rojo Cant: 100,rnLápiz pasta azul Cant: 150,rnDispensador de scotch Cant: 5,rnPerforadoras Cant: 5,rnRollos de cañamo grande Cant:5rnPost it mediano Cant:24rn', 'PROCESADO POR SAMUEL VIZCARRA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(311, 17, 'HILDA DEL PILAR SOBARZO POBLETE', '15614670-6', 'DEPARTAMENTO DE FISCALIZACION', 'hsobarzo@sii.cl', '2019-08-26', 'Shampoo Vehiculos Cant: 18,rnAromatizante Vehiculos Cant:18,rnSilicona Cant:18', 'PROCESADO POR SAMUEL VIZCARRA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(312, 47, 'LUIS FREDDY CARRASCO MENDOZA', '11912755-6', 'DEPARTAMENTO DE ADMINISTRACION', 'lcarrasc@sii.cl', '2019-08-27', 'Hojas Carta Cant: 10,rnCarpetas de carton  Cant: 50,rnHojas Oficio Cant: 10,rnAccoclips (50) Cant: 1,rnElásticos (50g) Cant: 2,rnPost it chico Cant: 11,rnClips chico Cant: 11,rnScotch Cant: 5,rnrn', 'Hojas Carta Cant: 10,rnCarpetas de carton  Cant: 12,rnHojas Oficio Cant: 5,rnAccoclips (50) Cant: 1,rnElásticos (50g) Cant: 2,rnPost it chico Cant: 12,rnClips chico Cant: 11,rnScotch Cant: 5,', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(315, 45, 'XIMENA DEL CANERI FUENTEALBA', '10545277-2', 'DEPARTAMENTO DE FISCALIZACION', 'xcantero@sii.cl', '2019-08-29', 'Toalla Nova Cant: 1,rnPara grupo 2 y 3 Fiscalizaciónrn', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(321, 69, 'HERNAN SEGUNDO HERRERA SANZANA', '7632505-7', 'DEPARTAMENTO DE FISCALIZACION', 'hherrera@sii.cl', '2019-09-03', 'Hojas Carta 20 resmasrnHojas Oficio 10 resmas', 'Hojas Carta 20 resmasrnHojas Oficio 10 resmas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(322, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-09-04', 'Adquisicilón de bandera institucional para afuera del edificio.rnalto 180 y largo 290', 'comprada por caja chica', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(323, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-09-09', '04 ampolletas 2 pin', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(328, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-09-12', 'HOJAS CARTA - 10 RESMAS', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(330, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-09-13', '20 cajas memphis (tamaño chico)', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(331, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2019-09-16', 'Favor efectuar la entrega de 30 carpetas de cartón azules al área de secretaria de Administración, según lo conversado.rn', '30 carpetas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(332, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-09-23', 'Hojas Carta Cant: 30,rnHojas Oficio Cant: 40,rn', 'Hojas Carta Cant: 30,rnHojas Oficio Cant: 25,', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(333, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-09-23', 'Hojas Carta: 40 resmasrnHoja Oficio: 40 resmasrnCarpetas de carton: 200 unidadesrn', 'Hojas Carta: 20 resmasrnHoja Oficio: 20 resmasrnCarpetas de carton: 100 unidades', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(334, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-09-23', '8 tubos fluorescentes para reponer en IVA-RENTA', 'se debe realizar sia en requirimiento de inmuebles, para revisar primero los tubos', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(338, 45, 'XIMENA DEL CANERI FUENTEALBA', '10545277-2', 'DEPARTAMENTO DE FISCALIZACION', 'xcantero@sii.cl', '2019-09-26', 'Toalla Nova Cant: 0,rn', 'Toalla Nova Cant: 1', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(339, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-09-27', '02 TUBOS FLUORESCENTESrn03 PARTIDORES', '02 TUBOS FLUORESCENTESrn03 PARTIDORES', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(340, 45, 'XIMENA DEL CANERI FUENTEALBA', '10545277-2', 'DEPARTAMENTO DE FISCALIZACION', 'xcantero@sii.cl', '2019-09-30', 'Tubos Fluorescentes, 3 rnGrupo N°3 Fiscalización', 'Se cambiaron 02 tubos fluorescentes. gestionado por don Guillermo Vásquez.', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(341, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-09-30', '05 tubos fluorescentesrn02 cilindros para silla', '05 tubos fluorescentesrn02 cilindros para silla', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(342, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-09-30', '06 Shampu para vehículorn06 aromatizante vehículorn06 silicona vehículo', '04 Shampu para vehículorn04 aromatizante vehículorn04 silicona vehículo', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(346, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-10-03', 'Toalla Nova Cant: 1,rn', 'ENTREGADO', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(347, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-10-03', 'Clips chico Cant: 15rnScotch Cant: 10,rn', 'ENTREGADO', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(349, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2019-10-10', '20 Carpetas de cartonrn10 Destacadoresrn10 Correctoresrn10 Lapices pasta rojorn10 Archivadores Palancarn     Elásticos (500g)rn05  Plumón permanente azulrn05  Plumón permanente negrorn       Calco 25 hojasrn02  cajas Post it chicorn    rn(por favor entregar a Eduardo Raimilla , Secretario Grupos 2 y 3 Fisc)rn', '16 Carpetas de cartonrn05 Destacadoresrn01 Correctoresrn10 Lapices pasta rojorn04 Archivadores Palancarn  05   Elásticos (100g)rn04  Plumón permanente negrorn       Calco 100 hojasrn24  cajas Post it chicorn    rnrn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(355, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-10-15', 'CARPETAS PLASTICAS CON ACOCLIP - 10rnCARPETAS PLASTICAS - 10rnCINTA DE EMBALAJE - 10rnCORRECTOR - 5rnDESTACADORES - 10rnHOJAS CARTA - 10 RESMASrnPEGAMENTO EN BARRA - 10rnSOBRE SACO REVISTA - 10', 'CARPETAS PLASTICAS - 10rnCINTA DE EMBALAJE - 10rnCORRECTOR - 2rnDESTACADORES - 5rnHOJAS CARTA - 10 RESMASrnPEGAMENTO EN BARRA - 10rnSOBRE SACO REVISTA - 10', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(360, 95, 'MARGARET CARRASCO MENDOZA', '12973491-4', 'DEPARTAMENTO DE FISCALIZACION', 'mlcarras@sii.cl', '2019-11-20', 'Cajas Menphis  Cant: 30,rn', 'Se entrega:rnCajas Menphis  Cant: 25,', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(361, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2019-11-21', 'Hojas Carta Cant:30,rnHojas Oficio Cant: 30,rn', 'Hojas Carta Cant:20,rnHojas Oficio Cant: 15,', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(362, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-11-25', 'HOJAS CARTA 10 RESMASrnHOJAS OFICIO 10 RESMAS', 'HOJAS CARTA 10 RESMASrnHOJAS OFICIO 10 RESMAS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(363, 69, 'HERNAN SEGUNDO HERRERA SANZANA', '7632505-7', 'DEPARTAMENTO DE FISCALIZACION', 'hherrera@sii.cl', '2019-11-28', '20 cajas menphis', '20 cajas menphis', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(365, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2019-11-29', 'Cajas Menphis 50 unidadesrnCarpetas de cartón 50 unidadesrnClips chico 15 cajitasrnHojas Carta 20 resmasrnHojas Oficio 20 resmasrnScotch 15 unidadesrnSobre oficio 40 unidadesrnSobres americanos 40 unidadesrnTijera 5 unidadesrnTinta para tampón negro 2 unidadesrnTampón color negro KORES 2 unidadesrnrnrn', 'Cajas Menphis 25 unidadesrnHojas Carta 20 resmasrnHojas Oficio 10 resmasrnSobre oficio 40 unidadesrnTijera 3 unidadesrnTinta para tampón negro 1 unidadesrnTampón color negro KORES 2 unidades', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(366, 9, 'LILIAN RAMIS SOTOMAYOR', '9072801-6', 'GABINETE DEL DIRECTOR', 'lramis@sii.cl', '2019-11-30', '100 sobres saco oficiorn50 sobres saco medio oficiorn10 cajas clipsrn2 lápices correctoresrn6 lápices pasta azulrn10 scotchrn2 plumones (azul y negro)', '50 sobres saco oficiorn50 sobres saco medio oficiorn10 cajas clipsrn6 lápices pasta azulrn03 scotchrn3 plumones ( negro PERMANENTE) 2 DE PIZARRArn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(367, 9, 'LILIAN RAMIS SOTOMAYOR', '9072801-6', 'GABINETE DEL DIRECTOR', 'lramis@sii.cl', '2019-11-30', '5 cajas memphis', '5 cajas memphis', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(376, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2019-12-20', 'HOJAS CARTA 10 RESMAS', 'HOJAS CARTA 10 RESMAS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(378, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2019-12-26', '03 cinta embalaje transparente', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(383, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2020-01-02', 'Cajas Menphis  Cant: 25,rnCarpetas de carton  Cant: 150,rn', 'Cajas Menphis  Cant: 25,rnCarpetas de carton  Cant: 100,rn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(384, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2020-01-03', 'Destacadores Cant: 20,rnPortaminas 0,5 Cant: 10,rnDispensador de scotch Cant: 2,rnCorrector Cant: 20,rn', 'Se envía según materiales que tenemos en bodegarnDestacadores Cant: 10,rnDispensador de scotch Cant: 2,rnCorrector Cant: 06', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(386, 46, 'RICARDO JAVIER CARO SANTIBANEZ', '8993092-8', 'DEPARTAMENTO DE FISCALIZACION', 'rcaro@sii.cl', '2020-01-07', 'hojas de carta y oficio', 'hojas de carta y oficiorn1-caja hojas cartarn1-caja hojas oficio', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(390, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2020-01-09', 'Clips chico Cant: 20 cajasrn', 'entregado Clips chico Cant: 20 cajas', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(394, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-15', '1 shampu vehículorn1 aromatizadorrn1 bloqueador solarrn1 corcheterarn10 tubos fluorescentes', '1 shampu vehículorn1 aromatizadorrn1 bloqueador solarrn1 corcheterarn14 tubos fluorescentesrn9 partidores', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(395, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-17', 'Compra de combustiblernGas 95    $21.000.000rnPetrole     $3.000.000', 'COMPRA REALIZADA POR SAMUEL VIZCARRA 24-01-2020', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(396, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2020-01-20', 'Timbre fechadores TRODAT Cant: 1,rnpara Secretaría Administración', '20-01-2020', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(400, 26, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2020-01-22', 'Porta Credencial  - 300 unidadesrnCinta colgante para porta credencial - 300 unidades', 'PENDIENTE COMPRA SAMUEL VIZCARRA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(401, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-22', '03 cinta embalaje transparentern01 archivador', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(405, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', '2020-01-24', 'Carpetas de carton 400 UNIDADESrnCajas Menphis 50 UNIDADESrnHojas Carta 30 resmasrnHojas Oficio 30 resmasrnrn', '28-01-2020', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(406, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-24', '02 Neumáticos para camioneta de AvaluacionesrnCamioneta D-Max II, Chevroletrn245/70/R16, (delanteros)', 'COMPRA REALIZADA SAMUEL VIZCARRA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(407, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-24', '50 archivadoresrn500 carpetas cartónrn20 cinta embalajern100 clips chicosrn20 corchetes 26-6 (5000)rn30 destacadoresrn50 papel embalaje cafern50 plumón pizarra negrorn10 porta cliprn150 post it chicorn100 post it medianorn100 scothrn500 sobre 1/2 medio oficio blancorn100 sobre oficio blancorn200 sobre saco oficio blancorn500 sobres americanosrn10 fechadoresrn01 caja tinta para tampon azulrn01 caja tinta para tampon negrorn', 'COMPRA GESTIONADA', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(408, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-24', '200 papel higienicorn200 toalla nova', 'COMPRA GESTIONADA', 'TERMINADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', '2019-07-01 04:00:00', NULL),
(413, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-31', 'Compra de neumáticos , 2 unidades, para vehiculo de Talcahuanorn195/65/R15rnSe pide Michelin para que sean iguales a los que se compro el año pasado.', 'COMPRA REALIZADA POR SAMUEL VIZCARRA', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(414, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-01-31', '4 cajas menphisrn2 pliegos papel envolverrn2 pos it grandern1 aromatizador autorn', '', 'TERMINADO', 'CAROLA OPAZO VENEGAS', '2019-07-01 04:00:00', NULL),
(418, 47, 'FABIOLA VALLADARES SAN MARTIN', '10717868-6', 'DEPARTAMENTO DE ADMINISTRACION', 'fvalladares@sii.cl', '2020-02-04', 'Hojas Carta Cant: 10, RESMASrn', 'Hojas Carta Cant: 10, RESMAS', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(419, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2020-02-10', 'SOBRE MEDIO OFICIO 50', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(420, 81, 'GLADYS ANGELICA MARDONES SALAMANCA', '9520117-2', 'DEPARTAMENTO DE FISCALIZACION', 'gmardone@sii.cl', '2020-02-11', '30 Cajas Menphisrn30 Post It Chicorn07  Lapices azulrn10 Cajas Clips chicosrn05 Cajas Clips Grandesrn02 Gomas Para dedosrn500 Sobres americanosrn10  Pegamentos en barrarn05 Cintas de Embalajern02 Cajas Hojas Cartasrn', '30 Cajas Menphisrn36 Post It Chicorn07  Lapices azulrn05 Cajas Clips chicosrn05 Cajas Clips Grandesrn02 Gomas Para dedosrn100 Sobres americanosrn05  Pegamentos en barrarn05 Cintas de Embalajern02 Cajas Hojas Cartasrn', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(421, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-02-12', 'Estimada Alejandra: rnrnAgradecería me puedas efectuar la entrega de 3 archivadores  y 1 caja de resmas de papel tamaño carta.rn 3 lápiz corrector.rnGracias. ', 'Agradecería me puedas efectuar la entrega de 3 archivadores rn 3 lápiz corrector.rnResma entrega en solicitud 418', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(424, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-02-14', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" Conmemoración día de la Mujer Concepcion - Talcahuano\"rn Proyecto facultativo entregado a Samuel Vizcarra con fecha 14/02/2020.-rn Monto $ 178.500rn Fecha de realización del evento: 04/03/2020.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(425, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-02-17', 'Estimados: rnrnSolicito la entrega de 4 archivadoresrn4 cinta adhesiva rnrnGracias.', '4 cinta adhesiva ', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(426, 69, 'HERNAN SEGUNDO HERRERA SANZANA', '7632505-7', 'DEPARTAMENTO DE FISCALIZACION', 'hherrera@sii.cl', '2020-02-19', '20 resmas hoja tamaño cartarn15 resmas hoya tamaño oficio', '20 resmas hoja tamaño cartarn15 resmas hoya tamaño oficio', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL);
INSERT INTO `rel_fun_mat` (`ID_SOLICITUD`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `FECHA_DESPACHO`, `MATERIAL_SOL`, `OBSERVACIONES`, `ESTADO_SOL`, `MODIFICADO_POR`, `created_at`, `updated_at`) VALUES
(428, 52, 'ELOISA MARIA CECILIA CIFUENTES PEÑA', '5807103-K', 'DEPARTAMENTO DE FISCALIZACION', 'ccifuent@sii.cl', '2020-02-19', 'Hojas Carta Cant: 30rnHojas Oficio Cant: 30rn', 'Hojas Carta Cant: 30rnHojas Oficio Cant: 30', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(429, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-02-21', 'Estimada: rnrnFavor hacer entrega de 5 separadores de archivador.rnGracias.', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(431, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', '2020-02-26', '06 tubos fluorescentesrn08 partidores', '06 tubos fluorescentesrn08 partidores', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(434, 20, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-02-29', 'Por charla en conmemoración del día de la mujer DIA MIERCOLES 04 DE MARZO A CONTAR DE LAS 15:00 horas, se necesita el apoyo de auxiliares para distribuir sillas ordenadas para publico, 2 meses desplegables para la instalación de Coffe break, telón de bienestar, auxiliar que tome las fotografías de asistentes, retiro, aseo y orden del Hall de asistencia una vez terminado el evento. ', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(438, 17, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', '2020-03-05', 'Solicita la gestión de Servicios para la generación de Resolución Ex. \" Conmemoración dia de la Mujer - Los Angeles y Lebu\"rnProyecto facultativo de fecha aprobatoria 05/03/2020rnMonto $ 100.000rnFecha de realización del evento: 13 y 24 de Marzo 2020.-', '', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(439, 17, 'HILDA DEL PILAR SOBARZO POBLETE', '15614670-6', 'DEPARTAMENTO DE FISCALIZACION', 'hsobarzo@sii.cl', '2020-03-06', 'ALCOHOL GEL 6 UNIDADES', 'ENTREGADOS:rn1 DEPTO DE RENTArn1 DEPTO CCTrn1 SECRETARIA ASISTENCIArn1 JEFE GRUPO NATALIA MENDEZrn1 JEFE GRUPO RODRIGO FONTANILLArn1 JEFE GRUPO JORGE', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(442, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', '2020-03-10', 'Libro Liquidaciones Cant: 1,rn', 'Libro Liquidaciones Cant: 1,', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(443, 17, 'HILDA DEL PILAR SOBARZO POBLETE', '15614670-6', 'DEPARTAMENTO DE FISCALIZACION', 'hsobarzo@sii.cl', '2020-03-10', '4- Alcohol gel', 'SE ENVIA A DEPTO. DE AVALUACIONES', 'TERMINADO', 'ALEJANDRA IVONNE MUNOZ INZUNZA', '2019-07-01 04:00:00', NULL),
(445, 66, 'JENY LISSETTE GONZALES CASTRO', '13449327-5', 'DEPARTAMENTO DE FISCALIZACION', 'jeny.gonzalez@sii.cl', '2020-03-11', 'Jabon Liquido Para Dispensador Cant: 6,rnToalla Nova Cant: 16 unidades,rnHojas Carta Cant: 6 cajas,rnScoch chico Cant: 2 cajas', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(451, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', '2020-03-16', '30 litros de alcohol gelrn60 litros jabón liquidornrn', '', 'TERMINADO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', '2019-07-01 04:00:00', NULL),
(452, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', '2023-07-24', '- 9 unidad(es) de \"ESCOBA\" de tipo \"ASEO\"', 'ok.', 'ACEPTADO', 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '2023-07-21 23:35:30', '2023-07-21 23:37:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_rep_general`
--

CREATE TABLE `rel_fun_rep_general` (
  `ID_REP_INM` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_TIPO_REP_GENERAL` int(11) NOT NULL,
  `REP_SOL` varchar(1000) NOT NULL,
  `MODIFICADO_POR_REP_GEN` varchar(128) DEFAULT NULL,
  `ESTADO_REP_INM` varchar(20) NOT NULL DEFAULT 'INGRESADO',
  `OBSERV_REP_INM` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_rep_general`
--

INSERT INTO `rel_fun_rep_general` (`ID_REP_INM`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_TIPO_REP_GENERAL`, `REP_SOL`, `MODIFICADO_POR_REP_GEN`, `ESTADO_REP_INM`, `OBSERV_REP_INM`, `created_at`, `updated_at`) VALUES
(3, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Solicita cambio de Tubo Fluorescente baño damas primer piso', '', 'ACEPTADO', '', NULL, NULL),
(4, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'TUBO FLUORESCENTE EN RENTA (1)', '', 'ACEPTADO', '', NULL, NULL),
(6, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Mueble velador cerradura no sirve, quedando cajonera con material personal sin resguardo', '', 'ACEPTADO', '', NULL, NULL),
(8, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Urinario baño primer piso hombres, esta inoperante, gotea.rnrnRP Reparado', '', 'ACEPTADO', '', NULL, NULL),
(9, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere reparacion  WC: sellado y anclaje al piso. Baño bajo escala area sala de timbraje.rnRP: Arreglado', '', 'ACEPTADO', '', NULL, NULL),
(10, 78, 'PAULINA FRANCISCA LOYOLA MARTINEZ', '12525059-9', 'DEPARTAMENTO DE FISCALIZACION', 'PAULINA.LOYOLA@SII.CL', 1, 'Por favor, solicito retirar mesita de madera con 3 ruedas, puesta frente a mi escritorio.rnLo anterior, pues:rn1.-se encuentra en mal estadorn2.-no se ocuparn3.-podría resultar dañado algún chiquitín que acompañe a su mamá al Servicio.rnGracias, desde ya.', '', 'ACEPTADO', '', NULL, NULL),
(11, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Mueble velador cerradura no sirve, quedando cajonera con material personal sin resguardo', '', 'ACEPTADO', '', NULL, NULL),
(17, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere buscar URGENTE  expediente de Termnio de giro  11/2014 CAROLINA NELLY FRANCO ORTEGA, RUT 10.144.347-7 . Juan Carlos Torres o HernanTorres puede acompañar en esta labor.  Solicitud de conforme a correo electronico de Valeska Cartes ', '', 'ACEPTADO', '', NULL, NULL),
(20, 51, 'OSCAR G. CERDA ESPINOZA', '10001426-2', 'DEPARTAMENTO DE FISCALIZACION', 'ocerda@sii.cl', 2, 'EstimadosrnrnMediante el presente solicito que se revise el interruptor de mi oficina el cual aparentemente tiene alguna fuga de energía que la irradia al marco de la puerta', '', 'ACEPTADO', '', NULL, NULL),
(21, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 1, 'Silla Contribuyente n°3 de mi puesto, se encuentra con soporte inferior roto.rnFavor cambio a la brevedad, a fin de evitar un accidente. ', '', 'ACEPTADO', 'SE REALIZO CAMBIO DE SILLA', NULL, NULL),
(22, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Necesitamos visitar la bodega de Heras para traer expediente de herencias, en lo posible en la tarde', '', 'ACEPTADO', '', NULL, NULL),
(23, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 1, 'Revisión de equipo telefónico, puesto Hilda Sobarzo, quien indica que no recibe llamadas, ahora ya no se puede llamar.', '', 'ACEPTADO', 'Esta solicitud corresponde a personal de informática.', NULL, NULL),
(24, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, '2 sillas secretaría Iva Renta malas, estrellas rotas están rompiendo el piso', '', 'ACEPTADO', 'Se procede a cambio de una silla, la otra no esta siendo utilizada.', NULL, NULL),
(26, 47, 'LUIS FREDDY CARRASCO MENDOZA', '11912755-6', 'DEPARTAMENTO DE FISCALIZACION', 'LCARRASC@SII.CL', 1, 'Cajonera asignada a funcionaria Ignacia Lamig C. se encuentra trabada, por lo que no es posible abrirla.', '', 'ACEPTADO', '', NULL, NULL),
(29, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'El bombín hidráulico de mi silla de trabajo, esta malo, se baja sin mediar alguna acción. ', '', 'ACEPTADO', 'SE CAMBIA BOMBIN', NULL, NULL),
(30, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Silla funcionario, en mal estado, se reitera que el bombín hidráulico de mi silla de trabajo, esta malo, se baja sin mediar alguna acción.rnEsto es molesto e incomodo.', '', 'ACEPTADO', '', NULL, NULL),
(35, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, '2 sillas secretaría Iva Renta malas, estrellas rotas están rompiendo el piso, no se repararon en requerimiento anterior', '', 'ACEPTADO', '', NULL, NULL),
(44, 42, 'XIMENA ELIZABETH BELTRAN POBLETE', '12980640-0', 'DEPARTAMENTO DE FISCALIZACION', 'xbeltran@sii.cl', 3, 'Grupo N° 5 Fiscalización remite información de antecedentes de colegas retirados, y cambiados del grupo de contribuyentes que NO DEVOLVIERON.PARA LIBERAR ESPACIO. ', '', 'ACEPTADO', '', NULL, NULL),
(48, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 3, 'Solicita visita a bodega a la brevedad posible para busqueda de documentación de grupo ', '', 'ACEPTADO', 'gestionado 28/02/19', NULL, NULL),
(49, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 2, 'Solicita revisa silla de Marcos Fonseca dado que presetan problemas, se encuentra suelta', '', 'ACEPTADO', 'gestionado Gerardo Perez', NULL, NULL),
(50, 95, 'CAROLINA XIMENA POBLETE JARA', '12973491-4', 'DEPARTAMENTO DE FISCALIZACION', 'cpoblete@sii.cl', 3, 'baño segundo piso damas, el dispensador de confor baño de al medio esta con tornillos sobresalientes lo que me produjo una herida. esta peligroso.', '', 'ACEPTADO', 'gestionado Gerardo Perez', NULL, NULL),
(51, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, 'VISITA BODEGA HERAS RETIRO DE DOCUMENTOS ASISTENCIA', '', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(52, 16, 'PABLO ALEJANDRO MORALES SEPULVEDA', '14207775-2', 'DEPARTAMENTO DE ADMINISTRACION', 'alejandro.morales@sii.cl', 3, 'INSTALAR DISPENSADOR DE NUMERO EN ENTRADA DE GRUPO CTT', '', 'ACEPTADO', 'GESTIONADO MARIO BURGOS', NULL, NULL),
(53, 42, 'XIMENA ELIZABETH BELTRAN POBLETE', '12980640-0', 'DEPARTAMENTO DE FISCALIZACION', 'xbeltran@sii.cl', 1, 'solicito llave para mueble aéreo de mi puesto de trabajo. Mueble se encontraría sin poder tener resguardo de antecedentes. Se realizó inspección previa por don Gerardo Perez.', '', 'ACEPTADO', 'SE ENTREGO 1 LLAVE A LA FUNCIONARIA. LO REALIZO GERARDO PEREZ', NULL, NULL),
(55, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 2, 'Informa parpadeo y ruido en tubo fluorescente, sobre mi escritorio.', '', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ', NULL, NULL),
(61, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'guardar regalos de bienestar, 164 toallas', '', 'ACEPTADO', 'SE SOLICITARA MANTENER LLEVAR UN REGISTRO DE CADA EGRESO MENSUAL', NULL, NULL),
(62, 50, 'MARIA JAVIERA CASANUEVA HITSCHFELD', '10753887-9', 'DEPARTAMENTO DE FISCALIZACION', 'MCASANUE@SII.CL', 2, 'faltan tubos de luz fluorescente sobre dos escritorios, 1 en cada uno. ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'se cambiaron 02 tubos y 1 partidor. Gestionado por Mario Burgos y Gerardo Perez', NULL, NULL),
(64, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Para retirar expedientes martes 2 de abril en la tarde...  u otro dia a acordar', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'CONDUCTOR MARIO BURGOS', NULL, NULL),
(65, 14, 'ADOLFO MAURICIO MILLAN FAUNDEZ', '12890503-0', 'DEPARTAMENTO DE ADMINISTRACION', 'amillan@sii.cl', 2, 'Informa puertas de ingreso a Grupos 5, 6 y 7 de Fiscalización se encuentran en mal estado.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE GESTIONO ARREGLO CON CONTRATO CON RENE.', NULL, NULL),
(66, 12, 'NELLY MARISELL GALVEZ QUEZADA', '12558133-1', 'DEPARTAMENTO DE ADMINISTRACION', 'NGALVEZ@SII.CL', 1, 'solicita cambio del bombín silla', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(68, 70, 'PAMELA ANDREA HIDALGO NEIRA', '12922079-1', 'DEPARTAMENTO DE FISCALIZACION', 'phidalgo@sii.cl', 2, 'Partidor sobre mi escritorio defectuoso, genera hoy ruido continuo.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(69, 93, 'CARMEN PEÑA VALDES', '13727054-4', 'DEPARTAMENTO DE FISCALIZACION', 'carmeng.pena@sii.cl', 3, 'mantención en silla de funcionario, la cual no giran correctamente las ruedas y se balancea sobre su eje.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'ENTREGADA CON MEMO N° 26', NULL, NULL),
(70, 76, 'PAOLA ADRIANA LEAL MENDOZA', '14403735-9', 'DEPARTAMENTO DE FISCALIZACION', 'paola.lealm@sii.cl', 2, 'Alumbrado en mal estado.rnSe requiere la instalación de otro tubo en cada lámpara (escritorios Margaret y Paola) y que se revise la lámpara que le da luz al escritorio de Catalina, ya que no enciende.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(71, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, 'SE REQUIERE COMPRA DE :rn20 BALACrn100 PARTIDORESrn01 LAVAPLATO CON PEDESTAL', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(78, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere, revisar ducto de  alcantarillado y fijación de taza del baño ubicada  bajo escala, área sala de maquinas. Ya que , salen malos olores, en forma permanente, aunque no se use el sanitario.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'EL AÑO PASADO DON MARIO BURGOS REALIZO LA FIJACIÓN DE LA TAZA, SE HABLA CON EL JEFE PARA LA VENTILACIÓN Y USO DEL BAÑO PARA EVITAR OLORES.', NULL, NULL),
(79, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Baño primer piso lado hombres, se encuentra, con  WC , filtración de agua, seria un  flexible, en mal estado. El agua se encuentra cortada y baño sin poder usar, desde hace varios días', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'REALIZADO POR GUILLERMO VASQUEZ', NULL, NULL),
(80, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'A la brevedad se requiere, visitar bodega de Heras, para búsqueda de expediente solicitados , por funcionarios y contribuyentes', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE FUE EL MIERCOLES 08 MAYO', NULL, NULL),
(83, 51, 'OSCAR G. CERDA ESPINOZA', '10001426-2', 'DEPARTAMENTO DE FISCALIZACION', 'ocerda@sii.cl', 3, 'solicita rotar computadores entre funcionarios modulo del 10 al 13 ( Yasna Riffo - John Soto), ya que ellos transitoriamente cambiaran puestos de atención de publico', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'POR LUIS VARGAS', NULL, NULL),
(84, 104, 'CESAR LEONARDO SANHUEZA BELMAR', '11899872-3', 'DEPARTAMENTO DE FISCALIZACION', 'CSANHUEZ@SII.CL', 2, 'Estimad@s, junto con saludarlos, quisiera comentarles que la 1era y 3era taza del baño de varones del segundo piso, esta con problemas de corte de agua, ya sea porque no corta el paso de agua o no cierra bien el tapón.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(90, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Maquina timbradora nro 0135434 Jandellii, antigua  requiere mantención del sistema, esta trabada en su mecanismo de prensa.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Mantención realizada por Ariel Galvez15 de junio 2019', NULL, NULL),
(92, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Requerimos ir a bodega hoy 15 mayo 2019, para buscar expediente. Auxiliar asignado Victor Bello', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GERARDO PEREZ', NULL, NULL),
(101, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, 'Solicita reparación o cambio de silla puesto que volvió a fallar pistón y estrella y a la vez tiene apolla brazo quebrado ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Entrega con memo 34', NULL, NULL),
(102, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Baño varones primer piso con urinario tapado', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(112, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'apoyo acto ecuménico rnse solicita podiumrnamplificación y orden de sillas', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(114, 47, 'LUIS FREDDY CARRASCO MENDOZA', '11912755-6', 'DEPARTAMENTO DE FISCALIZACION', 'LCARRASC@SII.CL', 1, 'Muebles asignados a la funcionaria Sandra Torres S. registrados en el inventario bajo los números 5011617 y 5011618 presentan problemas en las chapas de la llaves.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(116, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'solicitud de apoyo auxiliares 08 y 11 de julio', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(122, 60, 'MARIBEL FREDES CHAVEZ', '12925775-K', 'DEPARTAMENTO DE FISCALIZACION', 'mfredes@sii.cl', 3, 'Baños de mujeres del segundo piso, se encuentran sin luz desde el viernes 12/07/2019 aprox', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'TRABAJO SE REALIZARA FIN DE SEMANA POR CORTE DE LUZ EN EL SEGUNDO PISO', NULL, NULL),
(123, 39, 'ANGELICA MARIA AVILA SALGADO', '12792116-4', 'DEPARTAMENTO DE FISCALIZACION', 'aavila@sii.cl', 2, 'Solicita reparación persiana costado Anette Miranda, y reemplazo tuvo fluorescente misma colega. A la brevedad posible. Muchas Gracias', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'REPARACIÓN DE PERSIANA Y REEMPLAZO TUVO FLUORESCENTE ARREGLADOS.', NULL, NULL),
(132, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere volver a revisar instalación de chapa de puerta, baño de mujeres, primer piso de Asistencia, la cual  no esta operando correctamente.Abre y cierra mal.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ Y MARIO BURGOS', NULL, NULL),
(135, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', 3, 'Solicito, retirar un enchufe de teléfono que esta adherido a la corriente, está ubicado a mi espalda, no se de quien es, y no lo puedo retirar. Supongo que hay que desarmarlo.rnCreo que es peligroso.rnMuchas Gracias.rnDMM', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ', NULL, NULL),
(136, 89, 'PATRICIO IVAN MUÑOZ VALLEJOS', '10109191-0', 'DEPARTAMENTO DE FISCALIZACION', 'pmunoz@sii.cl', 1, 'Reparación silla.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(137, 56, 'SANDRA ESTER ESPINOZA HENRIQUEZ', '10560556-0', 'DEPARTAMENTO DE FISCALIZACION', 'seespino@sii.cl', 1, 'silla mala, no se mantiene a la altura adecuada', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(138, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 1, 'CAMBIO DE DESAGUE BAÑO DE PUBLICO, SEGUNDO PISO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE ARREGLO EL DIA SÁBADO 24 POR GUILLERMO VASQUEZ', NULL, NULL),
(139, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'INSTALACION DE EXTRACTOR DE AIRE BAÑO MUJERES SEGUNDO PISO.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONAO POR GUILLERMO VASQUEZ EL SABADO 24 DE AGOSTO', NULL, NULL),
(141, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 2, 'Favor revisar a la brevedad, luminaria en acceso a G2 y G3, que está peligrosa, dado que no está totalmente ensamblado en el cielo falso.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GUILLERMO VASQUEZ FUE A REVISAR Y HABLO DIRECTAMENTE CON VERONICA LIZAMA QUIEN HIZO LA SOLICITUD Y LE INDICO QUE SOLO TIENE UNA MININA APERTURA PERO QUE ESTA BIEN SUJETA Y QUE NO TIENE NINGUN PELIGRO, QUE NO SE PUEDE CERRAR MAS. FUNCIONARIA QUEDO CONFORME', NULL, NULL),
(146, 83, 'JUAN ENRIQUE MARTINEZ FERNANDEZ', '12553273-K', 'DEPARTAMENTO DE FISCALIZACION', 'JEMARTIN@SII.CL', 3, 'Solicito apoyo de funcionario auxiliar a efectos de cargar y descargar  cajas de documentación de caso que se encuentra en revisión por RAV.rnrnEl apoyo se solicita para el dia 4 de septiembre de 2019 disponibilidad toda la jornada.rn', '', 'RECHAZADO', 'La disponibilidad de auxiliar se tiene que canalizar con cada uno de los departamentos que corresponda.', NULL, NULL),
(147, 89, 'PATRICIO IVAN MUÑOZ VALLEJOS', '10109191-0', 'DEPARTAMENTO DE FISCALIZACION', 'pmunoz@sii.cl', 1, 'Reparación de una silla que está peligrosa con riesgo de corte para usuarios.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE REALIZO CAMBIO DE SILLA POR GUILLERMO VASQUEZ', NULL, NULL),
(149, 70, 'PAMELA ANDREA HIDALGO NEIRA', '12922079-1', 'DEPARTAMENTO DE FISCALIZACION', 'phidalgo@sii.cl', 1, 'Se solicita cambiar la ubicación de la bandeja de teclado, gracias.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Se fue a revisar con don Guillermo Vásquez y Luis Vargas y no se puede realizar el cambio. Situación que entendio la funcionaria.', NULL, NULL),
(152, 85, 'ALVARO RICARDO MELLA SAN JUAN', '13956693-9', 'DEPARTAMENTO DE FISCALIZACION', 'alvaro.mella@sii.cl', 3, 'Solicita 3 mesas plegables para el día 27/09/2019, a las 13:00 hrs, para actividad grupal grupos 2 y 3, Fiscalización, a petición de los funcionarios.', 'CAROLA OPAZO VENEGAS', 'ACEPTADO', '', NULL, NULL),
(153, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Cambio de sifon para baño varones 1er piso.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'gestionado por Mario Burgos y Guillermo Vásquez, el día sábado 28 de septiembre', NULL, NULL),
(154, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Instalar candado para resguardar computador 1er piso, de auxiliares', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'gestionado el día sábado por Guillermo Vásquez y Mario Burgos', NULL, NULL),
(155, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Se solicita cambiar tubos fluorescentes de renta', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'El día sábado se cambiaron 05 tubos fluorescentes en Renta', NULL, NULL),
(158, 39, 'ANGELICA MARIA AVILA SALGADO', '12792116-4', 'DEPARTAMENTO DE FISCALIZACION', 'aavila@sii.cl', 3, 'Solicito la reparación de foco fluorescente ubicado entre los puestos de trabajo de Anette Miranda y Patricio Veloso, está parpadeante y molesta a los colegas que tienen sus puestos de trabajo cercano.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Se saco el tubo fluorescentes, no se reemplazo ya que no es necesario luz en el pasillo. Gestionado por Gerardo Pérez', NULL, NULL),
(159, 71, 'WILMA TERESA HUNTER ITURRA', '10237178-K', 'DEPARTAMENTO DE FISCALIZACION', 'whunter@sii.cl', 2, 'arreglo puerta salida emergencia, segundo piso depto. fiscalización, para lado O\"higgins 717, no cierra como corresponde, queda abierta ', '', 'EN REVISION', 'PENDIENTE PRESUPUESTO DE CONTRATISTA RENE. POR ALEJANDRA MUÑOZ', NULL, NULL),
(161, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Reparación  WC, en baño de primer piso,  esta generando filtración de  agua, podría ser el sello, que lo conecta al piso. ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO EL 14/12/19 POR GUILLERMO VASQUEZ', NULL, NULL),
(165, 79, 'ANITA LUENGO MALDONADO', '10765439-9', 'DEPARTAMENTO DE FISCALIZACION', 'ALUENGO@SII.CL', 3, 'Solicito puedan ver sistema de tubo fluorescente, que esta destellando desde hace un rato', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GERARDO PEREZ', NULL, NULL),
(168, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, '10 partidoresrn10 tubos fluorescentesrn05 ballast electrico', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(173, 66, 'JENY LISSETTE GONZALEZ CASTRO', '13449327-5', 'DEPARTAMENTO DE FISCALIZACION', 'jeny.gonzalez@sii.cl', 1, 'Debido a que la silla N°3010080225 (137155) se encuentra en mal estado y no fue posible arreglarla, favor solicito reemplazar por una nueva.rnLa silla tiene quebrado el soporte lo que significa que no puede regular su altura y se encuentra a desnivel, por lo que no permite trabajar adecuadamente.  La silla actualmente está ubicada en el escritorio de Mauricio Muñoz de la Unidad de Lebu.', '', 'RECHAZADO', 'EN ESPERA DE COMPRA POR PARTE DE SAMUEL VIZCARRArnNO HAY COMPRAS DE SILLAS PARA AÑO 2020rn', NULL, NULL),
(177, 76, 'PATRICIO IVAN MUÑOZ VALLEJOS', '14403735-9', 'DEPARTAMENTO DE FISCALIZACION', 'paola.lealm@sii.cl', 2, 'Se solicita reparación de puerta de salida de emergencia segundo piso (salida 717).', '', 'EN REVISION', 'PENDIENTE PRESUPUESTO CONTRATISTA RENE. POR ALEJANDRA MUÑOZ', NULL, NULL),
(178, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', 3, 'Revisión del interruptor luz, oficina coordinadores.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO EMPRESA CONSTRUCTORA LICITACION', NULL, NULL),
(185, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 2, 'Se solicita reparar la luminaria del sector gabinete depto. fiscalización. Toda vez, que con la falta de luz natural por las ventanas, se hace necesario, para la salud de los funcionarios, mejorar los 5 tubos fluorescentes con que cuenta el sector.', 'DAMARIS VIRGINIA MEDINA MORAGA', 'ACEPTADO', 'Se cambiaron 3 tubos fluorescentes,  2 equipo estan malos, quedará pendiente de cambio según indicaciones Jefatura.', NULL, NULL),
(191, 85, 'ALVARO RICARDO MELLA SAN JUAN', '13956693-9', 'DEPARTAMENTO DE FISCALIZACION', 'alvaro.mella@sii.cl', 1, 'Se solicita 2 mesas plegables para reunión que se realizara en Grupos 2 y 3 de Fiscalización entre las 13:15 hrs hasta las 15:15 hrs. del día viernes 31/01/2020', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_rep_veh`
--

CREATE TABLE `rel_fun_rep_veh` (
  `ID_SOL_REP_VEH` bigint(20) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `PATENTE_VEHICULO` varchar(7) NOT NULL,
  `ID_TIPO_SERVICIO` int(11) NOT NULL,
  `DETALLE_REPARACION_REP_VEH` text DEFAULT NULL,
  `FECHA_INICIO_REP_VEH` datetime DEFAULT NULL,
  `FECHA_TERMINO_REP_VEH` datetime DEFAULT NULL,
  `ESTADO_SOL_REP_VEH` varchar(128) DEFAULT 'INGRESADO',
  `MODIFICADO_POR_REP_VEH` varchar(128) DEFAULT NULL,
  `OBSERV_REP_VEH` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_rep_veh`
--

INSERT INTO `rel_fun_rep_veh` (`ID_SOL_REP_VEH`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `PATENTE_VEHICULO`, `ID_TIPO_SERVICIO`, `DETALLE_REPARACION_REP_VEH`, `FECHA_INICIO_REP_VEH`, `FECHA_TERMINO_REP_VEH`, `ESTADO_SOL_REP_VEH`, `MODIFICADO_POR_REP_VEH`, `OBSERV_REP_VEH`, `created_at`, `updated_at`) VALUES
(24, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 1, 'Vehiculo no enciende motor, al parecer tiene problemas de alternador y corte eléctrico, según informe de Unidad.rnSe solicita grua para traslado al taller.', NULL, NULL, 'EN REVISION', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ok', '2018-10-09 06:00:00', '2023-07-26 03:01:50'),
(25, 185, 'CAROLINA EUGENIA CASTRO NIZZA', '12047573-8', 'UNIDAD DE LOS ANGELES', 'cecastro@sii.cl', 'CWYF-10', 2, 'Compra de 2 neumáticos para el Elantra asignado a Unidad Los Angeles de acuerdo a correo a Adolfo del 20/06/2019. Incluir rotación de neumáticos y alineación.', '2019-07-29 00:00:00', '2019-07-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE COMPRARON LOS NEUMATICOS, FALTAN INSTALARLOS', '2019-06-20 08:00:00', '2019-07-29 08:00:00'),
(26, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 2, 'Se solicita una cotización por arreglo del pink up de la camioneta de avaluaciones para el lunes 08 de octubre, a las 09:00 hrs.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2018-10-04 06:00:00', '2018-11-09 06:00:00'),
(29, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'CWYF-26', 1, 'SOLICITA HORA INGRESO A TALLER POR MANTENCION 260.000 KMrnPARA EL LUNES 05 DE NOVIEMBRE', '2018-11-06 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2018-10-29 06:00:00', '2018-11-09 06:00:00'),
(30, 139, 'HUGO EDUARDO BARRA LEMUS', '12525636-8', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'hugo.barra@sii.cl', 'CWYF-26', 1, 'Udec Sala Asignatura, Cumplimiemto Tributario Basico', '2018-11-05 00:00:00', '0000-00-00 00:00:00', 'RECHAZADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'Petición no correspnde a tipo de requerimiento.', '2018-10-31 06:00:00', '2018-11-05 06:00:00'),
(31, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYD-87', 1, 'Solicita mantención de los 150.000 mas cambio de aceite.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'MANTENCIÓN PREVENTIVA REALIZADA EL DÍA 23-11-2018', '2018-11-13 06:00:00', '2019-03-22 06:00:00'),
(32, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYD-87', 2, '- Cambio de amortiguadores.rn- Revisión de alza vidrio copiloto.rn- Cambio portafiltro.rn- Reposición filtro polen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'VEHICULO ASISTE A MANTENCIÓN PREVENTIVA LE 23-11-2018.rnLA CUAL NO OBSERVO ACCIONES CORRECTIVAS MENCIONADAS EN REQUERIMIENTO.', '2018-11-13 06:00:00', '2019-03-22 06:00:00'),
(33, 175, 'JUAN ALARCON CONTRERAS', '9685432-3', 'UNIDAD DE LOS ANGELES', 'JALARCON@SII.CL', 'GBTL-10', 1, 'Mantención 90.000 Km.', '2018-12-12 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '03/12 INGRESO A TALLER', '2018-11-28 06:00:00', '2019-03-22 06:00:00'),
(36, 185, 'CAROLINA EUGENIA CASTRO NIZZA', '12047573-8', 'UNIDAD DE LOS ANGELES', 'cecastro@sii.cl', 'CWVP-47', 2, 'Compra de nueva batería vehículo TUCSON de la Unidad de Los Angeles', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-02-11 06:00:00', '2019-03-22 06:00:00'),
(37, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYF-10', 2, 'Reporto falla de reparación efectuada con anterioridad respecto a cinturón de seguridad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'EN REPARACION EN TALLER', '2019-02-25 06:00:00', '2019-03-22 06:00:00'),
(40, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWVP-47', 1, 'CAMBIO DE ACEITE PARA VEHICULO INDICADO, DIA 19/03/2019', '2019-03-19 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-03-18 06:00:00', '2019-03-22 06:00:00'),
(41, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWVP-47', 1, 'CAMBIO DE ACEITE PARA EL DIA 21/03/2019', '2019-03-22 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-03-20 06:00:00', '2019-03-22 06:00:00'),
(42, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 1, 'MANTENCION PARA EL DIA LUNES 25/03/2019', '2019-03-27 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'se realizo cambio de 4 neumaticos', '2019-03-21 06:00:00', '2019-03-26 06:00:00'),
(43, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 1, 'REVISION DE LOS 100.000 KL.', '2019-03-27 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'cambio de 4 neumaticos', '2019-03-26 06:00:00', '2019-03-26 06:00:00'),
(44, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'KDVD-46', 1, 'PREVENTIVA 40.000 KM', '2019-04-01 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-03-28 06:00:00', '2019-03-28 06:00:00'),
(45, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 2, 'AUTOMOVIL EN PANNE', '2019-03-28 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-03-28 06:00:00', '2019-03-28 06:00:00'),
(47, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 1, 'MANTENCION 130.000 KM.', '2019-04-05 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'CHOFER ALEX GUERRA', '2019-04-04 06:00:00', '2019-04-04 06:00:00'),
(48, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'HSHV-23', 1, 'MANTENCION DE LOS 110.000 KM', '2019-04-17 00:00:00', '2019-04-17 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-16 08:00:00', '2019-04-16 08:00:00'),
(49, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWYF-10', 1, 'solicita hora, para mantención de 190000Km.  el día Lunes 29-4-2019, móvil CWYF-10', '2019-04-29 00:00:00', '2019-04-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-25 08:00:00', '2019-04-25 08:00:00'),
(50, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJGK-74', 2, 'revision de las pastillas', '2019-04-26 00:00:00', '2019-04-26 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-25 08:00:00', '2019-04-25 08:00:00'),
(51, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 1, 'MANTENCION PREVENTIVA 180.000 KM', '2019-05-13 00:00:00', '2019-05-13 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-13 08:00:00', '2019-05-13 08:00:00'),
(52, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GBTL-10', 1, 'PREVENTIVA 100.000 KM', '2019-05-14 00:00:00', '2019-05-14 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-13 08:00:00', '2019-05-13 08:00:00'),
(53, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJGK-74', 2, 'revision filtracion de agua', '2019-05-16 00:00:00', '2019-05-16 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-16 08:00:00', '2019-05-16 08:00:00'),
(54, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'RODRIGO.ONATE@SII.CL', 'KDVD-46', 2, 'Frenos delanteros emiten sonido muy fuerte cono si balatas estuviesen totalmente gastadas y solo estuviese frenando directamente contra el disco de freno, es el mismo problema que tuvo el KDVD-44 ', '2019-07-10 00:00:00', '2019-07-10 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE LLEVO A MANTENCION Y SE REVISO NO ENCONTRANDO BUENO LOS FRENOS', '2019-06-07 08:00:00', '2019-07-10 08:00:00'),
(55, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 2, 'Solicita cambio de 4 neumáticos de vehículo Tucson patente CWVP- 47, por desgaste uso', '2019-07-29 00:00:00', '2019-07-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE CIERRA , SE COMPRARON LOS NEUMATICOS, SOLO FALTA INSTALARLOS.', '2019-07-10 08:00:00', '2019-07-29 08:00:00'),
(56, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWYF-10', 2, 'Batería del vehículo se encuentra muerta; no fue posible su carga.', '2019-09-02 00:00:00', '2019-09-02 00:00:00', 'ACEPTADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', 'SE REALIZO PROCESO DE COMPRA, SE ESPERA QUE PARA EL DÍA 02 DE SEPTIEMBRE A MAS TARDAR LLEGUE LA BATERIA.', '2019-08-12 08:00:00', '2019-08-22 08:00:00'),
(57, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJGK-74', 2, 'Escala para acceder al furgón, que es utilizado, por los funcionarios y contribuyentes, se encuentra nuevamente trabada. Una solución alternativa seria construir  una escala de madera de dos peldaños o comprar una metálica , pero que no este incorporada bajo el furgón. Ya que al parecer, siempre sufre daños.', '2019-09-07 00:00:00', '2019-09-07 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'MARIO REPARO LA ESCALERA, PERO IGUAL QUEDA APRETADA, EN EL CASO QUE NO SE PUEDA ABRIR SE PINTO UNA BANCA FACILITADA POR ASISTENCIA  Y QUE QUEDARA EN EL FURGON.', '2019-08-20 08:00:00', '2019-09-09 06:00:00'),
(58, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJGK-74', 2, 'Estimados, maquina timbradora, instalada en el furgón,  presenta guía de cuño, suelta.  Además pisadera del furgón de entrada a contribuyentes se encuentra  trabada, lo cual se constate en terreno en revisión al furgón. Interior del furgón esta con manchas y rayas propias del uso , cuando este es utilizado para trasladar muebles y otros materiales.', '2019-09-22 00:00:00', '2019-09-22 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'GESTIONADO POR ARIEL GALVEZ, SE CAMBIO EL ENGRANAJE', '2019-09-11 06:00:00', '2019-09-23 06:00:00'),
(59, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJSF-27', 2, 'Cierre centralizado, esta operando en forma errónea, se abre y cierra en forma automática sin  la intervención del conductor. Lo cual genera incertidumbre en la manipulación del sistema y seguridad del vehículo.', '2019-09-25 00:00:00', '2019-09-25 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'REPUESTO SE  SOLICITO A TALLER, SE IMPORTA. UNA VEZ QUE LLEGUE SE INSTALA.', '2019-09-11 06:00:00', '2019-09-25 06:00:00'),
(60, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 2, 'Se solicita compra bateria para la camioneta de Avaluaciones, Marca Chevrolet, D-Max II, rn20 HR 80 AHrnCCA 565 Arn95D31(JIS)', '2019-12-09 00:00:00', '2019-12-09 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'COMPRA GESTIONADA POR SAMUEL VIZCARRA', '2019-10-15 06:00:00', '2019-12-09 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_salas`
--

CREATE TABLE `rel_fun_salas` (
  `ID_SOL_SALA` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `EQUIPO_SALA` varchar(128) DEFAULT NULL,
  `MOTIVO_SOL_SALA` varchar(1000) DEFAULT NULL,
  `CANT_PERSONAS_SOL_SALAS` int(11) DEFAULT NULL,
  `FECHA_SOL_SALA` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_ASIG_SALA` timestamp NULL DEFAULT NULL,
  `FECHA_TERM_ASIG_SALA` timestamp NULL DEFAULT NULL,
  `HORA_SOL_SALA` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_SALA` varchar(128) DEFAULT NULL,
  `SALA_PEDIDA` varchar(128) DEFAULT NULL,
  `SALA_A_ASIGNAR` varchar(128) DEFAULT NULL,
  `ESTADO_SOL_SALA` varchar(128) DEFAULT NULL,
  `MODIFICADO_POR_SOL_SALA` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_SALA` varchar(1000) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(11) NOT NULL,
  `ID_TIPO_EQUIPOS` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_salas`
--

INSERT INTO `rel_fun_salas` (`ID_SOL_SALA`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `EQUIPO_SALA`, `MOTIVO_SOL_SALA`, `CANT_PERSONAS_SOL_SALAS`, `FECHA_SOL_SALA`, `FECHA_INICIO_ASIG_SALA`, `FECHA_TERM_ASIG_SALA`, `HORA_SOL_SALA`, `HORA_TERM_SOL_SALA`, `SALA_PEDIDA`, `SALA_A_ASIGNAR`, `ESTADO_SOL_SALA`, `MODIFICADO_POR_SOL_SALA`, `OBSERV_SOL_SALA`, `ID_CATEGORIA_SALA`, `ID_TIPO_EQUIPOS`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'EQUIPO DE VIDEOCONFERENCIAS, DATA, AMPLIFICADOR', 'asdadsdasda', 1, '2023-07-17 a 2023-07-23', '2023-07-01 16:00:00', '2023-07-07 16:00:00', '12:00', '12:00', NULL, 'VIDEO CONFERENCIA', 'ACEPTADO', 'SUSAN PARRA  QUIROZ', 'ENTIENDO', 1, 1, '2023-07-18 02:59:07', '2023-07-18 03:25:09'),
(2, 17, 'ALEJANDRA IVONNE MUNOZ  INZUNZA', '15.614.670-6', 'DEPARTAMENTO DE ADMINISTRACION', 'alejandra.munoz@sii.cl', 'DATA, AMPLIFICADOR', 'adasda', 1, '2023-07-17 a 2023-07-29', '2023-07-18 16:00:00', '2023-07-19 16:00:00', '12:00', '12:00', NULL, 'HALL RENTA', 'ACEPTADO', 'SUSAN PARRA  QUIROZ', 'sadasd', 1, 1, '2023-07-18 03:35:14', '2023-07-18 03:35:54'),
(3, 27, 'LUIS ARSENIO VARGAS ABARCA', '9.448.182-1', 'DEPARTAMENTO DE ADMINISTRACION', 'lvargas@sii.cl', 'EQUIPO DE VIDEOCONFERENCIAS, DATA, AMPLIFICADOR', 's5d5', 1, '2023-07-27 a 2023-07-31', '2023-07-27 17:00:00', '2023-07-28 18:00:00', '14:00', '16:00', NULL, 'CARMEN PROSSER', 'EN REVISION', 'LUIS ARSENIO VARGAS ABARCA', 'PRUEBA', 1, 1, '2023-07-27 17:15:18', '2023-08-02 18:05:29'),
(4, 21, 'SUSAN PARRA QUIROZ', '10.273.761-K', 'DEPARTAMENTO DE ADMINISTRACION', 'sparra@sii.cl', 'NOTEBOOK, DATA', 'Capacitacion Curso Impuestos a las Herencias', 20, '2023-09-05 a 2023-09-07', '2023-09-05 11:00:00', '2023-09-07 21:00:00', '08:00', '17:30', NULL, 'CARMEN PROSSER', 'ACEPTADO', 'SUSAN PARRA QUIROZ', NULL, 1, 1, '2023-08-02 19:54:51', '2023-08-02 19:56:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_veh`
--

CREATE TABLE `rel_fun_veh` (
  `ID_SOL_VEH` int(10) UNSIGNED NOT NULL,
  `PATENTE_VEHICULO` varchar(7) DEFAULT NULL,
  `ID_USUARIO` int(10) UNSIGNED DEFAULT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `MOTIVO_SOL_VEH` varchar(1000) DEFAULT NULL,
  `CONDUCTOR` varchar(128) DEFAULT NULL,
  `OCUPANTE_1` varchar(128) DEFAULT NULL,
  `OCUPANTE_2` varchar(128) DEFAULT NULL,
  `OCUPANTE_3` varchar(128) DEFAULT NULL,
  `OCUPANTE_4` varchar(128) DEFAULT NULL,
  `OCUPANTE_5` varchar(128) DEFAULT NULL,
  `OCUPANTE_6` varchar(128) DEFAULT NULL,
  `ORIGEN` varchar(128) DEFAULT NULL,
  `DESTINO` varchar(128) DEFAULT NULL,
  `N_ORDEN_TRABAJO` int(10) UNSIGNED DEFAULT NULL,
  `FIRMA_CONDUCTOR` varchar(128) DEFAULT NULL,
  `FIRMA_JEFE_ADMINISTRACION` varchar(128) DEFAULT NULL,
  `FIRMA_ADMINISTRADOR` varchar(128) DEFAULT NULL,
  `KMS_INICIAL` varchar(128) DEFAULT NULL,
  `KMS_FINAL` varchar(128) DEFAULT NULL,
  `KMS_RECORRIDOS` varchar(128) DEFAULT NULL,
  `HORA_SALIDA` varchar(128) DEFAULT NULL,
  `HORA_LLEGADA` varchar(128) DEFAULT NULL,
  `HORAS_TOTALES` varchar(128) DEFAULT NULL,
  `NIVEL_TANQUE` varchar(128) DEFAULT NULL,
  `N_BITACORA` int(10) UNSIGNED DEFAULT NULL,
  `ABS_BENCINA` varchar(128) DEFAULT NULL,
  `FECHA_SOL_VEH` varchar(128) DEFAULT NULL,
  `FECHA_SALIDA` timestamp NULL DEFAULT NULL,
  `FECHA_LLEGADA` timestamp NULL DEFAULT NULL,
  `FECHA_LLEGADA_CONDUCTOR` timestamp NULL DEFAULT NULL,
  `NOMBRE_OCUPANTES` varchar(1000) DEFAULT NULL,
  `ESTADO_SOL_VEH` varchar(128) NOT NULL DEFAULT 'INGRESADO',
  `MODIFICADO_POR_SOL_VEH` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_VEH` varchar(1000) DEFAULT NULL,
  `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_fun_veh`
--

INSERT INTO `rel_fun_veh` (`ID_SOL_VEH`, `PATENTE_VEHICULO`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `MOTIVO_SOL_VEH`, `CONDUCTOR`, `OCUPANTE_1`, `OCUPANTE_2`, `OCUPANTE_3`, `OCUPANTE_4`, `OCUPANTE_5`, `OCUPANTE_6`, `ORIGEN`, `DESTINO`, `N_ORDEN_TRABAJO`, `FIRMA_CONDUCTOR`, `FIRMA_JEFE_ADMINISTRACION`, `FIRMA_ADMINISTRADOR`, `KMS_INICIAL`, `KMS_FINAL`, `KMS_RECORRIDOS`, `HORA_SALIDA`, `HORA_LLEGADA`, `HORAS_TOTALES`, `NIVEL_TANQUE`, `N_BITACORA`, `ABS_BENCINA`, `FECHA_SOL_VEH`, `FECHA_SALIDA`, `FECHA_LLEGADA`, `FECHA_LLEGADA_CONDUCTOR`, `NOMBRE_OCUPANTES`, `ESTADO_SOL_VEH`, `MODIFICADO_POR_SOL_VEH`, `OBSERV_SOL_VEH`, `ID_TIPO_VEH`, `created_at`, `updated_at`) VALUES
(2, 'LZFF-48', 8, 'CRISTIAN ALBERTO GOMEZ CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'lasdkadf', '8', '8', NULL, NULL, NULL, NULL, NULL, '246', '121', NULL, '11.821.718-7 CRISTIAN ALBERTO GOMEZ CASTILLO', '12.890.503-0 ADOLFO MAURICIO MILLAN FAUNDEZ', '14.242.941-1 CAROLA OPAZO VENEGAS', NULL, NULL, NULL, '12:00', '12:00', NULL, NULL, NULL, NULL, '2023-07-26 a 2023-07-29', '2023-07-26 16:00:00', '2023-07-27 16:00:00', NULL, 'CRISTIAN ALBERTO GOMEZ CASTILLO', 'POR RENDIR', 'CRISTIAN ALBERTO GOMEZ CASTILLO', 'dfghj', 2, '2023-07-26 15:28:00', '2023-07-26 18:32:44'),
(3, 'CWYF-10', 15, 'FELIPE MATIAS MONTALVAN ESCOBEDO', '16.709.848-7', 'DEPARTAMENTO DE ADMINISTRACION', 'felipe.montalvan@sii.cl', 'fiscalizacion', '16', '16', '14', NULL, NULL, NULL, NULL, '73', '86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-01 16:00:00', '2023-08-03 16:00:00', NULL, 'PABLO ALEJANDRO MORALES SEPULVEDA\r\nADOLFO MAURICIO MILLAN FAUNDEZ', 'POR AUTORIZAR', 'FELIPE MATIAS MONTALVAN ESCOBEDO', NULL, 1, '2023-08-01 17:57:14', '2023-08-01 17:58:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resoluciones`
--

CREATE TABLE `resoluciones` (
  `ID_RESOLUCION` int(10) UNSIGNED NOT NULL,
  `NRO_RESOLUCION` int(10) UNSIGNED NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  `ID_TIPO` int(10) UNSIGNED NOT NULL,
  `ID_FIRMANTE` int(10) UNSIGNED NOT NULL,
  `ID_FACULTAD` int(10) UNSIGNED NOT NULL,
  `ID_DELEGADO` int(10) UNSIGNED NOT NULL,
  `DOCUMENTO` varchar(191) DEFAULT NULL,
  `OBSERVACIONES` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resoluciones`
--

INSERT INTO `resoluciones` (`ID_RESOLUCION`, `NRO_RESOLUCION`, `FECHA`, `ID_TIPO`, `ID_FIRMANTE`, `ID_FACULTAD`, `ID_DELEGADO`, `DOCUMENTO`, `OBSERVACIONES`) VALUES
(1, 1802, '2018-02-27 00:00:00', 1, 1, 1, 19, NULL, '-'),
(2, 1802, '2018-02-27 00:00:00', 1, 1, 1, 20, NULL, '-'),
(3, 1802, '2018-02-27 00:00:00', 1, 1, 1, 21, NULL, '-'),
(4, 1802, '2018-02-27 00:00:00', 1, 1, 1, 22, NULL, '-'),
(5, 1802, '2018-02-27 00:00:00', 1, 1, 1, 23, NULL, '-'),
(6, 1802, '2018-02-27 00:00:00', 1, 1, 1, 24, NULL, '-'),
(7, 1802, '2018-02-27 00:00:00', 1, 1, 1, 25, NULL, '-'),
(8, 1802, '2018-02-27 00:00:00', 1, 1, 1, 26, NULL, '-'),
(9, 1802, '2018-02-27 00:00:00', 1, 1, 1, 27, NULL, '-'),
(10, 1802, '2018-02-27 00:00:00', 1, 1, 1, 28, NULL, '-'),
(11, 1802, '2018-02-27 00:00:00', 1, 1, 1, 29, NULL, '-'),
(12, 1802, '2018-02-27 00:00:00', 1, 1, 1, 30, NULL, '-'),
(13, 6195, '2015-09-01 00:00:00', 1, 1, 11, 9, NULL, '-'),
(14, 6195, '2015-09-01 00:00:00', 1, 1, 11, 31, NULL, '-'),
(15, 6195, '2015-09-01 00:00:00', 1, 1, 11, 32, NULL, '-'),
(16, 6195, '2015-09-01 00:00:00', 1, 1, 11, 8, NULL, '-'),
(17, 6195, '2015-09-01 00:00:00', 1, 1, 11, 10, NULL, '-'),
(18, 5, '2015-03-02 00:00:00', 1, 1, 3, 5, NULL, '-'),
(19, 1936, '2013-03-04 00:00:00', 1, 1, 4, 5, NULL, '-'),
(20, 1936, '2013-03-04 00:00:00', 1, 1, 4, 9, NULL, '-'),
(21, 1936, '2013-03-04 00:00:00', 1, 1, 4, 31, NULL, '-'),
(22, 1936, '2013-03-04 00:00:00', 1, 1, 4, 32, NULL, '-'),
(23, 1936, '2013-03-04 00:00:00', 1, 1, 4, 8, NULL, '-'),
(24, 1936, '2013-03-04 00:00:00', 1, 1, 4, 10, NULL, '-'),
(25, 2689, '2013-03-25 00:00:00', 1, 1, 5, 5, NULL, '-'),
(26, 2689, '2013-03-25 00:00:00', 1, 1, 5, 9, NULL, '-'),
(27, 2689, '2013-03-25 00:00:00', 1, 1, 5, 31, NULL, '-'),
(28, 2689, '2013-03-25 00:00:00', 1, 1, 5, 32, NULL, '-'),
(29, 2689, '2013-03-25 00:00:00', 1, 1, 5, 8, NULL, '-'),
(30, 2689, '2013-03-25 00:00:00', 1, 1, 5, 10, NULL, '-'),
(31, 1574, '2012-02-16 00:00:00', 1, 1, 6, 6, NULL, '-'),
(32, 1575, '2012-02-17 00:00:00', 1, 1, 7, 6, NULL, '-'),
(33, 1576, '2012-02-18 00:00:00', 1, 1, 8, 6, NULL, '-'),
(34, 2197, '2012-03-09 00:00:00', 1, 1, 9, 5, NULL, '-'),
(35, 2197, '2012-03-09 00:00:00', 1, 1, 9, 9, NULL, '-'),
(36, 2197, '2012-03-09 00:00:00', 1, 1, 9, 31, NULL, '-'),
(37, 2197, '2012-03-09 00:00:00', 1, 1, 9, 32, NULL, '-'),
(38, 2197, '2012-03-09 00:00:00', 1, 1, 9, 8, NULL, '-'),
(39, 2197, '2012-03-09 00:00:00', 1, 1, 9, 10, NULL, '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRADOR', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(2, 'SERVICIOS', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(3, 'INFORMATICA', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(4, 'JURIDICO', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(5, 'FUNCIONARIO', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(6, 'CONDUCTOR', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34');

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
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `ID_SALA` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SALA` varchar(128) DEFAULT NULL,
  `CAPACIDAD_PERSONAS` int(11) DEFAULT NULL,
  `ESTADO_SALA` varchar(128) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`ID_SALA`, `NOMBRE_SALA`, `CAPACIDAD_PERSONAS`, `ESTADO_SALA`, `ID_CATEGORIA_SALA`) VALUES
(1, 'CARMEN PROSSER', 35, 'DISPONIBLE', 1),
(2, 'VIDEO CONFERENCIA', 25, 'DISPONIBLE', 1),
(4, 'SALA REUNION DR', 7, 'DISPONIBLE', 1),
(5, 'HALL RENTA', 35, 'DISPONIBLE', 1),
(6, 'SALA 1', 2, 'DISPONIBLE', 1),
(7, 'SALA 2', 3, 'DISPONOBLE', 1),
(8, 'EXTERNA', 30, 'DISPONIBLE', 1),
(9, 'OFICINA ADMINISTRACION - FRENTE SALA 2 2', 4, 'DISPONOBLE', 1),
(10, 'OFICINA ASISTENTE SOCIAL', 2, 'DISPONIBLE', 1),
(11, 'BODEGA HERAS', 1, 'DISPONIBLE', 2),
(12, 'BODEGA BARRIO NORTE', 1, 'DISPONIBLE', 2),
(13, 'BODEGA LOCAL', 1, 'DISPONIBLE', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3GZ0w3bK1mBUM9oH3R3b87jO6Z2vUrKPmJufO58F', 8, '10.8.160.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/100.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWRPYjNaOFRCOEtjbGpLanJwRW1NQWszRUVmNmZaSURBcmJtc2pScyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC44LjEwMC4yMzg6ODEvaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1691159914),
('BSiykABB0pyhKm6AHx5hQPswEO6m2M8ONGcgdiqy', 21, '10.8.100.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ0oxblRKV3pTcDVpU0RZRkowbU90WFVlN0tXd09NTFFzNnFFcnN4VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTAuOC4xMDAuMjM4OjgxL2hvbWUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMTt9', 1691159961),
('ez9mtUutUJdaA0Yrvr4p2CNqt9mitWt4SylcOTyz', 8, '10.8.100.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlZ2TVVMaGl6Q2Q5RWVOZWc1RDJjNDVxaElQSzJLYTdwdXpmQ1VsWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC44LjEwMC4yMzg6ODEvZnVuY2lvbmFyaW9zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1691165464),
('IutSTAJuhLYoEJ4zYf5ftK3PHnMVsLqo3WIkQjeB', 27, '10.8.100.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibENEZ09QT05uZTE2MjRoSTB6Y3hlMlZFSjNWVUdmZ21NNDQ4Q0VvNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC44LjEwMC4yMzg6ODEvaG9tZSI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNzt9', 1691159892),
('J3HSWyx1Gz0PhF2Zo60wdLEdbxmgEz8nY7fuLvBU', 27, '10.8.100.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibHRncVdhV1FZSHVrZmJHN1I5NW93c0xGMHZVekFIcXF3eU1rT2d0WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vMTAuOC4xMDAuMjM4OjgxL3Jlc2VydmEvdmVoaWN1bG8vY3JlYXRlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjc7fQ==', 1691164749),
('JTy1tJt0dxX45K62MlkYZVS0Wpu2L7g7MBUpIZ1I', 8, '10.8.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiazY4ZWxGR0NQdVpZQXhBMjlITE1Oc3U0bnFoa2N1QTRCajFHd3JjNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ1OiJodHRwOi8vMTAuOC4xMDAuMjM4OjgxL2J1c3F1ZWRhZnVuY2lvbmFyaW8/QVBFTExJRE9TPSZJRF9DQVJHTz0mSURfREVMRUdBRE89MTAmTk9NQlJFUz0mUlVUPSZfdG9rZW49azY4ZWxGR0NQdVpZQXhBMjlITE1Oc3U0bnFoa2N1QTRCajFHd3JjNyZpZD04Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1691166002),
('O7401mjfwx3Ajg0K1IcQlUSlAojwQtJ7IFwA0I9M', 8, '10.8.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWXVqazExYmtUR1VsS3FRZlU0VVZCSHRRVzVMWjZraFBIYkpaWnAzSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC44LjEwMC4yMzg6ODEvaG9tZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1691159472),
('pg13Oyou01k6i4eCCyz33XoXJia299Xbw5vxK2Fi', 27, '10.8.100.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMTljQkJLV3RGUmlIaVJkSlgxclRDMnNqSHpEaVRkdVN2QndxNTJLMiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vMTAuOC4xMDAuMjM4OjgxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjc7fQ==', 1691159951),
('zG5BKJI1GXgruKcniS9QWbjE1t4KW2obD19I8a1o', 8, '10.8.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWVoQ1FwM3pVS25QbUxLN0tZV3dhZ0w1dngwSEJvN0pMTVcwQ0tybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMC44LjEwMC4yMzg6ODEvcmVzb2x1Y2lvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1691157960);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `ID_SEXO` int(10) UNSIGNED NOT NULL,
  `SEXO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`ID_SEXO`, `SEXO`) VALUES
(1, 'MASCULINO'),
(2, 'FEMENINO'),
(99, 'PREFIERO NO DECIRLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_equipos`
--

CREATE TABLE `tipo_equipos` (
  `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL,
  `TIPO_EQUIPO` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_equipos`
--

INSERT INTO `tipo_equipos` (`ID_TIPO_EQUIPOS`, `TIPO_EQUIPO`) VALUES
(1, 'NOTEBOOK'),
(2, 'DATA'),
(3, 'AMPLIFICADOR'),
(4, 'MICROFONO'),
(5, 'TELON'),
(6, 'EQUIPO DE VIDEOCONFERENCIAS'),
(7, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_material`
--

CREATE TABLE `tipo_material` (
  `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL,
  `TIPO_MATERIAL` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_material`
--

INSERT INTO `tipo_material` (`ID_TIPO_MAT`, `TIPO_MATERIAL`, `created_at`, `updated_at`) VALUES
(1, 'ASEO', NULL, NULL),
(2, 'ESCRITORIO', NULL, NULL),
(3, 'COMPUTACION', NULL, NULL),
(4, 'ELECTRODOMESTICOS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_reparacion`
--

CREATE TABLE `tipo_reparacion` (
  `ID_TIPO_REP_GENERAL` int(10) UNSIGNED NOT NULL,
  `TIPO_REP` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_reparacion`
--

INSERT INTO `tipo_reparacion` (`ID_TIPO_REP_GENERAL`, `TIPO_REP`, `created_at`, `updated_at`) VALUES
(1, 'MOBILIARIO', NULL, NULL),
(2, 'INFRAESTRUCTURA', NULL, NULL),
(3, 'OTROS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_resoluciones`
--

CREATE TABLE `tipo_resoluciones` (
  `ID_TIPO` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_resoluciones`
--

INSERT INTO `tipo_resoluciones` (`ID_TIPO`, `NOMBRE`) VALUES
(1, 'DELEGATORIA'),
(2, 'NOMBRAMIENTO'),
(3, 'AUTORIZACIÓN DE DELEGACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `ID_TIPO_SERVICIO` int(10) UNSIGNED NOT NULL,
  `TIPO_SERVICIO` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`ID_TIPO_SERVICIO`, `TIPO_SERVICIO`, `created_at`, `updated_at`) VALUES
(1, 'MANTENCION PREVENTIVA', NULL, NULL),
(2, 'MANTENCION CORRECTIVA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL,
  `TIPO_VEHICULO` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`ID_TIPO_VEH`, `TIPO_VEHICULO`, `created_at`, `updated_at`) VALUES
(1, 'AUTOMOVIL', NULL, NULL),
(2, 'SUV', NULL, NULL),
(3, 'CAMIONETA', NULL, NULL),
(4, 'FURGON', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `ID_UBICACION` int(10) UNSIGNED NOT NULL,
  `UBICACION` varchar(128) DEFAULT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`ID_UBICACION`, `UBICACION`, `ID_DIRECCION`) VALUES
(2, 'UNIDAD ALTO HOSPICIO', 2),
(5, 'UNIDAD DE CALAMA', 3),
(6, 'UNIDAD DE TOCOPILLA', 3),
(7, 'UNIDAD DE VALLENAR', 4),
(9, 'UNIDAD DE CHAÑARAL', 4),
(11, 'UNIDAD DE ILLAPEL', 5),
(12, 'UNIDAD DE OVALLE', 5),
(13, 'UNIDAD DE COQUIMBO', 5),
(14, 'UNIDAD DE SAN ANTONIO', 6),
(15, 'UNIDAD DE LA LIGUA', 6),
(16, 'UNIDAD DE LOS ANDES', 6),
(19, 'UNIDAD DE SAN FELIPE', 6),
(20, 'UNIDAD DE VIÑA DEL MAR', 6),
(21, 'UNIDAD DE QUILLOTA', 6),
(22, 'UNIDAD DE VILLA ALEMANA', 6),
(23, 'UNIDAD DE BUIN', 9),
(24, 'UNIDAD DE SAN BERNARDO', 9),
(25, 'UNIDAD DE MAIPU', 8),
(29, 'UNIDAD DE LA FLORIDA', 9),
(30, 'CENTRAL DE TIMBRAJE', 12),
(31, 'UNIDAD DE ÑUÑOA', 12),
(33, 'UNIDAD DE SAN FERNANDO', 13),
(34, 'UNIDAD DE SANTA CRUZ', 13),
(36, 'UNIDAD DE PICHILEMU', 13),
(38, 'UNIDAD DE CAUQUENES', 14),
(39, 'UNIDAD DE LINARES', 14),
(40, 'UNIDAD DE CONSTITUCION', 14),
(42, 'UNIDAD DE CURICO', 14),
(43, 'UNIDAD DE PARRAL', 14),
(45, 'UNIDAD DE SAN CARLOS', 15),
(46, 'UNIDAD DE LOS ANGELES', 16),
(48, 'UNIDAD DE LEBU', 16),
(49, 'UNIDAD DE MELIPILLA', 8),
(50, 'UNIDAD DE TALCAHUANO', 16),
(51, 'UNIDAD DE ANGOL', 17),
(53, 'UNIDAD DE VICTORIA', 17),
(54, 'UNIDAD DE VILLARRICA', 17),
(56, 'UNIDAD DE LA UNION', 18),
(57, 'UNIDAD DE LANCO', 18),
(58, 'UNIDAD DE PANGUIPULLI', 18),
(59, 'UNIDAD DE ANCUD', 19),
(61, 'UNIDAD CASTRO', 19),
(62, 'UNIDAD DE CHAITEN', 19),
(63, 'UNIDAD DE PUERTO VARAS', 19),
(64, 'UNIDAD DE OSORNO', 19),
(65, 'UNIDAD DE AYSEN', 20),
(66, 'UNIDAD DE CHILE CHICO', 20),
(69, 'UNIDAD DE PUERTO NATALES', 21),
(70, 'UNIDAD DE PORVENIR', 21),
(99, 'NO ASIGNADO', 16),
(100, 'GABINETE DIRECTOR', 16),
(101, 'GABINETE DIRECTOR', 18),
(102, 'DEPARTAMENTO DE ADMINISTRACION', 16),
(103, 'DEPARTAMENTO DE ADMINISTRACION', 18),
(104, 'DEPARTAMENTO DE FISCALIZACION', 16),
(105, 'DEPARTAMENTO DE FISCALIZACION', 18),
(106, 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 16),
(107, 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 18),
(108, 'DEPARTAMENTO DE AVALUACIONES', 16),
(109, 'DEPARTAMENTO DE AVALUACIONES', 18),
(110, 'DEPARTAMENTO DE PROCEDIMIENTOS ADMINISTRATIVOS TRIBUTARIOS', 16),
(111, 'OFICINA DE PROCEDIMIENTOS ADMINISTRATIVOS TRIBUTARIOS', 18),
(112, 'DEPARTAMENTO JURÍDICO', 16),
(113, 'DEPARTAMENTO JURÍDICO', 18),
(999, 'NO ASIGNADO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NOMBRES` varchar(255) NOT NULL,
  `APELLIDOS` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `RUT` varchar(20) NOT NULL,
  `FECHA_NAC` date NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `FONO` varchar(255) NOT NULL,
  `ANEXO` varchar(255) NOT NULL,
  `ID_UBICACION` int(10) UNSIGNED NOT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL,
  `ID_GRUPO` int(10) UNSIGNED NOT NULL,
  `ID_ESCALAFON` int(10) UNSIGNED NOT NULL,
  `ID_GRADO` int(10) UNSIGNED NOT NULL,
  `ID_CARGO` int(10) UNSIGNED NOT NULL,
  `ID_CALIDAD_JURIDICA` int(10) UNSIGNED NOT NULL,
  `ID_SEXO` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'MARCELO', 'CASTRO BUSTOS', 'mdcastro@sii.cl', '$2y$10$RrbUrMkQToSwjFJlfdH7OeXUfjbjjFnTE2FEkOVFlTHON7oESRssi', 'NULL', 'NULL', NULL, '9298983-6', '1965-11-03', '1995-05-15', '41-3115206', '5206', 100, 8, 99, 4, 2, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(8, 'CRISTIAN ALBERTO', 'GOMEZ CASTILLO', 'cagomez@sii.cl', '$2y$10$fiw4Z.gupYWzutdBN1kY6e4hAFpgl3THaegDRX10WlhxSUhr7H8b6', 'NULL', 'NULL', NULL, '11.821.718-7', '1971-05-24', '1999-02-01', '41-3115102', '5102', 100, 8, 99, 5, 1, 1, 1, 1, 'Trg1KnurLr8sCGrGqbklSnHeEfmTaRsH8UyUtobI1pRLPtAPm1ug6mU6GEtI', NULL, '2023-07-26 03:19:17'),
(9, 'LILIAN', 'RAMIS SOTOMAYOR', 'lramis@sii.cl', '$2y$10$rc8YoGti3g47.v91xd7hGOT00il.4ak7K/aKakUM9FI2qY/6CtDPW', 'NULL', 'NULL', NULL, '9072801-6', '1964-04-19', '2000-10-01', '41-3115102', '5102', 100, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(10, 'MARIO ALEJANDRO', 'RUIZ PAREDES', 'mruiz@sii.cl', '$2y$10$6AFq79mLBN.uWBax38Cp.Ob6okNeI48kD8C5tgSQDoOjQlRkRscG.', 'NULL', 'NULL', NULL, '6046398-0', '1953-05-11', '1979-06-01', '41-3115138', '5138', 100, 8, 99, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(11, 'MARIO CESAR', 'BURGOS VALDEBENITO', 'mario.burgos@sii.cl', '$2y$10$O5JcRK7diICH/XqkXoB6reD23vzP4LajBXdwFtKRzW6R26TVj8mqW', 'NULL', 'NULL', NULL, '8671538-4', '1958-07-08', '2010-05-24', '41-3115243', '5243', 102, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(12, 'NELLY MARISELL', 'GALVEZ QUEZADA', 'ngalvez@sii.cl', '$2y$10$A7mnNEdu4snzBBJckwSuIOTprPzDOTEDbcW/zSolHo0zmY3WglHuq', 'NULL', 'NULL', NULL, '12558133-1', '1974-04-05', '2000-02-01', '41-3115114', '5114', 102, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(13, 'DAMARIS VIRGINIA', 'MEDINA MORAGA', 'dmedina@sii.cl', '$2y$10$7UgLaZtDlsJq3Uj7FiPu0OF8pa3sTFf5alq2rokzOt.J3w171XNP.', 'NULL', 'NULL', NULL, '12.925.740-7', '1975-08-17', '2000-08-07', '41-3115245', '5245', 102, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:13:52'),
(14, 'ADOLFO MAURICIO', 'MILLAN FAUNDEZ', 'amillan@sii.cl', '$2y$10$C8tCgexdJq7WGKA8pLZwVOVKKrGMt7KaLLKhkXDWNnhFSIf8aNeTO', 'NULL', 'NULL', NULL, '12.890.503-0', '1975-07-31', '2001-01-31', '41-3115115', '5115', 102, 8, 99, 5, 2, 7, 1, 1, 'M1JDUkYisSTopjZbeTcGPZOUHAUO2RwyAdpn0SMhQUXYjNhIzfsH1ip8bkCn', NULL, '2023-07-26 03:19:17'),
(15, 'FELIPE MATIAS', 'MONTALVAN ESCOBEDO', 'felipe.montalvan@sii.cl', '$2y$10$n7UxGfapGZMDAeMptB.X.Oi4LKzntvw2IA7Bapwp.lsIJPKUBxaae', 'NULL', 'NULL', NULL, '16.709.848-7', '1987-06-20', '2017-07-03', '41-3115265', '5265', 102, 8, 99, 4, 9, 99, 2, 1, 'Xd7NStkeW0JleitMmFagT28rEJz2BmijbxiIwDyvLt8qIyEljBBFLyb41H6k', NULL, '2023-07-07 21:10:43'),
(16, 'PABLO ALEJANDRO', 'MORALES SEPULVEDA', 'alejandro.morales@sii.cl', '$2y$10$VwYB2UQ1REowQSiXbI5/5efZaB11iI4KWlt1Po2JHnDDQw6G6ddtK', 'NULL', 'NULL', NULL, '14.207.775-2', '1981-08-26', '2010-03-17', '41-3115238', '5238', 102, 8, 99, 3, 10, 99, 1, 1, 'qAw8l9dXPprqs3soawgBXQ3GOM3RqTEpDRBGocOEKePXcX2VS1iGa3xZN1TK', NULL, '2023-07-26 03:19:17'),
(17, 'ALEJANDRA IVONNE', 'MUNOZ INZUNZA', 'alejandra.munoz@sii.cl', '$2y$10$IjUCPGK/isOQUfWxIgCQKeI8fC/5QLaYjccVdGJGoPREaBQldL842', 'NULL', 'NULL', NULL, '15.614.670-6', '1983-11-15', '2015-07-01', '41-3115229', '5229', 102, 8, 99, 2, 13, 99, 1, 2, 'gWAxZ9EhE5QvHYC4WxCTxCVszwmbnXSCR9w7m2F0EH5VpICwXVzyRGFS9b0g', NULL, '2023-07-26 03:19:17'),
(18, 'CLAUDIA CAROLINA', 'ONATE KOSELLY', 'claudia.onate@sii.cl', '$2y$10$ozERSEmIqILjcJVy3ckoWO77.a87l.DWnz1f.b1YnKFrIyXmKSK7y', 'NULL', 'NULL', NULL, '14062343-1', '1981-08-13', '2015-04-29', '41-3115107', '5107', 102, 8, 99, 4, 9, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(19, 'CAROLA', 'OPAZO VENEGAS', 'carola.opazo@sii.cl', '$2y$10$oxNoN68DVoBtI.9Rw5WpBOTkeifm25Yfy6FNogeW8nRV.f/wC.g.y', 'NULL', 'NULL', NULL, '14.242.941-1', '1974-05-30', '2004-02-01', '41-3115154', '5154', 102, 8, 99, 1, 11, 99, 1, 2, 'rDV9F61iKyLbj0v1Wy1K8mPCUaFAI0EOPBpmWfrdKvvhJz4WuL5hfxAmiJ6H', NULL, '2023-07-14 14:39:29'),
(20, 'JOHANA ELIZABETH', 'ORTIZ MEDINA', 'johana.ortiz@sii.cl', '$2y$10$hXxKoeOX8sVHb2XtiEBIFe1YMwRKXCUlh16yrA6sYr/hdZFmlKJTC', 'NULL', 'NULL', NULL, '15593140-K', '1984-01-06', '2015-07-01', '41-3115112', '5112', 102, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(21, 'SUSAN', 'PARRA QUIROZ', 'sparra@sii.cl', '$2y$10$iyLkHxoS9J7IIqmTon/dJ.QXDFvioIzAri0WGW7TcfT4g/W9YheL2', 'NULL', 'NULL', NULL, '10.273.761-K', '1966-03-14', '1994-12-01', '41-3115111', '5111', 102, 8, 99, 7, 9, 99, 1, 2, 'COJopx2h6H8qcbYAGGRA0f1JAfVXCR9KySBtNqZBxiruVLZbPubCkxZQDacN', NULL, '2023-07-26 03:19:17'),
(22, 'GERARDO ANTONIO', 'PEREZ GOMEZ', 'gerardo.perez@sii.cl', '$2y$10$tUDVk8fcuXACIRX6..qHJutkHzykKfHEyLgp3XbESLEt31Y77.UYu', 'NULL', 'NULL', NULL, '8816522-5', '1959-07-22', '2009-07-22', '41-3115154', '5154', 102, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(23, 'LORETO DEL PILAR', 'PILQUIANTE TAPIA', 'lpilquiante.externo@sii.cl', '$2y$10$GGQFiTR1sS17HyM1oRGybOUeN/tPAHHb3QOalRYQgFdWy/rR8pT1G', 'NULL', 'NULL', NULL, '12699069-3', '1974-03-21', '2023-01-23', '41-3115107', '5107', 102, 8, 99, 4, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(24, 'JOCELYN SOLEDAD', 'QUEZADA DIAZ', 'jocelyn.quezada@sii.cl', '$2y$10$9If00Fg3nHs5d.N/J9EljuRZVKAAqQHhr6UNs00U8LG1WV6NMojZa', 'NULL', 'NULL', NULL, '16766406-7', '1987-12-24', '2018-01-15', '41-3115269', '5269', 102, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(25, 'HERNAN ENRIQUE', 'RUIZ OJEDA', 'hernan.ruiz@sii.cl', '$2y$10$OUZwUlpLTGsjAx1L/IZXF.BK9ywhCdiyDugVV29GE1H3y2/7nURVe', 'NULL', 'NULL', NULL, '10014048-9', '1966-12-23', '2008-03-17', '41-3115110', '5110', 102, 8, 99, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(26, 'FABIOLA', 'VALLADARES SAN MARTIN', 'fvalladares@sii.cl', '$2y$10$lHuF6yDTkke6tDIXKHZxouE67K7QaCL5zY3.ukEwaQSq16IDrKk6y', 'NULL', 'NULL', NULL, '10717868-6', '1968-08-14', '2000-02-01', '41-3115108', '5108', 102, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(27, 'LUIS ARSENIO', 'VARGAS ABARCA', 'lvargas@sii.cl', '$2y$10$p/4XXIEsWOc.1lMYHBXpTuiN0QmZvYqwajPOhkuvnZV9MqaqMs.A2', 'NULL', 'NULL', NULL, '9.448.182-1', '1964-02-02', '1984-09-24', '41-3115109', '5109', 102, 8, 99, 7, 9, 99, 1, 1, 'hiA6LX0wQJonyPW81t8746ZYb8xFuVrKLQlRPbCr90BF0fHhmak1OotP8m2N', NULL, '2023-07-27 17:11:26'),
(28, 'GUILLERMO ANTONIO', 'VASQUEZ MORAGA', 'guillermo.vasquez@sii.cl', '$2y$10$mncrBmkDaeFV6BZpBZl74OFyTFxTz1MbLJDAtcYW4TM0jxcIpD5Ky', 'NULL', 'NULL', NULL, '11984721-4', '1972-02-12', '2016-02-15', '41-3115154', '5154', 102, 8, 99, 6, 15, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(29, 'SAMUEL EDGARDO', 'VIZCARRA ALVEAR', 'samuel.vizcarra@sii.cl', '$2y$10$ho0ZObPolJeFJcsTyE.Ia.uChC8zXNbnmHCFqp26PKTd0.rJ/pY4q', 'NULL', 'NULL', NULL, '18.067.380-6', '1992-02-06', '2015-07-01', '41-3115106', '5106', 102, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(30, 'CLAUDIA POLETTE', 'AGUAYO ALARCON', 'claudia.aguayo@sii.cl', '$2y$10$aBNsUeyVN4dDYBUno.d8Me94R8XpLxs/pwm8Cp.GZhHAAIGD.vnf.', 'NULL', 'NULL', NULL, '13313639-8', '1977-11-21', '2003-02-10', '41-3115232', '5232', 104, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(31, 'MONICA ROXANA', 'ALBORNOZ BARRA', 'malbornoz@sii.cl', '$2y$10$SaIhUscYbOd/.3yJk3H8zOo6vdHG6PJ.EL9x/LZ67tRzSnVzeCrkm', 'NULL', 'NULL', NULL, '9776081-0', '1969-01-18', '1997-09-22', '41-3115233', '5233', 104, 8, 3, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(32, 'ROSA ESTER', 'ALDANA FUENTES', 'raldana@sii.cl', '$2y$10$/8sVqYOYJrlB9zPVGkBD0OMJsBjTizUFBGcpEDwa.JcGk7EtCQtJK', 'NULL', 'NULL', NULL, '9699199-1', '1964-11-18', '1997-06-01', '41-3115156', '5156', 104, 8, 3, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(33, 'CYNTHIA VANESSA', 'ARANEDA BASTIDAS', 'cynthia.araneda@sii.cl', '$2y$10$GluSJqCitaniCic595tspu2dgUZtNCeaJrGGdK7IDho6x366DMXb2', 'NULL', 'NULL', NULL, '17207777-3', '1989-05-17', '2015-11-19', '41-3115137', '5137', 104, 8, 5, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(34, 'JORGE ARTURO', 'ARANEDA SALINAS', 'jaaraned@sii.cl', '$2y$10$sfsIP02zHaf3dY.c6XF.Zu.I7GhONghcF8yvCrrA1st8/839q3wUK', 'NULL', 'NULL', NULL, '7633838-8', '1958-07-28', '1992-09-21', '41-3115280', '5280', 104, 8, 14, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(35, 'MARCELO ALEJANDRO', 'ARANEDA STENGER', 'marcelo.araneda@sii.cl', '$2y$10$R/YV1BGSkX4IGPmktKtG4eQeAUB3P0Ds.RX7nEK4/C0ZFLMtFcqP6', 'NULL', 'NULL', NULL, '12796557-9', '1975-11-04', '2017-09-29', '41-3115135', '5135', 104, 8, 2, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(36, 'BERTA ELIZABETH', 'ARIAS NUÑEZ', 'barias@sii.cl', '$2y$10$uzrn7r9BwXGr.KJqNzKUUONDnNiJct.jKZWZ.zIdlOEkXwzq9tVTS', 'NULL', 'NULL', NULL, '12698071-K', '1974-11-30', '1998-03-01', '41-3115177', '5177', 104, 8, 6, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(37, 'GUILLERMO ANDRES', 'ARNTZ SANTA MARIA', 'garntz@sii.cl', '$2y$10$td/3F4huFsojuOWjy3KhQekMJ4TUEHM3c03mElLxBf6b0EQL6J196', 'NULL', 'NULL', NULL, '13117755-0', '1976-03-05', '2002-01-09', '41-3115187', '5187', 104, 8, 7, 3, 7, 21, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(38, 'PAULINA', 'ARRIAGADA ARANGUIZ', 'paulina.arriagada@sii.cl', '$2y$10$Y2BbOjpc7AmQFwziF9T4BeF0hWUTfIAkqUKQ1yuDFtvfGo64JzEDa', 'NULL', 'NULL', NULL, '10049362-4', '1975-06-22', '2005-09-01', '41-3115264', '5264', 104, 8, 14, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(39, 'ANGELICA MARIA', 'AVILA SALGADO', 'aavila@sii.cl', '$2y$10$niF2zQcD.9K9dwAfQXSgD.XQncNFEJOlvZWphGuMZwzdla8ZJoMk.', 'NULL', 'NULL', NULL, '12792116-4', '1975-02-13', '2000-01-01', '41-3115180', '5180', 104, 8, 14, 3, 7, 18, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(40, 'DANIEL ALEJANDRO', 'BARRA CAUCOTA', 'daniel.barra@sii.cl', '$2y$10$bYP9IRwkqg8p67PV4597le4oFWy7BqnUdufF2.9J2Rg8ZjWm6lvI6', 'NULL', 'NULL', NULL, '15672027-5', '1984-04-19', '2012-06-14', '41-3115129', '5129', 104, 8, 2, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(41, 'CLAUDIA MARIBEL', 'BELLO ALBARRAN', 'cbello@sii.cl', '$2y$10$2tdH4HJW1s1slihx32NAu.Ii5px7rKDgQ62tl5k48Zntwfrhyaeuy', 'NULL', 'NULL', NULL, '12733529-K', '1975-02-07', '2001-02-12', '41-3115232', '5232', 104, 8, 1, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(42, 'XIMENA ELIZABETH', 'BELTRAN POBLETE', 'xbeltran@sii.cl', '$2y$10$u9.Uhvh8hmMfCNS5DCw04uMd63M3D0Azko0/9ScOk7LHCeUthEbim', 'NULL', 'NULL', NULL, '12980640-0', '1976-02-10', '1998-09-21', '41-3115186', '5186', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(43, 'MAURICIO REINALDO', 'BREBI SAN MARTIN', 'mauricio.brebi@sii.cl', '$2y$10$SMf9kLnfPgKC9pVu0KwAG.iFfRjtPjhJiHlZVJMchQHD2PSeREuqC', 'NULL', 'NULL', NULL, '9276188-6', '1965-08-16', '2003-10-01', '41-3115180', '5180', 104, 8, 14, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(44, 'MOISES ENRIQUE', 'CABRERA ALBORNOZ', 'moises.cabrera@sii.cl', '$2y$10$v7EfhrL5s7ekH.euE2scLO6sPUuYolj3Z80qFiYvzMudeAQBMVXKu', 'NULL', 'NULL', NULL, '16347947-8', '1986-08-25', '2011-06-22', '41-3115181', '5181', 104, 8, 5, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(45, 'XIMENA DEL', 'CANTERO FUENTEALBA', 'xcantero@sii.cl', '$2y$10$07YRgK7gNUXXmtco8h/EJ.quOt/1XokOjU.b/joQLDcpw63doZy.e', 'NULL', 'NULL', NULL, '10545277-2', '1966-01-19', '1994-02-01', '41-3115144', '5144', 104, 8, 14, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(46, 'RICARDO JAVIER', 'CARO SANTIBANEZ', 'rcaro@sii.cl', '$2y$10$/lzdu.z1gpjhj8WkGUIi4eiTlatzgxouUjyyupdkmNldH9AqNC2ea', 'NULL', 'NULL', NULL, '8993092-8', '1960-07-25', '1993-08-02', '41-3115151', '5151', 104, 8, 3, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(47, 'LUIS FREDDY', 'CARRASCO MENDOZA', 'lcarrasc@sii.cl', '$2y$10$GTu9xj.nywQe9R8k.nzCKe8h1tStWtdYRF0FnX99Yf1n26OByzv42', 'NULL', 'NULL', NULL, '11912755-6', '1972-01-20', '1999-02-01', '41-3115170', '5170', 104, 8, 6, 3, 5, 20, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(48, 'MARGARET', 'CARRASCO MENDOZA', 'mlcarras@sii.cl', '$2y$10$DUMWdRB/cW0H2ip2A47yKuSddQxXW5UXkglinZAGdxEVWx0OI5Y66', 'NULL', 'NULL', NULL, '12977573-4', '1976-01-15', '1999-02-01', '41-3115266', '5266', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(49, 'VALESKA DANIELA', 'CARTES ESTAY', 'valeska.cartes@sii.cl', '$2y$10$6w6qQpgybNZqWN3wqwBKTO2xM1n9hAafNjy8pVvnigoGtAlUTrpZ6', 'NULL', 'NULL', NULL, '15615590-K', '1984-02-14', '2011-06-22', '41-3115162', '5162', 104, 8, 4, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(50, 'MARIA JAVIERA', 'CASANUEVA HITSCHFELD', 'mcasanue@sii.cl', '$2y$10$5micOUZuLzkPGCDxgG0JR.D/g5n601jID6RrUhW8F9oDyaSiCigmq', 'NULL', 'NULL', NULL, '10753887-9', '1971-11-20', '1998-03-01', '41-3115165', '5165', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(51, 'OSCAR G.', 'CERDA ESPINOZA', 'ocerda@sii.cl', '$2y$10$MPpVEKgUCOiehLXL4Upt7.iyxPCUgkrn3diBTQXSqMwr3tuWT53DC', 'NULL', 'NULL', NULL, '10001426-2', '1966-05-31', '1995-05-15', '41-3115157', '5157', 104, 8, 1, 3, 4, 22, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(52, 'ELOISA MARIA CECILIA', 'CIFUENTES PEÑA', 'ccifuent@sii.cl', '$2y$10$ZdrslUchnM.L9p17PNanjOgBzjE/cGF5Ys1lifLTpOICMTR8c2uZi', 'NULL', 'NULL', NULL, '5807103-K', '1954-04-06', '1976-04-01', '41-3115133', '5133', 104, 8, 6, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(53, 'JOSE MAURICIO', 'CISTERNA DIAZ', 'jose.cisterna@sii.cl', '$2y$10$IIbTRmHPNeX9f4hDVeRhDOOi9TgCihfiNVj.iAHHLy/7hsiBjXyRi', 'NULL', 'NULL', NULL, '12035424-8', '1971-04-21', '2008-02-04', '41-3115113', '5113', 104, 8, 14, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(54, 'RODRIGO ALEJANDRO', 'CONTRERAS RIQUELME', 'rodrigo.contreras@sii.cl', '$2y$10$vnO0usfZJsX1gCdhfwlVseeeG7/NHJ4gGHTrtt9agzDQCGqqnZOAm', 'NULL', 'NULL', NULL, '16514680-8', '1987-05-04', '2016-07-28', '41-3115161', '5161', 104, 8, 5, 3, 10, 19, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(55, 'PAMELA ALEJANDRA', 'CUBILLOS CUBILLOS', 'pcubillos@sii.cl', '$2y$10$bGMZ95bwAC6kpKsFN32Et.yQ8mIdG2lBoTvAJrwWMMpk/Xf6tvZJS', 'NULL', 'NULL', NULL, '12785331-2', '1975-07-22', '2001-01-31', '41-3115179', '5179', 104, 8, 5, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(56, 'SANDRA ESTER', 'ESPINOZA HENRIQUEZ', 'seespino@sii.cl', '$2y$10$uuoA.2srpCWn7PfD2PA1luSz6mie10i2CrurldRhPa2rL2FZW1k8m', 'NULL', 'NULL', NULL, '10560556-0', '1969-10-16', '1998-03-01', '41-3115128', '5128', 104, 8, 1, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(57, 'MARIA PAZ', 'FARIAS ZUNIGA', 'maria.farias@sii.cl', '$2y$10$G4uYadc.ne6Cb.79QrKKz.zbo/FBwtVqnq4qNdLrvQfJUKIbMz69C', 'NULL', 'NULL', NULL, '17.955.413-5', '1991-05-31', '2015-05-18', '41-3115279', '5279', 104, 8, 14, 3, 10, 99, 1, 2, 'o3rwWmxgoJC890LVw2dldSjlJpCZl8M3ISXvssdfDfdVmwSpReBHA27MJwlP', NULL, '2023-07-26 03:19:17'),
(58, 'MARJORIE ISABEL', 'FONSECA ARIAS', 'mfonseca@sii.cl', '$2y$10$VP4fO10Ikz1ZeygMOnRsq.9g9GHskH0lZ.PGcc5ItFJ2zSUjM4HWm', 'NULL', 'NULL', NULL, '10062259-9', '1967-02-20', '1995-03-20', '41-3115130', '5130', 104, 8, 14, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(59, 'MARCOS ANTONIO', 'FONSECA TRONCOSO', 'mafonseca@sii.cl', '$2y$10$X/isJU3qiHlonvjWH9wBpe5C6O.kqn/Tf6TJIRbfzoHgQXJOFQV2G', 'NULL', 'NULL', NULL, '10724001-2', '1971-03-16', '2002-01-14', '41-3115164', '5164', 104, 8, 4, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(60, 'MARIBEL', 'FREDES CHAVEZ', 'mfredes@sii.cl', '$2y$10$hlbc6dxdqdjl7sreSWt5WOVKI3ketCAAHHOb/L5XH22OUFR.W0Ixi', 'NULL', 'NULL', NULL, '12925775-K', '1975-08-20', '1999-02-01', '41-3115184', '5184', 104, 8, 7, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(61, 'PAMELA ANDREA', 'FUENTES VILLALOBOS', 'pafuentes@sii.cl', '$2y$10$vBQ2fMP6WO2po5dAnmeuDOYa2E8CeG9t/VuVJ4yK.6ZC8IDkthuQy', 'NULL', 'NULL', NULL, '12697746-8', '1974-10-18', '2001-01-31', '41-3115176', '5176', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(62, 'CARLA ANDREA', 'GARCIA CABRERA', 'carla.garcia@sii.cl', '$2y$10$Gw04dLqaZqmR8ywvcCcIBe9aeV52PHP0eOZ31ox1yZltdG7LuWNPm', 'NULL', 'NULL', NULL, '15172976-2', '1982-03-01', '2015-11-19', '41-3115239', '5239', 104, 8, 4, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(63, 'MARIELLA', 'GARCIA LOBOS', 'mariella.garcia@sii.cl', '$2y$10$tGmt8wgWdPWtw5DsLfMq8OHkaZOmkT7JYtLwNY05ESKv2wYFWgkPO', 'NULL', 'NULL', NULL, '13137563-8', '1977-06-05', '2003-12-01', '41-3115239', '5239', 104, 8, 4, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(64, 'DIEGO', 'GARCIA SANDOVAL', 'dgarcia@sii.cl', '$2y$10$d2hBjGmh5fdOGKXqfdRTfuJ2tjeC8POqHm8B29j/QSRBN3GXhFIY6', 'NULL', 'NULL', NULL, '11606090-6', '1969-08-15', '1994-12-05', '41-3115168', '5168', 104, 8, 4, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(65, 'ELENA VERONICA', 'GATICA MUÑOZ', 'egatica@sii.cl', '$2y$10$ZVu4ygmgQQ2Vn127xn4VruZrbMOnNKTxw6DQBHURpuBdSc0FNC0ja', 'NULL', 'NULL', NULL, '8363302-6', '1960-01-24', '1992-02-17', '41-3115168', '5168', 104, 8, 4, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(66, 'JENY LISSETTE', 'GONZALEZ CASTRO', 'jeny.gonzalez@sii.cl', '$2y$10$KxjjavKzZQP7gc88U7alM.SbpKCX3LJKad5LrPpDq8EL6chfGAUti', 'NULL', 'NULL', NULL, '13449327-5', '1978-10-15', '2008-11-01', '41-3115143', '5143', 104, 8, 6, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(67, 'YESSENIA CAROLINA', 'HENRIQUEZ UTRERAS', 'yessenia.henriquez@sii.cl', '$2y$10$QQ2ogttoamIxTydgO.cQ.OQAKv8SAQXDRNzePg6eXYUJ/3c/Kvki2', 'NULL', 'NULL', NULL, '18069634-2', '1992-09-07', '2016-07-28', '41-3115136', '5136', 104, 8, 3, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(68, 'DOMENICA DEL CARMEN', 'HERNANDEZ ARANEDA', 'domenica.hernandez@sii.cl', '$2y$10$BZ.MkNk8AXbJFFUSpD47BOQwk7jB7aaUPwchUDvtUM90XIM4Wfmzy', 'NULL', 'NULL', NULL, '15194843-K', '1983-08-07', '2010-05-10', '41-3115242', '5242', 104, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(69, 'HERNAN SEGUNDO', 'HERRERA SANZANA', 'hherrera@sii.cl', '$2y$10$PHwBQcSXYgZlQi2.WOToT.9bpaloO4ny3B8fHQ6VP1zU4or0JjuVi', 'NULL', 'NULL', NULL, '7632505-7', '1960-12-14', '1992-02-17', '41-3115148', '5148', 104, 8, 7, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(70, 'PAMELA ANDREA', 'HIDALGO NEIRA', 'phidalgo@sii.cl', '$2y$10$rv2p7dcJWmAGWu8PqQxChOEPjky8tF0maRjDJ9pPhELTSdi.9TMHC', 'NULL', 'NULL', NULL, '12922079-1', '1975-09-01', '1998-09-21', '41-3115183', '5183', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(71, 'WILMA TERESA', 'HUNTER ITURRA', 'whunter@sii.cl', '$2y$10$elc3KidBpmdT8lvjuP46A.VnLQv23efV4c8GITWg.FfPM0RCrDk76', 'NULL', 'NULL', NULL, '10237178-K', '1967-01-10', '1995-05-15', '41-3115160', '5160', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(72, 'ENZO LINCOYAN', 'IGAYMAN SEPULVEDA', 'eigayman@sii.cl', '$2y$10$d.7MHrxLigJGGMb16C9cZuOeNw6T/DL22c9qzUCB2mdRHfl9/Tt8y', 'NULL', 'NULL', NULL, '6819662-0', '1952-08-30', '1992-02-17', '41-3115142', '5142', 104, 8, 2, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(73, 'MAURICIO A.', 'ILLANES MARTINEZ', 'millanes@sii.cl', '$2y$10$SN9X/2KaiXzppcm4BmfYz.JqzAMhIHqyrFVMIQwYGXwOfF16YGR8a', 'NULL', 'NULL', NULL, '10589415-5', '1967-08-23', '1995-05-15', '41-3115163', '5163', 104, 8, 3, 3, 6, 24, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(74, 'LUIS', 'JARA AGUAYO', 'lrjara@sii.cl', '$2y$10$EeME5n4lJvTh/XHLVL3Sf.a4VJnyOcxtl7DYIsCV9Hd2/FYwXQwFa', 'NULL', 'NULL', NULL, '9118968-2', '1963-12-01', '1997-09-22', '41-3115152', '5152', 104, 8, 6, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(75, 'MARCIA ELIZABETH', 'LABRIN VERGARA', 'marcia.labrin@sii.cl', '$2y$10$CuSnG1pTdRxBKy0mSCaVeOLkTCFREmR8B3IcCibBTmqZYphy37Z4y', 'NULL', 'NULL', NULL, '13625283-6', '1979-10-29', '2011-06-22', '41-3115162', '5162', 104, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(76, 'PAOLA ADRIANA', 'LEAL MENDOZA', 'paola.lealm@sii.cl', '$2y$10$/a9zstK9KmHCbTnUGxQ/ceyQwCeq25oe3t7eyWv144vehaSAbRzlq', 'NULL', 'NULL', NULL, '14403735-9', '1971-06-15', '1999-02-01', '41-3115190', '5190', 104, 8, 7, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(77, 'VERONICA ENRIQUETA', 'LIZAMA TORRES', 'vlizama@sii.cl', '$2y$10$gfD3jSa61MCoY3qptihTMeThEu4FTJMdjyKX/2YWL5djzACTjnAy6', 'NULL', 'NULL', NULL, '13386809-7', '1978-06-07', '2002-01-09', '41-3115234', '5234', 104, 8, 2, 3, 7, 23, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(78, 'PAULINA FRANCISCA', 'LOYOLA MARTINEZ', 'paulina.loyola@sii.cl', '$2y$10$X1EkN86wGtu9.Q/owJKTj.Q.6IHzH9nF32lRBth/vjYpzEh2/rp0q', 'NULL', 'NULL', NULL, '12525059-9', '1973-09-07', '1992-11-05', '41-3115173', '5173', 104, 8, 2, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(79, 'ANITA', 'LUENGO MALDONADO', 'aluengo@sii.cl', '$2y$10$ib92iYdyTEg9B7Qg5dpQ2OCk.scXju0tNG7c29DDajREfme1St4BK', 'NULL', 'NULL', NULL, '10765439-9', '1971-01-02', '1998-09-21', '41-3115166', '5166', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(80, 'DARGLI VALESKA', 'MANRIQUEZ TORRES', 'dargli.manriquez@sii.cl', '$2y$10$VCbI.IUU0KpsSbCUe6GzgeE2Gu6Iqiv9enaTZ8An7XLv8ESp.BjQ6', 'NULL', 'NULL', NULL, '17641364-6', '1991-01-09', '2015-11-19', '41-3115172', '5172', 104, 8, 6, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(81, 'GLADYS ANGELICA', 'MARDONES SALAMANCA', 'gmardone@sii.cl', '$2y$10$BKpGUKkhItVolSvYSdDBRugWWErTnoPFUfpWW12hudDh0Ng4V31ly', 'NULL', 'NULL', NULL, '9520117-2', '1962-11-28', '1993-08-01', '41-3115155', '5155', 104, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(82, 'PAULA CRISTINA INES', 'MARISIO SUTTER', 'pmarisio@sii.cl', '$2y$10$cswt2uBhpBPB5IVWA3YrkOMxNbXzZBLxlLcwyk92LKt.RN/0Fbdtu', 'NULL', 'NULL', NULL, '8934418-2', '1976-01-26', '2001-01-31', '41-3115219', '5219', 104, 8, 2, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(83, 'JUAN ENRIQUE', 'MARTINEZ FERNANDEZ', 'jemartin@sii.cl', '$2y$10$qTgBNBK2LrEvegX5IxLrqe38dARB7YPOz.tQHCdyh6vA6z7LrlU9O', 'NULL', 'NULL', NULL, '12553273-K', '1974-10-10', '1997-06-01', '41-3115175', '5175', 104, 8, 5, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(84, 'BORIS DAMIAN', 'MEDINA MEDEL', 'boris.medina@sii.cl', '$2y$10$EhwsArHAqFKGayOer6OHmexBAfMqqBSsHA3vNW8JHcNguUFR46CKG', 'NULL', 'NULL', NULL, '16916608-0', '1988-08-11', '2016-11-23', '41-3115194', '5194', 104, 8, 3, 1, 14, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(85, 'ALVARO RICARDO', 'MELLA SAN JUAN', 'alvaro.mella@sii.cl', '$2y$10$4rmYcR/Vz0X.QdHoCtFVne0WWaM3gNcK363suk0sAZT1reEKqCgZ.', 'NULL', 'NULL', NULL, '13956693-9', '1980-07-03', '2007-10-03', '41-3115235', '5235', 104, 8, 6, 3, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(86, 'ANETTE PAMELA', 'MIRANDA VILLEGAS', 'amiranda@sii.cl', '$2y$10$fiexWaAlSKbhRryfBuvA6.2jIRRkIkkNhpcDHkc3/h9MbY6qNzwK2', 'NULL', 'NULL', NULL, '7247449-K', '1961-06-12', '1981-11-01', '41-3115263', '5263', 104, 8, 14, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(87, 'MARIA GABRIELA', 'MORALES BETANCOUR', 'mgmorale@sii.cl', '$2y$10$Gs21l3jC1kt0IioXYeaN5uzsH2Ku3x/dH0VGlHFkBmdhmmvKlkoxy', 'NULL', 'NULL', NULL, '12301984-9', '1972-07-18', '2000-01-01', '41-3115237', '5237', 104, 8, 3, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(88, 'MANUEL EDGARDO', 'MURILLO JARA', 'mmurillo@sii.cl', '$2y$10$Q1OUoFdCb1VlRY2YFhY86uf56hGMcJJsOQ0smA1vNbfosYPXevIk6', 'NULL', 'NULL', NULL, '6254063-K', '1955-08-21', '1980-02-25', '41-3115140', '5140', 104, 8, 5, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(89, 'PATRICIO IVAN', 'MUÑOZ VALLEJOS', 'pmunoz@sii.cl', '$2y$10$J3WQ6GR56u3ViPJ9Kn/Yq.33FKRR4PF0qu0bhLO0cBgZGnWjCvzwu', 'NULL', 'NULL', NULL, '10109191-0', '1966-04-10', '1992-02-17', '41-3115159', '5159', 104, 8, 5, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(90, 'MARIOLY CAROLINA', 'NOVOA LAGOS', 'marioly.novoa@sii.cl', '$2y$10$TPZy7AwOAjUS88aktp6Pq.Fkgb97mROb6u8L0ItegIzHWosu.MfP.', 'NULL', 'NULL', NULL, '16774235-1', '1988-04-09', '2015-05-18', '41-3115270', '5270', 104, 8, 2, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(91, 'CARLOS ALBERTO', 'OCARES MATURANA', 'cocares@sii.cl', '$2y$10$./uxNWPAWMlhIkTxpZ.8s.RlQ1JYzT3/V9GkjbHiCk2S5cucR3lvS', 'NULL', 'NULL', NULL, '8545158-8', '1976-02-07', '2001-02-12', '41-3115150', '5150', 104, 8, 99, 5, 2, 3, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(92, 'RODRIGO ALEJANDRO', 'ONATE IRRIBARRA', 'rodrigo.onate@sii.cl', '$2y$10$HnmHsumKopLDkDAWX.bAdO1qn9NGHuFgwfDTEUWwPm/2rCcSz3/yG', 'NULL', 'NULL', NULL, '14209647-1', '1981-03-30', '2010-05-11', '41-3115158', '5158', 104, 8, 1, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(93, 'CARMEN', 'PEÑA VALDES', 'carmeng.pena@sii.cl', '$2y$10$sdX0q6XWCY.tu5l/iR/2KeReKjLvRDongzi3jgPwP5Qvw0AGBgo5S', 'NULL', 'NULL', NULL, '13727054-4', '1979-11-26', '2004-10-04', '41-3115240', '5240', 104, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(94, 'NELSON EDUARDO', 'PINTO SEPULVEDA', 'npinto@sii.cl', '$2y$10$uQPBtZvLsQBt1UqQDgZpAuBCsztR0JXMW9P0QeVVwZSHS3y7fVseC', 'NULL', 'NULL', NULL, '14273510-5', '1974-11-06', '1994-03-01', '41-3115208', '5208', 104, 8, 99, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(95, 'CAROLINA XIMENA', 'POBLETE JARA', 'cpoblete@sii.cl', '$2y$10$EGI3LSKl.cZJdRQwVE1G2ebHAOy35ksEjLyo7/saa2bqihN73nzTW', 'NULL', 'NULL', NULL, '12973491-4', '1976-05-26', '1998-09-21', '41-3115185', '5185', 104, 8, 6, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(96, 'MANUEL ALEJANDRO', 'QUEZADA DIAZ', 'manuel.quezada@sii.cl', '$2y$10$5ODaJ261nGbfLFanY8YPdeD/WzB27CsnacnC/TxaEgYhQ4iJ2FUAu', 'NULL', 'NULL', NULL, '16154996-7', '1986-05-20', '2008-11-01', '41-3115227', '5227', 104, 8, 3, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(97, 'JOSE', 'REYES CAMPOS', 'jose.reyes@sii.cl', '$2y$10$1Aar6TjwehL.VYM.KD/Ps.ROmdNe9ity2AyUq/hvPd5Pxa.gBAG5S', 'NULL', 'NULL', NULL, '12917590-7', '1975-04-14', '2005-09-01', '41-3115180', '5180', 104, 8, 14, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(98, 'SORAYA EDITH', 'RIFFO ALARCON', 'sriffo@sii.cl', '$2y$10$4qEEj1x.84lTzhD46ydHyOHKJmM9PpbTfuFWu5SdKk2zgV6BZaWQm', 'NULL', 'NULL', NULL, '12698303-4', '1974-01-01', '1999-02-01', '41-3115178', '5178', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(99, 'YASNA CARINA', 'RIFFO MOLINA', 'yasna.riffo@sii.cl', '$2y$10$o2FdQRgd0cGsPz9BkGOQreo9zLJ/O1zwfOYDFZPJi3uqoTvfVyMEm', 'NULL', 'NULL', NULL, '17199321-0', '1989-04-15', '2015-05-14', '41-3115242', '5242', 104, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(100, 'MARIBEL LETICIA', 'RIVAS CEA', 'mrivas@sii.cl', '$2y$10$gA.WnHe7zI7yW1Tj.JqMauLDxE258OeCg0LfHpFv8y616TXnXnqQ2', 'NULL', 'NULL', NULL, '12324491-5', '1972-12-21', '2002-01-14', '41-3115258', '5258', 104, 8, 3, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(101, 'CRISTIAN OMAR', 'RODRIGUEZ CASANOVA', 'corodrig@sii.cl', '$2y$10$d4HjijCydSf.lQ0XaGHlB.rE6youMQLsZry5U9nKGTyke/7UNXDTm', 'NULL', 'NULL', NULL, '11352687-4', '1968-12-21', '2000-01-01', '41-3115167', '5167', 104, 8, 2, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(102, 'HORACIO JAVIER', 'SAEZ RUIZ', 'hsaez@sii.cl', '$2y$10$Wpz09Cuxy6Or/RLJ4wEmVOAOAq5BvPYRji6h7KFEWCTm2lOPGVJt6', 'NULL', 'NULL', NULL, '7243227-4', '1956-12-07', '1992-02-17', '41-3115145', '5145', 104, 8, 3, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(103, 'ESTEBAN JOSE', 'SAN MARTIN ZAPATA', 'esteban.sanmartin@sii.cl', '$2y$10$YCx8pqQV1dwZ1VSPTz0xO.Ia75WZ1pBKPFdGCYZAa.NEThHrS21u6', 'NULL', 'NULL', NULL, '15491947-3', '1983-01-03', '2007-04-01', '41-3115158', '5158', 104, 8, 4, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(104, 'CESAR LEONARDO', 'SANHUEZA BELMAR', 'csanhuez@sii.cl', '$2y$10$a/Ds7RwxCAIJIrTgCvS8ee6EPFsvUhykM0p4.aZOv.a1Z8MxmyeKq', 'NULL', 'NULL', NULL, '11899872-3', '1971-05-17', '1998-09-21', '41-3115182', '5182', 104, 8, 99, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(105, 'GERARDO ANDRES', 'SILVA PEDREROS', 'gerardo.silva@sii.cl', '$2y$10$3YVKw2b1XGYLDVpXTqLSOOhXUI1Slh.Rf3g4bL596kAvLAcKwkC8q', 'NULL', 'NULL', NULL, '13796613-1', '1974-09-05', '2012-06-14', '41-3115164', '5164', 104, 8, 4, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(106, 'HILDA DEL PILAR', 'SOBARZO POBLETE', 'hsobarzo@sii.cl', '$2y$10$7mIRTPuqY2IgvzwFHJjEi.VGKLq.J/faLBsKLrvMsRNOeaLybm1Ii', 'NULL', 'NULL', NULL, '7343326-6', '1954-06-16', '1978-12-18', '41-3115146', '5146', 104, 8, 2, 3, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(107, 'JOHN', 'SOTO GACITUA', 'jesoto@sii.cl', '$2y$10$JRJ0MRbmhmOZdSQYNapGlOBSTL6KTWdLl.JyhhBOv/RbDGsme9EwC', 'NULL', 'NULL', NULL, '10400709-0', '1968-06-23', '1997-09-22', '41-3115128', '5128', 104, 8, 1, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(108, 'CATALINA ALEJANDRA', 'TARA BURGOS', 'catalina.tara@sii.cl', '$2y$10$GRpFid.1JfO8KKHUboSU9O7CeN2hwV5qncVCr9oo7z1f5Uexhj4.i', 'NULL', 'NULL', NULL, '17346569-6', '1990-03-21', '2015-05-14', '41-3115241', '5241', 104, 8, 6, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(109, 'MAURICIO MARCELO', 'TOLEDO GUTIERREZ', 'mtoledo@sii.cl', '$2y$10$VobM2jKk33a/x7InMEGbtegHZ50LpX.AOQ3nMDI0GJ.z/OZBKWFwK', 'NULL', 'NULL', NULL, '12208021-8', '1972-09-08', '2002-01-09', '41-3115189', '5189', 104, 8, 4, 3, 8, 25, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(110, 'SANDRA', 'TORRES SILVESTRE', 'sltorres@sii.cl', '$2y$10$ACBwNc4xx5/7NvvZLEFML.SSAlXq/evyrJSvfY/bkH/BB.3wnsXbq', 'NULL', 'NULL', NULL, '12525587-6', '1973-11-23', '1998-03-01', '41-3115174', '5174', 104, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(111, 'XIMENA ANDREA', 'VALENZUELA HERRERA', 'ximena.valenzuela@sii.cl', '$2y$10$C1g0C9.d6VyCCJzFzbxCeOr3eEqA0IN/v1KcdL4YBhlF0QSbDVEla', 'NULL', 'NULL', NULL, '16140126-9', '1986-03-22', '2017-09-29', '41-3115134', '5134', 104, 8, 6, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(112, 'MARCELO', 'VARGAS JARA', 'mavargaj@sii.cl', '$2y$10$3kLSrHVJCbvm5ZW6yW8GH.PHe.IHvYxVsWYNPRAiDlHF1YTgncwyS', 'NULL', 'NULL', NULL, '10699096-4', '1968-02-23', '1994-12-05', '41-3115203', '5203', 104, 8, 5, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(113, 'BERNARDA DE LOURDES', 'VEGA MELLADO', 'bvega@sii.cl', '$2y$10$BkKMwIspj1OSAhDoiWrlUuGaB3GllrhHwrFfPHidyZfhmBEAww27e', 'NULL', 'NULL', NULL, '11677742-8', '1970-08-15', '2001-01-31', '41-3115169', '5169', 104, 8, 6, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(114, 'PATRICIO ALBERTO', 'VELOSO AGUILERA', 'patricio.veloso@sii.cl', '$2y$10$.0Nj9M8NSDRzC5.xlruCGeoFmtkUmXHeSjqxu7X62ke94nJBv35BS', 'NULL', 'NULL', NULL, '11984574-2', '1972-01-23', '2008-03-17', '41-3115243', '5243', 104, 8, 14, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(115, 'BASTIAN DANILO', 'BANDA JIRON', 'bastian.banda@sii.cl', '$2y$10$nlQx4TrlWa9PhZCTklvo8uK/MpnnCdqbVhHiHquSot9l3FbJQFL7i', 'NULL', 'NULL', NULL, '16222910-9', '1985-05-25', '2016-03-07', '41-3115274', '5274', 108, 8, 9, 8, 14, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(116, 'MARIA', 'CONTRERAS GODOY', 'maria.contreras@sii.cl', '$2y$10$fIbmKmHXEgxj6B5l3xhHwu0lN0oHKFGYMlMUtqQowK9Yz4CtD2quS', 'NULL', 'NULL', NULL, '7994434-3', '1958-11-04', '2003-11-15', '41-3115119', '5119', 108, 8, 8, 8, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(117, 'RICARDO DEL CARMEN', 'CORDOVA ARELLANO', 'rcordova@sii.cl', '$2y$10$exQ2MFooJefSHBAE9GWGCuXwxiV7xTHk71UoXX8tNwcB8aJFLLUkS', 'NULL', 'NULL', NULL, '8485512-K', '1958-08-30', '1987-03-23', '41-3115121', '5121', 108, 8, 9, 8, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(118, 'DAYANA', 'CUERVO BECERRA', 'dcuervo@sii.cl', '$2y$10$nZatN6S2Fvgx/LCxTq93OurnfSLXr0Wbqy6JHIU3w.GAZ5j6oYtdm', 'NULL', 'NULL', NULL, '11809336-4', '1971-08-15', '1997-04-03', '41-3115117', '5117', 108, 8, 9, 9, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(119, 'ALEJANDRA BETSABE', 'FAUNDEZ CONTRERAS', 'alejandra.faundez@sii.cl', '$2y$10$xDeva8/c2BVWxsjQFZvPOuc8tLcn0j3hCjnWxFo2QF6wOSML72Av6', 'NULL', 'NULL', NULL, '13306211-4', '1977-04-05', '2009-05-01', '41-3115124', '5124', 108, 8, 8, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(120, 'VERONICA ISABEL', 'FIGUEROA MELLA', 'veronica.figueroa@sii.cl', '$2y$10$vRiQjTkhdxXW7brsjkCR6OR8QaBlkpsu1Xw.WShK0d9JCGE7E8TwC', 'NULL', 'NULL', NULL, '12527004-2', '1973-02-15', '2008-02-04', '41-3115123', '5123', 108, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(121, 'ALEX', 'GUERRA DIAZ', 'alex.guerra@sii.cl', '$2y$10$Lu2GLHPkMM4cNEbN0hvsTe7DMXRb.zUtKNPbxSGn.PJYh0jslXOX.', 'NULL', 'NULL', NULL, '11313778-9', '1967-12-28', '2003-11-18', '41-3115262', '5262', 108, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(122, 'ANDREA PAMELA', 'JEREZ GALVEZ', 'andrea.jerez@sii.cl', '$2y$10$79Uau1cayV7bgw7ZPQDJ4OKEzjfZlRt3NwH4th265ya7VJo9Y83VK', 'NULL', 'NULL', NULL, '13958163-6', '1980-06-10', '2016-12-19', '41-3115147', '5147', 108, 8, 8, 9, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(123, 'KARLA ANDREA', 'LEYTON CASTRO', 'karla.leyton@sii.cl', '$2y$10$sZ0RLI/sJ3.Hns3/zx7cieKEo89b5FnH8e4AXGm1E0d5cnjF7q3iW', 'NULL', 'NULL', NULL, '13723720-2', '1979-09-07', '2011-01-10', '41-3115260', '5260', 108, 8, 9, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(124, 'GABRIELA ESTEFANIA', 'LUNA CABRERA', 'gabriela.luna@sii.cl', '$2y$10$HMxd3OaZBCRlbTx2dAi0n.1Kr/DF5b7uFgg0Yl6pd49FPZHShVVnK', 'NULL', 'NULL', NULL, '18068063-2', '1991-11-14', '2018-01-15', '41-3115126', '5126', 108, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(125, 'JAIME', 'MANRIQUEZ CABRERA', 'jemanriq@sii.cl', '$2y$10$RUBUP8eYqLyrc5QTFWCnUeoFj8wWFZvLpNkAPOMsRxeFdXXUdEtii', 'NULL', 'NULL', NULL, '7911398-0', '1957-07-23', '1993-09-01', '41-3115118', '5118', 108, 8, 8, 9, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(126, 'CLAUDIA ANDREA', 'MENDOZA ALARCON', 'claudia.mendoza@sii.cl', '$2y$10$ut1GoBeWUQgadBCuNJF1yOoxwmPMMCKcgg9GGKIT3Mw6ZFRZZ3uTa', 'NULL', 'NULL', NULL, '13309202-1', '1977-05-31', '2015-08-17', '41-3115261', '5261', 108, 8, 9, 8, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(127, 'CATALINA ELFRIDA', 'MUNOZ MONTERO', 'catalina.munoz@sii.cl', '$2y$10$pfjqyNmM0JGZkXShh5COdOhgh7EuzoY.Yez7RHWqM27MspWmXgiDm', 'NULL', 'NULL', NULL, '14333639-5', '1977-09-28', '2009-05-01', '41-3115127', '5127', 108, 8, 9, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(128, 'PAMELA CRISTINA', 'MUNOZ ULLOA', 'pamela.munoz@sii.cl', '$2y$10$.dzzfSIJFwuuy9D02iknzuv0fO5gyI5.ZXEjzjOq7VmsXxOL/KM1u', 'NULL', 'NULL', NULL, '12159437-4', '1975-04-22', '2015-07-20', '41-3115126', '5126', 108, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(129, 'DARLING NICOLE', 'NUNEZ MOLINA', 'darling.nunez@sii.cl', '$2y$10$uGHiuLLYwQ/skYBPGXUtdutL8/5pby.5bE4zW8XbvTmLd0uDIKNuG', 'NULL', 'NULL', NULL, '17000358-6', '1987-08-09', '2019-03-18', '41-3115126', '5126', 108, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(130, 'ANTONIO OSVALDO', 'PADILLA DIAZ', 'apadilla@sii.cl', '$2y$10$Y5VEBkSMddhUlwdTBClOU.ylq1fZtXhK2HRSxbcWOMrtB64icq8l2', 'NULL', 'NULL', NULL, '14300561-5', '1975-11-07', '2000-08-10', '41-3115147', '5147', 108, 8, 8, 8, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(131, 'RENE EDISON', 'PARRA GONZALEZ', 'reparra@sii.cl', '$2y$10$yHzecAZnKn3HxNwCvv8IV..oLKCCyoS/FYLy10iSgbzX95UTiRSXy', 'NULL', 'NULL', NULL, '6788407-8', '1955-09-06', '1992-01-01', '41-3115116', '5116', 108, 8, 9, 9, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(132, 'VERONICA CECILIA', 'SANDOVAL ROMERO', 'vcsandov@sii.cl', '$2y$10$sANB94lol1BRpno8w7.QSuQeP9k9x5mqF2ueVB.53DNTgfkmNpIl.', 'NULL', 'NULL', NULL, '10087047-9', '1965-11-23', '1999-12-01', '41-3115122', '5122', 108, 8, 9, 9, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(133, 'PEDRO ANDRES', 'TOLEDO SAN MARTIN', 'pedro.toledo@sii.cl', '$2y$10$2Ck.UuNDaOgtzlgdkok0q.GxHF1wuf0aniG0V/4SPaGk/QFeQmcim', 'NULL', 'NULL', NULL, '15613374-4', '1983-08-04', '2011-11-17', '41-3115230', '5230', 108, 8, 8, 9, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(134, 'LOREN ANDREA CAROLINA', 'UGALDE JAQUE', 'loren.ugalde@sii.cl', '$2y$10$37UNmHIFP35QKZs8Uwbbh.0CeJmr4qT7QOm8nV6Im7lDEFDgZUlke', 'NULL', 'NULL', NULL, '13507336-9', '1978-07-22', '2010-06-15', '41-3115125', '5125', 108, 8, 99, 5, 2, 5, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(135, 'PAULINA ANDREA', 'VACCARO BUSTOS', 'paulina.vaccaro@sii.cl', '$2y$10$pWTApt7yoKOo9cRwWru9AuEORgdvtqDqCdkftV/rbsJECpwptp.ze', 'NULL', 'NULL', NULL, '9487814-4', '1966-06-11', '2007-06-15', '41-3115231', '5231', 108, 8, 8, 9, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(136, 'LUCIANA ALEJANDRA', 'ZUNIGA MANCILLA', 'luciana.zuniga@sii.cl', '$2y$10$HfpYN3bBkHXPUxQwA1iQreUiia/25RVtuLF5zlEdNJ.nQxH02AYwS', 'NULL', 'NULL', NULL, '16140610-4', '1986-05-24', '2021-03-08', '99-99', '99', 108, 8, 9, 9, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(137, 'PAMELA', 'ARAVENA PINO', 'plaraven@sii.cl', '$2y$10$mifiNBGve7oZq5D4Afnz2uX1qvGEbFEa5ebBbFx4pwK3K0Zkn0Tqa', 'NULL', 'NULL', NULL, '14436764-2', '1972-09-16', '1999-02-01', '41-3115275', '5275', 106, 8, 99, 5, 2, 4, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(138, 'ADDIS PATRICIA', 'BAEZA VALENZUELA', 'abaeza@sii.cl', '$2y$10$oDsa.LVIvVLVkHN2WEEkOOzLCwG25RTZaeMxbGCENDl5J.d.ygvKm', 'NULL', 'NULL', NULL, '8.148.501-1', '1957-02-23', '1977-12-14', '41-3115217', '5217', 106, 8, 99, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(139, 'HUGO EDUARDO', 'BARRA LEMUS', 'hugo.barra@sii.cl', '$2y$10$i4QbxicyxQJd8xSafthCxuNpXeArr1VQo/FLtSfTeviFJI2jspYxa', 'NULL', 'NULL', NULL, '12525636-8', '1973-06-30', '2007-04-01', '41-3115278', '5278', 106, 8, 11, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(140, 'CAROLINA VICTORIA', 'BARRA VERGARA', 'carolina.barra@sii.cl', '$2y$10$dGD0HgDwVN33d3DJoqk29uPNzJ2uwYRFf6.6Om0mziaL0xjXVek8q', 'NULL', 'NULL', NULL, '15206874-3', '1982-10-03', '2017-09-29', '41-3115131', '5131', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(141, 'VICTOR MANUEL', 'BELLO SANHUEZA', 'victor.bello@sii.cl', '$2y$10$neJROqU3wJG2zCwnapzf9eOJxmnnpGBwfUiOQ/7DctPSfTlu1/coC', 'NULL', 'NULL', NULL, '14471263-3', '1980-03-23', '2018-08-20', '41-3115214', '5214', 106, 8, 11, 6, 16, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(142, 'PATRICIO EDGARDO', 'BILBAO ESPARZA', 'pbilbao@sii.cl', '$2y$10$RBZIZtI1r2ubnobOJT/kRub6oWHyIapKnMnxVkmk.nVgGfHpPkLHi', 'NULL', 'NULL', NULL, '9347922-K', '1964-03-17', '1988-11-15', '41-3115277', '5277', 106, 8, 11, 2, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(143, 'EDITA ANGELICA', 'BUSTOS BASTIAS', 'ebustos@sii.cl', '$2y$10$YmQeiCCtETLWkVXg70KCZ.HkLz8qjtbgiDdZ24ho.1Gvhb3JAPBM.', 'NULL', 'NULL', NULL, '10087210-2', '1965-07-08', '1986-09-01', '41-3115222', '5222', 106, 8, 11, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(144, 'MARIELA HAYDEE', 'BUSTOS BASTIAS', 'mariela.bustos@sii.cl', '$2y$10$HuWchc1txraZP61a7K1kQ.6PW2yhmFNAqFUMc6zp34Lswpt9fAWYm', 'NULL', 'NULL', NULL, '10094021-3', '1970-03-19', '2015-07-01', '41-3115215', '5215', 106, 8, 12, 1, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(145, 'ARTURO ENRIQUE', 'BUSTOS MARTINEZ', 'arturo.bustos@sii.cl', '$2y$10$edqd7u9X8dDBQrYXUpNAVOFo.tuiMstpsA7ComUnsDVJHihLD3gxS', 'NULL', 'NULL', NULL, '14022844-3', '1981-09-01', '2017-09-29', '41-3115132', '5132', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(146, 'DAVID ESTEBAN', 'CABRERA GOMEZ', 'david.cabrera@sii.cl', '$2y$10$S5NzjIzebZVtsOTYeEvXLuFLn7JZq9hUVai.IpJHZJGFwXYcamX8S', 'NULL', 'NULL', NULL, '17207465-0', '1989-04-22', '2016-02-01', '41-3115139', '5139', 106, 8, 10, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(147, 'PATRICIO MARCELO', 'CHAVEZ SAAVEDRA', 'patricio.chavez@sii.cl', '$2y$10$uuQHRKdcSMOCDcHSP8RQOOW8niyFsj7bBM6na3MPU76jCNIbyrEqW', 'NULL', 'NULL', NULL, '12796681-8', '1971-03-18', '2015-10-01', '41-3115218', '5218', 106, 8, 10, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(148, 'MIRIAM CAROLINA', 'CID GONZALEZ', 'mcid@sii.cl', '$2y$10$zlhWr1nC7Lvx/WraNqT8ZuXskXSaYGlqNcBf0BIJ9uzwDgAqBw08q', 'NULL', 'NULL', NULL, '8609784-2', '1972-05-11', '1997-06-01', '41-3115223', '5223', 106, 8, 99, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(149, 'JORGE LUIS', 'FLORES MUNOZ', 'jorge.flores@sii.cl', '$2y$10$Q8CvvUrF/pCucvqVCGd48ON3g3fPcU5WtYd0vwOF1OiapHSgzUNoW', 'NULL', 'NULL', NULL, '15180291-5', '1981-12-31', '2006-03-01', '41-3115257', '5257', 106, 8, 12, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(150, 'RODRIGO', 'FONTANILLA ORTEGA', 'rfontani@sii.cl', '$2y$10$34uaTDn5I3I9L29ckyNMT.JuoQ1B5OAQMSC8d0sXev94ySVejO3uC', 'NULL', 'NULL', NULL, '12699730-2', '1974-05-27', '2000-01-01', '41-3115224', '5224', 106, 8, 11, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(151, 'JAHAZIEL HERNAN', 'GODOY ROCA', 'jahaziel.godoy@sii.cl', '$2y$10$Qd9NT1eHO3FzfHQsuB4uFeJP9kPggkEgfcs7TtpQRfrZfcwHSPa9y', 'NULL', 'NULL', NULL, '18418272-6', '1993-10-13', '2018-05-02', '41-3115221', '5221', 106, 8, 10, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(152, 'IGNACIA DANIELLA', 'LAMIG CARRION', 'ignacia.lamig@sii.cl', '$2y$10$4ic.PbvSMixvLe/Pfpaed..qtDdAA5hM1ijezJXX0CeR0vh1dahiO', 'NULL', 'NULL', NULL, '17616651-7', '1991-08-28', '2016-07-26', '41-3115171', '5171', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(153, 'NATALIA DE LOS ANGELES', 'MENDEZ RAMIREZ', 'natalia.mendez@sii.cl', '$2y$10$QXEc2OUpsLmPoR.q7NcgS.mRS/9xig3RhifMTxW04QUdHkxThmDAa', 'NULL', 'NULL', NULL, '13796046-K', '1980-04-09', '2007-09-26', '41-3115226', '5226', 106, 8, 10, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(154, 'MARCELO', 'MUÑOZ ESCOBAR', 'marcelo.munoz@sii.cl', '$2y$10$b72Vl5gmaQacHmb.EIPHIuZZRkHjmmjeqvEH7soqXceiqIltLMCjq', 'NULL', 'NULL', NULL, '7129275-4', '1959-07-15', '2002-06-01', '41-3115220', '5220', 106, 8, 11, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(155, 'RAFAEL', 'OLGUIN ELGUETA', 'rafael.olguin@sii.cl', '$2y$10$yDajthJq5Vj/oyQ0T3ox/e4zY3r9AqosmiSzxAqolykWkLD/Jx5Ze', 'NULL', 'NULL', NULL, '12291721-5', '1972-04-26', '2005-03-17', '41-3115215', '5215', 106, 8, 12, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(156, 'LUCILA ESTEPHANIA', 'PEREZ LARA', 'lucila.perez@sii.cl', '$2y$10$p.mk4DaYvXFQnthGZmo9Uej.fDatq0QY3zaXnDNOEcyv5IB8pd/V.', 'NULL', 'NULL', NULL, '16941924-8', '1988-12-26', '2016-07-28', '41-3115225', '5225', 106, 8, 12, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(157, 'MONICA ALEJANDRA', 'PINTO TORRES', 'mopinto@sii.cl', '$2y$10$.sOBTKH8p0C4tK8F9GvheeTyvIUToDHEIW70bkDgBRjapgI5s0Xue', 'NULL', 'NULL', NULL, '13312173-0', '1977-11-24', '2001-04-24', '41-3115259', '5259', 106, 8, 12, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(158, 'MAURICIO ALEJANDRO', 'RIQUELME MUNOZ', 'mauricio.riquelme@sii.cl', '$2y$10$6w0DefmBmpaM5ZcIFGqrpOVHk4LhgvLRZi9C9fV6DBOITrRrQvyJK', 'NULL', 'NULL', NULL, '13625887-7', '1979-11-25', '2015-03-01', '41-3115214', '5214', 106, 8, 11, 6, 15, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(159, 'FABIOLA ISABEL', 'RUIZ CAAMANO', 'fabiola.ruiz@sii.cl', '$2y$10$FGtnhLzongavN7W63m3L7.oWNoEVApdxoXVMozkkHKrf6A7th9cwG', 'NULL', 'NULL', NULL, '15170897-8', '1982-12-09', '2010-10-05', '41-3115273', '5273', 106, 8, 12, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(160, 'MIRIAM DE LAS NIEVES', 'SANHUEZA PEREIRA', 'msanhueza@sii.cl', '$2y$10$GOKXZVeCywbxlRNnr5Lo7.THeVFWPwRWzypY6jsoVqcxOJNB1F4Jm', 'NULL', 'NULL', NULL, '5905670-0', '1951-03-30', '1995-07-01', '41-3115222', '5222', 106, 8, 11, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(161, 'CAMILA FRANCISCA', 'SEPULVEDA VALENZUELA', 'camila.sepulveda@sii.cl', '$2y$10$.vXsH6xubdd.s2O8egYXEutfXtZNz73LW7O2xyr4EjTQOUmP2l74.', 'NULL', 'NULL', NULL, '17221489-4', '1989-04-16', '2015-11-19', '41-3115249', '5249', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(162, 'ENOC ABIATAR', 'SILVA GARRIDO', 'enoc.silva@sii.cl', '$2y$10$oj7F7AUVLJEVQWIN7tI5hODKbuhJnGIDXUKK2zNxHJtVCOYPgWBb6', 'NULL', 'NULL', NULL, '16404710-5', '1986-08-27', '2016-07-28', '41-3115250', '5250', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(163, 'CESAR', 'SOZA GONZALEZ', 'cesar.soza@sii.cl', '$2y$10$l7pQpPXFMwJNWsM7gliWP.uG3d4BBHOQPt2jhMTqTFp6aa1aHjYBy', 'NULL', 'NULL', NULL, '13102644-7', '1976-07-24', '2004-02-01', '41-3115139', '5139', 106, 8, 10, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(164, 'PAOLA', 'TOLEDO JARA', 'paola.toledo@sii.cl', '$2y$10$Ml6qezrW9gilCrstrx6n6.M3pVNp34CLeo5aSlxoduklRNi/tEw5K', 'NULL', 'NULL', NULL, '10755305-3', '1971-12-15', '2004-02-01', '41-3115220', '5220', 106, 8, 10, 1, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(165, 'HERNAN ALEXIS', 'TORRES LAVADO', 'hernan.torres@sii.cl', '$2y$10$008n39ToERfQ74kiaMpIbuKj5RK46owIeiEYHSwjzzNmbVJ.1z4C6', 'NULL', 'NULL', NULL, '9656586-0', '1964-10-16', '2009-12-14', '41-3115214', '5214', 106, 8, 11, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(166, 'JUAN CARLOS', 'TORRES SEPULVEDA', 'juan.torres@sii.cl', '$2y$10$tTctWcXrLvH5H2y2arXSbeUmrAYPDIPY63kHFLAuwurv/CN8F31CG', 'NULL', 'NULL', NULL, '10132172-K', '1964-10-06', '2008-08-01', '41-3115214', '5214', 106, 8, 11, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(167, 'ROMINA ISABEL', 'VALENZUELA PINTO', 'romina.valenzuela@sii.cl', '$2y$10$vc.nPoE/aGEwQ6dUeHY4y.jzEmc56CWOGR4fGCtFaCrtwbgtfMvCy', 'NULL', 'NULL', NULL, '10717940-2', '1970-05-21', '2010-09-01', '41-3115214', '5214', 106, 8, 10, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(168, 'MARCELO ALEJANDRO', 'VALENZUELA REBOLLEDO', 'marcelo.valenzuela@sii.cl', '$2y$10$Su4vLndivsF///hhrGLBY.A0TL7kuQSjqa1xEl2b3h0LCqZeUimyy', 'NULL', 'NULL', NULL, '15627279-5', '1982-07-06', '2014-04-22', '41-3115139', '5139', 106, 8, 10, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(169, 'CARLOS', 'VILLABLANCA CRUCES', 'carlos.villablanca@sii.cl', '$2y$10$n3v4oZ7mv4d21blYX2wK6ed6Li/wUgfEHAX9utTIXYstNbJEPKdP6', 'NULL', 'NULL', NULL, '13955532-5', '1980-05-03', '2004-03-29', '41-3115214', '5214', 106, 8, 11, 2, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(170, 'MARGARITA', 'VILLARROEL FERRADA', 'mrvillar@sii.cl', '$2y$10$Jk58d1BvKijS0riS8ysdaeLSOks.En1WIbpaNnc8YFrER5tdSree6', 'NULL', 'NULL', NULL, '6593433-7', '1955-03-09', '1980-02-18', '41-3115216', '5216', 106, 8, 10, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(171, 'ROGER EDUARDO', 'VIVALLO BASCUR', 'roger.vivallo@sii.cl', '$2y$10$9bjZls3PbH/hY1cch8QPtOnTgNCw1meaw71tY3aychZqLKwADV0Lq', 'NULL', 'NULL', NULL, '15810884-4', '1984-05-16', '2017-09-29', '41-3115188', '5188', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(172, 'YANET DEL CARMEN', 'YEVENES NAVARRETE', 'yanet.yevenes@sii.cl', '$2y$10$ncfcnROFgnZEV0jFKtj2YeVuNoqJfO1y.fLclT51lubapwmcvAHne', 'NULL', 'NULL', NULL, '12376068-9', '1973-01-22', '2015-07-01', '41-3115214', '5214', 106, 8, 11, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(173, 'CAROLINA ESTER', 'ZAMBRA MUNOZ', 'carolina.zambra@sii.cl', '$2y$10$fYbxFAPlDHRORAjRugxGheksbIoW97F8mQpOJKDRjhsxjur54A1fy', 'NULL', 'NULL', NULL, '13956085-K', '1980-07-22', '2018-05-25', '41-3115221', '5221', 106, 8, 10, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(174, 'PABLO', 'AGUILERA CORRAL', 'pablo.aguilera@sii.cl', '$2y$10$D9KOSsPy9Gk8W8Hllqh2oeuAXFv2HBYzSLdFmG8hNLvwRF6m5LdVe', 'NULL', 'NULL', NULL, '12725659-4', '1975-05-09', '2000-05-22', '43-2458519', '8519', 46, 8, 13, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(175, 'JUAN', 'ALARCON CONTRERAS', 'jalarcon@sii.cl', '$2y$10$VxoUBaWUgRGfOqvT9yxYzuns7q0vV1yA5/DeF4RlGcZYw86G5Tpd2', 'NULL', 'NULL', NULL, '9685432-3', '1967-03-13', '1999-02-01', '43-2458531', '8531', 46, 8, 99, 5, 4, 9, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(176, 'MARIA EUGENIA', 'ALMONACID HUAQUIN', 'malmonacid@sii.cl', '$2y$10$k.Fjy/l7SSpn1i6OrofEE.EeW49MeUeTKbRsq7Ki.M3ATgfw2YcAS', 'NULL', 'NULL', NULL, '7871779-3', '1960-03-25', '1985-12-01', '43-2458505', '8505', 46, 8, 15, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(177, 'EDUARDO', 'ANABALON SEPULVEDA', 'eanabalo@sii.cl', '$2y$10$mpynVzjgY5pcHyYTYyQJGej1yC4.01lm.FQiyfHqZatx.Ihp9ih5u', 'NULL', 'NULL', NULL, '11795841-8', '1971-10-27', '1992-04-01', '43-2458532', '8532', 46, 8, 1, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(178, 'ERIKA TATIANA', 'BADILLA COFRE', 'ebadilla@sii.cl', '$2y$10$yX811pnUDjaImljLn7iX9.PIa3gq2kukxv8l5gIL.cWwoUPOW//ti', 'NULL', 'NULL', NULL, '10804211-7', '1968-02-04', '2000-01-01', '43-2458527', '8527', 46, 8, 1, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(179, 'MIGUEL ANGEL', 'BALLESTEROS BURGOS', 'mballest@sii.cl', '$2y$10$LKWUF3pvpCYds9lmZ/Kmwe7aiWPn6Okv/AZ14UNyDn7QYFFlufL7K', 'NULL', 'NULL', NULL, '10156166-6', '1964-12-13', '1993-10-01', '43-2458514', '8514', 46, 8, 1, 1, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(180, 'PAMELA CRISTINA', 'BUSTAMANTE PAVEZ', 'pbustamante@sii.cl', '$2y$10$b/MtpToz/ypgylD3M7mJBu.qWVYPo6.xxnxO/j28dBHQl5bC59xaS', 'NULL', 'NULL', NULL, '12118529-6', '1974-07-08', '2002-01-09', '43-2458524', '8524', 46, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(181, 'VICTORIA', 'CAMPOS GATICA', 'vcampos@sii.cl', '$2y$10$slIW9.tXcPI4//aKbBNvWeAkKopH7KwvLK71n2Z.DVWFNNFII6BN6', 'NULL', 'NULL', NULL, '11777945-9', '1971-11-17', '2001-09-04', '43-2458542', '8542', 46, 8, 2, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(182, 'KAREN SAYME', 'CANDIA MARTINEZ', 'karen.candia@sii.cl', '$2y$10$h0ieo7xF8kDFhDhLVW08M.B4B11gf.rbaop29War8c8gi/QPoLkli', 'NULL', 'NULL', NULL, '13843506-7', '1980-04-03', '2011-01-10', '43-2458530', '8530', 46, 8, 1, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(183, 'HERTA DEL CARMEN', 'CARRASCO QUEZADA', 'hcarrasc@sii.cl', '$2y$10$dM1tY5eJbIdIAwNKbSuaMuXMTv7Rfj9aM.jy1mP4mW9dito5ETObC', 'NULL', 'NULL', NULL, '8074287-8', '1957-10-13', '1990-01-01', '43-2458521', '8521', 46, 8, 2, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17');
INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(184, 'SANDRA AURORA', 'CARRILLO RIOS', 'scarrill@sii.cl', '$2y$10$T.hzSqbHQKAPrF4zePO7VO4YMCr9H8fErWUtNz9oefm70DR7chw2q', 'NULL', 'NULL', NULL, '12394693-6', '1973-09-16', '1998-09-21', '43-2458543', '8543', 46, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(185, 'CAROLINA EUGENIA', 'CASTRO NIZZA', 'cecastro@sii.cl', '$2y$10$5fP7ZxaC8pNMl8h5mfVL1ups4vPlUMqeNl6jLo6dfuoorp6H/czcS', 'NULL', 'NULL', NULL, '12047573-8', '1974-01-22', '2002-01-16', '43-2458516', '8516', 46, 8, 2, 3, 7, 29, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(186, 'ALEJANDRO ESTEBAN', 'ESCOBAR VIAL', 'alejandro.escobar@sii.cl', '$2y$10$dyWAvY/TQmCNBHLx3Ni/mOPf/fDHg2tGmdOct2dQXO9eYlSzdAsSC', 'NULL', 'NULL', NULL, '17590998-2', '1990-02-16', '2018-09-05', '43-2458501', '8501', 46, 8, 13, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(187, 'CLAUDIA PILAR', 'FIGUEROA RODRIGUEZ', 'claudia.figueroar@sii.cl', '$2y$10$H9S9KULQDlZpng3wqNGo/epzRUfXJKoZ63KoNpUkqxLZzpMRec4ZC', 'NULL', 'NULL', NULL, '15207426-3', '1982-11-11', '2010-10-05', '43-2458558', '8558', 46, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(188, 'RICARDO FABIAN', 'FLORES JOFRE', 'ricardo.flores@sii.cl', '$2y$10$u.Fl4yN37sghmknsjYvOIeqykZ.PgsSj88EFIM3aupzNGvirTlELK', 'NULL', 'NULL', NULL, '12964207-6', '1976-12-19', '2018-01-02', '43-2458507', '8507', 46, 8, 15, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(189, 'CAROLINA ANDREA', 'FLORES SOTO', 'carolina.floress@sii.cl', '$2y$10$hznyOGb85PYnITG0sZcz.epZzh8sS0.GpxCH73ecXegtExFeKc8Cu', 'NULL', 'NULL', NULL, '14349089-0', '1976-11-09', '2015-07-06', '43-2458541', '8541', 46, 8, 13, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(190, 'ARIEL ENRIQUE', 'GALVEZ QUEZADA', 'ariel.galvez@sii.cl', '$2y$10$wkGB/8FD1w/2dcrBSh0G1exyRw.oc8zo4Uqqo1NjiqKUmA3lPSqh.', 'NULL', 'NULL', NULL, '11962546-7', '1972-07-14', '2015-08-27', '43-2458513', '8513', 46, 8, 13, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(191, 'XIMENA ANDREA', 'GALVEZ REYES', 'xgalvez@sii.cl', '$2y$10$O6l23mxiaQDOWwnYlewGy.vXlq7UjN74Zsvlu.C9Y0n70q8LdqZSu', 'NULL', 'NULL', NULL, '14410207-K', '1975-02-15', '2001-01-31', '43-2458522', '8522', 46, 8, 13, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(192, 'VERONICA ANDREA', 'GONZALEZ CARCAMO', 'vgonzalez@sii.cl', '$2y$10$LQbydk8DJ0XJg9qJAo6VTOJxG1mcs1r5kBziUtBafFmf6vgeEkJQW', 'NULL', 'NULL', NULL, '13067318-K', '1976-07-08', '2001-09-04', '43-2458524', '8524', 46, 8, 2, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(193, 'TAMARA FERNANDA', 'GONZALEZ CARDENAS', 'tamara.gonzalez.c@sii.cl', '$2y$10$xAIum10zt4A6Q3arZ4WypesCZkipMnmtEO4DNeuYg0FvvX5sT33.S', 'NULL', 'NULL', NULL, '19600052-6', '1997-05-21', '2018-01-02', '43-2458541', '8541', 46, 8, 13, 1, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(194, 'ALFREDO ANTONIO', 'GUTIERREZ RAMIREZ', 'agutierrez@sii.cl', '$2y$10$B52mpXuBdyfAQRSEw5zmi.XviXnFToIUO/EtKAGxWKb85ilApUwRG', 'NULL', 'NULL', NULL, '14459360-K', '1974-10-26', '2001-01-31', '43-2458540', '8540', 46, 8, 1, 3, 7, 28, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(195, 'VICTOR OMAR', 'HENRIQUEZ TOLEDO', 'vohenriq@sii.cl', '$2y$10$Xu91fywl55FFKKXkUx75VeFn1J8CI5bvUqV9y3y/J3Xu4ZM3deuPK', 'NULL', 'NULL', NULL, '6041439-4', '1951-04-03', '1978-07-04', '43-2458502', '8502', 46, 8, 1, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(196, 'ROSA MARIA DE LOS ANGELES', 'MONDACA GONZALEZ', 'rosa.mondaca@sii.cl', '$2y$10$gtIPkIL2RxDevnBVYb5vJOe9jdNA2rSeOuHfCQOtiCnO4KK9uHNlm', 'NULL', 'NULL', NULL, '16319256-K', '1986-01-04', '2017-09-29', '43-2458539', '8539', 46, 8, 2, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(197, 'OSCAR ADOLFO', 'NOVOA PINO', 'oscar.novoa@sii.cl', '$2y$10$Y6saSrhMneGYottFDEImqeMB56Cz4g1NIK.UUdOSY.4sp61vwz/aO', 'NULL', 'NULL', NULL, '15629103-K', '1983-11-30', '2008-11-01', '43-2458512', '8512', 46, 8, 2, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(198, 'SERGIO', 'ORTIZ VALENZUELA', 'sortiz@sii.cl', '$2y$10$/D8vAXeSjrOK5k9Jd9akNuBSKp.tCYBCSoPimC5MN9rv0EBL3OhK2', 'NULL', 'NULL', NULL, '12326602-1', '1973-03-19', '1994-10-03', '43-2458519', '8519', 46, 8, 13, 1, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(199, 'HECTOR ALEJANDRO', 'PARDO CANO', 'hector.pardo@sii.cl', '$2y$10$M853.dy82LfBzCUn0rVewO9teXKaKzRcQFG/XmT1B0gsdZs96sfwS', 'NULL', 'NULL', NULL, '12749041-4', '1975-11-20', '2006-03-01', '43-2458537', '8537', 46, 8, 2, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(200, 'JORGE ANDRES', 'PEREZ OLIVEROS', 'jorge.perez@sii.cl', '$2y$10$cXjyvkFVBCjEynE5bnazYuL4hYYIXDWizA3UDYV6x/JvbllFrzL3q', 'NULL', 'NULL', NULL, '16763214-9', '1988-12-17', '2009-12-21', '43-2458503', '8503', 46, 8, 15, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(201, 'BERTA', 'PINCHEIRA VALDEBENITO', 'bpinchei@sii.cl', '$2y$10$U7wgKwXIjQTbv.SM0qDAB.TBKuMQ1llNTeuFL5.iItdWdrYpVQ1we', 'NULL', 'NULL', NULL, '8527041-9', '1958-07-03', '1990-01-01', '43-2458553', '8553', 46, 8, 15, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(202, 'MARIA CATALINA', 'PINCHEIRA VALDEBENITO', 'mpinchei@sii.cl', '$2y$10$SAXVxwOYkgqNz64X08zXpuJgjB5xPG1djTlwyLkZKv8MWcRopowFK', 'NULL', 'NULL', NULL, '8630320-5', '1959-11-25', '1994-11-01', '43-2458511', '8511', 46, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(203, 'ARTURO LAURENCE', 'PINCHEIRA VIDAL', 'arturo.pincheira@sii.cl', '$2y$10$8vJwtcshGzJjoo41ldBw6.A7aXD02Lp8jquo2E6pBEd6sPdVKupcq', 'NULL', 'NULL', NULL, '12004765-5', '1970-11-27', '2015-07-06', '43-2458525', '8525', 46, 8, 15, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(204, 'MIRTHA PILAR', 'PINO CASTILLO', 'mirtha.pino@sii.cl', '$2y$10$EJ5MuEELGAiP2DrxOGqMNeVIm7T2DOEdxjN5q1gHWaD7LG/wOQjta', 'NULL', 'NULL', NULL, '14351295-9', '1979-10-12', '2011-12-01', '43-2458555', '8555', 46, 8, 15, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(205, 'RODRIGO ALEJANDRO', 'PLAZA MONTANO', 'rodrigo.plaza@sii.cl', '$2y$10$92J8qmmqDJkU/s03EJOOo.NzX.hL5i5QayeRTctVy7bFaH1AtPv9m', 'NULL', 'NULL', NULL, '12489544-8', '1973-01-09', '2007-06-13', '43-2458534', '8534', 46, 8, 15, 9, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(206, 'VALESKA ELISA', 'PUENTES VENEGAS', 'valeska.puentes@sii.cl', '$2y$10$m//PztbHbL6ldHe9WmgB.u3XASEr5oyMX/N.Vfj8QLcRgmF4BKnm2', 'NULL', 'NULL', NULL, '16061844-2', '1985-05-15', '2017-01-09', '2-23954747', '4747', 46, 8, 99, 4, 7, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(207, 'EDUVIGES DEL CARMEN', 'QUILODRAN PINEDA', 'equilodr@sii.cl', '$2y$10$304e9zxWjZ/m2ssYVbcave8emEoAWm7LJ1Y04775QBbclr0Thsv3K', 'NULL', 'NULL', NULL, '8721613-6', '1963-01-29', '1987-07-01', '43-2458552', '8552', 46, 8, 1, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(208, 'ANA', 'RIVAS IRAIRA', 'ana.rivas@sii.cl', '$2y$10$fhRKgZGPh8UygDWzVT9lU.fbH4Ks1hxmPH5DVmuKagpdg8vrXgxxO', 'NULL', 'NULL', NULL, '14300578-K', '1975-11-09', '2003-12-01', '43-2458529', '8529', 46, 8, 13, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(209, 'DARIO ESTEBAN', 'RODRIGUEZ CERDA', 'drodrigu@sii.cl', '$2y$10$8rh9.ShUPcLkxxKg5m3CzOTBKsirdwzvEJDbSSi3lspzaMReFNve.', 'NULL', 'NULL', NULL, '12557343-6', '1974-01-02', '1999-02-01', '43-2458518', '8518', 46, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(210, 'ROGELIO ABDOLINO', 'SAAVEDRA NAVARRETE', 'rsaavedr@sii.cl', '$2y$10$PDAzdnWogVQyzYelJkt4NunxqrDl86yhtFz.YtrFKfIMYb0olSwgW', 'NULL', 'NULL', NULL, '7963061-6', '1957-09-17', '1987-07-01', '43-2458535', '8535', 46, 8, 99, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(211, 'ABBY VALEXA', 'SAN MARTIN JARA', 'abby.sanmartin@sii.cl', '$2y$10$gqkc.2fr185rZg3Pd8Zrduili7k4nEK3CIMmVLfji6VP9nV.Vb.Fy', 'NULL', 'NULL', NULL, '16201778-0', '1985-12-05', '2010-01-04', '43-2458551', '8551', 46, 8, 13, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(212, 'JOSE IVAN', 'SAN MARTIN MOLINA', 'jsanmart@sii.cl', '$2y$10$A4kDv/eOJI2AJYTbtdkPkuUM7/U9QLkOgo.A/KeQ26iZNt18s..bq', 'NULL', 'NULL', NULL, '6998295-6', '1952-09-19', '1980-02-18', '43-2458504', '8504', 46, 8, 1, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(213, 'HANSEL ANDRES', 'SCHLIEBENER VERA', 'hansel.schliebener@sii.cl', '$2y$10$d6aLWODLx8OjyyAhioZOi.JT9BzQUcu9LlZStrdWQSfTOb5YKLA6q', 'NULL', 'NULL', NULL, '15212603-4', '1982-10-07', '2015-08-31', '43-2458556', '8556', 46, 8, 15, 9, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(214, 'TREDY LETICIA', 'TORRES ESCOBAR', 'tredy.torres@sii.cl', '$2y$10$DTTNtuWy4pywWekJZhBVLul69Km8zb1NCWIse/EN.GkwH4ExlzOzO', 'NULL', 'NULL', NULL, '16673724-9', '1987-03-18', '2018-01-02', '43-2458557', '8557', 46, 8, 15, 9, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(215, 'CARLOS ALBERTO', 'TRANAMIL CASTRO', 'carlos.tranamil@sii.cl', '$2y$10$WutAPMdJ87OLD7VRKEpeierjbR0YAfM9V7FT2WNlka36gwb8uSR/G', 'NULL', 'NULL', NULL, '12537803-K', '1968-10-18', '2013-08-05', '43-2458513', '8513', 46, 8, 13, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(216, 'EVELYN PRISCILLA', 'TRONCOSO GONZALEZ', 'evelyn.troncoso@sii.cl', '$2y$10$boAArPjAyuPIT5vzgVpmLOJ8m2RHGKXGAgkPrLCvFwy9x1Uttv7LS', 'NULL', 'NULL', NULL, '17211742-2', '1989-05-18', '2008-11-24', '43-2458539', '8539', 46, 8, 2, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(217, 'LUIS OSVALDO DEL CAR', 'VALDERRAMA CONTRERAS', 'lvalderrama@sii.cl', '$2y$10$O9HFMgWw4795/3pFuHKkiuqXRjhN6u67OQowO0S5HpMcnN9Ptcclq', 'NULL', 'NULL', NULL, '9307811-K', '1964-04-14', '1995-01-01', '43-2458525', '8525', 46, 8, 15, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(218, 'FELIPE ANTONIO', 'VALDES VELASQUEZ', 'fvaldes@sii.cl', '$2y$10$lG9WdylxaJP09BuTjEadl.nc2nPzla.xXeJ2EiONvqQL9/McMx6sm', 'NULL', 'NULL', NULL, '10741793-1', '1968-09-28', '2002-01-21', '43-2458554', '8554', 46, 8, 13, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(219, 'JIMENA LORETO', 'VENEGAS DIAZ', 'jimena.venegas@sii.cl', '$2y$10$ig.Qwij0i09aX.4mzVN8ou15j24DPaxpxNq5VybbNg1yffdeQqAte', 'NULL', 'NULL', NULL, '15207767-K', '1983-01-29', '2012-06-14', '43-2458537', '8537', 46, 8, 2, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(220, 'EDUARDO', 'CONCHA PEÑA', 'eaconcha@sii.cl', '$2y$10$H4hNJu9P/oIiYvZlaDJ9aObSWxHuTx2sH8EpMWJO/W1dhmRvHENoS', 'NULL', 'NULL', NULL, '11684760-4', '1970-09-22', '1999-02-01', '41-3115254', '5254', 48, 8, 99, 5, 6, 10, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(221, 'SONIA ELIZABETH', 'LOBOS PEDRERO', 'sonia.lobos@sii.cl', '$2y$10$ZSyTjrY29nrVVA4P95AQSewJ4pIz0w5ypkssf2nS578csetoQjuBy', 'NULL', 'NULL', NULL, '11156995-9', '1967-10-15', '2007-10-01', '41-3115252', '5252', 48, 8, 99, 1, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(222, 'SONIA VIVIANA', 'MEDINA HERRERA', 'smedina@sii.cl', '$2y$10$SBjE9.dDDEDLqNVy71L.0uEhEW2DNek2.FfQy10qK1dy6sB1ifuuW', 'NULL', 'NULL', NULL, '8857881-3', '1960-12-03', '1992-09-01', '41-3115251', '5251', 48, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(223, 'PABLO GABRIEL', 'MELLADO MONSALVEZ', 'pablo.mellado@sii.cl', '$2y$10$kKnrS/m45TJZ.JE0wFyWC.27TyncvEVb35iczn/fWzTdcKtBX38Yu', 'NULL', 'NULL', NULL, '18543175-4', '1993-09-24', '2015-09-21', '41-3115255', '5255', 48, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(224, 'MAURICIO ANDRES', 'MUNOZ MUNOZ', 'mauricio.munoz@sii.cl', '$2y$10$J3JIf8thLixTvqM3SzAzFOStJFqlrDQViqLRUAZwdmsq7RebxfNt6', 'NULL', 'NULL', NULL, '17913082-3', '1992-03-06', '2019-02-01', '41-3115255', '5255', 48, 8, 99, 6, 16, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(225, 'RICARDO JOSE', 'SANDOVAL AVELLO', 'rsandoval.externo@sii.cl', '$2y$10$peoPS6A.RXVk83103E7r2eC6871kpwLfsE5NOTv3lpstFZmknmPum', 'NULL', 'NULL', NULL, '13844642-5', '1980-09-11', '2019-10-28', '41-3115214', '5214', 48, 8, 99, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(226, 'SUSANA', 'TORRES HERRERA', 'storres@sii.cl', '$2y$10$tT7l4eS/XAKdZEZ72hKd3.NCWSYC.QfQhxacZmyZswRrE46Jxbpt2', 'NULL', 'NULL', NULL, '11778927-6', '1971-03-28', '1997-06-01', '41-3115253', '5253', 48, 8, 99, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(227, 'MAGDALENA DEL CARMEN', 'URIBE MEDINA', 'mcuribe@sii.cl', '$2y$10$0ezRFGukm0E1pHC5.N7G7eFP0xTaZZPi5VSFmsbB8eUdQx8Nh04RK', 'NULL', 'NULL', NULL, '13803252-3', '1980-02-21', '2000-02-01', '41-3115251', '5251', 48, 8, 99, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(228, 'MARIA LUISA', 'ANTINAO CURILAF', 'mantinao@sii.cl', '$2y$10$AcxL8kfYZK.PKZgflVFQcOg1E/YxMpZ7gxSa6LxWJCD2EiCt3PR8y', 'NULL', 'NULL', NULL, '9343627-K', '1959-02-14', '1994-11-01', '41-2566640', '6640', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(229, 'MAURICIO', 'AQUEVEQUE BAÑADOS', 'mdaqueve@sii.cl', '$2y$10$hkZXDJcANJOKc7/3Tl4eGO6/URsWJP.evTIfEyIZSbmUc4OaLvpZu', 'NULL', 'NULL', NULL, '12696401-3', '1974-04-03', '2000-01-01', '41-2566642', '6642', 50, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(230, 'JOHN ANTONIO', 'CHACANO REVECO', 'john.chacano@sii.cl', '$2y$10$ZyMZAxkpD9Bfiw/E3EMskOeOG2OXknr2eZg/ogoF8FCCN6eWLV0uO', 'NULL', 'NULL', NULL, '15954824-4', '1984-11-16', '2015-03-01', '41-2566648', '6648', 50, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(231, 'VIVIANA A.', 'CONEJEROS ANATIVIA', 'vconejer@sii.cl', '$2y$10$/mb8jRpq93k8mklCgvHPqOkTCo/t9lroxEJLq.TE/WzQBrPGIt1ke', 'NULL', 'NULL', NULL, '10049386-1', '1971-06-30', '1993-01-01', '41-2566638', '6638', 50, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(232, 'FABIAN ERNESTO', 'DIAZ CAMPOS', 'fediaz@sii.cl', '$2y$10$us9I4rQdjSzvmPRJvGTuwO41jjRJiIpHATPZVPTkpuzdHF/w371/a', 'NULL', 'NULL', NULL, '9165698-1', '1974-12-18', '2002-01-09', '41-2566639', '6639', 50, 8, 99, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(233, 'CARLOS ENRIQUE', 'DIAZ LAGOS', 'cediaz@sii.cl', '$2y$10$7Xpx0gmfir.oFBit/7kZVuT9/nVBN1N2ww61FFGftPRVHxqju9Uo2', 'NULL', 'NULL', NULL, '11583707-9', '1970-06-10', '2002-01-14', '41-2566636', '6636', 50, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(234, 'RODRIGO', 'FERNANDEZ RAMOS', 'rfernand@sii.cl', '$2y$10$W5lwH1qDFIGRQWwrEvGXdu8LGkvLhEs6Hta6JbQWjYNjraouJfJV.', 'NULL', 'NULL', NULL, '12304135-6', '1972-11-08', '1998-09-21', '41-2566605', '6605', 50, 8, 99, 4, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(235, 'CYNTHIA EDITH', 'FUENTEALBA RODRIGUEZ', 'cynthia.fuentealba@sii.cl', '$2y$10$i4rKDMADtwCeSVHs3ZwJiemHucmd5QMbrr7zaI.M3FLD2eqqgflr6', 'NULL', 'NULL', NULL, '15928293-7', '1984-09-27', '2016-07-28', '41-2566634', '6634', 50, 8, 1, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(236, 'DAVID BERNARDO', 'GALLARDO PAREDES', 'david.gallardo@sii.cl', '$2y$10$/XPCoU4oZ7Jkr2IWbcpSvOT9CpS2LOv.3EqfUtpGqfWI8dewuz3oG', 'NULL', 'NULL', NULL, '14044127-9', '1981-02-19', '2008-08-04', '41-2566635', '6635', 50, 8, 1, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(237, 'EDUARDO CARLO', 'GALLEGOS MIGUEL', 'eduardo.gallegos@sii.cl', '$2y$10$ih2b89jm3/GU0UrKZkTS3eyqyGDiR1WgOMmz28l3YXy7Y5ywOAKW2', 'NULL', 'NULL', NULL, '13306162-2', '1977-03-11', '2018-04-23', '41-2566646', '6646', 50, 8, 99, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(238, 'VICTOR HUGO', 'GOMEZ CONTRERAS', 'victor.gomez@sii.cl', '$2y$10$vamS0R/w4SassbPeY7KRvey.9N9pjTLMVfQJOEqDidOxTC4tWzsJW', 'NULL', 'NULL', NULL, '13237482-1', '1977-03-25', '2009-03-01', '41-2566643', '6643', 50, 8, 1, 3, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(239, 'INGRID VALESKA', 'GOMEZ CRUZ', 'ingrid.gomez@sii.cl', '$2y$10$Ifa3ny/atv3twKfG8TkkLOXrJn4slw8/dTxA4irJ3m4.k7sNuYLNW', 'NULL', 'NULL', NULL, '16490128-9', '1986-12-15', '2015-05-18', '41-2566634', '6634', 50, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(240, 'DANIELA', 'GUAJARDO ACUNA', 'daniela.guajardo@sii.cl', '$2y$10$4QCOUXPfigSr3wH0bBbGb.iuEtGc0vzLVFmnSkLGyUHFeDC9O.lBe', 'NULL', 'NULL', NULL, '10588145-2', '1978-01-18', '2003-12-01', '41-2566637', '6637', 50, 8, 1, 3, 8, 30, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(241, 'ROBERTO PATRICIO', 'LAGOS REYES', 'rlagos@sii.cl', '$2y$10$XG88l2uJrSVYVg7mkrskruDGR.R0EQZEH4QpOSTBkQQyjb4gMJbQW', 'NULL', 'NULL', NULL, '8312999-9', '1957-12-09', '1987-03-01', '41-2566633', '6633', 50, 8, 99, 9, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(242, 'OSCAR ABRAHAM', 'MARDONES VASQUEZ', 'oscar.mardones@sii.cl', '$2y$10$ZVWuKluRMt.W9yVnHH.gxubGWcOhj3d5r3tlyPI2KXblxGJlTL3Uq', 'NULL', 'NULL', NULL, '12975116-9', '1976-11-19', '2017-09-27', '41-2566647', '6647', 50, 8, 99, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(243, 'MARIA VERONICA', 'MELLA SANHUEZA', 'maria.mella@sii.cl', '$2y$10$MVuN85G67hzgrrKvXnbMneB5fW1LlPMb/NmpFhMTstP0Pm0RZ5OdO', 'NULL', 'NULL', NULL, '10341439-3', '1966-01-13', '2015-01-05', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(244, 'SANTIAGO ENRIQUE', 'MELLADO VARELA', 'santiago.mellado@sii.cl', '$2y$10$Q44JBR0D0DZ3gtDljWLU0ujh7kxL8LbHLRwOTtWZOVrvc2ZQQsl16', 'NULL', 'NULL', NULL, '10058728-9', '1966-07-05', '2008-02-04', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(245, 'VIVIANA ANDREA', 'MONROY VALDERRAMA', 'viviana.monroy@sii.cl', '$2y$10$ZEVp.3BCdng82hUpxrlUvOjjFm8/MYtxBLqbvQd6oV3c0.LKIfigu', 'NULL', 'NULL', NULL, '13107757-2', '1976-11-21', '2014-12-01', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(246, 'ROBERT FRANCIS', 'PARRA DOSQUE', 'robert.parra@sii.cl', '$2y$10$9rMkGtJGYQUrOxS.q1gA6eK2xtQBrk3DirhtnCiBnORb025EwEPRa', 'NULL', 'NULL', NULL, '12002693-3', '1972-05-10', '2007-09-26', '41-2566641', '6641', 50, 8, 1, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(247, 'PAULINA ANDREA', 'PRADENA GARDRAT', 'ppradena@sii.cl', '$2y$10$PuTtzjgqtoT9JYwQrmSWbO0dFFq40RgqBfmoexT7iDfMiS7V7p7p2', 'NULL', 'NULL', NULL, '12918071-4', '1975-06-29', '2001-02-12', '41-2566636', '6636', 50, 8, 99, 5, 5, 8, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(248, 'GIPPSI NICOLE', 'PUENTES SANDOVAL', 'gippsi.puentes@sii.cl', '$2y$10$D.P5OHtS0ZuKdchAkTA/ve4VmbVaErDFMbkY0LblolgTt61X4B/OS', 'NULL', 'NULL', NULL, '16767899-8', '1988-01-20', '2014-01-15', '41-2566649', '99', 50, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(249, 'HUGO EDUARDO', 'RIVERA MUÑOZ', 'herivera@sii.cl', '$2y$10$/2UWUGFSxBxPqweWuqmEtuT5yjNrFFzNjTkdBoPe91wh4xdSvmQ5O', 'NULL', 'NULL', NULL, '10021693-0', '1966-12-28', '1994-10-17', '41-2566640', '6640', 50, 8, 99, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(250, 'ROBERTO', 'ROJAS RETAMAL', 'roberto.rojas@sii.cl', '$2y$10$LkUPm0zUf7SY.Jplal9viuer9BlGDW/RU6EbvFhFGDNL.fSLzcZLC', 'NULL', 'NULL', NULL, '12319242-7', '1973-07-04', '2002-08-01', '41-2566606', '6606', 50, 8, 99, 4, 3, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(251, 'FREDDY HERNAN', 'SALDIAS CERDA', 'freddy.saldias@sii.cl', '$2y$10$rfWsDEOuLKERWy/KUVbVIu1TKLnQHT2Wi2vazz5v2KQZXTVftlWZa', 'NULL', 'NULL', NULL, '9028254-9', '1963-07-19', '2014-01-01', '41-2566648', '6648', 50, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(252, 'RAUL', 'SANZANA ZAMBRANO', 'rsanzana@sii.cl', '$2y$10$rAvMgo534vgbrV5mh/rf/.cGRMOniTcOV70Fm2VBjG.YKS.02BhBK', 'NULL', 'NULL', NULL, '11237865-0', '1968-02-21', '1994-11-01', '41-2566646', '6646', 50, 8, 99, 8, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(253, 'CARLOS ALBERTO', 'ALBORNOZ MONTES', 'carlos.albornoz@sii.cl', '$2y$10$uUBU1C8gcvipxnuVKmIx7.anoH/zuZWOg5AFZ2mRCJkClmbfiA1Ta', 'NULL', 'NULL', NULL, '14533047-5', '1976-08-21', '2015-02-24', '41-3115246', '5246', 112, 8, 99, 4, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(254, 'EDUARDO ANDRES', 'BARAHONA LOPEZ', 'eduardo.barahona@sii.cl', '$2y$10$wytgvnt.cwjt1FKnqXDG2...AY7PbXx/6uiSByT760zWFNiKFO4zS', 'NULL', 'NULL', NULL, '15184436-7', '1983-01-07', '2015-09-21', '41-3115247', '5247', 112, 8, 99, 4, 7, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(255, 'HAYDEE DEL CARMEN', 'BURGOS RIQUELME', 'haydee.burgos@sii.cl', '$2y$10$Qzm96oagQh1IP1MmVnXLvuA7e3YbgLIZc0olxgzS8MZuChXyt9nJm', 'NULL', 'NULL', NULL, '7147360-0', '1956-06-03', '1976-11-01', '41-3115200', '5200', 112, 8, 99, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(256, 'FELIPE RODRIGO', 'CERDA RODRIGUEZ', 'felipe.cerda@sii.cl', '$2y$10$RT6p7IlJhb/bkfM66Hyx0eOJWXrFEAAeGw628BQDinCiwSKBRejgq', 'NULL', 'NULL', NULL, '15179648-6', '1983-04-25', '2012-05-04', '41-3115212', '5212', 112, 8, 99, 4, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(257, 'JOSE MIGUEL', 'CONTRERAS ARELLANO', 'jcontrer@sii.cl', '$2y$10$UPZikryNeuoYUW.XWGgcoe5FnKv.OwdqTGjpy3DyfQDtIT9BljW8S', 'NULL', 'NULL', NULL, '7726051-K', '1955-10-20', '1983-10-10', '41-3115149', '5149', 112, 8, 99, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(258, 'JOSE MANUEL', 'CORVALAN DURAN', 'jose.corvalan@sii.cl', '$2y$10$ta7cJVatpyiapHXHuAUk1eQ9ozvHEwbAi59HEKtuWDRh7IS1QX37.', 'NULL', 'NULL', NULL, '15475732-5', '1983-01-02', '2015-09-21', '41-3115248', '5248', 112, 8, 99, 5, 2, 2, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(259, 'GUSTAVO ALEXIS', 'GUTIERREZ GONZALEZ', 'gustavo.gutierrez@sii.cl', '$2y$10$UYP23RLhC62LKJfpullE9uHdFsoIMN3eEGR15H3UjLLqr9pTt/p9q', 'NULL', 'NULL', NULL, '13104050-4', '1976-08-06', '2008-05-19', '41-3115207', '5207', 112, 8, 99, 4, 5, 99, 1, 1, 'AE4QuGaFIElQErgz0agF8EYqo09TZ8AdEv2eUMrIxCdju3nUPrwMiTKerD8G', NULL, '2023-07-26 03:19:17'),
(260, 'LORENA EDITH', 'MUÑOZ HERNANDEZ', 'lorena.munozh@sii.cl', '$2y$10$sYDj2qP/Ic/EFNCrtNnhUe.B9.eORjIGrKkCzvhwtucYGbEP5fpTm', 'NULL', 'NULL', NULL, '15905952-9', '1984-10-16', '2011-04-01', '41-3115213', '5213', 112, 8, 99, 4, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(261, 'MARY PILAR ALEJANDRA', 'PINTO JAEN', 'mary.pinto@sii.cl', '$2y$10$epG7IGDQ.WuKnFYtnA.8UehjyCAFvlsFuxdl.QaEi4EoCdjiu9o9y', 'NULL', 'NULL', NULL, '13507921-9', '1978-10-23', '2011-04-01', '41-3115272', '5272', 112, 8, 99, 4, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(262, 'FERNANDO IGNACIO', 'RAMOS ASENJO', 'fernando.ramos@sii.cl', '$2y$10$21ln6/oj/nM7D/gTCKG9KOZIYCgQHWFS1yB8aS46t/yJlsphqRK6C', 'NULL', 'NULL', NULL, '13725177-9', '1979-09-27', '2009-12-14', '41-3115210', '5210', 112, 8, 99, 4, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(263, 'LILIANA ISABEL', 'RIQUELME TOLEDO', 'liliana.riquelme@sii.cl', '$2y$10$fB1806bJ2vTwuAW03PGXVeUD3oXpwy1XZiVVMleq7h/FBQklG6giK', 'NULL', 'NULL', NULL, '13311976-0', '1977-10-09', '2006-02-15', '41-3115209', '5209', 112, 8, 99, 4, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(264, 'GASTON ALEXIS', 'RIVERA ESPINOZA', 'grivera@sii.cl', '$2y$10$aspNEmR9hA4LYHAizScbO.TvBnxnirEHnrVAbciobxEJachnZ/aui', 'NULL', 'NULL', NULL, '9179342-3', '1963-04-06', '2001-06-18', '41-3115201', '5201', 112, 8, 99, 4, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(265, 'ISABEL', 'SEPULVEDA BELLO', 'isabel.sepulveda@sii.cl', '$2y$10$2G/k3VlhjUHkQNQfEZQFgOC4sEDXMyVplPBqBYoF/WssFRxs70sp2', 'NULL', 'NULL', NULL, '11899585-6', '1971-02-08', '2005-04-15', '41-3115204', '5204', 112, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(266, 'CAMILA ANDREA', 'SEPULVEDA IRARRAZABAL', 'camila.sepulvedai@sii.cl', '$2y$10$t7uHoflSJgdPdIr8NzKCi.TpCzfLqRJ6ZtsWboFTqnVhhufNkGwUW', 'NULL', 'NULL', NULL, '17613348-1', '1990-12-11', '2022-09-01', '41-3115276', '5276', 112, 8, 99, 4, 7, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(267, 'PRISCILA ANDREA', 'VILLOUTA PEREZ', 'priscila.villouta@sii.cl', '$2y$10$AROYfFRBLTdpOfJxGovgz.voq7TYn2AfUv9QDuzj7TuZfhyVQDlbi', 'NULL', 'NULL', NULL, '14607641-6', '1978-05-12', '2009-06-12', '41-3115211', '5211', 112, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(268, 'JESSICA MERCEDES', 'ANDRADE CARES', 'jandrade@sii.cl', '$2y$10$NfVYYC9HZ68gxTEu7pGXbuuQaHKnpDkn7trEvn9C1/t48rpM6/LGe', 'NULL', 'NULL', NULL, '14516011-1', '1974-12-21', '2001-09-04', '41-3115191', '5191', 110, 8, 99, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(269, 'PAULA', 'ARANCIBIA PARODI', 'paaranci@sii.cl', '$2y$10$a5sB/tw36K4AAYXPYgQB3ebYYTP70So6G9FdkP0tQqJ49waNxeiU6', 'NULL', 'NULL', NULL, '11624870-0', '1970-01-28', '1999-09-09', '41-3115199', '5199', 110, 8, 99, 4, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(270, 'NANCY PATRICIA', 'ARRIAGADA CHAVARRIA', 'narriaga@sii.cl', '$2y$10$SxGpKg4IbWeAVOO3b0YWzu.XB/oHmX0TFp4dOdJ0f/beEd900wSAe', 'NULL', 'NULL', NULL, '9221066-9', '1962-07-30', '1992-02-17', '41-3115153', '5153', 110, 8, 99, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(271, 'CRISTINA', 'BENAVENTE GUTIERREZ', 'cbenaven@sii.cl', '$2y$10$tJBwhYR7tiSu5JHpEwU93.tXmjXpCUiSn2EhwaSujMuLTbaEBWeC2', 'NULL', 'NULL', NULL, '7886117-7', '1955-02-20', '1995-01-01', '41-3115193', '5193', 110, 8, 99, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(272, 'SANDRA', 'BRAVO LOPEZ', 'sbravo@sii.cl', '$2y$10$yBNpmIz/p6gEqsoeQhXqPOeHmXbTNNviv37IdhTZj9kGMic3TmcoS', 'NULL', 'NULL', NULL, '8465530-9', '1968-03-31', '1993-07-12', '41-3115196', '5196', 110, 8, 99, 5, 2, 6, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(273, 'RODRIGO ARISTIDES', 'CABRERA MIRALLES', 'rodrigo.cabrera@sii.cl', '$2y$10$REXrkw5zVSLI4yZv4iJc1uvX7ywLtw/F3havaBwrrzSOyT8dLTo7S', 'NULL', 'NULL', NULL, '15180524-8', '1982-02-03', '2006-03-20', '41-3115218', '5218', 110, 8, 99, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(274, 'MONICA SILVIA', 'LABRIN GODOY', 'mlabrin@sii.cl', '$2y$10$QM7JJCl6KQa0rc0jMJkk5.msQ/ROyzA/KDGnL47k76seNJJboLJQi', 'NULL', 'NULL', NULL, '9128583-5', '1961-02-08', '1985-06-17', '41-3115197', '5197', 110, 8, 99, 3, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(275, 'PAULINA BEATRIZ', 'MELLADO LARA', 'pmellado@sii.cl', '$2y$10$uRzb5O//vidMtJNxmRvT2eINavEnsXUjrkT0.h0Qmr91/.oqxCSFm', 'NULL', 'NULL', NULL, '10964679-2', '1972-09-03', '2001-02-12', '41-3115244', '5244', 110, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(276, 'CARLOS EDUARDO', 'QUEZADA CRUZ', 'carlos.quezada@sii.cl', '$2y$10$t/B63lG6QRNwR9R4xL3Thu2xCXhwQ2kFpzyqmPGQhBuT/qSThHnI2', 'NULL', 'NULL', NULL, '16138761-4', '1985-05-17', '2015-02-16', '41-3115192', '5192', 110, 8, 99, 4, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(277, 'OLGA OLIMPIA', 'RODRIGUEZ RAMIREZ', 'orodrigu@sii.cl', '$2y$10$bpyM3VT4ohTubllvHghizO6CkgKVbQMHURhH2BGARRoGOPomiWcY.', 'NULL', 'NULL', NULL, '9264286-0', '1964-07-23', '1992-02-17', '41-3115198', '5198', 110, 8, 99, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(278, 'RICARDO FELIPE', 'ROJAS GARRIDO', 'ricardo.rojas@sii.cl', '$2y$10$rQZ5jJNErbaMLCBsYUp3i.463HC7b.RnlA/oxnZs7oCidPvTVTaaW', 'NULL', 'NULL', NULL, '17496959-0', '1990-08-12', '2009-03-18', '41-3115268', '5268', 110, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(279, 'ANDRES EDUARDO', 'TRABAZO BURNAS', 'andres.trabazo@sii.cl', '$2y$10$3l8LxQhQP.m9pE6sa5K.ce6StFJTmirJFJdrzhEVDTaPg/XAZbQYO', 'NULL', 'NULL', NULL, '10273836-5', '1978-09-06', '2012-05-02', '41-3115202', '5202', 110, 8, 99, 4, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(280, 'HUGO', 'BRITO MELGAREJO', 'hugo.brito@sii.cl', '$2y$10$gf2VaWFrCchstNq.6K9aC.yb/TFMIPONGGjXoXktdzL6yG5.EXetG', 'NULL', 'NULL', NULL, '13311693-1', '1977-07-28', '2003-12-01', '63-2362201', '2201', 101, 13, 99, 5, 12, 39, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(281, 'MARCIA JEANNETT', 'MUÑOZ MANSILLA', 'mjmunoz@sii.cl', '$2y$10$m76PXd21vbJgM48T2f.lLeUlG2vg9cEbltOjb8F7zsmWThTaHgWg.', 'NULL', 'NULL', NULL, '8699117-9', '1963-12-25', '1992-02-17', '63-2362250', '2250', 101, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(282, 'MIRTA YANETTE', 'PARDO ROSAS', 'mpardo@sii.cl', '$2y$10$VZTuULH/HQEzA7SeUEKPRuC7wkpUDLCBw16mZfRmtmKYNjcP5wMSS', 'NULL', 'NULL', NULL, '10132484-2', '1965-01-02', '1991-04-15', '63-2362211', '2211', 101, 13, 99, 2, 11, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(283, 'GABRIELA PAZ', 'ARANEDA REAL', 'gabriela.araneda@sii.cl', '$2y$10$bW9R8XhBHVXYMApu8SKyu.Ntkh/eNIPPW6NjHpbh5e11n.439rFMS', 'NULL', 'NULL', NULL, '14152331-7', '1981-08-10', '2018-05-02', '63-2362208', '2208', 103, 13, 99, 4, 9, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(284, 'JUAN ESTEBAN', 'AVILA MORAGA', 'juan.avila@sii.cl', '$2y$10$kB9skW9HGZefs2HB9NpuHO/CO4sZdOGAT0K/IcLgL80HI11OauT.a', 'NULL', 'NULL', NULL, '11426220-K', '1969-08-31', '2018-08-27', '63-2362235', '2235', 103, 13, 99, 6, 16, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(285, 'RICHARD ANDRES', 'BELMAR MALDONADO', 'rbelmar@sii.cl', '$2y$10$14FnlTrNiLQe8rAYRIxDceOMzJrUeQrVeUSO.XxWKF0a1nGO30vIq', 'NULL', 'NULL', NULL, '11324248-5', '1968-09-03', '1990-01-02', '63-2362218', '2218', 103, 13, 99, 1, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(286, 'MARIA PAZ ELIANA', 'GAJARDO ALADRO', 'maria.gajardo@sii.cl', '$2y$10$gDAQP3m85akjgy4NkUjlg.trksLep0S.xSiTUoffuRqbS0vBN42D2', 'NULL', 'NULL', NULL, '11558655-6', '1970-05-17', '2015-04-16', '63-2362243', '2243', 103, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(287, 'SYLVIA PAOLA', 'JEREZ ALARCON', 'pjerez@sii.cl', '$2y$10$20uFbG/7rqfE2Y8pPeFLWuqiKB6RnSBM1jjW17CpkFfjJAjwYuMCe', 'NULL', 'NULL', NULL, '11426529-2', '1969-11-10', '1994-12-01', '63-2362220', '2220', 103, 13, 99, 7, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(288, 'LORENA PAZ', 'MEDINA MARTINEZ', 'lpmedina@sii.cl', '$2y$10$XlcXs0PsJekvI3n2NrSfoODawFOe6zMlyfEUKx1piA1zpQ5BmDHSq', 'NULL', 'NULL', NULL, '11532898-0', '1970-12-02', '2001-01-31', '63-2362202', '2202', 103, 13, 99, 5, 3, 45, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(289, 'MIRIAM DEL CARMEN', 'OJEDA PERALTA', 'mojeda@sii.cl', '$2y$10$qeuMQyIvTKs8cSY1bvW6uOHbTodeGZY1MZDRftwLSTM4i2PUP0dAG', 'NULL', 'NULL', NULL, '9174698-0', '1962-09-29', '1984-01-01', '63-2362208', '2208', 103, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(290, 'LORENA DEL CARMEN', 'OLIVERA URIBE', 'lorena.olivera@sii.cl', '$2y$10$kLjHsno4pJVzcRR06tJvI.I9J3e4OXxth9ezVufRp0ycXYV7YwdVy', 'NULL', 'NULL', NULL, '14495374-6', '1976-12-01', '2018-11-05', '63-2362219', '2219', 103, 13, 99, 4, 9, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(291, 'DIEGO FERNANDO', 'PALMA JARAMILLO', 'diego.palma@sii.cl', '$2y$10$TK/f9vGtf72Y7.aqPuAvUu4VsTclE6u3z0ydIDR03ZPv9tbUTHiP6', 'NULL', 'NULL', NULL, '18174240-2', '1994-01-15', '2015-02-02', '63-2362221', '2221', 103, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(292, 'PABLO ISAAC', 'PENA CASTILLO', 'pablo.pena@sii.cl', '$2y$10$Bq044kww7k5iafQ9GTaXsuPq7CoOJNwKlG6kfZKizJrxA90nBHR5e', 'NULL', 'NULL', NULL, '18133010-4', '1992-04-14', '2020-02-03', '63-2362235', '2235', 103, 13, 99, 6, 16, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(293, 'VICTOR EDUARDO', 'ALARCON OSSES', 'valarcon@sii.cl', '$2y$10$5wDqs0wEtajPC.FRNGz4IuD/hbT4wJYSgfmhsBc1Q9cISsr2YexuG', 'NULL', 'NULL', NULL, '8970096-5', '1966-12-07', '1993-08-02', '63-2362262', '2262', 105, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(294, 'DEBORA NOEMI', 'ARIAS SANTIS', 'debora.arias@sii.cl', '$2y$10$SzjR8CAoWVYURkAD2h8HRe1u5MGpHebYDJiHHojmVha2fRF5yV/bi', 'NULL', 'NULL', NULL, '13709810-5', '1979-02-28', '2011-06-22', '63-2362267', '2267', 105, 13, 99, 3, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(295, 'IRVING LEANDRO', 'BAHAMONDES LILLO', 'ibahamon@sii.cl', '$2y$10$LyvRn42pjzG3Yj8enU9NU.dAgL9e.gEAL.R2Gyn4jTOHy3WMsVcwe', 'NULL', 'NULL', NULL, '10509406-K', '1968-01-30', '1998-09-21', '63-2362205', '2205', 105, 13, 99, 5, 3, 41, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(296, 'EDGARDO JOB', 'BREVIS GATICA', 'ebrevis@sii.cl', '$2y$10$CNYRhKXAD4IibB9vSq1ExOhoxyF0up4DK.IOVwH/xBIrsbFNCeahe', 'NULL', 'NULL', NULL, '10899012-0', '1967-08-31', '1992-04-01', '63-2362233', '2233', 105, 13, 99, 3, 7, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(297, 'MARIA JOSE', 'CARRILLO VASQUEZ', 'maria.carrillo@sii.cl', '$2y$10$OiAfv9h282Wo4YGXCNP3ce.tKB7BkAkwbX1uBLMe85FlCv02ldrsy', 'NULL', 'NULL', NULL, '9702176-7', '1975-08-12', '2007-09-26', '63-2362237', '2237', 105, 13, 99, 3, 8, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(298, 'FREDY ALEJANDRO', 'DELGADO AEDO', 'fdelgado@sii.cl', '$2y$10$8a8Ml5hOZaRMyKJtpf/oJucoS6qMsz3rfYKfvWKaEZZEj1fGkqOA.', 'NULL', 'NULL', NULL, '9195631-4', '1968-12-21', '1988-09-26', '63-2362268', '2268', 105, 13, 99, 1, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(299, 'SANDRA YOLANDA', 'DIAZ FERNANDEZ', 'sydiaz@sii.cl', '$2y$10$XDD5AxDD8zd/ATKYTFUcxOF9GsuXmft/4O.OkLUEZEzUbumcBCrrS', 'NULL', 'NULL', NULL, '8505594-1', '1973-03-05', '1993-07-12', '63-2362215', '2215', 105, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(300, 'ALDO DAVID', 'FLORES CARCAMO', 'aflores@sii.cl', '$2y$10$7mQfqezNpygpFJKwqKkbEeHA1qjeXQNhc0k/UE41qfgNfNEFBFzou', 'NULL', 'NULL', NULL, '7944027-2', '1960-06-17', '1989-07-17', '63-2362251', '2251', 105, 13, 99, 4, 4, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(301, 'TATIANA MABEL', 'GONZALEZ BELMAR', 'tatiana.gonzalez@sii.cl', '$2y$10$vefrrppm27zSUdu4ZTR.iOIEVqmU4WR.bfmmNEE5RPB.QrtJ4SqvW', 'NULL', 'NULL', NULL, '14037989-1', '1981-05-01', '2017-09-29', '63-2362278', '2278', 105, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(302, 'VIVIANA ANDREA', 'GONZALEZ VASQUEZ', 'vagonzalez@sii.cl', '$2y$10$ai3fd4x50MTHe9RKHxE5zOOqHzCjrxk4cOyabqh6l/eJa2awFKzw2', 'NULL', 'NULL', NULL, '13319578-5', '1977-07-27', '2002-01-21', '63-2362234', '2234', 105, 13, 99, 3, 7, 51, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(303, 'SANDRO MAURICIO', 'KETTERER BLU', 'skettere@sii.cl', '$2y$10$GVClsEDF9fWpDIoavcmb2.Xy1OZFnPmKmADhVhqZKKKuIGdgO977y', 'NULL', 'NULL', NULL, '10246069-3', '1968-03-14', '1993-01-19', '63-2362281', '2281', 105, 13, 99, 1, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(304, 'LETICIA VALESKA', 'LEFNO MANQUEL', 'leticia.lefno@sii.cl', '$2y$10$QcUQjw4WdmiBuYVVuU9T0.VUYmuucdYDLNXSLoaXqNQCP2K2uAlpG', 'NULL', 'NULL', NULL, '18522243-8', '1993-08-05', '2017-09-29', '63-2362270', '2270', 105, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(305, 'SABINA', 'LIGNAI ANTIMILLA', 'llignai@sii.cl', '$2y$10$7FqHYLMTg2gMZtihiNMw9OaqfH/9luuevhXUkg3qwuUGYQ/TjaPTC', 'NULL', 'NULL', NULL, '8940849-0', '1958-11-02', '2001-01-03', '63-2362238', '2238', 105, 13, 99, 2, 13, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(306, 'MIGUEL ANDRES', 'LIZAMA ROJAS', 'mlizama@sii.cl', '$2y$10$/qXPzjcALOwrACaCVrAtcuy6lXYZk7ztEczApXY0B066kr13vHJxe', 'NULL', 'NULL', NULL, '12748117-2', '1975-05-19', '2000-01-01', '63-2362261', '2261', 105, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(307, 'FERNANDO SEGUNDO', 'MATAMALA ÑANCO', 'fmatamal@sii.cl', '$2y$10$4BD6x6E/hBi9ULBIgFjrq.iq99PXSENQbpNm/MCcY0XEV2oSThfaK', 'NULL', 'NULL', NULL, '9080730-7', '1962-09-29', '1992-02-17', '63-2362212', '2212', 105, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(308, 'PATRICIA YANET', 'MILLAPAN ERICES', 'pmillapa@sii.cl', '$2y$10$gksWgBEvyUvmJiCax3.K1e90qpuT5CzqXQdTYMuC3D8zvEJFic4si', 'NULL', 'NULL', NULL, '10625909-7', '1970-03-02', '1999-02-01', '63-2362253', '2253', 105, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(309, 'EDGARDO ANDRES', 'MUNOZ BETANCOURT', 'edgardo.munoz@sii.cl', '$2y$10$NG7hQJUS40fK.MxYgupiseXr0xXjQ8lbhDXaDGrsxVmN1BVbbTvUq', 'NULL', 'NULL', NULL, '15931533-9', '1986-03-20', '2017-09-29', '63-3951859', '1859', 105, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(310, 'YOBELY WELQUIZ', 'PATIÑO ABURTO', 'ypatino@sii.cl', '$2y$10$P9T/ZdlfT8LsWydsROhSS.74kqULqCehtGPvMUBRj04I6dJ6f3K1K', 'NULL', 'NULL', NULL, '7963557-K', '1960-09-06', '1981-11-01', '63-2362240', '2240', 105, 13, 99, 1, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(311, 'ROXANA GABRIELA', 'PEREZ GAJARDO', 'roxana.perez@sii.cl', '$2y$10$tlnlCFLVAhUdM14aqqFLeekpreTa2Q/vHmHGy.2f5IdclrX1nrCMO', 'NULL', 'NULL', NULL, '17641622-K', '1991-03-18', '2015-11-19', '63-2362276', '2276', 105, 13, 99, 3, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(312, 'ALVARO', 'PEÑA DURAN', 'agpena@sii.cl', '$2y$10$f6ksQuGRyK0nOBqAwx0HXeyxSk3GJHcHeXaBUdNa7Q5jpyCayK80W', 'NULL', 'NULL', NULL, '11499493-6', '1969-01-08', '1994-12-05', '63-2362266', '2266', 105, 13, 99, 3, 5, 50, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(313, 'ALBAN', 'PLUMER BODIN', 'alban.plumer@sii.cl', '$2y$10$kVk.l/t2sqF4UEmgA/AqVu4btNpD2ID472lugq8DRjqLyatKsxNfa', 'NULL', 'NULL', NULL, '10087771-6', '1964-06-11', '2000-01-01', '63-2362236', '2236', 105, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(314, 'MAURICIO ALEJANDRO', 'REY GALLEGOS', 'mauricio.rey@sii.cl', '$2y$10$is1kR874hjHJ5vkJmYop1Oz0S5YQn3ZBw3ECmQAzujabaukBGzfX2', 'NULL', 'NULL', NULL, '13320983-2', '1977-11-07', '2005-11-09', '63-2362240', '2240', 105, 13, 99, 4, 8, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(315, 'PATRICIA PILAR', 'REYES FLORES', 'preyes@sii.cl', '$2y$10$msjqJDmUgZKlrIqKG.LLTOzYBElmFtfu.VZJOze9jnvujyIB/9Vtm', 'NULL', 'NULL', NULL, '8697663-3', '1963-04-01', '1984-02-01', '63-2362269', '2269', 105, 13, 99, 1, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(316, 'DANIEL ABRAHAM', 'SAEZ FLORES', 'daniel.saez@sii.cl', '$2y$10$V8dflZF.UqeoPF29kBHUwe3ytlq2H3TD6vzSX3rc/RVkbmxHgJK5G', 'NULL', 'NULL', NULL, '16040716-6', '1985-01-21', '2010-04-26', '63-2362279', '2279', 105, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(317, 'VERONICA CECILIA', 'SALDIVIA RIVERA', 'vsaldivi@sii.cl', '$2y$10$x4tJMeZTX6TA/D5d0MOyzOSa8DJHqhqJO8QDbk7Zfe0EvnMeseq/S', 'NULL', 'NULL', NULL, '9716037-6', '1965-03-05', '1991-05-13', '63-2362282', '2282', 105, 13, 99, 1, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(318, 'OCTAVIO RAUL', 'SEPULVEDA BECKER', 'osepulve@sii.cl', '$2y$10$YvRAXvtYQ6v0vuzdA8ti..6G9gwzBaql9OMJBUIKCiYi7jyARLW1i', 'NULL', 'NULL', NULL, '6417809-1', '1950-11-21', '1978-07-04', '63-2362249', '2249', 105, 13, 99, 3, 4, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(319, 'RAUL ALEJANDRO', 'SILVA MARDONES', 'raul.silva@sii.cl', '$2y$10$3MTu0Tpe.6CjBiw.NRDurerd1yDg30BsCXNS3DoHW/sJ1oyDM9Oy.', 'NULL', 'NULL', NULL, '15212477-5', '1982-07-19', '2012-06-14', '63-2362238', '2238', 105, 13, 99, 3, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(320, 'MARIBEL MASSIEL', 'SILVA VENEGAS', 'mmsilva@sii.cl', '$2y$10$JeS8HsMJhAXNOoggTTqo3uFsMKiZvzobPWSy5ePbcfUhyNP.y3n62', 'NULL', 'NULL', NULL, '12147286-4', '1968-04-26', '1993-12-16', '63-2362280', '2280', 105, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(321, 'FRANCISCA CRISTINA', 'SOTO VASQUEZ', 'francisca.soto@sii.cl', '$2y$10$lickbszQgljPqwVWI0IZY.BqH58mtLinWnYnVVBu4H6RuQslCEvI2', 'NULL', 'NULL', NULL, '10662839-4', '1976-05-25', '2003-01-15', '63-2362254', '2254', 105, 13, 99, 3, 7, 46, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(322, 'MOISES NOLBERTO', 'VASQUEZ SOLIS', 'moises.vasquez@sii.cl', '$2y$10$WZClN8Pt.Udoedx7z1U3geyGDTfmgmkrrGwjr4Tjn0MtZGfR6vn.S', 'NULL', 'NULL', NULL, '14411985-1', '1979-08-19', '2012-06-14', '63-2362245', '2245', 105, 13, 99, 3, 9, 49, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(323, 'NELSON SABINO', 'VELASQUEZ PADGET', 'nvelasqu@sii.cl', '$2y$10$nxd3.TRblwfYq.KoAcMKp.XwJ6BBIlJBeOgap5dXc4NYqJsJfKaRG', 'NULL', 'NULL', NULL, '8573011-8', '1964-02-08', '1999-02-01', '63-2362255', '2255', 105, 13, 99, 3, 7, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(324, 'DAMARIS PAMELA', 'VERA ROTHEN', 'damaris.vera@sii.cl', '$2y$10$aGciJkW8AjD1kkKcigb07ODcMViVhvdxual78Il2qxR1fYk/V.MPC', 'NULL', 'NULL', NULL, '17200949-2', '1989-06-22', '2015-11-17', '63-2362256', '2256', 105, 13, 99, 3, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(325, 'MONICA ALEJANDRA', 'VERGARA IBAÑEZ', 'mvergara@sii.cl', '$2y$10$685mQ37wCCy3jMw5S7qScu2K/xnw7dGFy8EnEe4chPdhkP.6NeHwC', 'NULL', 'NULL', NULL, '12747858-9', '1975-03-22', '2000-01-01', '63-2362247', '2247', 105, 13, 99, 3, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(326, 'YINA ESTER', 'BARBET CARDENAS', 'ybarbet@sii.cl', '$2y$10$bdCB8hyg0oX3HNa4zrRiIOWpgWeaGXJDNg/7Y6dfln376XsvOzclS', 'NULL', 'NULL', NULL, '7657467-7', '1958-03-25', '1995-11-01', '63-2362214', '2214', 108, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(327, 'NELSON ELIAS', 'CABRERA CUBILLOS', 'nelson.cabrera@sii.cl', '$2y$10$HVm2E02Br8PDa.a1p8BMk.hvePFBGRQ07ltTLepLjKpt/cPPOHw.O', 'NULL', 'NULL', NULL, '14204881-7', '1981-03-31', '2009-05-04', '63-2362204', '2204', 109, 13, 99, 5, 3, 43, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(328, 'SEBASTIAN MARCELO', 'CARDENAS ZAMBRANO', 'sebastian.cardenas@sii.cl', '$2y$10$oltAYTrKQ3L4CSYbZOoxm..0RGNhusH2F.dRM/hd8mbnOfmGt01VW', 'NULL', 'NULL', NULL, '15294828-K', '1983-01-02', '2015-08-31', '63-2362231', '2231', 109, 13, 99, 9, 10, 47, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(329, 'MARIA MARCIA', 'CASTILLO MONJES', 'mmcastil@sii.cl', '$2y$10$iyN/dQgkOeF9nEY4UO8GyOEBmxIL4sJzNBjRX5l.CqWHAqHuYUdni', 'NULL', 'NULL', NULL, '8060602-8', '1959-03-07', '1987-03-16', '63-2362226', '2226', 109, 13, 99, 9, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(330, 'ENRIQUE ALFONSO', 'CAYUÑIR CAÑULEF', 'enrique.cayunir@sii.cl', '$2y$10$scDeY6TBtL0nZYX1pCeuou0sUsw6E5ljKmf2opJlbPpKCzMc7ijQK', 'NULL', 'NULL', NULL, '6468511-2', '1953-07-31', '1984-01-24', '63-2362275', '2275', 109, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(331, 'RAMIRO ENRIQUE', 'CIFUENTES ALVARADO', 'rcifuentes@sii.cl', '$2y$10$4w96eS2OKu/b9Xfh/5d2i.4RKJZ5lFnIwkThg..lGNZz7Ku7y2rwC', 'NULL', 'NULL', NULL, '8628642-4', '1968-06-13', '2009-05-18', '63-2362229', '2229', 109, 13, 99, 9, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(332, 'GISSELLE', 'LEAL ROSAS', 'gleal@sii.cl', '$2y$10$JzQMNjJv6QR3.Qv1q04xFeBbiNDWLjDKu2g5xANCTCpgXXsuYNmsu', 'NULL', 'NULL', NULL, '9779739-0', '1965-11-20', '1997-04-01', '63-2362232', '2232', 109, 13, 99, 9, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(333, 'VERONICA LAURA', 'MARTINEZ SILVA', 'veronica.martinez@sii.cl', '$2y$10$DJ04Jf1Y6lZev0EVZRrOh.k9viC1GefrvSu5IQFNvl7d5a/n2joYK', 'NULL', 'NULL', NULL, '11846607-1', '1971-09-20', '2008-08-18', '63-2362225', '2225', 109, 13, 99, 9, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(334, 'MARION PALOMA', 'MUNOZ MUNOZ', 'marion.munoz@sii.cl', '$2y$10$ysEUQt/fKYjCmQUfW0Iig.0or55xj6bqQDAskmjuv0iCiTwWjO1ky', 'NULL', 'NULL', NULL, '16998196-5', '1988-09-24', '2021-09-20', '63-2362227', '2227', 109, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(335, 'CAMILA DANAE', 'REYES CASANOVA', 'camila.reyes.c@sii.cl', '$2y$10$WbkIvmJP8zYeewnbnrOFxOhPyzUQyBFm8UD8Vk8qViUW.hhflcdZm', 'NULL', 'NULL', NULL, '17511502-1', '1989-11-24', '2018-10-01', '63-2362258', '2258', 109, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(336, 'LUIS ENRIQUE', 'ROSALES GONZALEZ', 'luis.rosales@sii.cl', '$2y$10$QuUaRixHX6YSqq4KYf76DuHVouj12n8P9lhfe6KDYstuyOeNVzqgW', 'NULL', 'NULL', NULL, '10061955-5', '1970-08-04', '2009-05-04', '63-2362228', '2228', 109, 13, 99, 9, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(337, 'JAIME ENRIQUE', 'SANCHEZ RIQUELME', 'jesanchez@sii.cl', '$2y$10$2SBzZc.21k8CnnQqxV5IF.COwR9nxe2Xc/kZF5Ew3pLj911zsPBnW', 'NULL', 'NULL', NULL, '9183202-K', '1962-08-10', '2004-01-01', '63-2362230', '2230', 109, 13, 99, 1, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(338, 'VICTOR HUGO', 'SILVA MANRIQUEZ', 'vsilva@sii.cl', '$2y$10$20CR9X7LdTUBAIOwMZWUHexZL7WUkRt8SdKAK4FT1dQig4CI3hYCC', 'NULL', 'NULL', NULL, '7776233-7', '1957-04-12', '1983-10-01', '63-2362227', '2227', 109, 13, 99, 9, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(339, 'HERNAN RODRIGO', 'TAPIA HERRERA', 'hrtapia@sii.cl', '$2y$10$PUGyhtbeoL/WD1OpYeY0meMvhkFWB/Q7JkcdSsPOhtEdSK53RzgWi', 'NULL', 'NULL', NULL, '9333782-4', '1962-09-15', '1982-11-04', '63-3953389', '3389', 109, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(340, 'MARISOL AURORA', 'ALVARADO LORCA', 'malvarad@sii.cl', '$2y$10$cl8dBJDNVcKOV7JozUb2ruQm7BNiQHa5PByn0MbYrEE6DstWgL27m', 'NULL', 'NULL', NULL, '8971285-8', '1961-06-19', '1992-04-20', '63-2362217', '2217', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(341, 'NATALIA ANDREA', 'ANDRADE PRADENAS', 'nandrade.externo@sii.cl', '$2y$10$IUh.Ei32NeK33mdM/EjMw.nAVJ9jYLB7E9ApdOiHIh9oTA.tRCX.a', 'NULL', 'NULL', NULL, '16563954-5', '1987-04-26', '2022-12-26', '99', '99', 107, 13, 99, 2, 13, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(342, 'CRISTOBAL DANIEL', 'BARRUETO PEREDO', 'cristobal.barrueto@sii.cl', '$2y$10$ZvSy6cfAxXLIDWTiYQZJe.EXg0EEDptAO37zRKHUgePVacewccrKe', 'NULL', 'NULL', NULL, '15331681-3', '1982-09-20', '2016-07-28', '63-2362263', '2263', 107, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(343, 'CAROLINA DEL CARMEN', 'CERDA DONOSO', 'ccerda@sii.cl', '$2y$10$gupQcIomJv6jXZQQ.7v8HeAesqlNlBx48t1HhDPMC7IhZjGTs1Nwi', 'NULL', 'NULL', NULL, '13476076-1', '1978-01-25', '2002-01-16', '2-23953881', '3881', 107, 13, 99, 5, 3, 42, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(344, 'MARIA ALEJANDRA', 'CORDOVA SOTO', 'mcordova@sii.cl', '$2y$10$WT0yfxDRZYtfIc/6WrwEBeQ77EqQFzY009Xr6c5ckMSXiOaI3UCHe', 'NULL', 'NULL', NULL, '14330214-8', '1977-08-12', '2002-01-16', '63-2362239', '2239', 107, 13, 99, 3, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(345, 'LORENA ARLET', 'ERRIBARREN DIOCARES', 'lorena.erribarren@sii.cl', '$2y$10$XzQceeQy0/M9Mm8zdPEtLOSKrMHv4J.B99rPgOAJXwPcjGicn.qNW', 'NULL', 'NULL', NULL, '18174583-5', '1994-06-30', '2015-04-16', '63-2362277', '2277', 107, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(346, 'SANDRA MARISOL', 'GODOY PINCHEIRA', 'sgodoy@sii.cl', '$2y$10$I9nxnZ4Xck0jhXu8WZ30i.krxHB6S.TkOm/J8IK/ylNpQ.XovB4Pm', 'NULL', 'NULL', NULL, '11591175-9', '1970-08-02', '1993-03-15', '63-2362264', '2264', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(347, 'IHOVANKA GUISELA ESTHER', 'JARA CORONADO', 'ihovanka.jara@sii.cl', '$2y$10$zISN18vW9Hzr9FP8.dkTKOYZpFmRrO6L7ivHhk7DGT9pl4.MO.b/y', 'NULL', 'NULL', NULL, '18590652-3', '1993-11-22', '2019-03-18', '63-2362285', '2285', 107, 13, 99, 2, 15, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(348, 'IVETTE ARACELLY', 'LOPEZ VALENZUELA', 'ilopez@sii.cl', '$2y$10$DP7qfmkWJzeK46Lq3k9b0eZtiDkdh/VFWfar6DzNXphIlV6ofUTwy', 'NULL', 'NULL', NULL, '12431766-5', '1973-07-06', '2001-09-04', '63-2362210', '2210', 107, 13, 99, 3, 8, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(349, 'JUAN HUMBERTO', 'NAVARRETE JARA', 'jhnavarr@sii.cl', '$2y$10$izDwVHnE3z3Z4yocv9rU..SLp1Qjgw30OMCuILLRDo.K33LlXQbwi', 'NULL', 'NULL', NULL, '6824038-7', '1953-10-20', '1974-05-01', '63-2362265', '2265', 107, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(350, 'MARCO ANTONIO', 'QUINTEROS MAYORGA', 'marco.quinteros@sii.cl', '$2y$10$wrwP.WKiegFyKgklyP6LjOkBCjNYXavMul5MC7aaIsArOKUMlarzO', 'NULL', 'NULL', NULL, '10186047-7', '1967-02-08', '2007-07-01', '2-23951859', '1859', 107, 13, 99, 6, 14, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(351, 'FABIO CLISTENES', 'SAEZ GARCIA', 'fsaez@sii.cl', '$2y$10$K78mtXOufdfnXiURD.6zJOJgBTMCCbg1PHv3pQJTwnvkIS8tihdYG', 'NULL', 'NULL', NULL, '9015082-0', '1960-05-24', '1994-11-01', '63-2362264', '2264', 107, 13, 99, 1, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(352, 'JUAN CARLOS', 'SANCHEZ RIQUELME', 'jcsanche@sii.cl', '$2y$10$.jOYhnB8fJ8TAVVV8tOPt.Mg.qT.jWCtCiNKVuKLTdiQ4sq09vkCS', 'NULL', 'NULL', NULL, '9016440-6', '1961-01-10', '1986-07-01', '63-2362264', '2264', 107, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(353, 'MAURICIO EGON', 'VASQUEZ GOMEZ', 'mvasquez@sii.cl', '$2y$10$CksfmNzTnaM1y4fvc02XV.GsUmDyKINtv9OK4.EcoLlZr14fAnuoK', 'NULL', 'NULL', NULL, '9517516-3', '1962-06-10', '1995-02-01', '63-2362264', '2264', 107, 13, 99, 7, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(354, 'PATRICIA SOLEDAD', 'VELASQUEZ ALVARADO', 'pvelasquez@sii.cl', '$2y$10$JDm9/rgWocb/agO8rZMKoO5eTAomVHBGAfvD87HYCVo2lfdS8NSCa', 'NULL', 'NULL', NULL, '7581534-4', '1961-03-21', '1985-12-01', '63-3951943', '1943', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(355, 'CLAUDIA ROSA', 'VERA SEPULVEDA', 'crvera@sii.cl', '$2y$10$hWgv66wZ.mke3pcdAEIXq.n1xAQbdnGHyMHUc4/Yr6WgDjVDyR1CW', 'NULL', 'NULL', NULL, '12389472-3', '1973-01-26', '1999-02-01', '63-2362246', '2246', 107, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(356, 'VICTOR', 'AEDO COFRE', 'victor.aedo@sii.cl', '$2y$10$csUp9CNQkImaHykvmoh8nuzX4Vg9dmIt21n7nUzAfF2FV4P.hEWKa', 'NULL', 'NULL', NULL, '11919500-4', '1972-01-06', '2004-07-19', '63-2357854', '7854', 56, 13, 99, 2, 13, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(357, 'DAVID IVAN', 'AGUILAR AGUILAR', 'david.aguilar@sii.cl', '$2y$10$DBfEY8U2HnFnPfpvP5bKIePlCcYvqPleLeqtIiBsG/tMiGpydzCFu', 'NULL', 'NULL', NULL, '16583516-6', '1986-11-28', '2016-07-28', '63-2458946', '8946', 56, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(358, 'ERNESTO ALEJANDRO', 'CARCAMO NAVARRETE', 'ernesto.carcamo@sii.cl', '$2y$10$LLs0aTuBiTxEohWtpJM0y.ZzMfwqrPiqLBNk9uudGmQ8uH4KIHocW', 'NULL', 'NULL', NULL, '15264560-0', '1984-03-02', '2010-05-01', '63-2458949', '8949', 56, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(359, 'CAROL MALLULY', 'MONTECINOS CADAGAN', 'carol.montecinos@sii.cl', '$2y$10$sr2YebLJsbpBWXfKA5K69.XQ3HJxRMHHy4wDL2T2mMIJO7ItdRIUu', 'NULL', 'NULL', NULL, '15269369-9', '1982-07-15', '2010-10-05', '63-2458947', '8947', 56, 13, 99, 5, 6, 35, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(360, 'CAMILA DENIS', 'RAMIREZ BARRIGA', 'camila.ramirez@sii.cl', '$2y$10$9Xr0xfDdbqUdhCwkmqa6s.LlkfvGuzD6WKVlZGzN8Q/PnERrKRwGG', 'NULL', 'NULL', NULL, '19270094-9', '1996-08-13', '2019-03-18', '63-2458949', '8949', 56, 13, 99, 2, 15, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(361, 'ANICETO ENRIQUE', 'ROLDAN BUSTOS', 'aroldan@sii.cl', '$2y$10$8b2NqYsvwOflvxCjAabn0OAUJMwfmE5EDFoxaljxR2tyIvjp3NRQK', 'NULL', 'NULL', NULL, '9028813-K', '1962-07-25', '2000-01-01', '63-2944452', '4452', 56, 13, 99, 3, 7, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18');
INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(362, 'PATRICIA', 'SALGADO GUARDA', 'patricia.salgado@sii.cl', '$2y$10$gKVLOEefS0jWhvCYSBNEKel/zBQtxmUhFiGb7AkuGXOdBgeCJXOKu', 'NULL', 'NULL', NULL, '10306798-7', '1967-10-30', '2004-01-01', '63-2458945', '8945', 56, 13, 99, 1, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(363, 'SARA BETZABE', 'GONZALEZ MUNOZ', 'sara.gonzalez@sii.cl', '$2y$10$ITiZrdOFjsHiKOM1yGJ4KO1kSKp5MQoFdDAtGElRScSyy2tYo3.Lm', 'NULL', 'NULL', NULL, '12080386-7', '1973-05-17', '2015-11-19', '2-29035893', '5893', 57, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(364, 'CAROLINA ANDREA', 'NAVARRO VASQUEZ', 'carolina.navarro@sii.cl', '$2y$10$B2xAUI6cCqXZB/dNmU1Nwu4GhCG3P8wnltnOegQsWvbuwkCJz.hhi', 'NULL', 'NULL', NULL, '15883761-7', '1984-09-30', '2015-01-05', '63-2362210', '2210', 57, 13, 99, 5, 7, 36, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(365, 'RUPERTO ALFONSO', 'TRONCOSO CALFANTE', 'ruperto.troncoso@sii.cl', '$2y$10$H04GLAyYiAOwIlIAALTopeLAp0BRqY.iCwWBcW0b.UxLXZ3FyQiYu', 'NULL', 'NULL', NULL, '7994046-1', '1957-11-18', '1992-04-01', '63-2362275', '2275', 57, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(366, 'MARTA VERONICA', 'CORTES SAN MARTIN', 'marta.cortes@sii.cl', '$2y$10$QrFpzaV1sCYpdroe3xDWzeXuOkz9GgWh3.kuE005kxvpIWyOsFH5C', 'NULL', 'NULL', NULL, '10762698-0', '1966-09-09', '1993-01-18', '63-2362213', '2213', 113, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(367, 'MONICA', 'LOPEZ CARMONA', 'monica.lopez@sii.cl', '$2y$10$JkN7nPWKhTEE5i7sx1RFauJy0u4vgIvYrLapzB.9rJu2QUe8oIOU6', 'NULL', 'NULL', NULL, '10900620-3', '1968-05-04', '2003-12-01', '63-2362222', '2222', 113, 13, 99, 4, 3, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(368, 'RODRIGO', 'PELUCHONNEAU ALLIENDE', 'rodrigo.peluchonneau@sii.cl', '$2y$10$P.TZHeWfVfFtxMCWtTluQ.xpXSpYNkOdCw2akwzfme980jwAtYYci', 'NULL', 'NULL', NULL, '12263034-K', '1972-01-24', '2003-11-10', '63-2362224', '2224', 113, 13, 99, 4, 6, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(369, 'SEBASTIAN MARTIN', 'SALINERO MONTECINOS', 'sebastian.salinero@sii.cl', '$2y$10$rlegkBI7eoU7YlSE9D5OAuAPlpm3nOrBXZmvd5s5pbifoxhil9.TO', 'NULL', 'NULL', NULL, '16522092-7', '1986-11-11', '2015-09-21', '63-2362223', '2223', 113, 13, 99, 4, 7, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(370, 'HANS SIDNEY', 'SCHUDECK PONCE', 'hans.schudeck@sii.cl', '$2y$10$YS03IsIYV1yYNghW3R0gwuXv2x6JTExpO5xJpGy68Lqu/MM1R57CW', 'NULL', 'NULL', NULL, '11845372-7', '1971-07-14', '2007-05-01', '63-2362203', '2203', 113, 13, 99, 5, 3, 40, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(371, 'FRANCISCO JAVIER', 'CASTRO RIQUELME', 'francisco.castror@sii.cl', '$2y$10$g5HVOuUU7RVcuP3QgIPW5OdD3IXVPw3MWh2sbvgoBn01fZyDGhSTe', 'NULL', 'NULL', NULL, '17843157-9', '1991-04-29', '2017-09-29', '63-2362274', '2274', 58, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(372, 'ROBERTO OSVALDO', 'ESPINOZA CALDERON', 'roberto.espinoza@sii.cl', '$2y$10$El8WUh7xtc5PyQpLlozeQOgMTesd/XXtAFnmFzAKq9pyfSu8J2c5i', 'NULL', 'NULL', NULL, '10665478-6', '1979-10-09', '2008-12-01', '63-2362286', '2286', 58, 13, 99, 1, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(373, 'RUBEN ARMANDO', 'FLANDEZ MUNOZ', 'ruben.flandez@sii.cl', '$2y$10$W6hnayn7RqjjowiG9flCu.ANkzSaXvqByLYD0gEUaiyxps6ESpZKi', 'NULL', 'NULL', NULL, '15234534-8', '1982-04-13', '2016-07-18', '63-2362273', '2273', 58, 13, 99, 2, 15, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(374, 'CAROL TAMARA', 'LAGOS CASTILLO', 'carol.lagos@sii.cl', '$2y$10$2WuXunRpB2Il9pHmQWlO4O0a1rFARFgxUQ86v8yxSiPbGxYG03Y/2', 'NULL', 'NULL', NULL, '17289264-7', '1987-08-11', '2018-07-17', '63-2362273', '2273', 58, 13, 99, 1, 14, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(375, 'IVAN ANDREI', 'OTEIZA ONATE', 'ivan.oteiza@sii.cl', '$2y$10$kG9WL5kLjdB03Wg0fv3nE.3Qrj56ixIaiUgpffbs5epBUD2PLzDjK', 'NULL', 'NULL', NULL, '16839460-8', '1988-03-18', '2011-06-22', '63-2362271', '2271', 58, 13, 99, 5, 7, 37, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(376, 'ELADIO FERNANDO', 'OVALLE CARDENAS', 'eladio.ovalle@sii.cl', '$2y$10$CfcWUCm86Hp2CKq1wVJ/.eyYvjLwSSkN4mG04j3fvGWzA1jK1qvxu', 'NULL', 'NULL', NULL, '16870822-K', '1988-01-15', '2015-08-31', '63-2362259', '2259', 58, 13, 99, 9, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(377, 'DANAE BELERMA', 'VILLANUEVA VILLANUEVA', 'danae.villanueva@sii.cl', '$2y$10$MkGrI33c61nXSsXu8t8cF.1PdD2P7UOrKAflJ0EmzJARRFdz.J1ju', 'NULL', 'NULL', NULL, '16871552-8', '1988-05-27', '2021-03-08', '63-2362287', '2287', 58, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(378, 'JIMENA', 'CASTILLO BASCUÑAN', 'jcastill@sii.cl', '$2y$10$bNqrEAKqW7uf2lSqYKQMdO5FOV.lkcftoq181Z3zgA8G947aEn29i', 'NULL', 'NULL', NULL, '12558858-1', '1974-08-07', '1999-02-01', '63-2362216', '2216', 111, 13, 99, 4, 3, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(379, 'GONZALO', 'GALVEZ PARRA', 'gonzalo.galvez@sii.cl', '$2y$10$cDeOMAJi.lRQ58q4lyA.be6zGbV5cEb3wg7USXN8t/R.gVgM9ZfyW', 'NULL', 'NULL', NULL, '11895972-8', '1971-03-18', '2001-05-07', '63-2362206', '2206', 111, 13, 99, 4, 3, 48, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(380, 'MARIO HERNAN', 'LOPEZ CARES', 'mario.lopez@sii.cl', '$2y$10$1sneKVcU0PoTN9keVR3wBuF/1yP8VnIWe3sIj5NKHJ8rvRffQqVmC', 'NULL', 'NULL', NULL, '8914762-K', '1963-10-01', '1992-02-17', '63-2362209', '2209', 111, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(381, 'FRANCISCO ANIBAL', 'LUENGO CIFUENTES', 'fluengo@sii.cl', '$2y$10$eGpQiTVNyOHODKpKseWN0OPysURFaWheOOK1Vu4Qb6nXHqRIhe12e', 'NULL', 'NULL', NULL, '7558451-2', '1958-04-11', '1983-10-10', '63-2362248', '2248', 111, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(382, 'SONIA', 'ROJAS MORENO', 'sonia.rojas@sii.cl', '$2y$10$plgqGVeHpt9.wRGPu..FV.OSBUxfSQ1GRWMVOfyRU/wRA1S/ELUEW', 'NULL', 'NULL', NULL, '10044599-9', '1970-06-20', '1997-06-01', '63-2362257', '2257', 111, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID_VEHICULO` int(10) UNSIGNED NOT NULL,
  `PATENTE_VEHICULO` varchar(7) NOT NULL,
  `ID_TIPO_VEH` bigint(20) UNSIGNED NOT NULL,
  `MARCA` varchar(128) DEFAULT NULL,
  `MODELO_VEHICULO` varchar(191) DEFAULT NULL,
  `ANO_VEHICULO` varchar(128) DEFAULT NULL,
  `ID_UBICACION` bigint(20) UNSIGNED NOT NULL,
  `ESTADO_VEHICULO` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID_VEHICULO`, `PATENTE_VEHICULO`, `ID_TIPO_VEH`, `MARCA`, `MODELO_VEHICULO`, `ANO_VEHICULO`, `ID_UBICACION`, `ESTADO_VEHICULO`, `created_at`, `updated_at`) VALUES
(1, 'FJSF-27', 2, 'MAHINDRA', 'SCORPIO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 00:50:09'),
(2, 'HSHV-15', 2, 'TOYOTA', 'RAV 4', '2016', 46, 'DISPONIBLE', NULL, NULL),
(5, 'CWVK-30', 2, 'HYUNDAI', 'TUCSON', '2011', 48, 'DISPONIBLE', NULL, NULL),
(6, 'GBTL-10', 4, 'MAHINDRA', 'GENIO', '2014', 45, 'DISPONIBLE', NULL, NULL),
(7, 'CWYD-87', 1, 'HYUNDAI', 'ELANTRA', '2011', 50, 'DISPONIBLE', NULL, NULL),
(8, 'GVDY-20', 4, 'CHEVROLET', 'D-MAX', '2015', 108, 'DISPONIBLE', NULL, '2023-07-08 00:51:00'),
(9, 'LZFF-48', 2, 'HYUNDAI', 'TUCSON', '2020', 106, 'DISPONIBLE', NULL, '2023-07-08 00:55:55'),
(10, 'FJGK-74', 4, 'FIAT', 'DUCATO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 00:45:28'),
(11, 'CWYF-10', 1, 'HYUNDAI', 'ELANTRA', '2011', 46, 'DISPONIBLE', NULL, NULL),
(12, 'HSHV-23', 2, 'TOYOTA', 'RAV 4', '2016', 102, 'DISPONIBLE', NULL, '2023-07-08 00:52:18'),
(13, 'KDVD-24', 2, 'TOYOTA', 'RAV 4', '2018', 102, 'DISPONIBLE', NULL, '2023-07-08 00:54:10'),
(14, 'KDVD-46', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 00:55:32'),
(15, 'KDVD-44', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 00:55:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calidad_juridica`
--
ALTER TABLE `calidad_juridica`
  ADD PRIMARY KEY (`ID_CALIDAD`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID_CARGO`);

--
-- Indices de la tabla `categoria_salas`
--
ALTER TABLE `categoria_salas`
  ADD PRIMARY KEY (`ID_CATEGORIA_SALA`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`ID_COMUNA`),
  ADD KEY `comunas_id_region_foreign` (`ID_REGION`);

--
-- Indices de la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  ADD PRIMARY KEY (`ID_DIRECCION`),
  ADD KEY `direcciones_regionales_id_region_foreign` (`ID_REGION`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`ID_EQUIPO`),
  ADD KEY `equipos_id_tipo_equipos_foreign` (`ID_TIPO_EQUIPOS`);

--
-- Indices de la tabla `escalafon`
--
ALTER TABLE `escalafon`
  ADD PRIMARY KEY (`ID_ESCALAFON`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`ID_FACULTAD`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`ID_FORMULARIO`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`ID_GRADO`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`ID_GRUPO`);

--
-- Indices de la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inexistentes_id_usuario_foreign` (`ID_USUARIO`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`ID_MATERIAL`);

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
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD PRIMARY KEY (`ID_POLIZA`),
  ADD KEY `polizas_id_foreign` (`ID`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID_REGION`);

--
-- Indices de la tabla `rel_fun_bodegas`
--
ALTER TABLE `rel_fun_bodegas`
  ADD PRIMARY KEY (`ID_SOL_BODEGA`);

--
-- Indices de la tabla `rel_fun_equipos`
--
ALTER TABLE `rel_fun_equipos`
  ADD PRIMARY KEY (`ID_SOL_EQUIPOS`);

--
-- Indices de la tabla `rel_fun_form`
--
ALTER TABLE `rel_fun_form`
  ADD PRIMARY KEY (`ID_SOL_FORM`);

--
-- Indices de la tabla `rel_fun_mat`
--
ALTER TABLE `rel_fun_mat`
  ADD PRIMARY KEY (`ID_SOLICITUD`);

--
-- Indices de la tabla `rel_fun_rep_general`
--
ALTER TABLE `rel_fun_rep_general`
  ADD PRIMARY KEY (`ID_REP_INM`);

--
-- Indices de la tabla `rel_fun_rep_veh`
--
ALTER TABLE `rel_fun_rep_veh`
  ADD PRIMARY KEY (`ID_SOL_REP_VEH`);

--
-- Indices de la tabla `rel_fun_salas`
--
ALTER TABLE `rel_fun_salas`
  ADD PRIMARY KEY (`ID_SOL_SALA`);

--
-- Indices de la tabla `rel_fun_veh`
--
ALTER TABLE `rel_fun_veh`
  ADD PRIMARY KEY (`ID_SOL_VEH`);

--
-- Indices de la tabla `resoluciones`
--
ALTER TABLE `resoluciones`
  ADD PRIMARY KEY (`ID_RESOLUCION`);

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
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`ID_SALA`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`ID_SEXO`);

--
-- Indices de la tabla `tipo_equipos`
--
ALTER TABLE `tipo_equipos`
  ADD PRIMARY KEY (`ID_TIPO_EQUIPOS`);

--
-- Indices de la tabla `tipo_material`
--
ALTER TABLE `tipo_material`
  ADD PRIMARY KEY (`ID_TIPO_MAT`);

--
-- Indices de la tabla `tipo_reparacion`
--
ALTER TABLE `tipo_reparacion`
  ADD PRIMARY KEY (`ID_TIPO_REP_GENERAL`);

--
-- Indices de la tabla `tipo_resoluciones`
--
ALTER TABLE `tipo_resoluciones`
  ADD PRIMARY KEY (`ID_TIPO`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`ID_TIPO_SERVICIO`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`ID_TIPO_VEH`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`ID_UBICACION`),
  ADD KEY `ubicacion_id_direccion_foreign` (`ID_DIRECCION`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_rut_unique` (`RUT`),
  ADD KEY `users_id_ubicacion_foreign` (`ID_UBICACION`),
  ADD KEY `users_id_region_foreign` (`ID_REGION`),
  ADD KEY `users_id_grupo_foreign` (`ID_GRUPO`),
  ADD KEY `users_id_escalafon_foreign` (`ID_ESCALAFON`),
  ADD KEY `users_id_grado_foreign` (`ID_GRADO`),
  ADD KEY `users_id_cargo_foreign` (`ID_CARGO`),
  ADD KEY `users_id_calidad_juridica_foreign` (`ID_CALIDAD_JURIDICA`),
  ADD KEY `users_id_sexo_foreign` (`ID_SEXO`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID_VEHICULO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `ID_CARGO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9992;

--
-- AUTO_INCREMENT de la tabla `categoria_salas`
--
ALTER TABLE `categoria_salas`
  MODIFY `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `ID_COMUNA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  MODIFY `ID_DIRECCION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `ID_EQUIPO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `ID_FACULTAD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formularios`
--
ALTER TABLE `formularios`
  MODIFY `ID_FORMULARIO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `ID_MATERIAL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `polizas`
--
ALTER TABLE `polizas`
  MODIFY `ID_POLIZA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `ID_REGION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `rel_fun_bodegas`
--
ALTER TABLE `rel_fun_bodegas`
  MODIFY `ID_SOL_BODEGA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rel_fun_equipos`
--
ALTER TABLE `rel_fun_equipos`
  MODIFY `ID_SOL_EQUIPOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `rel_fun_form`
--
ALTER TABLE `rel_fun_form`
  MODIFY `ID_SOL_FORM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rel_fun_mat`
--
ALTER TABLE `rel_fun_mat`
  MODIFY `ID_SOLICITUD` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_general`
--
ALTER TABLE `rel_fun_rep_general`
  MODIFY `ID_REP_INM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_veh`
--
ALTER TABLE `rel_fun_rep_veh`
  MODIFY `ID_SOL_REP_VEH` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `rel_fun_salas`
--
ALTER TABLE `rel_fun_salas`
  MODIFY `ID_SOL_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rel_fun_veh`
--
ALTER TABLE `rel_fun_veh`
  MODIFY `ID_SOL_VEH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `resoluciones`
--
ALTER TABLE `resoluciones`
  MODIFY `ID_RESOLUCION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `ID_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_equipos`
--
ALTER TABLE `tipo_equipos`
  MODIFY `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_material`
--
ALTER TABLE `tipo_material`
  MODIFY `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_reparacion`
--
ALTER TABLE `tipo_reparacion`
  MODIFY `ID_TIPO_REP_GENERAL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_resoluciones`
--
ALTER TABLE `tipo_resoluciones`
  MODIFY `ID_TIPO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `ID_TIPO_SERVICIO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID_VEHICULO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`);

--
-- Filtros para la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  ADD CONSTRAINT `direcciones_regionales_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_id_tipo_equipos_foreign` FOREIGN KEY (`ID_TIPO_EQUIPOS`) REFERENCES `tipo_equipos` (`ID_TIPO_EQUIPOS`);

--
-- Filtros para la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  ADD CONSTRAINT `inexistentes_id_usuario_foreign` FOREIGN KEY (`ID_USUARIO`) REFERENCES `users` (`id`);

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
-- Filtros para la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD CONSTRAINT `polizas_id_foreign` FOREIGN KEY (`ID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_id_direccion_foreign` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `direcciones_regionales` (`ID_DIRECCION`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_calidad_juridica_foreign` FOREIGN KEY (`ID_CALIDAD_JURIDICA`) REFERENCES `calidad_juridica` (`ID_CALIDAD`),
  ADD CONSTRAINT `users_id_cargo_foreign` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargos` (`ID_CARGO`),
  ADD CONSTRAINT `users_id_escalafon_foreign` FOREIGN KEY (`ID_ESCALAFON`) REFERENCES `escalafon` (`ID_ESCALAFON`),
  ADD CONSTRAINT `users_id_grado_foreign` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID_GRADO`),
  ADD CONSTRAINT `users_id_grupo_foreign` FOREIGN KEY (`ID_GRUPO`) REFERENCES `grupo` (`ID_GRUPO`),
  ADD CONSTRAINT `users_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`),
  ADD CONSTRAINT `users_id_sexo_foreign` FOREIGN KEY (`ID_SEXO`) REFERENCES `sexo` (`ID_SEXO`),
  ADD CONSTRAINT `users_id_ubicacion_foreign` FOREIGN KEY (`ID_UBICACION`) REFERENCES `ubicacion` (`ID_UBICACION`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
