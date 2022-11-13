-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 06:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pglife`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `icon` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `icon`, `type`) VALUES
(1, 'cctv', 'cctv', 'building'),
(2, 'powerbackup', 'powerbackup', 'building'),
(3, 'lift', 'lift', 'building'),
(4, 'fireext', 'fireext', 'building'),
(5, 'parking', 'parking', 'building'),
(6, 'wifi', 'wifi', 'building'),
(7, 'ac', 'ac', 'Bedroom'),
(8, 'bed', 'bed', 'Bedroom'),
(9, 'tv', 'tv', 'Bedroom'),
(10, 'geyser', 'geyser', 'Washroom'),
(11, 'washingmachine', 'washingmachine', 'Washroom'),
(12, 'dining', 'dining', 'Common Area'),
(13, 'rowater', 'rowater', 'Common Area');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Bengaluru'),
(4, 'Hyderabad'),
(5, 'Chandigarh'),
(6, 'Mohali'),
(7, 'Kanpur'),
(8, 'Lucknow'),
(9, 'Kolkata'),
(10, 'Ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`property_id`, `user_id`) VALUES
(1, 1001),
(1, 1001),
(1, 1002),
(2, 1003),
(3, 1004),
(3, 1005),
(3, 1006),
(4, 1007),
(4, 1008),
(5, 1009),
(5, 1010),
(5, 1011),
(6, 1012),
(6, 1013),
(6, 1014),
(7, 1015),
(7, 1016),
(7, 1017),
(8, 1018),
(8, 1019),
(8, 1020),
(9, 1021),
(9, 1022),
(9, 1023),
(9, 1024),
(9, 1025),
(10, 1026),
(11, 1027),
(11, 1028),
(11, 1029),
(12, 1030),
(12, 1030),
(13, 1031),
(13, 1032),
(14, 1033),
(15, 1034),
(15, 1035),
(15, 1036),
(16, 1037),
(16, 1038),
(17, 1039),
(17, 1040),
(18, 1041),
(18, 1042),
(19, 1043),
(19, 1044),
(20, 1045),
(21, 1046),
(21, 1047),
(21, 1048),
(21, 1048),
(22, 1049),
(22, 1050),
(23, 1051),
(23, 1052),
(24, 1053),
(25, 1054),
(25, 1055);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `rating_clean` int(11) NOT NULL,
  `rating_food` int(11) NOT NULL,
  `rating_safety` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `rent` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `rating_clean`, `rating_food`, `rating_safety`, `name`, `address`, `gender`, `rent`, `description`) VALUES
(1, 1, 3, 3, 4, 'Devansh', '123 Delhi', 'Male', 5000, 'this is a nice and peaceful place with calm surrounding and nearby market place and good view'),
(2, 1, 2, 3, 4, 'Ramesh', '124 Delhi', 'Female', 6000, ''),
(3, 1, 3, 5, 4, 'Kamlesh', '12 Dwarkapuri Delhi', 'Male', 4500, ''),
(4, 1, 4, 3, 4, 'Ayush', '1 Anand Vihar Delhi', 'Male', 6000, ''),
(5, 2, 3, 4, 4, 'Kalpana', '12 Thane Mumbai', 'Male', 8000, ''),
(6, 2, 5, 3, 4, 'Divit', '2 Gateway Mumbai', 'Female', 7500, ''),
(7, 2, 3, 5, 4, 'Rashmi', '3 Navi Mumbai Mumbai', 'Male', 9000, ''),
(8, 2, 3, 3, 5, 'Mukesh', '12 Lonawala', 'Female', 6000, ''),
(9, 2, 5, 5, 4, 'Sushil', '22 Lonawala Mumbai', 'Male', 10000, ''),
(10, 2, 3, 4, 4, 'Sushma', '12 Mumbai', 'Male', 5000, ''),
(11, 3, 5, 3, 4, 'Anna', '123 Bangalore', 'Male', 10000, ''),
(12, 3, 3, 5, 5, 'Rashmika', '125 Anna Road Bangalore', 'Female', 9000, ''),
(13, 3, 5, 4, 4, 'Deepika', '124 Bangalore', 'Male', 10000, ''),
(14, 3, 5, 5, 4, 'Rekha', '139 Bangalore', 'Male', 11000, ''),
(15, 3, 4, 4, 4, 'Diwakar', '120 Bangalore', 'Female', 10500, ''),
(16, 3, 4, 3, 4, 'Reddy', '133 Deep Chauraha Bangalore', 'Male', 11000, ''),
(17, 3, 3, 5, 4, 'Sai', '143 Bangalore', 'Male', 7000, ''),
(18, 4, 4, 5, 4, 'Reddy', '122 Diwakar Palace Hyderabad', 'Female', 7000, ''),
(19, 4, 5, 3, 5, 'Suchitra', '12 Anna Road Hyderabad', 'Male', 8000, ''),
(20, 4, 5, 5, 4, 'Jeenu', '14 Anna Road Hyderabad', 'Female', 9000, ''),
(21, 4, 5, 3, 4, 'Ritika', '12 Jagdish Vihar Hyderabad', 'Female', 10000, ''),
(22, 4, 5, 2, 4, 'Tarun', '15 Jagdish Vihar Hyderabad', 'Male', 9000, ''),
(23, 5, 5, 5, 4, 'Bhupinder', '12 Sector 36 Chandigarh', 'Male', 9000, ''),
(24, 5, 5, 4, 5, 'Jasneet', '13 Sector 22 Chandigarh', 'Male', 75000, ''),
(25, 5, 5, 3, 4, 'Deepika', '11 Sector 17 Chandigarh', 'Female', 8000, ''),
(26, 5, 3, 5, 5, 'Snehjot', '19 Sector 22 Chandigarh', 'Male', 10000, ''),
(27, 6, 5, 5, 4, 'Arshdeep', '2B Vista Residency Mohali', 'Male', 15000, ''),
(28, 6, 5, 3, 4, 'Gurkeerat', 'Shivjot Enclave Mohali', 'Male', 9000, ''),
(29, 6, 5, 5, 4, 'Harkeerat', '23 Shiwalik City Mohali', 'Female', 10000, ''),
(30, 0, 0, 0, 0, '', '', '', 0, 'this');

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`property_id`, `amenity_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 12),
(5, 2),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 9),
(5, 10),
(5, 11),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 7),
(6, 8),
(6, 9),
(6, 11),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `property_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`property_id`, `user_name`, `content`) VALUES
(1, 'devansh', 'nice place to live'),
(1, 'vivek', 'food is very good and safety is nice'),
(1, 'rajesh', 'Market is near to this place'),
(2, 'raman', 'nice place'),
(2, 'tarun', 'market is nearby'),
(3, 'apoorv', 'best rooms'),
(3, 'menon', 'security is good'),
(4, 'jagdish', 'best rooms'),
(4, 'deoki', 'security is good'),
(4, 'rajesh', 'nice place to live'),
(5, 'vivek', 'nice place to live'),
(5, 'devansh', 'market is nearby'),
(6, 'yogesh', 'best rooms'),
(6, 'diwakar', 'security is good'),
(6, 'devansh', 'market is nearby'),
(7, 'reddy', 'nice place to live'),
(8, 'sai sandeep', 'nice place to live'),
(8, 'suchitra', 'nice surrounding'),
(8, 'tarun', 'market is good'),
(9, 'devansh', 'nice place to live'),
(9, 'bhavya', 'nice surrounding'),
(10, 'devansh', 'nice place to live'),
(10, 'rohith', 'best amenities'),
(10, 'balasani', 'market is nearby'),
(11, 'sai', 'nice place to live'),
(11, 'sandeep', 'market is good'),
(12, 'devansh', 'nice place to live'),
(12, 'hardeep', 'market is near'),
(12, 'jasleen', 'security is good'),
(13, 'diwakar', 'ambience is good'),
(13, 'dinesh', 'living is good'),
(14, 'ritesh', 'peaceful place'),
(14, 'ramandeep', 'looks nice'),
(14, 'rakesh', 'very secure');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `full_name` int(11) NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `college_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
('devanshtiwari80771@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, '8707681495', 'male', 'Chandigarh University'),
('devansh80771@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, '8707681495', 'male', 'Chandigarh University');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
