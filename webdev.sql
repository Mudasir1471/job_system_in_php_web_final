-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2026 at 12:08 AM
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
-- Database: `webdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `applicant_name`, `applicant_email`, `created_at`, `updated_at`) VALUES
(1, 10, 'iPhone 16 Pro Max', 'waseemkhan3703@gmail.com', '2026-01-02 17:50:45', '2026-01-02 17:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `image`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'SQA Engineer at Descon', 'We are looking for a talented SQA Engineer to join our team at Descon.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-22', '2026-02-15', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(2, 'Digital Marketing Specialist at Telenor Pakistan', 'We are looking for a talented Digital Marketing Specialist to join our team at Telenor Pakistan.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-14', '2026-01-23', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(3, 'Network Engineer at Airlift', 'We are looking for a talented Network Engineer to join our team at Airlift.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-21', '2026-02-01', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(4, 'Customer Support Executive at Telenor Pakistan', 'We are looking for a talented Customer Support Executive to join our team at Telenor Pakistan.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-04', '2026-01-11', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(5, 'Digital Marketing Specialist at PTCL', 'We are looking for a talented Digital Marketing Specialist to join our team at PTCL.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2026-01-01', '2026-02-09', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(6, 'SQA Engineer at Engro Corp', 'We are looking for a talented SQA Engineer to join our team at Engro Corp.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-09', '2026-03-01', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(7, 'Digital Marketing Specialist at Engro Corp', 'We are looking for a talented Digital Marketing Specialist to join our team at Engro Corp.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-06', '2026-01-18', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(8, 'Digital Marketing Specialist at Devsinc', 'We are looking for a talented Digital Marketing Specialist to join our team at Devsinc.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-22', '2026-01-11', '2026-01-02 17:50:17', '2026-01-02 17:50:17'),
(9, 'Digital Marketing Specialist at Descon', 'We are looking for a talented Digital Marketing Specialist to join our team at Descon.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-04', '2026-01-25', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(10, 'Customer Support Executive at Sadapay', 'We are looking for a talented Customer Support Executive to join our team at Sadapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-18', '2026-01-31', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(11, 'Data Analyst at 10Pearls', 'We are looking for a talented Data Analyst to join our team at 10Pearls.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-15', '2026-02-23', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(12, 'Digital Marketing Specialist at Arbisoft', 'We are looking for a talented Digital Marketing Specialist to join our team at Arbisoft.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-24', '2026-02-19', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(13, 'Graphics Designer at HBL', 'We are looking for a talented Graphics Designer to join our team at HBL.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2026-01-01', '2026-01-13', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(14, 'Human Resource Manager at Jazz', 'We are looking for a talented Human Resource Manager to join our team at Jazz.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-15', '2026-02-20', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(15, 'React Native Engineer at Meezan Bank', 'We are looking for a talented React Native Engineer to join our team at Meezan Bank.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-12', '2026-02-21', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(16, 'Data Analyst at Meezan Bank', 'We are looking for a talented Data Analyst to join our team at Meezan Bank.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-28', '2026-01-23', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(17, 'Digital Marketing Specialist at Telenor Pakistan', 'We are looking for a talented Digital Marketing Specialist to join our team at Telenor Pakistan.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-19', '2026-02-07', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(18, 'Senior Laravel Developer at Sapphire', 'We are looking for a talented Senior Laravel Developer to join our team at Sapphire.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-15', '2026-01-18', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(19, 'Data Analyst at Jazz', 'We are looking for a talented Data Analyst to join our team at Jazz.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-06', '2026-02-03', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(20, 'SQA Engineer at PTCL', 'We are looking for a talented SQA Engineer to join our team at PTCL.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-07', '2026-01-21', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(21, 'Senior Laravel Developer at Bank Alfalah', 'We are looking for a talented Senior Laravel Developer to join our team at Bank Alfalah.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-31', '2026-02-23', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(22, 'Project Manager at Engro Corp', 'We are looking for a talented Project Manager to join our team at Engro Corp.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-31', '2026-02-05', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(23, 'Network Engineer at Telenor Pakistan', 'We are looking for a talented Network Engineer to join our team at Telenor Pakistan.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-15', '2026-02-23', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(24, 'Graphics Designer at Sapphire', 'We are looking for a talented Graphics Designer to join our team at Sapphire.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-04', '2026-02-11', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(25, 'Network Engineer at Nayapay', 'We are looking for a talented Network Engineer to join our team at Nayapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-04', '2026-02-02', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(26, 'Data Analyst at Ufone', 'We are looking for a talented Data Analyst to join our team at Ufone.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-07', '2026-01-29', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(27, 'Digital Marketing Specialist at Sadapay', 'We are looking for a talented Digital Marketing Specialist to join our team at Sadapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-11', '2026-01-13', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(28, 'Data Analyst at Engro Corp', 'We are looking for a talented Data Analyst to join our team at Engro Corp.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-19', '2026-02-06', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(29, 'Senior Laravel Developer at Jazz', 'We are looking for a talented Senior Laravel Developer to join our team at Jazz.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2026-01-02', '2026-01-09', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(30, 'Graphics Designer at Descon', 'We are looking for a talented Graphics Designer to join our team at Descon.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-23', '2026-02-23', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(31, 'Network Engineer at Khaadi', 'We are looking for a talented Network Engineer to join our team at Khaadi.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-22', '2026-01-24', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(32, 'Data Analyst at Airlift', 'We are looking for a talented Data Analyst to join our team at Airlift.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-28', '2026-03-02', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(33, 'Graphics Designer at Bank Alfalah', 'We are looking for a talented Graphics Designer to join our team at Bank Alfalah.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-04', '2026-01-25', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(34, 'Graphics Designer at Arbisoft', 'We are looking for a talented Graphics Designer to join our team at Arbisoft.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-12', '2026-03-03', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(35, 'Project Manager at Sapphire', 'We are looking for a talented Project Manager to join our team at Sapphire.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-26', '2026-01-28', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(36, 'Digital Marketing Specialist at Sadapay', 'We are looking for a talented Digital Marketing Specialist to join our team at Sadapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-20', '2026-01-13', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(37, 'Customer Support Executive at Systems Limited', 'We are looking for a talented Customer Support Executive to join our team at Systems Limited.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-14', '2026-01-26', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(38, 'React Native Engineer at Arbisoft', 'We are looking for a talented React Native Engineer to join our team at Arbisoft.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-22', '2026-02-17', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(39, 'Human Resource Manager at PTCL', 'We are looking for a talented Human Resource Manager to join our team at PTCL.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-30', '2026-02-07', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(40, 'Data Analyst at Airlift', 'We are looking for a talented Data Analyst to join our team at Airlift.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '2025-12-11', '2026-01-18', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(41, 'Digital Marketing Specialist at Nayapay', 'We are looking for a talented Digital Marketing Specialist to join our team at Nayapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-14', '2026-01-22', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(42, 'Digital Marketing Specialist at Sadapay', 'We are looking for a talented Digital Marketing Specialist to join our team at Sadapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-13', '2026-02-21', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(43, 'Project Manager at 10Pearls', 'We are looking for a talented Project Manager to join our team at 10Pearls.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-17', '2026-01-25', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(44, 'Graphics Designer at Meezan Bank', 'We are looking for a talented Graphics Designer to join our team at Meezan Bank.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-25', '2026-01-31', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(45, 'Senior Laravel Developer at Airlift', 'We are looking for a talented Senior Laravel Developer to join our team at Airlift.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-13', '2026-01-14', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(46, 'Human Resource Manager at Sapphire', 'We are looking for a talented Human Resource Manager to join our team at Sapphire.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&auto=format&fit=crop&w=1064&q=80', '2025-12-17', '2026-01-16', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(47, 'Customer Support Executive at Systems Limited', 'We are looking for a talented Customer Support Executive to join our team at Systems Limited.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-15', '2026-02-04', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(48, 'SQA Engineer at Telenor Pakistan', 'We are looking for a talented SQA Engineer to join our team at Telenor Pakistan.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80', '2025-12-07', '2026-02-22', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(49, 'React Native Engineer at Sadapay', 'We are looking for a talented React Native Engineer to join our team at Sadapay.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '2025-12-22', '2026-02-22', '2026-01-02 17:50:18', '2026-01-02 17:50:18'),
(50, 'Customer Support Executive at Arbisoft', 'We are looking for a talented Customer Support Executive to join our team at Arbisoft.\n\nKey Responsibilities:\n- Collaborate with cross-functional teams.\n- Write clean, scalable code.\n- Maintain and improve existing features.\n\nRequirements:\n- 2+ years experience.\n- Strong problem-solving skills.\n\nLocation: Lahore / Karachi / Remote', 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80', '2025-12-10', '2026-02-18', '2026-01-02 17:50:18', '2026-01-02 17:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2025_01_01_000001_create_jobs_table', 1),
(4, '2025_01_01_000002_create_applications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('wX97TgoXSxvLuQis76DPEOq26PvJETLhkYOBEmhW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDhCWW9qQjJsa0ZtNDNVYkNobTBsVkZpUmNhckc5Q2h2RVJXaGRTOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoxMDoiam9icy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6ODoiaXNfYWRtaW4iO2I6MTt9', 1767395162);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_job_id_foreign` (`job_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
