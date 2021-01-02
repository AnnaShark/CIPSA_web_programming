-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2021 at 08:31 PM
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
-- Database: `Banco`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLIENTES`
--

CREATE TABLE `CLIENTES` (
  `DNI` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NOMBRE` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Cuentas`
--

CREATE TABLE `Cuentas` (
  `N_CUENTA` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `DNI` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SALDO` decimal(10,2) DEFAULT 0.00,
  `INTERES` decimal(3,2) DEFAULT 0.00,
  `APERTURA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `USUARIOS`
--

CREATE TABLE `USUARIOS` (
  `USUARIO` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `CLAVE` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADMINISTRADOR` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLIENTES`
--
ALTER TABLE `CLIENTES`
  ADD PRIMARY KEY (`DNI`);

--
-- Indexes for table `Cuentas`
--
ALTER TABLE `Cuentas`
  ADD PRIMARY KEY (`N_CUENTA`);

--
-- Indexes for table `USUARIOS`
--
ALTER TABLE `USUARIOS`
  ADD PRIMARY KEY (`USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
