-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:19 PM
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
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userid` int(4) UNSIGNED NOT NULL,
  `surname` varchar(20) NOT NULL,
  `forename` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `house` varchar(20) NOT NULL,
  `year` int(2) NOT NULL,
  `role` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userid`, `surname`, `forename`, `username`, `password`, `gender`, `house`, `year`, `role`) VALUES
(1, 'Lopez', 'Lily', 'lopezl', 'lilypass552', 'F', 'Sadler', 11, 0),
(2, 'Harris', 'Alexander', 'harrisa', 'alexanderpass689', 'M', 'Sadler', 8, 0),
(3, 'Jackson', 'Jacob', 'jacksonj', 'jacobpass775', 'M', 'Laundimer', 9, 0),
(4, 'Young', 'Madison', 'youngm', 'madisonpass343', 'F', 'New House', 13, 0),
(5, 'Young', 'Grace', 'youngg', 'gracepass485', 'F', 'Dryden', 11, 0),
(6, 'Thomas', 'Emily', 'thomase', 'emilypass316', 'F', 'Kirkby', 9, 0),
(7, 'Young', 'Amelia', 'younga', 'ameliapass316', 'F', 'Kirkby', 13, 0),
(8, 'King', 'Ethan', 'kinge', 'ethanpass876', 'M', 'Sidney', 7, 0),
(9, 'Martin', 'Jacob', 'martinj', 'jacobpass601', 'M', 'Fisher', 10, 0),
(10, 'Harris', 'Alexander', 'harrisa1', 'alexanderpass370', 'M', 'Crosby', 11, 0),
(11, 'Martin', 'Sophie', 'martins', 'sophiepass607', 'F', 'Dryden', 12, 0),
(12, 'Smith', 'Harper', 'smithh', 'harperpass534', 'F', 'Laxton', 7, 0),
(13, 'Lopez', 'Lucas', 'lopezl1', 'lucaspass613', 'M', 'Sidney', 8, 0),
(14, 'Smith', 'Hannah', 'smithh1', 'hannahpass138', 'F', 'Wyatt', 12, 0),
(15, 'Young', 'Charlotte', 'youngc', 'charlottepass460', 'F', 'Wyatt', 8, 0),
(16, 'King', 'Oliver', 'kingo', 'oliverpass780', 'M', 'Grafton', 7, 0),
(17, 'Lopez', 'Harper', 'lopezh', 'harperpass853', 'F', 'Wyatt', 11, 0),
(18, 'Walker', 'Joseph', 'walkerj', 'josephpass603', 'M', 'Fisher', 9, 0),
(19, 'Brown', 'Joseph', 'brownj', 'josephpass550', 'M', 'Laxton', 9, 0),
(20, 'Jackson', 'Alexander', 'jacksona', 'alexanderpass422', 'M', 'Sadler', 10, 0),
(21, 'Smith', 'Jacob', 'smithj', 'jacobpass428', 'M', 'Grafton', 8, 0),
(22, 'Hill', 'Aria', 'hilla', 'ariapass564', 'F', 'Dryden', 13, 0),
(23, 'Taylor', 'Chloe', 'taylorc', 'chloepass962', 'F', 'Laxton', 11, 0),
(24, 'King', 'Lily', 'kingl', 'lilypass611', 'F', 'Kirkby', 11, 0),
(25, 'Wright', 'Alexander', 'wrighta', 'alexanderpass867', 'M', 'Sadler', 10, 0),
(26, 'Smith', 'Abigail', 'smitha', 'abigailpass772', 'F', 'Kirkby', 7, 0),
(27, 'Clark', 'Lily', 'clarkl', 'lilypass845', 'F', 'New House', 7, 0),
(28, 'Harris', 'Harper', 'harrish', 'harperpass176', 'F', 'Sanderson', 10, 0),
(29, 'Harris', 'Mason', 'harrism', 'masonpass384', 'M', 'Laundimer', 9, 0),
(30, 'Lewis', 'Lucas', 'lewisl', 'lucaspass976', 'M', 'Grafton', 12, 0),
(31, 'White', 'Noah', 'whiten', 'noahpass622', 'M', 'Crosby', 10, 0),
(32, 'Jackson', 'Jack', 'jacksonj1', 'jackpass443', 'M', 'Bramston', 12, 0),
(33, 'Lewis', 'Sophie', 'lewiss', 'sophiepass754', 'F', 'Laxton', 7, 0),
(34, 'Young', 'Logan', 'youngl', 'loganpass360', 'M', 'Grafton', 12, 0),
(35, 'Anderson', 'Oliver', 'andersono', 'oliverpass498', 'M', 'Laxton', 10, 0),
(36, 'White', 'Joseph', 'whitej', 'josephpass632', 'M', 'Sadler', 8, 0),
(37, 'Brown', 'David', 'brownd', 'davidpass685', 'M', 'Laundimer', 9, 0),
(38, 'Young', 'Michael', 'youngm1', 'michaelpass753', 'M', 'Fisher', 13, 0),
(39, 'Thomas', 'Jack', 'thomasj', 'jackpass572', 'M', 'Laxton', 9, 0),
(40, 'Clark', 'David', 'clarkd', 'davidpass751', 'M', 'Laxton', 10, 0),
(41, 'Martin', 'William', 'martinw', 'williampass548', 'M', 'Laundimer', 8, 0),
(42, 'Harris', 'Ella', 'harrise', 'ellapass128', 'F', 'Dryden', 13, 0),
(43, 'Thomas', 'Chloe', 'thomasc', 'chloepass433', 'F', 'Sadler', 8, 0),
(44, 'Martin', 'Scarlett', 'martins1', 'scarlettpass238', 'F', 'Laxton', 13, 0),
(45, 'Clark', 'Isabella', 'clarki', 'isabellapass479', 'F', 'Laxton', 13, 0),
(46, 'Smith', 'Emily', 'smithe', 'emilypass800', 'F', 'New House', 9, 0),
(47, 'King', 'Henry', 'kingh', 'henrypass596', 'M', 'Sadler', 12, 0),
(48, 'Scott', 'Ava', 'scotta', 'avapass947', 'F', 'Dryden', 11, 0),
(49, 'Lopez', 'Harper', 'lopezh1', 'harperpass760', 'F', 'Sanderson', 11, 0),
(50, 'White', 'Noah', 'whiten1', 'noahpass118', 'M', 'Laundimer', 12, 0),
(51, 'Allen', 'Emily', 'allene', 'emilypass928', 'F', 'Sanderson', 10, 0),
(52, 'Harris', 'Ethan', 'harrise1', 'ethanpass191', 'M', 'Laxton', 11, 0),
(53, 'Anderson', 'Grace', 'andersong', 'gracepass387', 'F', 'Sanderson', 13, 0),
(54, 'Young', 'Harper', 'youngh', 'harperpass919', 'F', 'New House', 10, 0),
(55, 'Lopez', 'Matthew', 'lopezm', 'matthewpass543', 'M', 'Fisher', 12, 0),
(56, 'Taylor', 'Charlotte', 'taylorc1', 'charlottepass180', 'F', 'Wyatt', 9, 0),
(57, 'Clark', 'Liam', 'clarkl1', 'liampass676', 'M', 'Grafton', 7, 0),
(58, 'Martin', 'Charlotte', 'martinc', 'charlottepass547', 'F', 'Wyatt', 8, 0),
(59, 'Walker', 'James', 'walkerj1', 'jamespass665', 'M', 'Laxton', 7, 0),
(60, 'Harris', 'Jack', 'harrisj', 'jackpass732', 'M', 'Laxton', 8, 0),
(61, 'Lewis', 'Mason', 'lewism', 'masonpass227', 'M', 'Crosby', 10, 0),
(62, 'Martin', 'Daniel', 'martind', 'danielpass248', 'M', 'Sadler', 10, 0),
(63, 'Allen', 'Ethan', 'allene1', 'ethanpass792', 'M', 'Bramston', 7, 0),
(64, 'Scott', 'Mason', 'scottm', 'masonpass261', 'M', 'Bramston', 9, 0),
(65, 'Martin', 'Jack', 'martinj1', 'jackpass209', 'M', 'Crosby', 7, 0),
(66, 'Wright', 'Oliver', 'wrighto', 'oliverpass748', 'M', 'Sadler', 12, 0),
(67, 'Scott', 'Hannah', 'scotth', 'hannahpass889', 'F', 'Kirkby', 8, 0),
(68, 'Anderson', 'Isabella', 'andersoni', 'isabellapass125', 'F', 'Laxton', 10, 0),
(69, 'Martin', 'Jacob', 'martinj2', 'jacobpass424', 'M', 'Crosby', 11, 0),
(70, 'Jackson', 'Logan', 'jacksonl', 'loganpass270', 'M', 'Crosby', 10, 0),
(71, 'Taylor', 'Hannah', 'taylorh', 'hannahpass976', 'F', 'Kirkby', 7, 0),
(72, 'Smith', 'Logan', 'smithl', 'loganpass812', 'M', 'Crosby', 13, 0),
(73, 'Martin', 'Ethan', 'martine', 'ethanpass723', 'M', 'Grafton', 11, 0),
(74, 'King', 'Abigail', 'kinga', 'abigailpass281', 'F', 'Laxton', 11, 0),
(75, 'Hill', 'Henry', 'hillh', 'henrypass314', 'M', 'Bramston', 11, 0),
(76, 'Walker', 'Sophie', 'walkers', 'sophiepass156', 'F', 'Sanderson', 11, 0),
(77, 'Brown', 'Daniel', 'brownd1', 'danielpass783', 'M', 'Sadler', 11, 0),
(78, 'Allen', 'William', 'allenw', 'williampass725', 'M', 'Laxton', 9, 0),
(79, 'Lopez', 'Noah', 'lopezn', 'noahpass855', 'M', 'Laxton', 11, 0),
(80, 'Allen', 'Scarlett', 'allens', 'scarlettpass338', 'F', 'Dryden', 13, 0),
(81, 'White', 'Aria', 'whitea', 'ariapass684', 'F', 'Sadler', 12, 0),
(82, 'Clark', 'Sophia', 'clarks', 'sophiapass608', 'F', 'Sadler', 13, 0),
(83, 'Walker', 'Isabella', 'walkeri', 'isabellapass254', 'F', 'Sadler', 7, 0),
(84, 'Clark', 'Sophie', 'clarks1', 'sophiepass489', 'F', 'Laxton', 10, 0),
(85, 'Walker', 'Chloe', 'walkerc', 'chloepass356', 'F', 'Sanderson', 7, 0),
(86, 'White', 'Aria', 'whitea1', 'ariapass902', 'F', 'New House', 7, 0),
(87, 'Brown', 'Ella', 'browne', 'ellapass673', 'F', 'Wyatt', 9, 0),
(88, 'Walker', 'Isabella', 'walkeri1', 'isabellapass184', 'F', 'Dryden', 9, 0),
(89, 'Lopez', 'Harper', 'lopezh2', 'harperpass852', 'F', 'Sanderson', 11, 0),
(90, 'Young', 'Joseph', 'youngj', 'josephpass927', 'M', 'Bramston', 8, 0),
(91, 'Hill', 'William', 'hillw', 'williampass554', 'M', 'Crosby', 7, 0),
(92, 'White', 'Ethan', 'whitee', 'ethanpass263', 'M', 'Laxton', 10, 0),
(93, 'Walker', 'Olivia', 'walkero', 'oliviapass433', 'F', 'New House', 7, 0),
(94, 'Wright', 'Liam', 'wrightl', 'liampass355', 'M', 'Bramston', 13, 0),
(95, 'Anderson', 'Emily', 'andersone', 'emilypass899', 'F', 'Wyatt', 13, 0),
(96, 'Smith', 'Charlotte', 'smithc', 'charlottepass726', 'F', 'Wyatt', 12, 0),
(97, 'Hill', 'Matthew', 'hillm', 'matthewpass699', 'M', 'Sidney', 9, 0),
(98, 'Young', 'Zoe', 'youngz', 'zoepass956', 'F', 'New House', 13, 0),
(99, 'White', 'Chloe', 'whitec', 'chloepass938', 'F', 'New House', 7, 0),
(100, 'Anderson', 'Benjamin', 'andersonb', 'benjaminpass194', 'M', 'Laundimer', 13, 0),
(101, 'Harris', 'Ella', 'harrise2', 'ellapass277', 'F', 'Laxton', 10, 0),
(102, 'Taylor', 'Liam', 'taylorl', 'liampass418', 'M', 'Sadler', 13, 0),
(103, 'Brown', 'Benjamin', 'brownb', 'benjaminpass444', 'M', 'Sidney', 13, 0),
(104, 'Thomas', 'Sophia', 'thomass', 'sophiapass211', 'F', 'Dryden', 12, 0),
(105, 'Wright', 'Ava', 'wrighta1', 'avapass812', 'F', 'Sanderson', 9, 0),
(106, 'King', 'Samuel', 'kings', 'samuelpass142', 'M', 'Bramston', 13, 0),
(107, 'Young', 'Jack', 'youngj1', 'jackpass162', 'M', 'Laxton', 12, 0),
(108, 'Walker', 'Madison', 'walkerm', 'madisonpass562', 'F', 'Laxton', 10, 0),
(109, 'Wright', 'Grace', 'wrightg', 'gracepass656', 'F', 'Sadler', 8, 0),
(110, 'Lewis', 'Abigail', 'lewisa', 'abigailpass636', 'F', 'Laxton', 12, 0),
(111, 'Clark', 'Daniel', 'clarkd1', 'danielpass206', 'M', 'Sidney', 13, 0),
(112, 'Smith', 'Lucas', 'smithl1', 'lucaspass373', 'M', 'Crosby', 12, 0),
(113, 'Allen', 'Daniel', 'allend', 'danielpass277', 'M', 'Laundimer', 12, 0),
(114, 'Lewis', 'Grace', 'lewisg', 'gracepass649', 'F', 'Sadler', 7, 0),
(115, 'Walker', 'Sophia', 'walkers1', 'sophiapass560', 'F', 'Kirkby', 7, 0),
(116, 'Lopez', 'Ava', 'lopeza', 'avapass238', 'F', 'Dryden', 11, 0),
(117, 'Brown', 'Daniel', 'brownd2', 'danielpass760', 'M', 'Grafton', 13, 0),
(118, 'Wright', 'Ella', 'wrighte', 'ellapass480', 'F', 'Dryden', 10, 0),
(119, 'Jackson', 'Oliver', 'jacksono', 'oliverpass726', 'M', 'Grafton', 10, 0),
(120, 'Martin', 'Sophia', 'martins2', 'sophiapass350', 'F', 'Kirkby', 10, 0),
(121, 'Clark', 'Samuel', 'clarks2', 'samuelpass991', 'M', 'Laundimer', 12, 0),
(122, 'Harris', 'Chloe', 'harrisc', 'chloepass630', 'F', 'Dryden', 11, 0),
(123, 'Clark', 'Noah', 'clarkn', 'noahpass841', 'M', 'Grafton', 13, 0),
(124, 'Hill', 'Hannah', 'hillh1', 'hannahpass868', 'F', 'New House', 8, 0),
(125, 'Clark', 'Lily', 'clarkl2', 'lilypass481', 'F', 'Dryden', 7, 0),
(126, 'Wright', 'Samuel', 'wrights', 'samuelpass397', 'M', 'Sidney', 12, 0),
(127, 'Hill', 'Hannah', 'hillh2', 'hannahpass349', 'F', 'Kirkby', 11, 0),
(128, 'King', 'Ella', 'kinge1', 'ellapass162', 'F', 'Dryden', 10, 0),
(129, 'Thomas', 'Samuel', 'thomass1', 'samuelpass193', 'M', 'Laxton', 9, 0),
(130, 'Wright', 'Olivia', 'wrighto1', 'oliviapass712', 'F', 'Dryden', 10, 0),
(131, 'Hill', 'Sophie', 'hills', 'sophiepass665', 'F', 'Dryden', 11, 0),
(132, 'Clark', 'William', 'clarkw', 'williampass504', 'M', 'Fisher', 7, 0),
(133, 'Harris', 'Amelia', 'harrisa2', 'ameliapass274', 'F', 'Sadler', 10, 0),
(134, 'Scott', 'Aria', 'scotta1', 'ariapass395', 'F', 'Dryden', 10, 0),
(135, 'Lopez', 'Daniel', 'lopezd', 'danielpass699', 'M', 'Laxton', 12, 0),
(136, 'Taylor', 'Oliver', 'tayloro', 'oliverpass972', 'M', 'Sadler', 9, 0),
(137, 'Clark', 'Jack', 'clarkj', 'jackpass210', 'M', 'Laxton', 12, 0),
(138, 'Lopez', 'Mason', 'lopezm1', 'masonpass895', 'M', 'Crosby', 7, 0),
(139, 'Clark', 'Madison', 'clarkm', 'madisonpass444', 'F', 'Wyatt', 13, 0),
(140, 'Walker', 'Charlotte', 'walkerc1', 'charlottepass164', 'F', 'Sadler', 8, 0),
(141, 'Young', 'Alexander', 'younga1', 'alexanderpass758', 'M', 'Laundimer', 7, 0),
(142, 'Lewis', 'Ava', 'lewisa1', 'avapass785', 'F', 'New House', 12, 0),
(143, 'Scott', 'Abigail', 'scotta2', 'abigailpass786', 'F', 'Sadler', 10, 0),
(144, 'Lewis', 'Noah', 'lewisn', 'noahpass412', 'M', 'Laxton', 13, 0),
(145, 'Scott', 'Jacob', 'scottj', 'jacobpass177', 'M', 'Sidney', 11, 0),
(146, 'Hill', 'Oliver', 'hillo', 'oliverpass759', 'M', 'Crosby', 8, 0),
(147, 'Harris', 'Isabella', 'harrisi', 'isabellapass429', 'F', 'Sanderson', 11, 0),
(148, 'King', 'Abigail', 'kinga1', 'abigailpass402', 'F', 'Laxton', 11, 0),
(149, 'Harris', 'Henry', 'harrish1', 'henrypass419', 'M', 'Laxton', 7, 0),
(150, 'Taylor', 'Matthew', 'taylorm', 'matthewpass185', 'M', 'Fisher', 13, 0),
(151, 'Wright', 'Ethan', 'wrighte1', 'ethanpass553', 'M', 'Laxton', 9, 0),
(152, 'Clark', 'Oliver', 'clarko', 'oliverpass223', 'M', 'Crosby', 11, 0),
(153, 'Thomas', 'Olivia', 'thomaso', 'oliviapass440', 'F', 'Sadler', 8, 0),
(154, 'Wright', 'Ethan', 'wrighte2', 'ethanpass103', 'M', 'Bramston', 13, 0),
(155, 'White', 'Scarlett', 'whites', 'scarlettpass482', 'F', 'Wyatt', 9, 0),
(156, 'Wright', 'Liam', 'wrightl1', 'liampass365', 'M', 'Sadler', 9, 0),
(157, 'King', 'James', 'kingj', 'jamespass346', 'M', 'Sadler', 13, 0),
(158, 'Brown', 'Lucas', 'brownl', 'lucaspass653', 'M', 'Crosby', 11, 0),
(159, 'Scott', 'Aria', 'scotta3', 'ariapass748', 'F', 'Dryden', 8, 0),
(160, 'Smith', 'Mason', 'smithm', 'masonpass954', 'M', 'Sadler', 7, 0),
(161, 'Thomas', 'Isabella', 'thomasi', 'isabellapass481', 'F', 'New House', 7, 0),
(162, 'Wright', 'Hannah', 'wrighth', 'hannahpass223', 'F', 'Laxton', 10, 0),
(163, 'Clark', 'Mason', 'clarkm1', 'masonpass374', 'M', 'Sadler', 12, 0),
(164, 'Allen', 'Mia', 'allenm', 'miapass574', 'F', 'Wyatt', 10, 0),
(165, 'Lewis', 'Scarlett', 'lewiss1', 'scarlettpass683', 'F', 'Wyatt', 13, 0),
(166, 'Jackson', 'Oliver', 'jacksono1', 'oliverpass588', 'M', 'Laxton', 7, 0),
(167, 'Young', 'Madison', 'youngm2', 'madisonpass947', 'F', 'Wyatt', 9, 0),
(168, 'Harris', 'Lily', 'harrisl', 'lilypass247', 'F', 'Kirkby', 10, 0),
(169, 'Clark', 'Madison', 'clarkm2', 'madisonpass373', 'F', 'Sadler', 10, 0),
(170, 'Anderson', 'Grace', 'andersong1', 'gracepass587', 'F', 'New House', 7, 0),
(171, 'King', 'Daniel', 'kingd', 'danielpass551', 'M', 'Sidney', 10, 0),
(172, 'Clark', 'Jack', 'clarkj1', 'jackpass415', 'M', 'Laxton', 7, 0),
(173, 'Hill', 'Michael', 'hillm1', 'michaelpass493', 'M', 'Fisher', 12, 0),
(174, 'Smith', 'Alexander', 'smitha1', 'alexanderpass712', 'M', 'Bramston', 8, 0),
(175, 'King', 'Noah', 'kingn', 'noahpass438', 'M', 'Crosby', 12, 0),
(176, 'Thomas', 'Grace', 'thomasg', 'gracepass836', 'F', 'Kirkby', 8, 0),
(177, 'Wright', 'David', 'wrightd', 'davidpass571', 'M', 'Crosby', 10, 0),
(178, 'Young', 'James', 'youngj2', 'jamespass756', 'M', 'Fisher', 10, 0),
(179, 'Scott', 'Sophia', 'scotts', 'sophiapass922', 'F', 'Kirkby', 10, 0),
(180, 'Lopez', 'Jacob', 'lopezj', 'jacobpass226', 'M', 'Sadler', 13, 0),
(181, 'Young', 'Liam', 'youngl1', 'liampass562', 'M', 'Sidney', 11, 0),
(182, 'Jackson', 'Abigail', 'jacksona1', 'abigailpass597', 'F', 'Kirkby', 10, 0),
(183, 'Harris', 'James', 'harrisj1', 'jamespass450', 'M', 'Crosby', 8, 0),
(184, 'Walker', 'Mia', 'walkerm1', 'miapass840', 'F', 'Dryden', 10, 0),
(185, 'Walker', 'Noah', 'walkern', 'noahpass759', 'M', 'Sadler', 13, 0),
(186, 'Lewis', 'Daniel', 'lewisd', 'danielpass718', 'M', 'Laundimer', 13, 0),
(187, 'Wright', 'Alexander', 'wrighta2', 'alexanderpass474', 'M', 'Grafton', 8, 0),
(188, 'Lewis', 'Aria', 'lewisa2', 'ariapass890', 'F', 'Kirkby', 9, 0),
(189, 'Walker', 'Sophia', 'walkers2', 'sophiapass990', 'F', 'Wyatt', 8, 0),
(190, 'Allen', 'Zoe', 'allenz', 'zoepass177', 'F', 'Sanderson', 7, 0),
(191, 'Jackson', 'Sophie', 'jacksons', 'sophiepass939', 'F', 'Kirkby', 10, 0),
(192, 'Thomas', 'William', 'thomasw', 'williampass502', 'M', 'Crosby', 12, 0),
(193, 'Thomas', 'Sophie', 'thomass2', 'sophiepass286', 'F', 'Sanderson', 11, 0),
(194, 'King', 'Emily', 'kinge2', 'emilypass775', 'F', 'Dryden', 11, 0),
(195, 'Anderson', 'Jacob', 'andersonj', 'jacobpass895', 'M', 'Sadler', 9, 0),
(196, 'Allen', 'Ethan', 'allene2', 'ethanpass822', 'M', 'Laundimer', 7, 0),
(197, 'Lopez', 'Lily', 'lopezl2', 'lilypass990', 'F', 'Kirkby', 12, 0),
(198, 'Walker', 'Matthew', 'walkerm2', 'matthewpass603', 'M', 'Fisher', 8, 0),
(199, 'Hill', 'Henry', 'hillh3', 'henrypass779', 'M', 'Grafton', 7, 0),
(200, 'Thomas', 'Alexander', 'thomasa', 'alexanderpass186', 'M', 'Laxton', 12, 0),
(201, 'Blackburn', 'Zebedee', 'blackburnz', 'password1', 'M', 'Sidney', 12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username_userid` (`username`,`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userid` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
