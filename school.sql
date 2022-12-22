-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 02:47 PM
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
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_employee_salaries`
--

INSERT INTO `account_employee_salaries` (`id`, `employee_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(25, 22, '2020-12', 5800, '2020-12-30 15:13:22', '2020-12-30 15:13:22'),
(26, 23, '2020-12', 4833.3333333333, '2020-12-30 15:13:22', '2020-12-30 15:13:22'),
(27, 24, '2020-12', 4000, '2020-12-30 15:13:22', '2020-12-30 15:13:22'),
(28, 25, '2020-12', 4833.3333333333, '2020-12-30 15:13:22', '2020-12-30 15:13:22'),
(29, 26, '2020-12', 4000, '2020-12-30 15:13:22', '2020-12-30 15:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_other_costs`
--

INSERT INTO `account_other_costs` (`id`, `date`, `amount`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '2020-12-01', 600, 'Book Self', '202012202010cakephp.png', '2020-12-20 14:10:59', '2020-12-20 14:10:59'),
(2, '2020-12-20', 1000, 'pen cost', '202012202035LARAVEL ADVNACE AUTH.png', '2020-12-20 14:13:05', '2020-12-20 14:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_fees`
--

INSERT INTO `account_student_fees` (`id`, `year_id`, `class_id`, `student_id`, `fee_category_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 9, 1, '2020-12', 540, '2020-12-18 15:12:33', '2020-12-18 15:12:33'),
(3, 3, 3, 10, 2, '2020-12', 1520, '2020-12-18 15:13:03', '2020-12-18 15:13:03'),
(8, 3, 1, 4, 2, '2020-12', 57009, '2020-12-20 13:03:31', '2020-12-20 13:03:31'),
(9, 3, 1, 8, 2, '2020-12', 54009, '2020-12-20 13:03:31', '2020-12-20 13:03:31'),
(12, 3, 1, 4, 1, '2020-12', 285, '2020-12-30 15:12:33', '2020-12-30 15:12:33'),
(13, 3, 1, 7, 1, '2020-12', 285, '2020-12-30 15:12:33', '2020-12-30 15:12:33'),
(14, 3, 1, 8, 1, '2020-12', 270, '2020-12-30 15:12:33', '2020-12-30 15:12:33'),
(15, 2, 1, 6, 1, '2022-08', 285, '2022-09-10 10:21:39', '2022-09-10 10:21:39'),
(16, 3, 1, 4, 2, '1970-01', 57009, '2022-09-18 03:46:30', '2022-09-18 03:46:30'),
(17, 3, 1, 7, 2, '1970-01', 57009, '2022-09-18 03:46:30', '2022-09-18 03:46:30'),
(18, 3, 1, 8, 2, '1970-01', 54009, '2022-09-18 03:46:30', '2022-09-18 03:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 3, 2, 1, '2020-12-02 16:02:38', '2020-12-06 15:01:59'),
(2, 5, NULL, 2, 4, 2, 2, '2020-12-02 16:10:24', '2020-12-02 16:10:24'),
(3, 6, NULL, 1, 2, 1, 1, '2020-12-03 13:36:51', '2020-12-03 13:36:51'),
(4, 7, 2, 1, 3, 1, 1, '2020-12-03 13:37:49', '2020-12-06 15:01:59'),
(5, 8, 3, 1, 3, 2, 2, '2020-12-03 13:38:45', '2020-12-06 15:01:59'),
(6, 9, 4, 2, 3, 2, 2, '2020-12-03 13:44:41', '2020-12-06 15:02:46'),
(7, 10, 12, 3, 3, 2, 1, '2020-12-03 13:49:22', '2020-12-30 14:56:54'),
(8, 11, NULL, 1, 5, 2, 1, '2020-12-03 13:50:48', '2020-12-03 13:50:48'),
(9, 12, NULL, 2, 5, 2, 2, '2020-12-03 13:51:33', '2020-12-03 13:51:33'),
(10, 13, NULL, 3, 5, 3, 3, '2020-12-03 13:52:22', '2020-12-03 13:52:22'),
(11, 14, NULL, 5, 5, 3, 2, '2020-12-03 13:53:11', '2020-12-03 13:53:11'),
(12, 15, 13, 3, 3, 2, 2, '2020-12-03 13:54:04', '2020-12-30 14:56:54'),
(13, 16, NULL, 5, 3, 3, 2, '2020-12-03 13:54:57', '2020-12-03 13:54:57'),
(14, 17, NULL, 5, 3, 3, 2, '2020-12-03 13:55:42', '2020-12-03 13:55:42'),
(15, 18, NULL, 1, 4, 2, 2, '2020-12-03 13:56:33', '2020-12-03 13:56:33'),
(16, 19, NULL, 2, 4, 1, 1, '2020-12-03 13:57:26', '2020-12-03 13:57:26'),
(17, 20, 5, 2, 3, 2, 2, '2020-12-03 14:17:45', '2020-12-06 15:02:46'),
(18, 21, 10, 6, 5, 1, 1, '2020-12-03 14:54:38', '2020-12-06 15:03:38'),
(19, 6, NULL, 2, 5, 1, 1, '2020-12-04 15:33:19', '2020-12-04 15:33:19'),
(20, 11, 6, 2, 3, 2, 1, '2020-12-04 15:42:22', '2020-12-06 15:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 33, 100, '2020-11-30 14:17:21', '2020-11-30 14:17:21'),
(2, 1, 2, 100, 33, 100, '2020-11-30 14:17:21', '2020-11-30 14:17:21'),
(3, 1, 4, 100, 30, 100, '2020-11-30 14:17:21', '2020-11-30 14:17:21'),
(4, 1, 5, 100, 33, 100, '2020-11-30 14:17:21', '2020-11-30 14:17:21'),
(5, 1, 6, 100, 33, 100, '2020-11-30 14:17:21', '2020-11-30 14:17:21'),
(11, 3, 1, 100, 33, 100, '2020-11-30 14:19:31', '2020-11-30 14:19:31'),
(12, 3, 2, 100, 30, 100, '2020-11-30 14:19:31', '2020-11-30 14:19:31'),
(13, 3, 4, 100, 33, 100, '2020-11-30 14:19:31', '2020-11-30 14:19:31'),
(14, 3, 5, 100, 33, 100, '2020-11-30 14:19:31', '2020-11-30 14:19:31'),
(15, 3, 6, 100, 33, 100, '2020-11-30 14:19:31', '2020-11-30 14:19:31'),
(16, 5, 1, 100, 33, 100, '2020-11-30 14:20:17', '2020-11-30 14:20:17'),
(17, 5, 2, 100, 33, 100, '2020-11-30 14:20:17', '2020-11-30 14:20:17'),
(18, 5, 4, 100, 33, 100, '2020-11-30 14:20:17', '2020-11-30 14:20:17'),
(19, 5, 5, 100, 33, 100, '2020-11-30 14:20:17', '2020-11-30 14:20:17'),
(20, 5, 6, 100, 33, 100, '2020-11-30 14:20:17', '2020-11-30 14:20:17'),
(23, 2, 1, 100, 33, 100, '2020-11-30 14:54:29', '2020-11-30 14:54:29'),
(24, 2, 2, 100, 33, 100, '2020-11-30 14:54:29', '2020-11-30 14:54:29'),
(25, 2, 4, 100, 33, 100, '2020-11-30 14:54:29', '2020-11-30 14:54:29'),
(26, 2, 5, 100, 33, 100, '2020-11-30 14:54:29', '2020-11-30 14:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Head Teacher1', '2020-11-30 15:30:48', '2020-11-30 15:43:21'),
(2, 'Assistant Teacher', '2020-11-30 15:31:17', '2020-11-30 15:31:17'),
(3, 'Teacher', '2020-11-30 15:31:33', '2020-11-30 15:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `remark`, `created_at`, `updated_at`) VALUES
(30, 21, 2, 565, 'rew', '2022-11-29 00:27:24', '2022-11-29 00:27:24'),
(31, 21, 1, 3443, 'reeee', '2022-11-29 00:27:24', '2022-11-29 00:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(1, 22, '2020-12-01', 'Leave', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(2, 23, '2020-12-01', 'Absent', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(3, 24, '2020-12-01', 'Present', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(4, 25, '2020-12-01', 'Present', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(5, 26, '2020-12-01', 'Present', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(6, 27, '2020-12-01', 'Absent', '2020-12-13 14:51:04', '2020-12-13 14:51:04'),
(13, 22, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(14, 23, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(15, 24, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(16, 25, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(17, 26, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(18, 27, '2020-12-04', 'Present', '2020-12-13 15:00:22', '2020-12-13 15:00:22'),
(19, 22, '2020-12-03', 'Present', '2020-12-13 16:03:32', '2020-12-13 16:03:32'),
(20, 23, '2020-12-03', 'Present', '2020-12-13 16:03:32', '2020-12-13 16:03:32'),
(21, 24, '2020-12-03', 'Present', '2020-12-13 16:03:32', '2020-12-13 16:03:32'),
(22, 25, '2020-12-03', 'Absent', '2020-12-13 16:03:33', '2020-12-13 16:03:33'),
(23, 26, '2020-12-03', 'Present', '2020-12-13 16:03:33', '2020-12-13 16:03:33'),
(24, 27, '2020-12-03', 'Present', '2020-12-13 16:03:33', '2020-12-13 16:03:33'),
(31, 22, '2020-12-05', 'Absent', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(32, 23, '2020-12-05', 'Present', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(33, 24, '2020-12-05', 'Present', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(34, 25, '2020-12-05', 'Present', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(35, 26, '2020-12-05', 'Present', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(36, 27, '2020-12-05', 'Present', '2020-12-13 16:04:45', '2020-12-13 16:04:45'),
(37, 22, '2020-11-05', 'Present', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(38, 23, '2020-11-05', 'Absent', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(39, 24, '2020-11-05', 'Present', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(40, 25, '2020-11-05', 'Present', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(41, 26, '2020-11-05', 'Present', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(42, 27, '2020-11-05', 'Present', '2020-12-15 13:40:28', '2020-12-15 13:40:28'),
(43, 22, '2020-12-31', 'Leave', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(44, 23, '2020-12-31', 'Present', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(45, 24, '2020-12-31', 'Present', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(46, 25, '2020-12-31', 'Leave', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(47, 26, '2020-12-31', 'Leave', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(48, 27, '2020-12-31', 'Present', '2020-12-30 15:06:49', '2020-12-30 15:06:49'),
(49, 22, '2020-12-23', 'Leave', '2022-09-15 01:35:35', '2022-09-15 01:35:35'),
(50, 23, '2020-12-23', 'Present', '2022-09-15 01:35:36', '2022-09-15 01:35:36'),
(51, 24, '2020-12-23', 'Present', '2022-09-15 01:35:36', '2022-09-15 01:35:36'),
(52, 25, '2020-12-23', 'Leave', '2022-09-15 01:35:36', '2022-09-15 01:35:36'),
(53, 26, '2020-12-23', 'Leave', '2022-09-15 01:35:36', '2022-09-15 01:35:36'),
(54, 27, '2020-12-23', 'Present', '2022-09-15 01:35:36', '2022-09-15 01:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 22, 6, '2020-12-25', '2020-12-30', '2020-12-11 16:34:16', '2020-12-11 16:34:16'),
(3, 26, 7, '2021-01-05', '2021-01-07', '2020-12-30 15:05:57', '2020-12-30 15:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sallary_logs`
--

CREATE TABLE `employee_sallary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_sallary_logs`
--

INSERT INTO `employee_sallary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_salary`, `created_at`, `updated_at`) VALUES
(1, 22, 3000, 3000, 0, '2020-12-01', '2020-12-09 14:53:20', '2020-12-09 14:53:20'),
(2, 23, 4000, 4000, 0, '2020-11-01', '2020-12-09 14:55:19', '2020-12-09 14:55:19'),
(3, 23, 4000, 5000, 1000, '2020-12-12', '2020-12-11 14:13:09', '2020-12-11 14:13:09'),
(4, 22, 3000, 6000, 3000, '2020-12-11', '2020-12-11 14:42:58', '2020-12-11 14:42:58'),
(5, 24, 4000, 4000, 0, '2019-01-29', '2020-12-11 17:04:07', '2020-12-11 17:04:07'),
(6, 25, 5000, 5000, 0, '2018-06-19', '2020-12-11 17:05:04', '2020-12-11 17:05:04'),
(7, 26, 4000, 4000, 0, '2016-02-12', '2020-12-11 17:06:27', '2020-12-11 17:06:27'),
(8, 27, 6000, 6000, 0, '2016-06-22', '2020-12-11 17:07:39', '2020-12-11 17:07:39'),
(9, 23, 5000, 6000, 1000, '1970-01-01', '2022-09-17 04:14:27', '2022-09-17 04:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Terminal Exam', '2020-11-29 13:23:10', '2020-11-29 13:23:10'),
(2, '2nd Terminal Exam', '2020-11-29 13:23:23', '2020-12-07 16:11:42'),
(3, '3rd Terminal Exam', '2020-11-29 13:23:34', '2020-11-29 13:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration Fee', '2020-11-28 13:06:09', '2020-11-28 13:06:09'),
(2, 'Monthly Fee', '2020-11-28 13:06:31', '2020-11-28 13:06:31'),
(3, 'Exam Fee', '2020-11-28 13:06:40', '2020-11-28 13:06:40'),
(5, 'feecat', '2022-10-06 04:16:35', '2022-10-06 04:16:35'),
(6, 'fee', '2022-10-06 04:17:40', '2022-10-06 04:17:40'),
(7, 'ff', '2022-10-06 04:19:14', '2022-10-06 04:19:14'),
(8, 'qwf', '2022-10-06 04:22:33', '2022-10-06 04:22:33'),
(9, 'ggg', '2022-10-06 04:24:24', '2022-10-06 04:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 300, '2020-11-28 14:55:29', '2020-11-28 14:55:29'),
(2, 1, 2, 600, '2020-11-28 14:55:29', '2020-11-28 14:55:29'),
(14, 3, 1, 1600, '2020-11-28 16:03:30', '2020-11-28 16:03:30'),
(15, 3, 2, 1700, '2020-11-28 16:03:30', '2020-11-28 16:03:30'),
(16, 2, 1, 60009, '2020-11-28 16:25:31', '2020-11-28 16:25:31'),
(17, 2, 2, 6000, '2020-11-28 16:25:31', '2020-11-28 16:25:31'),
(18, 2, 6, 1600, '2020-11-28 16:25:31', '2020-11-28 16:25:31'),
(19, 1, 1, 12, '2022-09-09 04:38:36', '2022-09-09 04:38:36'),
(20, 1, 6, 123, '2022-09-09 04:38:36', '2022-09-09 04:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_month`
--

CREATE TABLE `fee_category_month` (
  `id` int(111) NOT NULL,
  `fee_category_id` int(111) NOT NULL,
  `month_id` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_category_month`
--

INSERT INTO `fee_category_month` (`id`, `fee_category_id`, `month_id`) VALUES
(15, 1, 1),
(16, 1, 2),
(17, 1, 3),
(18, 8, 1),
(19, 8, 9),
(20, 9, 4),
(21, 9, 5),
(22, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `fee_paids`
--

CREATE TABLE `fee_paids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_paids`
--

INSERT INTO `fee_paids` (`id`, `student_id`, `created_at`, `updated_at`) VALUES
(8, 21, '2022-11-29 01:09:41', '2022-11-29 01:09:41'),
(9, 21, '2022-11-29 07:17:18', '2022-11-29 07:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `fee_paid_month`
--

CREATE TABLE `fee_paid_month` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_paid_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_paid_month`
--

INSERT INTO `fee_paid_month` (`id`, `fee_paid_id`, `month_id`, `created_at`, `updated_at`) VALUES
(8, 8, 1, '2022-11-29 01:09:41', '2022-11-29 01:09:41'),
(10, 8, 5, '2022-11-29 01:15:42', '2022-11-29 01:15:42'),
(11, 8, 12, '2022-11-29 01:15:42', '2022-11-29 01:15:42'),
(12, 9, 11, '2022-11-29 07:17:18', '2022-11-29 07:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Family Problem', NULL, NULL),
(2, 'Personal Problem', NULL, NULL),
(5, 'Friend Problem', '2020-12-11 16:32:01', '2020-12-11 16:32:01'),
(6, 'Health Problem', '2020-12-11 16:34:16', '2020-12-11 16:34:16'),
(7, 'test', '2020-12-30 15:05:57', '2020-12-30 15:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `grade_name`, `grade_point`, `start_marks`, `end_marks`, `start_point`, `end_point`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'A+', '5', '80', '100', '5', '5', 'Excellent', '2020-12-16 15:03:12', '2020-12-21 14:33:10'),
(2, 'A', '4', '70', '79', '4', '4.99', 'Very Good', '2020-12-16 15:18:36', '2020-12-21 14:33:28'),
(3, 'A-', '3.5', '60', '69', '3.5', '3.99', 'Good', '2020-12-16 15:19:12', '2020-12-21 14:33:43'),
(4, 'B', '3', '50', '59', '3', '3.49', 'Average', '2020-12-16 15:20:08', '2020-12-21 14:33:55'),
(5, 'C', '2', '40', '49', '2', '2.99', 'Disappoint', '2020-12-16 15:20:53', '2020-12-21 14:34:09'),
(6, 'D', '1', '33', '39', '1', '1.99', 'Bad', '2020-12-16 15:21:32', '2020-12-21 14:34:22'),
(7, 'F', '0', '00', '32', '0', '0.99', 'Fail', '2020-12-16 15:22:13', '2020-12-21 14:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_23_192918_create_sessions_table', 1),
(8, '2020_11_27_191622_create_student_classes_table', 3),
(9, '2020_11_27_201955_create_student_years_table', 4),
(10, '2020_11_27_205317_create_student_groups_table', 5),
(11, '2020_11_27_212648_create_student_shifts_table', 6),
(12, '2020_11_28_184513_create_fee_categories_table', 7),
(13, '2020_11_28_193421_create_fee_category_amounts_table', 8),
(14, '2020_11_29_190907_create_exam_types_table', 9),
(15, '2020_11_29_193820_create_school_subjects_table', 10),
(16, '2020_11_30_192807_create_assign_subjects_table', 11),
(17, '2020_11_30_211919_create_designations_table', 12),
(18, '2014_10_12_000000_create_users_table', 13),
(19, '2020_12_02_191137_create_assign_students_table', 14),
(20, '2020_12_02_191735_create_discount_students_table', 14),
(21, '2020_12_09_192120_create_employee_sallary_logs_table', 15),
(22, '2020_12_11_205416_create_leave_purposes_table', 16),
(23, '2020_12_11_210033_create_employee_leaves_table', 16),
(24, '2020_12_13_192045_create_employee_attendances_table', 17),
(25, '2020_12_15_214223_create_student_marks_table', 18),
(26, '2020_12_16_202402_create_marks_grades_table', 19),
(27, '2020_12_18_191232_create_account_student_fees_table', 20),
(28, '2020_12_18_212912_create_account_employee_salaries_table', 21),
(29, '2020_12_20_192742_create_account_other_costs_table', 22),
(30, '2022_10_18_093610_create_transport_fees_table', 23),
(31, '2022_10_18_094218_transportfee_month', 24),
(32, '2022_10_18_101824_month_transport_fee', 25),
(33, '2022_11_23_075950_create_fee_paids_table', 26),
(34, '2022_11_27_121622_create_mmmms_table', 27),
(35, '2022_11_29_062643_create_fee_paid_month_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` int(11) NOT NULL,
  `month` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `month`) VALUES
(1, 'Jan'),
(2, 'Feb'),
(3, 'March'),
(4, 'April\r\n'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October\r\n'),
(11, 'November'),
(12, 'December\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `month` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `month`) VALUES
(1, 'Jan'),
(2, 'Feb'),
(3, 'March'),
(4, 'April\r\n'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October\r\n'),
(11, 'November'),
(12, 'December\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `month_transport_fee`
--

CREATE TABLE `month_transport_fee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transport_fee_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `month_transport_fee`
--

INSERT INTO `month_transport_fee` (`id`, `transport_fee_id`, `month_id`, `created_at`, `updated_at`) VALUES
(27, 9, 5, '2022-11-28 23:08:50', '2022-11-28 23:08:50'),
(28, 9, 4, '2022-11-29 00:26:50', '2022-11-29 00:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Health', '2020-11-29 13:48:46', '2020-11-29 13:48:46'),
(2, 'English', '2020-11-29 13:49:05', '2020-11-29 13:49:05'),
(4, 'Hindi', '2020-11-30 13:57:44', '2020-11-30 13:57:44'),
(5, 'Mathematics', '2020-11-30 13:58:13', '2020-11-30 13:58:13'),
(6, 'Arts', '2020-11-30 13:58:46', '2020-11-30 13:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('F2pNNt7HUmUvvcHhWUMrFyuhRUvsaLnyLZbdERgQ', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicTdrb0ZRNnlhWk51djZtVjc0MHVITGtibmlRTE1DbGQwVm9CTlNzNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9yZWcvZmVlcGFpZC8yMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkTHp6czlCbEJoMEhzWGczMWhEbC5EdTZEWXVnRnZiQXg2SjJEN2x4SUo5RkR4Z2NidGlYMk8iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEx6enM5QmxCaDBIc1hnMzFoRGwuRHU2RFl1Z0Z2YkF4NkoyRDdseElKOUZEeGdjYnRpWDJPIjt9', 1669218490),
('NqcT6YAiupA2ZcqMB7HAVpnqz4gSgXF3BmhEem3N', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoianU3cU9BZ21OWlpEYXJTdGlZa1ZmYnFzU2o1QnZSZG9VV1RJV0VXdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXR1cHMvZmVlL3BhaWQvcGRmMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkTHp6czlCbEJoMEhzWGczMWhEbC5EdTZEWXVnRnZiQXg2SjJEN2x4SUo5RkR4Z2NidGlYMk8iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEx6enM5QmxCaDBIc1hnMzFoRGwuRHU2RFl1Z0Z2YkF4NkoyRDdseElKOUZEeGdjYnRpWDJPIjt9', 1669210922),
('wofmRmQbfW7EEngx3z05blas3IfHiwoHnC3FlqPx', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibmkxUDVTRlVLQlBVSWo1a1BPdGZXd3BJNzZWb2dNeU9USFpISXd3cyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3R1ZGVudHMvcmVnL2ZlZXN0cnUvMjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyOTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEx6enM5QmxCaDBIc1hnMzFoRGwuRHU2RFl1Z0Z2YkF4NkoyRDdseElKOUZEeGdjYnRpWDJPIjt9', 1669439170),
('XeUklv10urxo8HoAQhf0qm2UQNrB57TuLYFoOqiW', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidk45QWMzdXRMTDl3bXlON0JwTmI4Snk2TmM4MDFvN2xlQlNHQWhLUiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3R1ZGVudHMvcmVnL2ZlZXBhaWQvMjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyOTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEx6enM5QmxCaDBIc1hnMzFoRGwuRHU2RFl1Z0Z2YkF4NkoyRDdseElKOUZEeGdjYnRpWDJPIjt9', 1669701896);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Class One', '2020-11-27 13:49:08', '2020-11-27 14:10:13'),
(2, 'Class Two', '2020-11-27 13:49:36', '2020-11-27 13:49:36'),
(3, 'Class Three', '2020-11-27 13:49:52', '2020-11-27 13:49:52'),
(5, 'Class Four', '2020-11-30 13:56:05', '2020-11-30 13:56:05'),
(6, 'Class Five', '2020-11-30 13:56:18', '2020-11-30 13:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Art', '2020-11-27 15:03:25', '2020-11-27 15:14:53'),
(2, 'Science', '2020-11-27 15:03:40', '2020-11-27 15:03:40'),
(3, 'Health', '2020-11-27 15:03:53', '2020-11-27 15:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(255) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(4, 9, '20200009', 3, 2, 24, 1, 90, '2020-12-15 18:09:20', '2020-12-15 18:09:20'),
(5, 20, '20200020', 3, 2, 24, 1, 40, '2020-12-15 18:09:20', '2020-12-15 18:09:20'),
(6, 11, '20190011', 3, 2, 24, 1, 50, '2020-12-15 18:09:20', '2020-12-15 18:09:20'),
(7, 4, '20200001', 3, 1, 1, 1, 90, '2020-12-16 13:55:08', '2020-12-16 13:55:08'),
(8, 7, '20200007', 3, 1, 1, 1, 60, '2020-12-16 13:55:08', '2020-12-16 13:55:08'),
(9, 8, '20200008', 3, 1, 1, 1, 70, '2020-12-16 13:55:08', '2020-12-16 13:55:08'),
(10, 9, '20200009', 3, 2, 24, 1, 50, '2020-12-30 15:10:18', '2020-12-30 15:10:18'),
(11, 20, '20200020', 3, 2, 24, 1, NULL, '2020-12-30 15:10:18', '2020-12-30 15:10:18'),
(12, 11, '20190011', 3, 2, 24, 1, NULL, '2020-12-30 15:10:18', '2020-12-30 15:10:18'),
(13, 6, '20180006', 2, 1, 1, 1, 34, '2022-09-14 21:09:24', '2022-09-14 21:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shift A', '2020-11-27 15:36:20', '2020-11-27 15:36:20'),
(2, 'Shift B', '2020-11-27 15:36:38', '2020-11-27 15:46:43'),
(3, 'Shift C', '2020-11-27 15:36:51', '2020-11-27 15:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, '2018', '2020-11-27 14:31:02', '2020-11-27 14:31:02'),
(3, '2020', '2020-11-27 14:31:10', '2020-11-27 14:31:10'),
(4, '2021', '2020-11-27 14:31:19', '2020-11-27 14:31:19'),
(5, '2019', '2020-12-03 13:50:05', '2020-12-03 13:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `transport_fees`
--

CREATE TABLE `transport_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_fees`
--

INSERT INTO `transport_fees` (`id`, `student_id`, `amount`, `route`, `created_at`, `updated_at`) VALUES
(9, 21, '3231', 're', '2022-11-28 21:37:36', '2022-11-29 00:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of sotware,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$L3OP2ihMfIPvBBaLMtDvB.eNyGmBFEUImumOW0lzgHEBzFtjXX0em', '323232323', 'USA', 'Male', '202011252028download.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Admin', 'Jhon', 'jhon@gmail.com', NULL, '$2y$10$IikolUdyvE0RlrKiA7KuR.A7Q8GysnUam6kL89kQQoyfhqW1MXbE.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9169', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-02 13:50:42', '2020-12-02 13:50:42'),
(4, 'Student', 'Ali Khan', NULL, NULL, '$2y$10$se5rtNwaGzABLFJOEfGKIeM0GpV9lbyB2wAvnVQAVRuVcJqvwDGC.', '343434', 'India', 'Male', '202012061829IMG_5509-375x500.jpg', 'Abu Khan', 'Ma Khan', 'Islam', '20200001', '2017-06-03', '6278', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-02 16:02:38', '2020-12-06 12:29:07'),
(5, 'Student', 'kazi', NULL, NULL, '$2y$10$QraCq7oFTPaMGTchz4fyFujfjhn8Bppfdy8JRQUTBW1PxTo2h4fq6', '43343434', 'India', 'Male', '202012022210Stan1.jpg', 'Kazi Razzark', 'Laia Begum', 'Islam', '20210005', '2016-06-07', '2371', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-02 16:10:24', '2020-12-02 16:10:24'),
(6, 'Student', 'Abigail', NULL, NULL, '$2y$10$SN8S7Y0qJ31XSl995ysqReL.4/V9Zh95AeRp6/t9WYsv00g9KTOti', '343434', 'India', 'Male', '202012031936aamir-khalique.jpg', 'Alexandra', 'Alison', 'Christan', '20180006', '2018-06-05', '4564', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:36:51', '2020-12-03 13:36:51'),
(7, 'Student', 'Amanda', NULL, NULL, '$2y$10$NkfveJz7W3BU5VchQ.evKOYbfACf0KffUfnV6YEoFKKR257ucXAEG', '43434', 'India', 'Female', '202012031937student-profile.jpg', 'Amelia', 'Amy', 'Christan', '20200007', '2017-05-31', '6613', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:37:49', '2020-12-03 13:37:49'),
(8, 'Student', 'Andrea', NULL, NULL, '$2y$10$Pqnu7kmM4STitonPeMyWqeFO0U1M3ND6CejdNSO6o29Ub1er0i8Hm', '322323', 'India', 'Female', '202012031938Zoe-Colman-original-1.jpg', 'Angela', 'Anna', 'Hindu', '20200008', '2017-06-14', '9203', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:38:45', '2020-12-03 13:38:45'),
(9, 'Student', 'Anne', NULL, NULL, '$2y$10$4KKWvm3/KX1Mvbp1oMbQ3OwZah7KalE89hl7DrnZTfep6.R5Tlx9W', '234324234', 'India', 'Female', '202012031944Zoe-Colman-original-1.jpg', 'Audrey', 'Ava', 'Islam', '20200009', '2016-06-04', '7804', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:44:41', '2020-12-03 13:44:41'),
(10, 'Student', 'Bella', NULL, NULL, '$2y$10$iYn6I2RkWqOv6r1GSzQOEehSJ3w.fg7NOZemakDQ6O3TLSCGvgSTa', '34343434', 'India', 'Male', '202012031949Ambrose-Chui-Cropped-200x200.jpg', 'Bernadette', 'Carol', 'Islam', '20200010', '2020-12-03', '900', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:49:22', '2020-12-03 13:49:22'),
(11, 'Student', 'Claire', NULL, NULL, '$2y$10$9QB3NKXnyyLs4p2Py0d5jO80zvuhsl2HNHZ9Nq2JKKzCpurMy.P8W', '3443434', 'India', 'Female', '202012031950IMG_9991-1200x800.jpg', 'Deirdre', 'Diana', 'Hindu', '20190011', '2020-12-01', '6136', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:50:48', '2020-12-03 13:50:48'),
(12, 'Student', 'Diane', NULL, NULL, '$2y$10$GELq7rqGwUHBuNrsC43pLehRU0AuJsUb/0FGEXn7b4wPz5PcGc8ja', '43343434', 'India', 'Male', '202012031951student-profile-javon-nathaniel.jpg', 'Donna', 'Dorothy', 'Hindu', '20190012', '2020-12-01', '4041', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:51:33', '2020-12-03 13:51:33'),
(13, 'Student', 'Faith', NULL, NULL, '$2y$10$WteePeCGJkpLb6wOcCSkLuIVbVmEIKo8BLa2Ij.Z5i2verJM8IKdK', '4343434434', 'India', 'Female', '202012031952juliana-schneider.jpg', 'Felicity', 'Fiona', 'Christan', '20190013', '2019-05-12', '6704', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:52:22', '2020-12-03 13:52:22'),
(14, 'Student', 'Gabrielle', NULL, NULL, '$2y$10$5NTwQ5Sp3zXNFcUW6hBU1uIAgqUl25rjJxH26YpAh8Xt22nLQgGxS', '343434', 'India', 'Female', '202012031953florence-mazy-international-student-profile.jpg', 'Grace', 'Hannah', 'Christan', '20190014', '2020-12-01', '3064', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:53:10', '2020-12-03 13:53:10'),
(15, 'Student', 'Heather', NULL, NULL, '$2y$10$9SycREKqhTbz9gBjLSmKoulHSSRnYQI2skRVDV7a8QsEXVgGV0yxW', '43343434', 'India', 'Female', '202012031954poppe-crop-300x213.png', 'Irene', 'Jan', 'Christan', '20200015', '2020-11-30', '5948', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:54:04', '2020-12-03 13:54:04'),
(16, 'Student', 'Jane', NULL, NULL, '$2y$10$EBj/M.pe.db9Xn3lCPG3uuoG5YfW1fGUzE/R80IfHfsCbWigQje/y', '34433434', 'India', 'Male', '202012031954patrick2.jpg', 'Jasmine', 'Jennifer', 'Islam', '20200016', '2020-12-01', '5107', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:54:57', '2020-12-03 13:54:57'),
(17, 'Student', 'Jessica', NULL, NULL, '$2y$10$nO31IoV.7arHWu5a3TTJ5ewvbySyutJXsQNZQ.RLiWBOpQlT93RBe', '343434434', 'India', 'Male', '202012031955Thomas-Cameron_Student_Profile.jpg', 'Joan', 'Joanne', 'Islam', '20200017', '2018-01-30', '3022', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:55:42', '2020-12-03 13:55:42'),
(18, 'Student', 'Julia', NULL, NULL, '$2y$10$rB3acsIjYTrb/oaszoD//.Zb1CQpiIZdTWajIG1RacBWvfQc7OfXa', '3443434', 'India', 'Female', '202012031956student-profile-asia-mills-college.jpg', 'Karen', 'Katherine', 'Hindu', '20210018', '2019-01-29', '6275', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:56:33', '2020-12-03 13:56:33'),
(19, 'Student', 'Kimberly', NULL, NULL, '$2y$10$siOO76YIqB/O0LtYrqn2o.juRLjm.ZUkz/slX2K/R/rHX5bLiOSxi', '433434', 'India', 'Male', '202012031957photo_1078846.jpg', 'Kylie', 'Lauren', 'Christan', '20210019', '2018-06-05', '2837', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 13:57:26', '2020-12-03 13:57:26'),
(20, 'Student', 'Lilysdfsadf', NULL, NULL, '$2y$10$KtpAyUvm0G.TJcc.OaeEeOrO92TlTeVCkU45oZ6MYb0CU3GCasNRO', '4343434sdf', 'India', 'Male', '202012032017tobinsouth_vrs_2017-18.jpeg', 'Lisasadfs', 'Madeleinesdfsd', 'Christan', '20200020', '2016-06-15', '6888', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 14:17:45', '2020-12-04 15:05:21'),
(21, 'Student', 'Rohim', NULL, NULL, '$2y$10$PbsNXjNsLUsWFWxoX.vlMOjw2aa66Q7H2TmuyECfdPoRDdDpx4cTK', '3434344', 'India', 'Male', '202012032054student-profile-javon-nathaniel.jpg', 'Ablul', 'Nazma', 'Islam', '20190021', '2019-06-04', '8450', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 14:54:38', '2020-12-03 14:54:38'),
(22, 'employee', 'Hasan333', NULL, NULL, '$2y$10$S4txlW65grypQuPueJOome5k9mBoh.1vyer1ymsIoH2lBJqqQZm.u', '43434334', 'India', 'Female', '202012092137florence-mazy-international-student-profile.jpg', 'Rohim33', 'Ma Khan333', 'Hindu', '2020120001', '2009-06-09', '9416', NULL, '2020-12-01', 3, 6000, 1, NULL, NULL, NULL, '2020-12-09 14:53:20', '2020-12-11 14:42:58'),
(23, 'employee', 'Test User', NULL, NULL, '$2y$10$bEkA/4IwB5LAqpqmOoVZluwHFWxUrk7e880sIJ6nfXK7jVbJyCP5C', '343433434', 'USA', 'Male', '202012092055photo_1078846.jpg', 'testfather', 'testmohter', 'Hindu', '2020110023', '2008-01-29', '8783', NULL, '2020-11-01', 2, 6000, 1, NULL, NULL, NULL, '2020-12-09 14:55:19', '2022-09-17 04:14:27'),
(24, 'employee', 'Nevine Acotanza', NULL, NULL, '$2y$10$KTuStKtiI8LfFSOZNjQjEOLrQFVFKBUlscBkJnhPusoaQ3qpvOVru', '43534345435', 'India', 'Male', '2020121123047837_Profile-2.rev.1572210489.jpg', 'Oluwarotimi Adesina', 'Ruth', 'Hindu', '2019010024', '2014-07-17', '9056', NULL, '2019-01-29', 3, 4000, 1, NULL, NULL, NULL, '2020-12-11 17:04:07', '2020-12-11 17:04:07'),
(25, 'employee', 'Yvenide Belizaire', NULL, NULL, '$2y$10$3g.8yrp6eFOAUpK.4NuZAeCT2VWiS3AryxT9Q.V0qun61dKMZIv2i', '345435345', 'India', 'Female', '202012112305florence-mazy-international-student-profile.jpg', 'Sarah', 'Rose', 'Islam', '2018060025', '2012-01-31', '2533', NULL, '2018-06-19', 2, 5000, 1, NULL, NULL, NULL, '2020-12-11 17:05:04', '2020-12-11 17:05:04'),
(26, 'employee', 'Rahul Chaudhri', NULL, NULL, '$2y$10$oE/HIumlMcl6nHE2pv4t7ugp1utMKv5CNdMfLyXHFCU2N09RdDtH.', '4354354334', 'India', 'Female', '202012112306photo_1078846.jpg', 'Brian', 'Benjamin', 'Christan', '2016020026', '2000-02-16', '731', NULL, '2016-02-12', 1, 4000, 1, NULL, NULL, NULL, '2020-12-11 17:06:27', '2020-12-11 17:06:27'),
(27, 'employee', 'Caravaggio', NULL, NULL, '$2y$10$W0RDCD5ydCwmJkrQ088OPe9si/sMDlnixF89a6e5Q7iqjzIQ1WYKC', 'rwerwerwe', 'Inida', 'Male', '202012112307patrick2.jpg', 'Cameron', 'Blake', 'Hindu', '2016060027', '2014-07-09', '7333', NULL, '2016-06-22', 3, 6000, 1, NULL, NULL, NULL, '2020-12-11 17:07:39', '2020-12-11 17:07:39'),
(28, 'Admin', 'demo', 'demo@gmail.com', NULL, '$2y$10$u7FPVIxEsEbdbq0NGHQpI.y48umM0PuDnCZTDlvw6le0AAmcLk.Um', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3875', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-30 14:40:33', '2020-12-30 14:40:33'),
(29, NULL, 'bhavesh', 'bhavesh@gmail.com', NULL, '$2y$10$Lzzs9BlBh0HsXg31hDl.Du6DYugFvbAx6J2D7lxIJ9FDxgcbtiX2O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-09-05 11:44:35', '2022-09-05 11:44:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_category_month`
--
ALTER TABLE `fee_category_month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_paids`
--
ALTER TABLE `fee_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_paid_month`
--
ALTER TABLE `fee_paid_month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_transport_fee`
--
ALTER TABLE `month_transport_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `transport_fees`
--
ALTER TABLE `transport_fees`
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
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fee_category_month`
--
ALTER TABLE `fee_category_month`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fee_paids`
--
ALTER TABLE `fee_paids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fee_paid_month`
--
ALTER TABLE `fee_paid_month`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `month_transport_fee`
--
ALTER TABLE `month_transport_fee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport_fees`
--
ALTER TABLE `transport_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
