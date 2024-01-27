-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 08:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `h_id` int(11) NOT NULL,
  `h_staffName` varchar(50) DEFAULT NULL,
  `h_staffID` varchar(10) DEFAULT NULL,
  `h_clock_In` time DEFAULT NULL,
  `h_clock_Out` time DEFAULT NULL,
  `h_location` varchar(200) DEFAULT NULL,
  `h_location_out` varchar(200) DEFAULT NULL,
  `h_date` date DEFAULT NULL,
  `h_status` varchar(100) DEFAULT NULL,
  `h_reason` varchar(200) DEFAULT NULL,
  `h_supportingD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`h_id`, `h_staffName`, `h_staffID`, `h_clock_In`, `h_clock_Out`, `h_location`, `h_location_out`, `h_date`, `h_status`, `h_reason`, `h_supportingD`) VALUES
(241, 'HARIS', 's01', '03:33:08', '03:33:24', '2.814771,101.813453', '2.814771,101.813453', '2024-01-17', 'Present', NULL, ''),
(242, 'SHAFFUAN AMIR', 's02', '03:35:05', '03:35:22', '2.334541,102.295792', '2.334541,102.295792', '2024-01-17', 'Present', NULL, ''),
(243, 'AMMAR', 's04', NULL, NULL, NULL, NULL, '2024-01-17', 'Absent', 'ponteng', 'ABSENT-AMMAR-2024-01-17.pdf'),
(244, 'AFNAN ', 'sv02', '03:38:38', '03:38:58', '2.814771,101.813453', '2.814771,101.813453', '2024-01-17', 'Present', NULL, ''),
(245, 'IZZAT HAZIMI', 'SV01', '03:39:32', '03:39:48', '2.814771,101.813453', '2.814771,101.813453', '2024-01-17', 'Present', NULL, ''),
(246, 'HARIS', 's01', '03:44:44', '03:45:02', '', '', '2024-01-17', 'Present', NULL, ''),
(247, 'HARIS', 's01', '03:45:10', '03:45:17', '2.334525,102.295798', '2.334525,102.295798', '2024-01-17', 'Present', NULL, ''),
(266, 'HARIS', 's01', '04:30:14', '04:30:22', '2.814771,101.813453', '2.814771,101.813453', '2024-01-17', 'Present', NULL, ''),
(267, 'HARIS', 's01', NULL, NULL, NULL, NULL, '2024-01-17', 'Absent', 'sakit', 'ABSENT-HARIS-2024-01-17.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `s_id` int(11) NOT NULL,
  `s_Name` varchar(200) NOT NULL,
  `s_Start` time NOT NULL DEFAULT current_timestamp(),
  `s_End` time NOT NULL DEFAULT current_timestamp(),
  `s_ShiftType` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`s_id`, `s_Name`, `s_Start`, `s_End`, `s_ShiftType`) VALUES
(5, 'SHIFT 1', '10:00:00', '16:00:00', 'Weekends'),
(6, 'shift new year', '08:00:00', '04:30:00', 'Weekdays');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_Name` varchar(50) NOT NULL,
  `u_staff_ID` varchar(10) NOT NULL,
  `u_IC_Number` varchar(20) NOT NULL,
  `u_role` varchar(20) NOT NULL,
  `u_Shift` varchar(200) NOT NULL,
  `u_Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_Name`, `u_staff_ID`, `u_IC_Number`, `u_role`, `u_Shift`, `u_Password`) VALUES
(7, 'KHAIRUL ADZHAR', 'admin', '998877665567', 'Admin', 'NONE', '123'),
(15, 'HARIS', 'S01', '030127141343', 'Operator', 'SHIFT 1', '321'),
(16, 'SHAFFUAN AMIR', 'S02', '030127335577', 'Operator', 'SHIFT 1', '123'),
(17, 'IZZAT HAZIMI', 'SV01', '030127889934', 'Supervisor', 'SHIFT 1', '321'),
(18, 'IMAN HAKIMI BIN AZNAN', 'HR01', '030127778899', 'HR', 'NONE', '123'),
(19, 'SHAKIR', 'S03', '035678975643', 'Operator', 'SHIFT 1', '123'),
(20, 'AFNAN ', 'SV02', '456323456789', 'Supervisor', 'shift new year', '123'),
(21, 'AMMAR', 'S04', '030127144444', 'Operator', 'SHIFT 2', '123'),
(22, 'SYAZWAN SHAH', 'SV03', '030127141343', 'Supervisor', 'SHIFT 2', '123'),
(23, 'QIWAMUDIN', 'S06', '031234567876', 'Operator', 'SHIFT 2', '123'),
(26, 'HAZIQ', 'SV05', '121212121212', 'Supervisor', 'SHIFT 2', '123'),
(28, 'AZRY WALTER BIN JOHN', 'SV07', '788643567364', 'Supervisor', 'SHIFT 2', '123'),
(29, 'UQASHA SENROSE', 'SV09', '908364756347', 'Supervisor', 'SHIFT 2', '123'),
(30, 'ABU BIN ALI', 'S011', '121212121333', 'Operator', 'SHIFT 1', '123'),
(31, 'A', '11111', '111111111111', 'Operator', 'milo', '11111'),
(32, 'ALI BIN ABU', 'S11', '000000000000', 'Operator', 'SHIFT 1', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
