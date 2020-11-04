-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 09:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_tbl`
--

CREATE TABLE `article_tbl` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `loca_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_tbl`
--

INSERT INTO `article_tbl` (`a_id`, `loca_id`, `title`, `content`, `status`, `note`) VALUES
(2, 1, 'Student Entry', 'link to other page', 'Private', 'ttt'),
(3, 1, 'Teachers Entry', 'link to teacher entry', 'Public', 'for teacher');

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(2, 'Science and Technology', 'Part of science'),
(4, 'asd', 'asdfg');

-- --------------------------------------------------------

--
-- Table structure for table `location_tb`
--

CREATE TABLE `location_tb` (
  `loca_id` int(10) UNSIGNED NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `note` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tb`
--

INSERT INTO `location_tb` (`loca_id`, `l_name`, `description`, `note`) VALUES
(2, 'Research Department', 'Admin Block\r\nCSE Department', 'Manages Researchesv and Records'),
(3, 'Fee Section', 'Main Gate Near', 'College Fee , Exam Fee ');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `stu_id` int(10) NOT NULL,
  `faculties_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `stu_id`, `faculties_id`, `sub_id`, `miderm`, `final`, `note`) VALUES
(1, 1, 2, 1, 39, 39, 'good'),
(2, 1, 2, 2, 40, 40, 'top score'),
(6, 1, 2, 3, 30, 34, 'good'),
(7, 1, 2, 4, 40, 39, 'top'),
(8, 1, 2, 5, 57, 40, 'good'),
(9, 1, 2, 6, 54, 39, 'good'),
(10, 2, 2, 1, 48, 40, 'good'),
(11, 2, 2, 2, 60, 40, 'good'),
(12, 2, 2, 3, 57, 40, 'good'),
(13, 2, 2, 4, 57, 40, 'good'),
(15, 2, 2, 5, 48, 40, 'good'),
(16, 2, 2, 6, 59, 39, 'good'),
(17, 3, 2, 1, 53, 34, 'good'),
(18, 3, 2, 2, 40, 40, 'good'),
(19, 3, 2, 3, 48, 40, 'good'),
(20, 3, 2, 4, 40, 34, 'good'),
(21, 3, 2, 5, 49, 34, 'good'),
(22, 3, 2, 6, 54, 34, 'good'),
(23, 4, 2, 1, 59, 40, 'good'),
(24, 4, 2, 2, 53, 40, 'good'),
(25, 4, 2, 3, 59, 40, 'good'),
(26, 4, 2, 4, 58, 40, 'good'),
(27, 4, 2, 5, 58, 40, 'good'),
(28, 4, 2, 6, 59, 40, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `faculties_id`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(11, 'Science and Technology', 'Hang', '5', 'web technology', 'html,css,php');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `note`) VALUES
(1, 'Hang', 'Sovann', 'Male', '1985-03-05', 'Kandal Province', 'Phnom Penh', 'Master', 1500, 'No', '015 871 787', 'sovannhang@gmail.com', 'Teacher and Staff'),
(2, 'Pheng', 'Tola', 'Male', '1986-03-08', 'Kompong Cham Province', 'Phnom Penh', 'Bachelor', 1500, 'Yes', '016 572 393', 'tolapheng@gmail.com', 'Teacher and Staff'),
(3, 'Sann', 'Vannthoeun', 'Male', '1990-07-03', 'Kandal Province', 'kankal', 'Bachelor', 1000, 'Yes', '087 666 55 ', 'vannthoeunsann@gmail.com', 'English'),
(4, 'Tang', 'Hay', 'Male', '0000-00-00', 'Kroches', 'Phnom Penh', 'Bachelor', 1000, 'Yes', '099 77 66 33', 'haytang@gmail.com', 'network'),
(5, 'Chi', 'Kim  Y', 'Male', '0000-00-00', 'Phnom Penh', 'Phnom Penh', 'Bachelor', 1500, 'Yes', '097 66 55 423', 'kimychi@gmail.com', 'VB'),
(6, 'Sann', 'Sotherath', 'Male', '1985-02-01', 'Kandal Province', 'Phnom Penh', 'Bachelor', 1300, 'Yes', '012 33 44 55', 'sotherathsann@gmail.com', 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`, `note`) VALUES
(1, 'admin', 'admin', 'creator', 'creator'),
(2, 'everyone', 'viewonly', 'visitor', 'visitor'),
(4, 'vannak', 'vannak', 'creator', 'assignment\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_tbl`
--
ALTER TABLE `article_tbl`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `location_tb`
--
ALTER TABLE `location_tb`
  ADD PRIMARY KEY (`loca_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_tbl`
--
ALTER TABLE `article_tbl`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location_tb`
--
ALTER TABLE `location_tb`
  MODIFY `loca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
