-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-07-2020 a las 20:46:12
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas-hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` text NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `perfil`, `nombre`, `usuario`, `password`, `estado`, `fecha`) VALUES
(1, 'Administrador', 'Hotel Porto bello', 'portobello', '$2a$07$asxx54ahjppf45sd87a5aujnds32V/FMhy.OEhSAq8T6ZZ.ItVK.O', 1, '2020-07-12 23:58:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2020-05-29 18:00:00', '2020-05-29 19:00:00'),
(2, 2, '2020-05-29 18:00:00', '2020-05-29 19:00:00'),
(3, 3, '2020-05-29 18:00:00', '2020-05-29 19:00:00'),
(4, 4, '2020-04-29 18:00:00', '2020-04-29 19:00:00'),
(5, 5, '2020-05-29 18:00:00', '2020-05-29 19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/banner01.jpg', '2020-05-09 16:14:31'),
(2, 'vistas/img/banner/banner02.jpg', '2020-05-09 16:14:31'),
(3, 'vistas/img/banner/banner03.jpg', '2020-05-09 16:14:31'),
(4, 'vistas/img/banner/banner04.jpg', '2020-05-09 16:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` text NOT NULL,
  `continental_alta` float NOT NULL,
  `continental_baja` float NOT NULL,
  `americano_alta` float NOT NULL,
  `americano_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `img`, `descripcion`, `incluye`, `continental_alta`, `continental_baja`, `americano_alta`, `americano_baja`, `fecha`) VALUES
(1, 'habitacion-tipo-suite', '#847059', 'Suite', 'vistas/img/suite/portada.png', 'Es la habitación más lujosa del hotel, ubicadas en los pisos superiores del hotel, con terraza y magníficas vistas al jardín del hotel.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Jacuzzi\", \"icono\": \"fas fa-water\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 160, 140, 200, 160, '2020-07-17 17:19:24'),
(2, 'habitacion-tipo-especial', '#197DB1', 'Especial', 'vistas/img/especial/portada.png', 'Habitación con cama Queen o King size, dotada de una esmerada exquisitez poseen terraza y maravillosas vista a los jardines.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 140, 120, 180, 140, '2020-07-17 17:19:28'),
(3, 'habitacion-tipo-standar', '#2F7D84', 'Standar', 'vistas/img/standar/portada.png', 'Habitaciones clásicas y elegantes, pero con detalles contemporáneos y una decoración exquisita y bastante higiene.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 120, 100, 160, 120, '2020-07-17 17:19:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
CREATE TABLE IF NOT EXISTS `habitaciones` (
  `id_h` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_h` int(11) NOT NULL,
  `estilo` text NOT NULL,
  `galeria` text NOT NULL,
  `video` text NOT NULL,
  `recorrido_virtual` text NOT NULL,
  `descripcion_h` text NOT NULL,
  `fecha_h` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_h`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `estilo`, `galeria`, `video`, `recorrido_virtual`, `descripcion_h`, `fecha_h`) VALUES
(1, 1, 'Oriental', '[\"vistas/img/suite/oriental01.jpg\", \"vistas/img/suite/oriental02.jpg\", \"vistas/img/suite/oriental03.jpg\",\"vistas/img/suite/oriental04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/suite/oriental-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 19:41:43'),
(2, 1, 'Moderna', '[\"vistas/img/suite/moderna01.jpg\", \"vistas/img/suite/moderna02.jpg\", \"vistas/img/suite/moderna03.jpg\",\"vistas/img/suite/moderna04.jpg\"]\r\n\r\n', 'HY-GUZ_ZR0I', 'vistas/img/suite/moderna-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: s/ 180 SOL<br>\r\n					Temporada Alta: s/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:20:26'),
(3, 1, 'Africana', '[\"vistas/img/suite/africana01.jpg\", \"vistas/img/suite/africana02.jpg\", \"vistas/img/suite/africana03.jpg\",\"vistas/img/suite/africana04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/suite/africana-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: s/ 180 SOL<br>\r\n					Temporada Alta: s/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:20:32'),
(4, 1, 'Clásica', '[\"vistas/img/suite/clasica01.jpg\", \"vistas/img/suite/clasica02.jpg\", \"vistas/img/suite/clasica03.jpg\",\"vistas/img/suite/clasica04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/suite/clasica-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:23:13'),
(5, 1, 'Retro', '[\"vistas/img/suite/retro01.jpg\", \"vistas/img/suite/retro02.jpg\", \"vistas/img/suite/retro03.jpg\",\"vistas/img/suite/retro04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/suite/retro-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:21:49'),
(6, 2, 'Oriental', '[\"vistas/img/especial/oriental01.jpg\", \"vistas/img/especial/oriental02.jpg\", \"vistas/img/especial/oriental03.jpg\",\"vistas/img/especial/oriental04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/especial/oriental-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:00'),
(7, 2, 'Moderna', '[\"vistas/img/especial/moderna01.jpg\", \"vistas/img/especial/moderna02.jpg\", \"vistas/img/especial/moderna03.jpg\",\"vistas/img/especial/moderna04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/especial/moderna-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:07'),
(8, 2, 'Africana', '[\"vistas/img/especial/africana01.jpg\", \"vistas/img/especial/africana02.jpg\", \"vistas/img/especial/africana03.jpg\",\"vistas/img/especial/africana04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/especial/africana-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:14'),
(9, 2, 'Árabe', '[\"vistas/img/especial/arabe01.jpg\", \"vistas/img/especial/arabe02.jpg\", \"vistas/img/especial/arabe03.jpg\",\"vistas/img/especial/arabe04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/especial/arabe-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:28'),
(10, 2, 'Romana', '[\"vistas/img/especial/romana01.jpg\", \"vistas/img/especial/romana02.jpg\", \"vistas/img/especial/romana03.jpg\",\"vistas/img/especial/romana04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/especial/romana-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:34'),
(11, 3, 'Caribeña', '[\"vistas/img/standar/caribena01.jpg\", \"vistas/img/standar/caribena02.jpg\", \"vistas/img/standar/caribena03.jpg\",\"vistas/img/standar/caribena04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/standar/caribena-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>\r\n\r\n', '2020-07-17 17:22:43'),
(12, 3, 'Colonial', '[\"vistas/img/standar/colonial01.jpg\", \"vistas/img/standar/colonial02.jpg\", \"vistas/img/standar/colonial03.jpg\",\"vistas/img/standar/colonial04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/standar/colonial-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:49'),
(13, 3, 'Hindú', '[\"vistas/img/standar/hindu01.jpg\", \"vistas/img/standar/hindu02.jpg\", \"vistas/img/standar/hindu03.jpg\",\"vistas/img/standar/hindu04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/standar/hindu-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:22:56'),
(14, 3, 'Marroquí', '[\"vistas/img/standar/marroqui01.jpg\", \"vistas/img/standar/marroqui02.jpg\", \"vistas/img/standar/marroqui03.jpg\",\"vistas/img/standar/marroqui04.jpg\"]', 'HY-GUZ_ZR0I', 'vistas/img/standar/marroqui-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:23:02'),
(15, 3, 'Retro', '[\"vistas/img/standar/retro01.jpg\", \"vistas/img/standar/retro02.jpg\", \"vistas/img/standar/retro03.jpg\",\"vistas/img/standar/retro04.jpg\"]\r\n', 'HY-GUZ_ZR0I', 'vistas/img/standar/retro-360.jpg', '<p>Esta suite de 182 metros cuadrados, con vistas a la ciudad, cuenta con tres dormitorios, todos ellos con camas king y baños en suite. La suite también dispone de servicio de mayordomo, dos salas de estar/comedor y varios balcones con vistas a la ciudad.\r\n					</p>	\r\n\r\n					<p>Con detalles exquisitos, la decoración contemporánea está dominada por un estilo elegante con mobiliario en cuero y paredes blancas que contrastan con piezas en negro, como el amplio escritorio de trabajo o los distinguidos marcos de las ventanas. Revestidos en cristal opaco y diseñados con amplios lavabos, bañeras y duchas de efecto lluvia tropical, los cuartos de baño permiten separar el aseo de adultos y niños. Es posible solicitar camas adicionales para poder alojar hasta a nueve huéspedes.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: S/ 180 SOL<br>\r\n					Temporada Alta: S/ 200 SOL</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: S/ 150.000 SOL<br>\r\n					Temporada Alta: S/ 180.000 SOL</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-07-17 17:23:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `tipo`, `cantidad`, `fecha`) VALUES
(1, 'reservas', 0, '2019-09-24 00:55:26'),
(2, 'testimonios', 3, '2019-09-24 00:55:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

DROP TABLE IF EXISTS `planes`;
CREATE TABLE IF NOT EXISTS `planes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio_alta` float NOT NULL,
  `precio_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `tipo`, `img`, `descripcion`, `precio_alta`, `precio_baja`, `fecha`) VALUES
