-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-04-2015 a las 01:27:35
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `universidad_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
`codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`codigo`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'FERNANDO HERRERA SORIANO', '99498877', 'Colonia el porvenir, cerca del cerro Juana Mendoza'),
(2, 'MELISSA FLORES HERRERA', '98883322', 'Provincia de aguas calientes, frente al mercadito los tres hermanos.'),
(3, 'HERNANDO RENE VALLEJO', '33223323', 'Departamento Ascapotzalco, por la estacion del metro'),
(4, 'MARIA PEREZ SOLANO', '33229988', 'Barranquilla, contiguo a la universidad.'),
(5, 'ROSA JIMENEZ PEREIRA', '33221243', 'No tiene direccion'),
(6, 'JUAN CARLOS PINEDA', '77435434', 'No tiene direccion');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
 ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
