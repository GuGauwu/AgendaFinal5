-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 19:33:56
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idcarrera` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_carrera` varchar(70) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idcarrera`, `nom_carrera`) VALUES
('LEI', 'Licenciatura en Enseñanza del Inglés'),
('LSC', 'LICIENCIAUTRA SISTEMAS COMPUTACIONALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `idlugar` int(11) NOT NULL,
  `nom_lugar` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`idlugar`, `nom_lugar`) VALUES
(1, 'Salón 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL,
  `nom_materia` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `nom_materia`) VALUES
(1, 'ADMINISTRACION DE BASES DE DATOS'),
(2, 'COMPILADORES'),
(3, 'CONTABILIDAD'),
(4, 'INGLES V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idprofesor` int(11) NOT NULL,
  `nom_profesor` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idprofesor`, `nom_profesor`) VALUES
(1, 'NURICUMBO CASTRO HECTOR ROBERTO, D'),
(2, 'TEVERA MANDUJANO JUAN JOSE, DR.'),
(3, 'CRUZ GOMEZ JOSE CARLOS, MTRO.'),
(4, 'MORALES GALDAMEZ SANDRA GUADALUPE, '),
(6, 'HERNANDEZ REYES VICENTE, MTRO.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `idcalendario` int(11) NOT NULL,
  `idmateria` int(11) DEFAULT NULL,
  `idprofesor` int(11) DEFAULT NULL,
  `idlugar` int(11) DEFAULT NULL,
  `temas` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `gradogrupo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `idcarrera` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`idcalendario`, `idmateria`, `idprofesor`, `idlugar`, `temas`, `gradogrupo`, `idcarrera`, `idusuario`) VALUES
(1, 1, 1, 1, 'Seguridad de base de datos', '5J', 'LSC', 1),
(4, 4, 4, 1, 'VERBS', '5 ', 'LEI', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `pass`) VALUES
(1, 'Pancho', '$2y$10$Ue3Ifc3k8/C5ZfYnw8elQugav8fF65pePaN3A.LNinDWegpiCYSM6'),
(2, 'Gustavo', '$2y$10$68T2/WPgLKNMX/Tf8YjlJeHn8GE3OH.i0aNThx4n8sgA7jyK9lxu6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`idlugar`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idprofesor`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idcalendario`),
  ADD KEY `idlugar` (`idlugar`),
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idcarrera` (`idcarrera`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `idlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `idmateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `idprofesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `idcalendario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  ADD CONSTRAINT `registro_ibfk_3` FOREIGN KEY (`idlugar`) REFERENCES `lugar` (`idlugar`),
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  ADD CONSTRAINT `registro_ibfk_5` FOREIGN KEY (`idprofesor`) REFERENCES `profesor` (`idprofesor`),
  ADD CONSTRAINT `registro_ibfk_6` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `registro_ibfk_7` FOREIGN KEY (`idcarrera`) REFERENCES `carrera` (`idcarrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
