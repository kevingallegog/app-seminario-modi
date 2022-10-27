-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 08:27:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_asistencia`
--

CREATE TABLE `tb_asistencia` (
  `id` int(11) NOT NULL,
  `fecha` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_participante` int(11) NOT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tb_asistencia`
--

INSERT INTO `tb_asistencia` (`id`, `fecha`, `id_usuario`, `id_rol`, `id_participante`, `estado`) VALUES
(1, '2022-10-27 23:58:19', 17, 2, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_genero`
--

CREATE TABLE `tb_genero` (
  `id` int(11) NOT NULL,
  `genero` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_genero`
--

INSERT INTO `tb_genero` (`id`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nivel`
--

CREATE TABLE `tb_nivel` (
  `id` int(11) NOT NULL,
  `nivel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ndescripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_nivel`
--

INSERT INTO `tb_nivel` (`id`, `nivel`, `ndescripcion`) VALUES
(1, 'Nivel 1', NULL),
(2, 'Nivel 2', NULL),
(3, 'Nivel 3', NULL),
(4, 'Nivel 4', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_participante`
--

CREATE TABLE `tb_participante` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nombres` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `direccion` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha_chequeo` date NOT NULL,
  `peso` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `talla` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha_regalo` date NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_creado` datetime NOT NULL,
  `fecha_edicion` datetime NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_religion` int(11) NOT NULL,
  `asis` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_participante`
--

INSERT INTO `tb_participante` (`id`, `codigo`, `nombres`, `apellidos`, `fecha_nacimiento`, `telefono`, `direccion`, `fecha_chequeo`, `peso`, `talla`, `fecha_regalo`, `estado`, `fecha_creado`, `fecha_edicion`, `id_nivel`, `id_religion`, `asis`) VALUES
(1, 'G10', 'carlos', 'chub', '2022-10-06', '45896612', 'Carcha', '2022-10-03', '100', '100', '2022-10-03', 1, '2022-10-03 19:41:52', '2022-10-04 10:50:45', 1, 1, 0),
(6, 'J01', 'Leo', 'Soto', '2007-11-03', '45856956', 'Coban', '2022-10-22', '120', 'M', '2022-10-22', 1, '2022-10-22 01:04:50', '2022-10-22 01:04:50', 2, 1, 0),
(7, 'K01', 'Mariela', 'Ochaeta', '2002-11-26', '54236532', 'Carcha', '2022-10-22', '150', 'S', '2022-10-22', 1, '2022-10-22 01:06:13', '2022-10-22 01:06:13', 3, 2, 0),
(8, 'G11', 'Fernando', 'Gabriel', '2006-01-04', '45653212', 'Tactic', '2022-10-22', '105', 'S', '2022-10-22', 1, '2022-10-22 10:28:36', '2022-10-22 10:28:36', 1, 1, 1),
(9, 'J02', 'Marta', 'Ruiz', '2000-02-25', '51236532', 'Carcha', '2022-10-22', '', 'M', '2022-10-22', 1, '2022-10-22 10:30:00', '2022-10-22 10:30:00', 2, 1, 0),
(10, 'G12', 'Julio', 'Gutierrez', '0000-00-00', '45653258', 'Coban', '2022-10-22', '', 'S', '2022-10-22', 1, '2022-10-22 10:31:40', '2022-10-22 10:31:40', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_religion`
--

CREATE TABLE `tb_religion` (
  `id` int(11) NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_religion`
--

INSERT INTO `tb_religion` (`id`, `religion`) VALUES
(1, 'Cristiano'),
(2, 'Católico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rol`
--

CREATE TABLE `tb_rol` (
  `id` int(11) NOT NULL,
  `rol` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_rol`
--

INSERT INTO `tb_rol` (`id`, `rol`, `descripcion`) VALUES
(1, 'Administrador', 'Tiene permisos para acceder a todos los módulos'),
(2, 'Tutor Nivel 1', 'Tiene permisos para gestionar participantes del nivel 1'),
(3, 'Tutor Nivel 2', 'Tiene permisos para gestionar participantes del nivel 2\r\n'),
(4, 'Tutor Nivel 3', 'Tiene permisos para gestionar participantes del nivel 3'),
(5, 'Tutor Nivel 4', 'Tiene permisos para gestionar participantes del nivel 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_creado` datetime NOT NULL,
  `fecha_edicion` datetime NOT NULL,
  `usuario_creado` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `usuario_edicion` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_rol` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nombres`, `apellidos`, `telefono`, `email`, `password`, `imagen`, `estado`, `fecha_creado`, `fecha_edicion`, `usuario_creado`, `usuario_edicion`, `id_rol`, `id_genero`) VALUES
(1, 'admin', 'admin', '57993366', 'admin@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1664818550.jpg', 1, '2022-10-03 11:35:49', '2022-10-24 00:22:21', 'carlos armando', 'admin', 1, 1),
(17, 'Kevin Emmanuel', 'Gallego Gómez', '53302938', 'kgallegog@miumg.edu.gt', '85f5e10431f69bc2a14046a13aabaefc660103b6de7a84f75c4b96181d03f0b5', '', 1, '2022-10-22 01:02:25', '2022-10-22 01:02:25', 'admin', 'Kevin Emmanuel', 2, 1),
(18, 'Karen', 'Merida', '256236532', 'karen@gmail.com', '904294d8c54b1c63e40832fa1d95bcde534b310df6d42882ce4baf28f3e0184a', '', 1, '2022-10-22 01:03:04', '2022-10-22 01:03:04', 'admin', 'Karen', 3, 2),
(19, 'Julian', 'Alvarez', '25623265', 'julian@gmail.com', 'ce0fee7e61f9c74f1110f0e5940a80b4f059f189217d0c3d26bb41960d4bf597', '', 1, '2022-10-22 01:03:41', '2022-10-22 01:03:41', 'admin', 'Julian', 4, 1),
(20, 'Prueba', 'Prueba', '45652365', 'prueba@gmail.com', '655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b', '', 1, '2022-10-22 10:34:31', '2022-10-22 10:34:31', 'admin', 'Prueba', 5, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_asistencia`
--
ALTER TABLE `tb_asistencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_genero`
--
ALTER TABLE `tb_genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_nivel`
--
ALTER TABLE `tb_nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_participante`
--
ALTER TABLE `tb_participante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `id_nivel` (`id_nivel`),
  ADD KEY `id_religion` (`id_religion`);

--
-- Indices de la tabla `tb_religion`
--
ALTER TABLE `tb_religion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_genero` (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_asistencia`
--
ALTER TABLE `tb_asistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_genero`
--
ALTER TABLE `tb_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_nivel`
--
ALTER TABLE `tb_nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_participante`
--
ALTER TABLE `tb_participante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_religion`
--
ALTER TABLE `tb_religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_participante`
--
ALTER TABLE `tb_participante`
  ADD CONSTRAINT `tb_participante_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `tb_nivel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_participante_ibfk_2` FOREIGN KEY (`id_religion`) REFERENCES `tb_religion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_usuario_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `tb_genero` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
