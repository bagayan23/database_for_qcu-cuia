-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 05:18 PM
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
-- Database: `qcu_cuia`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(12) UNSIGNED NOT NULL,
  `personal_id` int(12) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `acc_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_contacts`
--

CREATE TABLE `account_contacts` (
  `contact_id` int(12) UNSIGNED NOT NULL,
  `personal_id` int(12) UNSIGNED DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `zipcode` varchar(12) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `attendancesummaryview`
-- (See below for the actual view)
--
CREATE TABLE `attendancesummaryview` (
`Employee/student_id` varchar(12)
,`fname` varchar(60)
,`lname` varchar(60)
,`mname` varchar(60)
,`desigantion` varchar(60)
,`last_absent` date
,`time_in` datetime
,`time_out` datetime
,`leave_type` varchar(60)
,`reaosn_leave` varchar(255)
,`date_leave` date
);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_monitor`
--

CREATE TABLE `attendance_monitor` (
  `attendance_id` int(12) UNSIGNED NOT NULL,
  `personal_id` int(12) UNSIGNED DEFAULT NULL,
  `desigantion` varchar(60) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `last_absent` date DEFAULT NULL COMMENT 'must be a foreign instance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(12) UNSIGNED NOT NULL,
  `event_name` varchar(60) NOT NULL,
  `event_desc` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `event_date` datetime NOT NULL,
  `attendance_link` varchar(100) NOT NULL,
  `feedback_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `harvestdataview`
-- (See below for the actual view)
--
CREATE TABLE `harvestdataview` (
`plant_id` int(12) unsigned
,`plant_name` varchar(60)
,`plant_type` varchar(60)
,`batch_number` int(12)
,`harvest_batch` int(12)
,`date_harvested` date
,`plant_ready_harvest` int(12)
,`quanty_harvest` int(12)
,`Harvest_note` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `harvest_data`
--

CREATE TABLE `harvest_data` (
  `harvest_id` int(12) UNSIGNED NOT NULL,
  `plant_id` int(12) UNSIGNED DEFAULT NULL,
  `batch` int(12) DEFAULT NULL,
  `harvest_batch` int(12) DEFAULT NULL,
  `date_harvested` date NOT NULL,
  `plant_ready_harvest` int(12) DEFAULT NULL,
  `quanty_harvest` int(12) NOT NULL,
  `Harvest_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `item_id` int(12) UNSIGNED NOT NULL,
  `item_type` varchar(60) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `stock` int(12) NOT NULL,
  `amount` int(12) NOT NULL,
  `status` varchar(60) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_monitoring`
--

CREATE TABLE `leave_monitoring` (
  `leave_id` int(12) UNSIGNED NOT NULL,
  `personal_id` int(12) UNSIGNED DEFAULT NULL,
  `leave_type` varchar(60) NOT NULL,
  `date_leave` date NOT NULL,
  `reaosn_leave` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `personalinfoveiw`
-- (See below for the actual view)
--
CREATE TABLE `personalinfoveiw` (
`personal_id` int(12) unsigned
,`fname` varchar(60)
,`mname` varchar(60)
,`lname` varchar(60)
,`date_of_birth` date
,`Employee/student_id` varchar(12)
,`designation` varchar(60)
,`skills` varchar(255)
,`username` varchar(60)
,`password` varchar(60)
,`acc_type` varchar(20)
,`email` varchar(60)
,`phone` varchar(15)
,`province` varchar(255)
,`city` varchar(255)
,`barangay` varchar(255)
,`zipcode` varchar(12)
,`home_address` varchar(255)
,`street` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `personal_id` int(12) UNSIGNED NOT NULL,
  `fname` varchar(60) NOT NULL,
  `mname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `date_of_birth` date NOT NULL,
  `Employee/student_id` varchar(12) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `contact_id` int(12) UNSIGNED DEFAULT NULL,
  `account_id` int(12) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `plantingdataview`
-- (See below for the actual view)
--
CREATE TABLE `plantingdataview` (
`plant_id` int(12) unsigned
,`plant_name` varchar(60)
,`batch_number` int(12)
,`numberOfSeedPlanted` int(12)
,`planting_note` varchar(255)
,`date_planted` date
,`numberOfSeedTransplanted` int(12)
,`date_transplanted` date
,`tranpalnting_note` varchar(255)
,`potting_mix_used` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `planting_data`
--

CREATE TABLE `planting_data` (
  `platingData_id` int(12) UNSIGNED NOT NULL,
  `Plant_id` int(12) UNSIGNED DEFAULT NULL,
  `batch_number` int(12) NOT NULL,
  `numberOfSeedPlanted` int(12) NOT NULL,
  `planting_note` varchar(255) NOT NULL,
  `date_planted` date NOT NULL,
  `potting_mix_used` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_info`
--

CREATE TABLE `plant_info` (
  `plant_id` int(12) UNSIGNED NOT NULL,
  `plant_name` varchar(60) NOT NULL,
  `plant_type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_monitor`
--

CREATE TABLE `plant_monitor` (
  `monitor_id` int(12) UNSIGNED NOT NULL,
  `plant_id` int(12) UNSIGNED DEFAULT NULL,
  `water_schedule` datetime NOT NULL,
  `care_instruction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transplanting_data`
--

CREATE TABLE `transplanting_data` (
  `tranplanting_id` int(12) UNSIGNED NOT NULL,
  `plant_id` int(12) UNSIGNED DEFAULT NULL,
  `numberOfSeedTransplanted` int(12) NOT NULL,
  `date_transplanted` date NOT NULL,
  `tranpalnting_note` varchar(255) NOT NULL,
  `potting_mix_used` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `attendancesummaryview`
--
DROP TABLE IF EXISTS `attendancesummaryview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `attendancesummaryview`  AS SELECT `p`.`Employee/student_id` AS `Employee/student_id`, `p`.`fname` AS `fname`, `p`.`lname` AS `lname`, `p`.`mname` AS `mname`, `am`.`desigantion` AS `desigantion`, `am`.`last_absent` AS `last_absent`, `am`.`time_in` AS `time_in`, `am`.`time_out` AS `time_out`, `lm`.`leave_type` AS `leave_type`, `lm`.`reaosn_leave` AS `reaosn_leave`, `lm`.`date_leave` AS `date_leave` FROM ((`attendance_monitor` `am` join `personal_info` `p` on(`am`.`attendance_id` = `p`.`personal_id`)) join `leave_monitoring` `lm` on(`p`.`personal_id` = `lm`.`leave_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `harvestdataview`
--
DROP TABLE IF EXISTS `harvestdataview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `harvestdataview`  AS SELECT `p`.`plant_id` AS `plant_id`, `p`.`plant_name` AS `plant_name`, `p`.`plant_type` AS `plant_type`, `pd`.`batch_number` AS `batch_number`, `hd`.`harvest_batch` AS `harvest_batch`, `hd`.`date_harvested` AS `date_harvested`, `hd`.`plant_ready_harvest` AS `plant_ready_harvest`, `hd`.`quanty_harvest` AS `quanty_harvest`, `hd`.`Harvest_note` AS `Harvest_note` FROM ((`plant_info` `p` join `planting_data` `pd` on(`p`.`plant_id` = `pd`.`Plant_id`)) join `harvest_data` `hd` on(`p`.`plant_id` = `hd`.`plant_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `personalinfoveiw`
--
DROP TABLE IF EXISTS `personalinfoveiw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `personalinfoveiw`  AS SELECT `p`.`personal_id` AS `personal_id`, `p`.`fname` AS `fname`, `p`.`mname` AS `mname`, `p`.`lname` AS `lname`, `p`.`date_of_birth` AS `date_of_birth`, `p`.`Employee/student_id` AS `Employee/student_id`, `p`.`designation` AS `designation`, `p`.`skills` AS `skills`, `a`.`username` AS `username`, `a`.`password` AS `password`, `a`.`acc_type` AS `acc_type`, `ac`.`email` AS `email`, `ac`.`phone` AS `phone`, `ac`.`province` AS `province`, `ac`.`city` AS `city`, `ac`.`barangay` AS `barangay`, `ac`.`zipcode` AS `zipcode`, `ac`.`home_address` AS `home_address`, `ac`.`street` AS `street` FROM ((`personal_info` `p` join `accounts` `a` on(`p`.`account_id` = `a`.`account_id`)) join `account_contacts` `ac` on(`p`.`contact_id` = `ac`.`contact_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `plantingdataview`
--
DROP TABLE IF EXISTS `plantingdataview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `plantingdataview`  AS SELECT `p`.`plant_id` AS `plant_id`, `p`.`plant_name` AS `plant_name`, `pd`.`batch_number` AS `batch_number`, `pd`.`numberOfSeedPlanted` AS `numberOfSeedPlanted`, `pd`.`planting_note` AS `planting_note`, `pd`.`date_planted` AS `date_planted`, `td`.`numberOfSeedTransplanted` AS `numberOfSeedTransplanted`, `td`.`date_transplanted` AS `date_transplanted`, `td`.`tranpalnting_note` AS `tranpalnting_note`, `pd`.`potting_mix_used` AS `potting_mix_used` FROM ((`plant_info` `p` join `planting_data` `pd` on(`p`.`plant_id` = `pd`.`Plant_id`)) join `transplanting_data` `td` on(`p`.`plant_id` = `td`.`plant_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `personal_id` (`personal_id`);

--
-- Indexes for table `account_contacts`
--
ALTER TABLE `account_contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD UNIQUE KEY `personal_info` (`personal_id`);

--
-- Indexes for table `attendance_monitor`
--
ALTER TABLE `attendance_monitor`
  ADD PRIMARY KEY (`attendance_id`),
  ADD UNIQUE KEY `personal_id` (`personal_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `harvest_data`
--
ALTER TABLE `harvest_data`
  ADD PRIMARY KEY (`harvest_id`),
  ADD UNIQUE KEY `plant_id` (`plant_id`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `leave_monitoring`
--
ALTER TABLE `leave_monitoring`
  ADD PRIMARY KEY (`leave_id`),
  ADD UNIQUE KEY `personal_id` (`personal_id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`personal_id`),
  ADD UNIQUE KEY `contact_id` (`contact_id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `planting_data`
--
ALTER TABLE `planting_data`
  ADD PRIMARY KEY (`platingData_id`),
  ADD UNIQUE KEY `Plant_id` (`Plant_id`);

--
-- Indexes for table `plant_info`
--
ALTER TABLE `plant_info`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `plant_monitor`
--
ALTER TABLE `plant_monitor`
  ADD PRIMARY KEY (`monitor_id`),
  ADD UNIQUE KEY `plant_id` (`plant_id`);

--
-- Indexes for table `transplanting_data`
--
ALTER TABLE `transplanting_data`
  ADD PRIMARY KEY (`tranplanting_id`),
  ADD UNIQUE KEY `plant_id` (`plant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_contacts`
--
ALTER TABLE `account_contacts`
  MODIFY `contact_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_monitor`
--
ALTER TABLE `attendance_monitor`
  MODIFY `attendance_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harvest_data`
--
ALTER TABLE `harvest_data`
  MODIFY `harvest_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `item_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_monitoring`
--
ALTER TABLE `leave_monitoring`
  MODIFY `leave_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `personal_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planting_data`
--
ALTER TABLE `planting_data`
  MODIFY `platingData_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plant_info`
--
ALTER TABLE `plant_info`
  MODIFY `plant_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plant_monitor`
--
ALTER TABLE `plant_monitor`
  MODIFY `monitor_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transplanting_data`
--
ALTER TABLE `transplanting_data`
  MODIFY `tranplanting_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`personal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `account_contacts`
--
ALTER TABLE `account_contacts`
  ADD CONSTRAINT `account_contacts_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`personal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `attendance_monitor`
--
ALTER TABLE `attendance_monitor`
  ADD CONSTRAINT `attendance_monitor_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`personal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `harvest_data`
--
ALTER TABLE `harvest_data`
  ADD CONSTRAINT `harvest_data_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `leave_monitoring`
--
ALTER TABLE `leave_monitoring`
  ADD CONSTRAINT `leave_monitoring_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal_info` (`personal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD CONSTRAINT `personal_info_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `account_contacts` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_info_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `planting_data`
--
ALTER TABLE `planting_data`
  ADD CONSTRAINT `planting_data_ibfk_1` FOREIGN KEY (`Plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `plant_monitor`
--
ALTER TABLE `plant_monitor`
  ADD CONSTRAINT `plant_monitor_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transplanting_data`
--
ALTER TABLE `transplanting_data`
  ADD CONSTRAINT `transplanting_data_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant_info` (`plant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
