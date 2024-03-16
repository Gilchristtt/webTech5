-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2024 at 07:20 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interiorDesign`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `project_type` enum('full_renovation','specific_room','consultation') NOT NULL,
  `project_scope` text NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `timeline` varchar(255) NOT NULL,
  `consultation_date` date NOT NULL,
  `consultation_time` time NOT NULL,
  `existing_furniture` enum('keep','replace','mix') NOT NULL,
  `specific_requests` text DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `filepaths` text DEFAULT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`project_type`, `project_scope`, `budget`, `timeline`, `consultation_date`, `consultation_time`, `existing_furniture`, `specific_requests`, `client_id`, `filepaths`, `booking_id`) VALUES
('specific_room', '888888', '666.00', '2-5', '2024-03-14', '19:00:00', 'keep', 'e3rr', 1, '', 34),
('specific_room', 'fhediwhefiue', '756.00', '32rer43r3', '2024-02-28', '15:42:00', 'replace', '3e32e2', 2, '', 35),
('specific_room', 'Monitor everything ', '7000.00', '2-2', '2024-03-14', '22:30:00', 'mix', 'None', 2, '', 36),
('consultation', 'dheduedeidfu4i0[fu4rf4yf4uf4fu4f', '777.00', '2 to weeks', '2024-03-14', '16:57:00', 'mix', 'jiuedheoid3eod', 3, '', 37),
('consultation', 'wdsws2d', '555.00', 'fece', '2024-03-07', '22:28:00', 'mix', 'ededed', 2, '', 38),
('consultation', 'kjdhekdjedjede', '777.00', '1223d', '2024-03-21', '09:49:00', 'replace', 'e2e3de3e', 4, '', 39),
('specific_room', 'dwd3wd', '3333.00', '333', '2024-03-14', '10:57:00', 'keep', 'e33e3', 8, '', 40);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT 1 COMMENT 'User role: 1 means user, 2 means admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `first_name`, `last_name`, `contact_number`, `email`, `password`, `country`, `city`, `user_role`) VALUES
(1, '', 'Nhauche', '0595189482', 'judercio.nhauche@ashesi.edu.gh', '$2y$10$XeFiqoxw/kLLbWRGQ53ifO/9wCcvVH7zlNXUWRXwwf6doZIRaIZ.2', 'Ghana', 'Accra', 1),
(2, '', 'Nhauche', '0595189482', 'judercio@ashesi.edu.gh', '$2y$10$2LueXuA04L3/lTmXKSzlg.qEeBp01uCEN/myMP6a1Ypg9yInSqF3e', 'Ghana', 'Accra', 2),
(3, '', 'Mazeze', '064234879299', 'joao@gmail.com', '$2y$10$rrK.4I/P8GN27doLjrd6DuB35sOYCtXbu2d1vpV3nBjrMhgICGA/6', 'Mozambique', 'Maputo', 1),
(4, '', 'Lekane', '08263692992', 'lekanestyve@gmail.com', '$2y$10$1Ewq2WUKxqz3Aaf3SpfJl.5g.t7iRCTVDL6D4.Mj4B0D6NDuDB0u2', 'Ghana', 'Accra', 1),
(6, '', 'Nhauche', '0595189482', 'jude33rcio.nhauche@ashesi.edu.gh', '$2y$10$/O9RT7ahSpJdVsHhMi/fIuI9dKM1nHH7yUMUIITzzAr7myaKGJ4am', 'Ghana', 'Accra', 1),
(7, '', 'Nhauche', '0595189482', 'juderc33io.nhauche@ashesi.edu.gh', '$2y$10$LE7DWbYmREXzLIWF2pkzXudN66.evGcjNhkMnUUwpQj.yqz5W0c2i', 'Ghana', 'Accra', 1),
(8, '', 'Nhauche', '0595189482', 'me@ashesi.edu.gh', '$2y$10$6V0HMBtEpBqD.Ou0gqs6UuocmaOu4rCOHcsx43.zRKG/3.BsqKCAW', 'Ghana', 'Accra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `designer_portfolio`
--

CREATE TABLE `designer_portfolio` (
  `Portfolioid` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `PortfolioDescription` text DEFAULT NULL,
  `YearsOfExperience` int(11) DEFAULT NULL,
  `Speciality` varchar(100) DEFAULT NULL,
  `EducationAndCertifications` text DEFAULT NULL,
  `LinkToProjects` text DEFAULT NULL,
  `AwardsAndRecognition` text DEFAULT NULL,
  `Testimonials` text DEFAULT NULL,
  `designer_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designer_portfolio`
--

INSERT INTO `designer_portfolio` (`Portfolioid`, `FirstName`, `LastName`, `PortfolioDescription`, `YearsOfExperience`, `Speciality`, `EducationAndCertifications`, `LinkToProjects`, `AwardsAndRecognition`, `Testimonials`, `designer_image`) VALUES
(15, 'r2g45t425t', '45t45t45t', '45t45t234f2', 46, 'regwr2w', 'wergrw', 'grrgr', 'grtgrgr2', '2egrrgr', 'kassy&j-1710605130.png'),
(16, '2e21r13r', 'rfe2g4341rr', 'fgerf1r3f3', 9, 'vvervr1', 'r1fr3fr1e', 'refr3ef', 'rvc2refrv', 'frfreferfdr', '@todahealth-1710605222.png'),
(17, '2e2e21ee', 'e22e12e1', 'e12e231e231e', 4, 'e22e2e', 'dw2e3e2e', '23r23er23', '3d32re32', '3223rer23er32', 'whatsapp-image-2024-03-15-at-20.44.18-1710607210.jpeg'),
(18, 'wdwd', 'wdwdwd', 'dwwdwd', 3, 'dwwdwd', 'wdwdwdw', 'wdwdwd', 'wdwdwd', 'dwdwd', 'whatsapp-image-2024-02-27-at-16.38.04-1710612507.jpeg'),
(19, 'Judercio', 'Jose', '\r\nJudercio is an interior designer known for their innovative approach to space design and decor. With a keen eye for detail and a passion for creating functional yet aesthetically pleasing environments, Judercio specializes in crafting personalized interiors that reflect the unique personalities and lifestyles of their clients. With years of experience in the industry, Judercio has established a reputation for delivering exceptional design solutions tailored to meet the diverse needs and preferences of each project. ', 10, 'Commercial Design', 'Ashesi University Class of 2026\r\nStudent of the Year', 'https://www.linkedin.com/feed/', '1.Deans List\r\n2. Student of the Year', '\"He has been Phenomenal\"-Judercio', 'judercio_idphoto-1710612698.jpeg'),
(20, 'Judercio', 'Jose', '\r\nJudercio is an interior designer known for their innovative approach to space design and decor. With a keen eye for detail and a passion for creating functional yet aesthetically pleasing environments, Judercio specializes in crafting personalized interiors that reflect the unique personalities and lifestyles of their clients. With years of experience in the industry, Judercio has established a reputation for delivering exceptional design solutions tailored to meet the diverse needs and preferences of each project. ', 10, 'Commercial Design', 'Ashesi University Class of 2026\r\nStudent of the Year', 'https://www.linkedin.com/feed/', '1.Deans List\r\n2. Student of the Year', '\"He has been Phenomenal\"-Judercio', 'judercio_idphoto-1710612816.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `fk_client_id` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `designer_portfolio`
--
ALTER TABLE `designer_portfolio`
  ADD PRIMARY KEY (`Portfolioid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designer_portfolio`
--
ALTER TABLE `designer_portfolio`
  MODIFY `Portfolioid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
