-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2026 at 05:49 PM
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
-- Database: `ambulance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pickup_location` varchar(200) DEFAULT NULL,
  `hospital_location` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Not Assigned',
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `ambulance_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `pickup_location`, `hospital_location`, `status`, `patient_name`, `patient_age`, `emergency_contact`, `problem`, `driver_id`, `ambulance_type`, `created_at`) VALUES
(15, 3, 'Shwas Multispeciality Hospital, Katraj - Dehu Road Bypass, Dhayari, Haveli, Pune District, Maharashtra, 411046, India', 'Shwas Multispeciality Hospital', 'Picked Up', 'suraj', 21, '8468933295', 'broken bone', 22, 'Basic', '2026-03-18 16:42:34'),
(16, 7, 'Shwas Multispeciality Hospital, Katraj - Dehu Road Bypass, Dhayari, Haveli, Pune District, Maharashtra, 411046, India', 'Madhukar General Hospital', 'Assigned', 'kiran', 21, '1111111111', 'head injure', 23, 'ICU', '2026-03-18 16:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `vehicle_number` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `phone`, `vehicle_number`, `password`, `status`) VALUES
(22, 'suraj', '8468933295', 'MH12AB1234', '123', 'Busy'),
(23, 'sarthak', '1234567890', 'MH12CD1234', '123', 'Available'),
(24, 'kiran', '1111111111', 'MH12EF1234', '123', 'Available'),
(25, 'prem', '2222222222', 'MH12GH1234', '123', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`) VALUES
(3, 'suraj', 'suraj@mail', '8468933295', '123'),
(7, 'kiran', 'kiran@gmail.com', '8484848484', 'kiran123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
