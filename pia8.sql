-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 19:49:33
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pia8`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crear_cuenta`
--

CREATE TABLE `crear_cuenta` (
  `Id_Usuario` int(11) NOT NULL,
  `documento_identidad` int(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `crear_cuenta`
--

INSERT INTO `crear_cuenta` (`Id_Usuario`, `documento_identidad`, `Nombre`, `Apellido`, `Usuario`, `Correo`, `Password`) VALUES
(3, 0, 'Andres', 'Guerra', 'aguerra', 'andres@gmail.com', '123456'),
(5, 0, 'Juan Jose', 'Duque Arango', 'Duque', 'juanjoseduquearango@pascualbravo.edu.co', '123456'),
(7, 0, 'andres', 'mejia', 'amejia', 'andres.mejia@pascualbravo.edu.co', '123456'),
(8, 111111, 'Pepe', 'Martinez', 'Pepe', 'pepe@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_test`
--

CREATE TABLE `post_test` (
  `id-pre` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dolores_cabeza` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `nervioso` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `siente_triste` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `llora_usted` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `desempeñar` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `util_persona` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `sustancias` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `conforme_fisico` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `cuesta_decir` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `logrado_exitos` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `gustaria_forma` enum('Me acepto tal y como soy, con lo bueno y con lo malo','Algo cambiaría','Cambiaría bastantes cosas de mi persona','') CHARACTER SET utf8mb4 NOT NULL,
  `alguien_forma` enum('Entiendo que no puedo gustar a todo el mundo y por ello no me afecta','Dependiendo de quién venga si me puede afectar','Me afecta demasiado','') CHARACTER SET utf8mb4 NOT NULL,
  `quedar_bloqueado` enum('Nunca, me da igual lo que puedan pensar los demás','En ocasiones','Prefiero no opinar','') CHARACTER SET utf8mb4 NOT NULL,
  `sirvio_algo` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pretest`
--

CREATE TABLE `pretest` (
  `id-pre` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dolores_cabeza` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `nervioso` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `siente_triste` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `llora_usted` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `desempeñar` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `util_persona` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `sustancias` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `conforme_fisico` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `cuesta_decir` enum('si','no','','') CHARACTER SET utf8mb4 NOT NULL,
  `logrado_exitos` enum('Creo que todo lo que he hecho en mi vida de una u otra forma es un éxito','Algunos','No, solo tengo fracasos','') CHARACTER SET utf8mb4 NOT NULL,
  `gustaria_forma` enum('Me acepto tal y como soy, con lo bueno y con lo malo','Algo cambiaría','Cambiaría bastantes cosas de mi persona','') CHARACTER SET utf8mb4 NOT NULL,
  `alguien_critica` enum('Entiendo que no puedo gustar a todo el mundo y por ello no me afecta','Dependiendo de quién venga si me puede afectar','Me afecta demasiado','') NOT NULL,
  `quedar_bloqueado` enum('Nunca, me da igual lo que puedan pensar los demás','En ocasiones','Prefiero no opinar','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `crear_cuenta`
--
ALTER TABLE `crear_cuenta`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `post_test`
--
ALTER TABLE `post_test`
  ADD PRIMARY KEY (`id-pre`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `pretest`
--
ALTER TABLE `pretest`
  ADD PRIMARY KEY (`id-pre`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `crear_cuenta`
--
ALTER TABLE `crear_cuenta`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `post_test`
--
ALTER TABLE `post_test`
  MODIFY `id-pre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pretest`
--
ALTER TABLE `pretest`
  MODIFY `id-pre` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `post_test`
--
ALTER TABLE `post_test`
  ADD CONSTRAINT `post_test_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `crear_cuenta` (`Id_Usuario`);

--
-- Filtros para la tabla `pretest`
--
ALTER TABLE `pretest`
  ADD CONSTRAINT `pretest_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `crear_cuenta` (`Id_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
