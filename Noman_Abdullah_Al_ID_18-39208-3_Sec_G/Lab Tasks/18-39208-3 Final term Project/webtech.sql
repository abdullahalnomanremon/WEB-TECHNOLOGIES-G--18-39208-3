-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 09:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `studentName` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `studentName`, `grade`, `Course`, `Number`) VALUES
(1, 'noman', 'B+', 'Math', '70'),
(2, 'noman', 'A', 'Physics', '75'),
(3, 'rayhan', 'B+', 'chemistry', '70'),
(4, 'rayhan', 'c+', 'Bangla', '60'),
(5, 'rayhan', 'B', 'English', '65');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `title`, `detail`) VALUES
(16, '2022-08-07', 'Project Summission', 'Ajkayi Ditay Hobe'),
(17, '2022-08-07', 'Matlab', 'Submission Daow'),
(18, '2022-08-07', 'course', 'file');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `usertype` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `image` blob NOT NULL,
  `Course` varchar(255) NOT NULL,
  `address` varchar(30) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `hiredate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`usertype`, `id`, `name`, `password`, `phone`, `email`, `image`, `Course`, `address`, `sex`, `dob`, `hiredate`) VALUES
('teacher', 'teacher-123', 'Mr. Sohag', '123', '01711000000', 'mrsohag@gamil.com', '', 'Mathematics', 'Mirpur', 'male', '1988-12-23', '2016-01-14'),
('teacher', 'teacher-124', 'Salehein', '124', '01822376277', 'salehein@gmail,com', '', 'English', 'uttara', 'male', '1975-12-18', '2001-05-30'),
('teacher', 'teacher-126', 'Sujana', '123', '01823568956', 'sujana@gmail.com', '', 'Physics', 'Savar', 'Male', '1994-01-26', '2016-05-04'),
('teacher', 'teacher-127', 'noman', '123', '01765439871', 'noman@gmail.com', '', 'chemistry', 'Rajshai', 'Male', '1985-02-05', '2016-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com'),
(9, 'student', 'studentoo', '123', 's1@gmail.com'),
(11, 'admin', 'a', 'a', 'a@a.com'),
(12, 'admin', 'teacher', 't', 't@t.com'),
(13, 'teacher', 'teacher', 't', 't@t.com'),
(14, 'admin', 'teacher', '123', 't@t.com'),
(16, 'admin', 'u', 'u', 'u@u.com'),
(17, 'teacher', 'Sir', 'sir', 'sir@sir.com'),
(18, 'admin', 'a', '1234', 'admin@admin.com'),
(19, 'admin', 'a', '1234', 'admin@admin.com'),
(20, 'admin', 's', 's1', 's@s.com'),
(21, 'admin', 'teacher', 't', 't@t.com'),
(22, 'admin', 'admin', 'admin', 'admin@admin.com'),
(23, 'teacher', 't', 'y', 'u@gmail.com'),
(24, 'admin', 'n', 'a', 'n@g.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
