-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-06-2021 a las 18:21:03
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testing_ali_fullstack`
--

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `addUser`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser` (IN `_nombre_f` VARCHAR(30), IN `_nombre_s` VARCHAR(30), IN `_apellido_f` VARCHAR(30), IN `_apellido_s` VARCHAR(30), IN `_nacimiento` VARCHAR(30), IN `_email` VARCHAR(45), IN `_telefono` VARCHAR(20))  BEGIN
INSERT INTO users_test_daniel (nombre_f, nombre_s, apellido_f, apellido_s, nacimiento, email, telefono) VALUES (_nombre_f, _nombre_s, _apellido_f, _apellido_s, _nacimiento, _email, _telefono);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_test_daniel`
--

DROP TABLE IF EXISTS `users_test_daniel`;
CREATE TABLE IF NOT EXISTS `users_test_daniel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_f` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_s` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_f` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_s` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users_test_daniel`
--

INSERT INTO `users_test_daniel` (`id`, `nombre_f`, `nombre_s`, `apellido_f`, `apellido_s`, `nacimiento`, `email`, `telefono`) VALUES
(1, 'Daniel', '', 'Rubio ', 'Ramón', '12 Abril 1998', 'lobosupremo1998@gmail.com', '5565432334');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
