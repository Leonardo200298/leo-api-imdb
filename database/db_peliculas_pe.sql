-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-10-2022 a las 23:19:59
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
-- Base de datos: `db_peliculas_pe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `genero`) VALUES
(1, 'aventura'),
(2, 'ciencia ficcion'),
(3, 'comedia'),
(4, 'terror'),
(5, 'accion'),
(6, 'romance'),
(7, 'musical'),
(8, 'drama'),
(9, 'animacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_peliculas` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `anio` int(45) NOT NULL,
  `produccion` varchar(255) DEFAULT NULL,
  `recaudacion` varchar(255) DEFAULT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_peliculas`, `nombre`, `anio`, `produccion`, `recaudacion`, `id_genero`) VALUES
(2, 'titanic', 1997, '200.000.000', '2202.000.000', 8),
(3, 'El rey leon', 1994, '45.000.000 ', '968.483.777 ', 9),
(4, 'La guerra de los mundos(2005)', 2005, '132.000.000', '704.745.540', 2),
(5, 'Terminator 2: el juicio final', 1991, '102.000.000', '520.881.154', 2),
(6, 'La casa de cera', 2005, '40.000.000', '78.766.121', 4),
(7, 'Buscando a nemo', 2003, '94 000 000', '936.743.261', 9),
(8, 'Bajo la misma estrella', 2014, '14.000.000', '304.186.490', 8),
(9, 'The Notebook', 2004, '30.000.000', '115.000.000', 6),
(10, 'Sweeney Todd: El Barbero Demoniaco', 2005, '50 000 000', '152.523.164 ', 7),
(11, 'El transportador', 2002, '21.000.000', '43.928.932', 5),
(12, 'La La Land: ciudad de sueños', 2016, '30.000.000', '445.636.919', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `contrasenia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `mail`, `contrasenia`) VALUES
(1, 'admin@lmail.com', '$2a$12$3RZDlELW333xJ8dSqusKCuod0D9M8HFqgUbxKovWjMspNgPc1GmrC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_peliculas`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
