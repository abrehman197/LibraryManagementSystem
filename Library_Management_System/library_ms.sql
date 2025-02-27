-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2025 at 06:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(250) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'JAVA', 'AUTHOR NAME', 5),
(2, 'PYTHON', 'AUTHOR NAME', 4),
(3, 'NODE', 'AUTHOR NAME', 7),
(4, 'JAVASCRIPT', 'AUTHOR NAME', 8),
(5, 'REACT', 'AUTHOR NAME', 1),
(6, 'SOFTWARE', 'AUTHOR', 4);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(150) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `status`) VALUES
(8, 2, 'PYTHON', 1, 'Ahmad', '2025-02-24', '2025-02-25', 'Returned'),
(9, 3, 'NODE', 2, 'Zuraiz', '2025-02-24', '2025-02-26', 'Returned'),
(11, 5, 'REACT', 1, 'Ahmad', '2025-02-25', '2025-02-26', 'Returned'),
(12, 3, 'NODE', 1, 'Ahmad', '2025-02-25', '2025-02-27', 'Returned'),
(13, 3, 'NODE', 5, 'Aoun', '2025-02-25', '2025-02-27', 'Returned'),
(14, 5, 'REACT', 3, 'Ibrahim', '2025-02-16', '2025-02-18', 'Pending'),
(15, 5, 'REACT', 2, 'Zuraiz', '2025-02-16', '2025-02-19', 'Pending'),
(16, 6, 'SOFTWARE', 3, 'Ibrahim', '2025-02-09', '2025-02-10', 'Pending'),
(18, 6, 'SOFTWARE', 2, 'Zuraiz', '2025-02-09', '2025-02-10', 'Returned'),
(19, 5, 'REACT', 4, 'Asad', '2025-02-26', '2025-02-27', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `name`, `course`, `dept`) VALUES
(1, 'Abdullah', 'MS', 'AI'),
(2, 'Zuraiz', 'BS', 'CS'),
(3, 'Ibrahim', 'BS', 'CS'),
(4, 'Asad', 'BS', 'CS'),
(5, 'Aoun', 'BS', 'CS'),
(6, 'Bilal', 'BS', 'AI'),
(7, 'Fahad', 'BS', 'SE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `contact`) VALUES
(2, 'Ahmad', '12345', 'ahmad@gmail.com', '1234580'),
(3, 'Aoun', '1231', 'aoun@gmail.com', '1234568'),
(4, 'ibrahim', '6789', '231370216@gift.edu.pk', '03269650196'),
(5, 'zuraiz ahmed', '112211', '231370227@gift.edu.pk', '03063380076');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
