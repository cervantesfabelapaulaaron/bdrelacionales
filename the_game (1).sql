-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2026 a las 17:13:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `the game`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`, `descripcion`) VALUES
(5, 'Ritmo', 'Juegos donde la precision en las notas es importante para poder tener una calificacion alta en cada cancion'),
(6, 'Roguelike', 'Juegos de mazmorras donde en cada sala te haces mas fuerte con el pasar de estas al perder, regresas al inicio de este camino'),
(7, 'HackNSlash', 'Juegos de accion donde abundan peleas con una camara en tercera persona y combos que determinan el frenetismo en estos combates'),
(8, 'Supervivencia', 'Juegos donde utilizas habilidades basicas para estar solo o con compañia en un lugar grande para explorar y ponerte a prueba'),
(9, 'Shooter', 'juegos de disparos donde estas solo o en compañia para enfrentarte en peleas de primer o tercer persona en campos reducidos donde todo se decide en combate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_plataforma`
--

CREATE TABLE `juego_plataforma` (
  `id_juego` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL,
  `fecha_disponible` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego_plataforma`
--

INSERT INTO `juego_plataforma` (`id_juego`, `id_plataforma`, `fecha_disponible`) VALUES
(1, 1, '2019-04-12'),
(2, 3, '2022-09-19'),
(3, 4, '2026-03-01'),
(4, 4, '2022-06-22'),
(5, 2, '2026-04-09'),
(6, 1, '2023-06-03'),
(7, 4, '2026-04-30'),
(8, 3, '2022-06-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `fabricante` varchar(80) NOT NULL,
  `anio_lanzamiento` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `nombre`, `fabricante`, `anio_lanzamiento`) VALUES
(1, 'Xbox series S', 'Microsoft', '2020'),
(2, 'Playstation 4', 'Sony', '2013'),
(3, 'Nintendo Switch', 'Nintendo', '2017'),
(4, 'Steam Deck', 'Valve', '2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `desarrolladora` varchar(100) NOT NULL,
  `anio_lanzamiento` decimal(6,2) NOT NULL,
  `precio` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id_juego`, `titulo`, `desarrolladora`, `anio_lanzamiento`, `precio`, `id_genero`) VALUES
(1, 'Devil May Cry 5', 'Capcom', 2019.00, 799, 7),
(2, 'The binding of isaac repentance', 'Edmun McMillen', 2021.00, 1100, 6),
(3, 'Mewgenics', 'Edmun McMillen y Tyler Glaiel', 2026.00, 399, 6),
(4, 'DOOM: The Dark Ages', 'bethesda', 2025.00, 1099, 9),
(5, 'Rain World', 'Videocult', 2017.00, 309, 8),
(6, 'Metal:Hellsinger', 'The Outsiders', 2022.00, 250, 5),
(7, 'Guitar Hero 3', 'Harmonix Music Systems', 2017.00, 400, 5),
(8, 'Bayonneta 3', 'Platinum Games', 2022.00, 1099, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `juego_plataforma`
--
ALTER TABLE `juego_plataforma`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_genero` (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `juego_plataforma`
--
ALTER TABLE `juego_plataforma`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juego_plataforma`
--
ALTER TABLE `juego_plataforma`
  ADD CONSTRAINT `juego_plataforma_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `videojuego` (`id_juego`),
  ADD CONSTRAINT `juego_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id_plataforma`);

--
-- Filtros para la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
