-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 01:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portafolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tm_cursos`
--

CREATE TABLE `tm_cursos` (
  `cur_id` int(11) NOT NULL,
  `cur_title` varchar(150) NOT NULL,
  `cur_subtitle` varchar(150) NOT NULL,
  `cur_img` varchar(50) NOT NULL,
  `cur_url` varchar(300) NOT NULL,
  `cur_destac` int(11) NOT NULL,
  `cur_fech_crea` datetime DEFAULT NULL,
  `cur_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tm_cursos`
--

INSERT INTO `tm_cursos` (`cur_id`, `cur_title`, `cur_subtitle`, `cur_img`, `cur_url`, `cur_destac`, `cur_fech_crea`, `cur_status`) VALUES
(1, 'PHP Y MYSQL Convierte Cualquier template HTML en una Web-APP', 'PHP MYSQL', 'php.jpg', 'https://www.udemy.com/course/php-y-mysql-convierte-cualquier-template-html-en-una-webapp/', 1, '2024-01-15 17:30:11', 1),
(2, 'Login y Registro de Usuarios con PHP y MySql', ' PHP y MySql', 'mysql.jpg', 'https://www.udemy.com/course/login-con-php-jairo-galeas/', 1, '2024-01-15 17:30:24', 1),
(3, 'Javascript Tutorial and Projects Course', 'JS project', 'js.jpg', 'https://www.udemy.com/course/javascript-tutorial-for-beginners-w/', 1, '2024-01-15 17:30:27', 1),
(4, 'Crea un Sistema de Mesa de Ayuda con PHP, MySQL y JS (MVC)', 'HelpDesk, Mesa de Ayuda o Tickets con PHP,MySQL y JS (MVC)', 'mysql-php.jpg', 'https://www.udemy.com/course/crea-un-sistema-de-tickets-helpdesk-con-phpmysql-y-js-mvc/', 0, '2024-01-15 17:30:30', 1),
(5, 'Aprende Laravel paso a paso desde cero - De 0 a 100', 'Domina Laravel y Crea Aplicaciones de Alto Rendimiento con Laravel', 'laravel.jpg', 'https://www.udemy.com/course/aprende-laravel-paso-a-paso-desde-cero-de-0-a-100/', 0, '2024-01-15 17:30:34', 1),
(6, 'Aprende a dominar Git de cero a experto!', 'Domina el mejor software de control de versiones', 'git.jpg', 'https://www.udemy.com/course/aprende-a-dominar-git-de-cero-a-experto/', 1, '2024-01-15 17:30:38', 1),
(7, 'Función \"mail\" de PHP: Aprende a enviar emails con PHP', 'Aprende las herramientas necesarias para enviar emails con PHP y comprobar que tu código funciona correctamente.', 'mail.jpg', 'https://www.udemy.com/course/enviar-email-con-php/', 0, '2024-01-15 17:30:41', 1),
(8, 'Node.js - Creando API con Express y MongoDB (Incl. Deno)', 'Node.js, API REST, Express, MongoDB, JWT, Autenticación, PostMan y Despliegue en Producción - Introducción a Deno', 'node.jpg', 'https://www.udemy.com/course/nodejs-guia-desde-cero/', 0, '2024-01-15 17:30:45', 1),
(9, 'Master en webs Full Stack: Angular, Node, Laravel, Symfony +', 'Desarrollo web fullstack y crea APIs REST con Node.js, Symfony 6, Laravel 10 y webapss con Angular 16 ', 'full.jpg', 'https://www.udemy.com/course/master-en-desarrollo-web-full-stack-angular-node-laravel-symfony/', 1, '2024-01-15 17:30:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_name` varchar(50) NOT NULL,
  `len_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_name`, `len_status`) VALUES
(1, 'PHP', 1),
(2, 'MYSQL', 1),
(3, 'JavaScript', 1),
(4, 'NodeJS', 1),
(5, 'Angular', 1),
(8, 'React', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_name` varchar(150) NOT NULL,
  `sm_icon_1` varchar(50) NOT NULL,
  `sm_icon_2` varchar(50) NOT NULL,
  `sm_ruta_web` varchar(150) NOT NULL,
  `sm_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_name`, `sm_icon_1`, `sm_icon_2`, `sm_ruta_web`, `sm_status`) VALUES
(1, 'facebook', 'fb', 'social_facebook', 'https://www.facebook.com', 1),
(2, 'twitter', 'tw', 'social_twitter', '#', 1),
(3, 'youtube', 'pt', 'social_youtube', 'https://www.youtube.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tm_cursos`
--
ALTER TABLE `tm_cursos`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indexes for table `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tm_cursos`
--
ALTER TABLE `tm_cursos`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
