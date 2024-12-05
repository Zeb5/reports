-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:21 PM
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
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `subjectid` int(4) UNSIGNED NOT NULL,
  `subjectname` varchar(30) NOT NULL,
  `teacher` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`subjectid`, `subjectname`, `teacher`) VALUES
(39, 'Accounting', 'Mrs Phillips'),
(31, 'Anthropology', 'Mrs Hall'),
(12, 'Archaeology', 'Dr Lewis'),
(40, 'Architecture', 'Mr Green'),
(1, 'Art', 'Ms Johnson'),
(7, 'Astrophysics', 'Mr Harris'),
(24, 'Biology', 'Mr Lee'),
(23, 'Biotechnology', 'Dr Lewis'),
(5, 'Botany', 'Mrs Edwards'),
(28, 'Business Studies', 'Mrs Hall'),
(50, 'Chemistry', 'Dr Campbell'),
(42, 'Classical Civilisation', 'Mr Parker'),
(22, 'Computer Science', 'Mr Hill'),
(30, 'Creative Writing', 'Mrs Baker'),
(4, 'Cybersecurity', 'Ms Evans'),
(3, 'Data Science', 'Mr Hill'),
(49, 'Design Technology', 'Mrs Baker'),
(32, 'Drama', 'Mr Smith'),
(2, 'Economics', 'Mr Roberts'),
(44, 'Engineering', 'Mr Parker'),
(33, 'English Literature', 'Dr Allen'),
(20, 'Environmental Science', 'Dr Allen'),
(6, 'Film Studies', 'Mr Harris'),
(46, 'French', 'Dr Nelson'),
(34, 'Genetics', 'Mrs Brown'),
(36, 'Geography', 'Ms Walker'),
(18, 'German', 'Mrs Wright'),
(21, 'Graphic Design', 'Mrs Edwards'),
(37, 'Health and Social Care', 'Mr Young'),
(16, 'History', 'Dr Taylor'),
(11, 'Journalism', 'Ms Thomas'),
(10, 'Latin', 'Ms Adams'),
(38, 'Law', 'Mr Harris'),
(51, 'Linguistics', 'Dr White'),
(15, 'Marine Biology', 'Dr Allen'),
(25, 'Mathematics', 'Mr Smith'),
(9, 'Media Studies', 'Mrs Baker'),
(29, 'Music', 'Mr Anderson'),
(19, 'Oceanography', 'Dr Scott'),
(48, 'Philosophy', 'Dr Lewis'),
(47, 'Photography', 'Ms Carter'),
(8, 'Physical Education', 'Dr White'),
(13, 'Physics', 'Mrs Mitchell'),
(41, 'Politics', 'Mr Green'),
(26, 'Psychology', 'Mrs Jackson'),
(27, 'Robotics', 'Mrs Brown'),
(35, 'Sociology', 'Ms Carter'),
(14, 'Spanish', 'Mrs Hall'),
(17, 'Statistics', 'Dr Allen'),
(43, 'World Religions', 'Mrs Brown'),
(45, 'Zoology', 'Mrs Clark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`subjectid`),
  ADD UNIQUE KEY `subjectname_teacher` (`subjectname`,`teacher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `subjectid` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
