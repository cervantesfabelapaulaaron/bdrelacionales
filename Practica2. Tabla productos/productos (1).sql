-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:26:29
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Lp Nuevo: The Offspring - Americana (1998) Estándar', 949, 'Universal Music', 'Disco de estudio lanzado el 17 de noviembre de 1998. Edición importada en formato vinilo negro.\r\n\r\nDescuento en la compra de 2 o más discos. Dinos cuáles te interesan para hacer una publicación especial aplicando el descuento.\r\n\r\nSi tienes duda de la edición consulta el código de barras y/o foto de portada trasera. La fecha que usamos como referencia es la salida del disco (no la de la edición).\r\n\r\nFormat: Black Vinyl\r\nRelease: November 17th, 1998\r\nLabel: Universal Music\r\nBarcode: 602577951398\r\n', 1),
(2, 'Lp Nuevo: Megadeth - So Far, So Good... So What! (1988) Estándar', 969, 'Capitol Records', 'Disco de estudio lanzado el 19 de enero de 1988. Edición importada en formato Black Vinyl,\r\n\r\nSi tienes duda de la edición consulta el código de barras y/o foto de portada trasera. La fecha que usamos como referencia es la salida del disco (no la de la edición).\r\n\r\nFormat: Black Vinyl\r\nRelease: January 19th, 1988\r\nLabel: Capitol Records\r\nBarcode: 5099969817014\r\nEdition: 2024\r\n\r\nA1 Into The Lungs Of Hell 3:27\r\nA2 Set The World Afire 5:50\r\nA3 Anarchy In The U.K. 3:00\r\nA4 Mary Jane 4:22\r\nB1 502 3:2', 1),
(3, 'Metallica Ride The Lightning Lp Vinyl Estándar', 1449, 'Universal Musical', 'Ride The Lightning\r\nMetallica\r\nVinyl\r\n-Contenido-\r\n.- 1 LP Con 08 canciones en total.\r\nInformación del contenido:\r\n- Contiene 1 LP de 12 pulgadas NEGRO, con las siguientes canciones.\r\n\r\n• Canciones:\r\n\r\nA1 Fight Fire With Fire\r\nA2 Ride The Lightning\r\nA3 For Whom The Bell Tolls\r\nA4 Fade To Black\r\n\r\nB1 Trapped Under Ice\r\nB2 Escape\r\nB3 Creeping Death\r\nB4 The Call Of Ktulu\r\n\r\n•• KARZOV® es una empresa totalmente Mexicana. Ofrecemos productos y un servicio de calidad certi', 1),
(4, 'Linkin Park - Hybrid Theory Lp Vinilo Gatefold Vinyl Cd', 999, 'Warner Music', 'LINKIN PARK - HYBRID THEORY\r\n\r\nINFORMACIÓN DEL PRODUCTO\r\nCondición: Original, nuevo y sellado de fábrica\r\nContenido: 1 disco\r\nFormato: Vinilo, portada Gatefold (libro)\r\nSello: Warner Music\r\nISBN: 093624941422\r\nFabricado en: Europa\r\nAño: 2001\r\n\r\nPREGUNTAS FRECUENTES\r\n¿Está disponible?\r\n·Sí, todos nuestros productos publicados en Mercado Libre están disponibles.\r\n\r\n¿Es original?\r\n·Sí, este disco es original, nuevo y viene sellado de fábrica.\r\n\r\n¿Cuánto cuesta el envío?\r\n·El envío es gratis a toda ', 1),
(5, 'Soundgarden Badmotorfinger Lp Vinyl', 895, 'UMC', 'Lista de canciones\r\n1. Rusty Cage\r\n2. Outshined\r\n3. Slaves and Bulldozers\r\n4. Jesus Christ Pose\r\n5. Face Pollution\r\n6. Somewhere\r\n7. Searching with My Good Eye Closed\r\n8. Room a Thousand Years Wide\r\n9. Mind Riot\r\n10. Drawing Flies\r\n11. Holy Water\r\n12. New Damage\r\n\r\nSin garantía', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
