-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 04:24 PM
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
-- Database: `class_sched`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`name`, `email`, `password`, `otp`, `otp_expires_at`) VALUES
('test', 'abotkieryvanne@gmail.com', '$2y$10$66g967zOf7hYBVeoBCYRAuzZs6VkDHso5PVP3LVXl0wCumfFm6woa', '230327', '2024-08-26 15:44:45'),
('Kier Yvanne Abot', 'kieryvanneabot72@gmail.com', '$2y$10$erGmgLef5Zc.pkgb.7peLuDnnewsbEJB0x8iXODLqyLbDa51/xAxG', '179156', '2024-08-26 15:43:22'),
('van', 'kieryvanneabot98@gmail.com', '$2y$10$xcbcYq3PPQHvejxnS8.y2.HNsYQUk8nILv1E4tyKOM/UB0ePy4IPO', '648942', '2024-09-06 19:02:20'),
('test', 'maurice.santos78@gmail.com', '$2y$10$TOc4MAfrbfSVsf1mvwWfleidsw12Ww0ESbFHCFsePC/KRC574oz0q', NULL, NULL),
('test', 'rainegabbie3@gmail.com', '$2y$10$ED6Hehli96ld.uYOQ/spx.xvqKZk/RnJsIfsWcjIxuMqW4VvD6aoW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invitation_codes`
--

CREATE TABLE `invitation_codes` (
  `code` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` varchar(255) NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invitation_codes`
--

INSERT INTO `invitation_codes` (`code`, `created_at`, `created_by`, `used`) VALUES
('d7c68e51b128b4ea', '2024-08-16 21:32:32', 'kieryvanneabot72@gmail.com', 1),
('b86900c14aa18cf3', '2024-08-24 03:00:41', 'kieryvanneabot98@gmail.com', 1),
('c6f50e2e625fb742', '2024-08-26 21:35:43', 'abotkieryvanne@gmail.com', 0),
('d0c60bddcc861959', '2024-08-26 21:43:57', 'rainegabbie3@gmail.com', 1),
('d7da3504df482368', '2024-08-26 21:46:35', 'maurice.santos78@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pending`
--

CREATE TABLE `pending` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `otp_expires_at` datetime NOT NULL,
  `invitation_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `academic_rank` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `subject_taught` varchar(255) DEFAULT NULL,
  `teaching_load` int(255) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `prep` int(255) DEFAULT NULL,
  `hrs_per_week` float DEFAULT NULL,
  `overload` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `academic_rank`, `qualification`, `subject_taught`, `teaching_load`, `extra`, `prep`, `hrs_per_week`, `overload`) VALUES
(1, '1', '1', '1', 'FILDIS', 12, '1', 1, 0, 0),
(2, 'aredondo, John Randolf', 'ITE Part Time', 'BSIT, MIT CAR', 'ITEL 305, ITCST305, ITST303', 34, '', 3, 34, 0),
(3, 'Baltazar,A-Janluque', 'ITE Part Time', 'BSIT, MIT', 'ITEP 101, ITEP 205, ITEP 206', 36, '', 3, 36, 0),
(4, 'Barrientos, Jerelyn', 'GEC Part Time', 'BSED-MATH', 'ITEP 102, GEC 104', 22, '', 2, 22, 0),
(5, 'Bernardino, Mark P.', 'Instructor III', 'BSIT/MSIT', 'CSEL 302, CSST 104', 20, 'Program Coordinator BSCS, Unit Head, ETS', 2, 42, 2),
(6, 'Depatillo, Lecory Vincent C.', 'ITE Part Time', 'BSIT, MIT (Thesis Writing)', 'ITEP 101, ITEP 205, ITEP 206', 36, '', 3, 36, 0),
(7, 'Flores, Edward S.', 'Assistant Prof. II', 'BSIT/MSIT', 'ITEP 503', 18, 'Program Coordinator BSIT, CIDL, BAC Member', 1, 40, 0),
(8, 'Formaran, Micha Joy', 'ITE Part Time', 'BSIT', 'ITEC 306, ITEP 206', 34, '', 2, 34, 0),
(9, 'Garbo, Roxanne Rivera', 'ITE Part Time', 'BSCS, MSCS Units', 'CMSC 304, CSEL 303, CSEL 301, ITEC 103', 32, '', 4, 32, 0),
(10, 'Indolina, Ma. Edlyn D.', 'GEC Part Time', 'BSED-SOCSCI/Maed Thesis Writing', 'GEC 106, GEC 103, PI 100', 30, '', 3, 30, 0),
(11, 'Jovellano, Saira C', 'GEC Part Time', 'MAED', 'FILDIS', 9, '', 1, 9, 0),
(12, 'Juayong, Joy Mell C.', 'GEC Part Time', 'MAED', 'GEC 105', 21, '', 1, 21, 0),
(13, 'Justo, Reynalen C.', 'Assistant Prof. I', 'BSIT/MM-ITM', 'CMSC 314, CSST 103', 18, 'Program Coordinator Alumni', 2, 40, 0),
(14, 'Lansang, Kaellah Angela', 'ITE Part Time', 'BSIT', 'ITEP 311, ITEP 103, ITEP 101, CMSC 313', 35, '', 4, 35, 0),
(15, 'Lava, Ronald T.', 'ITE Part Time', 'BSIT, MIT', 'ITEP 204', 26, '', 1, 26, 0),
(16, 'Leongson, Rio Joei L.', 'ITE Part Time', 'BSCS,MIT (-ENROLLED)', 'ITEC 103', 13, '', 1, 13, 0),
(17, 'Lustre, Paul Allan S.', 'Instructor I', 'ME PS/PhD major in PE and Sports 12 units', 'PE 2, PE 4', 24, '', 2, 46, 0),
(18, 'Miranda, Maria Laureen B.', 'Instructor I', 'BSIT/MIT', 'ITEP 312, ITEP 415', 18, 'Unit Head, RHGP, Sports Activities Coordinator, Supreme Student Council Adviser', 2, 40, 0),
(19, 'Mosico, Gener F.', 'Assistant Prof. I', 'BSCS/MSIT', '', 24, 'GAD Alumni Coordinator', 3, 46, 0),
(20, 'Name of Faculty', 'Academic Rank', 'Major Educational Qualification', 'Subjects Taught', 0, 'Co-curricular & Extra Activities', 0, 0, 0),
(21, 'Pielago, Reymart Joseph P.', 'ITE Part Time', 'BSIT, MIT (Thesis Writing)', 'ITEP 207,CMSC311,ITST304', 66, '', 3, 36, 0),
(22, 'Reyes, Jeremy', 'ITE Part Time', 'BSCOE', 'CMSC101,ITEC106', 12, '', 2, 12, 0),
(23, 'Rivano, Rachiel R.', 'Assistant Prof. III', 'BSCS/MSIT/PhDTE (Dissertation Writing)', '', 18, 'Unit Head, BAC', 3, 40, 0),
(24, 'Roguel, Elpidio Jr. s.', 'GEC Part Time', 'PE', '', 4, '', 1, 0, 0),
(25, 'Serrano, Rommel', 'ITE Part Time', 'BSIT,MIT', 'ITEC203,ITEC 206,ITEC 203', 36, '', 3, 36, 0),
(26, 'Solde, Khrisna Cara O.', 'GEC Part Time', 'MAED-SOCSCI', 'GEC 106, GEC 103, PI 100', 24, '', 3, 24, 0),
(27, 'Timajo, Ananias R.', 'GEC Part Time', 'MAED-SOCSCI', 'GEC 107', 6, '', 1, 6, 0),
(28, 'Villanueva, Margarita', 'Instructor I', 'BMLS/LM-Ongoing', '', 18, 'Librarian', 1, 40, 0),
(29, 'Villarca, Mia V.', 'Assistant Prof. IV', 'BSIT/MSCS/DIT', 'CMSC 312, CMSC 503, CMSC 313', 12, 'Associate Dean', 3, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_archive`
--

CREATE TABLE `teachers_archive` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `academic_rank` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `subject_taught` varchar(255) DEFAULT NULL,
  `teaching_load` int(11) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `prep` int(11) DEFAULT NULL,
  `hrs_per_week` int(11) DEFAULT NULL,
  `overload` int(11) DEFAULT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers_archive`
--

INSERT INTO `teachers_archive` (`id`, `name`, `academic_rank`, `qualification`, `subject_taught`, `teaching_load`, `extra`, `prep`, `hrs_per_week`, `overload`, `archived_at`) VALUES
(1, 'testing', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-10 07:44:59'),
(2, 'test', 'test', 'test', NULL, NULL, 'test', NULL, NULL, NULL, '2024-09-10 08:18:16'),
(3, 'testing', 'test', 'test', NULL, NULL, 'test', NULL, NULL, NULL, '2024-09-10 08:18:20'),
(4, 'test', 'test', 'test', NULL, NULL, 'test', NULL, NULL, NULL, '2024-09-10 13:43:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  ADD KEY `fk_created_by` (`created_by`);

--
-- Indexes for table `pending`
--
ALTER TABLE `pending`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `teachers_archive`
--
ALTER TABLE `teachers_archive`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `teachers_archive`
--
ALTER TABLE `teachers_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  ADD CONSTRAINT `fk_created_by` FOREIGN KEY (`created_by`) REFERENCES `account` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
