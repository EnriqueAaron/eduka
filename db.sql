SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `eduka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `codigo` int(10) NOT NULL AUTO_INCREMENT,
  `nom1` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nom2` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ape1` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ape2` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipdoc` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ndoc` int(10) NOT NULL,
  `sexo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fchnac` date NOT NULL,
  `depnac` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ciudadnac` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `barrio` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `zona` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(10) NOT NULL,
  `eps` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `ips` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `ars` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rh` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `nfchasisben` int(20) NOT NULL,
  `nivelsisben` int(2) NOT NULL,
  `estrato` int(2) NOT NULL,
  `frecursos` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `madrecabfam` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `hijomadcabfam` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `libretamilitar` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `pobvicvolencia` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `fchaexp` date NOT NULL,
  `resguardo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `etnia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nom1acud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nom2acud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ape1acud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ape2acud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `emailacud` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccionacud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telacud` int(10) NOT NULL,
  `parentesco` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tipodocacud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ndocacud` int(10) NOT NULL,
  `grado` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `salon` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `vpension` int(10) NOT NULL,
  `vmatricula` int(10) NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fchaestado` date NOT NULL,
  `gradomatric` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estadomatric` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nomateria` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `ordenimpresion` int(2) NOT NULL,
  `porcentaje` decimal(5,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE IF NOT EXISTS `aulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salon` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `grado` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `jornada` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `sede` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `directorg` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salon` (`salon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='crea salones nuevos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(150) NOT NULL,
  `tdoc` varchar(100) NOT NULL,
  `ndoc` int(10) NOT NULL,
  `fchnac` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `rh` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `especializacion` varchar(50) NOT NULL,
  `escalfon` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE IF NOT EXISTS `sedes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `institucion` varchar(100) NOT NULL,
  `sede` varchar(50) NOT NULL,
  `jornada` varchar(30) NOT NULL,
  `director` varchar(100) NOT NULL,
  `coordinador` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='consolidado de datos de las sedes de la institución.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `perfl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
