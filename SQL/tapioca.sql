-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2022 at 01:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tapioca`
--

-- --------------------------------------------------------

--
-- Table structure for table `coleccion`
--

CREATE TABLE `coleccion` (
  `id_coleccion` int(255) NOT NULL,
  `anio` int(255) NOT NULL,
  `nombre_coleccion` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `estacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coleccion`
--

INSERT INTO `coleccion` (`id_coleccion`, `anio`, `nombre_coleccion`, `autor`, `estacion`) VALUES
(2, 2023, 'coleccion verano 2023 ', 'marcos fernandez', 'verano'),
(3, 2023, 'coleccion invierno alaska', 'carretin', 'invierno'),
(4, 2023, 'coleccion otonio ', 'carret', 'otonio');

-- --------------------------------------------------------

--
-- Table structure for table `ropa`
--

CREATE TABLE `ropa` (
  `id` int(255) NOT NULL,
  `precio` double DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` tinytext DEFAULT NULL,
  `img` tinytext DEFAULT NULL,
  `id_coleccion_fk` int(255) DEFAULT NULL,
  `id_tipo_fk` int(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ropa`
--

INSERT INTO `ropa` (`id`, `precio`, `nombre`, `descripcion`, `img`, `id_coleccion_fk`, `id_tipo_fk`, `slug`) VALUES
(1, 3400, 'buso gris', 'buso gris ideal para invierno los dias soleados donde hace frio pero no tanto frio', 'images.jpg', 2, 1, 'buso-gris-1'),
(2, 3400, 'buso gris', NULL, 'images.jpg', 3, 1, 'buzo-gtis-2'),
(3, 5000, 'pantalon cargo azul', 'descripcion descriptiva', 'download.jpg', 2, 6, 'panta-azul'),
(7, 6000, 'sweater rojo liso mujer', 'sweater rojo ideal para pegarsela en la pera', 'sweater.rojo.jpg', NULL, NULL, 'sweter-roojo'),
(8, 6000, 'sweater rojo liso mujer', 'sweater rojo ideal para pegarsela en la pera', 'sweater.rojo.jpg', 2, 2, 'sueweter-rojixo');

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`id`, `nombre`) VALUES
(1, 'busos'),
(2, 'sweaters'),
(5, 'remeras'),
(6, 'pantalones');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nombre`, `email`, `passwd`, `rol`) VALUES
(1, 'luciano', 'lulobareiss@gmail.com', '$2y$10$OItr2zoI7Ax/CqnKwWf18OoEa1ooANCC64p/w4V95VIaCXoQ9RMTe', 'admin'),
(3, 'marcos', 'marcos@gmail', '$2y$10$EMqwoTT0KMPIqYvqWByTw.rC8dHlRff2.lcHWJm4NwXyklSPsGS.u', 'admin'),
(8, 'flecha', 'fede@gmail.com', '$2y$10$DmIKxXTM.WXSfJ9aPeRA.up7YDzGPsLWKR7WM/244QQWQZEtpUz.O', 'user'),
(10, 'fechita', 'fede@gmail.comm', '$2y$10$aGXMbTl3ZXbTqz9qib.0CeD40GccS7.uL1E9xNX3KKnF.AdmlKR2i', 'user'),
(11, 'Agus god', 'etemagus@gmail.com', '$2y$10$q7BfJMWbMJbOFsitbVHUY.aR0rOjmWQEvU26FDvx4yeF0HTf5ECYK', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`id_coleccion`);

--
-- Indexes for table `ropa`
--
ALTER TABLE `ropa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_fk` (`id_tipo_fk`),
  ADD KEY `id_coleccion_fk` (`id_coleccion_fk`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `id_coleccion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ropa`
--
ALTER TABLE `ropa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
