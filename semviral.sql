-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2018 a las 10:12:36
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `semviral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `contrasenia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`nombre`, `codigo`, `contrasenia`) VALUES
('Alexis', '1151230', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `codAdmin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`nombre`, `codigo`, `correo`, `telefono`, `cargo`, `rol`, `codAdmin`) VALUES
('Miguel', '1150921', 'miguel@gmail.com', '', 'Estudiante', 'Programador', '1151230'),
('Diego', '1151232', 'diego@gmail.com', '', 'Estudiante', 'Artista', '1151230'),
('Victor', '1151247', 'victor@gmail.com', '', 'Estudiante', 'Tester', '1151230');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantexproyecto`
--

CREATE TABLE `estudiantexproyecto` (
  `idEstudxProy` int(11) NOT NULL,
  `codEstud` varchar(10) NOT NULL,
  `idProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

CREATE TABLE `novedad` (
  `idNovedad` int(11) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `codAdmin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`idNovedad`, `imagen`, `titulo`, `descripcion`, `codAdmin`) VALUES
(1, '', 'EIISI', 'Encuentro Nacional e Internacional en Ingeniería de Sistemas e Informática.', '1151230');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `clasificacion` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codAdmin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `imagen`, `clasificacion`, `descripcion`, `nombre`, `codAdmin`) VALUES
(1, '', 'Finalizado', 'Juego formado por calles y encrucijadas, intencionadamente complejo para confundir a quien se adentre en el mismo.', 'Laberinto', '1151230'),
(2, '', 'Propuesta', 'Reciclador Empedernido', 'Recicloman', '1151230'),
(3, '', 'Curso', 'Maduro pa fuera', 'Protesta', '1151230');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codAdmin` (`codAdmin`);

--
-- Indices de la tabla `estudiantexproyecto`
--
ALTER TABLE `estudiantexproyecto`
  ADD PRIMARY KEY (`idEstudxProy`),
  ADD KEY `idProyecto` (`idProyecto`),
  ADD KEY `codEstud` (`codEstud`);

--
-- Indices de la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD PRIMARY KEY (`idNovedad`),
  ADD KEY `codAdmin` (`codAdmin`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD KEY `codAdmin` (`codAdmin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantexproyecto`
--
ALTER TABLE `estudiantexproyecto`
  MODIFY `idEstudxProy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `novedad`
--
ALTER TABLE `novedad`
  MODIFY `idNovedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`codAdmin`) REFERENCES `administrador` (`codigo`);

--
-- Filtros para la tabla `estudiantexproyecto`
--
ALTER TABLE `estudiantexproyecto`
  ADD CONSTRAINT `estudiantexproyecto_ibfk_2` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`),
  ADD CONSTRAINT `estudiantexproyecto_ibfk_3` FOREIGN KEY (`codEstud`) REFERENCES `estudiante` (`codigo`);

--
-- Filtros para la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD CONSTRAINT `novedad_ibfk_1` FOREIGN KEY (`codAdmin`) REFERENCES `administrador` (`codigo`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`codAdmin`) REFERENCES `administrador` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