(1, 'Romántico', 'vistas/img/planes/plan-romantico.png', 'Plan Romántico en el Hotel cerca a la ciudad cuenta con alojamiento para dos personas, decoración con petalos bombas cintas. Siempre es un buen motivo para sorprender a su pareja con una noche llena de momentos inolvidables.', 180, 160, '2020-07-17 17:39:19'),
(2, 'Luna de Miel', 'vistas/img/planes/luna-de-miel.png', 'Comparte el momento de tu luna de miel especial con tu pareja. Este hotel cuenta con el espacio, la calidad, amabilidad y el servicio exclusivo que deseas.', 190, 170, '2020-07-17 17:39:43'),
(3, 'Aventura', 'vistas/img/planes/plan-aventura.png', 'Puerto Maldonado ofrece muchas excursiones de aventura en la selva. Aventúrate en el corazón de la jungla y tendrás la oportunidad de volar a través de las copas de los árboles en una tirolina, caminar a través de un puente de dosel, navegar en kayak a lo largo del poderoso río Madre de Dios y recorrer la extensa selva en bicicleta.', 200, 180, '2020-07-17 17:39:49'),
(4, 'SPA', 'vistas/img/planes/plan-spa.png', 'Disfrute de un momento de relajación en nuestro Spa, donde descubrirá un nuevo concepto en estética. Los servicios son ofrecidos por profesionales altamente calificados y con experiencia, dedicando su tiempo a atender personalmente las necesidades del cuidado de la belleza de sus clientes en las áreas de relajación del spa.', 210, 190, '2020-07-17 17:39:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

DROP TABLE IF EXISTS `recorrido`;
CREATE TABLE IF NOT EXISTS `recorrido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_peq` text NOT NULL,
  `foto_grande` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`id`, `foto_peq`, `foto_grande`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/recorrido/pueblo01a.jpg', 'vistas/img/recorrido/pueblo01b.jpg', 'LAGO SANDOVAL', 'Está dentro de la Reserva de Nacional de Tambopata y es catalogado como unos de los más hermosos y bellos lagos de la amazonia peruana. \"Una obra maestra de la geografía lacustre\".', '2020-07-17 10:25:53'),
(2, 'vistas/img/recorrido/pueblo02a.jpg', 'vistas/img/recorrido/pueblo02b.jpg', 'AMAZON SHELTER', 'El lugar perfecto para aquellos que están pensando en un viaje en familia. Cuatro comunidades nativas de Madre de Dios se juntaron para crear este corredor que ofrece un sinfín de actividades: kayak, playas selváticas, paseos por bosques nativos, paintball, piscina.', '2020-07-17 10:26:04'),
(3, 'vistas/img/recorrido/pueblo03a.png', 'vistas/img/recorrido/pueblo03b.jpg', 'RESERVA TAMBOPATA', 'Empezamos el recorrido por las más importantes áreas naturales que rodean a Puerto Maldonado con la Reserva Nacional de Tambopata, la más cercana a la ciudad.', '2020-07-17 10:26:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_habitacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago_reserva` float NOT NULL,
  `numero_transaccion` text NOT NULL,
  `codigo_reserva` text NOT NULL,
  `descripcion_reserva` text NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_habitacion`, `id_usuario`, `pago_reserva`, `numero_transaccion`, `codigo_reserva`, `descripcion_reserva`, `fecha_ingreso`, `fecha_salida`, `fecha_reserva`) VALUES
(8, 1, 8, 900000, '19680828', '6NJS06V8L', 'Habitación Suite Oriental - Plan Continental - 2 personas', '2020-05-17', '2020-05-20', '2020-05-14 18:11:33'),
(9, 2, 8, 760000, '19680844', 'M1UHK6R50', 'Habitación Suite Moderna - Plan Americano - 2 personas', '2020-05-22', '2020-05-24', '2020-05-14 18:12:53'),
(10, 3, 8, 420000, '19680849', 'YK51N1HAQ', 'Habitación Suite Africana - Plan Romantico - 2 personas', '2020-05-30', '2020-05-31', '2020-06-14 18:13:50'),
(11, 1, 7, 860000, '19680940', '2S7PLNC32', 'Habitación Suite Oriental - Plan Luna de Miel - 2 personas', '2019-05-20', '2020-05-22', '2020-07-17 17:26:05'),
(12, 2, 7, 820000, '19681854', '3UD1XIBEO', 'Habitación Suite Moderna - Plan Aventura - 2 personas', '2020-05-15', '2020-05-17', '2020-07-14 19:33:10'),
(13, 3, 7, 1260000, '19681866', 'WFZIEN8MO', 'Habitación Suite Africana - Plan Romantico - 2 personas', '2020-11-18', '2020-11-21', '2020-07-13 22:01:42'),
(14, 1, 3, 900000, '19681883', '3U2WO6002', 'Habitación Suite Oriental - Plan Continental - 2 personas', '2020-05-27', '2020-05-30', '2020-02-14 19:35:10'),
(15, 2, 3, 860000, '19681896', 'N10L457ZB', 'Habitación Suite Moderna - Plan Luna de Miel - 2 personas', '2020-05-25', '2020-05-27', '2020-05-14 19:36:07'),
(16, 3, 3, 900000, '19681906', 'IMSB2OKGV', 'Habitación Suite Africana - Plan Continental - 2 personas', '2020-06-15', '2020-06-18', '2020-05-23 22:01:29'),
(17, 1, 4, 425000, '19681954', '6VZ4HIZ27', 'Habitación Suite Oriental - Plan SPA - 2 personas', '2020-05-30', '2020-05-31', '2020-06-14 19:39:24'),
(18, 2, 4, 300000, '19681999', 'L5BCTUYGM', 'Habitación Suite Moderna - Plan Continental - 2 personas', '2020-05-17', '2020-05-18', '2020-05-14 19:42:47'),
(19, 3, 4, 1290000, '19682031', 'ACXC0HPO5', 'Habitación Suite Africana - Plan Luna de Miel - 2 personas', '0000-00-00', '0000-00-00', '2020-05-23 22:32:14'),
(20, 1, 3, 760000, '19686161', 'ZLMAOP6C0', 'Habitación Suite Oriental - Plan Americano - 2 personas', '2020-06-01', '2020-06-03', '2020-05-14 23:17:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas2`
--

DROP TABLE IF EXISTS `reservas2`;
CREATE TABLE IF NOT EXISTS `reservas2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas2`
--

INSERT INTO `reservas2` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2020-05-03', '2020-05-05'),
(2, 2, '2020-05-02', '2020-05-05'),
(3, 3, '2020-05-03', '2020-05-05'),
(4, 4, '2020-05-05', '2020-05-07'),
(5, 5, '2020-05-03', '2020-05-05'),
(6, 1, '2020-05-06', '2020-05-07'),
(7, 2, '2020-05-06', '2020-05-08'),
(8, 3, '2020-05-05', '2020-05-05'),
(9, 4, '2020-05-08', '2020-05-10'),
(10, 5, '2020-07-18', '2020-07-20'),
(11, 1, '2020-05-09', '2020-05-12'),
(12, 2, '2020-07-09', '2020-07-13'),
(13, 3, '2020-05-05', '2020-05-10'),
(14, 4, '2020-05-10', '2020-05-11'),
(15, 5, '2020-05-07', '2020-05-09'),
(16, 1, '2020-05-16', '2020-05-17'),
(17, 2, '2020-05-15', '2020-05-16'),
(18, 3, '2020-05-19', '2020-05-21'),
(19, 4, '2020-05-18', '2020-05-19'),
(20, 5, '2020-05-11', '2020-05-15'),
(21, 1, '2020-05-26', '2020-05-28'),
(22, 2, '2020-05-26', '2020-05-28'),
(23, 3, '2020-05-26', '2020-05-28'),
(24, 4, '2020-05-26', '2020-05-28'),
(25, 5, '2020-05-26', '2020-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
CREATE TABLE IF NOT EXISTS `restaurante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`id`, `img`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/restaurante/plato01.png', 'ASADO DE VENADO', '2020-06-07 19:43:20'),
(2, 'vistas/img/restaurante/plato02.png', 'INCHICAPI', '2020-06-07 05:00:00'),
(3, 'vistas/img/restaurante/plato03.png', 'CHAUFA DE CECINA', '2020-06-07 05:00:00'),
(4, 'vistas/img/restaurante/plato04.png', 'TACACHO CON CECINA', '2020-06-07 05:00:00'),
(5, 'vistas/img/restaurante/plato05.png', 'PICURO', '2020-06-07 05:00:00'),
(6, 'vistas/img/restaurante/plato06.png', 'JUANES', '2020-06-07 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

DROP TABLE IF EXISTS `testimonios`;
CREATE TABLE IF NOT EXISTS `testimonios` (
  `id_testimonio` int(11) NOT NULL AUTO_INCREMENT,
  `id_res` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  `id_hab` int(11) NOT NULL,
  `testimonio` text NOT NULL,
  `aprobado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_testimonio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_testimonio`, `id_res`, `id_us`, `id_hab`, `testimonio`, `aprobado`, `fecha`) VALUES
(1, 20, 3, 1, 'Fue una experiencia maravillosa', 1, '2020-05-15 00:35:52'),
(2, 14, 3, 1, 'Siempre quise una Luna de Miel como la que viví en este hotel', 1, '2020-05-15 00:36:05'),
(3, 15, 3, 2, 'La mejor experiencia de mi vida', 1, '2020-05-15 00:36:07'),
(4, 16, 3, 3, 'Me encantó estar en esta habitación.', 1, '2020-05-15 00:36:09'),
(5, 8, 8, 1, 'Super siempre quise estar acá', 1, '2020-05-15 00:36:12'),
(6, 9, 8, 2, 'Estoy muy agradecido con el personal del hotel', 1, '2020-05-15 00:36:14'),
(7, 10, 8, 3, 'La comida maravillosa', 1, '2020-05-15 00:36:16'),
(8, 11, 7, 1, 'Es una experiencia inolvidable', 1, '2020-05-15 00:36:20'),
(9, 12, 7, 2, 'El lugar es de ensueños', 1, '2020-05-15 00:36:22'),
(10, 13, 7, 3, 'Gracias, todo muy bien!', 1, '2020-05-15 00:36:24'),
(11, 17, 4, 1, 'Que belleza de lugar', 1, '2020-07-03 23:28:57'),
(12, 18, 4, 2, 'Volveré con mi familia', 0, '2020-05-23 23:16:47'),
(13, 19, 4, 3, 'Sin lugar a dudas, el mejor hotel de la zona', 1, '2020-06-23 23:23:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_u` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `foto` text NOT NULL,
  `modo` text NOT NULL,
  `verificacion` int(11) NOT NULL,
  `email_encriptado` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_u`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `nombre`, `password`, `email`, `foto`, `modo`, `verificacion`, `email_encriptado`, `fecha`) VALUES
(3, 'Nestor Palacios', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'correotutorialesatualcance@gmail.com', 'vistas/img/usuarios/3/279.png', 'directo', 0, '678ec21f18a39c43b95e93de54d78a93', '2020-07-17 19:43:41'),
(4, 'Felipe Trujillo', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'felipe@hotmail.com', '', 'directo', 1, '8fe863573a42ae1ec12c4d3c1d591c6d', '2020-05-14 17:16:14'),
(7, 'Raul Cerapio', 'null', 'correo.tutorialesatualcance@gmail.com', 'https://lh4.googleusercontent.com/-80gqeIg_Gq8/AAAAAAAAAAI/AAAAAAAAAF4/0_8JQ_8Gffk/s96-c/photo.jpg', 'google', 1, 'null', '2020-07-17 19:42:52'),
(8, 'Richard Centurión', 'null', 'juanustudio@hotmail.com', 'http://graph.facebook.com/10219668435251136/picture?type=large', 'facebook', 1, 'null', '2020-07-17 19:43:10'),
(10, 'Maria del mar', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'maria@gmail.com', '', 'directo', 0, 'c3a724f59d3245b0e166b278f809a9c7', '2020-07-16 10:50:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
