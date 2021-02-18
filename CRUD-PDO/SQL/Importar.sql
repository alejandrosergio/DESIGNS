-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-02-2021 a las 00:22:23
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `MallaVial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestado`
--

CREATE TABLE `tblestado` (
  `est_id` int(30) UNSIGNED NOT NULL,
  `est_nombre` varchar(50) NOT NULL,
  `est_fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbltipo_estado_tip_est_id` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproveedor`
--

CREATE TABLE `tblproveedor` (
  `pro_id` int(30) UNSIGNED NOT NULL,
  `pro_nit` int(10) UNSIGNED NOT NULL,
  `pro_razon_social` varchar(50) NOT NULL,
  `pro_correo` varchar(100) NOT NULL,
  `pro_direccion` varchar(50) NOT NULL,
  `pro_telefono` int(20) UNSIGNED NOT NULL,
  `pro_fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrol`
--

CREATE TABLE `tblrol` (
  `rol_id` int(30) UNSIGNED NOT NULL,
  `rol_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltercero`
--

CREATE TABLE `tbltercero` (
  `ter_id` int(30) UNSIGNED NOT NULL,
  `ter_numero_documento` int(20) UNSIGNED NOT NULL,
  `ter_nombre1` varchar(50) NOT NULL,
  `ter_nombre2` varchar(50) NOT NULL,
  `ter_apellido1` varchar(50) NOT NULL,
  `ter_apellido2` varchar(50) NOT NULL,
  `ter_correo` varchar(100) NOT NULL,
  `ter_direccion` varchar(50) NOT NULL,
  `ter_telefono` int(50) UNSIGNED NOT NULL,
  `ter_fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbltipo_documento_tip_doc_id` int(30) UNSIGNED NOT NULL,
  `tblrol_rol_id` int(30) UNSIGNED NOT NULL,
  `tblestado_est_id` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipo_documento`
--

CREATE TABLE `tbltipo_documento` (
  `tip_doc_id` int(30) UNSIGNED NOT NULL,
  `tip_doc_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipo_estado`
--

CREATE TABLE `tbltipo_estado` (
  `tip_est_id` int(30) UNSIGNED NOT NULL,
  `tip_est_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE `tblusuario` (
  `usu_id` int(30) UNSIGNED NOT NULL,
  `usu_numero_documento` int(20) UNSIGNED NOT NULL,
  `usu_nombre1` varchar(30) NOT NULL,
  `usu_nombre2` varchar(30) NOT NULL,
  `usu_apellido1` varchar(30) NOT NULL,
  `usu_apellido2` varchar(30) NOT NULL,
  `usu_correo` varchar(50) NOT NULL,
  `usu_contraseña` varchar(50) NOT NULL,
  `usu_direccion` varchar(50) NOT NULL,
  `usu_telefono` int(30) UNSIGNED NOT NULL,
  `usu_fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tbltipo_documento_tip_doc_id` int(30) UNSIGNED NOT NULL,
  `tblrol_rol_id` int(30) UNSIGNED NOT NULL,
  `tblestado_est_id` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblestado`
--
ALTER TABLE `tblestado`
  ADD PRIMARY KEY (`est_id`),
  ADD KEY `tbltipo_estado_tip_est_id` (`tbltipo_estado_tip_est_id`);

--
-- Indices de la tabla `tblproveedor`
--
ALTER TABLE `tblproveedor`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indices de la tabla `tblrol`
--
ALTER TABLE `tblrol`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `tbltercero`
--
ALTER TABLE `tbltercero`
  ADD PRIMARY KEY (`ter_id`),
  ADD KEY `tblrol_rol_id` (`tblrol_rol_id`),
  ADD KEY `tblestado_est_id` (`tblestado_est_id`),
  ADD KEY `tbltipo_documento_tip_doc_id` (`tbltipo_documento_tip_doc_id`);

--
-- Indices de la tabla `tbltipo_documento`
--
ALTER TABLE `tbltipo_documento`
  ADD PRIMARY KEY (`tip_doc_id`);

--
-- Indices de la tabla `tbltipo_estado`
--
ALTER TABLE `tbltipo_estado`
  ADD PRIMARY KEY (`tip_est_id`);

--
-- Indices de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD KEY `tblestado_est_id` (`tblestado_est_id`),
  ADD KEY `tbltipo_documento_tip_doc_id` (`tbltipo_documento_tip_doc_id`),
  ADD KEY `tblrol_rol_id` (`tblrol_rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblestado`
--
ALTER TABLE `tblestado`
  MODIFY `est_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblproveedor`
--
ALTER TABLE `tblproveedor`
  MODIFY `pro_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblrol`
--
ALTER TABLE `tblrol`
  MODIFY `rol_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltercero`
--
ALTER TABLE `tbltercero`
  MODIFY `ter_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltipo_documento`
--
ALTER TABLE `tbltipo_documento`
  MODIFY `tip_doc_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltipo_estado`
--
ALTER TABLE `tbltipo_estado`
  MODIFY `tip_est_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `usu_id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblestado`
--
ALTER TABLE `tblestado`
  ADD CONSTRAINT `tblestado_ibfk_1` FOREIGN KEY (`tbltipo_estado_tip_est_id`) REFERENCES `tbltipo_estado` (`tip_est_id`);

--
-- Filtros para la tabla `tbltercero`
--
ALTER TABLE `tbltercero`
  ADD CONSTRAINT `tbltercero_ibfk_1` FOREIGN KEY (`tblrol_rol_id`) REFERENCES `tblrol` (`rol_id`),
  ADD CONSTRAINT `tbltercero_ibfk_2` FOREIGN KEY (`tblestado_est_id`) REFERENCES `tblestado` (`est_id`),
  ADD CONSTRAINT `tbltercero_ibfk_3` FOREIGN KEY (`tbltipo_documento_tip_doc_id`) REFERENCES `tbltipo_documento` (`tip_doc_id`);

--
-- Filtros para la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD CONSTRAINT `tblusuario_ibfk_1` FOREIGN KEY (`tblestado_est_id`) REFERENCES `tblestado` (`est_id`),
  ADD CONSTRAINT `tblusuario_ibfk_2` FOREIGN KEY (`tbltipo_documento_tip_doc_id`) REFERENCES `tbltipo_documento` (`tip_doc_id`),
  ADD CONSTRAINT `tblusuario_ibfk_3` FOREIGN KEY (`tblrol_rol_id`) REFERENCES `tblrol` (`rol_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
