-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 30-11-2022 a las 05:51:11
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
-- Base de datos: `coyoteworld`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotraseñasusuarios`
--

CREATE TABLE `cotraseñasusuarios` (
  `idContraseña` int(11) NOT NULL,
  `dueñoUsuario` varchar(40) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `contraseña` varchar(40) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cotraseñasusuarios`
--

INSERT INTO `cotraseñasusuarios` (`idContraseña`, `dueñoUsuario`, `usuario`, `contraseña`, `rol`) VALUES
(1, 'emp1', 'usuario1', 'empbray', 1),
(2, 'emp2', 'usuario2', 'empalex', 1),
(3, 'emp3', 'usuario3', 'empkarl', 1),
(4, 'emp3', 'usuario3', 'empkarl', 1),
(5, 'emp4', 'usuario4', 'empgab', 1),
(6, 'emp5', 'usuario5', 'empfem', 1),
(7, 'emp6', 'usuario6', 'empmarc', 1),
(8, 'emp7', 'usuario7', 'empxime', 1),
(9, 'emp8', 'usuario8', 'empdana', 1),
(10, 'emp9', 'usuario9', 'empjoce', 1),
(11, 'emp10', 'usuario10', 'empsalv', 1),
(12, 'cli1', 'usuario11', 'cligab', 2),
(13, 'cli2', 'usuario12', 'clikar', 2),
(14, 'cli3', 'usuario13', 'clixim', 2),
(15, 'cli4', 'usuario14', 'clialex', 2),
(16, 'cli5', 'usuario15', 'cligerar', 2),
(17, 'cli6', 'usuario16', 'climisa', 2),
(18, 'cli7', 'usuario17', 'cliisa', 2),
(19, 'cli8', 'usuario18', 'clirau', 2),
(20, 'cli9', 'usuario19', 'cliped', 2),
(21, 'cli10', 'usuario20', 'clipac', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoscliente`
--

CREATE TABLE `datoscliente` (
  `idCliente` varchar(40) NOT NULL,
  `nombreCliente` varchar(40) NOT NULL,
  `apellidoPaternoCliente` varchar(40) NOT NULL,
  `apellidoMaternoCliente` varchar(40) NOT NULL,
  `edadCliente` int(11) DEFAULT NULL,
  `teléfonoCliente` varchar(40) DEFAULT NULL,
  `contraseñaCliente` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datoscliente`
--

INSERT INTO `datoscliente` (`idCliente`, `nombreCliente`, `apellidoPaternoCliente`, `apellidoMaternoCliente`, `edadCliente`, `teléfonoCliente`, `contraseñaCliente`) VALUES
('cli1', 'Gabriel', 'Morales', 'Flores', 20, '1234567812', 'cligab'),
('cli10', 'Paco', 'Mora', 'Huerta', 35, '1234567899', 'clipac'),
('cli2', 'Karla', 'Ugarte', 'Paredes', 25, '1234567822', 'clikar'),
('cli3', 'Ximena', 'Montiel', 'Perez', 28, '1234567833', 'clixim'),
('cli4', 'Alexis', 'Rosales', 'Trinidad', 32, '1234567844', 'clialex'),
('cli5', 'Gerardo', 'Lainez', 'Recoba', 33, '1234567811', 'cligerar'),
('cli6', 'Misael', 'Aguilar', 'Paredes', 45, '1234567855', 'climisa'),
('cli7', 'Isael', 'Mares', 'Cabrera', 35, '1234567866', 'cliisa'),
('cli8', 'Raul', 'Trinidad', 'Recoba', 20, '1234567877', 'clirau'),
('cli9', 'Pedro', 'Flores', 'Lima', 45, '1234567888', 'cliped');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospedido`
--

CREATE TABLE `datospedido` (
  `idPedido` varchar(40) NOT NULL,
  `idCliente` varchar(40) NOT NULL,
  `idProveedor` varchar(40) NOT NULL,
  `idProducto` varchar(40) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datospedido`
--

INSERT INTO `datospedido` (`idPedido`, `idCliente`, `idProveedor`, `idProducto`, `cantidad`) VALUES
('ped1', 'cli1', 'prov10', 'prod10', 20),
('ped10', 'cli10', 'prov1', 'prod1', 18),
('ped2', 'cli2', 'prov9', 'prod9', 8),
('ped3', 'cli3', 'prov8', 'prod8', 5),
('ped4', 'cli4', 'prov7', 'prod7', 6),
('ped5', 'cli5', 'prov6', 'prod6', 10),
('ped6', 'cli6', 'prov5', 'prod5', 11),
('ped7', 'cli7', 'prov4', 'prod4', 15),
('ped8', 'cli8', 'prov3', 'prod3', 9),
('ped9', 'cli9', 'prov2', 'prod2', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosproducto`
--

CREATE TABLE `datosproducto` (
  `idProducto` varchar(40) NOT NULL,
  `nombreProducto` varchar(40) NOT NULL,
  `idProveedor` varchar(40) NOT NULL,
  `esPara` varchar(40) NOT NULL,
  `númeroPiezas` int(11) DEFAULT NULL,
  `talla` varchar(40) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datosproducto`
--

INSERT INTO `datosproducto` (`idProducto`, `nombreProducto`, `idProveedor`, `esPara`, `númeroPiezas`, `talla`, `precio`) VALUES
('prod1', 'Pantalón', 'prov1', 'Mujer', 4, '9', 300),
('prod10', 'Playera futbol', 'prov1', 'Hombre', 9, 'Mediana', 200),
('prod2', 'Suadera', 'prov5', 'Hombre', 3, 'Pequeño', 350),
('prod3', 'Chamarra', 'prov7', 'Mujer', 5, 'Grande', 600),
('prod4', 'Zapto Casual', 'prov6', 'Hombre', 4, '25', 1100),
('prod5', 'Tenis Deportivo', 'prov3', 'Hombre', 6, '27', 1000),
('prod6', 'Player', 'prov2', 'Mujer', 10, 'Chica', 400),
('prod7', 'Gorra', 'prov10', 'Mujer', 8, 'Unitalla', 100),
('prod8', 'Gorro', 'prov3', 'Mujer', 6, 'Unitalla', 60),
('prod9', 'Short', 'prov8', 'Hombre', 2, 'Mediano', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosproveedor`
--

CREATE TABLE `datosproveedor` (
  `idProveedor` varchar(40) NOT NULL,
  `nombreProveedor` varchar(40) NOT NULL,
  `calleProveedor` varchar(40) NOT NULL,
  `númeroProveedor` varchar(40) NOT NULL,
  `paisProveedor` varchar(40) NOT NULL,
  `teléfonoProveedor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datosproveedor`
--

INSERT INTO `datosproveedor` (`idProveedor`, `nombreProveedor`, `calleProveedor`, `númeroProveedor`, `paisProveedor`, `teléfonoProveedor`) VALUES
('prov1', 'Britos', '5 sur', '10', 'México', '1125469887'),
('prov10', 'Diesel', '4 este', '55', 'Paises Bajos', '1125469899'),
('prov11', 'hola', 'calle 1 sur', '25', 'Mexico', '7896541230'),
('prov2', 'Nike', '6 poniente', '30', 'Estados Unidos', '1125469811'),
('prov3', 'Wangler', '4 oeste', '25', 'México', '1125469822'),
('prov4', 'ZARA', '2 este', '11', 'Italia', '1125469833'),
('prov5', 'LACOSTE', '5 norte', '25', 'Argentina', '1125469844'),
('prov6', 'H&M', '6 sur', '33', 'Estados Unidos', '1125469855'),
('prov7', 'FILA', '5 poniente', '4', 'México', '1125469866'),
('prov8', 'GUCCI', '1 oriente', '5', 'Italia', '1125469877'),
('prov9', 'D&G', '10 sur', '13', 'Francia', '1125469888');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` varchar(40) NOT NULL,
  `nombreEmpleado` varchar(40) NOT NULL,
  `apellidoPaternoEmpleado` varchar(40) NOT NULL,
  `apellidoMaternoEmpleado` varchar(40) NOT NULL,
  `edadEmpleado` int(11) DEFAULT NULL,
  `teléfonoEmpleado` varchar(40) DEFAULT NULL,
  `contraseñaEmpleado` varchar(40) DEFAULT NULL,
  `puestoEmpleado` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombreEmpleado`, `apellidoPaternoEmpleado`, `apellidoMaternoEmpleado`, `edadEmpleado`, `teléfonoEmpleado`, `contraseñaEmpleado`, `puestoEmpleado`) VALUES
('emp1', 'Brayan', 'Mora', 'Paredes', 40, '1234567890', 'empbray', 'Gerente'),
('emp10', 'Salvador', 'Morales', 'Aguilar', 21, '1478526459', 'empsalv', 'Gerente'),
('emp2', 'Alexis', 'Morales', 'Piña', 22, '8456978952', 'empalex', 'Gerente'),
('emp3', 'Karla', 'Piña', 'Perez', 30, '01236447898', 'empkarl', 'Asistente de Gerente'),
('emp4', 'Gabriel', 'Arroyo', 'Cabrera', 22, '1235478985', 'empgab', 'Asistente de Gerente'),
('emp5', 'Fernando', 'Rivera', 'Paredes', 33, '0021456987', 'empfern', 'Almacenista'),
('emp6', 'Marco', 'Lima', 'Huerta', 35, '1234456877', 'empmarc', 'Alamcenista'),
('emp7', 'Ximena', 'Morales', 'Paredes', 41, '9988775544', 'empxime', 'Cajero'),
('emp8', 'Danae', 'Morales', 'Mora', 32, '8520147963', 'empdana', 'Cajero'),
('emp9', 'Jocelyn', 'Flores', 'Paredes', 21, '9632587410', 'empjoce', 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` varchar(40) NOT NULL,
  `nombreMarca` varchar(40) NOT NULL,
  `paísMarca` varchar(40) NOT NULL,
  `teléfonoMarca` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idMarca`, `nombreMarca`, `paísMarca`, `teléfonoMarca`) VALUES
('marc1', 'Nike', 'Estados Unidos', '2546987456'),
('marc11', 'Cuidado con el perro', 'México', '8978963125'),
('marc12', 'Adidas', 'Alemania', '1546977895'),
('marc13', 'Jordan', 'Estados Unidos', '0100000012'),
('marc14', 'Totto', 'Rusia', '987895462'),
('marc15', 'Champions', 'Estados Unidos', '987888546'),
('marc16', 'Zaragoza', 'España', '9879996412'),
('marc17', 'Lotto', 'México', '4569878520'),
('marc18', 'rebook', 'alemani', '4569878520'),
('marc19', 'Umbro', 'Estados Unidos', '2587413698'),
('marc2', 'rebook', 'alemania', '2546987456'),
('marc20', 'Columbia', 'Estados Unido', '1546977895'),
('marc21', 'Under Armour', 'Francia', '8978963125'),
('marc22', 'H&M', 'Estados Unidos', '2546987456'),
('marc23', 'Prada', 'Francia', '4569878520'),
('marc24', 'Cartier', 'Estados Unidos', '1546977895'),
('marc25', 'Kappa', 'México', '1546977895'),
('marc26', 'Hermes', 'Alemania', '8978963125'),
('marc28', 'Keuka', 'México', '2546987456'),
('marc3', 'Puma', 'Alemania', '1111111111'),
('marc4', 'Keuka', 'México', '8978963125'),
('marc5', 'Wangler', 'Estados Unidos', '4569878520'),
('marc6', 'puma', 'México', '2546987456'),
('marc7', 'New Balanca', 'Paises Bajos', '4569878520'),
('marc8', 'rebook', 'Estados Unido', '4569878520'),
('marc9', 'Vans', 'España', '125478986');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoreducido`
--

CREATE TABLE `productoreducido` (
  `claveProductoR` varchar(40) NOT NULL,
  `nombreProductoR` varchar(40) NOT NULL,
  `marcaProductoR` varchar(40) NOT NULL,
  `codigoBarrras` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productoreducido`
--

INSERT INTO `productoreducido` (`claveProductoR`, `nombreProductoR`, `marcaProductoR`, `codigoBarrras`) VALUES
('prodR1', 'Tacos de futbol', 'marc1', '015ASDA2'),
('prodR10', 'Calcetas de futbol', 'marc1', '045AFF45'),
('prodR11', 'Short', 'marc23', '05AFS550'),
('prodR12', 'Guantes', 'marc25', 'ASD7895A'),
('prodR13', 'Sudadera', 'marc13', '15DA7154'),
('prodR14', 'Careta', 'marc3', '8OSF1254'),
('prodR15', 'Licra', 'marc3', '1254SAFA'),
('prodR16', 'Bata Boxeo', 'marc26', 'HUSE1548'),
('prodR17', 'Guantes Boxeo', 'marc19', '1548AFE8'),
('prodR18', 'Playera manga larga', 'marc20', '115497ZS'),
('prodR19', 'Tobilleras', 'marc21', '154AF84S'),
('prodR2', 'Espinilleras', 'marc26', '1254SAFA'),
('prodR20', 'Coderas', 'marc3', 'KNL6546A'),
('prodR21', 'Rodillera', 'marc24', 'ASSDD154'),
('prodR22', 'Gorra', 'marc26', 'JSUS5818'),
('prodR23', 'Zapatos', 'marc23', 'AASS5489'),
('prodR24', 'Pantalón ', 'marc22', 'AFSD1050'),
('prodR25', 'Corbata', 'marc7', 'POS5441'),
('prodR26', 'Mochila', 'marc20', '8154SFSD'),
('prodR27', 'Raqueta Ping Pong', 'marc14', 'OIO5A456'),
('prodR28', 'Corbata', 'marc16', 'SD5845'),
('prodR29', 'Blusa', 'marc25', 'CEDS5456'),
('prodR3', 'Raqueta ', 'marc28', '0AA45898'),
('prodR30', 'Zaptilla', 'marc11', '26454ASD'),
('prodR31', 'Sombrero', 'marc5', '215SA5S'),
('prodR32', 'Tenis Casual', 'marc9', '4454SDAS'),
('prodR33', 'Calcetín ', 'marc26', '15SS5D1'),
('prodR34', 'Toalla ', 'marc18', 'ASD020'),
('prodR35', 'Camisa casual', 'marc22', '5651DSA'),
('prodR36', 'Vendas ', 'marc3', '515AAFA'),
('prodR37', 'Bermuda ', 'marc12', '2165ASD'),
('prodR38', 'Chamarra', 'marc11', 'ASD155748'),
('prodR39', 'Pijama', 'marc13', '1254SAFA'),
('prodR4', 'Short', 'marc2', '0BB45898'),
('prodR40', 'Bufanda ', 'marc21', '1254SAFA'),
('prodR41', 'Sudadera', 'marc12', '05AFS550'),
('prodR42', 'Vestido', 'marc7', '152S132'),
('prodR43', 'Lentes', 'marc28', 'khs450D'),
('prodR44', 'Blusa', 'marc26', 'XCWS520'),
('prodR45', 'Traje Slim ', 'marc22', 'DWS012'),
('prodR46', 'Maleta ', 'marc24', '654180DSD'),
('prodR47', 'Pañalera', 'marc23', '8794A1AA'),
('prodR48', 'Short', 'marc25', '215A51D'),
('prodR49', 'Moño', 'marc15', '8884ADX'),
('prodR5', 'Camiseta', 'marc24', '05AFS550'),
('prodR50', 'Falda', 'marc2', '874AQWD'),
('prodR51', 'Abrigo', 'marc23', '848AS05'),
('prodR52', 'Cinturón ', 'marc22', '4655AE4'),
('prodR53', 'Botas', 'marc5', '54560AF'),
('prodR54', 'Zapatilla', 'marc26', '8894SSA'),
('prodR7', 'Pans Deportivo', 'marc18', 'ASD155748'),
('prodR70', 'Espinillera', 'marc1', 'ASD7895A'),
('prodR8', 'Espinilleras', 'marc24', '1254SAFA'),
('prodR9', 'Chaleco Sujetador', 'marc12', 'AASS5489');

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
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` varchar(40) NOT NULL,
  `idCliente` varchar(40) NOT NULL,
  `idProducto` varchar(40) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `idCliente`, `idProducto`, `precio`, `cantidad`, `total`) VALUES
('ven1', 'cli1', 'prod1', 300, 1, 300),
('ven10', 'cli10', 'prod1', 300, 2, 600),
('ven2', 'cli2', 'prod4', 600, 4, 2400),
('ven3', 'cli3', 'prod10', 60, 2, 120),
('ven4', 'cli4', 'prod3', 350, 1, 350),
('ven5', 'cli5', 'prod5', 1100, 2, 2200),
('ven6', 'cli6', 'prod7', 1500, 4, 6000),
('ven7', 'cli7', 'prod2', 250, 1, 250),
('ven8', 'cli8', 'prod8', 1000, 5, 5000),
('ven9', 'cli9', 'prod6', 1000, 1, 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cotraseñasusuarios`
--
ALTER TABLE `cotraseñasusuarios`
  ADD PRIMARY KEY (`idContraseña`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `datoscliente`
--
ALTER TABLE `datoscliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `datospedido`
--
ALTER TABLE `datospedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `datosproducto`
--
ALTER TABLE `datosproducto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `datosproveedor`
--
ALTER TABLE `datosproveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `productoreducido`
--
ALTER TABLE `productoreducido`
  ADD PRIMARY KEY (`claveProductoR`),
  ADD KEY `marcaProductoR` (`marcaProductoR`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idProducto` (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cotraseñasusuarios`
--
ALTER TABLE `cotraseñasusuarios`
  MODIFY `idContraseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cotraseñasusuarios`
--
ALTER TABLE `cotraseñasusuarios`
  ADD CONSTRAINT `cotraseñasusuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `roles` (`idRol`);

--
-- Filtros para la tabla `datospedido`
--
ALTER TABLE `datospedido`
  ADD CONSTRAINT `datospedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `datoscliente` (`idCliente`),
  ADD CONSTRAINT `datospedido_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `datosproducto` (`idProducto`),
  ADD CONSTRAINT `datospedido_ibfk_3` FOREIGN KEY (`idProveedor`) REFERENCES `datosproveedor` (`idProveedor`);

--
-- Filtros para la tabla `datosproducto`
--
ALTER TABLE `datosproducto`
  ADD CONSTRAINT `datosproducto_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `datosproveedor` (`idProveedor`);

--
-- Filtros para la tabla `productoreducido`
--
ALTER TABLE `productoreducido`
  ADD CONSTRAINT `productoreducido_ibfk_1` FOREIGN KEY (`marcaProductoR`) REFERENCES `marcas` (`idMarca`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `datoscliente` (`idCliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `datosproducto` (`idProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
