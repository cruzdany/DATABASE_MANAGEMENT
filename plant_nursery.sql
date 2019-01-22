-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2019 a las 22:02:29
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plant_nursery`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decoration_articles`
--

CREATE TABLE `decoration_articles` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `decoration_articles`
--

INSERT INTO `decoration_articles` (`ID`, `NAME`) VALUES
(11, 'Leds in color blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dwarded_plants`
--

CREATE TABLE `dwarded_plants` (
  `ID` int(11) DEFAULT NULL,
  `STORE_CODE` int(11) DEFAULT NULL,
  `PHONE` int(14) DEFAULT NULL,
  `STREET` int(11) DEFAULT NULL,
  `PLACE_NUMBER` int(11) DEFAULT NULL,
  `POSTAL_CODE` int(11) DEFAULT NULL,
  `NEIGHBORHOOD` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dwarded_plants`
--

INSERT INTO `dwarded_plants` (`ID`, `STORE_CODE`, `PHONE`, `STREET`, `PLACE_NUMBER`, `POSTAL_CODE`, `NEIGHBORHOOD`, `CITY`) VALUES
(1, 10, 2147483647, 26, 320, 97654, 'Chenku', 'Mérida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) DEFAULT NULL,
  `RFC` int(11) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `FIRST_LAST_NAME` varchar(30) DEFAULT NULL,
  `SECOND_LAST_NAME` varchar(30) DEFAULT NULL,
  `PHONE` int(14) DEFAULT NULL,
  `INITIAL_DATE` varchar(50) DEFAULT NULL,
  `FINAL_DATE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`ID`, `RFC`, `NAME`, `FIRST_LAST_NAME`, `SECOND_LAST_NAME`, `PHONE`, `INITIAL_DATE`, `FINAL_DATE`) VALUES
(5, 122334, 'Giselle', 'Argaez', 'Vives', 2147483647, 'January 1st 2019', 'Abril 1st 2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garden_accesories`
--

CREATE TABLE `garden_accesories` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `garden_accesories`
--

INSERT INTO `garden_accesories` (`ID`, `NAME`) VALUES
(9, 'Hose');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plant`
--

CREATE TABLE `plant` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plant`
--

INSERT INTO `plant` (`ID`, `NAME`, `DESCRIPTION`) VALUES
(6, 'Nice', 'Outdoor heated area');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `ID` int(11) DEFAULT NULL,
  `PRODUCT_CODE` int(11) DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `STOCK` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_CODE`, `PRICE`, `STOCK`) VALUES
(3, 12, '501', 'Yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request`
--

CREATE TABLE `request` (
  `ID` int(11) DEFAULT NULL,
  `ORDER_NUMBER` int(11) DEFAULT NULL,
  `REQUEST_DATE` varchar(50) DEFAULT NULL,
  `UNITS_NUMBER` int(11) DEFAULT NULL,
  `DISCOUNT` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `request`
--

INSERT INTO `request` (`ID`, `ORDER_NUMBER`, `REQUEST_DATE`, `UNITS_NUMBER`, `DISCOUNT`) VALUES
(4, 13, 'January 20th 2019', 3, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vip_employee_club`
--

CREATE TABLE `vip_employee_club` (
  `ID` int(11) DEFAULT NULL,
  `RFC` int(11) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `FIRST_LAST_NAME` varchar(30) DEFAULT NULL,
  `SECOND_LAST_NAME` varchar(30) DEFAULT NULL,
  `PHONE` int(14) DEFAULT NULL,
  `STREET` int(11) DEFAULT NULL,
  `PLACE_NUMBER` int(11) DEFAULT NULL,
  `POSTAL_CODE` int(11) DEFAULT NULL,
  `NEIGHBORHOOD` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `INITIAL_DATE` varchar(50) DEFAULT NULL,
  `REQUEST_MADE_BY` varchar(100) DEFAULT NULL,
  `NURSERY_PLANT` varchar(50) DEFAULT NULL,
  `REQUESTS_NUMBERS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vip_employee_club`
--

INSERT INTO `vip_employee_club` (`ID`, `RFC`, `NAME`, `FIRST_LAST_NAME`, `SECOND_LAST_NAME`, `PHONE`, `STREET`, `PLACE_NUMBER`, `POSTAL_CODE`, `NEIGHBORHOOD`, `CITY`, `INITIAL_DATE`, `REQUEST_MADE_BY`, `NURSERY_PLANT`, `REQUESTS_NUMBERS`) VALUES
(7, 235645, 'Gerardo', 'Rostro', 'Bello', 2147483647, 248, 800, 97120, 'Pinos', 'Mérida', 'December 1st 2018', 'Giselle Argaez Vives', 'Chenku', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

CREATE TABLE `zone` (
  `ID` int(11) DEFAULT NULL,
  `ZONA_CODE` int(11) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zone`
--

INSERT INTO `zone` (`ID`, `ZONA_CODE`, `NAME`) VALUES
(2, 11, 'North');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
