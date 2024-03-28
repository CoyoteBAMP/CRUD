-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 16-11-2022 a las 16:56:28
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
-- Base de datos: `contraseñas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`) VALUES
(1, 'Administrativo'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridadusuario`
--

CREATE TABLE `seguridadusuario` (
  `idContraseña` int(11) NOT NULL,
  `nombreUsuario` varchar(40) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguridadusuario`
--

INSERT INTO `seguridadusuario` (`idContraseña`, `nombreUsuario`, `usuario`, `contraseña`, `rol`) VALUES
(1, 'Brayan M.', 'usuario1', 'df49353875e0b04092b0224597fb820d', 1),
(2, 'Alexis M.', 'usuario2', '337b62e36795f7d2f8686b65a9dc6dcc', 1),
(3, 'Karla P.', 'usuario3', 'd41659541fe79b7eb9e26445a1f3ed68', 1),
(4, 'Gabriel A.', 'usuario4', '8f86903a27269904ae9cb2a703edfe10', 1),
(5, 'Fernando R.', 'usuario5', 'c1c12e1351eb09e9d43ad4f222f82a80', 1),
(6, 'Marco L.', 'usuario6', 'f34583ccc51bf68480e197e869830aa2', 1),
(7, 'Ximena M.', 'usuario7', '0dd201f59e7ff7af4fc6d12a392ccdc4', 1),
(8, 'Danae M.', 'usuario8', '7aa14ffd280c07825fad7444664f4dd2', 1),
(9, 'Jocelyn F.', 'usuario9', '138cbfe96523698f23da98616df2b36b', 1),
(10, 'Salvador M.', 'usuario10', 'e55eb119822f096255bf286319d699a7', 1),
(11, 'Gabriel M.', 'usuario11', 'dd2cfbb0f5f120653367d1216c04ae01', 2),
(12, 'Karla U.', 'usuario12', '5cb0fd9d98f5f89f8d4c1b52a355f07a', 2),
(13, 'Ximena M.', 'usuario13', '0298ca2ba6a37bcca55f434dece79eb9', 2),
(14, 'Alexis R..', 'usuario14', '1399acf3a814cd8e3ecc3ca7dd7d0504', 2),
(15, 'Gerardo L.', 'usuario15', '79901315006bf8b16dcb6e081a4f8e2d', 2),
(16, 'Misael A.', 'usuario16', '0b952d8d6d9aa9408290b0f653cf6df7', 2),
(17, 'Isael M.', 'usuario17', '2c7eabf114557ba9c3d2f0384968c92a', 2),
(18, 'Raul T.', 'usuario18', '92b9e4e7beaf3e9a56fa422055226b68', 2),
(19, 'Pedro F.', 'usuario19', 'cbb55054a12045f2cb4f4ebfeebcbe23', 2),
(20, 'Paco M.', 'usuario20', 'e34f32b50d00b6c7aa0ac51fae402fca', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `seguridadusuario`
--
ALTER TABLE `seguridadusuario`
  ADD PRIMARY KEY (`idContraseña`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguridadusuario`
--
ALTER TABLE `seguridadusuario`
  MODIFY `idContraseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
