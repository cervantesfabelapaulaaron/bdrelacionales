-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2026 a las 16:48:52
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
-- Base de datos: `bookface`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 3, 2, 'Yo se que leiste esto @GabrielUltrakill', '2018-01-23 10:26:28'),
(2, 1, 1, 'La informacion es algo de humanidades 10 de 10', '2025-06-19 09:21:28'),
(3, 10, 5, 'Mejor paga la pencion de Nero', '2019-06-30 09:29:49'),
(4, 7, 5, 'Ninguno sirve en verdad, ambos estan mal', '2019-07-09 14:31:20'),
(5, 8, 4, 'cinema total', '2026-05-27 10:25:31'),
(6, 2, 1, 'ya apagala wey', '2025-04-24 03:27:30'),
(7, 5, 3, '300 preguntas para quien lo hizo que ya se quienes son pero no dire', '2026-03-31 20:14:40'),
(8, 9, 3, 'Me cae que reprueban siempre solos', '2026-03-08 10:20:27'),
(9, 4, 1, 'Te ardes mucho', '2019-03-21 14:41:34'),
(10, 6, 1, 'Pesimo gusto', '2026-03-24 11:14:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado`) VALUES
(1, '#bullinoso', '2026-04-09'),
(2, '#sos', '2026-04-14'),
(3, '#turururu', '2026-04-26'),
(4, '#hashtag', '2026-04-29'),
(5, '#NOtolife', '2026-04-12'),
(6, '#informacion', '2026-04-10'),
(7, '#humanidades', '2026-04-27'),
(8, '#tiendadedoñacarmen', '0000-00-00'),
(9, '#huevo', '2026-04-23'),
(10, '#sus', '2026-04-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 1, 'Es informacion que me llego @doomentio', 'https://static.wikia.nocookie.net/youtubepedia/images/d/d1/Swm.jpg/revision/latest?cb=20200120201652&path-prefix=es', '2023-12-12 06:33:46', 326),
(2, 1, 'Nada apa estoy aca en la computadora', 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89baa54-41f3-4e08-80f9-2c8f9695892f/ddhm0xw-fa233b3f-cda4-4c62-981c-6527ea36ac73.png/v1/fill/w_559,h_639/super_wario_man_by_thenewdanieldeviant_ddhm0xw-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciO', '2024-02-12 09:48:52', 456),
(3, 2, 'Ahh... libre al fin. ¡Oh @GabrielUltrakill, ahora amanece tu ajuste de cuentas, y tu sangre BRILLARÁ ante los templos del Hombre! Criatura de Acero, mi gratitud hacia ti por mi libertad. ¡Pero los crímenes que tu especie ha cometido contra la humanidad NO se olvidan! Y tu castigo... es la MUERTE.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNOX3ydV-Fqf07UMPL6IRLnnqWZiLLOWDnFw&s', '2025-02-18 12:00:00', 999),
(4, 2, 'Perdónenme, hijos míos, porque he fallado en traerles la salvación de este mundo frío y oscuro...', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBUQEhAQFRUVFRUVFRUVFRUVDxUQFRUXFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAOEA4QMBIgACEQEDEQH/', '2026-04-17 14:23:40', 2000),
(5, 3, 'Niños bullinosos quien esta haciendo dibujos en paint cuando deberian trabajar', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpoe1KIZ7zSsyOevLPlkfmQMz8QQg_qu6J-A&s', '2026-04-29 12:30:00', 201),
(6, 3, 'Revisando aqui los portafolios de mis alumnos, todos malos y mal organizados', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEp5mNAnwsrKGpybkSLbg98Pqksd9Znm64sQ&s', '2026-04-17 11:40:00', 130),
(7, 4, 'Imagen de mi hermano y yo jugando con poca fuerza el no sabe que solo uso 0.0000000000000000000001 de mi poder', 'https://png.pngtree.com/thumb_back/fw800/background/20250930/pngtree-epic-wizard-duel-of-blue-and-orange-magic-under-stormy-sky-image_19709111.webp', '2026-01-12 11:22:25', 100000),
(8, 4, 'Las humanidades son un increible concepto para descubrir quienes somos, ademas mis estudiantes les agrada', 'https://i.pinimg.com/originals/64/a6/2c/64a62cf505ef81cfb00041cb74a01c6b.jpg', '2026-04-17 15:08:37', 1000000),
(9, 5, 'Nomas despierto y tengo que ver la cara de mi hermano, foolish', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRggaIajdczmMaeUGSbXLbHdHKBI5X8K2LBbA&s', '2018-03-22 14:34:20', 2),
(10, 5, 'Foolish dante, necesito mas poder', 'https://preview.redd.it/should-i-put-the-plastic-chair-in-vergil-v0-jtdof2fd54zd1.jpeg?auto=webp&s=0bafa09b3f2f2f3faa16e02f079feab0905a2d50', '2026-04-17 13:59:59', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pud_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pud_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'Warioman', 'elwarioman777@gmail.com', 'como si te enseñan un niño y dices, esta bonito, pero en tu mente, no piensas eso, pero si dices pesimo gusto, se oye feo', '2018-02-22'),
(2, 'Minos Prime', 'dakingoflustminos@gmail.com', 'Ah, free at last', '2021-04-20'),
(3, 'ibarragameplays', 'ibarradabossofproga@hotmail.com', 'leer esta descripcion da 20 pregunta\r\n\r\n(entregar portafolios hoy)', '1696-02-09'),
(4, 'Enoc', 'XxenokeesculturaxX@gmail.com', 'Hola jovenes soi Enoc\r\nProfesiones:Profesor,mago,dios del mundo antiguo', '2000-01-01'),
(5, 'Vergil Sparda', 'noturisenofcourse@gmail.com', 'foolish dante', '2019-03-08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `pud_id` (`pud_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pud_id` (`pud_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pud_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pud_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
