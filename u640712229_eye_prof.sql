-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2025 at 03:12 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u640712229_eye_prof`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `username`, `notification_type`, `message`, `created_at`, `seen`) VALUES
(19, 'Orics W Nomag', 'cancel', '', '2025-05-30 18:57:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `reason_of_visit` varchar(255) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cancelled` tinyint(1) DEFAULT 0,
  `cancelled_at` datetime DEFAULT NULL,
  `reminder_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_reset`
--

CREATE TABLE `notification_reset` (
  `id` int(11) NOT NULL,
  `last_reset` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_reset`
--

INSERT INTO `notification_reset` (`id`, `last_reset`) VALUES
(1, '2025-05-17 18:19:51'),
(2, '2025-05-17 18:26:47'),
(3, '2025-05-19 13:56:54'),
(4, '2025-05-23 07:29:44'),
(5, '2025-05-30 18:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token`, `expires_at`) VALUES
(35, 55, 'e24e009ee3ecaecf6057b32a91075ebaacac2df1655fa51d7905d52af2b196d4dda7fbc3fa278b315f23da6084deeb45e1f0', '2025-04-24 15:47:05'),
(37, 55, '2bde979a716dc971a65b816eab439e426616dc091fc866d1c6c9032316e51a8a9a030c4845454b886185ebe03847c7890e6c', '2025-04-24 15:48:54'),
(38, 55, 'ebb207f1c3a1cbbc0baba131e45040d32280c265b4c9649f76093b6d714075f4dd475996626047c738ddb4c5c79c3f155715', '2025-04-24 15:49:23'),
(39, 55, '4a6058eb5c923181ba02f442be718acbe7023dc8cd155028dc7d23acec18bd744cb4890eec4e48408cb528f7872c264ea9b2', '2025-04-24 15:50:08'),
(43, 55, '3d591498ac4c7e3e9f3627920a3c3878a3b456b972cd118999d9f34fdab96efcb044a11c9bb35f1b289ed4ea7900e2ff1638', '2025-04-24 16:00:12'),
(44, 55, 'ce735bf0e13bedcecba52ec55ed76808231fa34af22d9c5ae048443ccf1054356d9249e5e0c29822d23a8ead1c5638a26a05', '2025-04-24 16:45:56'),
(45, 55, 'd3eb674e6ca81f542b13b8c8a03b7d80c18f54e585918855d1196319f7ea9c09eb3d0708d6ffff6427e1d0123c013b90663e', '2025-04-24 16:46:08'),
(46, 55, '503c88aec4d7c623ffa850adfd49c65583cba04b5bead5361ec4963cc8dcf6288b745682f1076f723c824b2f7d8e6a2a8e50', '2025-04-24 16:49:00'),
(47, 55, 'f031e53fdab56cb39dff55a1f3b54172dee41f3f0e47db03fe0e03ced3468163401f54c88acb797b911ef059ae721cb570cd', '2025-04-24 16:49:07'),
(48, 55, '1dcd7ce8c6a5cedb17197c4e41b6b2ca659621103207f938f90fba991a55844bac2834ab5b24c13e8fcd9886e8f490b55788', '2025-04-24 16:50:39'),
(49, 55, 'f9162e729e417127fbdbe3991431caf4aaea945b45a18f5ebc6a52b2772bab84e34179acb39d6c21669cac4bc8b2c08ee87b', '2025-04-24 16:51:46'),
(61, 47, 'c03e3331d348e701953604b94f4beaaf4b47a1780da6a6a328cc0fbbb602d2b927687a29eec775de621d0992d2db3c113f73', '2025-04-27 07:37:45'),
(62, 47, '3dc78102ba1908bd4bce4947ea4d6c812a6b915f3695fbf2c92b97b1fc6b3a2a4cb7135cccec49ff8617d11f286f1e47aceb', '2025-04-27 07:38:18'),
(63, 47, 'cd1d654e007d6d525ab96aae07aca263caed46486d376c254297741d4f099dbe979ff5c67dd1fecde39e4e629715012b1ba2', '2025-04-27 07:38:21'),
(64, 47, 'd494e9178dcf4aecfb60fa9c98388dbca3ab0012778f7e5e08205a078fb125dd789a6b745091b2647202244e1490ae5863a6', '2025-04-27 07:38:26'),
(65, 47, '95f16fbfc52892d0b0f2f735a4fe7f8bc0e969db65925528964cc1a8d9ebe42fa03c53ca4c346ae3442b8a28d3aaeaa87ee1', '2025-04-27 07:38:48'),
(66, 47, 'b06b2f7c5a5a0ad818e24a92150f89bb83154a9f532a4740318c11f8c14226fd0e7cd8b100f2fd575a1396cd937dbd086c99', '2025-04-27 07:39:50'),
(68, 47, '318b6f98c42682c786fca21913310364812baa13a25dfb274c7cd0931855ca4094bff477bf22e8cc31129b95ed5926b8c81c', '2025-04-27 07:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `hobbies` text DEFAULT NULL,
  `blood_pressure` varchar(50) DEFAULT NULL,
  `temperature` varchar(50) DEFAULT NULL,
  `chief_complaint` text DEFAULT NULL,
  `last_eye_checkup` date DEFAULT NULL,
  `nsf` tinyint(1) DEFAULT 0,
  `thyroid` tinyint(1) DEFAULT 0,
  `hypertension` tinyint(1) DEFAULT 0,
  `asthma` tinyint(1) DEFAULT 0,
  `accessories` tinyint(1) DEFAULT 0,
  `gold` tinyint(1) DEFAULT 0,
  `silver` tinyint(1) DEFAULT 0,
  `rubber` tinyint(1) DEFAULT 0,
  `allergy_food_meds` tinyint(1) DEFAULT 0,
  `metal_hypoallergenic` tinyint(1) DEFAULT 0,
  `eor` tinyint(1) DEFAULT 0,
  `eyedes` tinyint(1) DEFAULT 0,
  `hyn` tinyint(1) DEFAULT 0,
  `asthma_fam` tinyint(1) DEFAULT 0,
  `thyroid_fam` tinyint(1) DEFAULT 0,
  `old_prescription` date DEFAULT NULL,
  `od_sph` varchar(50) DEFAULT NULL,
  `os_sph` varchar(50) DEFAULT NULL,
  `add_prescription` varchar(50) DEFAULT NULL,
  `lens_type` varchar(100) DEFAULT NULL,
  `uv_od_distance` varchar(50) DEFAULT NULL,
  `uv_os_distance` varchar(50) DEFAULT NULL,
  `uv_ou_distance` varchar(255) DEFAULT NULL,
  `uv_od_near` varchar(50) DEFAULT NULL,
  `uv_os_near` varchar(50) DEFAULT NULL,
  `uv_ou_near` varchar(255) DEFAULT NULL,
  `color_vision` enum('Normal','Color Deficient') DEFAULT 'Normal',
  `add_test` varchar(255) DEFAULT NULL,
  `color_vision_test` varchar(255) DEFAULT NULL,
  `ar_pre_od_sph` varchar(50) DEFAULT NULL,
  `ar_pre_os_sph` varchar(50) DEFAULT NULL,
  `ar_post_od_sph` varchar(50) DEFAULT NULL,
  `ar_post_os_sph` varchar(50) DEFAULT NULL,
  `ar_add` varchar(50) DEFAULT NULL,
  `sub_od_sph` varchar(50) DEFAULT NULL,
  `sub_od_cyl` varchar(50) DEFAULT NULL,
  `sub_od_axis` varchar(50) DEFAULT NULL,
  `sub_od_va` varchar(50) DEFAULT NULL,
  `sub_os_sph` varchar(50) DEFAULT NULL,
  `sub_os_cyl` varchar(50) DEFAULT NULL,
  `sub_os_axis` varchar(50) DEFAULT NULL,
  `sub_os_va` varchar(50) DEFAULT NULL,
  `sub_add_sph` varchar(80) DEFAULT NULL,
  `sub_add_cyl` varchar(80) DEFAULT NULL,
  `sub_add_axis` varchar(80) DEFAULT NULL,
  `sub_add_va` varchar(80) DEFAULT NULL,
  `final_od_sph` varchar(50) DEFAULT NULL,
  `final_od_cyl` varchar(50) DEFAULT NULL,
  `final_od_axis` varchar(50) DEFAULT NULL,
  `final_od_va` varchar(50) DEFAULT NULL,
  `final_os_sph` varchar(50) DEFAULT NULL,
  `final_os_cyl` varchar(50) DEFAULT NULL,
  `final_os_axis` varchar(50) DEFAULT NULL,
  `final_os_va` varchar(50) DEFAULT NULL,
  `final_add_sph` varchar(80) DEFAULT NULL,
  `final_add_cyl` varchar(80) DEFAULT NULL,
  `final_add_axis` varchar(80) DEFAULT NULL,
  `final_add_va` varchar(80) DEFAULT NULL,
  `cleanl1` tinyint(1) DEFAULT 0,
  `cleanl2` tinyint(1) DEFAULT 0,
  `dirtyl1` tinyint(1) DEFAULT 0,
  `mgdl1` tinyint(1) DEFAULT 0,
  `dirtyl2` tinyint(1) DEFAULT 0,
  `distichiasisl1` tinyint(1) DEFAULT 0,
  `swellingl1` tinyint(1) DEFAULT 0,
  `triachisl1` tinyint(1) DEFAULT 0,
  `clearl1` tinyint(1) DEFAULT 0,
  `hemorrhagel1` tinyint(1) DEFAULT 0,
  `pterygiuml1` tinyint(1) DEFAULT 0,
  `foreign_bodyl1` tinyint(1) DEFAULT 0,
  `ulcerl1` tinyint(1) DEFAULT 0,
  `opacityl1` tinyint(1) DEFAULT 0,
  `brownl1` tinyint(1) DEFAULT 0,
  `colobomal1` tinyint(1) DEFAULT 0,
  `flarel1` tinyint(1) DEFAULT 0,
  `clearl2` tinyint(1) DEFAULT 0,
  `opacityl2` tinyint(1) DEFAULT 0,
  `catarractl1` tinyint(1) DEFAULT 0,
  `cleanr1` tinyint(1) DEFAULT 0,
  `dirtyr1` tinyint(1) DEFAULT 0,
  `swellingr1` tinyint(1) DEFAULT 0,
  `mgdr1` tinyint(1) DEFAULT 0,
  `cleanr2` tinyint(1) DEFAULT 0,
  `dirtyr2` tinyint(1) DEFAULT 0,
  `clearr1` tinyint(1) DEFAULT 0,
  `triachisr1` tinyint(1) DEFAULT 0,
  `distichiasisr1` tinyint(1) DEFAULT 0,
  `pterygiumr1` tinyint(1) DEFAULT 0,
  `hemorrhager1` tinyint(1) DEFAULT 0,
  `foreign_bodyr1` tinyint(1) DEFAULT 0,
  `ulcerr1` tinyint(1) DEFAULT 0,
  `opacityr1` tinyint(1) DEFAULT 0,
  `brownr1` tinyint(1) DEFAULT 0,
  `flarer1` tinyint(1) DEFAULT 0,
  `colobomar1` tinyint(1) DEFAULT 0,
  `clearr2` tinyint(1) DEFAULT 0,
  `opacityr2` tinyint(1) DEFAULT 0,
  `catarractr1` tinyint(1) DEFAULT 0,
  `diagnosis` text DEFAULT NULL,
  `follow_up` enum('7 Days','3 Months','6 Months','1 Year') DEFAULT NULL,
  `frame` varchar(255) DEFAULT NULL,
  `lense` varchar(255) DEFAULT NULL,
  `coating` varchar(255) DEFAULT NULL,
  `tint` varchar(255) DEFAULT NULL,
  `patient_full_name` varchar(255) DEFAULT NULL,
  `guardian_of_patient` varchar(255) DEFAULT NULL,
  `signature_patient` varchar(255) DEFAULT NULL,
  `signature_guardian` varchar(255) DEFAULT NULL,
  `date_patient` date DEFAULT NULL,
  `date_guardian` date DEFAULT NULL,
  `patient_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archived` tinyint(1) DEFAULT 0,
  `photo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `prescription` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `left_eye_grade` varchar(255) DEFAULT NULL,
  `right_eye_grade` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `first_name`, `last_name`, `email`, `prescription`, `notes`, `created_at`, `left_eye_grade`, `right_eye_grade`, `doctor`) VALUES
(1, NULL, NULL, 'jdgaming1405@gmail.com', 'geasd', 'wasdaw', '2024-12-20 14:46:49', NULL, NULL, NULL),
(2, NULL, NULL, 'jdgaming1405@gmail.com', 'another one', 'check', '2024-12-20 15:06:16', NULL, NULL, NULL),
(4, NULL, NULL, 'jdgaming1405@gmail.com', 'N/A', 'gege', '2024-12-20 15:14:55', '-284', '133', NULL),
(8, NULL, NULL, 'dwasd@gmail.com', 'wasd', 'wa', '2025-03-01 14:19:51', 'wasd', 'wasd', NULL),
(9, NULL, NULL, 'dwasd@gmail.com', 'wasd', 'wa', '2025-03-01 14:19:58', 'wasd', 'wasd', NULL),
(22, 'John Dave', 'Garcia', 'garciajohndave23@gmail.com', 'gawa', 'gasdw', '2025-03-26 08:09:30', '346', '34', 'Dr Smith');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiration` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `otp_code` varchar(6) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `last_password_reset` datetime DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT 'img/avatar-img.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `is_admin`, `email`, `phone`, `reset_token`, `token_expiration`, `created_at`, `otp_code`, `is_verified`, `last_password_reset`, `profile_picture`) VALUES
(1, NULL, NULL, 'hashed_password_here', 1, '', NULL, NULL, NULL, '2024-10-21 06:50:53', NULL, 1, NULL, 'img/avatar-img.jpg'),
(27, NULL, NULL, '$2y$10$jRFnqFle4GR3ovKzkqbJruMsY.hNmR.LdgaFGZ1GEymWezJDcfHi6', 1, '4dminkest@gmail.com', '09837561241', NULL, NULL, '2024-10-24 16:19:38', NULL, 0, NULL, 'img/avatar-img.jpg'),
(40, 'John Dave', 'Garcia', '$2y$10$q2FywSkJJNMeDCDi9/6NseLFyPrlUNaPRUoC17JG4sr.s6S.NZulq', 0, 'garciajohndave23@gmail.com', '09872352522', NULL, NULL, '2025-03-25 16:20:08', NULL, 0, NULL, 'uploads/680b8db9cd162_491002344_2115642435619663_6697496551167055218_n.jpg'),
(41, 'Jenjen', 'Martinote', '$2y$10$L2kBkV1..iFrCbKGCQ7XnOmomLyYdbKNQKH9TOuUJFCKJ2pf4B2pG', 0, 'martinotejenjen8@gmail.com', '09615766940', NULL, NULL, '2025-03-26 23:33:17', NULL, 0, NULL, 'img/avatar-img.jpg'),
(44, 'Berna', 'Gulles ', '$2y$10$h887cV/3Roc29mQCvXAo5eACxvd8XzJNzVqjAnZXFBgwlJdeAtsIK', 0, 'bernagulles@gmail.com', '09939245984', NULL, NULL, '2025-03-27 12:47:14', NULL, 0, NULL, 'img/avatar-img.jpg'),
(45, 'Buknoy', 'Garcia', '$2y$10$/YRmkQDIX0Fd//lhDin92eki7md9euQqLqVa7SY/YMsX3pndBDeWm', 0, 'buknoygarcia24@gmail.com', '09567456454', NULL, NULL, '2025-03-27 14:21:13', NULL, 0, NULL, 'img/avatar-img.jpg'),
(46, 'Bibe', 'justin', '$2y$10$tvp/.nKg/OTdBe73KYV8xO0ifoGy/KkiNtW.2V/cyLm4WODVDGE5y', 0, 'bj4536079@gmail.com', '09278963716', NULL, NULL, '2025-03-27 14:41:55', NULL, 0, NULL, 'img/avatar-img.jpg'),
(47, 'kyle', 'on', '$2y$10$Mcxbw/BQLB5hJkp2wBN5h.czWyzDe9kO.qbTEoiILAZVBNmrYF4ky', 0, 'ondillowilhmar@immaculada.edu.ph', '09278963716', NULL, NULL, '2025-03-27 14:53:58', NULL, 0, '2025-04-27 06:39:50', 'img/avatar-img.jpg'),
(48, 'kyle', 'on', '$2y$10$tcbrZiu.loG/g4YQN18zSOjmboCqgbCFYzJMACETcEBtPyz1uqTQC', 0, 'maryadenondillo10@gmail.com', '09278963716', NULL, NULL, '2025-03-27 15:02:30', NULL, 0, NULL, 'img/avatar-img.jpg'),
(49, 'lebron', 'jems', '$2y$10$YCLCqfTgGBDoVqBIafCk5OpKctRzkXvQbm.OHyTCu7k/Jk4LZC4/i', 0, 'ih560266@gmail.com', '09278963716', NULL, NULL, '2025-03-27 15:26:16', NULL, 0, NULL, 'img/avatar-img.jpg'),
(50, 'Yunge', 'Pie', '$2y$10$q5eZAbf8kEQTbtDfbnC16.jjyDzd/jJF9x6YO8wO1VOLf6C0VjXtS', 0, 'yyan060601@gmail.com', '09945254989', NULL, NULL, '2025-03-28 02:06:51', NULL, 0, NULL, 'img/avatar-img.jpg'),
(52, 'Jose', 'Martinote', '$2y$10$5UnlsdvcK7X.41gnC8pI/.A7eRkbJf7S/xvhr7QAjr.xNwGSkZtWW', 0, 'josemartinote1956@gmail.com', '09615766940', NULL, NULL, '2025-04-05 04:32:20', NULL, 0, NULL, 'img/avatar-img.jpg'),
(53, 'Isabella Cambria', 'Cassano', '$2y$10$.feYGHTUc3XRZSzfeMh0w.o///HqK9dyurxDc.tkijudV6UkgvtAi', 0, 'cassanoisabellacambria@gmail.com', '09150788747', NULL, NULL, '2025-04-05 05:54:58', NULL, 0, NULL, 'img/avatar-img.jpg'),
(55, 'Testing', 'Account', '$2y$10$uNPe1uQOIIduxmPwX1tyuexSHu4pi8d3JaJcQVyhIHQc2aBFwhGSm', 0, 'jdgaming1405@gmail.com', '09764536363', NULL, NULL, '2025-04-23 13:13:06', NULL, 0, '2025-04-24 15:51:46', 'uploads/680b4884901b0_jpg testing.jpg'),
(56, 'TJ', 'Hatdoghatdiggididdog', '$2y$10$.OLoUcSvppy.mlfooNWgGugSATIgLKH5E9k5raKFsziyo5K2hJJX2', 0, 'tjhakdug@gmail.com', '09150788747', NULL, NULL, '2025-04-25 15:08:32', NULL, 0, NULL, 'img/avatar-img.jpg'),
(57, 'Roman Angelo', 'Niebres', '$2y$10$XvPXx6Y616b/O8lciAQbq.QGTkO2dSZ0Dyaibkm9S33fcn/0zYnq6', 0, 'romegelo24@gmail.com', '09127754769', NULL, NULL, '2025-04-26 06:14:55', NULL, 0, NULL, 'img/avatar-img.jpg'),
(59, 'Uno', 'Bentesyete', '$2y$10$zkVlf9pr8gV6D9gi8SNmKu3etQr8RIWJvaE7aE6tvTdElhOx/Z5Um', 0, 'maryannondillo12@gmail.com', '09278963716', NULL, NULL, '2025-04-27 06:45:00', NULL, 0, NULL, 'img/avatar-img.jpg'),
(61, 'Joshua', 'Alcantara', '$2y$10$m98ykeeBQfwUAp3oXNc5ket7S9vTSL0..84pzSnLPzI4SpYH5Ru5e', 0, 'joshmitchdummy@gmail.com', '09633497762', NULL, NULL, '2025-04-29 03:03:19', NULL, 0, NULL, 'img/avatar-img.jpg'),
(62, 'Danilo', 'Lobres', '$2y$10$L7i8tkXIl77wb9rU.byz8.WK65U9Y2t.eAIJgmL4ktG6R/qirwW4m', 0, 'eyeproopticalclinic@gmail.com', '09452790764', NULL, NULL, '2025-05-03 05:27:22', NULL, 0, NULL, 'img/avatar-img.jpg'),
(63, 'Allyson Hazel', 'Avila', '$2y$10$IvX6E0KPDe6klLdWfwRIBOlcUACRrOk1d1WQ0X6mYX7X7kVI1lZFK', 0, 'eyepromalaria@gmail.com', '09452790764', NULL, NULL, '2025-05-03 05:55:53', NULL, 0, NULL, 'img/avatar-img.jpg'),
(65, 'Orics', 'Magon', '$2y$10$oTq4pDSgBtRFkWjYHBUBAekmGs0bhuOrxrbrCVbJcg.a6l.bRazt6', 0, 'magnorico25@gmail.com', '09998586882', NULL, NULL, '2025-05-17 16:06:37', NULL, 0, NULL, 'uploads/6828b483bfca2_BINI.jpg'),
(67, 'Ohrics ', 'Nhomag', '$2y$10$/s.f8pjSWQdyhEAjfeI5yOcL9XY1BeNjmKOfyBjkP/RWLy2ty363K', 0, 'oricsnomag@gmail.com', '09683113268', NULL, NULL, '2025-05-22 09:24:50', NULL, 0, NULL, 'uploads/682f8dd076b72_IMG20250503131906.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_availability`
--

CREATE TABLE `weekly_availability` (
  `id` int(11) NOT NULL,
  `selected_date` date NOT NULL,
  `available_time` time NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification_reset`
--
ALTER TABLE `notification_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `weekly_availability`
--
ALTER TABLE `weekly_availability`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `notification_reset`
--
ALTER TABLE `notification_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `weekly_availability`
--
ALTER TABLE `weekly_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
