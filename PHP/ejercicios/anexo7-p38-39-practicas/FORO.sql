-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2021 at 08:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FORO`
--

-- --------------------------------------------------------

--
-- Table structure for table `FOROS`
--

CREATE TABLE `FOROS` (
  `ID_FORO` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MENSAJES`
--

CREATE TABLE `MENSAJES` (
  `ID_MENSAJE` int(11) NOT NULL,
  `ID_FORO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `MENSAJE` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `FECHA` datetime NOT NULL,
  `ID_MENSAJE_RESPUESTA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `USUARIOS`
--

CREATE TABLE `USUARIOS` (
  `ID_USUARIO` int(11) NOT NULL,
  `LOGIN` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MAIL` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FOROS`
--
ALTER TABLE `FOROS`
  ADD PRIMARY KEY (`ID_FORO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- Indexes for table `MENSAJES`
--
ALTER TABLE `MENSAJES`
  ADD PRIMARY KEY (`ID_MENSAJE`),
  ADD KEY `ID_FORO` (`ID_FORO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_MENSAJE_RESPUESTA` (`ID_MENSAJE_RESPUESTA`);

--
-- Indexes for table `USUARIOS`
--
ALTER TABLE `USUARIOS`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `FOROS`
--
ALTER TABLE `FOROS`
  MODIFY `ID_FORO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MENSAJES`
--
ALTER TABLE `MENSAJES`
  MODIFY `ID_MENSAJE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `USUARIOS`
--
ALTER TABLE `USUARIOS`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `FOROS`
--
ALTER TABLE `FOROS`
  ADD CONSTRAINT `foros_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID_USUARIO`);

--
-- Constraints for table `MENSAJES`
--
ALTER TABLE `MENSAJES`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`ID_FORO`) REFERENCES `FOROS` (`ID_FORO`),
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID_USUARIO`),
  ADD CONSTRAINT `mensajes_ibfk_3` FOREIGN KEY (`ID_MENSAJE_RESPUESTA`) REFERENCES `MENSAJES` (`ID_MENSAJE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
