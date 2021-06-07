-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 07, 2021 at 07:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_name`
--

CREATE TABLE `d_name` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contact` int(255) NOT NULL,
  `regi_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_name`
--

INSERT INTO `d_name` (`id`, `name`, `qualification`, `address`, `contact`, `regi_no`) VALUES
(1, 'Shashank Shinde', 'MBBS', 'H no 256 , fort road, belgaum', 975485777, 2525),
(2, 'abhijeet patil', 'MD', 'H no 266 , bogarves , belgaum', 2147483647, 24555);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `strength` varchar(255) NOT NULL,
  `dosage_form` varchar(255) NOT NULL,
  `d_instruction` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `strength`, `dosage_form`, `d_instruction`, `quantity`) VALUES
(1, 'Paracetamole', 'high', 'tablet', 'night ', '1'),
(2, 'Paracetamol paediatric syrup', 'high', 'liquide', 'night', '1 spoon');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `weight` int(255) NOT NULL,
  `p_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`id`, `name`, `address`, `number`, `sex`, `age`, `weight`, `p_no`) VALUES
(1, 'shankar manchal', 'sdsajd sj dpjaspdp', '7845785787', 'male', 25, 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_no`
--

CREATE TABLE `prescription_no` (
  `p_id` int(255) NOT NULL,
  `dr_id` int(11) NOT NULL,
  `m_id` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription_no`
--

INSERT INTO `prescription_no` (`p_id`, `dr_id`, `m_id`, `date`) VALUES
(1, 1, 1, '2021-06-06 12:33:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_name`
--
ALTER TABLE `d_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_no`
--
ALTER TABLE `prescription_no`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_name`
--
ALTER TABLE `d_name`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescription_no`
--
ALTER TABLE `prescription_no`
  MODIFY `p_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
