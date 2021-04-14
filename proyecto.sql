-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2021 a las 18:16:21
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `ts_crate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `habilitados` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `pass`, `ts_crate`, `habilitados`) VALUES
(1, 'AaronTK', '123456789', '2021-04-08 01:01:08', 1),
(2, 'LaliTK', '987654321', '2021-03-29 20:37:00', 1),
(4, 'Prueba1', '1234567', '2021-03-29 20:37:02', 0),
(5, 'TK', '1234', '2021-03-29 20:40:01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `sinopsis` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `precio_original` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `categoria` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `habilitados` tinyint(1) NOT NULL DEFAULT 1,
  `ts_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `sinopsis`, `precio`, `precio_original`, `valoracion`, `categoria`, `habilitados`, `ts_create`) VALUES
(1, 'A dos metros de ti', 'Necesitamos estar cerca de las personas que queremos casi tanto como el aire que respiramos. A Stella Grant le gusta tener el control, a pesar de no poder dominar sus propios pulmones, que la han tenido en el hospital la mayor parte de su vida. ...', 1080, 1199, 5, 'Ficcion', 1, '2021-04-06 18:45:54'),
(2, 'Bajo la misma estrella', 'Dos adolescentes pacientes de cáncer inician un viaje para reafirmar sus vidas y visitar a un escritor solitario en Ámsterdam.', 1214, 1349, 5, 'Novela', 1, '2021-04-06 18:50:15'),
(3, 'Mi corazón en los días grises', 'Aysel y Roman son dos adolescentes que pasan por un momento oscuro. Su encuentro puede llevarlos a acabar con todo... o a empezar de nuevo. ', 1187, 1318, 4, 'Novela', 1, '2021-04-06 18:57:29'),
(4, 'Crimen y Castigo', 'Crimen y castigo​ es una novela de carácter psicológico escrita por el autor ruso Fiódor Dostoyevski.', 3750, 4167, 4, 'Policial', 1, '2021-04-06 18:59:36'),
(5, 'El Codigo Da vinci', 'La mayor conspiración de los últimos 2000 años está a punto de ser desvelada. Robert Langdon recibe una llamada en mitad de la noche: el conservador del museo del Louvre ha sido asesinado en extrañas circunstancias y junto a su cadáver ha aparecido un des', 2674, 2971, 4, 'Misterio', 1, '2021-04-06 19:02:57'),
(6, 'El jugador', 'Esta novela corta retrata el pesimismo del autor, Fiódor Dostoyevski, que a menudo se inspira en su propio dolor como fuente de inspiración literaria. Esta magistral y brillante narrativa arroja una mirada penetrante sobre el personaje ruso cuando se enfr', 874, 971, 4, 'Ficcion', 1, '2021-04-06 19:05:01'),
(7, 'El Principito', 'El principito  trata de la historia de un pequeño príncipe que parte de su asteroide a una travesía por el universo, en la cual descubre la extraña forma en que los adultos ven la vida y comprende el valor del amor y la amistad.', 399, 500, 5, 'Fabula', 1, '2021-04-06 19:09:21'),
(8, 'El Regreso Del Joven Principe', 'El regreso del Joven Príncipe es una historia imaginaria del regreso al planeta Tierra del príncipe que ya no es niño, con una experiencia diferente, pero con la misma visión humanística y espiritual del mundo, sus habitantes, y los valores básicos que lo', 2864, 3182, 5, 'Ficcion', 1, '2021-04-06 19:11:34'),
(9, 'El Tunel', 'El Túnel es una novela que relata la historia del pintor Juan Pablo Castel, un hombre tímido y conservador cuya vida cambia drásticamente luego de conocer a María Iribarne, una mujer que hace cambiar su personalidad drásticamente, convirtiéndose en un hom', 827, 919, 4, 'Novela', 1, '2021-04-06 19:12:57'),
(10, '50 Sombras de Grey', 'Cincuenta sombras de Grey, nos es narrada en primera persona por Anastasia Steele, una estudiante de literatura inglesa. ... El mundo inocente y enamoradizo de Anastasia se romperá al descubrir que Christian esconde una cara oscura y sombría, unas inclina', 999, 1500, 4, 'Novela Erótica ', 1, '2021-04-06 19:14:41'),
(11, '50 Sombras mas oscuras', 'El libro Cincuentas sombras más oscuras es una historia que continua narrando la vida de la bella Anastasia Steele y el apuesto Christian Grey, donde nuevamente retomaran el amor que sienten estos dos bellos personajes, después de haber estado separados p', 999, 1500, 4, 'Novela Erótica ', 1, '2021-04-06 19:17:38'),
(12, 'Cincuenta sombras liberadas', 'Cuando la inexperta estudiante Anastasia Steele conoció al joven, seductor y exitoso empresario Christian Grey, nació entre ellos una sensual relación que cambió sus vidas para siempre. ... Ahora, Ana y Christian lo tienen todo: amor, pasión, intimidad, b', 1499, 2000, 5, 'Novela Erótica ', 1, '2021-04-06 19:19:24'),
(13, 'Grey: Cincuenta sombras contadas por Christian', 'Es una novela erótica de la autora británica E. L. James. ... Describe la relación entre un joven magnate de negocios aficionado al BDSM, Christian Grey, y una chica ingenua recién graduada de la universidad, Anastasia Steele.', 1499, 2000, 5, 'Novela Erótica ', 1, '2021-04-06 19:22:11'),
(14, 'Grey Mas oscuro, cincuenta sombras mas oscuras contadas por grey', 'Intimidada por las peculiares practicas eroticas y los oscuros secretos del atractivo y atormentado empresario Christian Grey, la joven Anastasia Steele decide romper con el y embarcarse en una nueva carrera profesional en una editorial de Seattle. ...', 1499, 2000, 5, 'Novela Erótica ', 1, '2021-04-06 19:24:47'),
(15, 'Iluminados por el fuego', 'El intento de suicidio de un antiguo amigo soldado despierta los recuerdos de un hombre que, con solo 18 años, debió partir rumbo a la guerra de Malvinas, donde fue llevado como recluta para combatir.', 855, 950, 4, 'Bélico ', 1, '2021-04-06 19:31:45'),
(16, 'invisible', 'Esta novela nos cuenta la historia de un joven que despierta en una cama de hospital sin recordar como es que llegó hasta ahí. Pero lo que si recuerda es de los superpoderes que había conseguido antes de su llegada al hospital. El más importante era el po', 2908, 3231, 4, 'Ficcion', 1, '2021-04-06 19:33:17'),
(17, 'La Divina Comedia', 'La Divina comedia representa un compendio de la cultura y el conocimiento medieval, tanto en lo religioso como en lo filosófico, lo científico y lo moral. ... Tres capítulos llamados Infierno, Purgatorio y Paraíso. Cada capítulo está dividido en treinta y', 3480, 3867, 4, 'Epopeya', 1, '2021-04-06 19:35:19'),
(18, 'Bodas De Odio', 'Una historia de pasión e intriga en la época de Juan Manuel de Rosas. En 1847, don Juan Manuel de Rosas gobierna la Confederación Argentina desde Buenos Aires con mano férrea. Algunas provincias se alzan en su contra y forjan una alianza con el fin de der', 1439, 1598, 5, 'Ficcion', 1, '2021-04-06 19:37:09'),
(19, 'Por Trece Razones', 'Clay Jensen, un estudiante de bachillerato, recibe después de clases, un paquete anónimo en la entrada de su casa. Al abrirlo, descubre que se trata de una caja con siete cintas de casete grabadas, a ambas caras, por Hannah Baker, compañera de clase quien', 836, 928, 5, 'Misterio', 1, '2021-04-06 19:38:33'),
(20, 'La biblioteca de media noche ', 'Entre la vida y la muerte hay una biblioteca. Y los estantes de esa biblioteca son infinitos. Cada libro da la oportunidad de probar otra vida que podrías haber vivido y de comprobar cómo habrían cambiado las cosas si hubieras tomado otras decisiones...', 8161, 8661, 5, 'Ciencia Ficción', 1, '2021-04-06 19:41:59'),
(21, 'Rayuela', 'Rayuela es la segunda novela del escritor argentino Julio Cortázar. Escrita en París y publicada por primera vez el 18 de febrero de 1963, constituye una de las obras centrales del boom latinoamericano y de la literatura en español.', 3123, 3470, 4, 'Novela', 1, '2021-04-06 19:43:40'),
(22, 'Un Amor de Verano', 'Con la frescura y desfachatez que caracterizan su escritura, Jazmín Riera nos sumerge en una historia entrañable de ilusiones, desencantos y despertares amorosos entre tablas de surf, fiestas en la playa y recuerdos vividos que jamás se olvidan.', 1017, 1130, 4, 'Novela', 1, '2021-04-06 19:45:01'),
(23, 'Violet y finch', 'Dos adolescentes luchan con las heridas emocionales y físicas de su pasado. Juntos, descubren que hasta los momentos más pequeños pueden ser relevantes.', 1242, 1380, 5, 'Novela', 1, '2021-04-06 19:46:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_imagenes`
--

CREATE TABLE `libros_imagenes` (
  `id` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `uid` varchar(45) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL COMMENT 'referencia de imagenes',
  `ts_crate` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `libros_imagenes`
--

INSERT INTO `libros_imagenes` (`id`, `id_libro`, `uid`, `ts_crate`, `ts_update`) VALUES
(1, 1, '527b9341-b6c2-4645-aa6f-4df556a5d962.png', '2021-04-06 15:45:54', '2021-04-06 15:45:54'),
(2, 2, 'ce41f3ab-e965-459e-9c9e-41e93bed7ab6.jpeg', '2021-04-06 15:50:15', '2021-04-06 15:50:15'),
(3, 3, '6a19ad00-8402-4660-b059-41a7815cf43f.jpeg', '2021-04-06 15:57:29', '2021-04-06 15:57:29'),
(4, 4, '477efd92-9e24-447e-bc77-fa915a8d8d00.jpeg', '2021-04-06 15:59:36', '2021-04-06 15:59:36'),
(5, 5, '7198b0b5-5e90-48eb-b894-5ed8cdfbcedf.jpeg', '2021-04-06 16:02:57', '2021-04-06 16:02:57'),
(6, 6, '7addd1b6-e6f9-443d-ab9a-794e2d8d4a8f.jpeg', '2021-04-06 16:05:02', '2021-04-06 16:05:02'),
(7, 7, '9bfa5943-95bf-45f5-8572-305b058cba2a.jpeg', '2021-04-06 16:09:21', '2021-04-06 16:09:21'),
(8, 8, 'a71392fb-6aba-437c-b734-d1a229ee2638.jpeg', '2021-04-06 16:11:34', '2021-04-06 16:11:34'),
(9, 9, '10b63d2b-c5f3-4c2b-858f-499b57d43db8.jpeg', '2021-04-06 16:12:58', '2021-04-06 16:12:58'),
(10, 10, '855255de-8879-40be-9cf3-79981b22d566.jpeg', '2021-04-06 16:14:42', '2021-04-06 16:14:42'),
(11, 11, '6e172e9b-9ab5-49b7-81ba-7cae4af92f72.jpeg', '2021-04-06 16:17:38', '2021-04-06 16:17:38'),
(12, 12, '8f857fcf-49cd-450c-a1e1-29b21c44626c.jpeg', '2021-04-06 16:19:24', '2021-04-06 16:19:24'),
(13, 13, '9d6d98dc-67ef-4866-9a23-a1eb87449fc1.jpeg', '2021-04-06 16:22:11', '2021-04-06 16:22:11'),
(14, 14, '1a538ec0-1d2e-4493-8f1a-573fbd1aa3ea.jpeg', '2021-04-06 16:24:47', '2021-04-06 16:24:47'),
(15, 15, '1a20882b-26d3-436c-8688-8c56f2549b17.png', '2021-04-06 16:31:45', '2021-04-06 16:31:45'),
(16, 16, 'f43e42e8-000a-4ce2-aca1-168d3b6890ab.jpeg', '2021-04-06 16:33:17', '2021-04-06 16:33:17'),
(17, 17, 'f99cbc8d-eee9-4ae7-941c-da44c2d95311.jpeg', '2021-04-06 16:35:19', '2021-04-06 16:35:19'),
(18, 18, '70f1eac8-a567-49d8-a9cb-d8c849f9b349.png', '2021-04-06 16:37:09', '2021-04-06 16:37:09'),
(19, 19, '35db538b-775a-4e3d-b4ec-d2ae1ef05253.jpeg', '2021-04-06 16:38:34', '2021-04-06 16:38:34'),
(20, 20, '5db3b0eb-4ae8-4ef3-9275-7b29d0145f27.png', '2021-04-06 16:41:59', '2021-04-06 16:41:59'),
(21, 21, 'c03ad18a-891f-4fcd-bc9e-e480875e0529.jpeg', '2021-04-06 16:43:41', '2021-04-06 16:43:41'),
(22, 22, '3427b1b5-cb13-4c39-a210-ae89416a1846.jpeg', '2021-04-06 16:45:01', '2021-04-06 16:45:01'),
(23, 23, '8068a6ec-7795-4592-9183-66c4702e0c7c.jpeg', '2021-04-06 16:46:56', '2021-04-06 16:46:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `habilitado` tinyint(1) NOT NULL DEFAULT 0,
  `mail` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `confirmacionCorreo` varchar(50) COLLATE utf16_spanish2_ci NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `admin`, `habilitado`, `mail`, `confirmacionCorreo`, `ts_create`) VALUES
(9, 'Aaron', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 1, 1, 'aaronthxmas@gmail.com', '797fa14e-4c5a-4a49-91b5-ad5b4da63484', '2021-04-09 19:34:16'),
(12, 'PruebaDeGmail', 'bfe54caa6d483cc3887dce9d1b8eb91408f1ea7a', 0, 0, 'aaronthxmas@gmail.com', '4ddce704-d9c4-48b1-bdf4-d26cf1d214db', '2021-04-10 23:03:58'),
(13, 'Thomas', '69df79bef9287d3bcb8f104a408b06de6a108fd8', 0, 0, 'aaronthomas0027@gmail.com', '3cc77272-1466-4379-9f69-237da8b12e01', '2021-04-13 19:44:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros_imagenes`
--
ALTER TABLE `libros_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `libros_imagenes`
--
ALTER TABLE `libros_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros_imagenes`
--
ALTER TABLE `libros_imagenes`
  ADD CONSTRAINT `libros_imagenes_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
