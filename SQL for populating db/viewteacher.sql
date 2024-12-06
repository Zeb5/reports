-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reports`
--

-- --------------------------------------------------------

--
-- Structure for view `viewteacher`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewteacher`  AS SELECT `tblusers`.`userid` AS `teacherid`, `tblusers`.`surname` AS `surname`, `tblusers`.`forename` AS `forename`, `tblusers`.`username` AS `username`, `tblusers`.`password` AS `password`, `tblusers`.`gender` AS `gender`, `tblusers`.`house` AS `house`, `tblusers`.`year` AS `year`, `tblusers`.`role` AS `role`, `tblusers`.`title` AS `title` FROM `tblusers` WHERE `tblusers`.`role` = 1 WITH CASCADEDCHECK OPTION  ;

--
-- VIEW `viewteacher`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
