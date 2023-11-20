-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 11:32 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corporatecreativechallenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Sh5YdWNZk.o9ShLSVRreVOhxchOIcFzhKdBU0p4p1Rg2RtIUMLO8.', NULL, '2023-04-11 04:10:30', '2023-04-11 04:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `companycats`
--

CREATE TABLE `companycats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companycats`
--

INSERT INTO `companycats` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(9, 'HCL Tech', 'uploads/company/1685026503HCL.jpg', '2023-05-24 10:49:38', '2023-05-25 14:55:03'),
(33, 'Bisleri', '', '2023-09-27 18:08:46', '2023-09-27 18:08:46'),
(35, 'Society Tea', '', '2023-10-11 14:06:26', '2023-10-11 14:06:26'),
(36, 'GN Group', '', '2023-10-11 14:06:36', '2023-10-11 14:06:36'),
(37, 'PureTech Digital', '', '2023-10-11 14:06:47', '2023-10-11 14:06:47'),
(38, '88 Pictures', '', '2023-10-11 14:06:57', '2023-10-11 14:06:57'),
(40, 'Phoenix Mills', '', '2023-10-12 12:18:31', '2023-10-12 12:18:31'),
(41, '360 ONE', '', '2023-10-12 12:21:38', '2023-10-12 12:21:38'),
(42, 'FINO Payments Bank', '', '2023-10-12 18:55:49', '2023-10-12 18:55:49'),
(43, 'Reliance General Insurance', '', '2023-10-12 18:55:59', '2023-10-12 18:55:59'),
(44, 'NIDO Automation', '', '2023-10-12 18:56:10', '2023-10-12 18:56:10'),
(45, 'HDFC Bank', '', '2023-10-12 18:56:21', '2023-10-12 18:56:21'),
(46, 'Arcesium', '', '2023-10-12 22:39:42', '2023-10-12 22:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `company_name`, `message`, `created_at`, `updated_at`) VALUES
(5, 'Heena Chopra', 'Heena.chopra@hdfcbank.com', '07888616070', 'hdfc bank', 'Your tutorial video is not working on our laptop', '2023-10-19 12:51:18', '2023-10-19 12:51:18'),
(7, 'GAURAV SINGH', 'SINGHGAURA@HCL.COM', '+918604624397', 'HCL TECH', 'I am not able to upload the link in Instagram post as my Submission. please help.\r\nMy link - https://new.express.adobe.com/published/urn:aaid:sc:AP:95f333fd-720a-44f1-986a-6ffb79f6f1ba', '2023-10-22 03:19:42', '2023-10-22 03:19:42'),
(8, 'Falguni', 'fdutta@adobe.com', '9999504045', 'Adobe', 'Hi Team, \r\nAm unable to find the link to register for the Webinar on 3 Nov 2023. \r\nI can see it the Roadmap, it says Register Here but there is no hyperlink. Can you please share on this? \r\n\r\nI am registered with personal email: fdutta19@gmail.com\r\nBut my work ID is: fdutta@adobe.com\r\nI can be reached on both. \r\n\r\nThanks, \r\nFalguni', '2023-10-26 13:19:07', '2023-10-26 13:19:07'),
(14, 'Deepak Gupta', 'deepak.gupta37@hdfcbank.com', '9713063187', 'HDFC BANK', 'do we have to participate in all 3 category or we can create and upload in any  one of the category.\r\nSecondly we only have to use adobe express for creation or there is any other options.', '2023-11-01 13:53:13', '2023-11-01 13:53:13'),
(15, 'ARTI SONI', 'ARTISONI357@GMAIL.COM', '8756744736', 'HDFC BANK', 'PLEASE GUIDE HOW CAN WE PARTICIATE IN THIS CONTEST.', '2023-11-02 16:16:04', '2023-11-02 16:16:04'),
(31, 'PRITESH PATEL', 'priteshd.patel@hdfcbank.com', '9879185725', 'HDFC BANK LTD.', 'I would love to participate such kind of challenge.', '2023-11-15 13:52:26', '2023-11-15 13:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(6, 'Who is eligible to participate in the Corporate Creative Challenge ?', '<p>The Corporate Creative Challenge in open to all corporate&nbsp;participants.&nbsp;</p>', '2023-10-06 20:14:08', '2023-10-08 14:15:04'),
(7, 'How can we register our company? Are there any registration fees ?', '<p>Please fill out the <a href=\"https://corporatecreativechallenge.com/contact-us\"><strong>Contact Us</strong></a>&nbsp;page, and we will get back to you. There are no registration fees for participating in the Corporate Creative Challenge 2023.</p>', '2023-10-06 20:16:47', '2023-10-08 14:15:25'),
(8, 'What is the last date of submission for the entries ?', '<p>Final date for submission of entries is 8th November 2023. For&nbsp;more details visit <a href=\"https://corporatecreativechallenge.com/road-map\"><strong>Road Map</strong></a> page.</p>', '2023-10-06 20:30:47', '2023-10-08 14:14:12'),
(9, 'Which platform should we create the designs with ?', '<p>All designs should be&nbsp;created using&nbsp;<a href=\"https://www.adobe.com/express/\">AdobeExpress</a> only.</p>', '2023-10-06 20:32:08', '2023-10-08 14:07:16'),
(10, 'Which categories can one upload too ?', '<p>We have 3 upload Categories, and a participant can submit one creative in each category.</p>\r\n\r\n<ol>\r\n	<li>Poster</li>\r\n	<li>Instagram Post</li>\r\n	<li>Zoom Cover page</li>\r\n</ol>', '2023-10-06 20:33:23', '2023-10-08 14:14:28'),
(11, 'When will be the results declared ?', '<p>Results will be declared on 24th November 2023.</p>', '2023-10-06 20:33:50', '2023-10-08 14:10:21'),
(12, 'What is the process to participate in the Corporate Creative Challenge ?', '<p>Please visit&nbsp;<a href=\"https://corporatecreativechallenge.com/how-it-works\">How it works</a>&nbsp;page to understand the process.</p>', '2023-10-06 20:34:46', '2023-10-08 14:10:53'),
(13, 'How are the creatives judged ?', '<p>Judges will review each entry based on criteria including creativity, theme relevance, visual impact, technical skill, alignment with category, message clarity, and overall impact.</p>', '2023-10-07 12:49:36', '2023-10-07 12:49:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_11_093835_create_admins_table', 2),
(8, '2023_04_11_111647_create_pages_table', 3),
(9, '2023_04_11_111800_create_settings_table', 3),
(10, '2023_04_11_130233_create_contacts_table', 4),
(11, '2018_01_01_000000_create_subscribers_table', 5),
(12, '2023_04_11_165945_create_faqs_table', 6),
(13, '2023_04_11_173318_create_roadmaps_table', 7),
(16, '2023_04_11_180548_create_judges_table', 8),
(17, '2023_04_12_110520_add_instruction_to_pages_table', 9),
(18, '2023_04_12_112619_create_pastwinners_table', 10),
(19, '2023_04_12_112957_create_categories_table', 10),
(24, '2023_04_14_165841_create_alphaclassrooms_table', 11),
(25, '2023_04_14_165904_create_imagesliders_table', 11),
(26, '2023_04_17_171527_create_companies_table', 12),
(27, '2023_04_18_180638_add_collum_to_users_table', 13),
(28, '2023_04_19_073409_create_companycats_table', 14),
(29, '2023_04_22_125601_create_userimages_table', 15),
(30, '2023_04_22_180232_add_token_users_table', 16),
(31, '2023_04_23_021340_create_votings_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `p_ordr` int(11) NOT NULL,
  `ordr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instruction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_id`, `section_name`, `type`, `value`, `p_ordr`, `ordr`, `created_at`, `updated_at`, `instruction`) VALUES
(1, 'home', 'title', 'text', 'Home', 1, 1, NULL, '2023-10-13 01:31:25', ''),
(2, 'home', 'Meta-tags', 'text', 'Home', 1, 2, NULL, '2023-10-13 01:31:25', ''),
(3, 'home', 'Meta-Description', 'text-area', 'Home', 1, 3, NULL, '2023-10-13 01:31:25', ''),
(5, 'privacy-policy', 'title', 'text', 'Privacy Policy', 10, 1, NULL, '2023-10-15 18:30:35', ''),
(6, 'privacy-policy', 'Meta-tags', 'text', 'Privacy Policy', 10, 2, NULL, '2023-10-15 18:30:35', ''),
(7, 'privacy-policy', 'Meta-Description', 'text-area', 'Privacy Policy', 10, 3, NULL, '2023-10-15 18:30:35', ''),
(8, 'privacy-policy', 'Description', 'ck-editor', '<p>**Last Updated: [11th September 2023 ]**</p>\r\n\r\n<p>1. Introduction</p>\r\n\r\n<p>Welcome to the Corporate Creative Challenge Portal, a platform created to facilitate the Corporate Creative Challenge, a communications design contest in partnership with Adobe. This Privacy Policy is intended to inform you about how we collect, use, disclose, and protect your personal information when you use our portal. By accessing or using our portal, you consent to the practices described in this Privacy Policy.</p>\r\n\r\n<p>2. Information We Collect</p>\r\n\r\n<p>We collect personal information provided by you when you create an account on our portal and participate in the Corporate Creative Challenge. The information we collect may include, but is not limited to:</p>\r\n\r\n<p>- Full Name<br />\r\n- Email Address<br />\r\n- Company/Organization Name<br />\r\n- Contact Information<br />\r\n- Adobe Express Account Details (if applicable)</p>\r\n\r\n<p>3. How We Use Your Information</p>\r\n\r\n<p>We use the collected information for the following purposes:</p>\r\n\r\n<p>- To create and manage your account on our portal.<br />\r\n- To enable your participation in the Corporate Creative Challenge.<br />\r\n- To communicate with you regarding the contest, including notifications, updates, and results.<br />\r\n- To ensure compliance with the laws and regulations of India that govern this contest.<br />\r\n- To improve our portal and the user experience.<br />\r\n- To respond to inquiries or provide support when requested.</p>\r\n\r\n<p>4. Disclosure of Your Information</p>\r\n\r\n<p>We do not sell or rent your personal information to third parties. However, we may disclose your information in the following circumstances:</p>\r\n\r\n<p>- To Adobe Inc. as our partner in the Corporate Creative Challenge, for contest-related communications and purposes.<br />\r\n- To comply with legal obligations and government authorities in accordance with the laws of India.<br />\r\n- To protect our rights, privacy, safety, or property, as well as those of our users or the public.</p>\r\n\r\n<p>5. Security</p>\r\n\r\n<p>We implement reasonable security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. However, please be aware that no method of online transmission or storage is completely secure, and we cannot guarantee the absolute security of your data.</p>\r\n\r\n<p>6. Your Rights</p>\r\n\r\n<p>You have the right to:</p>\r\n\r\n<p>- Access and review the personal information we hold about you.<br />\r\n- Correct inaccuracies in your personal information.<br />\r\n- Request the deletion of your personal information, subject to legal requirements.<br />\r\n- Opt-out of receiving promotional emails from us.</p>\r\n\r\n<p>7. Changes to this Privacy Policy</p>\r\n\r\n<p>We may update this Privacy Policy to reflect changes to our information practices. We will notify you of any material changes by posting the updated policy on our portal or by other means.</p>\r\n\r\n<p>8. Contact Us</p>\r\n\r\n<p>If you have any questions or concerns about this Privacy Policy or your personal information, please contact us at [contact email/phone].</p>\r\n\r\n<p>By using our portal and participating in the Corporate Creative Challenge, you agree to the terms of this Privacy Policy. Thank you for your trust and participation in our contest.</p>\r\n\r\n<p>&nbsp;</p>', 10, 4, NULL, '2023-10-15 18:30:35', ''),
(9, 'terms-and-conditions', 'title', 'text', 'Terms & Conditions', 9, 1, NULL, '2023-10-15 18:30:20', ''),
(10, 'terms-and-conditions', 'Meta-tags', 'text', 'Terms & Conditions', 9, 2, NULL, '2023-10-15 18:30:20', ''),
(11, 'terms-and-conditions', 'Meta-Description', 'text-area', 'Terms & Conditions', 9, 3, NULL, '2023-10-15 18:30:20', ''),
(12, 'terms-and-conditions', 'Description', 'ck-editor', '<p>**Last Updated: [11th September 2023 ]**</p>\r\n\r\n<p>1. Introduction</p>\r\n\r\n<p>Welcome to the Corporate Creative Challenge Portal, a platform created to facilitate the Corporate Creative Challenge, a communications design contest in partnership with Adobe. This Privacy Policy is intended to inform you about how we collect, use, disclose, and protect your personal information when you use our portal. By accessing or using our portal, you consent to the practices described in this Privacy Policy.</p>\r\n\r\n<p>2. Information We Collect</p>\r\n\r\n<p>We collect personal information provided by you when you create an account on our portal and participate in the Corporate Creative Challenge. The information we collect may include, but is not limited to:</p>\r\n\r\n<p>- Full Name<br />\r\n- Email Address<br />\r\n- Company/Organization Name<br />\r\n- Contact Information<br />\r\n- Adobe Express Account Details (if applicable)</p>\r\n\r\n<p>3. How We Use Your Information</p>\r\n\r\n<p>We use the collected information for the following purposes:</p>\r\n\r\n<p>- To create and manage your account on our portal.<br />\r\n- To enable your participation in the Corporate Creative Challenge.<br />\r\n- To communicate with you regarding the contest, including notifications, updates, and results.<br />\r\n- To ensure compliance with the laws and regulations of India that govern this contest.<br />\r\n- To improve our portal and the user experience.<br />\r\n- To respond to inquiries or provide support when requested.</p>\r\n\r\n<p>4. Disclosure of Your Information</p>\r\n\r\n<p>We do not sell or rent your personal information to third parties. However, we may disclose your information in the following circumstances:</p>\r\n\r\n<p>- To Adobe Inc. as our partner in the Corporate Creative Challenge, for contest-related communications and purposes.<br />\r\n- To comply with legal obligations and government authorities in accordance with the laws of India.<br />\r\n- To protect our rights, privacy, safety, or property, as well as those of our users or the public.</p>\r\n\r\n<p>5. Security</p>\r\n\r\n<p>We implement reasonable security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. However, please be aware that no method of online transmission or storage is completely secure, and we cannot guarantee the absolute security of your data.</p>\r\n\r\n<p>6. Your Rights</p>\r\n\r\n<p>You have the right to:</p>\r\n\r\n<p>- Access and review the personal information we hold about you.<br />\r\n- Correct inaccuracies in your personal information.<br />\r\n- Request the deletion of your personal information, subject to legal requirements.<br />\r\n- Opt-out of receiving promotional emails from us.</p>\r\n\r\n<p>7. Changes to this Privacy Policy</p>\r\n\r\n<p>We may update this Privacy Policy to reflect changes to our information practices. We will notify you of any material changes by posting the updated policy on our portal or by other means.</p>\r\n\r\n<p>8. Contact Us</p>\r\n\r\n<p>If you have any questions or concerns about this Privacy Policy or your personal information, please contact us at [contact email/phone].</p>\r\n\r\n<p>By using our portal and participating in the Corporate Creative Challenge, you agree to the terms of this Privacy Policy. Thank you for your trust and participation in our contest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 9, 4, NULL, '2023-10-15 18:30:20', ''),
(116, 'faq', 'title', 'text', 'Faq', 4, 1, NULL, '2023-09-26 03:52:16', ''),
(117, 'faq', 'Meta-tags', 'text', 'Faq', 4, 2, NULL, '2023-09-26 03:52:16', ''),
(118, 'faq', 'Meta-Description', 'text-area', 'Faq', 4, 3, NULL, '2023-09-26 03:52:16', ''),
(119, 'prize', 'title', 'text', 'Prize', 3, 1, NULL, '2023-09-26 03:52:25', ''),
(120, 'prize', 'Meta-tags', 'text', 'Prize', 3, 2, NULL, '2023-09-26 03:52:25', ''),
(121, 'prize', 'Meta-Description', 'text-area', 'Prize', 3, 3, NULL, '2023-09-26 03:52:25', ''),
(122, 'how-it-works', '1 Title', 'text', 'Register Yourself', 2, 3, NULL, '2023-10-16 13:11:59', ''),
(123, 'how-it-works', '1 Description', 'text-area', 'Register and log in to the Corporate Creative Challenge website. After registration, please visit our Categories page for topic details.', 2, 4, NULL, '2023-10-16 13:11:59', ''),
(124, 'how-it-works', '1 Image', 'image', '1063565572_20231010060245_1 step.jpg', 2, 5, NULL, '2023-10-16 13:11:59', ''),
(125, 'how-it-works', '2 Title', 'text', 'Visit to Adobe Express Website', 2, 6, NULL, '2023-10-16 13:11:59', ''),
(126, 'how-it-works', '2 Description', 'text-area', '- Visit and register on https://new.express.adobe.com/sp/\r\n- For ease of access you can also log in using your Google account to create designs.', 2, 7, NULL, '2023-10-16 13:11:59', ''),
(127, 'how-it-works', '2 Image', 'image', '578466556_20230926103512_howitwork-img-2.jpg', 2, 8, NULL, '2023-10-16 13:11:59', ''),
(128, 'how-it-works', '3 Title', 'text', 'Create Your Designs:', 2, 9, NULL, '2023-10-16 13:11:59', ''),
(129, 'how-it-works', '3 Description', 'text-area', '- Once registered on Adobe Express, access design templates.\r\n   - Refer to our submission categories and design accordingly.', 2, 10, NULL, '2023-10-16 13:11:59', ''),
(130, 'how-it-works', '3 Image', 'image', '767086109_20230926103512_howitwork-img-3.jpg', 2, 11, NULL, '2023-10-16 13:11:59', ''),
(131, 'how-it-works', '4 Title', 'text', 'Copy your creative link.', 2, 12, NULL, '2023-10-16 13:11:59', ''),
(132, 'how-it-works', '4 Description', 'text-area', 'After editing your templates, click the Share Tab to copy your work link.', 2, 13, NULL, '2023-10-16 13:11:59', ''),
(133, 'how-it-works', '4 Image', 'image', '1802384441_20230926103512_howitwork-img-4.jpg', 2, 14, NULL, '2023-10-16 13:11:59', ''),
(134, 'how-it-works', '5 Title', 'text', 'Submit', 2, 15, NULL, '2023-10-16 13:11:59', ''),
(135, 'how-it-works', '5 Description', 'text-area', '- Log in to the Contest website and upload your creative link to submit.\r\n   - Paste the link into your profile on the Corporate Creative Challenge Website.', 2, 16, NULL, '2023-10-16 13:11:59', ''),
(136, 'how-it-works', '5 Image', 'image', '531105743_20231010060526_5 step.jpg', 2, 17, NULL, '2023-10-16 13:11:59', ''),
(137, 'how-it-works', 'Instruction Video - Youtube URL', 'text', 'https://www.youtube.com/embed/-5lDj3-6F-A?si=pHl6ogzJN7FjkQoq', 2, 18, NULL, '2023-10-16 13:11:59', ''),
(138, 'how-it-works', 'Title', 'text', 'How it works', 2, 1, NULL, '2023-10-16 13:11:59', ''),
(139, 'how-it-works', 'Meta-tags', 'text', 'How it works', 2, 2, NULL, '2023-10-16 13:11:59', ''),
(140, 'how-it-works', 'Meta-Description', 'text-area', 'How it works', 2, 2, NULL, '2023-10-16 13:11:59', ''),
(141, 'home', 'Lets have Title', 'text', 'Let’s have some fun making creatives', 1, 4, NULL, '2023-10-13 01:31:25', ''),
(142, 'home', 'Lets have Link', 'text', 'https://express.adobe.com/sp/', 1, 5, NULL, '2023-10-13 01:31:25', ''),
(143, 'home', 'Lets have Image', 'image', '1929265674_20230927072523_main-banner.png', 1, 6, NULL, '2023-10-13 01:31:25', ''),
(144, 'home', 'About Title', 'text', 'About the Challenge', 1, 7, NULL, '2023-10-13 01:31:25', ''),
(145, 'home', 'About Description', 'text-area', 'The Corporate Creative Challenge is an initiative that encourages employees from various corporate organizations to showcase their creative talents by transforming daily communication collaterals into engaging content. Participants can participate in different mediums, such as graphic design and creative writing, to breathe life into daily communications like flyers or posters, emails and presentations.\r\n\r\nThe Corporate Creative Challenge promotes collaboration, learning, and appreciation of diverse creativity while fostering a positive work environment.', 1, 8, NULL, '2023-10-13 01:31:25', ''),
(146, 'home', 'About Link', 'text', 'https://express.adobe.com/sp/', 1, 9, NULL, '2023-10-13 01:31:25', ''),
(147, 'home', 'About Image', 'image', '1659356396_20231010123814_add.jpg', 1, 10, NULL, '2023-10-13 01:31:25', ''),
(148, 'home', 'Participate Title', 'text', 'How to participate', 1, 11, NULL, '2023-10-13 01:31:25', ''),
(149, 'home', 'Step 1 Title', 'text', 'Register / Login', 1, 12, NULL, '2023-10-13 01:31:25', ''),
(150, 'home', 'Step 1 Description', 'text-area', 'Begin your journey by registering and logging in here.', 1, 13, NULL, '2023-10-13 01:31:25', ''),
(151, 'home', 'Step 2 Title', 'text', 'Go to Adobe Express', 1, 14, NULL, '2023-10-13 01:31:25', ''),
(152, 'home', 'Step 2 Description', 'text-area', 'Visit the Adobe Express portal and complete your registration. Craft your creative works within the specified categories using Adobe Express. Please review the available categories.', 1, 15, NULL, '2023-10-13 01:31:25', ''),
(153, 'home', 'Step 3 Title', 'text', 'Create & Submit', 1, 16, NULL, '2023-10-13 01:31:25', ''),
(154, 'home', 'Step 3 Description', 'text-area', 'Once your creative work is complete, please utilize the \"share\" feature within Adobe Express to copy the shareable link for your composition. In your Corporate Creative Challenge account, submit the link under the appropriate category. For instance, if you\'ve created a poster, please share the link within the \"Poster\" category on your My Profile Page.', 1, 17, NULL, '2023-10-13 01:31:25', ''),
(155, 'home', 'Create with tour link', 'text', 'https://express.adobe.com/sp/', 1, 18, NULL, '2023-10-13 01:31:25', ''),
(156, 'home', 'Create with Participate link', 'text', 'https://express.adobe.com/sp/', 1, 19, NULL, '2023-10-13 01:31:25', ''),
(157, 'home', 'Create with Video Link', 'text', 'https://www.youtube.com/embed/HoTojmd6Maw?si=Vgmj7BLvsX3QW4Tv', 1, 20, NULL, '2023-10-13 01:31:25', ''),
(158, 'home', 'Drag-drop Title', 'text', 'Drag, drop, and edit PDFs.', 1, 21, NULL, '2023-10-13 01:31:25', ''),
(159, 'home', 'Drag-drop Description', 'text-area', 'Drag and drop your existing PDFs into Adobe Express to add design elements, backgrounds, and animations.', 1, 22, NULL, '2023-10-13 01:31:25', ''),
(160, 'home', 'Drag-drop Image', 'image', '990851950_20231005115729_edit-pdf-img-1.jpg', 1, 23, NULL, '2023-10-13 01:31:25', ''),
(161, 'home', 'Work together Title', 'text', '', 1, 24, NULL, '2023-10-13 01:31:25', ''),
(162, 'home', 'Work together Description', 'text-area', 'Collaborate with your team in your Adobe Express files to save time in real - time -- all for one, all in one place.', 1, 25, NULL, '2023-10-13 01:31:25', ''),
(163, 'home', 'Work together Image', 'image', '1135438618_20231005115729_edit-pdf-img-2.jpg', 1, 26, NULL, '2023-10-13 01:31:25', ''),
(164, 'home', 'Build your brand Title', 'text', 'Build your brand.', 1, 27, NULL, '2023-10-13 01:31:25', ''),
(165, 'home', 'Build your brand Description', 'text-area', 'Brand kits make it east to stay on brand with Adobe Express. All your fonts, colors, and logos are ready to drop into any design.', 1, 28, NULL, '2023-10-13 01:31:25', ''),
(166, 'home', 'Build your brand Image', 'image', '760728332_20231005115729_edit-pdf-img-3.jpg', 1, 29, NULL, '2023-10-13 01:31:25', ''),
(167, 'home', 'Participate with Express Link', 'text', 'https://express.adobe.com/sp/', 1, 30, NULL, '2023-10-13 01:31:25', ''),
(168, 'our-categories', 'title', 'text', 'Categories', 11, 1, NULL, '2023-10-10 12:02:15', ''),
(169, 'our-categories', 'Meta-tags', 'text', 'Categories', 11, 2, NULL, '2023-10-10 12:02:15', ''),
(170, 'our-categories', 'Meta-Description', 'text-area', 'Categories', 11, 3, NULL, '2023-10-10 12:02:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('viralgohel88@gmail.com', '$2y$10$ZikdoQnjyop8yPQJvDYFku91RSEkiqq.sYbf/fcYgGILrODr/AEEK', '2023-04-23 23:18:17'),
('rkoderi@gmail.com', '$2y$10$1ezNYm7mUdYl9Nk7nxlZ7eadmemi1/8inpa0e46BSYADJaby4Bv/u', '2023-05-25 11:49:36'),
('shaiksajid984@gmail.com', '$2y$10$0CjFgBJpGxMHh5bDPRxZIetZVeskCls9ga2mxboEMns0M.R7LYsg2', '2023-05-25 14:09:43'),
('parasrautre@gmail.com', '$2y$10$K40fxTBRMdPNligOzFc9W.ZfrRn0HG4617ps22kcLpXgF52MnxF.e', '2023-05-25 14:11:16'),
('gauravpawade@9923gmail.com', '$2y$10$Xwz38tWVro7sL3qGQG3y4.nGtB3pS1r58xDLhlLhsG7oZf8e4/WcS', '2023-05-26 04:26:26'),
('parvathyprabha@gmail.com', '$2y$10$KwzOXjtmMTwKSSqtQ/RSJeAvy/bvfuaY3TR1a1kfN21pr3eRT5sp2', '2023-05-26 11:06:17'),
('gauravpawde@9923gmail.com', '$2y$10$Ar4hityVMKw4p61dRNQhGO4.s3rB8WP8tGCNBeBroGP5brNZzJKg2', '2023-05-26 17:43:30'),
('dhararsinibanu92486@gmail.com', '$2y$10$UUYxBsIadtOo.RUEbxPa5ujyfLc0R6Ayb4iL.FCP8AGcgAhusEi7K', '2023-05-27 06:13:58'),
('Sanketbirewar447@gmail.com', '$2y$10$sX.D1ILCamMO96Tqh8rjvO.qW2kw7iJONwB9wAS9yRciKqYhb8UPi', '2023-05-27 09:50:27'),
('asish312@gmail.com', '$2y$10$uL1LdhLhpDEfgOtYYvMBNOkBGdKtD.1Qzfds9ZR2ztVPbRWX3nYfa', '2023-05-27 17:44:33'),
('enoughofme@gmail.com', '$2y$10$BuI6dDANS4KjTiDUkUBJVebQPT5gFyULD8B9VsomtBYho7SUz8vnS', '2023-05-30 03:58:42'),
('AJIT.SHA14@GMAIL.COM', '$2y$10$eU1bpCPaMUZX8FtFdybVf.a4Ot85Vd2rlw33PyfyHW1FUJXXCqsaO', '2023-05-30 13:01:13'),
('SUKAMALDEY117@GMAIL.COM', '$2y$10$7aud8QehSZIRuQD8IBDiPuOw1KztDTRSpYzTWyiWRj6V6HiTQ.2vC', '2023-05-31 03:34:56'),
('isthita.basu@gmail.com', '$2y$10$tdUTONk0KZFJdPxt5W7LxeS2CuCvBZsjq4jellrMw024X6xHnbrJO', '2023-05-31 14:51:09'),
('kp747493@gmail.com', '$2y$10$Y0/IUQX4InSluxZ6B6Wn7uRIitr/5os33N2w1kPLWLa8kWpCXe7iu', '2023-06-01 06:18:17'),
('t.r.pyarelal@gmail.com', '$2y$10$mFFDWRxz2bRQa8cRXTHGI.38bJIaULQ6KldlFANgc6avRgPa9dqcq', '2023-06-01 07:00:31'),
('saritamahalle@yahoo.co.in', '$2y$10$mGmE1NZl2XjUKDL9XnIpfufGwe/9lmwObYeWWHkAV4cOJgj4gHl9a', '2023-06-01 07:30:06'),
('p.banaerjee4444@gmail.com', '$2y$10$2Fpr4/XJDzozALKT/wiCyu5PP99rgiYDzrypWv0FzfFqIKcruIjyK', '2023-06-01 08:34:50'),
('suraj.tawde@gmail.com', '$2y$10$/Wd7qrFnG0zfJROwhxpTw.gbyM/YzNkmHJmvCyWWSmdfC7VtEYM.2', '2023-06-01 13:13:56'),
('jamesgeorge.ftpm@gmail.com', '$2y$10$fJ9xpjEuRKYdFijnIayJzOvEUTvsGO9HlvYPoTNBxjcKQ4DOrLF9G', '2023-06-02 04:52:51'),
('prakashmaggie89@gmail.com', '$2y$10$tess3gWbUpm1cGc9jQ.wUuTQBGoG6QXOS/tmwfEOPegHsU7DJeOVC', '2023-06-02 05:01:40'),
('mamakwana36@gmail.com', '$2y$10$4kY9Fmv1ye7gGSdK5u5d.eQhwCBkLfSPAMXhO8BE92IbKAHGPtldW', '2023-09-21 08:14:08'),
('shorya.c@gmail.com', '$2y$10$JqTjLcBktovYt.t8u9wFQ.O2H8nN5H7byHMrf6P8b4qU.954rZb1i', '2023-10-16 17:30:28'),
('umamahee@gmail.com', '$2y$10$/hUm6O6qhu8Ozo94aCXHce9us95mKRzmlZai.YF.YXrqSi91Y1TLu', '2023-10-19 12:29:12'),
('asmitasalunkhe2102@gmail.com', '$2y$10$g8aEKep/manN5KGjrN3M5elBnsbWW6sqHKEDqZAMmQGuZYQFEFNsq', '2023-10-19 12:52:52'),
('akankshabh27@gmail.com', '$2y$10$G3QetWadThEvdqMc7oWdBOBPbJ3JxOwtTUYOEBIJu7YPfx7g5XiM.', '2023-10-19 14:01:21'),
('info.snehayadav0203@gmail.com', '$2y$10$VfFjKtmMLSvqil5ogpCkf.ieklbqJ8mhI2QNYbesIpa7JX0Gd9NX6', '2023-10-26 11:21:18'),
('Aamirkhan887200@gmail.com', '$2y$10$KAlnO4RGshXZnlTK/PRqpOOLvxzysHOPizN.3MDoAnfDHBPrEvQRK', '2023-11-02 14:32:18'),
('anandjasleen0@gmail.com', '$2y$10$2dDdrMTLGaK0Z.rzkQMjueiCvPUfIhWqBCHDAqxbXrIOHxFHod.O2', '2023-11-02 16:19:31'),
('sahana.sikdar06@gmail.com', '$2y$10$3CsFz5YZQROI8j4cldsBCedJysrdxlAKOLTVcGm/iC3g2OloG/xiC', '2023-11-03 12:46:22'),
('ssg.sagar55@gmail.com', '$2y$10$ggUP41gCI/wHzE4HbHutUOE4sSg0E9Rqg6OkqKllzVquAD4mSOwZG', '2023-11-03 12:50:04'),
('tomarmedha93@gmail.com', '$2y$10$oQXAU8JV7VAhHsv8rx2kVeaEZadxtlscaT62h7h4xQvQIeAA9XF9S', '2023-11-03 13:20:02'),
('neha.r.pandulkar@gmail.com', '$2y$10$HUpDgrFba0cH0VHTzZxEfeAXWH.UihonlZ1qFzkArakR.4buA9Bh6', '2023-11-03 13:43:13'),
('anvesha.pipariya@gmail.com', '$2y$10$.X37jyVyMpzSekAmUUSScedPq/rEoCbf8k46zCOR44cUfJTQja.mq', '2023-11-03 15:00:28'),
('rk.narayan@tcs.com', '$2y$10$15kiHw1XpPGFb.PCOgmp4.LnH03zMYuwi2xNLCchGM2ZIHuvNRCQ2', '2023-11-03 16:12:43'),
('chittu2020@gamil.com', '$2y$10$uU/V9rXt7STjC4I0UNCE0epFXkp//VwalsWgMnAD5MpSVFKm3SXYy', '2023-11-03 21:22:25'),
('nidhiagarwal301@gmail.com', '$2y$10$jmTohbbxNKTTagraGQdtlOVvbDQhTVlFmnqClYq.X3nfg5KUGyx56', '2023-11-05 17:08:48'),
('npunchline@gmail.com', '$2y$10$k1vRmaulf1FCZLSoBNb3uu6HijqWQFF6pMTMF5zOfZjr4YPTghsZm', '2023-11-05 23:09:37'),
('DIK8888SHA@GMAIL.COM', '$2y$10$06c0.f/VfoIO8dTJ7aiXXeM/Gi5O/Y3WKsHBEZvNNkMu9Lh1Btk3i', '2023-11-07 01:04:05'),
('chhaya.pol@hdfcbank.com', '$2y$10$frkBss5J3MW8h4eW7sSaMuVi8q05ts/RdZXoPvByYhuEJBCQMqluS', '2023-11-07 01:23:50'),
('tarun8613@gmail.com', '$2y$10$T1fAMy52r8D1nF4EqPjPXuLR2IHnax85c81mrIkpUSojBJHwU1KFW', '2023-11-07 12:44:44'),
('midhun.george@tcs.com', '$2y$10$v8Q4oXkcrOkw28GQGTwvaei1NjWa7H.lK5f4oB/1tVioSV1euuGX2', '2023-11-07 13:28:27'),
('akumar.advt@gmail.com', '$2y$10$Wo8G5J/3ZbgoW/eWZSJqCupzCDMDWoJlWo/CZterY/mwpgWVPtjXS', '2023-11-07 17:18:02'),
('Sampurnghosh@gmail.com', '$2y$10$OLhmD7ptDEDW/Ys3U8en3.At2lQXV/raIpGby8Hgu8hnfjqDRD60C', '2023-11-07 17:21:33'),
('himaniarora990@gmail.com', '$2y$10$Kn0SOmX1oDjYyQ6Gl8veHe1.s7ZR5qjB/CpYo2wiHeWzdXNSNd5dC', '2023-11-08 00:13:28'),
('bommanap9@gmail.com', '$2y$10$gljyWUCa1bTlbsRWmwehte1p.zjn0Pl4.hjChUEFwNcdi03vQqLDS', '2023-11-08 13:41:02'),
('deepthi.virginiya@gmail.com', '$2y$10$EbDU9Iak0YJN2X.V3XkDvevvKmiw5np.W/lJwwYfZLOF1bw31DYiq', '2023-11-09 01:16:51'),
('virginiya.monisha@gmail.com', '$2y$10$sOw4rEgus0RGKDC7YTIZFOzfH6F8YaR2cwN49djha5IHyDVKkLvHy', '2023-11-09 01:20:30'),
('viraj.circar@ltimindtree.com', '$2y$10$gW46lgjB1w6SHvzbdEybT.0QTBg8sf8t77Fhtc9Ypm4Vxfp/HJJNq', '2023-11-09 14:05:37'),
('samadhanmali53@gmail.com', '$2y$10$NGfe0WZbsSIDHNc6G2/dwOghBrUQjD2R7n35uQOQU0lPV7kHNnB3i', '2023-11-17 18:36:35'),
('india.durga@yahoo.com', '$2y$10$2dzDMR2KF87P9hQFCYfMtexAm6FIERRCEV57EZO4dOPtGo/Vo8XSq', '2023-11-18 12:25:49'),
('rohan.deb@hdfcbank.com', '$2y$10$/O/HKTzkG6mH3LJJ8g5muu27Zkd9a2eo4RrV7OdpBiWH26HzTOrnW', '2023-11-18 19:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `first` double NOT NULL,
  `second` double NOT NULL,
  `third` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`id`, `name`, `first`, `second`, `third`, `created_at`, `updated_at`) VALUES
(11, 'Poster', 25000, 15000, 10000, '2023-09-26 03:33:27', '2023-10-06 20:08:54'),
(12, 'Instagram Post', 25000, 15000, 10000, '2023-09-26 03:34:24', '2023-10-06 20:09:26'),
(13, 'Zoom Background', 25000, 15000, 10000, '2023-09-26 03:34:35', '2023-10-06 20:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `roadmaps`
--

CREATE TABLE `roadmaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roadmaps`
--

INSERT INTO `roadmaps` (`id`, `date`, `details`, `created_at`, `updated_at`) VALUES
(10, '2023-10-15', 'Start of the Contest.\r\n\r\nUploads are open for a period of 3 weeks', '2023-10-04 03:08:09', '2023-10-07 12:16:29'),
(11, '2023-11-03', 'Adobe Express Webinar.\r\n\r\nRegister Here', '2023-10-04 03:08:22', '2023-10-26 11:19:57'),
(12, '2023-11-18', 'Participation closes for the Corporate Creative Challenge 2023', '2023-10-04 03:08:31', '2023-11-06 20:07:23'),
(14, '2023-11-24', 'Winners Declared', '2023-10-07 11:58:45', '2023-10-07 11:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'phone-number', '987654321', NULL, '2023-04-11 08:37:43'),
(2, 'whatsapp-number', '987654321', NULL, '2023-04-11 08:37:43'),
(3, 'email', 'contact@corporatecreativechallenge.com', NULL, '2023-10-06 14:19:35'),
(4, 'address', 'INDIA - INDIA', NULL, '2023-04-11 08:37:43'),
(5, 'facebook-link', 'https://www.facebook.com/**', NULL, '2023-09-21 03:10:50'),
(6, 'instagram-link', 'https://www.instagram.com/**', NULL, '2023-09-21 03:10:50'),
(7, 'linkedin-link', '**555', NULL, '2023-09-26 02:20:33'),
(8, 'youtube-link', 'https://www.youtube.com/', NULL, '2023-02-27 03:54:25'),
(9, 'behance-link', 'https://www.behance.net/', NULL, '2023-02-27 03:54:25'),
(10, 'Adobe-Express-get-started-link ', 'https://express.adobe.com/sp/', NULL, '2023-10-11 14:33:52');

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
  `isdelete` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `token` varchar(255) NOT NULL,
  `employe_id` varchar(255) DEFAULT NULL,
  `office_email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `email_header` varchar(255) NOT NULL,
  `zoom_teams_background` varchar(255) NOT NULL,
  `linkedin_cover` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `isdelete`, `status`, `token`, `employe_id`, `office_email`, `mobile`, `department`, `city`, `email_header`, `zoom_teams_background`, `linkedin_cover`, `company_id`, `company_name`, `location`, `created_at`, `updated_at`) VALUES
(5, 'Richard Smith', 'richi1@gmail.com', '2023-09-27 19:16:57', '$2y$10$MJsHiOeEeb4vvsjki10MFOQKhGB1kHaRIms70kQRAXkHyvhjQU29i', NULL, 0, 1, 'YZj1qjubM3DIpJ9CJJlyD8aLh2mAShuM9MCmgtQnmlxNZmoXHfrQp5Ajwwp4f7ef', '', '', '', 'Marketing', 'Mumbai', 'https://alphacommunity.in/alpha-classroom/', 'https://www.sony.co.in/electronics/interchangeable-lens-cameras/ilce-9m2', 'https://www.sony.co.in/interchangeable-lens-cameras/products/ilce-6400', 0, 'XYZ Company', '', '2023-09-27 19:16:57', '2023-10-10 13:04:15'),
(6, 'Aparna', 'aparna.joyson@nagarro.com', '2023-09-28 19:34:36', '$2y$10$F9rL1K0.JRSxR3Kxkg/aRu/1o8s1JieI44sVS3miW0UPW7mT8bwwW', NULL, 0, 1, 'ReaXc2DGxPnchSCpYqFuxGGaIB82Lm4mpCtJYqhAiijjTLmx7I26hLYQmThehVRn', '', '', '', 'HR', 'Bangalore', '', '', '', 28, NULL, '', '2023-09-28 19:34:36', '2023-10-09 21:01:34'),
(7, 'Viral Gohel', 'viralgohel88@gmail.com', '2023-10-04 14:01:37', '$2y$10$lkmIdvTaie47ejSYFxejduXa33jV4JWhPAcIrmXxgeUQBHZrlSvxm', NULL, 0, 1, '1NMamNl7D3qfWQYoj9AaPx4KZ56phxaofN2NdvhqXj9HkFhXdxW6z6saRrBeGY34', '', '', '', 'Test', 'test', '', '', '', 0, 'Test', '', '2023-10-04 14:01:37', '2023-10-11 14:18:28'),
(25, 'willowsa', 'SL@genom.co', '2023-10-05 19:52:32', '$2y$10$1t9oJ9rfWCYZ49bdKX9Efe7Lb6xrHh07GEG8kPah5O5iTaEjGst.K', NULL, 0, 1, 'MBcg8nThdIkCrVwxJjFtK8NOKGb0Atbs1wajzYSxfzgtXxx59ctQhhA7MZ2aEOmf', '', '', '', 'host', 'kothar', '', '', '', 9, NULL, '', '2023-10-05 19:52:32', '2023-10-05 19:52:32'),
(26, 'test', 'test@gmail.com', '2023-10-05 19:52:39', '$2y$10$5Y1Wk0gVrsVEzDVdBdcZ6uBre/fYiYleHcGVf0NLUIsyCGZcVhlMe', NULL, 0, 1, '2LOp7ltnoXhpWo9o6JZPmzKueK6ZbnTIv4MYduHRhDdJY6Daw25P1n5AWNYFGg8F', '', '', '', 'Test', 'test', '', '', '', 33, 'Test', '', '2023-10-05 19:52:39', '2023-10-05 19:52:39'),
(28, 'willowsa', 'SL@genoom.co', '2023-10-05 20:01:46', '$2y$10$DoE3jalPrFOU.JD3SHiIaulA.wSobYr8yUWZYIBHtm/MVM8KXxPpm', NULL, 0, 1, 'icRzjrBxB850IXXjBHDL80h4A3fSS90dLY9xjDj6odao1fmU88H6Lgy2TRnfbpo6', '', '', '', 'host', 'kothar', '', '', '', 9, 'gellos', '', '2023-10-05 20:01:46', '2023-10-05 20:01:46'),
(41, 'Test Test', 'viralgohel888@gmail.com', '2023-10-06 12:15:07', '$2y$10$p/tzNJ2lWa90T02DVI4oz.1nLUHi7igs2QPAmGeoH.ETFOny.8asK', NULL, 0, 1, '1ExjiofUbtbVeyEhEF4XvQMUwlVWT7VZCOzNFx5XwWPfmlHKN2hKgYPpQETqpDcQ', '', '', '', 'Test', 'Rajkot', '', '', '', 14, 'test', '', '2023-10-06 12:15:07', '2023-10-06 12:15:07'),
(42, 'kavya', 'kavya6589@godaddy.com', '2023-10-06 12:29:56', '$2y$10$Hfqrx5ywuTLfjIUj83mYVey/e6H3xgDwKuU7bM93dG9eEIIKB.F7O', NULL, 0, 1, 'W7GJYNXCNNcpDGCfWIgLlIwx5gopLsC4biddU9AFVQyq98e3qOAZOY3LxpOTAiG5', '', '', '', 'godaddy', 'mumbai', '', '', '', 28, NULL, '', '2023-10-06 12:29:56', '2023-10-06 12:29:56'),
(56, 'Test', 'admi2n@admin.com', '2023-10-07 10:09:23', '$2y$10$TzOW8kEqG1SbRAfb/lYaj.dwK6y4ErEdo53ech5/CrY1pGv153CIe', NULL, 0, 1, '2peqogDUp3nSDuDOpU4tGGjl5cYZvPFhjnmyqiatyi4XGDXAfxHhEdrcXiyrBQpv', '', '', '', '132', '132', '', '', '', 14, 'Test', '', '2023-10-07 10:09:23', '2023-10-07 10:09:41'),
(57, 'Tina Mehta', 'mehta.tina2@gmail.com', '2023-10-10 17:35:47', '$2y$10$VKdFo96RYzThWyjNdH5m.OKbqqik2tF.55p3nUUs6BpDbMOp99Zrq', NULL, 0, 1, 's33OSuNZxReZBVkth2KUV43fb15mPjPK1tqEmkGEW6FXg5uDinWqsYvTeiWnywZY', '', '', '', 'hr', 'Bengaluru', '', '', '', 0, 'Adobe', '', '2023-10-10 17:35:47', '2023-10-10 17:35:47'),
(58, 'Kunal Raheja', 'raheja@adobe.com', '2023-10-10 17:38:59', '$2y$10$kpUw9x.i8EH0g7bsv4e1rOPVd4YilVQfv1LbFQ/JOtyRsHw5ZEk9y', 'j2mz5fJ0Fyv5hqiRxf1JcM7nRWXxFUtOqV2OLKtP3WK6o2ykhytEGhuzdCcv', 0, 1, '5OemNVPRdQVf8jxfVmcbgguobQb60AQe0fVZHPETtoRolVIPfmjZ4rcMuoA0AeIy', '', '', '', 'Design', 'Gurugram', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:12016f16-97d3-4341-beb2-703828970d07?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:3f09ba9b-0b4b-4c32-ad58-3ef3d57743c0?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:12f95cd9-8664-4f2b-8e00-fd3e5943c333?promoid=Y69SGM5H&mv=other', 0, 'Adobe Systems', '', '2023-10-10 17:38:59', '2023-11-17 18:59:56'),
(59, 'Tarunkumar Shetty', 'tarun8613@gmail.com', '2023-10-11 12:37:27', '$2y$10$YD/3AlbHDtP5px55E.h04uYJ1MWDRSgX/0stxaGree1FklpxPDxLi', NULL, 0, 1, 'WIjxdXyRJv1aqv2JE8LsrTWJdpZy9GqvA4XEnrhlDSzHgVBfIV2a4ONTsnLXlCb0', '', '', '', 'Marketing', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:e71d4d55-832d-4afc-8919-a81e7ad45442', '', '', 33, NULL, '', '2023-10-11 12:37:27', '2023-10-12 00:41:22'),
(61, 'Sachin Yadav', 'yadav.sachin@outlook.com', '2023-10-13 11:10:02', '$2y$10$y3W3XtcTRAKZLUM6n0TzQeNVT81NF5zfvmlbZ2OljszLp0tWdI2TG', NULL, 0, 1, 'E5c1PKvnlAvVaB2fmavXZGcDGNynd1f0R0mvZN82azWLaMqv8MBiwxyMRxu09jf8', '', '', '', 'HDFC Enterprise factory', 'Bangalore', '', '', '', 45, NULL, '', '2023-10-13 11:10:02', '2023-10-13 11:10:02'),
(62, 'Abin varghese', 'abinvarghese80@gmail.com', '2023-10-13 19:09:49', '$2y$10$wIxAg6KBRTYPsh78J7eN9uvTqzr39/iQth7Z4.lnwktyi/e8iqtB.', NULL, 0, 1, 'HJdEr2ztzko1qsiUSqDWwB4JOkPBSVukCNQCe7AlcGNeM2zKtj1sDW46HjWadT3H', '', '', '', 'BIU', 'Chennai', '', '', '', 45, NULL, '', '2023-10-13 19:09:49', '2023-10-13 19:09:49'),
(63, 'Mehul Makwana', 'ma.makwana36@gmai.com', '2023-10-13 22:13:36', '$2y$10$y.SgILyTGkjTZ5R83L/hPuT22smZa7fv0Vq/xCOcmmeO9zWe6pgi6', NULL, 0, 1, '6uqFRV4q5WD9wEfKs4yWySKmMyOY91RhKoTFMTyCwzkwhKoy0a5lHuDh6vrRdTM7', 'Tesrse!@#!@55555', '', '', 'trs', '12', '', '', '', 45, NULL, '', '2023-10-13 22:13:36', '2023-10-13 22:36:47'),
(64, 'viral', 'test123@gmail.com', '2023-10-13 22:40:46', '$2y$10$sla0U843hRLa5d50NiJ7P.nAl7ttiiZ8vNQ8N7jDi6Idkn6KOZ9Wm', NULL, 0, 1, 'FZIoEtNAPEmIKsLxAUkjNUypuiM5HSn7AeebjeA6uyNSEgsvNRIYGIdPXPOlXD07', '132', '', '', NULL, 'test', '', '', '', 45, NULL, '', '2023-10-13 22:40:46', '2023-10-13 22:40:46'),
(70, 'SAURABH NIGAM', 'saurabh.nigam14@gmail.com', '2023-10-16 11:22:03', '$2y$10$C45sxUl5Sg7nGJA9O2goAOEP65KpIxodtLRtM.ZKXki/4t39xH3s.', NULL, 0, 1, 'oAIs3anMybheAOVlax6zBfiJLDkl6nSiHpXVw6i48ZhvNCNOOsPpbWjqrZbq7QZe', 'S47964', '', '', NULL, 'Chhindwara', '', '', '', 45, NULL, '', '2023-10-16 11:22:03', '2023-10-16 11:22:03'),
(71, 'Chandra Shekhar Pal', 'cspal91@gmail.com', '2023-10-16 11:23:26', '$2y$10$hWe55XLrcKLwQhNbz.DaX.7gwXD51mCXawpdnv7BLDOAuVbs7YGIy', NULL, 0, 1, '4dhd1NmhQOUvu8LabO42WoMOUinrVmuAFcLAxKQXcLeLRWe6iOIAS971MMYgEWuj', 'C5457', '', '', NULL, 'Guwahati', '', '', '', 45, NULL, '', '2023-10-16 11:23:26', '2023-10-16 11:23:26'),
(72, 'Neha Pandulkar', 'neha.r.pandulkar@gmail.com', '2023-10-16 11:23:30', '$2y$10$fsnklQqrc0504X8jcd6GCuF6Kclm0S2/vC2ckm0BKqpnfR6qN76f.', NULL, 0, 1, '9di5evd9sTa81xt5oLKVy0r615YgbjYuXG5D4WOIKDCroUdgZEwJNPZWtRbJ6Wzq', 'N19589', '', '', NULL, 'Nashik', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:7c7264a7-8800-4eec-8763-007faa9a019a?promoid=Y69SGM5H&mv=other', 'https://express.adobe.com/post/TOTaM2lQLE2FU', 'https://express.adobe.com/post/QHRxlqqYquVR6/?w=7211127664856', 45, NULL, '', '2023-10-16 11:23:30', '2023-11-08 12:06:38'),
(73, 'Aman Singh', 'aman28singh@outlook.com', '2023-10-16 11:36:32', '$2y$10$Xg62jOmwLYVXJompwxE1Vu1nw4leTyNqJmZE3SfVYqiwRp4AMKr/6', NULL, 0, 1, '96bTHoZ9EJd7aN93IqtDkNIndUkrGkZtvsE7eZwPcWilu17nxweokoGoIZbxDBZE', 'A35565', '', '', NULL, 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:a8460ff6-05d0-43f3-92a0-b1285aeebe57', '', 45, NULL, '', '2023-10-16 11:36:32', '2023-10-16 19:56:01'),
(74, 'Deepak Singh', 'dspercent@gmail.com', '2023-10-16 12:03:24', '$2y$10$MnVrwu.N8vvMB51XXwkqie0WENdfcmzCbtFALBFbSO7A1YU3Y.veC', NULL, 0, 1, '6lCx83tH01SFO1sExiOllFTM9gjengObamRU1lw2vohYLkAbS8C7ZVpCxOxQBoqC', 'D8800', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-16 12:03:24', '2023-10-16 12:03:24'),
(75, 'Mayank Jain', 'mayankjain0991@gmail.com', '2023-10-16 12:08:20', '$2y$10$HZuAHMT4bqvdfRPCXYFteucW53OGueMEoxcCGBSK5KOAdikkPW96m', NULL, 0, 1, 'BCVPLU3PyjMrQ5j8aPcuz1iLTbFaCWfCBgXmGJqHzi9wzDIecPxKes2QnHdI9Vzi', 'M25753', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-10-16 12:08:20', '2023-10-16 12:08:20'),
(76, 'sangeeta sinha', 'sangeeta.sinha@hdfcbank.com', '2023-10-16 12:09:59', '$2y$10$tqeEKPpQ2LQKmjAl/uzjzO4hKdV.l8WbY.Kdf9vVkCPmHz3V1ccnO', NULL, 0, 1, '0ejmiR1CQ8IBiXkoTzTWYxjYU63Vl54ATGAOgPCBGqEzwqo0NEVab0ozoUE6IjJP', 's65503', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-10-16 12:09:59', '2023-10-16 12:09:59'),
(77, 'Samik Bandyopadhyay', 'Bandyopadhyay4@gmail.com', '2023-10-16 12:25:14', '$2y$10$7aXXH6p/CA8OA50Hh0aq..9ZZhe65aQmYrhzumJ77FC3JJwOIURPW', NULL, 0, 1, 'GDyheV9PbF1Dmyol3TFO3Rsjec2OmvGnJPLUPssLkKQdZ4cC4naKP9Oon9AKAZqE', 'S67669', '', '', NULL, 'Kolkata', 'https://www.instagram.com/p/B_z4iIopr7F/?igshid=MW5sY2ZuOGo1MW5obQ==', 'https://www.instagram.com/p/B8tz-MiASNu/?igshid=cmdrNmhuODdyM3lw', 'https://www.instagram.com/p/BpXOOnSAG3C/?igshid=YXd6MWE4ZHVqdzcy', 45, NULL, '', '2023-10-16 12:25:14', '2023-11-03 22:25:02'),
(78, 'Sunil Somani', 'sunsoms9@gmail.com', '2023-10-16 12:56:09', '$2y$10$jyOQAVTsy1fihXb2p4bdOueHUd/8GqGOPekX8Sw.8Dj0wG.u..UZG', NULL, 0, 1, '5zgJ2AtoWtGCtYz2Xx0LJJ1uFz0Fcs53woEnnKHR2jly0WcmvYWU9e4Ai01U7o3C', 's63868', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-16 12:56:09', '2023-10-16 12:56:09'),
(79, 'Puneet Singh Kohli', 'kohlipuneet13@gmail.com', '2023-10-16 13:45:11', '$2y$10$AQxIMpz8rJVa6YFg8JR2R.X.S6gsVT2JsE2X4YGDKNyALEFN0eRNK', NULL, 0, 1, 'a7P2t8I6qPKuKPkrsvyb88JW6gc4giskFCWx86FGvb9E9YNKpqhV7BzNLijiYxo1', 'P23966', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-16 13:45:11', '2023-10-16 13:45:11'),
(80, 'V Siva Krishna Ranga', 'siwa.ranga@gmail.com', '2023-10-16 14:39:52', '$2y$10$eCacVH.o/ggS3oekqMnUu.7rtXusT9NjGtkLzrhfkoaj0lkZMvN5S', NULL, 0, 1, 'x30MQlMmefGgtqdkCSlqlSJ9hDCAcp5OqgDSAcHAL5LkEW8un0Jm1HaaBZh3P4Nf', 'V19522', '', '', NULL, 'Pedana', '', '', '', 45, NULL, '', '2023-10-16 14:39:52', '2023-10-16 14:39:52'),
(81, 'Sudhakar Kumar', 'sudhakarkumar79@gmail.com', '2023-10-16 15:01:46', '$2y$10$I4pGVtFsUyudghfqbqhtWOXjJAML.Vmzz3s.JQolBp0TfzuX9Q9di', NULL, 0, 1, 'VMtJB3zLxqoAKR9JwYLaacT0DMEteYBFygJfNcY9paH6JyeYulDTjubFKqX000zx', NULL, '', '', 'PBG', 'Chennai', '', '', '', 45, NULL, '', '2023-10-16 15:01:46', '2023-10-16 15:01:46'),
(82, 'Surjeet Singh', 'surjeet.singh20@hdfcbank.com', '2023-10-16 16:20:09', '$2y$10$zYGLoZLJ.JO9NY7R/h/CC.xa4J.4T80QhzTVBGgDc1Q24DxA7YCjK', NULL, 0, 1, '1C8ZApVRDzvWBU3O9LO5KOhqXFlsLqiWcs7ZTHafrR138tVaDzAxR6ekX6MuJLmD', 'S54989', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-16 16:20:09', '2023-10-16 16:20:09'),
(83, 'Jagruti Pashte', 'pastejagruti40@gmail.com', '2023-10-16 17:05:36', '$2y$10$4j7om9pF1g3PBMjmByDnzumNBtoI924HPk4o9YlunU5xn6YyHbVvG', NULL, 0, 1, '2LPusKmFRD3bWOHq0qZHcQumuo9D2tKtderqw7ijC18s1U8brK5mlRV8Nd6iENFC', NULL, '', '', 'IT', 'Mumbai', '', '', '', 28, NULL, '', '2023-10-16 17:05:36', '2023-10-16 17:05:36'),
(84, 'Atul Narang', 'atulnarang219@gmail.com', '2023-10-16 17:11:06', '$2y$10$2UoVgzUMWes9JLmGBGiuouG56jWmdgscwWmsruJhY9Nunl6HkQiUG', NULL, 0, 1, 'pxKOLTewI53ZBWnyLubEAEHOLo5JnrQuWox3HKWER2BnjOHhwOUTPiMebg1XTRQh', 'A7663', '', '', NULL, 'Ahmedabad', '', '', '', 45, NULL, '', '2023-10-16 17:11:06', '2023-10-16 17:11:06'),
(85, 'Shorya Chaturvedi', 'shorya.c@gmail.com', '2023-10-16 17:27:56', '$2y$10$pkjkRXg.ZnIhf7dvDHF8WeRNCdJFFUyqViQRG.7aoUPyT4XNj.9gK', NULL, 0, 1, 'bkFpZ02WKQUuXJlLYLDq1VzuL5RYPvdKSERcwgA6IicjnI9sPuxmwuSnKucEVyM8', 'S50826', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:863d1cc9-a5b2-404e-9216-c012adb536bd?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:427636b6-fea7-451e-8a03-82bb3a950443?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:6a28bf5c-092a-4e5c-ae1e-aa47d856fe95?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-16 17:27:56', '2023-11-09 00:03:45'),
(86, 'Falguni Dutta', 'fdutta@adobe.com', '2023-10-16 18:05:06', '$2y$10$mdxiX3ONYVnPFikKLwmva.1MRQMyGozJAwUFJGsRWiq3WCLWBl/WS', NULL, 0, 1, 'IgSfp5QJp9COn8fW7DlJ63XJCNBrpFzDwLL53nAWmG75cS6akIUfkG26qpqWwotZ', NULL, '', '', 'Solution Account Management', 'Noida', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:c22d1a6e-7f70-48c7-ab15-75c9d01ebc35?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:a0845fc8-9324-41dd-8694-6e60e8b4bbc3?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:c03f8498-7f30-4417-b194-ef0a87ca9bf4?promoid=Y69SGM5H&mv=other', 0, 'Adobe', '', '2023-10-16 18:05:06', '2023-11-07 22:38:08'),
(87, 'Prachi Kashyap', 'prachi.16.kashyap@gmail.com', '2023-10-16 18:13:40', '$2y$10$LzektBcWH8V339andByltegHvHnvboTCQmOzY4XI7Ro.AKOy6Y1uW', NULL, 0, 1, 'bZvFi6d9OWfOcNqATgivLpbS87umXH8T8jS0IwVaiwFsr2XwvgJpZKRd0SEp3coN', 'P28344', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-16 18:13:40', '2023-10-16 18:13:40'),
(88, 'Mohsin Bijapure', 'mbijapure@gmail.com', '2023-10-16 18:16:14', '$2y$10$y1DUklFObHGizPyj5fBwM.jvMQbuZWgh45WOlHSBNkKiszgQ5ZRtG', NULL, 0, 1, 'Y1TWCMQHncNollthMxO4BHvaVnBh6vI2zP23tksX8KAJ6yVnLhwjIBFYDX5pqEOO', NULL, '', '', 'Event Management', 'Mumbai', '', '', '', 28, NULL, '', '2023-10-16 18:16:14', '2023-10-16 18:16:14'),
(89, 'Karthiga Priya N', 'karthigapriya.n@hcl.com', '2023-10-16 20:59:00', '$2y$10$9.IrGmz1QYADMHGgXzeMEO/oZAxrzKLj9MQl0dGDMh602dEHUU0Ka', NULL, 0, 1, 'ZsarVTNb1DlzqQPCVxrAqclH5A7J4AAeytoNQV9kxf8Ue6I62fQVIJX27pfqljEE', NULL, '', '', 'ERS', 'Chennai', '', '', '', 9, NULL, '', '2023-10-16 20:59:00', '2023-10-16 20:59:00'),
(90, 'Kunal Sahni', 'kunal.sahni@hcl.com', '2023-10-16 21:17:12', '$2y$10$iuInhbx7aKtgqBqRRezfceKFky2bmmiAMlSapQk.ghzqGvAJjLDyi', NULL, 0, 1, 'GL16fK9I4FGjcDdaiPMLVQggYV9PvZis88U8xFFKc71ZobthtzAtONImUFe6m7ig', NULL, '', '', 'DWP', 'Noida', '', '', '', 9, NULL, '', '2023-10-16 21:17:12', '2023-10-16 21:17:12'),
(91, 'Deepthi Priya Kasi', 'kasideepthi19@gmail.com', '2023-10-16 22:01:14', '$2y$10$5UgF9MJb7B/21PAhVesgAuXhID01TmLrtEcCweh0ynxm4B/LAMDFS', NULL, 0, 1, 'WiodlEwOcUoBMGnw5llALPzSjbXQA6N1f4XxzXAEedASAm9NOp3z4oAi4UresLaR', 'D16356', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-16 22:01:14', '2023-10-16 22:03:33'),
(92, 'Yogesh Shyamkawal Prajapati', 'prajapatiyogesh125@gmail.com', '2023-10-16 22:24:36', '$2y$10$E7DFjXd0xBs9W5jGfDk5a.4fk9H6GSPawtLZFRD67BCzVyTjJiUJG', NULL, 0, 1, 'nGmWePdrobxYdMMhHaJJfYbkmoA0vbGb9SCrqxaeVxahsrZL3pksK6uGU3tNYOar', 'Y4609', '', '', NULL, 'Thane', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:1e5b3f1d-8eb4-4d3d-8a03-1f98c1326c1e?invite=true', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:2887ccea-2f9a-5fbc-a3f9-32b57f0cb5a0?invite=true', '', 45, NULL, '', '2023-10-16 22:24:36', '2023-10-24 13:12:04'),
(93, 'ARUN SINGH', 'aruns@arunsingh.in', '2023-10-16 23:50:15', '$2y$10$YoRzJGI8mwG39XrEvF66buDi4vhI7r4./UjZ54jnr1d/H58916wey', NULL, 0, 1, 'iY2jTdxOWCmA5oxLwnbrfEauNsT6aic55p6UNmcpvJ0mHPA9xIpD7585iDc5y8xV', 'A43647', '', '', NULL, 'DELHI', '', '', '', 45, NULL, '', '2023-10-16 23:50:15', '2023-10-16 23:50:15'),
(94, 'Vikas Kumar Singh', 'Vikaskumar_si@hcl.com', '2023-10-17 00:14:59', '$2y$10$F0zxgiIKo1GPhA1aVFdsLOwqWmU59/Eb6d2nhUto0z.136HPFn/NC', NULL, 0, 1, 'm1n6JDzfitxDr8peQOSE8wqB6x12SC4cHHx7v5GLB1zacpwUFbps9V678RvSIqc4', NULL, '', '', 'Network Operations', 'Noida', '', '', '', 9, NULL, '', '2023-10-17 00:14:59', '2023-10-17 00:14:59'),
(95, 'Ashish Kumar Singh', 'ashishemerald1999@gmail.com', '2023-10-17 01:04:53', '$2y$10$t.5miBwV.kibqyIzjvxvMOK8j7j74lpcLexdqbaqv.b.3vXkgJqL2', NULL, 0, 1, 'YVIXZnTLKUxct8zOXsRPtyO8azvajXd3TSyiYyEXwNsxJRpvygjk2RcbG8EVeJvU', NULL, '', '', 'SEG Office', 'Lucknow', '', '', '', 9, NULL, '', '2023-10-17 01:04:53', '2023-10-17 01:04:53'),
(96, 'Kushagra Khare', 'kushagrakhare1991@gmail.com', '2023-10-17 02:36:30', '$2y$10$ADgV0jXa9DLIakC/YXOeHuoZHe6d.adtqjd8W5kS0o4Zjw35cRnqu', NULL, 0, 1, 'IbNdSP8XP7gBfuAJ8QRAh7bz4EauoIfJ4pIPTYmRzy9dHK41p462hzs1hnLoGpna', NULL, '', '', 'Infra', 'lucknow', '', '', '', 9, NULL, '', '2023-10-17 02:36:30', '2023-10-17 02:50:15'),
(97, 'Shashwat Shriparv', 'dwivedishashwat@gmail.com', '2023-10-17 03:30:40', '$2y$10$fl9Fs7D5WTcOe6jXbE355OnP9j2IZPN85arETd6AQMpyvoGao8VlS', NULL, 0, 1, 'oxzBqwtDGRTJq8ptMcxwmtLgCcVPDVvDgXDCR4HLCNxgdog3VXKlFwExWRhIfItv', NULL, '', '', 'IT Software', 'Noida', '', '', '', 9, NULL, '', '2023-10-17 03:30:40', '2023-10-17 03:30:40'),
(98, 'aniket vaidya', 'vaidyaomatic45@gmail.com', '2023-10-17 08:50:28', '$2y$10$pBqtWjxORor8dr1C5NdN6e1wntSHX.NN7duJaX2BeQ9LCbsBCs6Ai', NULL, 0, 1, 'VsK1rLMgOskFYmhMVAXRTmFt411AeegBwaWhUBt27DKwvfkQtkWfa3YDpbB1s2nV', NULL, '', '', 'Sales', 'prahran', '', '', '', 9, NULL, '', '2023-10-17 08:50:28', '2023-10-17 08:50:28'),
(99, 'Vinay Bajirao Mandhare', 'vinay.mandhare@hdfcbank.com', '2023-10-17 10:48:39', '$2y$10$xSeFos2sfctL3mkgf2P0ge8xagmTCV7xuhTeUlJkMOurg.QokObFO', NULL, 0, 1, 'MERcQj1MdvjXwAbYlMTb7VXOMRpTmb6VKUyNZBeZugsTmwZJoWsrqJgoxB4l1YT2', 'V16077', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-10-17 10:48:39', '2023-10-17 10:48:39'),
(100, 'PRACHI KALIDAS ALONE', 'prachialone16@gmail.com', '2023-10-17 10:50:04', '$2y$10$KLCTqiDvmAVn4Xqphfgv2.bviKQG7nfGlptu2nYhmSipHNblF5bTK', NULL, 0, 1, 'sOpeBftgaM70gqRIW3amEguo0mgS23PUDWBJ9iZxrgzdqcJ3oVZgSPmRMf8nP6J2', 'P20188', '', '', NULL, 'chandrapur', '', '', '', 45, NULL, '', '2023-10-17 10:50:04', '2023-10-17 10:50:04'),
(101, 'Arun Kumar Singh', 'ak20singh99@gmail.com', '2023-10-17 10:50:05', '$2y$10$.ZC6bdgUU4G6IO/OoNIzDeDkoeSy.PLnNMbafkk0.PjMylh0uN6mO', NULL, 0, 1, 'XuumQHjw433Qd1TlevpIL86aMoPWUhtIwDGC1GN35dbyhrbzcOo959L0b4vtOaqk', 'A44356', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 10:50:05', '2023-10-17 10:50:05'),
(102, 'sahana sikdar', 'sahana.sikdar06@gmail.com', '2023-10-17 10:50:30', '$2y$10$1utVyMrFgUk7m5zOuJd.HeJaeXKxF7DmDAOMECC6ur8WSG4sojG1q', NULL, 0, 1, 'ne6qG4vlQo4A2WpLtemyboitMGa1GE3oGh8tfYFHX8SfGfYsy8kcJKE5Af6lIUqw', 's38105', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 10:50:30', '2023-10-17 10:50:30'),
(103, 'Pooja', 'pooja.baid@hdfcbank.com', '2023-10-17 10:52:13', '$2y$10$0m6yZFErRMHDySzkIPmaOeby2nIa0jjpg581Ssf9//KqTS1Rr3/su', NULL, 0, 1, 'Cmfs6yb7xqt4uEHklUbfjLeP3gUBizHtZ4J1UVoiXy89HZOHtRpot1TmtgV37aH9', 'P20951', '', '', NULL, 'Mumbai', '', 'https://www.instagram.com/p/Cy_QMiEvAVQ/?igshid=MzRlODBiNWFlZA==', '', 45, NULL, '', '2023-10-17 10:52:13', '2023-11-03 13:11:02'),
(104, 'Astrid Dsouza', 'astrid882@gmail.com', '2023-10-17 10:53:00', '$2y$10$qBWYfWCMic1HAQhaWXvL6OIzafylgmLLe1XPnnjDjMGDBb57MlzBW', NULL, 0, 1, 'tKccQDqgpIEk3BKT7T8qOvHZ1aec2l5kR834Zrd5rf5BMxectezxdLb0WDUSuZAh', 'A43008', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 10:53:00', '2023-10-17 10:53:00'),
(105, 'Md Anowar', 'b.anowar@gmail.com', '2023-10-17 10:55:21', '$2y$10$4aPSttOi6SzwLIEdf5IEK.VeNgqOhnfALTlKcBLueyJRn/2zYYn3S', NULL, 0, 1, '170lHHANfqMsCKtnwKxdVA7O7lHmVfnYhBXghNZ6HSx9F1QASAmQdqRsDSsPYY7m', 'M16515', '', '', NULL, 'Berhampore', '', '', '', 45, NULL, '', '2023-10-17 10:55:21', '2023-10-17 10:55:21'),
(106, 'Vidya Umakant Kadam', 'vidyakadam1996@gmail.com', '2023-10-17 11:00:29', '$2y$10$cwP25BtzzNaVfE.UpZXO6etBF2LIKoshWypZ8/ZN6ZpeIH8YGyshS', NULL, 0, 1, 'rESBU46bSrbAzamaQXOi6HPH2VlGGQg6Dd6f8zwbk74LdUODTpdBRWKrb5ZJQFhH', 'V19271', '', '', 'RBB', 'Panjim', '', '', '', 45, NULL, '', '2023-10-17 11:00:29', '2023-10-17 11:00:29'),
(107, 'Pritam Vartak', 'pritam.vartak@hdfcbank.com', '2023-10-17 11:01:50', '$2y$10$4p3W6QF8.FcLWa0w5hgrquxvRKSMxGAYJkplSzq1VI0yhFwRpJNFu', NULL, 0, 1, 'QdRvAF4AomRTCFMxLfOB8eX4vNTyVjuudGj2h3Hw3pVxDAmupqttjSOSYRfstO3S', 'P24154', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:01:50', '2023-10-17 11:01:50'),
(108, 'Parimal Pandit', 'parimalpandit2939@gmail.com', '2023-10-17 11:02:10', '$2y$10$ejTI8Pd1AjlxzZnfYGT3FOuhckm9VC.tZC2O/.faPr4/d7svgvBGa', NULL, 0, 1, 'HAR2JTnChvbwDGEbGnTmYVEWMEb1H1MSG2Gr8P8VHqo2XwphejB2n5VJAkA9qUbk', 'P3942', '', '', NULL, 'Aurangabad', '', '', '', 45, NULL, '', '2023-10-17 11:02:10', '2023-10-17 11:02:10'),
(109, 'Naveen', 'naveenmadival9@gmail.com', '2023-10-17 11:03:48', '$2y$10$o1aBX67gedwkIYWNGv/rWufxmTZbzasxqFSHPdvF7JiEBKdi3thui', NULL, 0, 1, 'DgKZn1ngQfDR9G5MXh2Mf1M1VRlvpH2WlDfTGxUqMxZaBFqYboMSq5QTQTDl0xUO', 'N16540', '', '', NULL, 'Murmugoa', '', '', '', 45, NULL, '', '2023-10-17 11:03:48', '2023-10-17 11:03:48'),
(110, 'Rakesh Desai', 'rakesh.desai@hdfcbank.com', '2023-10-17 11:05:46', '$2y$10$ldXSm0aGiLOes7YTydL41Oxx1oS.7gTIZbcwtCHScaL6V4YWqJN0.', NULL, 0, 1, 'm78gpJsJQGq65GQ4FJmdQ41AnKsFT9vGMmaTEqAoAy1yM6NChXUPIrM6Y9skrzmc', 'R3930', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:05:46', '2023-10-17 11:05:46'),
(111, 'Ritesh Sharma', 'ritesh73sharma@gmail.com', '2023-10-17 11:06:39', '$2y$10$Um7P2HfVQEgv.mEyNaEvQuQ5b7.SPSWQK8jJpk8CF3Czr.cqy508a', NULL, 0, 1, 'm8i5l3GJ3mjdjU2LjpXGpIxWqK5H7q2Vq4MsKm0Y4mG7ycEwSwikYigjyJpXurwF', 'r32451', '', '', NULL, 'Delhi', '', 'https://ind01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.instagram.com%2Fp%2FCzLE-eSrl2BGiScD9gnF1NceGKD-AiARbQjfk40%2F%3Figshid%3DMTc4MmM1YmI2Ng%3D%3D&data=05%7C01%7Critesh.sharma17%40hdfcbank.com%7C7579f4024872463a74d108dbdc327a0a%7C827fd02', '', 45, NULL, '', '2023-10-17 11:06:39', '2023-11-03 13:03:13'),
(112, 'Jayant Godse', 'jayantgodse8@gmail.com', '2023-10-17 11:11:16', '$2y$10$Eon7NCLdBb8JAoypdP.E4.r5nfYHJxV5Je2uJf61roMPJTfr6csOu', NULL, 0, 1, 'qtp7DlgPlth141MitFmyQSBTymU3mlFnAa3uiqpRTdeynSjB6FouhOkojazgM5ad', 'J7646', '', '', NULL, 'Navi Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:11:16', '2023-10-17 11:11:16'),
(113, 'Rushikesh Bade', 'rushikeshbade@gmail.com', '2023-10-17 11:14:00', '$2y$10$fRzK8.OHdpSg1.vohVQCb.b/O3FmFjd5yMwGrvo2pWgsqgEbtm8dm', NULL, 0, 1, 'GtweEgiW4lWbTQfJbOxa7mvdBU53uI9Fuyxi2QqJjp6HpsK3ojAPycOki03uuhsM', 'R31478', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:14:00', '2023-10-17 11:14:00'),
(114, 'Shreya Bhattacharjee', 'shreyadas93@yahoo.com', '2023-10-17 11:15:47', '$2y$10$4OvGmQQ3O04ewF4QEKjZg.n3WTmzeTaXiXbDwLiDeXDm8a95iCKLe', NULL, 0, 1, '3fGTuUQLx3FblCBi3jixYNYjAqYyXoTZE7eu7I228sh9cglwoYYeq9OjuFwgNPal', 'S64039', '', '', NULL, 'MUMBAI', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:5174f32f-6a0b-528d-a254-d81efa2e3000?q=paw', '', '', 45, NULL, '', '2023-10-17 11:15:47', '2023-10-17 23:16:53'),
(115, 'Prasanjit Murlidhar', 'prasanjit0705@gmail.com', '2023-10-17 11:17:22', '$2y$10$1PrY85rQ0PA4kiZCOHCrl.PeBnzSsiNBjCCVwGnq6apYhnvjTNIcm', NULL, 0, 1, 'iJMoygZIFwpVx7BbbR6EFmEL9zmSsVhpHRrktJPyZEI0XWUTrbSm6AxJAIN55AAz', 'P27500', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:17:22', '2023-10-17 11:17:22'),
(116, 'Harshita', 'dudejaharshita@gmail.com', '2023-10-17 11:18:12', '$2y$10$K9eHYHd.Ay1jfSSPvl/wX.bnsn3Izfg0sVCHid6b.tgJyMG146fca', NULL, 0, 1, 'X5vsPpdkOuUU5oJErGKK3L8AUk1WCikM0NJ84f5qE0etAhRJFBiStW7k9mmgKAkS', 'H9551', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-10-17 11:18:12', '2023-10-17 11:19:29'),
(117, 'shrey sood', 'shreysood405@yahoo.in', '2023-10-17 11:20:32', '$2y$10$fwHpBcgT1/hYbjvTYisa2O2QxitYlL9hjzHuViFyvodlPnU3Yr28G', NULL, 0, 1, 'sxvLMyhynZ65s14fPBvcqlWFZ1SlJBits9vyYmsMWCGmO75fYM7lIexo8ZR3SzsT', 's48590', '', '', NULL, 'pathankot', '', '', '', 45, NULL, '', '2023-10-17 11:20:32', '2023-10-17 11:20:32'),
(118, 'Sachin Ambre', 'sachin_ambre@hotmail.com', '2023-10-17 11:27:35', '$2y$10$m5SXnaRVPDfY0r9QzCITgu3XjA4J5MHE0skM.3/HYA0njeV9BCTGq', NULL, 0, 1, 'iLpiDyfRP7Pk8dXA3TZERqVgmQ3uSCnElYDfXbgd5kmmknUQ1jIxH1Ve7uVQN4Ft', 'S19909', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:27:35', '2023-10-17 11:27:35'),
(119, 'Mahima Nilapwar', 'mahimanilapwar@gmail.com', '2023-10-17 11:29:57', '$2y$10$mXWuRmxJEICHVLGj9DNpU.YQycLgpAFPrHIpQIjm1b9WZNPdRU/my', NULL, 0, 1, 'ZepggeTcq0V9jKmMUEjUX3ftCw2QbLUxD2jIZ6X8Q0YRCWlDMfimnABhl1U9CByo', 'M27003', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-17 11:29:57', '2023-10-17 11:29:57'),
(120, 'Gunjan Luthra', 'Gunjan0588@gmail.com', '2023-10-17 11:38:54', '$2y$10$pE29SYddP8wBuaJj.6Y02uT0IpCQgJkOXwQHDx6Ag91O.SAbt2cdW', NULL, 0, 1, 'jslISOEboNZTn6PkSGUIYCc1zUIBJ0WJ4cii3sxFGNrZkMdsS9P2AAfK4gmq5RaH', 'G5666', '', '', NULL, 'Ghaziabad', '', '', '', 45, NULL, '', '2023-10-17 11:38:54', '2023-10-17 11:38:54'),
(121, 'Bhavana Sridhar', 'bhavanasridhar2000@gmail.com', '2023-10-17 11:39:04', '$2y$10$aAuz8guA7PZXjIfeDZzjAe1yTcAqRVXUk1O11r/NllduaWOGBMFZW', NULL, 0, 1, 'vJszAnP7uMStLNksM0Mwqvsqo2RZZXdyol6oXdWKVa5oFypQny2GThuRYFXPGcN6', 'B10283', '', '', NULL, 'Chennai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:026e16d6-17b5-4313-8532-4f23f160ff41', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:1b579439-a139-4389-a8ca-b773e480d2fe', '', 45, NULL, '', '2023-10-17 11:39:04', '2023-10-21 11:23:29'),
(122, 'Rakesh Gandla', 'hola@rakeshgandla.com', '2023-10-17 11:40:38', '$2y$10$bxyUF3sxHqRwo8pmuzPwZukXyfRha/DyRNZDK7EW41t4POdSYQwlu', NULL, 0, 1, 'GYg9kACZfs2SX4LLscoz8PZvKCzy9YHsXCHSIeuU9IKV2LXW2xeC5DP9l2AURGDO', 'R27978', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-17 11:40:38', '2023-10-17 11:40:38'),
(123, 'Nishant Matta', 'mattanishant0004@gmail.com', '2023-10-17 11:40:51', '$2y$10$Q0/BWT3pFo7wJLdgQlVc4u65.zOA0DDChWxSfeUPgChG/aWKOIpTq', NULL, 0, 1, 'HWCg1vMzpJRcHtSxgf6Qx8PoZF4CawsqjNMmCSuJjo9oFjANO56TZ83GZ4lrZlQh', 'N14241', '', '', NULL, 'safidon', '', '', '', 45, NULL, '', '2023-10-17 11:40:51', '2023-10-17 11:40:51'),
(124, 'Sharyu', 'birajdarsharyu@gmail.com', '2023-10-17 11:43:53', '$2y$10$bZ683DiGLzSGPK3L1lkKseB5uNrLrxXDJKDLRuP7zQDq/00mL.SWG', NULL, 0, 1, 'UIEorXUmmq2cYOdZRu5Xn28byzh3sjo2echlZbN9GVBNRkyUC4awnBBdvBCEJsJ7', 'S51201', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:43:53', '2023-10-17 11:43:53'),
(125, 'Harihar Dindayal Agrawal', 'hariharagrawal@ymail.com', '2023-10-17 11:46:30', '$2y$10$0IW3SAPH3Y3eaU8MKasgEeI3nC3t4He1G35XlSPZBPhBGBgcGm9eC', NULL, 0, 1, '17Pgcg58Z7IkUuEqwoM3rfguN5RQ5zatpAuOMv9baSu19fSVi3tvSYyx8uGcAQKJ', 'H9507', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-17 11:46:30', '2023-10-17 11:46:30'),
(126, 'Muneeb Shafi Sofi', 'muneebshafisofi@yahoo.com', '2023-10-17 11:50:45', '$2y$10$0Ghvre/QeO7RV3dYwNjBSuXylAdYM969mCProBZvtJZWfK8.BjWx.', NULL, 0, 1, 'cUjmPvlSKKrXEXTp90y5zjRXi9WUVgGT8A4RG01VFqwIU9gf7rqyp87LEGC98eyv', 'M21564', '', '', NULL, 'Anantnag', '', '', '', 45, NULL, '', '2023-10-17 11:50:45', '2023-10-17 11:50:45'),
(127, 'Anshu Kumar Choudhary', 'anshu.choudhary1@hdfcbank.com', '2023-10-17 12:13:44', '$2y$10$u548UC2VTJDUfjk6xLvhfOh6tcCuhg5cV8fgA6N8S3P9OKDEA41Qm', NULL, 0, 1, 'CvgJ1kgbm2A54YV0UMCxNlnj6zYOYZvkYISOnRtwKxt5BnkzAH9b1XTjl5DzHQ1g', 'A52274', '', '', NULL, 'Chennai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f13bc344-66bb-455b-a087-a7c25504fa91?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:d720decc-136e-48e0-b972-84c1ba9a290a?promoid=Y69SGM5H&mv=other', '', 45, NULL, '', '2023-10-17 12:13:44', '2023-11-01 19:07:44'),
(128, 'Sacheta Shivaji Chinchole', 'sachetachinchole@gmail.com', '2023-10-17 12:19:27', '$2y$10$0qRL9PdPL8.xrr230DBA5eHIt2t7ju/.vvnPTU2AYnPb0fKd7UbhG', NULL, 0, 1, 'Sqku46eTgi5zJ4AYvHJPekBqyRDPH9LpxKaHxb38gwfnA57oPBinG7r44NDPQA1z', 'S44038', '', '', NULL, 'Navi Mumbai', 'https://www.instagram.com/reel/CtS_B2SA6sd/?igshid=ZTg2eTJ5eWUxbGZs', 'https://www.instagram.com/reel/CyBYhEjvLbs/?igshid=c2JvdWNhYzBodHZh', 'https://www.instagram.com/reel/CrlaZnRgASy/?igshid=bTR2YWgzbHRlNmt0', 45, NULL, '', '2023-10-17 12:19:27', '2023-11-08 00:29:09'),
(129, 'Piyush Sharma', 'piyushda@gmail.com', '2023-10-17 12:24:18', '$2y$10$/eCld1yHdQLJFlhBX4xIAuAZ3w.Be2Oe1j6U7tfRTndDQqnvWzQN6', NULL, 0, 1, '8EBfQboLySy5LmSyAuMMUXY4hqNw9yV8vzAoUBgT72uuugv6EkqFY61byCPZhTTB', NULL, '', '', 'BI', 'Noida', '', '', '', 9, NULL, '', '2023-10-17 12:24:18', '2023-10-17 12:24:18'),
(130, 'AMIT DILIP ATHALE', 'amitathale@gmail.com', '2023-10-17 12:25:18', '$2y$10$zkdF3bRms1LJ3656TgcihuaCHoNFiZrmSKLB/gnEEtG3hI9I4ry1m', NULL, 0, 1, '9Or6vCO8mZ4rYbX4SkmYCmSDOslcH0OfdX4PAXFBqwBCkehwTfZTdPph7jHBlzv7', 'A46763', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 12:25:18', '2023-10-17 12:25:18'),
(131, 'Puja Barman', 'puja.barman@hdfcbank.com', '2023-10-17 12:29:53', '$2y$10$JGyihaMpmgloOfr58cxkmO365TAt3rrxNJLb5CTQUMU06zyGQIlbK', NULL, 0, 1, '8TZ1Y3jpxAkzAazZ8fVxrQXzW61Pd0ArW4KPJAN60TV3av5ouCydMMW7gSW6ZHr1', 'P22151', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:bcb1c766-be54-5d12-be39-43a707a825fc?invite=true&promoId=XXTQGVMK&mv=other', '', '', 45, NULL, '', '2023-10-17 12:29:53', '2023-10-28 00:54:46'),
(132, 'HEENA', 'heenanagda5678@gmail.com', '2023-10-17 12:38:39', '$2y$10$bZSvFkA3QsFmzRNpuhv5eOtw6QFwWxxZwbantSL8y91Bb2VnxcL.6', NULL, 0, 1, 'MzRMUzaDE0lZMGpdYSFO6Ng23HKINmDlQaf28QV9cvYGqfLHOZ9PKp7al4aSwcij', 'H8235', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-10-17 12:38:39', '2023-10-17 12:38:39'),
(134, 'Vaibhavi Patil', 'vaibhavi24oct@gmail.com', '2023-10-17 12:57:19', '$2y$10$Bb4vh29Ql7iFsBNBiFNrZuDQ5rHTc0lArCcr/r6RG7Dzk3jviDNLO', NULL, 0, 1, 'zVjNVZbtYMWV8OUzgMaMztjjlhLT8EZPtwjOB1YCyQJwDyl1aZ6UTqTLCPWGoorD', 'v20591', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 12:57:19', '2023-10-17 12:57:19'),
(135, 'NIMISH MISHRA', 'nimish.mis@gmail.com', '2023-10-17 13:03:56', '$2y$10$8qLXPJ/ynL0i1itP0xp.LORLrvJJux8tFpoWWFAoTTet5tt6JLKem', NULL, 0, 1, '8e8KqjwqZVhSuSQOgIOZAS67a6bCB6omNr0aUCy4NofFKW40cRUr2F4Lid2NhnQs', 'N1461', '', '', NULL, 'Thane', '', '', '', 45, NULL, '', '2023-10-17 13:03:56', '2023-10-17 13:03:56'),
(136, 'ARUN', 'FLYERZARUN@GMAIL.COM', '2023-10-17 13:08:05', '$2y$10$ig.3g8FYgrm8xDwTexb7ou1OiWoqTn4nsZ3gQ3PD7LH02vS7ZnUSK', NULL, 0, 1, 'ZBlYaicsZ99AwSaErspv1IGdAIZbi49SULs1WgHPOKJ6NvjQCeLS4o3KWXzDFlI8', 'a36990', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-10-17 13:08:05', '2023-10-17 13:08:05'),
(137, 'SALONI CHAVAN', 'salu.chavan@gmail.com', '2023-10-17 13:17:37', '$2y$10$sY1k4JzRgn6NEg7wodxmSeUMulJvQBt/hj7d0tnyN2hLg4yrAg.lS', NULL, 0, 1, '6IaSPLDfkQJTsNtAWokLBCX3Np8zt8sNkwP95A1s08X50GIzvAPFjernIc4tVgJN', 'S64927', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 13:17:37', '2023-10-17 13:17:37'),
(138, 'Anush Bhargava', 'anushbhargavain@gmail.com', '2023-10-17 14:11:00', '$2y$10$vm69QeqJzGECZu8VinXMceZnL59AJyQ1I9oayT6y3ikyMvX/sjut.', NULL, 0, 1, 'WGhip2oKHXGtGM9QNBEKpqSChmYPVZeN5y2FGnjYZNVG7mBxCKsMmTg8rG2yMCtN', 'A46220', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-10-17 14:11:00', '2023-10-17 14:11:00'),
(139, 'Navneet Chauhan', 'navneet.chauhan@hcl.com', '2023-10-17 15:20:57', '$2y$10$XPdtGYzvJ.JY4GSL0TQ54eT12EDxVgGmgQQMTjrg6kT.WWPN6Nvoq', NULL, 0, 1, 'VFpjMOyblPX18QkJt92MGJQJWojDkNIf79Md6w6g7tyTSLTD7UuROh3h6cEkF0Sl', NULL, '', '', 'ERS', 'Bangalore', '', '', '', 9, NULL, '', '2023-10-17 15:20:57', '2023-10-17 15:20:57'),
(140, 'Priyal Ashar', 'priyalashar@gmail.com', '2023-10-17 15:31:30', '$2y$10$N1YpVdwsPvUPvLjOv3IJJuHTckKCg6b3NPKQV1gjfA.efde9NyycC', NULL, 0, 1, 'qby7CRNl8XBZkyUpt7gBErzL9HO2wjVLe3W8ubBi1Quo01IHLtCiUbqDkjcyVP0k', 'P20558', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 15:31:30', '2023-10-17 15:31:30'),
(141, 'Niket Dhulap', 'niketdhulap@yahoo.co.in', '2023-10-17 16:42:33', '$2y$10$kRHS8VeXCC1IdRICXibvyez6bfro2jP7juSuF1UktlW9zY4IrwUva', NULL, 0, 1, 'ToQuDqzJ971DcEL59zFT2hj7ZVMhTTBi2bKMoVS13ThPDUVeQsJdojVViN5mnMib', 'N1500', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-17 16:42:33', '2023-10-17 16:42:33'),
(142, 'Kartik Patel', 'coolkartik.1999@gmail.com', '2023-10-17 17:12:41', '$2y$10$wzSzCnh9Zlej4pSDrdJwzeZtRz5tkp/L3TVDfT7/9DFzRO0Wm68sC', NULL, 0, 1, 'CDqs7I7kXHegAA8Ik3UI4ILIgilAQOhZ9JBwKHUACE7QuZiKRVtITSNBkh7ID2bG', 'K16931', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-17 17:12:41', '2023-10-17 17:12:41'),
(143, 'Debjani Dutt', 'Debjani.Dutt@hdfcbank.com', '2023-10-17 17:42:23', '$2y$10$mCtch5NtvrRZuVWGknAAkOxzZZBmJAO8Ccz6DIAbGDcfQHFehq.UK', NULL, 0, 1, 'E8kx1gDhpoZ3XFSyQKF3aS5PfM2dxQNNnZoOshCqJJ9oGisGeCp1qMiTV9qlSpfK', 'D14279', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:d83b0624-896f-5ee7-87d5-dfdaadab1913?invite=true&promoid=XXTQGVMK&mv=other', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:d83b0624-896f-5ee7-87d5-dfdaadab1913?invite=true&promoid=XXTQGVMK&mv=other', 45, NULL, '', '2023-10-17 17:42:23', '2023-11-17 18:29:00'),
(144, 'MEDHA SHRI TOMAR', 'tomarmedha93@gmail.com', '2023-10-17 17:42:37', '$2y$10$xCBe6KMHsGaIg6i1bk5tVevkA0wbF.TlUYYJOZkCcQoj5C6fwpX7W', NULL, 0, 1, 'CsKeGH2eDqlMaiGUkA8HxvsOSsYlQwJBGPbjRlYNhES6IGfE8v2ghrtzsUTTMEcv', 'M26658', '', '', NULL, 'JAIPUR', '', '', '', 45, NULL, '', '2023-10-17 17:42:37', '2023-10-17 17:42:37'),
(145, 'Payal Raut', 'praut1325@gmail.com', '2023-10-17 18:10:54', '$2y$10$OeeJcH5mxvNbH88ap.fIR.Bvl1uy8Zhw6Dea1e7o2irKjt2j6JYq2', NULL, 0, 1, 'gdENs9sSKegax8efc6Bdf8a59NLQKawWtQA8ls7rh3zmt2L99jryhMTykjra52qs', 'P25788', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-17 18:10:54', '2023-10-17 18:10:54'),
(146, 'Durgavijaya Shinde', 'india.durga@yahoo.com', '2023-10-17 18:29:04', '$2y$10$mVVCMHL6zl3WKWRI8u9UvuFh88FoVdwBlaCkgX3omQ7N74pnzkRXu', 'e4ublSjFdawyzZOp5jV5mtF7YL6q0V6IKD0CYM3geCzoAS61G4GzNVmExJF9', 0, 1, 'WZKVoUKfq0hQoZ02JnfZwx7LZcERzMmufxaU3WG1vSsrzCUn9vgw9rvywpaBbf99', 'D8160', '', '', NULL, 'MUMBAI', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:c82fc9cd-647b-4022-aad2-fd6a3fa7f5ef?promoid=Y69SGM5H&mv=other', '', '', 45, NULL, '', '2023-10-17 18:29:04', '2023-11-18 13:00:58'),
(147, 'Simran Patodia', 'simran.patodia@gmail.com', '2023-10-17 18:35:56', '$2y$10$TnwGueWN8qcHCwKgilyGMud/3gBqY4/9I1VUXRWIprm1n5OQgnq5i', NULL, 0, 1, 'Px7g4vUVFQE62cks9HJYv9AHoMdHk4t5uB5Z2UPKCMnqKg2ZaAnhXgD53fOceiZV', 'S57803', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f06719df-0cae-4706-89c0-28cd812ea671?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:3744b1b9-7211-43cf-92e9-89c5d09b4c07?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:c5ed0d79-7c63-46bf-863d-c14bc6030c79?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-17 18:35:56', '2023-11-06 18:23:33'),
(148, 'Sadaguru Govind Gawade', 'sadaguru.gawade@hdfcbank.com', '2023-10-17 20:34:18', '$2y$10$qG74hCZeUOMCrnMRXy4/gudV2lq7VtVvLs9VO5ISROT1GA/V.4xBm', NULL, 0, 1, 'KSZwqJU2QeSxlqXcfqUdwch9kRlCMTsABMQeH035PRq33kVf6bBPEAr4GJ0flVvV', 's69018', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-17 20:34:18', '2023-10-17 20:34:18'),
(149, 'Sangavi Rajendiran', 'sangavijaga1996@gmail.com', '2023-10-17 22:32:09', '$2y$10$DBf6jrI1qvmHVkbyCUoqdOvrQx/C/SQ4YKJlctOtt7gsZfHM3hyYG', NULL, 0, 1, 'KaETyltOLKg62k4HTQxDXQ5E1Qo0S36DdbzT2uAUoVf2pVFRsBn4sIU1Ht1q9mC6', NULL, '', '', 'LIFESCIENCE', 'VELLORE', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:2fce68e9-a8f5-418e-ae3c-b58d93e86cd6?promoid=Y69SGM5H&mv=other', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:d1323c75-bf51-44b5-b23c-6976515ef03e?promoid=Y69SGM5H&mv=other', 9, NULL, '', '2023-10-17 22:32:09', '2023-11-03 23:11:57'),
(150, 'RANI K SOLANKI', 'rani.solanki@hdfcbank.com', '2023-10-18 11:36:03', '$2y$10$ahaPbxMMBtLBPV29KoSZbukh7g/MQQYRUGBewvwUxbwg/dBfRWSm2', NULL, 0, 1, 'lSR6pOE3ddeYhdNTrXGpJznrDhGTv0C66Hb5n8S3W4rBw5m3UzetFBRgCgZebu7k', 'r23903', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-18 11:36:03', '2023-10-18 11:36:03'),
(151, 'Shikha Agrawal', 'agrawal.shikha1012@gmail.com', '2023-10-18 12:21:04', '$2y$10$KFaN.KDOMH47VVp2YlAaeO5Foh25MTC.lsE7gsE35cv.3ZQ8bbg3K', NULL, 0, 1, 'QCkuG7O9yeAUoSX5o7gNFAyIa3oWID1PnyNw0wjlzEF8RxkXV1iQRjS5NuGGcoNd', 'S50100', '', '', NULL, 'Mumbai', '', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:4aaf11c4-8f8a-445d-a159-e931c30d1ce4?invite=trueUntitled - 24 October 2023 at 12.04.51', 45, NULL, '', '2023-10-18 12:21:04', '2023-10-24 14:26:46'),
(152, 'Abhishek Vyas', 'abhishek17vyas@gmail.com', '2023-10-18 13:08:04', '$2y$10$OuIGrMPoq2aziP8xdpWAD.7L/XVhUyjAti1.mymNe0EZVhCPb1xOC', NULL, 0, 1, 'vFQeBlSY2qdreB68oMvAKUBBGKIkyHfZYjuYBCjGrv126SI0k5Gr0qmIvU8qqXAW', 'A38268', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-18 13:08:04', '2023-10-18 13:08:04'),
(153, 'Umesh Mayekar', 'umesh.mayekar@hdfcbank.com', '2023-10-18 14:32:29', '$2y$10$ujnuHpAVtcaKjsw8VZsQ7ufu7l43xU/MIu/FejwD8gUQnnnUx0fJO', NULL, 0, 1, 'XVQpkgAnF1EGpW7jJJjMEscdNa0lKKLGR4eaJvDP8nN4DzYhkm7lkwsxPVwDz3ss', 'U2384', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-18 14:32:29', '2023-10-18 14:32:29'),
(154, 'Urvi Madhwani', 'urvimadhwani@gmail.com', '2023-10-18 14:34:21', '$2y$10$cJpMujN6e8BHpFcRiiP6aO9.cUbFw7fwB4E18yFFwf18/9Zqkyp3y', NULL, 0, 1, 'Z17jmVMlK6DeEDD79pUgRuSiq910hnBSuhlqtNrVbDWPphu38OVcTgUbvyvpmfVk', 'U2853', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-18 14:34:21', '2023-10-18 14:34:21'),
(155, 'SUMIT KUMAR SAHU', 'sumitkumar2587@gmail.com', '2023-10-18 15:32:43', '$2y$10$.dSiociRZ5I7kUSs2oq8jO6DyIkbrTYCfvmHwY4xfDnbRMwIpoxpu', NULL, 0, 1, 'Snq8G8WHsfAeau9GpQrcyeussaKbQY0ttyvmfYsBLpbwMGYKJxraFyCbLK0q4FXu', 'S39209', '', '', NULL, 'GURGAON', '', '', '', 45, NULL, '', '2023-10-18 15:32:43', '2023-10-18 15:32:43'),
(156, 'Swara Adake', 'Swaraadake30@gmail.com', '2023-10-18 16:37:32', '$2y$10$gbyljBRhsHKucjvrxvSGOO4GvH55bcxjYbhIcc9CK6QwncHb3uEnm', NULL, 0, 1, '55aYyKalorWCuGPlamXSSx19fCXZpnFqrbOANnEMZIkn1HrIM8915YBNNPMhY0bb', NULL, '', '', 'Human Resource', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:804fa536-b6f7-481a-8a98-752947658c94', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:a7cc47a7-19ed-433c-a394-5cdecc9683d3', '', 0, 'GNP Group', '', '2023-10-18 16:37:32', '2023-10-20 16:14:46'),
(157, 'Feroz Mohammad', 'feroz.mohammadd@gmail.com', '2023-10-18 17:35:39', '$2y$10$vWPVYwQ2HpcoXxqCNcTSf.RzFd3sgFFL.1HARvxnFeRxt76t5fH22', NULL, 0, 1, 'uURaNf9makIeWqwjv1kDkkAdsqen2kpdZZT5BZkA5qUmpLr7iKxLTZID1YZ3LlPX', NULL, '', '', 'Human Resources', 'Hyderabad', '', '', '', 46, NULL, '', '2023-10-18 17:35:39', '2023-10-18 17:35:39'),
(158, 'Abhishek Tiwari', 'abhishek-t@hcl.com', '2023-10-18 19:41:29', '$2y$10$fmG1KofDz4GLiqn67r3PSuI.wjoCD7KdgF5HmkmRGs7fO8yYzZHPC', NULL, 0, 1, 'yetcDkARf04tN7IwtvaHqBIMZu58bXyUggL1VMnPgceS2AUT5xZEVt1KkjTap5zg', NULL, '', '', 'Quality Assurance', 'Lucknow', '', '', '', 9, NULL, '', '2023-10-18 19:41:29', '2023-10-18 19:41:29'),
(159, 'GAURAV SINGH', 'SINGHGAURA@HCL.COM', '2023-10-18 20:03:53', '$2y$10$co1eY.2Yw3Cd0bufcLtH6urPOrMN2Wa.Une/tFkUcOrSTqVsTJVOW', NULL, 0, 1, 'jRF4IisoP6AN7d5UBQigE8SML7dBEZqI2ewAeTI2jzbWs4Di4LioscvylORK3YRJ', NULL, '', '', 'Software Engineer', 'Lucknow', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:95f333fd-720a-44f1-986a-6ffb79f6f1ba', '', 9, NULL, '', '2023-10-18 20:03:53', '2023-10-26 19:17:15'),
(160, 'Ashvini Ramesh Shrirame', 'ashvinishriram@gmail.com', '2023-10-19 01:10:46', '$2y$10$fwEtsTk0mfaICtL4lof/YOehsWmqDPqjKAL2t8hav4rbyubgtPruC', NULL, 0, 1, 'ZyTQ4EZi4HsB5aVdZET5zromNTFuUVdGztXi0rHKg7Ym6DKuB5hizrPLXZOxTvTj', NULL, '', '', 'Finops', 'Hyderabad', '', '', '', 46, NULL, '', '2023-10-19 01:10:46', '2023-10-19 01:10:46'),
(161, 'Uma Maheswari', 'umamahee@gmail.com', '2023-10-19 12:26:02', '$2y$10$1ReQvB8MbHhCw.OVnkeT.OeH9Yg3DAn.gBZtScYmt82TWagz6BNxm', NULL, 0, 1, 'l5OCxrpBAk68cUV2o6m9Y8lgvV3ueD8j6TactDIcqF4tF8Wy9iy7jDPfNxCjhQ1A', 'u2292', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-19 12:26:02', '2023-10-19 12:26:02'),
(162, 'Rajal Kumar', 'rajalthakur@gmail.com', '2023-10-19 12:30:25', '$2y$10$INmeW4CzWPGIXzBszQmqIOXLW0B5OXgiHAfQaaqjGtf9X2Q7Q8ofi', NULL, 0, 1, 'RPzOvXOyWW9CDgmjaVZpZpZtR0si7SiZMDfmr3SEvqIlqyUxwcgCyMmaCsHEJ0fx', 'R27332', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-19 12:30:25', '2023-10-19 12:30:25'),
(163, 'Saurabh Kumar', 'saurabh.kumar5@hdfcbank.com', '2023-10-19 12:31:43', '$2y$10$sfynU5xzB0SkL0c4wrpMsu6cV9sWZgcdTCpE6GhTBJ9bBSNtZ8dCW', NULL, 0, 1, 'EacoHriQufoxctO5MmlU0ezeSVGmmIX0cmmnbeVIUGYQohx02124438XRI4Zpyb2', 'S29957', '', '', NULL, 'Panipat', '', '', '', 45, NULL, '', '2023-10-19 12:31:43', '2023-10-19 12:31:43'),
(164, 'SAMPURN GHOSH', 'Sampurnghosh@gmail.com', '2023-10-19 12:32:58', '$2y$10$78VDBj6UvNVLnrCLtJboVu/UcUwP7/2I3XmsvLcuptWY3KnWzYSgW', NULL, 0, 1, 'vLTH7eXPubhryN5dsFEd161lkFWn4Q5X9xxUy7lJirJCjBRaGwgAGvTLZO3qYMlQ', 'S57578', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-19 12:32:58', '2023-10-19 12:32:58'),
(165, 'kaushik chakraborty', 'kaushik_chakraborty2003@yahoo.com', '2023-10-19 12:40:10', '$2y$10$rZ0w1YX4PYbvwB/35z5zp.9AeAU7o82DOMmiQ7O9KrmCoOCnqwNqu', NULL, 0, 1, 'QK6a6gDKaB2Yic6ESaoTe0imBHE3FL6xDzAa8U9Hb3nxwC8QvKplnZHsavGR45pK', 'k1022', '', '', NULL, 'kolkata', '', '', '', 45, NULL, '', '2023-10-19 12:40:10', '2023-10-19 12:40:10'),
(166, 'Rahul Prasad', 'rahulprasad789@gmail.com', '2023-10-19 12:41:43', '$2y$10$U5JowqOt85G73Vli1X0tbuuz8XrCjiqEiRwWO.QehX3fGrRgb35FS', NULL, 0, 1, 'otJUcsAgyhay4v0fbMBZg97ajM0cq8MYIh0KjaICFWEqVIKFQA5C3YrFiwLhqwpN', 'R32371', '', '', NULL, 'Jalna', '', '', '', 45, NULL, '', '2023-10-19 12:41:43', '2023-10-19 12:41:43'),
(167, 'Asmita Dhanaji Salunkhe', 'asmitasalunkhe2102@gmail.com', '2023-10-19 12:42:29', '$2y$10$Or0.z37RgySQox2RHAU05.kS4zUbWn4Lh1Aak89GHcd6qA8dmn.UC', NULL, 0, 1, 'if3HtcGe4PuVdFPGKQ0DlRNHywCHeCsFzwLt5lmpHRgXPFy3tpiTWPAhIQS0jM34', 'A29041', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-19 12:42:29', '2023-10-19 12:42:29'),
(168, 'Vaibhavi Kiran Nalawade', 'nalawadevaibhavi03@gmail.com', '2023-10-19 12:43:07', '$2y$10$p7jHHyfrBcnWXemDV.I9RuAkvpJHWyLXK7MR9aPSQQSRveIdTWiJW', NULL, 0, 1, 'QIwuprrbblPco22IHOvOSVzS86AKIuMkpzOlNSyuOkx0FyBaSemlZ3CKEtXW5hGh', 'V20813', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-19 12:43:07', '2023-10-19 12:43:07'),
(169, 'Sagar Shivaji Gangurde', 'ssg.sagar55@gmail.com', '2023-10-19 12:46:33', '$2y$10$rpGhf5e5LN8PUGJ.hjmRWeqpAy66lbIkWFMntECSKOPkEJZvsEYjm', NULL, 0, 1, 'VchKOcODAMal53mGHGBZ9k2ArLIsemLCayTucHcjdLDIxj9MuKdknzN6s8Kkonmq', 'S36377', '', '', NULL, 'Nashik', '', '', '', 45, NULL, '', '2023-10-19 12:46:33', '2023-10-19 12:46:33'),
(170, 'Heena Chopra', 'Heena.chopra@hdfcbank.com', '2023-10-19 12:46:43', '$2y$10$AiUUDSvOGlPAncJPuM9DUer/.3dyJ5vo5QgUe7qMpHibJqxn/Ak8K', NULL, 0, 1, '2nDzNnQfkoslINEoertwv1UInIxrxblpASAkxXTtL9LvCQRk2VFAlf56FfSmMUUy', 'H3903', '', '', NULL, 'Chandigarh', '', '', '', 45, NULL, '', '2023-10-19 12:46:43', '2023-10-19 12:46:43'),
(171, 'suman singh', 'suman.singh3@hdfcbank.com', '2023-10-19 12:51:05', '$2y$10$Z9zZju9s6MzZqIlbiKeDx..PVjwad.H1.5.oxMSGSy/aQ1qUQu4oW', NULL, 0, 1, '8bOrX9KLFjdu0O7TPuGPLD0sSGfGWp9SJeMXSv2U2Ltky9Jh29IjG1d7nPH7Xovr', 's54516', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-19 12:51:05', '2023-10-19 12:51:05'),
(172, 'Yashashri', 'yashreeshinde2016@gmail.com', '2023-10-19 12:51:23', '$2y$10$U9j4neMRCQn.LFfUZnR6..Or2f60Cc8pjJt2rzbK59Cd0Y0hhwxti', NULL, 0, 1, 'MGqY2z5xEHDdjLQOfth87onWVAPiYJ7kuTZHVyrTYWBA2bkWS828ghS4myLAaKfS', 'Y4764', '', '', NULL, 'Rohtak', '', '', '', 45, NULL, '', '2023-10-19 12:51:23', '2023-10-19 12:51:23'),
(173, 'HIMANSHUKUMAR MATHARANI', 'himanshum198@gmail.com', '2023-10-19 13:00:30', '$2y$10$rgRAIiv409Trnv8Stq4vw.0pSseqeEPfA9v08l5l5KZUyx3wibI.S', NULL, 0, 1, 'CA5PasyU5TtCXwsehwpzN4uQDk8jfZuViv7uLlwV2YhYk8mqPl7Ah4JCDk2iWKNQ', 'H8262', '', '', NULL, 'AHMEDABAD', '', '', '', 45, NULL, '', '2023-10-19 13:00:30', '2023-10-19 13:00:30'),
(174, 'Ravi Kumar', 'rkammra44@gmail.com', '2023-10-19 13:04:19', '$2y$10$qehba3Ra1TjHptCIW327wOIuLipZMEf1IuoN/ZtCUHcruZcxzRL4u', NULL, 0, 1, 'LieCmVJ6BKevCDHDbsynGWMR9TuolCvM9awhNzD4c8GdcTS3v0wJHFNXCQOwwkwU', 'R19374', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-19 13:04:19', '2023-10-19 13:04:19'),
(175, 'Yasir Shahab', 'yasirshahab5@gmail.com', '2023-10-19 13:09:39', '$2y$10$d4p4URiQ0Qd7XKtJcHtD1OVNHOKl2qcryk2HNAWxkVFnFVIVUcgPq', NULL, 0, 1, 'eytoUR3dIw0FrUp7qnWcF5VBn7NQy71eGDQqK5muUb92Ndb05inakU9bc8ZjJn7i', 'Y3838', '', '', NULL, 'Noida', '', '', '', 45, NULL, '', '2023-10-19 13:09:39', '2023-10-19 13:09:39'),
(176, 'Nirmala Sinha', 'nirmalasinha2008@gmail.com', '2023-10-19 13:26:35', '$2y$10$bq5xKHXv40bRSQ3mnXPOAeX4Q1w5Ft11KKbxn5RXYvIW.0.8n/LP2', NULL, 0, 1, 'hfGtaTEFs55CjQTDTHDxTEFlAkYufQPFPLGw7LzSIk9aQNKnu9RjkD7l4cxFOhDY', 'N20213', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-19 13:26:35', '2023-10-19 13:26:35'),
(177, 'Bhairavi Patel', 'Bhairavi.patel05@yahoo.com', '2023-10-19 13:39:24', '$2y$10$P3ZPCL4z1shhbiF7MBQ1vuQtJ.chLwfH05YVfON61.0cNCx44MM4m', NULL, 0, 1, 'OJBX65t2F4KrDzDdNT4N6OZ4KFIpF7NpwMjc9gQGIGrxwhXjhKLkkiyH6SBPdmGV', 'B1275', '', '', NULL, 'KALOL', '', '', '', 45, NULL, '', '2023-10-19 13:39:24', '2023-10-19 13:39:24'),
(178, 'ARATI MANE', 'rtmane1889@gmail.com', '2023-10-19 13:49:33', '$2y$10$REyks3p1NydRqnRxZNkLR.ipHqiSAYk6XodxtlQPgdD5qHjI0hepO', NULL, 0, 1, 'EBZufH5m3GPyzaTFzXI7OXhhRpR17w1qopdWlPR54TtFXrm32jlxeUooogwBn3q9', 'A35910', '', '', NULL, 'KOLHAPUR', '', '', '', 45, NULL, '', '2023-10-19 13:49:33', '2023-10-19 13:49:33'),
(179, 'ABHISHEK CHAUHAN', 'abhishek.chauhan13@hdfcbank.com', '2023-10-19 13:56:55', '$2y$10$jk4hecnlOQdBprjCNCyys.DHxYJEEca70qbTvAUkYV.NCDp4TEV3m', NULL, 0, 1, 'lDtXjKp9tokeB027YmDcmETvr35V9RA9ISbDyHXmDkIKBhOGavc5Dwi5UQksQ0V4', 'A52670', '', '', NULL, 'Satara', '', '', '', 45, NULL, '', '2023-10-19 13:56:55', '2023-10-19 13:56:55'),
(180, 'Akanksha', 'akankshabh27@gmail.com', '2023-10-19 13:57:16', '$2y$10$Z331ZmYVTX8Ke4qKKadn.uCzb6KxRPzAXyPbXxa6yBf16G53gXrEG', NULL, 0, 1, '3J4nqxAyoLMSBGsP1u38hPu9WrtWlygc0BrodkuXQoMufLOZli1UQ7LgNBDZfHQw', NULL, '', '', 'ILP', 'Pune', '', '', '', 0, 'LTIMindtree', '', '2023-10-19 13:57:16', '2023-10-19 13:57:16'),
(181, 'Shreyoni Singharoy', 'shreyoni.sr@gmail.com', '2023-10-19 13:57:28', '$2y$10$iapddmCmLeMmvpHHImq09emZibJjdboLdFc8tmg71nypx2URZzBRC', NULL, 0, 1, 'cGBVHq52PldA2L2atoQaR32pN7boswKqrU4Z85DH38p0MbaTrYfY7RvWpGozthOj', NULL, '', '', 'Design', 'Kolkata', '', '', '', 0, 'LTIMindtree', '', '2023-10-19 13:57:28', '2023-10-19 13:57:28'),
(182, 'Nikita Fernandes', 'nikita.fernandes@hdfcbank.com', '2023-10-19 14:47:24', '$2y$10$mZuUALRJ7RgOSfmoo4QeS.k3rV1ponYRXVqijO7.GBK0jk2iC4hby', NULL, 0, 1, 'XSK2SOOFIS9zOkpTa3DBrhDh8IbOavFTJbM8M00yrzDLa8ggCkgLteYnnU7uGUwM', 'N17677', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-19 14:47:24', '2023-10-19 14:47:24'),
(183, 'TAMOJIT ROY', 'ROYTAMOJIT85@GMAIL.COM', '2023-10-19 15:09:35', '$2y$10$PbT3h5ioQCOhw8Q07ieuieVTDKwpmv7dkJwQ.RyYzzqhHK8hSsDFm', NULL, 0, 1, 'tEUBUIav6Rgvp1SJbYnZKjBtNwOtu11uZNEOJmXv5iyLmm3rBgglYPOacF3PUzve', 'T2630', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-10-19 15:09:35', '2023-10-19 15:09:35'),
(184, 'Vinita Bhor', 'Gurukul@88.pictures', '2023-10-19 15:24:43', '$2y$10$ztI5x2Lr5KN..Ik0lnT5Z.poqH7SWGnvSJcOUhFQebOANX1plPz8S', NULL, 0, 1, 'ujV45QXPqWsFA1iNZ4VyB0huvumoXgUpFRfGARgmvVeUa5IeM0S4rXgtqx6ET9tP', NULL, '', '', 'Human Resources', 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:ae0445c9-918f-568d-996f-b8f6e9116e78?invite=true&promoId=XXTQGVMK&mv=other', '', '', 38, NULL, '', '2023-10-19 15:24:43', '2023-10-31 12:20:22'),
(185, 'Shamik Chatterjee', 'shamikc417@gmail.com', '2023-10-19 15:25:13', '$2y$10$vXtYU8wgu1Y2qLScfBlKWeUqNE5L46WZKNPNLFGvZ.VIuBJrBFsF6', NULL, 0, 1, 'fEWAyH1pTnPyUVhyBCY12EdECOFDNwmg1Igr6GeqkUHIIrlKt8KIqb8OBvg5BXSN', 'S44291', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-19 15:25:13', '2023-10-19 15:25:13'),
(186, 'Ankur Baruah', 'ankur.baruah@hcl.com', '2023-10-19 16:09:11', '$2y$10$KB6rGEuINKzegh.e7NPdHuwWAQDxbSKMkHSKBxACtdzyKSQvrjca6', NULL, 0, 1, 'x5zlBRmbQm1kioxeLi7EuPHoPYlTvEeHjhmCeWhS5I8l6EoNKxxUNj9r7U9kiZP6', NULL, '', '', 'DFS', 'Nagpur', '', '', '', 9, NULL, '', '2023-10-19 16:09:11', '2023-10-19 16:09:11'),
(187, 'Amit Kumar Sharma', 'amitiiebm@gmail.com', '2023-10-19 19:52:07', '$2y$10$HEeyw6qTwKnQz12FxJvVc.Q9252xU8YpgBmRxRds4nKhZmNUzSnwW', NULL, 0, 1, 'elJG1kQgpxbBy5MUVsGrVQO6VtWLvL3lH4XxCPFR4Bnc17EhPDwUSui9271ISwAQ', 'A23789', '', '', NULL, 'Alwar', '', '', '', 45, NULL, '', '2023-10-19 19:52:07', '2023-10-19 19:52:07'),
(188, 'Rik Sinha', 'rik.sinha@hcl.com', '2023-10-19 21:19:02', '$2y$10$JHUm8OVsO52s4n6M3s1Ya.WhCdrCrjoL1elh7eJ0dyYloQKcJ0liG', NULL, 0, 1, 'ULEILkrmWXLtRIbSPiO9GhudLsKVlXFNTFXfJ8RLAdla53lJaBenEqrV6tjfQUE4', NULL, '', '', 'Cyber', 'Zetland', '', '', '', 9, NULL, '', '2023-10-19 21:19:02', '2023-10-19 21:19:02'),
(189, 'Nagendra Haladipura Ganapati', 'nagendra.haladipur@gmail.com', '2023-10-20 10:46:53', '$2y$10$Cc/A6WGr6oY8IPFs8xGpneMdG4nS9U8p6a9QfnAoXVCnbhoERsd2i', NULL, 0, 1, 'Zes9ev5pz0O1emKgKOY9vRHD3zXkDv52kAYsj5mPEAExSN8DXaYONQbcLdK0Da20', 'N0423', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-10-20 10:46:53', '2023-10-20 10:46:53'),
(190, 'Raghav', 'raghavtalwar19@hmail.com', '2023-10-20 11:55:34', '$2y$10$8uNnOueYNfnVZKJTw8VQh.V8VhaMAW7v7h7j.KDCkhf0.KPFuGxWq', NULL, 0, 1, 'NoJ0xudC7ofhb9P0KktJ5FjQJF56E3A4eufoCWPA3k3h6pqBsfCJmuBfQkNyMe35', 'R23898', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-20 11:55:34', '2023-10-20 11:55:34'),
(191, 'PranayKumar Sanjay Indrajeet', 'indrajeet.pranay1@gmail.com', '2023-10-20 12:50:50', '$2y$10$r6geUUVlNjkcmwWd.KSkw.EvjbZVb1CqnpliB987oZK34EwfqOBFC', NULL, 0, 1, 'CQDLrSmearHuuh7EYomRksaC8lkKSlD9bclqFWuWz3sUagUx4ybJwUw0fvA9Dp13', 'P27343', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-20 12:50:50', '2023-10-20 12:50:50'),
(192, 'Deepali Choudhari', 'dchoudhari16@gmail.com', '2023-10-20 16:54:53', '$2y$10$B4Nww3OQ472H/KrXoWXbe.MH1sNE5rj3FHTQ1EcLvd2ByAL8JGSSe', NULL, 0, 1, 'j52HYbvptBMLJooijVfJcLs6sxdWyxH1fqTksg08Id37x60A1WWsSti2sDUOpdMs', 'D16616', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-20 16:54:53', '2023-10-20 16:54:53');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `isdelete`, `status`, `token`, `employe_id`, `office_email`, `mobile`, `department`, `city`, `email_header`, `zoom_teams_background`, `linkedin_cover`, `company_id`, `company_name`, `location`, `created_at`, `updated_at`) VALUES
(193, 'Pravin Ghanvat', 'pravin.ghanvat@societytea.com', '2023-10-20 17:00:47', '$2y$10$zv5Risdj.X1v5b0fkgSrBeVWNE.cAlIkpxf38ZNoQ/HOSiqlny/mq', NULL, 0, 1, 'eIdwjtB2haErqEpXFz9S8fHqS1p2AhFPrmw6qjuB2uEckzVFwSjdQuleLxRr3rWl', NULL, '', '', 'Sales & Marketing', 'Mumbai', '', '', '', 35, NULL, '', '2023-10-20 17:00:47', '2023-10-20 17:00:47'),
(194, 'KETAN SHAMKANT PAWAR', 'ketanpawar29@gmail.com', '2023-10-20 17:00:48', '$2y$10$gZXwEAEvhOTQYhpXCW9wo./hm4tv7JxTn45ctPar/IO/b6Zs20NeK', NULL, 0, 1, 'xxwlaFGNowRHS8rqSfjovKMsz5eXrsZqku8I6AAXLWnyVDKJlNZ4xV1rf3PqwLKS', NULL, '', '', 'ACCOUNTS', 'Kandivali West', '', '', '', 35, NULL, '', '2023-10-20 17:00:48', '2023-10-20 17:00:48'),
(195, 'Nidhi Agarwal', 'nidhiagarwal301@gmail.com', '2023-10-21 00:44:45', '$2y$10$V9c3OelBUGIxISWexsSQkOrJJjSoc6jBvKdKljqlhnuonxhwng90K', NULL, 0, 1, 'HMCT1YJtAiseID0DLpvKewFvWGwQ2GmswEr0S68PJMjLbAQt0m6dpfRt5Y3qtO2s', 'N19266', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:5a7e2560-3459-41c5-9031-7310ccfc7821?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:c51f50e5-d32e-4c35-b027-ecee5ea328ff?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:6c2f30e7-84dd-4e77-8b00-0bed31db1faa?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-21 00:44:45', '2023-11-07 22:07:41'),
(196, 'Dhruv pawan', 'dhruvpwn@gmail.com', '2023-10-21 00:51:14', '$2y$10$b48dAUUB5Xwvdo1mdHFjpuXnl5alSNBiz2royXxp9Qk9YXm3cCcZC', NULL, 0, 1, 'GC6HCPO1roV0RMWzfLBKNAgl8vt6WSJ4l0XdvuFc4deiEYHXxf7hwzJEt37K23la', 'D16057', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:629e8955-d2f9-4c0d-a664-1dfef9073414?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:7b52c84b-674f-4498-b94b-86114bfc18cb?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:01b1391a-7557-4bb3-9eed-9076ae0046c8?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-21 00:51:14', '2023-11-07 21:58:59'),
(197, 'Ashutosh Singh', 'ashutosh.pathania@gmail.com', '2023-10-21 15:53:11', '$2y$10$U.YYfvg5J9jt0BZUlJAfoOkc7GE8xVCWhD7zREFkqORkHVlS4dazy', NULL, 0, 1, 'co3egB1jq85KVBjWGfFocnUKKFx27pjsOlm7eA9cnqOJuUvyI3xLPlFeQTrYRFig', 'A51216', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f8e93ff8-d1a6-4d3a-a3a6-9ea14991ca64?promoid=Y69SGM5H&mv=other', '', '', 45, NULL, '', '2023-10-21 15:53:11', '2023-11-07 15:03:23'),
(198, 'Ravikumar Kajipuram', 'ravikajipuram@gmail.com', '2023-10-22 16:33:10', '$2y$10$GtXc8EzXP6nxnzPLtAZFDula0MJ3VEejVCGEGyo1v14EkfRfqI8Jm', NULL, 0, 1, 'JNGkD61zJqKSG90b1wDXqT1X0rbo3aTEENgXNs6FSRloMeNRA9VRFcdKT7Uva5lc', NULL, '', '', 'Look/Surfacing', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:643f3dbf-608c-4631-b3bf-2cf2cb7f1e27', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:75a2a27f-8513-4c88-80c9-288488641289', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:80702099-064e-494d-97a7-72f9e24a5a66', 38, NULL, '', '2023-10-22 16:33:10', '2023-10-22 20:56:34'),
(199, 'Anup Nagle', 'anup.sn@gmail.com', '2023-10-24 14:09:37', '$2y$10$L6jcqfCCte4PzO3Me5N8ze4L3wlrFokk/S9myC1xgdj3HKeb2w/Ca', NULL, 0, 1, 'easT42U0fw0yTG2NJHKTSbgyUGRbGrAXU3760VO8WjSRwy9Lu7hlTkEZaINWc1Du', 'A4201', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:d89aade2-2f54-41bb-8e61-b8e947e65243', '', '', 45, NULL, '', '2023-10-24 14:09:37', '2023-10-24 19:20:18'),
(200, 'Avadhoot Sankpal', 'avsa@dneg.com', '2023-10-24 15:47:37', '$2y$10$2IE1E2MX1gwfPAZ7rFkoYuUB5vmWLnxQ9nCkbyqal1QEuvct61wKy', NULL, 0, 1, 'NtIegOnugMIP2MZY4IAA0qjgAaEumvOti6fydN0JQaCkmKVbpn2sGjmlfSc8ZUMs', NULL, '', '', 'Human Resources', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:6745e700-8091-4692-80ac-47f9c423bb9a?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:d1fc3db2-a24e-4e6c-b4c7-85d2a260efdc?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:6f4a6d65-8ee1-442a-b0fd-4a96dc04ecd3?promoid=Y69SGM5H&mv=other', 0, 'DNEG', '', '2023-10-24 15:47:37', '2023-11-01 23:17:31'),
(201, 'Aamir Aziz Khan', 'aamir.khan4@hdfcbank.com', '2023-10-25 12:07:45', '$2y$10$GfqYzZ9IwpP2RKGc.tlSc.WM1E9lp1sp/MKZEdW2dJvYta9UE1Gey', NULL, 0, 1, 'bhn6aoajR0oTOV0yL7J2Ytt926incbEe0XFoAVAiNmGWGzg4mBT1aaqiTbDswz6k', 'A50351', '', '', NULL, 'Ludhiana', '', '', '', 45, NULL, '', '2023-10-25 12:07:45', '2023-10-25 12:07:45'),
(202, 'Varshitha', 'Vacchu1430@gmail.com', '2023-10-25 14:38:48', '$2y$10$WZlk.qbjwsuKkv1izP0FQul7S0qmIx8o1iPY63bFAcYcr.cViPW1m', NULL, 0, 1, 'AHfkzxQSn8HTXJDwongprxQetjtiJmHrUo3isQt7Lh4Q3lpFiTUnk3BV4fJ1Btpo', 'V21276', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 14:38:48', '2023-10-25 14:38:48'),
(203, 'Sadiya Firdose', 'sadiya.shaik133@gmail.com', '2023-10-25 14:40:05', '$2y$10$HnYLI3/QYo7X1b/pyNtcpeCDZFq5BkCEb2z5jHDBOjGxax9nCux.2', NULL, 0, 1, 'goCbSQRIIY3Ax0yCEveH9UAOCvqRBz6TCcLpjGelFBn9i5crjZv8kIGrQS1EWhGn', '269194', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 14:40:05', '2023-10-25 14:40:05'),
(204, 'Samson Daniel M', 'SAMDANI1027@GMAIL.COM', '2023-10-25 14:41:27', '$2y$10$96ezoo5grk9u0Co6qWQlyOdDBydb/I9hj/DvI27gwvxgj.DecTHz.', NULL, 0, 1, 'vh5kRIkz64AjyYWbm0shqH9Vma6PrtVFskBZ9hG5JKAhWYT00eA1xGC20zhrcy1R', 'S67980', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 14:41:27', '2023-10-25 14:41:27'),
(205, 'Dhanalakshmi.R', 'Dhanalakahsmi.r067@gmail.com', '2023-10-25 14:45:04', '$2y$10$PkTFNWPGhhTPnN0yGIbF1ORmeaEnjCRmiy.KywBsQ9ocvYXVGdJ/6', NULL, 0, 1, 'CjM4PElsnKYlG0f8IUa6iixESMI6LRnknejIs8GKAdhWKkKt1VAPhDBMYsL4UTmf', 'D13742', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 14:45:04', '2023-10-25 14:45:04'),
(206, 'Tara', 'sentar7@gmail.com', '2023-10-25 18:23:53', '$2y$10$BMauYf/D7gSfaUSaY2BE..NQyQXlPicKJYqvm1phvfgkEm.iN0pvG', NULL, 0, 1, 'ANG4PyRyjkSdmQzwyqg5JBPyLGs17dsbG6C6MF6qey0jIDGqpxBZYjmCGBc3Cd4Q', 'T2981', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-25 18:23:53', '2023-10-25 18:23:53'),
(207, 'Rohit Albert Tauro', 'rohit.tauro@hdfcbank.com', '2023-10-25 19:03:38', '$2y$10$5CR.pyfs2YqUS.3JKLhXAuPPUFJhaB1T9AWM93Y/q3OK22L91jPMW', NULL, 0, 1, 'rSXQGbvOTWKRwsRsuPJsdRcHttMsM57eWlU6Aok70vvlSVsLTgtii2dxI2ltpD4e', 'R26555', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:ce5f5a8c-b80e-41dd-b89c-b94ab146af7c?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:ec0dce7a-b8ee-4e06-a46f-d500fd603e59?promoid=Y69SGM5H&mv=other', '', 45, NULL, '', '2023-10-25 19:03:38', '2023-11-15 14:23:28'),
(208, 'Patharalapalle Pujitha', 'pujitha236@gamil.com', '2023-10-25 19:34:36', '$2y$10$GxIsoYfG15UJuqk300O7C.NeFYKTNEJganevCDBY10L5JJkH9NeUG', NULL, 0, 1, '2o8To8ZiQVUoTXEOT9l2yPBx4sfWBt7in1W3IYlr6GDPPvJDkj1QvYS2lmFM3uni', 'p22415', '', '', NULL, 'cochin', '', '', '', 45, NULL, '', '2023-10-25 19:34:36', '2023-10-25 19:34:36'),
(209, 'patharalapalle Pujitha', 'pujithap236@gmail.com', '2023-10-25 19:36:06', '$2y$10$p.J.MdFU2.B513bPosQfae0/ZIzAylXSw502f3yyh203kx2O/NHSO', NULL, 0, 1, 'VpHBfrfu6ggXUfjCVUKKIStrL90N6YqbPgSstf3teu58CGxZGIHCIOJVolYSpUdX', 'p22415', '', '', NULL, 'cochin', '', '', '', 45, NULL, '', '2023-10-25 19:36:06', '2023-10-25 19:36:06'),
(210, 'Chandraprabha', 'Chanduprabha291@gmail.com', '2023-10-25 19:45:03', '$2y$10$Ifqab/vz/eZf75Pjkcy6pec13692L0zEznGloy6sGQay/FSGb9GHO', NULL, 0, 1, 'TicuVKAnQaaONPEDqLeC2H3gVFRatbAlUDeknD1eW9T5COGLztMZP6KYqPZMSR9C', 'C1911', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 19:45:03', '2023-10-25 19:45:03'),
(211, 'DEEPTHI.S', 'deepthi.s.199@gmail.com', '2023-10-25 19:46:56', '$2y$10$eJSdpob7ukeY/RTD3TEi9O4ve0kD7omX3DUzD3YDHgp.tCtLjNSYm', NULL, 0, 1, 'ZwIiPgfx0tEOGejCnvZ8YflwLYMndkJXGcThWHuBIv3vjrR4hm2FoQYu6CdVFlNb', 'D16695', '', '', NULL, 'Ernakulam', '', '', '', 45, NULL, '', '2023-10-25 19:46:56', '2023-10-25 19:46:56'),
(212, 'China Rajanna Gidla', 'rajannag848@gmail.com', '2023-10-25 19:49:04', '$2y$10$EaqJxYI4WM5SYAqZVajJHO7NBergQIF8evPVzzh3U/4uufDB3GBIe', NULL, 0, 1, 'vCbnuuWlNhjJxtVIMF9LFc7M894dL6qtFlviohFwqQ3X79yu6oOVppfc2PHAtqNh', 'c5028', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 19:49:04', '2023-10-25 19:49:04'),
(213, 'Waseem Akthar', 'akthaw4u@gmail.com', '2023-10-25 19:57:19', '$2y$10$ksDilGiy5tB0U5OY/Kt2jeb2ekUATdcNcIiI5L8.cAN9N2uOKZfGa', NULL, 0, 1, '1Rz6naDjZTRRjmpm9XCVsoUHSIQ9uzkRQQdegxDapmxoJ2SCMLnlbLZDnryBSAF0', 'W0186', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 19:57:19', '2023-10-25 19:57:19'),
(214, 'Ramya M', 'write2ramyamohan@gmail.com', '2023-10-25 19:58:23', '$2y$10$fhwsJ6h3my7gwoc6ahqgreae/WgDuVqOKeMceIRnDWAnSG5sZD7/u', NULL, 0, 1, '4dpAwb1WsgcvbLKRzJFVAiMnZlw7A6wZtC9yDoFnpw7Tk77tWIeCJDbWKmBu75Cy', 'R1957', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-25 19:58:23', '2023-10-25 19:58:23'),
(215, 'Shaik Salman', 'Salmanraaj98@gmail.com', '2023-10-25 20:05:09', '$2y$10$OnWCqOrjRBGAKvK0ZcIELOpsk3BkFUCWHMLv8ytMWz.Ux.y7Epq5a', NULL, 0, 1, 'Jk8nmu3S5AoFcM3LifacscCxW9maAxEL88W9AmY4C3ySvpCMvJvpJHeI4GGjZKVm', NULL, '', '', 'PBK', 'Bangalore', '', '', '', 0, 'HDFC Bank LTD', '', '2023-10-25 20:05:09', '2023-10-25 20:05:09'),
(216, 'Prabha V', 'Prabha.v1@hdfcbank.com', '2023-10-25 20:30:59', '$2y$10$tmlt.a9fOJrjZMM1ZGlYdezjsOufRbmbTwCSVFjHV8ZBUkpZrXara', NULL, 0, 1, '3l4gyO0iGf4NFtPTysCHCjkwF9b6KNFtg4X71gRxPV3O4zV3FwoZkg3ML2agg902', 'P17505', '', '', NULL, 'chennai', '', '', '', 45, NULL, '', '2023-10-25 20:30:59', '2023-10-25 20:30:59'),
(217, 'ceemala chandra shekar', 'chandu12323@gmail.com', '2023-10-26 11:01:22', '$2y$10$LyAH3xuZjqDJQh7RqxKv/eTgJ02gGFJeLENDf1V/w5huNdawguDvO', NULL, 0, 1, 'QWtsYe3KKRiRbasZo78quMbxEGwnlHiyeoYOgdRxaHnlDCsQUr9A0OFTVjC2LAnZ', 'C5346', '', '', NULL, 'HYD', '', 'chandu12323', '', 45, NULL, '', '2023-10-26 11:01:22', '2023-10-26 11:02:23'),
(218, 'DEEPAK  KUMAR', 'Deepak.kumar252@hdfcbank.com', '2023-10-26 11:04:39', '$2y$10$HnKb7euPD7G8Tr0G.NFJlufLStYhpbvALwaS/ywxvRHA4RBgFrOg6', NULL, 0, 1, 'lMEaWh74J4Do3wlP5jhghDdCR9Rje4AYiigFJT1NA1FWlsbvmwasrz2wJtfsazIC', 'D15724', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:04:39', '2023-10-26 11:04:39'),
(219, 'Kranthi Kumar Dhulipalla', 'kranthi.d@hdfcbank.com', '2023-10-26 11:09:52', '$2y$10$6yF6o45mS4RVhGek.OfDceAhQX1uWb2P4ikMBoXWf3FKMhi.9AdAy', NULL, 0, 1, 'Qu0ZvoA0OrHHHiJLvphvVsMvQ0fBkpLIge0o7blR4EWMMqBQRpgha1B1YL3vUmgy', 'K16595', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:09:52', '2023-10-26 11:09:52'),
(220, 'Sneha Manuka', 'info.snehayadav0203@gmail.com', '2023-10-26 11:18:05', '$2y$10$zEK4ucUfcpYnn0GdVs3xIOLi7iP35Xr0BgB.8kFMAXRMHXnu9G5K.', NULL, 0, 1, '0aM54iTSksYfRQQFDu3KEmCM8KImIaFOvgM00F52mXjKPRBxZ7se6iU7iTWVTN8F', 's55599', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:18:05', '2023-10-26 11:18:05'),
(221, 'Ramya', 'ramparthi372@gmail.com', '2023-10-26 11:21:33', '$2y$10$H8NtttWrQs/pMlUc4IDigOn4KHJ2awKS4HH8sZd5OdNKaDVh8FV.u', NULL, 0, 1, 'CWZzcqQ9wGG3dvaPSPBWKKldA1v9t5UIUU6zVuUGn45xiYeORt8twZzt5vqhGmIK', 'R15018', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:21:33', '2023-10-26 11:21:33'),
(222, 'Bandoja Lavanya', 'bandoja.lavanya@gmail.com', '2023-10-26 11:21:46', '$2y$10$36/5.xw2kaaVfB59mKsBoeZsFtt7WKIPyN/rlLowa13Q94R6PSH2W', NULL, 0, 1, 'CmuZqdPGgxy1s429HBynROp4ukPmTPJaQbiqRkBGVW9JsDAK9xGEcRWiFi1xyZ8Z', 'B4810', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:21:46', '2023-10-26 11:21:46'),
(223, 'Ritu Raj Singh', 'ritumishra336@gmail.com', '2023-10-26 11:23:29', '$2y$10$AFu8pD15biDQimSWw/orfOIKYir7IcergBa9fXNriKdRRoiGfT3Qq', NULL, 0, 1, 'W36pmQLoifzlq39U1sM5MQsRb13mBa71d1PLx9iMSRrEQKFi6qF82dE7djKwVnpp', 'R31936', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:23:29', '2023-10-26 11:23:29'),
(224, 'Sneha Manuka', 'manukasneha55555@gmail.com', '2023-10-26 11:26:10', '$2y$10$bFEUs6surMiq3lbs5ptHZeM6x/DOJCrGk9sr6gxMQFuwuQutjidfW', NULL, 0, 1, 'vcjkf2jSgdemQ25YEUElK6mj8zbiRwlPGDekCu124AjQXV5ZhV3804CdStDAQpe5', 'S55599', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 11:26:10', '2023-10-26 11:26:10'),
(225, 'P. RAMA JAYADEV', 'ramajayadev.pulapadathil@hdfcbank.com', '2023-10-26 12:29:34', '$2y$10$vh7sv2Fi0vB4CHL8m.Lc7eZj0RnjWA9Jd03xC0qKD8xQq7eEX.lLi', NULL, 0, 1, 'IBKrAy3tnU3oNphYbMTbdqqv7ND5te2vVNgobdLBYacopKxKkCQB0BKo5kd078Nu', 'R29436', '', '', NULL, 'HYDERABAD', '', '', '', 45, NULL, '', '2023-10-26 12:29:34', '2023-10-26 12:29:34'),
(226, 'J S Kamala', 'jskamala2412@gmail.com', '2023-10-26 12:42:01', '$2y$10$t5EDb8nB1haFuy87qQ8l0eg.0C78NmhP3TIMfPtktcEYYSQM7ux/6', NULL, 0, 1, 'mGyU8Eg0ZNmcadP7tWbbvxjuo04RvPvgl39leipMarBtduGHkVINwg4RfPLMMNi4', 'K14356', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 12:42:01', '2023-10-26 12:42:01'),
(227, 'Shubham Sharma', 'shubham.sharma65@hdfcbank.com', '2023-10-26 13:14:16', '$2y$10$l3cgsRwF3ogJm6SehTHSguq1S8ekqONtAAZCO4fxwFPY2gTvySlZm', NULL, 0, 1, 'iJO8Dkd3hkQoeeZmjm3VdFOV4VOVLGqUDqKf0H70n3osizt5MSbske2KKeFFE6Q6', 'S60187', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 13:14:16', '2023-10-26 13:14:16'),
(228, 'SUVAM', 'shuvamshakya9@gmail.com', '2023-10-26 17:24:23', '$2y$10$/kBnVwUc/2wDLPRiXT5ZPeqIDaraDS5Mh0ewXyHH7sLbl0LGa9nmO', NULL, 0, 1, '2DxGTCqVffOyLtuOBBKeX4mZQxiX6ir6TIRcCYpOv2Y8X4uapMD3QwFSFBkribHV', NULL, '', '', 'SM', 'PUNE', '', '', '', 43, NULL, '', '2023-10-26 17:24:23', '2023-10-26 17:24:23'),
(229, 'Neha Nakhwa', 'neha_nakhwa@yahoo.com', '2023-10-26 17:25:02', '$2y$10$ODufbVO.TME4EU0is0UQxuQSk5RVJ8evAQ9UzUZ/.iqWtowoTklGG', NULL, 0, 1, 'rnqyXQCCJGkSuOxXhcNdRr7XrlSMN3Yb9O3RbAm5FR6ArvRJICzmfNhfRJuB27Af', 'N9556', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:25:02', '2023-10-26 17:25:02'),
(230, 'MANISH MISHRA', 'mishra.manish1212@gmail.com', '2023-10-26 17:26:16', '$2y$10$IGbKRjjggM3/sC0/LNBX9e8nLRhjwFfEIX5.jRiilFFHgxbm.FC8e', NULL, 0, 1, 'GhLpOhfzmci1maskcYATE0tyxfTedW5AjE29NJO8R5HBmasqLFHaTn4X7hnpV153', 'M23929', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-26 17:26:16', '2023-10-26 17:26:16'),
(231, 'GANESH DHODLA', 'DODLAGANESH1993@GAMIL.COM', '2023-10-26 17:27:06', '$2y$10$opC8a1x5nQt9ynmf302Jv.t.6CJKtfroJILyiKHhkLvyyL42zqJHW', NULL, 0, 1, 'AqEtLF5kuT7X9GGtSLvBTh1jlYKTEC67ip33xrjxBHhlVvxnv9pIw9u5bPNo36Lo', 'G9822', '', '', NULL, 'HYDERABAD', '', '', '', 45, NULL, '', '2023-10-26 17:27:06', '2023-10-26 17:27:06'),
(232, 'vipin kumar solanki', 'vipinsol@gmail.com', '2023-10-26 17:27:08', '$2y$10$o1APIBuUPvTe96vHAk4L2OER8YdvA39W/JpU47dCJ1bZldMASAnfO', NULL, 0, 1, 'LJug4GrPimdRs2r8rJMHB4jTAQwusv9bbsJit9bWXDpnzhYeMwPNrXmEj38pBG34', NULL, '', '', 'Technolgy', 'Mumbai', '', '', '', 43, NULL, '', '2023-10-26 17:27:08', '2023-10-26 17:27:08'),
(233, 'Vanita Khatri', 'vanitakhatri88@gmail.com', '2023-10-26 17:27:12', '$2y$10$jcCO7QYdpphDZDCU829VIOrJNV/1HY49gkZq11lvYZPtbDgRJArLW', NULL, 0, 1, 'vN9yx3nL5AKLta10YUzPXs0mLwgEIE5NfmRkqAzkAD0XYboZzTAqLNXo53Fh7DoW', 'V12531', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:27:12', '2023-10-26 17:27:12'),
(234, 'Vivek', 'vivekasurve@gmail.com', '2023-10-26 17:28:59', '$2y$10$8cO6isRaJBs5CWUMIJoKDO/t1Srj5ezrEFr4EhkP7.M0zhFvhRn52', NULL, 0, 1, 'A7DTnYw0DqVxhVEb2p3RxCywNrJIh7eecPVvAC6kStTlPSg1oFuO1EIMzSQKF3MY', 'v19156', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:28:59', '2023-10-26 17:28:59'),
(235, 'Jagdish Parmar', 'Jagdish.rulzz@gmail.com', '2023-10-26 17:29:51', '$2y$10$ag30ChT0.3d.Lms6XcjDsOVlO5.nUUcwRXIq8FZxcQT88L9P2v4e2', NULL, 0, 1, 'ndgxU4m0VtIEjTGMNNfX2PRMOmCcBzO9gPlRmbHzLizMI8j9b2UQY6Pq5eTrm8e9', NULL, '', '', 'Banca', 'Mumbai', '', '', '', 43, NULL, '', '2023-10-26 17:29:51', '2023-10-26 17:29:51'),
(236, 'Akash Ranjane', 'akash.ranjane4952@gmail.com', '2023-10-26 17:31:56', '$2y$10$bbf3YfcCAsS.mMlluprQFeaast/Afl0gG6u5/EPm6JjzF9CIXWDDa', NULL, 0, 1, 'H00vsq8aAis9IsIAL5r1Am1rpLJfM1tEEBy0uYX3YMfKkRBs7HssTpqQNCPcwOCL', NULL, '', '', 'claims', 'mumbai', '', '', '', 43, NULL, '', '2023-10-26 17:31:56', '2023-10-26 17:31:56'),
(237, 'Manasa S N', 'manasanagraj54@gmail.com', '2023-10-26 17:32:35', '$2y$10$RdoQPEKyR9YEYzlx/hgM6O9nmAJq9IsNgf9H1lQz48qPtqICt2bj.', NULL, 0, 1, '3AnjhY1ib6K3GaWkc8pXShOwDCu8eL19ke2uzEXYFGf4vSkk4xJlR83T9kqdS4Jo', 'M26282', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:32:35', '2023-10-26 17:32:35'),
(238, 'Barkha Pradhan', 'barkhap041@gmail.com', '2023-10-26 17:32:37', '$2y$10$rXO6e1No.0HvMDVnDICzkeFPa6HvmUrJbXRPJWdhHoAxvzV/rndia', NULL, 0, 1, 'Gvl7h8Lm1knCAjqA6Ml0aY31tN5pFYTNHBMXqtPwsperM5zb8kmCuxwAAg5dZgbW', NULL, '', '', 'outsystems', 'mumbai', '', '', '', 43, NULL, '', '2023-10-26 17:32:37', '2023-10-26 17:32:37'),
(239, 'Nita R Chipkar', 'nitarchipkar@relianceada.com', '2023-10-26 17:33:23', '$2y$10$XBSFtaeufNd8wnb3O2XUTOTrYiV4CDPRnJ7OQeE4n7VbccM3nnZwG', NULL, 0, 1, 'rG9vhkyZ3zaeq3jnkgNuVfnCftHl1zdUHlhDAtjLvekKGulh02YRVcJ1LZDVCvuZ', NULL, '', '', 'Training', 'Mumbai', '', '', '', 43, NULL, '', '2023-10-26 17:33:23', '2023-10-26 17:33:23'),
(240, 'SHARON S', 'sharons.95@outlook.com', '2023-10-26 17:34:19', '$2y$10$vHwjIGWO4g/H1Nhi443HU.1h.AiubeHsyXUAW7GpPTdPR6pCBD/ry', NULL, 0, 1, '6mOoerMCwvKRMEyqN8H1SE57vcMzIsiHUm2pgGbETihmqIGuBPQctm3zsYuLZAN7', 'S38736', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-26 17:34:19', '2023-10-26 17:34:19'),
(241, 'ANUP KUMAR SHARMA', 'delanup@gmail.com', '2023-10-26 17:35:18', '$2y$10$XgfjlRY2au95I6HEcKibb.ZXVyH43/.XriXsfxtnkWwEigejyJLCG', NULL, 0, 1, 'PHllw8qoH0OrV5FZSpVyY8eqlZuqkfBMPwG0A8725DL1un1Z410nOHjagGlqncUq', NULL, '', '', 'Channel Development', 'Ludhiana', '', '', '', 43, NULL, '', '2023-10-26 17:35:18', '2023-10-26 17:35:18'),
(242, 'Ankan Sengupta', 'ankanb4u@gmail.com', '2023-10-26 17:39:50', '$2y$10$u0AQAPTKZuvd1ytlgDZgje73KW6rbc0gjUuQRPh8.wj/amqGTOuT2', NULL, 0, 1, 'opMsqnvvyRToTz1xWzfuVWGATJW3Cj9e4rRL0oF9NjoqeUMjDnSzhYmO9vZRgSqv', 'A42895', '', '', NULL, 'Bangalore', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:ff8bebe1-314c-43f5-9be6-a3f2d5b3196c?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:80d8863c-284d-42dd-9755-d72734254df4?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:579e24d9-c460-4958-bcf7-272ad2c2a458?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-26 17:39:50', '2023-10-26 18:59:46'),
(243, 'Pandiarajan', 'pandiarajanpsy@gmail.com', '2023-10-26 17:40:04', '$2y$10$0p22oK3JkvH.uuWSGWQds.ssPrYXCrR8okGSQc/OuUwwPXfbkT3VO', NULL, 0, 1, 'pxZqaFVseDllXRLRZkOblmgsDlISOgkMNE5KZ3IdV9BpxfmsyTPd7YWOSzLpauPE', 'P21622', '', '', NULL, 'Madurai', '', '', '', 45, NULL, '', '2023-10-26 17:40:04', '2023-10-26 17:40:04'),
(244, 'Esther Josephene', 'esther.josvine@yahoo.com', '2023-10-26 17:42:18', '$2y$10$9KU/SPq.0Gq2kuau22GApOOCEuHV2HxQJ/DxefPQNO/094wbvsR0e', NULL, 0, 1, 'zc3h15a56oPtDzUqoecx1HtT4yD1A9eie5EFsD26KlGfUMOIqbVJRuCK55iGh0gz', 'E0736', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-26 17:42:18', '2023-10-26 17:42:18'),
(245, 'Anil Gupta', 'gupta.anil2003@gmail.com', '2023-10-26 17:42:54', '$2y$10$cMBivi1Vr0oRLJhWQMEaoug9myPiW0pFegCAnyCm4HtCtaOJu3sy.', NULL, 0, 1, 'nCuzcj29MT5WhhVcE5QKa2cLY9P50Z5k04jJhNQhE5m9EruyEfysg6MwlX6hpYWJ', NULL, '', '', 'Training', 'Jaipur', '', '', '', 43, NULL, '', '2023-10-26 17:42:54', '2023-10-26 17:42:54'),
(246, 'Radhika Nagarajan', 'nrr_2k@yahoo.com', '2023-10-26 17:43:21', '$2y$10$z/AJ55KXrZAlEplWnGnJ.OmUjS.HmeCcr8j/./OCGeyWj36Pk3Lnu', NULL, 0, 1, 'LQSkPgi749xFMHZYnpTlF2kxgmoIY27czG5Vk3Kfw3KmZJe0jBQJdYewkaVYyVT5', 'R3641', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-26 17:43:21', '2023-10-26 17:43:21'),
(247, 'Diana Fernandes', 'dianafernandes1983@gmail.com', '2023-10-26 17:48:03', '$2y$10$4feidzUVUpcLDAjrRmm9tez695Ggoi59lbXOUE8OclmemWoQ8YgNu', NULL, 0, 1, 'kfDx8VL62Wzap8BQmMXYEaMQQCklux0Fg1uFxl8fd2cf2BuvzBxDL8eMuRY5Zlp7', 'D7878', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:48:03', '2023-10-26 17:55:08'),
(248, 'Satyadeepsinh Vaghela', 'satyadeepsinhvaghela@gmail.com', '2023-10-26 17:50:19', '$2y$10$.DnXWKxI119TbI/ZwO7IoeHl4eRQMjGIALjGXCtQ/PDZgkY0ykFdi', NULL, 0, 1, '02Az2MpwpZCNbE7D0u4ZcJsmN8lAvrlypngfo8Aw456nmdaLdNZppvsIZSM0fGC7', 'S37810', '', '', NULL, 'Rajkot', '', '', '', 45, NULL, '', '2023-10-26 17:50:19', '2023-10-26 17:50:19'),
(249, 'Twinkle Parwani', 'twinkleparwani18@gmail.com', '2023-10-26 17:52:15', '$2y$10$QcQK6atP4mOFLGkeqNpKCOhvioJnetvWhS6ZNIdNMPr00vWeRT4I2', NULL, 0, 1, 'ROGKThyLOvA394YWIITGYJdB75282wSK164YkCuOBE6oGuDch30FHjAp7pxylrQ5', 'T4901', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-26 17:52:15', '2023-10-26 17:52:15'),
(250, 'Rakhee Rohira', 'rakhee.rohira@relianceada.com', '2023-10-26 17:53:48', '$2y$10$mEA.d9eYYCMK5JCiMKYN3evZpuw8vOtXLYHd8GISpMV.BfSMJmYcW', NULL, 0, 1, 'LoaUJgt6xHvPTK6EOv6Mny4sEMOGJHKLwCqmLSoFcM2qfm4BIN7kjnViQ2vPvxjQ', NULL, '', '', 'Human Resources', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:30887636-b569-4c03-87cf-e2f4b6699ea7?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:ac31fe94-a245-4aed-bb30-a2606b7a7009?promoid=Y69SGM5H&mv=other', '', 43, NULL, '', '2023-10-26 17:53:48', '2023-11-19 00:45:56'),
(251, 'Aditya Wawre', 'adityawawre3.14@gmail.com', '2023-10-26 17:56:48', '$2y$10$yzLd1B3cCsC3sMBC6u7pyO4n3A6NAjOsLk9S3pxFwHHBA/SVwQ/46', NULL, 0, 1, 'eIi9R67hWnSFxdB3Eoda2dircFdxm8oG4Q5Bn8ypSzDMHBCnFe0uY51rdZzWe0rO', 'A50696', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-26 17:56:48', '2023-10-26 17:56:48'),
(252, 'Ayan Basu Majumder', 'ayanbasumajumder267@gmail.com', '2023-10-26 18:01:31', '$2y$10$KSHWPiiBc03gFkfYqLxtdOVtECTbgwWRxKRokpOAneBD.ZDapI7T2', NULL, 0, 1, 'CmVcVL0xF0xAGC5K1QojJv3JtKcvPMcRR5ZWEqnoqfIBK2IPnfNa7Y0HUnbWYS0Q', 'A29642', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-26 18:01:31', '2023-10-26 18:01:31'),
(253, 'Rutuja Lav Bhosale', 'rutulbhosale@gmail.com', '2023-10-26 18:01:47', '$2y$10$eNzMw.ktqCgWs4iBMGwmNOcI7lJsBbzsfM36GJwewB0.CZbANxp1K', NULL, 0, 1, 'UMw7BnBhbzpMtfnpKh996tlTdgElq21MvuFsxhl4MEqyTZ2yLV5SOqzxkb5OA65H', 'R31994', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:53f74fd0-d8a4-4b1c-9622-1c158fbd4af3?invite=true&promoid=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:1ac17638-51f6-431c-863d-bbc9ee416f6f?invite=true&promoid=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:8124b0c7-18f6-44b4-87a8-2c4aa34e7e3d?invite=true&promoid=XXTQGVMK&mv=other', 45, NULL, '', '2023-10-26 18:01:47', '2023-11-07 17:49:07'),
(254, 'Kyra Thakkar', 'kinnary.pithadia@relianceada.com', '2023-10-26 18:09:23', '$2y$10$t2Oh3RgXUf4m0RD81W7yjuxGkzzg8RitpgT37ySwsfA5.IIDVRra.', NULL, 0, 1, 'hmcwVxfPmC82IXsYqNIwaOLyNPtpsuarAvxtWqPuIjBBWGQryOFTklm0Ga6oqBIc', NULL, '', '', 'Human Resource', 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:b364f928-ce87-4518-a154-10b002d944f0?promoid=Y69SGM5H&mv=other', '', 43, NULL, '', '2023-10-26 18:09:23', '2023-11-17 20:07:45'),
(255, 'Chirag Trivedi', 'marmikctrivedi@gmail.com', '2023-10-26 18:34:16', '$2y$10$wNGHZYRmwpNrwdG84Csa0u1xusm6yyEMjLfr87yrhXajo6kQ./Flm', NULL, 0, 1, '4XYLQ1OzX4Wl1QBXkdhnfKOOE7HUbe5IomxUqeEEns6yeTtLQThQiYlj3HgjYx8y', 'C0631', '', '', NULL, 'Ahmedabad', '', '', '', 45, NULL, '', '2023-10-26 18:34:16', '2023-10-26 18:34:16'),
(256, 'Vikas Bind', 'Vikas.Bind@relianceada.com', '2023-10-26 18:40:43', '$2y$10$vf0g6MOIxzlx2phx9TZleeERjf6CuKirkFfroGt6j2y34ZR8Y4dL2', NULL, 0, 1, 'LhaScnZJAsT9OowpjVLBUCieENs7UN0FAm0lFbfzjd1XUMyP95bEfsClKco6lU2I', NULL, '', '', 'Finance', 'Airoli', '', '', '', 43, NULL, '', '2023-10-26 18:40:43', '2023-10-26 18:40:43'),
(257, 'Kirthiga Sekaran', 'vpskirthi@gmail.com', '2023-10-26 18:48:22', '$2y$10$7bQR/2Tg/dREPSW3mtNG7e8PvUB3JbanVLEFCogGchFe6CVS/z8Vm', NULL, 0, 1, 'u1Op21lVM2i79idk5AAaIPupbGlgujTm0AL3RaCYuXnMdHElCEOS0ImgmJeUgie6', 'K17885', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-26 18:48:22', '2023-10-26 18:48:22'),
(258, 'Ruma Bathula', 'ruma.bathula123@gmail.com', '2023-10-26 18:52:46', '$2y$10$nqWXMyFmVf07IoHK1WTW9OA/kcx0zuUuy3K5c156Db7/Xw8l08XcG', NULL, 0, 1, 'WFGkYY7A14hpGvJnLATWE0dBSPM7bGyCUw7Ui39I1ThS4rjs2FKSzehtLVuCHxXl', 'R31996', '', '', NULL, 'Mumbai', '', '', '', 45, 'HDFC Bank', '', '2023-10-26 18:52:46', '2023-10-26 18:52:46'),
(259, 'Swati Jaggi', 'Swati.Singhj@gmail.com', '2023-10-26 18:53:51', '$2y$10$BWzvMSFvRgAcd.4RgLDbIOZ.hdri4vQ7tNtdqgQnYXiEHo3Ao.zAu', NULL, 0, 1, 'abcPDKuFbQ8QjdM9hH2XkumoZbxmHuU7H3ZcYWsoGFpo7LvcKNnoeAsEI7KvmUNf', 'S30104', '', '', NULL, 'Chandigarh', '', '', '', 45, NULL, '', '2023-10-26 18:53:51', '2023-10-26 18:53:51'),
(260, 'sudarshan dute', 'sudarshan9134@gmail.com', '2023-10-26 19:01:37', '$2y$10$Ma7KA22w92VMdhV4k0kCt.2xhfiTNmEwef4yT28RTag2jBslRdIWS', NULL, 0, 1, '7OM9jVFZT0AtdUXh5piXrZZenzr0Vh2LK72WQ5iDRrr7Cua9UvVyL8BmDA6ZbHQj', 'S54939', '', '', NULL, 'Ahmed Nagar', '', '', '', 45, NULL, '', '2023-10-26 19:01:37', '2023-10-26 19:01:37'),
(261, 'Kartik Vaidya', 'kartikvaidya1009@gmail.com', '2023-10-26 19:36:22', '$2y$10$Mw4it.8YTBEoPW0wl0ysTuchgvZ4lIq3mzgmIyByZWpfH2BzSojO6', NULL, 0, 1, '2uQFf3tgVIA2HvoqmLPMtNOO9SsFee1zW4R4mS2OqRxILM9nMsrCcr1gaxOOTjFG', 'K10164', '', '', NULL, 'Aurangabad', '', '', '', 45, NULL, '', '2023-10-26 19:36:22', '2023-10-26 19:36:22'),
(262, 'Ganga Pandey', 'gangapandey80@gmail.com', '2023-10-26 20:06:25', '$2y$10$OIYyTFIoUsFNrhZJU/c3MeUSynwLcjrAHiGhxaUToPlwEKVDNK336', NULL, 0, 1, 'xEIuAZT9EiG2iMNmYRppkW1QiIFTS23BocPQS9dGsniI0JW4K1ppPCfJSZDZTuKa', 'G10580', '', '', NULL, 'Rudrapur', '', '', '', 45, NULL, '', '2023-10-26 20:06:25', '2023-10-26 20:06:25'),
(263, 'DIKSHA', 'DIK8888SHA@GMAIL.COM', '2023-10-27 00:47:57', '$2y$10$HdOXzooOvoYHiC97sgngBuno8Mpo61/ocCEuvEw52FQu1ZKo1qaim', NULL, 0, 1, 'Dnv1coTs9vf7D33ZgpN1WRC9NyX56Z2HJHP0Uy2HYQ5X8ehA8qNAlHEaOisEvyHZ', 'D12828', '', '', NULL, 'ALWAR', '', '', '', 45, NULL, '', '2023-10-27 00:47:57', '2023-10-27 00:47:57'),
(264, 'SAMRUDHA ANIL SHETH', 'ssamrudha@gmai.com', '2023-10-27 11:40:16', '$2y$10$VARBZ29jloQlbG8VBUXU4e.hmOh9HlZ41UiCJjrBM3NWS2PnnO34e', NULL, 0, 1, 'zJ1RQyLMULqfwOUNmruklHR3Bh34CqguD1qkHLzK4rTjC8X6qBX6MDnK0aGVTs0Y', 'S30951', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 11:40:16', '2023-10-27 11:40:16'),
(265, 'Tanuja Shastry', 'tanujarajiv@gmail.com', '2023-10-27 11:43:23', '$2y$10$b9p5NiRbkfnUvUdro6ByDOab0QsqoWM9zE9KPlHLqzr.cZ3W2GH8C', NULL, 0, 1, 'xZ6MCnS2boKOLIyk71kRVYqjkn5sSDFCcL2yNVP7tc7JWwTLpsp8r3mpvwpeEuqc', 'T5868', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-27 11:43:23', '2023-10-27 11:43:23'),
(266, 'Mahesh Gorasia', 'Maheshgorsia@gmail.com', '2023-10-27 11:44:28', '$2y$10$rR7pFqtvXsyr7cpAHDuJSOVEeZJMHWGCS8.VT/aiiWlc.XJO62MdS', NULL, 0, 1, 'zDMC4xRPXURrjKTkXqiQGuLM9klRYxpOYz00iyBxRVHsqKekAWTgYRywxEbQDbkS', 'M19404', '', '', NULL, 'Madhapar Kutch', '', '', '', 45, NULL, '', '2023-10-27 11:44:28', '2023-10-27 11:44:28'),
(267, 'Tanuja Shastry', 'tanujaruhi@gmail.com', '2023-10-27 11:44:40', '$2y$10$2NUMeEHcq9kD.3ReLO3XQOZ3gw0YMKXmH6PyTxgxx7u8aEHK9xbBK', NULL, 0, 1, 'XcJSf5PZf8v65OOlKd9M5lbB5tGzoyiPu9zBABUD4YbzW2tdJZQXO26HbyruDIHp', 'T5868', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-27 11:44:40', '2023-10-27 11:44:40'),
(268, 'Mohemmad Sadique Khan', 'sadiquekhan240@gmail.com', '2023-10-27 11:47:15', '$2y$10$OkDxzrct7DkpTzECCZLb6eIzDi9Y9k9wmzaZMmklIHa8EZHSpPNfa', NULL, 0, 1, 'uM9IPuslArmSnszKQnm9h8XprXlXuqz7mtolVqZ3DAxhxymEA2e5oP5ZNlFMUwWY', 'M26584', '', '', NULL, 'ulhasnagar', '', '', '', 45, NULL, '', '2023-10-27 11:47:15', '2023-10-27 11:47:15'),
(269, 'SHARVI GUPTA', 'SHARVIGUPTA25@GMAL.COM', '2023-10-27 11:53:00', '$2y$10$bhjwZkHQGyAvd1tlHuXlIuy9LZ7r2zX2RsBEE6Y3NLx67a4wfEOqG', NULL, 0, 1, 'KGXt2FYXpcNrIRXkJ1BCxji2P4yisoNNnG7C6QI5tMuU3aqNejRqZ9pxRNGmQO0p', 'S53248', '', '', NULL, 'AMBALA', '', '', '', 45, NULL, '', '2023-10-27 11:53:00', '2023-10-27 11:53:00'),
(270, 'Kirti Shah', 'kirtivijayshah@gmail.com', '2023-10-27 11:55:50', '$2y$10$8qk48qqmrANfK0CI3zGkU.JXUhlQHqYY0vty20d4/CkyVYp6/1hMW', NULL, 0, 1, 'fi3XKmgw8JAcv3dPELA3GugFFisjuWBwBJpWeV0b7gNac2hiGCoSzNh2MD74nDWE', 'K17728', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 11:55:50', '2023-10-27 11:55:50'),
(271, 'Deepak kumar Diwakar', 'deepakkumardiwakar5@gmail.com', '2023-10-27 11:58:03', '$2y$10$fkEBX/iJ/ZgZN9HOynN.d.TgeXzvyu0pQdvNfgYiKD9Rexpk4NREa', NULL, 0, 1, 'ghNDlGcbKA51lJJaT27i11TjhFRqI9YFKCjKjMDVWz4WnedsfjCosgMez5JoJUYB', 'D15991', '', '', NULL, 'MORADABAD', '', '', '', 45, NULL, '', '2023-10-27 11:58:03', '2023-10-27 11:58:03'),
(272, 'Gopinath NR', 'nr.gopinath@yahoo.co.in', '2023-10-27 11:58:18', '$2y$10$zp6rQZceAiCnVyNm4Fr94eUMN8qo8o9Q3JXkSZCDqt4vDlYBKCaaO', NULL, 0, 1, 'etrD8mIQPAD6dCU5mwKuEJqMUt2GyqrYwtBZVX0jyoyZrhyJDa2ZyFoEMU68uYCv', 'G10366', '', '', NULL, 'Dindigul', '', '', '', 45, NULL, '', '2023-10-27 11:58:18', '2023-10-27 11:58:18'),
(273, 'Deepak kumar Diwakar', 'deepakdiwakar001122@gmail.com', '2023-10-27 12:00:03', '$2y$10$SQfPEqGkz/88C5/y.cXoAuMftveatjl8FajjTrvZ1ZEVwOqbswUDa', NULL, 0, 1, 'oJ8Jxo4mwpdIpYIek1iyGogtqZLseRpuwtTpogw8wDptNlLkXeS4bR4EDuYuPbi1', 'D15991', '', '', NULL, 'MORADABAD', '', '', '', 45, 'HDFC Bank Ltd', '', '2023-10-27 12:00:03', '2023-10-27 12:00:03'),
(274, 'Richa Mittal', 'richumittal2304@gmail.com', '2023-10-27 12:00:17', '$2y$10$nq0SROu2pRH8XeU37Px4GOBtioriBRshrMOdoHkkDh.gYNSwBSf4O', NULL, 0, 1, 'WQRtpI4YkXAmodKJnBpiI2kAow2qOgwCGUBazfaWEAo044gn0DMyNSx6dlO5hWR1', 'R21630', '', '', NULL, 'Lucknow', '', '', '', 45, NULL, '', '2023-10-27 12:00:17', '2023-10-27 12:00:17'),
(275, 'CHAITALI RAVI MANTRI', 'mantrichaitali@gmail.com', '2023-10-27 12:00:47', '$2y$10$YwzwC39ieNFmIcqDZhUxZexLZFOPFA6ZpUcIW9EsMB18SPXOAI7my', NULL, 0, 1, 'HZPTQCRWo7YWIHFV3atv5zTBwdEkmzmxktydnyGZ2aNXiT4A4b7aEu7FGNIhuAzx', 'C5490', '', '', NULL, 'MUMBAI', '', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:cf375575-e4ed-4364-99e0-0252bed765ea?invite=true&promoid=4NM894PL&mv=other', 45, NULL, '', '2023-10-27 12:00:47', '2023-11-08 13:41:59'),
(276, 'Saumya Gupta', 'saumya.gupta1@hdfcbank.com', '2023-10-27 12:01:53', '$2y$10$RoV13oLOavl3.jQLdLA5SO7ZnsWtDuEuGdKeIGukg/RMZf1l/NHpq', NULL, 0, 1, 'iOBGqXnUSMrix2zVq5WJ4Hkkb4ayx149fhLMX9ctUInfxl1Jiq5UBXpmy736phRY', 'S64979', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-27 12:01:53', '2023-10-27 12:01:53'),
(277, 'Preethi Kinnera', 'fays7777777@gmail.com', '2023-10-27 12:10:08', '$2y$10$cJiy9Uuj6yPrPR.CNwp4U.sVmCprfmDg3kpRcV7hC24vW6Mz.veYq', NULL, 0, 1, 'BQXUaIHzybvV9A6XDCTtYXa35Ve6V6Y4Gu6E0ol6MJTOKAnpPf9MlPaNLqp0RE34', 'p27842', '', '', NULL, 'NELLORE', '', '', '', 45, NULL, '', '2023-10-27 12:10:08', '2023-10-27 12:10:08'),
(278, 'Deepika', 'deepika08gautam@gmail.com', '2023-10-27 12:21:51', '$2y$10$5LUYOtuen30dWmJYgcDb9O0VZzk9.HC0WiJd7eU4iBUxm3JiOdTSK', NULL, 0, 1, 'Tef1CcMHFfWPIk4BiqYTPk5JAymEbLlWSCs0PofkXWjaS9ZlJu6p3dWY2krbaMSq', 'D15594', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 12:21:51', '2023-10-27 12:21:51'),
(279, 'Shivani Remella', 'shivaniremella@gmail.com', '2023-10-27 12:23:03', '$2y$10$mDgiDrsJRCIuMSUUCO0iLezFdGX1DpaunY2tiLVK4WfJsm8FmbpSG', NULL, 0, 1, '0gD5plgxqYlf4HLFK6uq2mG8HW9yLKhIwn3EGEv4OtqKfwmKDJZSVGX7di9DmQlC', 'S64985', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-27 12:23:03', '2023-10-27 12:23:03'),
(280, 'Khushboo Doshi', 'khushi131994@gmail.com', '2023-10-27 12:59:59', '$2y$10$wGZSjhVagH1ihkApStECp.0zWXbfEw9AmRPdXXxFR.8J8b2eSXJe.', NULL, 0, 1, 'OCqZGd24jj5AnNILlGILGJSZnuLLPX21KaKTYYqmcoH8PIahJLb2bYvZ2P3wbJLt', 'K15700', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 12:59:59', '2023-10-27 12:59:59'),
(281, 'DHARSHINEE PRIYA D', 'dharshineepriya98@gmail.com', '2023-10-27 13:10:19', '$2y$10$LGW72/S3MU1YhfNn8IXkpevINnmEsBMFm8F5vEEBqVnTKc7dJXjG2', NULL, 0, 1, 'wffndRX2PJOYX5Eo86frBSzRtWD0ioKbXtYBVV8VG1ogTyD57EXoncgv7lzqqM2T', 'D14700', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-27 13:10:19', '2023-10-27 13:10:19'),
(282, 'Twinkle Parwani', 'twinkle.parwani@hdfcbank.com', '2023-10-27 13:24:04', '$2y$10$PdaDrkKNeTOov2ClKeLJS.hcij4ppgjbU4CTzmLcByDGUNr7vkdX6', NULL, 0, 1, '9dVesfuD8Ui5qrPlqkkmeDEmdqVn4XnUiCuY2pSeGA2RTu1wE9fQHizsS6gb4Nwz', 'T4901', '', '', NULL, 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:1e648acc-7120-47c5-a804-5713220aef8d?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:b5113eb9-522e-41e5-bdb4-9b1cb9551384?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-10-27 13:24:04', '2023-11-03 20:02:28'),
(283, 'Mahesh Varma', 'varma.mahesh79@gmail.com', '2023-10-27 13:57:22', '$2y$10$HHdSfHLtIxq9Oi4G0mkzCuIOHtZ.vnLZIwJfiIBzRncI6K8Kj0FWS', NULL, 0, 1, 'nRCKOlSMOww45t8NYxirIIyuLcTyVxy8f4S2inP7RzVCVobvDRNlwIdwrCwfJ6w2', 'M21129', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 13:57:22', '2023-10-27 13:57:22'),
(284, 'Aravindh Sankar', 'aravindhjohn26@gmail.com', '2023-10-27 14:00:16', '$2y$10$G47BKfWbRcYbAVlF.0CGruOwiYKkEF2meECaVX0ZiJuY.pamE2q5G', NULL, 0, 1, 'qBjgWOD1maVMcAqu9ny5pxkQbKv9REJIiwTE3Gu2wM6AhY9LLIlRpMFd334MZ984', 'A22055', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-27 14:00:16', '2023-10-27 14:00:16'),
(285, 'KAJAL JHA', 'Kajal.jha@relianceada.com', '2023-10-27 14:01:37', '$2y$10$Wml6BMiRUqVGmHrDIFwBSeRnTB2.ZKrVzQKv8LYdbS4ryXLXKjEXe', NULL, 0, 1, '6NwfRonXclVlgN1Y7mpCMDGhJi74QqbIuZt4bVwuaSO1pYNMW4pziRLsKOMSJGG4', NULL, '', '', 'BANCA', 'NEW DELHI', '', '', '', 43, NULL, '', '2023-10-27 14:01:37', '2023-10-27 14:01:37'),
(286, 'Sharan Syam', 'sharansyam2@gmail.com', '2023-10-27 14:23:45', '$2y$10$Ar8j9y/Wjt9i6.Boyd56peNahQcK0Ou59X0I/DcYvS9uxYCzTQQQ6', NULL, 0, 1, 'dwzAsidr8dOCBCUKQMwfuHWaNmOpu1sPrlVuPiPqNBhnILBQqIWPcA0ylKYENsMk', NULL, '', '', 'SALES', 'KOLLAM', '', '', '', 43, NULL, '', '2023-10-27 14:23:45', '2023-10-27 14:23:45'),
(287, 'Chandramouli Godhandaraman', 'cgodhandaraman@gmail.com', '2023-10-27 14:51:46', '$2y$10$MH4g4INsOmYeXHRafmWEeOIZwtLZ0wJydHmn96641F0KcuFGMhziG', NULL, 0, 1, '9S5l2JwKmhiQKTuSffS1RuadY5m51Lm1Wf4nGmrJQXoaVQjI9T6qFjSN9XGCl9iJ', 'C4137', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-10-27 14:51:46', '2023-10-27 14:51:46'),
(288, 'Upasana Chourasia', 'upasnachourasia@gmail.com', '2023-10-27 15:21:02', '$2y$10$KmqYIZt1rYa/jRWs6M3eeex6GAPgedM8anjn2AdbOodFWQIWQgwMu', NULL, 0, 1, 'GsvTOujPj2k9Dq3x7Kqbctb9wZ7HiX7y6xEMHPuvNlyr633xoWHBjkY5F90iBvWr', 'U2382', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 15:21:02', '2023-10-27 15:21:02'),
(289, 'Mayank Mehta', 'mayankmehta102@gmail.com', '2023-10-27 15:23:29', '$2y$10$/ZgzyttLijhMm9Lrs.WR.e7vgECU3GGiny.FWdmKlYKvHJ/rKMSvS', NULL, 0, 1, 'deDzVoG0rZl6cwPOmC4d7AujG9TYNpao22QaNTVjmOrDWlP3fL5P9gSAhfxER1AT', 'M17654', '', '', NULL, 'Rajkot', '', '', '', 45, NULL, '', '2023-10-27 15:23:29', '2023-10-27 15:23:29'),
(290, 'Jerusha Johnson Bhandari', 'jerushajohnson16@gmail.com', '2023-10-27 16:34:45', '$2y$10$5Gb4lQlR0YVCCyUJDJyFrO9/14nb3AS3pfIJnjk1NKjIoDz4Kh0ga', NULL, 0, 1, 'HCEktx1s2ut8EAEse83e30KOcxZ5G4RyQxqqsCa5p0eeTMLNRdwDmZM7SgnDAtoY', 'J9886', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-27 16:34:45', '2023-10-27 16:34:45'),
(291, 'Jamuna Rani K', 'jamunarani.k@hdfcbank.com', '2023-10-27 17:26:41', '$2y$10$h6EZ.ppc.mJ5jEX9Hj4Q7.NRcW4j8Wo7YrLfAN4l7MwYCo2I7jfhi', NULL, 0, 1, 'lBd9TPeo28YL4gsWjNkveZUvBW3rAJ8VbvBAHXQr1StyILC9wARZnHekTsF57Q7Y', 'J9708', '', '', NULL, 'bangalore', '', '', '', 45, NULL, '', '2023-10-27 17:26:41', '2023-10-27 17:26:41'),
(292, 'Deepu yadav', 'Deepu.yadav@hdfcbank.com', '2023-10-27 18:17:02', '$2y$10$DNm8EX39IwaYr1h8Yx69iu1oORb.p1QRSmF2JDLujUMLplv6bl9Oy', NULL, 0, 1, 'zapoNOXqDGXmVpHadxUlfGX0arv7kkhnu1fZxxSzuf9qCWxeyRYDn4BXHyiMDkZe', 'D12544', '', '', NULL, 'Alwar', '', '', '', 45, NULL, '', '2023-10-27 18:17:02', '2023-10-27 18:17:02'),
(293, 'chhaya pol', 'chhaya.pol@hdfcbank.com', '2023-10-27 19:41:18', '$2y$10$fhjxf0fib8MXUt7NQkcrfu6tTVtYAmqbEYDfQbpOS.l9ijgmTprYG', NULL, 0, 1, 'F6gSUJjPzFwtFYNkTIh7tpncD80MOXgNeeDCBM7odB1Poy7xWblFW3xhOKbaZSkA', 'c5532', '', '', NULL, 'Mumbai', '', 'https://www.instagram.com/reel/CzULEzWyIYxzxdCNzhjYFjImGTfzbwuqTfPAgA0/?igshid=MzRlODBiNWFlZA==', '', 45, NULL, '', '2023-10-27 19:41:18', '2023-11-07 01:59:12'),
(294, 'KAPIL KUMAR SAINI', 'kapil.info01@gmail.com', '2023-10-27 20:24:15', '$2y$10$uMklDcLNQlR.Y5KsD5hdyu3rMAx7plOPGJg6xhSb/wxlSApsyW8sq', NULL, 0, 1, '9ub28DETX81N0i0AVUA79Sw3GJw7B1cSPjwgLEJqVSrHbc14BaB6qrUsIuAESkf1', 'K16862', '', '', NULL, 'BIJNOR', '', '', '', 45, NULL, '', '2023-10-27 20:24:15', '2023-10-27 20:24:15'),
(295, 'AYUSH VERMA', '50034773@rcap.co.in', '2023-10-28 13:13:15', '$2y$10$0FiFahCkOwhZmEPMIbPcGeGANVShYf1mkqXf8HW3jmA96FdccNiHS', NULL, 0, 1, 'vhmzKI3yvupBSVYuMQNNmoQUPhk4ZW3Vf763LHLDKDPXO8vtCEhpgEbe26mk4LZO', NULL, '', '', 'OPERATIONS', 'INDORE', '', '', '', 43, NULL, '', '2023-10-28 13:13:15', '2023-10-28 13:13:15'),
(296, 'Syed Shafiuddin', 'excel.syed@gmail.com', '2023-10-28 15:52:13', '$2y$10$cFnF.j3psG9atoXP8DtX1OK34CehpakZHEJTPY.63H/FF4kvXAt4q', NULL, 0, 1, 'hlR11CkFimxuWZYqsVQVG9ZQG85J4ioZ3vE3QiUZedfRIEQebjj2pYwRvl50IMyS', 'S31314', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-10-28 15:52:13', '2023-10-28 15:52:13'),
(297, 'GUNDU ANNAPPA SAVARATKAR', 'gundusavaratkar06387@gmail.com', '2023-10-28 18:07:28', '$2y$10$stEQrghjdoznC3BWGaj3l.pnOOTA/g9.nYUFVMFHk4ZDptaFgSETC', NULL, 0, 1, 'azrBW9jFCLNq5qPbxM3MJuUb1xZL3IyYDaJTTrU6Ap1J1CGWnngHKPvfYbJ85SA9', NULL, '', '', 'Legal', 'Hubli', 'https://WWW.adobe.com/express/', '', '', 43, NULL, '', '2023-10-28 18:07:28', '2023-10-28 18:10:34'),
(298, 'Prasanthi B', 'bommanap9@gmail.com', '2023-10-29 20:53:29', '$2y$10$5gPrHoBq4y.6O6HR5T7qc.b47sOaqJeIXDMH54v5VWOZppmmSpALm', NULL, 0, 1, 'ptMMeyGMbxLfcIvxtypohZBPE6QypzCfe4gpCROCsNwmblwkFtjyi8XCtReHsmfL', 'P14442', '', '', NULL, 'Hyderabad', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:e2085c47-1a12-4fcc-a6e5-9d75d14fa311?promoid=Y69SGM5H&mv=other', '', '', 45, NULL, '', '2023-10-29 20:53:29', '2023-11-09 08:12:16'),
(299, 'Rahul Prasad', 'rahul.prasad4@hdfcbank.com', '2023-10-30 15:30:44', '$2y$10$GXF7AtcXhx7mfzJX0nw3SeXveCUwBp9cqP9DsZ35HjTINw0LLLzEu', NULL, 0, 1, 'pYyw6zNQXsc7akQKZldH0RR98rwxIxO1HSzaA62vqhmoJJ6OzIrl6C2K803t9YYa', 'R32371', '', '', NULL, 'Aurangabad', '', '', '', 45, NULL, '', '2023-10-30 15:30:44', '2023-10-30 15:30:44'),
(300, 'Vibin Nair', 'vibinnairnn@gmail.com', '2023-10-30 15:30:46', '$2y$10$CXOX8uh1pl0f7mm5Q1VxDuvsRxdX0.hzH7degLsrBm7voW039wOa.', NULL, 0, 1, '0XLJJjTmkDenTB5JaLXMSOVaksPfv6dv2LSQ4xbMLzc4hzsSu682MS8Pda4fjWBw', 'V1160', '', '', NULL, 'Trichur', '', '', '', 45, NULL, '', '2023-10-30 15:30:46', '2023-10-30 15:30:46'),
(301, 'aditi bajoria', 'aditibajoria04@gmail.com', '2023-10-30 15:31:00', '$2y$10$E.yxY4xra/8J8y5l9aRqhu6tutHhRLVdhwzPpAZJoSx8CQmVN.w1O', NULL, 0, 1, 'tMO0vjfFb35hVH5bmR7sThRA2GYYvSPkcpIaDOvvcXS2RnREJrkTv7BwDWQBcAkk', 'A35967', '', '', NULL, 'Jaipur', '', '', '', 45, NULL, '', '2023-10-30 15:31:00', '2023-10-30 15:31:00'),
(302, 'Sandeep Pandurang Jadhav', 'sandy.jadhav333@gmail.com', '2023-10-30 15:31:51', '$2y$10$KJCIFfKLCar4Zjn.gz3.suP/Kp6qmlBcIRWA6TGDQiZLs0ch1tbQm', NULL, 0, 1, 'KYiwv6uZzzdnzDMaPfrQMcKRkTziDXbXbYX9CNp8U2uuiG1X7aLD7rmEzSgSzNmE', 'S49542', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 15:31:51', '2023-10-30 15:31:51'),
(303, 'Skanda Ananthakrishnan', 'skanda.ananthakrishnan@hdfcbank.com', '2023-10-30 15:33:57', '$2y$10$G8T8LBw/VwbTY02tVmWnHedKmvSWMNryzBMYcr4fOs3JNexEohDeu', NULL, 0, 1, 'r5UNTkpJhv6umqEku1WKXF3MxwpBnHdNxvMasWR21awy2Mo641zbXdQc8e5NAGgh', 'S56994', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 15:33:57', '2023-10-30 15:33:57'),
(304, 'Vasantkumar Parakhiya', 'vasantkumar.parakhiya@gmail.com', '2023-10-30 15:34:37', '$2y$10$QTM0funMpYb/GcKaO0T6KOQPIVGjaC4qGsakD3/3AT0xB3ez7cd72', NULL, 0, 1, 'ZwLq4H44FlpYjvJ4x7Z19I0v8b5s05hkdKvD3aHwggX2enQZSpvsRJCrrrq9fceS', 'V8512', '', '', NULL, 'RAJKOT', '', '', '', 45, NULL, '', '2023-10-30 15:34:37', '2023-10-30 15:34:37'),
(305, 'V Sangameshwar', 'SANGAMESHWAR.VSN@GMAIL.COM', '2023-10-30 15:36:37', '$2y$10$wfvHDRmiv2uj4Iep4YCIQ.b0bINGQ22OSaIqWX3q.Cwpxuk/tw9jW', NULL, 0, 1, 'ANO3fL6BJ1j1UPJ8w3nZax8KpBq4YsgSj9PaRUmdrQpMQ6k7hpOSKQwXZq4sGKZM', 'S67430', '', '', NULL, 'Narayankhed', '', 'SN Sangameshwar', '', 45, NULL, '', '2023-10-30 15:36:37', '2023-10-30 16:15:21'),
(306, 'Sonia Bhatt', 'sonia.bhatt@hdfcbank.com', '2023-10-30 15:41:46', '$2y$10$3GiVLmSq6ljC.x9yMoq20OJlGRfYFRF2.bxyE6NAssg6A3m4L2EoG', NULL, 0, 1, 'W2KqROfSU9pHpqfvsajVOwPzEE7Yi6HnZp21WMLmwwlLGK2Z0Z8oqsgxIsR4IWXX', 'S6789', '', '', NULL, 'Gautam Buddha Nagar', '', '', '', 45, NULL, '', '2023-10-30 15:41:46', '2023-10-30 15:41:46'),
(307, 'Ankur Parswani', 'ankurparswani92@gmail.com', '2023-10-30 16:00:45', '$2y$10$.08phfgbfDJBX1yaiMzh7uS.gfR87ZjXZI6rImHAGWwOBS/hK/gY6', NULL, 0, 1, '2ezaiORNbDKIAZ30RycXZmo1KS7zw4gOa4cXbfUV8tMpnwcl8yN3W7drWnbMdbB7', 'A48828', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 16:00:45', '2023-10-30 16:00:45'),
(308, 'Manali Dhuri', 'manali.dhuri@hdfcbank.com', '2023-10-30 16:07:43', '$2y$10$5nghOqYu76FljxW3xeQju.tvqQ4JsG4RwcmBl83.KyDmjsixAfG6W', NULL, 0, 1, 't3LMxFQ61Sml9BXnhRaSx9iNuXydFAoEGV63tJaTNDK3Y7r8ylpqWimcpaFBkIgi', 'M13649', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 16:07:43', '2023-10-30 16:07:43'),
(309, 'Syed Basit', 'syyedab@gmail.com', '2023-10-30 16:08:38', '$2y$10$9I845sn7BoUROinSQK4Ej.iA3G6V7PlDG8wUq/TNQdTSvwdvcxKR6', NULL, 0, 1, 'uBkuiOThVrQByGE2v8UCnf2t0INtFsodsZiUe32I8eN6PJQOtlIZ6iOUKLqPf918', 'S64260', '', '', NULL, 'Jaipur', '', '', '', 45, NULL, '', '2023-10-30 16:08:38', '2023-10-30 16:08:38'),
(310, 'Kiran Maru', 'marukiran2@gmail.com', '2023-10-30 16:10:51', '$2y$10$xOFuEKHf1wMw/2idWbOp7uad5fJT46hV38Vdm1osFxJpJwvdZHs0i', NULL, 0, 1, 'yx5tFUfvFVfAC2cIXMPeRtyeQ3ubpxvfRAmP26j26YRwYqbz1fI4S7f4sMixvQWk', 'K9741', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 16:10:51', '2023-10-30 16:10:51'),
(311, 'PANKAJ RAY', 'pankray@gmail.com', '2023-10-30 16:27:48', '$2y$10$GlZbBVhk5KoY7j45VCyyY.mNlunMCcrs2lv/PdyaOBRsZRPiSYQJy', NULL, 0, 1, '9uVbazokB7EvqVW6GVg60q2hNI9ipSiW51qhbqftpRna6B9K0ixjjLa53yQT9vbD', 'P5086', '', '', NULL, 'Guwahati', '', '', '', 45, NULL, '', '2023-10-30 16:27:48', '2023-10-30 16:27:48'),
(312, 'Nirmal Kumar R', 'nirmal.kumarr@hdfcbank.com', '2023-10-30 16:28:58', '$2y$10$fKhvpYOnYPYW94BncI4BUeR5ghtV9LnSzy02dlF4gw71toxN0vVEW', NULL, 0, 1, 'qjtZLrLEWcnN22oYqNucxP4WwgvzRAg22crB31qVaB3mDePQNCoemu3W2DIPFQdE', 'N19596', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-30 16:28:58', '2023-10-30 16:28:58'),
(313, 'Mukesh Prasad', 'Mukz_namchi4@rediffmail.com', '2023-10-30 16:52:17', '$2y$10$XGMoBLxZ62So04JjqG.OZul5/ZP6rUfj3lJxSk87aNh6pf6D0pam.', NULL, 0, 1, 'QCjfe9oTpcI4qs4AU8OJwQCxAxENUCPDrl4NIqKfIPuZQyfg4fp835L1zj1pEvNd', 'M24303', '', '', NULL, 'Namchi (Sikkim)', 'https://www.corporatecreativechallenge.com/', '', '', 45, NULL, '', '2023-10-30 16:52:17', '2023-10-30 16:53:22'),
(314, 'SATYA PRAKASH M', 'satyaprakash.mittinti@hdfcbank.com', '2023-10-30 18:57:39', '$2y$10$gl63tI2zR2U9RO2LCEkXkegSMPdA5RHs15eXhH.CuHc2csbJ2KQLq', NULL, 0, 1, 'pAwo0bxViIy5gZceZCngMTIgiVYMO10HGrQ89mC6U3vRMDnFejanDIOV4kJpfbzK', 'S64631', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-10-30 18:57:39', '2023-10-30 18:57:39'),
(315, 'Milind Madhukar Dalvi', 'mil.dalvi@gmail.com', '2023-10-30 20:16:35', '$2y$10$cbdBf.O9Oxi3g7fhNI1qle7zhVyDgO1m4VVXZ0eaBJ4opIgVDDGyy', NULL, 0, 1, 'TM4zWmGCE9nycAphUXsd0PhtgP0nM55DNxmbDAZuLjkD8LSP9EXbJbNZpgEZrrni', 'M1398', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-30 20:16:35', '2023-10-30 20:16:35'),
(316, 'Samrat Routh', 'samrat.routh@gmail.com', '2023-10-30 23:44:39', '$2y$10$AYWywjBzd4TmVT1XRhJKsONazHHZIZPwiEgGTL44vJHDG8qHcgkfW', NULL, 0, 1, 'F3lt4CWatoSER41soiUMc07BPESly2DNe2Y44kFossgKhQC6hbHFa3nTGIM8EEOI', 'S10030', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-30 23:44:39', '2023-10-30 23:44:39'),
(317, 'Krupa Mehta', 'krupa0410@gmail.com', '2023-10-31 13:02:44', '$2y$10$sORmzQGvUQTpOIYZNtHLWuEAk88V8kSUpCjNULEq2GMcYnv1cqN7.', NULL, 0, 1, 'MDqFitNEGVob4E8ptpuyYUhYIf7fL3hvbGz0JRmgxm4yw2o5cXaDJDG2pxToXk3O', 'K16610', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-31 13:02:44', '2023-10-31 13:02:44'),
(318, 'Nishad Shinde', 'nishad.shinde@tcs.com', '2023-10-31 13:46:57', '$2y$10$T0VTPJM48Y41roM55IHxGO.oqtT5n8NSKPI87pXscOIivsu/AnU5K', 'C0uHsN8Ga0MOCpbzgPmEHHFCzmHFTX8Mek0oi1IQPxsXj6oPHNaQ9tBsF9G9', 0, 1, 'BKlqgOcn8nzlemSomC6GfuNkQ9ebcGI73X4fJ2VZdWL2vUut3iUINjhscMAdNKaC', NULL, '', '', 'Content Services', 'Pune', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:4051ff89-d723-45b4-85b2-410efeb519ec?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:12ef7768-bffb-40fb-bab7-9e715f76691f?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:23fdd526-7732-4990-bdd3-64c37d4ce946?promoid=Y69SGM5H&mv=other', 0, 'TCS', '', '2023-10-31 13:46:57', '2023-11-07 13:25:12'),
(319, 'Aarohan Sharma', 'aarohan.sharma@hdfcbank.com', '2023-10-31 15:06:52', '$2y$10$49YAMGHiE.HKRGReDCK7COjoqkHRWZ6soAwRLZjcDlLC1asPNEc32', NULL, 0, 1, '87QWkNwBubQxv0P7db9VpkgOKegdbRu573Km3MSjyefgTAc18bNixSPjLnaCp3FY', 'A49878', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-31 15:06:52', '2023-10-31 15:06:52'),
(320, 'RAJEEV NAIR', 'nair.imrajeev86@gmail.com', '2023-10-31 15:07:19', '$2y$10$BZ9ayUVKt0Qdds4pcT5JG.AsWHQKRWv4vpRgo5TIHjrPTN6h.weeC', NULL, 0, 1, 'wejAdHyHzLmzf50QN1Vx24lVARbK7hljNZniLLYcGtDXo1Vf4sxbJeM1z6XG8h8E', 'R31348', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-10-31 15:07:19', '2023-10-31 15:07:19'),
(321, 'Prashanth SLA', 'prashanth.sla@gmail.com', '2023-10-31 15:08:52', '$2y$10$4I0HgtJUZHbDuS6ObCwFGeNtjCsp4F/OV4.hrmLhSpPce4/M67uXy', NULL, 0, 1, 'oImYLchLZaS70HR55K1rkeYdtGJC3buEMmC73uUEOMGDTQjrilxRd3ry4zyuO0gq', 'P25626', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-10-31 15:08:52', '2023-10-31 15:08:52'),
(322, 'Prashant Shirbhate', 'pshirbhate@gmail.com', '2023-10-31 15:09:26', '$2y$10$RD2.IskYnV6.YArMTMKAQeJjpWSBNH/BdT2MDh3U9OsjYj9LbzZwm', NULL, 0, 1, 'Z0Za5j42HSi7siGECZN6riC0CuTVLhma25XgfYGGOBxB6C4VKWloYETT61keNBwb', 'P21674', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-31 15:09:26', '2023-10-31 15:09:26'),
(323, 'suchita Rasal', 's47485@hbctxdom.com', '2023-10-31 15:09:50', '$2y$10$o7smqvNWcYFZDr8yg7VPHu5vhwyJC0vR.ZEyhtHYGSPUMIsVIa8wq', NULL, 0, 1, '5xPnHvwCRDYVhF4acjPjKcsRSK7fMfKLpwP7roBNlF2Sr3SYIme5w2QzBLkhEZZK', 's47485', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-10-31 15:09:50', '2023-10-31 15:09:50'),
(324, 'Soman Biswas', 'soman.biswas@hdfcbank.com', '2023-10-31 15:11:48', '$2y$10$kEp5kiknaPdU24eJE6x4geZfG55tMgb4fkPjsEFsaPoRBh0ZNIK3e', NULL, 0, 1, 'jofX9hk5OhkZlpurhaE052T1c2JAyymwjojWHi58eJJcNFRghmPByxOY9ZTIOkF3', 'S68920', '', '', NULL, 'Udaipur', '', '', '', 45, NULL, '', '2023-10-31 15:11:48', '2023-10-31 15:11:48'),
(325, 'Nur Ahmed', 'nurahmedghy@rediffmail.com', '2023-10-31 15:12:09', '$2y$10$wqhFvv.LHylgySEWxPHSjeK8ahQJZQ8Pm6n3bFH1e9/NRLDPxFgRe', NULL, 0, 1, 'JdGb2AP10NXMTtnbjpB4bvaYlfiILlhKrQqB0INsw5ilxsbkc00ynm4JcjhgiBam', 'N12725', '', '', 'Merchant Acquiring Sales-KAM', 'Guwahati', '', '', '', 45, NULL, '', '2023-10-31 15:12:09', '2023-10-31 15:12:09'),
(326, 'Sucheta Chatterjee', 'sucheta.chatterjee@hdfcbank.com', '2023-10-31 15:13:00', '$2y$10$Gf7hgWljecAEZje12ApZAumvx.k0TbcmooOvappaf6iWJ5somcVlO', NULL, 0, 1, '144wE4DzJkuAfEKaYH7BxpHPsyI892tkONVhplQQMv1zC3yDmL3Z2kNZkcwbBMbj', 'S53762', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-31 15:13:00', '2023-10-31 15:13:00'),
(327, 'aarti', 'Aarti.rajender@hdfcbank.com', '2023-10-31 15:13:59', '$2y$10$0gs6ldEM12rPTlgaqLQzZOCVoVTILJ1m21T2AYmmxJ5NRjJdHPH16', NULL, 0, 1, 'mkFwemf0pm8vidKio4yl88hGFLjcrVflzAMwlnX9Pg5bkmOrMsK1cI0rxwqXYIWE', 'a48447', '', '', NULL, 'samalkha', '', '', '', 45, NULL, '', '2023-10-31 15:13:59', '2023-10-31 15:13:59'),
(328, 'Jaai Pradip Deshpande', 'djaai1595@gmail.com', '2023-10-31 15:16:19', '$2y$10$gCCrPkKEChaXwFTNddDHRu0hFL7omR2n.XZq0vopUVjAlJ/OXrkLG', NULL, 0, 1, 'haFm43pcMAVRvJgud4SmZfbCBHbhejE1UjGMroLhauCiVMBgQTaFVFzzLfqB7R33', 'J10467', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-10-31 15:16:19', '2023-10-31 15:16:19'),
(329, 'MANISH PAREEK', 'rdmanishpareek@yahoo.co.in', '2023-10-31 15:19:56', '$2y$10$qLPr/bY1SCyUsTXoKfaDNu97g3OifkMHnbB28Y6N6qkPcggI4zc7.', NULL, 0, 1, 'r0MbOdxmNbxD0w5HmFqD90njl6lWlWzyof86DnEju7y4qNVmdlNkipeO2VUjbRH3', 'M11781', '', '', NULL, 'AJMER', '', '', '', 45, NULL, '', '2023-10-31 15:19:56', '2023-10-31 15:19:56'),
(330, 'REEMA ROY', 'reema.roy89@gmail.com', '2023-10-31 15:22:00', '$2y$10$Ov4iECLoV18KqwPDcFUCw.JiFjpGNSVgQ6pNgs1/mrI4lZZ4mPgpq', NULL, 0, 1, 'g44iF1l8GX7CttIw2Zc2RqDq2WIbEzj8smNOqPaewVLtPUCn2iAWrJaCNvt0CzDO', NULL, '', '', 'oprations', 'Jamshedpur', '', '', '', 0, 'HDFC BANK LTD', '', '2023-10-31 15:22:00', '2023-10-31 15:22:00'),
(331, 'Aditi Bhattacharya', 'aditi062k@gmail.com', '2023-10-31 15:26:20', '$2y$10$xjiP3vlD9GPUaq97C3XZ3.cX8XsDVhInfh5KWX9I5o1I/5KK1kZ7S', NULL, 0, 1, 'c3jHMBxL1LsRDEUlzv9iT4HFQTcEATcyTfh3WyHdKcsR8Ea9sp5mX9YO3y0LXTuX', 'A47485', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-10-31 15:26:20', '2023-10-31 15:26:20'),
(332, 'Mohammed Nafgan Masood', 'nafganmasood@gmail.com', '2023-10-31 15:32:37', '$2y$10$hjCsi.wiDXPiYn/0lCiMD.sKk3N4ieL6OW3sVjh4y6h9ttJVbmZfS', NULL, 0, 1, '3NTNbySZQtvxt9aS6a47IvHz1vJCyJck84laWLJa3LFyZW7x2oGm4aplODn18MFk', 'M22222', '', '', NULL, 'Cochin', '', '', '', 45, NULL, '', '2023-10-31 15:32:37', '2023-10-31 15:32:37');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `isdelete`, `status`, `token`, `employe_id`, `office_email`, `mobile`, `department`, `city`, `email_header`, `zoom_teams_background`, `linkedin_cover`, `company_id`, `company_name`, `location`, `created_at`, `updated_at`) VALUES
(333, 'Mona shah', 'Mona.nimish.shah@gmail.com', '2023-10-31 15:35:46', '$2y$10$ItjxJjU9tNxnkzMC8qudM.M6rCaWySHqCC1wi5JCSpY8Ob2Kbyk3a', NULL, 0, 1, 'PoSKiFP8yTjuwelnwpWBWuvTxWdjUY6BGRMUSNieBmWlQn0FS1MScc5ZSeI8xwUr', 'M17234', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-31 15:35:46', '2023-10-31 15:35:46'),
(334, 'Anvesha Pipariya', 'anvesha.pipariya@gmail.com', '2023-10-31 15:58:45', '$2y$10$spYjTtgVAAZF06vXu/Lan.BdbyNkUlw6ouC4K8pyCZMt5n7MYCROy', NULL, 0, 1, '2devz7RDTYaga3lOLqxf6ba3T20ZaY2yrX69OwGOReetXWmeLarHYfPWcq9SykaL', 'A50897', '', '', NULL, 'Jaipur', '', '', '', 45, NULL, '', '2023-10-31 15:58:45', '2023-10-31 15:58:45'),
(335, 'Jayesh Inamdar', 'jayeshzen@gmail.com', '2023-10-31 15:59:40', '$2y$10$ahkMfuVTmfN.F1jCeMio/.Ee.Ail59ID1Spie2JrI8y8fbB8uA09e', NULL, 0, 1, 'tP6fdfznJAomUiIxRufilqoQTbi72rGgSvaGRBE2s7tc6WhrlbyWDuSQ4ST7W20g', NULL, '', '', 'Operations', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f94c9be4-710b-4c40-a14a-503ab5eecd58?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:2fc25ffc-fee0-4b20-82d8-fad7e75ef5c0?promoid=Y69SGM5H&mv=other', '', 0, 'Acc', '', '2023-10-31 15:59:40', '2023-10-31 16:24:20'),
(336, 'Anagha Rao', 'anagharao221@gmail.com', '2023-10-31 16:08:51', '$2y$10$3ron93cXb/YD7H1hyV4oH.wdfZAOEJVZEkfWFEhWuLCsYfpCAnbBS', NULL, 0, 1, 'FrMkOq8vZU4qv5xTMb9sF6v64nQVRTTLpxS5pAAfjkBw8BzAZ0hk7ni9oN8GmRhW', 'a47847', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-10-31 16:08:51', '2023-10-31 16:08:51'),
(337, 'Shruti Kumar', 'shruti.kumar@intra.88.pictures', '2023-10-31 16:20:43', '$2y$10$PJEJZH2cnQhhVfL7U2N89uz1tPX/RaOThHde.dmYyCkirPCI3lPi2', NULL, 0, 1, 'JWmdUEEBt3Ra4nIRMUThjEvptkML605LfodHMFRinjtY81soVoNNHzuMXEfE0xlF', NULL, '', '', 'Production', 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:cafe40e6-b7e0-57ea-8581-0c28ec7b3b70?invite=true&promoId=XXTQGVMK&mv=other', '', '', 38, NULL, '', '2023-10-31 16:20:43', '2023-10-31 16:47:34'),
(338, 'Uma Babar', 'umababar1990@gmail.com', '2023-10-31 16:25:17', '$2y$10$KfqQdFhDG27/GPdiJz7Eyen5jPedMdpd3ecMouKQygGJ5lcHSU93e', NULL, 0, 1, 'pKHOmsTU8pOG6HTiG0GWeqSqbGVTF77kq1bh4yQ57WTCkehQ5nDFBGqqtZbV7bOW', 'u2661', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-31 16:25:17', '2023-10-31 16:25:17'),
(339, 'Ankit P Satra', 'ankitsatra.25@gmail.com', '2023-10-31 16:31:44', '$2y$10$BZvZ.rlSCAqPDpKngo5SaO9v1zieoUVkCwhnCIPByrAdRU40AkkPu', NULL, 0, 1, 'um0yqE71nCtqIR6I6FV0bhu0WxKBsk8olN1dsoEpHN1SXbxdAzs4eOdEqh0Cf9Nc', 'A41527', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-10-31 16:31:44', '2023-10-31 16:36:41'),
(340, 'Ankur Guha', 'ankur.s.guha@gmail.com', '2023-10-31 16:32:22', '$2y$10$7ja0RJqrtqBqJRtFf2JcSOWI0WMmOHCF3B1qsksHXtwLxqgeD.7Ha', NULL, 0, 1, 'l3oEcBMG6UScf8qHsX3ZI2FjP11pR9Ry28mSOIXVb1YHc7DaWt53E4F0XBL0A7Uc', NULL, '', '', 'TCS Interactive - Content Service', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:ce2bcdbf-cf27-4bf6-b55e-8cc0f4267132?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:5121cfc5-d651-4c15-85f8-06c4ceb59f73?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:c1abc890-34aa-4afa-b703-f458baa3a9b3?promoid=Y69SGM5H&mv=other', 0, 'TCS', '', '2023-10-31 16:32:22', '2023-11-02 22:00:00'),
(341, 'Arun Rathnaraj P', 'arunrthnaraj@gmail.com', '2023-10-31 16:36:44', '$2y$10$QYGmVR.RubaSrpTIenPxqe3XRmPCRKFSPQ9g0heP96lp1R4c/rwzy', NULL, 0, 1, 'TIXO6gzzbuWawbUtv5iXbkeJKeC0fS7oYOxGwQRT7m0YUFDnF3yG7Y601zGlLKE5', NULL, '', '', 'Channel Enablement Group', 'Pondicherry', '', '', '', 0, 'HDFC Bank', '', '2023-10-31 16:36:44', '2023-10-31 16:37:18'),
(342, 'NIDHI RAJAWAT', 'nidhi.rajawat261999@gmail.com', '2023-10-31 16:36:54', '$2y$10$hEnEhWvDXJGpFwISXmmdnuaPZVvEqtkt5NX4h6ffLwLmQyiXsrXXK', NULL, 0, 1, 'oz9DLxcOBafT7XGHg74Nl9OkeUgb6UPIFJ6fatCc4Cfm91HqupniBkAW5cahCc52', 'N20400', '', '', NULL, 'INDORE', '', '', '', 45, NULL, '', '2023-10-31 16:36:54', '2023-10-31 16:36:54'),
(343, 'SARAVANAKUMAR P', 'saravanakumarp@ymail.com', '2023-10-31 16:49:45', '$2y$10$SseAOqFMkIwVkJqjej.Y5OhsofbPHyts/8KAmFt6pSRhMx8ZksE8e', NULL, 0, 1, 'DQ44h3KRo7BOF8tb1Ti0EC2yrMc7RRubm6oT0DyC6gN6Irazussixct2A1FGzAsG', 'S67533', '', '', NULL, 'COIMBATORE', '', '', '', 45, NULL, '', '2023-10-31 16:49:45', '2023-10-31 16:49:45'),
(344, 'RANJANA KUMARI', 'pinksamli@gmail.com', '2023-10-31 17:23:40', '$2y$10$ocPN/9T4YgnXJVNpmyZiS.5hYis4eNPxYuPgPcfruC2STF6nVY.mq', NULL, 0, 1, '1MxYpEYa5fLujTHbDtUeUAGSyW5l4uzrSD94Xpj1y773bTzsLo8afKqqaDlWtjnA', 'R24168', '', '', NULL, 'DELHI', '', '', '', 45, NULL, '', '2023-10-31 17:23:40', '2023-10-31 17:23:40'),
(345, 'Nehal Chavan', 'nehal.chavan@88.pictures', '2023-10-31 17:50:57', '$2y$10$nV.9K.jCeF/xctwC1uFlJuFzROJ6VAiOcuVY14zZWrJNpEZwQcely', NULL, 0, 1, '462vsJ7hHRaa6LJ9XqQEJtwocFrAV1pb0MMo6KcGP6zIK9allws1lIEXg7njwiuu', NULL, '', '', 'HR', 'Mumbai', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:8be4dd3a-f60e-5775-912b-27b334989681?invite=true&promoId=XXTQGVMK&mv=other', '', 38, NULL, '', '2023-10-31 17:50:57', '2023-10-31 18:06:08'),
(346, 'Rizwan Razack', 'r.rizwan@tcs.com', '2023-10-31 18:29:57', '$2y$10$X9.gk/Z7UenaM6ocOiii0urglY52LyOswN5fG.Hk1XRXgSBbrZBAS', NULL, 0, 1, 'JdOYhZ0Wg7v439HzlHuZljILCAnToERwyzIftAHLxUTIc1ZI49yzZ6UTnU2MGm9C', NULL, '', '', 'Content Services', 'Kochi', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:1a594223-4822-48c4-9a56-b6249b630db6?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:00af4475-c69e-499e-8b48-66c5fe2801ed?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:1bc0e785-f924-4c8e-8fcd-665c98c5dbc6?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services', '', '2023-10-31 18:29:57', '2023-11-07 18:53:01'),
(347, 'Abethsurya', 'abethsuryaadvocate@gmail.com', '2023-10-31 19:40:10', '$2y$10$RNlI/RjNT.zdIauQF5hjE.vMqmNgffPHZAE.nXUY0yFGpAfMI2IHS', NULL, 0, 1, '9W14dvzU4DTlN1WQH2RXoUNhihx2KF2DZjsb6is4uTHmAi49tpGFQsudX6F7Tc7F', 'A51165', '', '', 'Reati Credit', 'Coimbatore', '', '', '', 45, NULL, '', '2023-10-31 19:40:10', '2023-10-31 19:40:10'),
(348, 'Chaithanya Nair', 'nair.chaithanya@tcs.com', '2023-10-31 21:21:45', '$2y$10$8jgJ0agTjrCkMQb2.CoFX.nwjnOpnM9vq/SMQ7vWmuvfx8/EygnLm', '0IbU0JsezBrC0BTyz5aHA6sEjKXpFIyZX1CcdwJ1aj6u4qYQcBOlHuF4YK90', 0, 1, 'Ej5M8AqIxAQKIp53HFB85nCO8fYagDEmJFDS1ScuWOUwy14ZG73WcU0mUsWZySPB', NULL, '', '', 'TCS Interactive', 'Kochi', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:669e70fc-ca58-45fb-a838-cfa5aca18827?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:d1bbdcd4-529e-47c6-a482-b6abfafa4aa3?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:7c97ee30-12f7-4ee3-91de-3d548dc20eb5?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services Ltd', '', '2023-10-31 21:21:45', '2023-11-10 17:31:06'),
(349, 'Neha Sharma', 'siberianflamingo@gmail.com', '2023-11-01 02:51:49', '$2y$10$54hq/qGJjjybUBALjz7tSeleD8FATqWDzHmWNYeJY9mucTcBbkO7S', NULL, 0, 1, 'PBr6FadriZm9G2wNyUmkffKkLmDx6ii85ZUgo2oHGuzOT4tEW1ap7OKFcE1LHaxX', NULL, '', '', 'HR', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:5a168bff-4570-4fef-9a2a-6e2c076de3cd?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:dc3d84b0-7f7b-423e-b565-8421bbb5834c?promoid=Y69SGM5H&mv=other', '', 0, 'SBI GENERAL INSURANCE', '', '2023-11-01 02:51:49', '2023-11-20 11:55:05'),
(350, 'Anish Holla', 'anish.holla@88.pictures', '2023-11-01 11:26:49', '$2y$10$mFyr66L3UYzZru46y/ESwebXXxzdLzs./xiqh4BdLFbDy51jkWXUG', NULL, 0, 1, 'zYrJG5CC6nnvXekd2J6Ia5H5dhOiqPYQ1ngboS933j4V5PB7X2SewdKhuErfZ8EH', NULL, '', '', 'Production', 'Mumbai', '', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:156134e6-8bb4-4655-9a43-f29f29cd6b70?invite=true&promoId=XXTQGVMK&mv=other', 38, NULL, '', '2023-11-01 11:26:49', '2023-11-01 11:29:39'),
(351, 'Shweta', 'shweta.dubey16@gmail.com', '2023-11-01 11:30:31', '$2y$10$/joYmawAc81IxlHgDCseKuZRaAPAfE3kcXrqJXlsJj5T2uqZBLIYW', NULL, 0, 1, '7AgkcNyLGkkFPgf3eOmvhOn4nprpACDv7CggYonSOWOzPnYp7kFU7ZULDWQY6arp', 's9206', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-11-01 11:30:31', '2023-11-01 11:30:31'),
(352, 'vinod ganesh babu', 'vinod.gb@gmail.com', '2023-11-01 11:52:06', '$2y$10$Nm0StEYQ5JKfr5mdp2HzpOp1D5LHu.poeI0trTkm4fztP3pzB8tWu', NULL, 0, 1, 'oGaaDz7PeEzZmB0kg28dzsrHpBxJuqrlQAiOjHpuStIaiOl3b2wn7xUz1BPfLVPA', 'V17846', '', '', NULL, 'VIJAYAWADA', '', '', '', 45, NULL, '', '2023-11-01 11:52:06', '2023-11-01 11:52:06'),
(353, 'Shivani Thakker', 'thakkershivani146@gmail.com', '2023-11-01 11:53:17', '$2y$10$PIDsY6wvjhkbw3lkXjuzM.8Gjl1UVtKbbcXT2SZPG4j6hlFy63S..', NULL, 0, 1, 'frCYdYU0AgSVGjI1eVyZN6JRq01xr9EtL338GRyLFn2WsDMbYTlUQAst95bQzQvs', 'S39406', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:811558c5-3eb8-433f-b7e2-c23d7c5c5f98?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:8d8ceec0-77bc-47d0-a4b7-2ac3788818c9?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:134dbd5c-a48e-494e-b345-570f1f3d174e?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-01 11:53:17', '2023-11-17 21:51:52'),
(354, 'MANOHARAN R', 'manoharan.r@hdfcbank.com', '2023-11-01 13:43:34', '$2y$10$uHY3Javt/1bHctZKaPIVcu4EP1T6lJ2eBLir.C94S305jK9opDTaO', NULL, 0, 1, 'cuN7PTkN94kQQJJshE8asCm9crDNSMcraIj2TT5GdEGBxroB6sV8LEqlmCjug90B', 'M21052', '', '', NULL, 'Coimbatore', '', '', '', 45, NULL, '', '2023-11-01 13:43:34', '2023-11-01 13:43:34'),
(355, 'Ishita Chakraborty', 'chakraborty.ishita0512@gmail.com', '2023-11-01 13:56:30', '$2y$10$5EqJSKDWSwoS7nmrhXTqXueZoCnka0CzFBNqHom1pb7k5z8LwdjFS', NULL, 0, 1, 'rPlhS75hk0J2HjNo8foPelVKr49CcB3HbXvHpDkQjfX3egi2CGEFzPdwym60Cwtf', 'I1777', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-01 13:56:30', '2023-11-01 13:56:30'),
(356, 'DEEPIKA', 'DEEP.SAWANT01@GMAIL.COM', '2023-11-01 14:46:26', '$2y$10$vhEMsnXKz.2uSQuxpzCL2eZ9CsPeKuuYSM1YftSuF8VgjXpQ3WSIW', NULL, 0, 1, 'niI1VI5SeUje0bOOXkp1Q76TsCbWNdA1VsLoX6m9LOPNiKSuZMDRENNKhkFaI47z', NULL, '', '', 'ACCOUNTS & FINANCE', 'MUMBAI', '', '', '', 43, NULL, '', '2023-11-01 14:46:26', '2023-11-01 14:46:26'),
(357, 'Abhay pratap singh', 'abhay63639@gmail.com', '2023-11-01 15:14:45', '$2y$10$jebSPAYcarWMkB3oPwHgc.4aRwjeD0RNlTEJpYkXwPYg4.qLDO6NK', NULL, 0, 1, 'LOk7Ums4WtBjpBpgh8B1uyjWdAzVIfZTIM9Y8gJXMiaFjgp1qtfgbKjPe7CaNVyR', NULL, '', '', 'banca', 'LUCKNOW', '', '', '', 43, NULL, '', '2023-11-01 15:14:45', '2023-11-01 15:14:45'),
(358, 'Updesh kumar', 'updesh.kumar@relianceada.com', '2023-11-01 15:37:37', '$2y$10$hnHxdcgX7yobkZfLvlmM5.7azHJRJdfj0PFcEoAhqByqMBD8krKkK', NULL, 0, 1, '1wfXKqnLH8SYUPhsLIb2MFTYQYOoPeXUvN352VwkVLDaEpeN4m3nZco8OEaVrmeu', NULL, '', '', 'Health Insurance', 'Saharanpur, Uttar Pradesh', '', '', '', 0, 'Reliance General Insurance', '', '2023-11-01 15:37:37', '2023-11-01 15:37:37'),
(359, 'Zenya Tony Vellaniparambil', 'zenya.v@tcs.com', '2023-11-01 16:24:38', '$2y$10$VX7K4Fxw0RnoVp.Qs3MElewChCRcLWN6B9CfflQX9aWzTbB/iQE8y', NULL, 0, 1, 'iHsq6kYwbfxmkYx6MXJAy4jrYFH4xZm2lljczsExvOEnKtkwcTYclWAI2nPQ79SJ', NULL, '', '', 'TI Content Services', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:8b226c82-c9f6-4b34-8b83-e1eb152b1700?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:e466587f-fb05-4347-bbbe-7c1f31270608?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:c8e389a3-a93d-406a-839d-0d7e6ff51da4?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services', '', '2023-11-01 16:24:38', '2023-11-06 22:55:43'),
(360, 'Geeta Shahu', 'geeta.shahu24@gmail.com', '2023-11-01 16:55:42', '$2y$10$yNGd8QxAfmYIXMpC7eHWHuIVEMFbte8qCw5JTm7t0yidNlTMMqoK.', NULL, 0, 1, 'szX3yGIX3XSZsbq0oteTAOmJaHKkZDOaiScmzAejItuVlbZArIGHuzVgcHEFE4ux', NULL, '', '', 'Marcom', 'mumbai', '', '', '', 43, NULL, '', '2023-11-01 16:55:42', '2023-11-01 16:55:42'),
(361, 'Abhijeet Patil', 'abhijeet.patil@puretech.com', '2023-11-01 17:59:26', '$2y$10$.kg4E5hRP4jt/uxN6FfuHeq7iO6B.f30Gx.FyEw2X8DffSvm3soBi', NULL, 0, 1, 'ewEBBmY5tndkLj64elSX5MknuSDCyPaP5dJDnUv6WQXHX7UJZZuOWZq71umdso1m', NULL, '', '', 'Human Resources', 'Mumbai', '', '', '', 37, NULL, '', '2023-11-01 17:59:26', '2023-11-01 17:59:26'),
(362, 'Nikita Nerkar', 'nikita.c.nerkar@gmail.com', '2023-11-01 19:26:51', '$2y$10$mLxCSPzMO.ml5Erv2DZFuuqpbF45JVMs564KeO4RSwYJLaagUFVpa', NULL, 0, 1, 'e6ydITc82ygJJokwVZr18MiqKjDdtRpgpMl8qldDig0j33W0fR4T2u3xnBaM6qSl', 'N13548', '', '', NULL, 'Pune', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:bc74d2d1-2b50-5fd6-b9c2-676251507a45?invite=true&promoId=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:b031edaa-b4ae-4420-a1a1-dec490310f50?invite=true&promoId=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:10eed732-004b-485d-8698-798ecc09a9c5?invite=true&promoId=XXTQGVMK&mv=other', 45, NULL, '', '2023-11-01 19:26:51', '2023-11-02 01:21:44'),
(363, 'SAGAR JAYWANTRAO SHIRSAT', 'sagarjshirsat@gmail.com', '2023-11-01 19:27:03', '$2y$10$Y7u/5u1wZUXi5JqWXjgcg.kmUk5ytPTAr9sGAz33sij6HdqoqcEGO', NULL, 0, 1, 'ymzwQ3tql3xA8baEcXOr9DpBMggZRXrMgkMDRkrdPSCTxy48jhlDGxskfWYMvetn', 'S27917', '', '', NULL, 'NASHIK', '', '', '', 45, NULL, '', '2023-11-01 19:27:03', '2023-11-01 19:27:03'),
(364, 'Vishwanath Mandalika', 'vishwamandalika@gmail.com', '2023-11-01 19:37:20', '$2y$10$S61.Cc0ZNQdGsTneoMgoKu2Ie3wNJrK1D8grfmvpidCDLa4YMXzDe', NULL, 0, 1, 'vgiQdAYnpkNHSIsXM1vKniSHqkXHOpMa8wNcnWFmizFNvH1uyMBz9odWjCQZq3tH', 'V5900', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-11-01 19:37:20', '2023-11-01 19:37:20'),
(365, 'Anitha S', 'ahtina.jingles@gmail.com', '2023-11-01 19:47:26', '$2y$10$Yyc2Hbkcduc45Bzkft5RmesjBuz0k1NN1RL03rQxQHxSZN7ig44uK', NULL, 0, 1, '4Agz6S5pYO9lZ7Mdz7ZpibDp30HdU7kszxa8RHjYcrFAs4fDLpL8SliXxZB2Aeqx', 'a40241', '', '', NULL, 'chennai', '', '', '', 45, NULL, '', '2023-11-01 19:47:26', '2023-11-01 19:47:26'),
(366, 'ganesh Bhoge', 'ganesh.bhoge@gmail.com', '2023-11-01 19:48:54', '$2y$10$/vPWgaz7Yxwtqtp3BWSq9.bOOL61rEajCcvHcC3aM3pEgJBzuL4d2', NULL, 0, 1, 'RkL6vT8bAGB71s3gd1943p31GSRNlSgWgIssTu8uomCjBZAjAGVKychFlrDeH2ys', NULL, '', '', 'agency', 'solapur', '', '', '', 43, NULL, '', '2023-11-01 19:48:54', '2023-11-01 19:48:54'),
(367, 'Ajay Pal', 'ajay.pal@outlook.in', '2023-11-01 19:51:44', '$2y$10$YibfwQpx3sIIIj5N6CgXeePSmOiwQapAW6THuvadarVTgGI/m/zr.', NULL, 0, 1, 'AJcSrbKMHkVxsR4SXTD3cnGaLDTgo3D7Ve3pFcUi56SzDtQiWGnja9mXVA7Enf0z', 'A33422', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-01 19:51:44', '2023-11-01 19:51:44'),
(368, 'BHASKAR SEN', 'bhaskarsen031984@gmail.com', '2023-11-02 01:15:28', '$2y$10$lexm3thDlvlIAz9R7vX9zOjqTxmkA.VsBD0ly9o8Gkd/RKWhT5y..', NULL, 0, 1, 'DORcxHdDh5EYW9s9our1UnaN2TKAKa6ENgCdXULU7DSY2hRbt7MCdvsijTkbWkIk', 'B6298', '', '', NULL, 'KOLKATA', '', '', '', 45, NULL, '', '2023-11-02 01:15:28', '2023-11-02 01:15:28'),
(369, 'MOHAMED FAYASUDEEN', 'fayas.sayaf.92@gmail.com', '2023-11-02 08:03:28', '$2y$10$R9yR7/dpI9IFvKiBa2xcjuwVVMhnFgPX1yUy1arqaWm7ujsWtlEXW', NULL, 0, 1, 'SZytagA27VbEEaSWSv7Tl0250qYs6U59aPb4U3z0mnC6xkZYZQScXSGfarTTMBdl', 'M19098', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-11-02 08:03:28', '2023-11-02 08:03:28'),
(370, 'Aditya Singh', 'adi.singh.123.98@gmail.com', '2023-11-02 10:49:43', '$2y$10$enFd.nNeTcHFJ3RiQXjnMusf9T8HEltTeuZc3.ZSKjxrFwYvHdydu', NULL, 0, 1, 'ZUk4M0fTAM4XUDbsnwWOoI42oPKDgpZsUBB4oBBL756v4uu4NKqrwpAwfzAqHH0u', 'A50430', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:ee5cb9b3-2ffc-4253-854f-f8dde77a9b07?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:004728ce-5654-425c-89a0-80a8c0358385?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:9cadd66f-ce07-40d9-9e55-46636dd4d2df?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-02 10:49:43', '2023-11-02 16:42:03'),
(371, 'Sathya Sivakumar', 'k.a.sathya@gmail.com', '2023-11-02 11:22:45', '$2y$10$WhchfgpOnOZeiJ/9edpzZu0G7ybKFAOFxUUiosSVCvDGdaQYvp5BW', NULL, 0, 1, 'WfsiT2rYdNDmuGRmo1SvJiazQAmkIlSlHPBCTC7Tacjir18fUMXvU2PBc6xoBcK3', 's30084', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-02 11:22:45', '2023-11-02 11:22:45'),
(372, 'LAXMAN PANDURANG NIJVE', 'LAXMAN.NIJVE@GMAIL.COM', '2023-11-02 11:23:45', '$2y$10$3QxrMtH8q7dMUzj0TzUE0uIImQ4yjFnvq41hDvMaf3/K0UYm5gWU.', NULL, 0, 1, 'xZ37KnNroWxNsCwX4RKsAlMrfRIixNDOylKbifBz7GBfVroghg0tIVgHSD2pZa9f', 'L2380', '', '', NULL, 'SANGAMNER', '', '', '', 45, NULL, '', '2023-11-02 11:23:45', '2023-11-02 11:23:45'),
(373, 'SHAGUN SAXENA', 'SHAGUN.KR598@GMAIL.COM', '2023-11-02 11:51:08', '$2y$10$JgBADlPKevchfEcoT35XG.yaIccO78qsNb2z.3yOHKm0BQ1ujvU9m', NULL, 0, 1, 'lJFisdvnYuPqEikXz8ZWMtQmFTmzOgCwcXuf0TkBaOagpY0GTphkLZeQvbJ3vPkS', NULL, '', '', 'BANAC SALES', 'DELHI', '', '', '', 43, NULL, '', '2023-11-02 11:51:08', '2023-11-02 11:51:08'),
(374, 'VARRITIKA JINDAL', 'VARRITIJINDAL@GMAIL.COM', '2023-11-02 12:00:50', '$2y$10$KhuzjpUJzmMn24eeG9BsVOzy6Rf3beey9kyl0utMgoPfd4c1oJQvW', NULL, 0, 1, 'bi3fMokywLarBRKzkjqrAYRQqSnHB14w6t2IXe6e4nCx1AhU937BVDIeweyi8T1z', 'V17165', '', '', NULL, 'LUDHIANA', '', '', '', 45, NULL, '', '2023-11-02 12:00:50', '2023-11-02 12:00:50'),
(375, 'Hemant Soni', 'hemant9355@gmail.com', '2023-11-02 12:07:18', '$2y$10$Hu0XsiTytqc0cS329CyCaOrfV1qBAYlp6Piz.CzrCMGNeEv0gg2ke', NULL, 0, 1, 's6ym7k19HtQsHSBBmhl9T8og0fGB23gfnb1nM2GOz8DWP44DkDgO1IzH5hyWrFUA', 'H6730', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-11-02 12:07:18', '2023-11-02 12:07:18'),
(376, 'Kunal Daga', 'kunaldaga16@gmail.com', '2023-11-02 12:40:34', '$2y$10$drXlpPYZ59fJ5clF6dS78OqAjI0TTRLRL.i8ii.S2ZUuO2owsJSVC', NULL, 0, 1, 'ZPaDPMD5NWwa9mjYM0Hs6wW4rAppwEvW1dkvZssnBe9t9U5rE9EMpwkuawdXApNQ', NULL, '', '', 'EEG', 'Bangalore', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:517bea22-277d-4c30-88a1-248d4ee7a1e3?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:517bea22-277d-4c30-88a1-248d4ee7a1e3?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:517bea22-277d-4c30-88a1-248d4ee7a1e3?promoid=Y69SGM5H&mv=other', 0, 'HDFC BANK', '', '2023-11-02 12:40:34', '2023-11-02 13:37:16'),
(377, 'Komal Devanna Gowda', 'komalgowda810@gmai.com', '2023-11-02 14:31:02', '$2y$10$rbMgDdgrKMl9YCxs4..aNeYorExSGoi3bhyVDR7152OLMFCvKDMhe', NULL, 0, 1, 'BzXLWv7YcOY8wGdNmIVoGNiie8xEJZBb2NPv6BpEX0IwSlNxEK7VWKnEcHvUJkW2', 'K17907', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-11-02 14:31:02', '2023-11-02 14:31:02'),
(378, 'Vikas Medhekar', 'vikas.medhekar@gmail.com', '2023-11-02 14:31:43', '$2y$10$AkPgJKGDPZQPcNEUVWKRcuosxQwpVLJoDrmc850hEK87ViWmNiefm', NULL, 0, 1, '0Kw3uHLaych6a4DBObQ4k7GqchqM1vmvNNVmBAwGzEHNSwdMjFA4Zgi2YSZSUVJk', 'V13775', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:31:43', '2023-11-02 14:31:43'),
(379, 'yash tripathi', 'yash.tripathi1@yahoo.com', '2023-11-02 14:31:50', '$2y$10$l2pRK5tlA9tAEaLAxonp6OvLI2MK6UYxJp94x0tnOLpoppx6Ge5SG', NULL, 0, 1, 'ueuhxD1O2hs3rfEGlipO6aXZPBrYTsGI76eUQk7r6Bu7dbWYaMSvmDJJyGlNRtoa', 'y4725', '', '', NULL, 'AJMER', '', 'https//www.instagram.com/p/chS6SN3IPIIL?igsgid=MzRIODBiNWFIZA==', '', 45, NULL, '', '2023-11-02 14:31:50', '2023-11-02 14:58:32'),
(380, 'Aamir khan', 'Aamirkhan887200@gmail.com', '2023-11-02 14:31:53', '$2y$10$XnfpA.MW4LEiBUOvh4FNt.zsNq5RjdW2Z/gzn5/9xOqys5mtquBBW', NULL, 0, 1, 'OP6qRRWMvpfJSyF6h2FnNxMnMF2jYGTezlb3dyzllWtBtoxhCQXZvccAfp7bbH5B', 'A35098', '', '', NULL, 'Chandigarh', '', '', '', 45, NULL, '', '2023-11-02 14:31:53', '2023-11-02 14:31:53'),
(381, 'ZARKA', 'ZARKAJAN@GMAIL.COM', '2023-11-02 14:31:54', '$2y$10$.nFgmo.IVjKCdzvaCEB7O.6sYKDIzRAmb/ye0H6gfH7ar0GgFVrU6', NULL, 0, 1, 'La6K8MyRWqVOC0twWdMBzbAqW3NcQYXzki6p8X5NxjX8zu0sTsAKudx9ARXgistP', 'Z0348', '', '', NULL, 'SRINAGAR', '', '', '', 45, NULL, '', '2023-11-02 14:31:54', '2023-11-02 14:31:54'),
(382, 'Vishwanatha Nayak', 'mr.vishwanayak@gmail.com', '2023-11-02 14:32:33', '$2y$10$/uItZCL18ROYPBLSVuM57.CXzJhILr9Asig0CVdx2.CclBCP6852O', NULL, 0, 1, 'hJh7wIm9r7v2rivqRXEfPiixuA2RHjwQSG7s41o4pPdo2bwS0l9LWfRvGT5aDlbT', 'V19942', '', '', NULL, 'MANGALORE', '', '', '', 45, NULL, '', '2023-11-02 14:32:33', '2023-11-02 14:32:33'),
(383, 'POOJA JAIN', 'POOJA171986@GMAIL.COM', '2023-11-02 14:32:53', '$2y$10$RiKGT7H27DU/PESoZznABuhsDC/GQejcU9sYKidN.Y/htUqLSOU5q', NULL, 0, 1, 'XZtTrfS5uU7qYMVMkErbhMxXACb5uQjIFyhAbTzC5cLCJeC6cZ9NIrAIUazRY1tp', 'P17045', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-11-02 14:32:53', '2023-11-02 14:32:53'),
(384, 'Neel Lalka', 'neel.lalka@gmail.com', '2023-11-02 14:33:05', '$2y$10$t5DI.agQQz4ZF8qYGgeyzuVu6kwDzRX7DF5etmR9VSL56RdDJQSge', NULL, 0, 1, 'LGsiJOSt9OXSBWIDDixw97avPXhehJrbqxVhwFS0z1FBO6s5CA8AiwoxNsKJ5dDE', 'N19717', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:33:05', '2023-11-02 14:33:05'),
(385, 'DARSHANA PATEL', 'PDARSHANA812@GMAIL.COM', '2023-11-02 14:34:01', '$2y$10$Nv1y7XbdwUB1ba2xpDaoOeW2mrCFp0omGRLSzjTlGvpysdBCJZoc.', NULL, 0, 1, 'kETmSLMTOZvbB5IK5t5KkN43dd9OrhBnw025ClbH4WIa6E6TqRvwGBaEUOUw2vKH', 'D15164', '', '', NULL, 'ANUPPUR', '', '', '', 45, NULL, '', '2023-11-02 14:34:01', '2023-11-02 14:34:01'),
(386, 'Mohit Gosain', 'mohit.gosain1990@gmail.com', '2023-11-02 14:34:31', '$2y$10$VGPwXBRXRWZAUafv9YqwHOm/FeU6pGnbgPvtuiymenAZct2pGTxQi', NULL, 0, 1, 'Wu4qgqswWFeye5armxP4p5IuH6O0lmZMTb9daCbApf12iZywimy2uK4eVm4Wja5L', 'M16282', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:34:31', '2023-11-02 14:34:31'),
(387, 'SURAJ MISTRY', 'SURAJMISTRY00@YAHOO.COM', '2023-11-02 14:34:42', '$2y$10$0jRIql10gnrsSjqv1bVuTO6r5lHTLI6LjkBzF6W7E8ahQ3VbQcL5y', NULL, 0, 1, 'fOxn1n2Ms91WK31dfZvngdu7IuqeAS7IX1Z5768DNlM5bN4p5p9Ew1Mch8rLCCeO', 'S32424', '', '', NULL, 'GOA', '', '', '', 45, NULL, '', '2023-11-02 14:34:42', '2023-11-02 14:34:42'),
(388, 'Rajeev Nair', 'rajeevcuat@gmail.com', '2023-11-02 14:35:11', '$2y$10$/Tdw0pYLfOJnVYmZZQTFveGq3IPKSt4YYXEkARO7JgnEF9uzRh8LK', NULL, 0, 1, '7kwZukD8b6zIFF8pvbBryRLDsd4Sqy2ZXUlFynJJcHXcjTM0ClHoOd6cYUsvhEK3', 'R25092', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-11-02 14:35:11', '2023-11-02 14:35:11'),
(389, 'VIKAS NARAYAN PATIL', 'PATILVIKAS34@GMAIL.COM', '2023-11-02 14:35:51', '$2y$10$JybujjtGNiICLRRwnM46JemA4hN073wfA4t0e0wiMnfosu3Eb2wq6', NULL, 0, 1, 'fVjlgAxyg5D8CQbD7L2BpfYP53T2iFHKXVxUomMWUv6Bd9qlKqPWP7k2VCsHXw1A', 'v15668', '', '', NULL, 'bodeli', '', 'https://www.instagram.com/p/CzIra9rLIYe/?igshid=MzRlODBiNWFlZA==', '', 45, NULL, '', '2023-11-02 14:35:51', '2023-11-02 14:51:41'),
(390, 'VIKALP KUMAR', 'vklp1146@gmail.com', '2023-11-02 14:38:28', '$2y$10$/1lS1wcYXKSQ4dmw7QOUSOXk1krTkti8W2.z95Znx5QEI0eRwmgv2', NULL, 0, 1, 'YlTu1vca69cciTZhz3KG62ztqGjHNzFx2f2xmIXrrIlEioxU9zJ0TSesmeyLjsAl', 'V20374', '', '', NULL, 'Patna', '', '', '', 45, NULL, '', '2023-11-02 14:38:28', '2023-11-02 14:38:28'),
(391, 'vishwesh baikar', 'vishweshbaikar2@gmail.com', '2023-11-02 14:38:39', '$2y$10$94UQtYpx7J.EPo75tSfVCOJLTewL/ID.5OJzsAeI6ABh65hOrAg2a', NULL, 0, 1, 'Gw1XLXn1HGmHLr8mnZKPAaqgyOI762SetqqUMltRk30WYqKBDoSuu747WBvOmEIU', 'V18723', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:38:39', '2023-11-02 14:38:39'),
(392, 'Honey kashyap', 'honey.kashyap3@gmail.com', '2023-11-02 14:40:15', '$2y$10$EUMIAd8o26Udu7Iotpyx6OT5g8.qFC8Ng2VftRfhwzACB1j6wu6SG', NULL, 0, 1, 'W0VEYn9xdi33RvWDXaeV8mqmcbpK6jJls3rLFcrqy1dW5W16PzMk3VGbQzsvG4Ni', 'H5959', '', '', NULL, 'Mohali', '', '', '', 45, NULL, '', '2023-11-02 14:40:15', '2023-11-02 14:40:15'),
(393, 'ASHWINI NANOSKAR', 'ashu_161991@yahoo.com', '2023-11-02 14:40:17', '$2y$10$MXyNngJRcUL8Rof.MKsoiObYHJfwMuqbLh2Gvd7rMumSnWM5fMaYi', NULL, 0, 1, 'hq943WL9TjgqmpWU6OUf0erH8hCKSuZul5CQfOJsE1rJVA7cBS9eNdUIkdF7vCaD', 'A35558', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-11-02 14:40:17', '2023-11-02 14:40:17'),
(394, 'Shubham Pratap Singh', 'sp.pratap1099@gmail.com', '2023-11-02 14:40:19', '$2y$10$gpPjGjFEYw.LhrKF7Fc9P.sTPwNStsHQqH4V63fAj.2PVzOBNV4yK', NULL, 0, 1, '8nEHMYQeSzw6874jNRFnDY9tyDr9GGTrMcsouC4swroEk3UKUmzHYovMVwteNJXJ', 'S49005', '', '', NULL, 'Gorakhpur', '', '', '', 45, NULL, '', '2023-11-02 14:40:19', '2023-11-02 14:40:19'),
(395, 'Shravan Kumar', 'pjshravankumar@gmail.com', '2023-11-02 14:40:29', '$2y$10$GyCUTDfYqpuombnQpDcxROFztHTEVJfk45zUEieUxxNF4Tzp2pkaG', NULL, 0, 1, 'RsNBDfNbS6eho234vFeZ2htZ1yVH18L5saDSaOvdMeanYd7X7lVpTylBFZ6VSSYd', 'S4837', '', '', NULL, 'Hyderabad', '', '', '', 45, NULL, '', '2023-11-02 14:40:29', '2023-11-02 14:40:29'),
(396, 'SIVAKALA M', 'sivakala.muthaiah1@hdfcbank.com', '2023-11-02 14:41:15', '$2y$10$rMD3onBIPf4gBLA93ybqw.zpYsZpd6A/6Zky3HIqp1O8gxEmfvX2C', NULL, 0, 1, 'ZuYQwJH8Y0LGyk1IHFrXxisBIqIYHs2f0tN3nYrU2Nhm3Dg33FxWPn45iPRMB75h', 'S58661', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-11-02 14:41:15', '2023-11-02 14:41:15'),
(397, 'SREEKANTH MK', 'sreefrk@gmail.com', '2023-11-02 14:42:25', '$2y$10$ma4EqFLTYYy5s563J41zH.UPvL72tL.DTl6jnsLSBcEY4/JKCxBSC', NULL, 0, 1, 'jGi0WPRXmfWZny2sgvBmfjZJge02nJzJG7VPDZMwxxOfiBnXoGjLDTBfSPcJw1NL', 'S44413', '', '', NULL, 'THISSUR', '', '', '', 45, NULL, '', '2023-11-02 14:42:25', '2023-11-02 14:42:25'),
(398, 'PRATIK JADHAV', 'pratikjadhav1433@gmail.com', '2023-11-02 14:42:25', '$2y$10$Q7EFrgKz.PAdbYf.C3IZYeZmh6BsPsDBr4LlONVGq8hste4UfNqoC', NULL, 0, 1, 'fQF6Kn8lImckO1OiFj96lqUJhmWPmZzPHfDwwFuBPzn5vNkTOVCXt45pJHxA1XHg', 'P24098', '', '', NULL, 'NASIK', '', '', '', 45, NULL, '', '2023-11-02 14:42:25', '2023-11-02 14:42:25'),
(399, 'MUZAFFER AHMAD DAR', 'muzaffer.dar@hdfcbank.com', '2023-11-02 14:44:49', '$2y$10$XGjYG3a2LUWg0BTwzrxwZ.GKz4jAo7seJmY2TyFRr.vr3hutjVARW', NULL, 0, 1, 'tgdlyJh9i0f4qi1EqoW1ECPbbOmRjFiFw40yU5f3kHtz4aqrapAosHelL6d5ldYn', 'M26433', '', '', NULL, 'LEH', '', '', '', 45, NULL, '', '2023-11-02 14:44:49', '2023-11-02 14:44:49'),
(400, 'BIRENDRA KUMAR', 'hibirendra1@gmail.com', '2023-11-02 14:46:39', '$2y$10$F762EIFTi5PAtHShR9O.hOAFWedEwZbmDoQ39JI5PpxdMu3/yuMRe', NULL, 0, 1, 'LYBqHVVLMZ7H3nyTR9uayIz3hlZUfyBwFQvYOuM3vChlH3K0Z9wyUqMsxjIhg561', 'B1657', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:46:39', '2023-11-02 14:46:39'),
(401, 'udhayasankar N', 'nudhayasankar@gmail.com', '2023-11-02 14:47:29', '$2y$10$eY.W2fHIX0sV/fbiwwm.u.x1pQKX0R/Q/uXJ/XNpH0c7WQTk5Z7AG', NULL, 0, 1, 'An31k3QGOD4H47yLWot1sDv9KrMq6k62BToTc11A0IatY0yEkLZ9ZaUINNuavd3A', 'U2785', '', '', NULL, 'chennai', '', '', '', 45, NULL, '', '2023-11-02 14:47:29', '2023-11-02 14:47:29'),
(402, 'MERAJ ALAM', 'ARCMRZ@GMAIL.COM', '2023-11-02 14:51:27', '$2y$10$iFaWKi8RFlMey/8YexRCU.UWQt9PVjC6kzE5AA5aQytjzbCe14ZHK', NULL, 0, 1, 'zVTHxZUkpd8LP6x70DPHE4ACDI5LoedP6UbnwKBrKBrZ8pepVwLL6XqSi1a8YfXM', 'M23219', '', '', NULL, 'MEERUT', '', '', '', 45, NULL, '', '2023-11-02 14:51:27', '2023-11-02 14:54:13'),
(403, 'SHANIYA PARVEEN', 'SHANIYAPARVEEN788@GMAIL.COM', '2023-11-02 14:54:00', '$2y$10$hy9s39czladUQbC0GNoE6uS1hJFaU0hXzz7CH8vpsL1BXQETKGpii', NULL, 0, 1, 'IbtAJuZ1cndV9Xc1neutTYIuQTRm31ivou33nwivx2ZIlHwqtIrDKooSUg64VPDG', 'S36684', '', '', NULL, 'BOKARO', '', '', '', 45, NULL, '', '2023-11-02 14:54:00', '2023-11-02 14:54:00'),
(404, 'Sourav Dutta', 'sourav469@gmail.com', '2023-11-02 14:54:02', '$2y$10$qhuAjZXBHmKT8G6vrg.x8.m7soH55OqgMS8H8br53SSFNnNiAuEIi', NULL, 0, 1, 'JYPuDxQgJU0PZdWSRePvmMVxfq4Wl0qTZ1q9fbqnShPERIGSEGZrTI4eNUOIW2FA', 'S41568', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-02 14:54:02', '2023-11-02 14:54:02'),
(405, 'SAKSHI DATTA', 'sakshidatta0504@gmail.com', '2023-11-02 14:54:56', '$2y$10$O7G2DReN2niB9hYu0fSTd.3xEZxBRK9FNjqcXSmjCIBrRojcwjAr.', NULL, 0, 1, 'ei6yAyipKjaRDM0vtuXo0bxePIcSjeeydGRkCX6CUNeJtPggA4TfuK7f43EtmdUl', 'S63766', '', '', NULL, 'Mohali', '', '', '', 45, NULL, '', '2023-11-02 14:54:56', '2023-11-02 14:54:56'),
(406, 'Shefali Gupta', 'shefali.gupta1@hdfcbank.com', '2023-11-02 14:56:24', '$2y$10$z6Au9v7aD6upf1Mm2Rzc8eMwIBvQWtOr72.DT78oLu1zsWG3cp0bO', NULL, 0, 1, 'gXBrYgL2BGxR3S8skQHlWTGwdxxDsVGtynFVaP8p1NFhI8qRlDUCJyBMN84YFwL6', 's49412', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:56:24', '2023-11-02 14:56:24'),
(407, 'kulkarni akshay kumar', 'akshay_239@yahoo.co.in', '2023-11-02 14:57:06', '$2y$10$evahh2.v2UPgiDUhSiDLTuLzbiOBa6Np2BvdBy3OfhIGJG3sWgx8.', NULL, 0, 1, 'ne0rT7ahoFRS3oB5zZXLXiQZxWVfySEwCcR76db37UMyrabRRFP6UmJTx4x6kAH7', 'k10545', '', '', 'LEGAL', 'HYDERABAD', '', '', '', 45, 'HDFC BANK', '', '2023-11-02 14:57:06', '2023-11-02 14:57:06'),
(408, 'neha chaudhary', 'nehachaudhary0112@gmail.com', '2023-11-02 14:58:43', '$2y$10$PquiP6AAzh5.l8JRessoJu/Q2LW1qn3WgfbAYYhJyTo8n2tcnfjVK', NULL, 0, 1, 'bFbhUNhlx13w4y6C52XfmRYpyjTsQgGjNAXHS9Ewyy9cl5AL16YqynI5EMwdgqcl', 'N1946', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-02 14:58:43', '2023-11-02 14:58:43'),
(409, 'Bharat Waghela', 'bharatwaghela@gmail.com', '2023-11-02 14:59:04', '$2y$10$K1oXa.fKA9PjwlPO3mjNIumCyNhGxrDd4BnPPalKGjFgArGOEGEXq', NULL, 0, 1, 'MNQIiiVHgIyw239dl9ddZ2JUSA3UcMD9eSM7oYFeT6m0XeQyptmD7qkNYt2vpyuk', 'B5882', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 14:59:04', '2023-11-02 14:59:04'),
(410, 'Beauty Mandal', 'beauty.mandal@hdfcbank.com', '2023-11-02 14:59:18', '$2y$10$ptI4Er2iviN23DloxN9vr.w7yzW7Q/wtkNHbmimiJt0Ruv1Li1QyS', NULL, 0, 1, 'mkPOKe3CKBS67qWUOXjj8RWz2Q6u0Da9NSKEIm150uHVEFcaEVwx20dXJm1e50g1', 'B6456', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-02 14:59:18', '2023-11-02 14:59:18'),
(411, 'SATYAM GUPTA', 'satyam1027@gmail.com', '2023-11-02 15:02:27', '$2y$10$9.KjF12eLRoAoQ8WaDVM4.7EHGkIPVFYn5ss46Q5eGV72bN31C2vq', NULL, 0, 1, 'zOYzpwcoMWrKurU84AnxT0a34cwjrnQeF1cTtfrQI8nTDyVSiE2hD7hWJ2z2bJwY', 'S27840', '', '', NULL, 'LUCKNOW', '', '', '', 45, NULL, '', '2023-11-02 15:02:27', '2023-11-02 15:02:27'),
(412, 'Simran Manjitisingh Saggu', 'simran_saggu20@yahoo.co.in', '2023-11-02 15:05:50', '$2y$10$H.e1.LhM7SJ7zVq47N.liOHddfrf77t9rOZGtRPJGbvY9v99I2lLO', NULL, 0, 1, 'T7UMlSomRQGMTlnu0WUXVoH2nkgQxPH263M5imOM8gHLSG65oN2mE8uoUFBh9myQ', 's26121', '', '', NULL, 'Ahmedabad', '', '', '', 45, NULL, '', '2023-11-02 15:05:50', '2023-11-02 15:05:50'),
(413, 'Mallikarjunan KS', 'ksarjun001@gmail.com', '2023-11-02 15:05:59', '$2y$10$CpQLJlvM8gvbikjJac9eheDJrSGrCRI5pB2op6QnTOkR0F8aBspzu', NULL, 0, 1, 'xQ1HFqiCxbsA7Hmui4SNuTPZPvbjFZsTFJhxNVap3fhUYoogveEbQG3wdkvnfwLL', 'M12229', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-02 15:05:59', '2023-11-02 15:05:59'),
(414, 'Jainder Kumar', 'jatinderk7878@gmail.com', '2023-11-02 15:06:37', '$2y$10$nzrA4zKg1kjbJgrH7hnNVu0GkWwwXQkA3GU9sIc804RjzTUWT94g.', NULL, 0, 1, 'ey6MvNseVG7G3QSKLmBNBG8cAHmLrcmHMTlHwNOcPLW5j8Bk3Jn8hHCdvmrGd6Cn', 'j6880', '', '', NULL, 'Ludhiana', '', '', '', 45, NULL, '', '2023-11-02 15:06:37', '2023-11-02 15:06:37'),
(415, 'ARTI SONI', 'ARTISONI357@GMAIL.COM', '2023-11-02 15:09:02', '$2y$10$g./GUHqsFRQl8nnOsFa9YeBkGWs8CpQHl8M2Jjzi3.dNfiw0Zg3V2', NULL, 0, 1, '84XQU2favgC7Xl70sl6iPfL7zbPmHCr1HDpCS8rNjUdGilzxmZFvUB5DBbdhYVCW', 'A39383', '', '', NULL, 'BANDA', '', 'https://www.instagram.com/p/Cv_Xno5rHgcZWkkuVuoh6YE-IQYAhtD4WyubJOO/?igshid=MzRIODBiNWFIZA==', '', 45, NULL, '', '2023-11-02 15:09:02', '2023-11-02 15:18:02'),
(416, 'RAVI KUMAR B', 'ravikumar.boya1991@gmail.com', '2023-11-02 15:14:45', '$2y$10$ZNQH.6.V6ETqvbyolc3CXeVpy3..vdbHqYej1jyOWjS/dqVlPvHxm', NULL, 0, 1, 'DfEBUtV111xZLc6nS6nJwMRk0qQ4obrg6jiRKMVUyfMnsfRMp7jHWXZOq9jevSMA', 'R29235', '', '', NULL, 'MAHABUBNAGAR', '', '', '', 45, NULL, '', '2023-11-02 15:14:45', '2023-11-02 15:14:45'),
(417, 'skanda', 'scuds85@gmail.com', '2023-11-02 15:16:54', '$2y$10$bfivPx35m30/CHG2j9hbh.AUeuTemLExirBDTP1uN0l1euha/gzHO', NULL, 0, 1, 'i1FYHg6wYUnUSx2h25WHImpON4ctvYOKLDp8HDBPI0gdeSFhrXjOdRzi8fC6K60J', 'S56994', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 15:16:54', '2023-11-02 15:16:54'),
(418, 'YESHWANTH K', 'hyeshwanth549@gmail.com', '2023-11-02 15:18:33', '$2y$10$kUsw37PWURArf5iFVM7x/OUj/vL9vfTnkRj6Wf8PW/oyGDQ91yTNm', NULL, 0, 1, 'AjbM5WMyg24H8rZKgnOS2Vl2L0HMVXQO0zJonKk0eLiOQaAsMpuvSdywkfLRSfqY', 'y4831', '', '', NULL, 'Coimbatore', '', '', '', 45, NULL, '', '2023-11-02 15:18:33', '2023-11-02 15:18:33'),
(419, 'Rahul Prakash Tatkare', 'rahul.tatkare@gmail.com', '2023-11-02 15:24:51', '$2y$10$e6o56gZ440GDliILGWzYJO5MLrXTDbnOK48mHP5091DjLOMt4LevW', NULL, 0, 1, 'wzM4CX9F0YMwHTTH1AbcCBwPeaBPEIdVPadmiREfm39DQ3tQQenJdw1kSkXlN7o0', 'R29069', '', '', NULL, 'Thane', '', 'https://www.instagram.com/p/CBKYrielt_Tqray5hWxmrZp1LepnEWIVXjpnSg0/?igshid=MzRlODBiNWFlZA==', '', 45, NULL, '', '2023-11-02 15:24:51', '2023-11-02 15:28:31'),
(420, 'Yasheel Katyal', 'yashkatyal140@gmail.com', '2023-11-02 15:27:44', '$2y$10$etTWmEnIvApFHeSA17YEJua1IBgUTYy2qRonz5O3.r6byM7oamBtq', NULL, 0, 1, 'ch8LmlFtuCmL1kh0V0OW4FSDj8WOJZmy9jLOK6bkpHXtpTgT7fD3MNZ8Tpu8Fq5o', 'Y3930', '', '', NULL, 'Mohali', '', '', '', 45, NULL, '', '2023-11-02 15:27:44', '2023-11-02 15:27:44'),
(421, 'Arti', 'artianot2201@gmail.com', '2023-11-02 15:44:33', '$2y$10$0.O3jtH6Vax7YObEOLgmEeXJ.hAU8v5u0y7NSxLQFkJJNUq.Tyu8.', NULL, 0, 1, 'IcjTIRaWJGxkyawbIRBJcrdHkxdwn0jx7TdaDOKT1Hudy2LyP3pPf534fML8zPLW', 'A34601', '', '', NULL, 'Panchkula', '', '', '', 45, NULL, '', '2023-11-02 15:44:33', '2023-11-02 15:44:33'),
(422, 'Karthick Raja R S', 'karthickraja.p14079@iimtrichy.ac.in', '2023-11-02 15:54:02', '$2y$10$R5IxN5UJSwTQ8JeKwh3Ltuk3qLDEwdUWD4GIR5kyD9tFK40ye0cSm', NULL, 0, 1, 'Y7FjYMNUrtUPrVh30wtIsd22kZ1msRQW7rCQHee0Gq7XW2HDyTpje1jf6gj0ExRs', 'K13817', '', '', NULL, 'Bengalulru', '', '', '', 45, NULL, '', '2023-11-02 15:54:02', '2023-11-02 15:54:02'),
(423, 'Deepti Verma', 'deepti.verma01@gmail.com', '2023-11-02 15:54:48', '$2y$10$higf8VDwgotsXeJwNXnUh.HgYWgPhksb/0K.FlwOEW3tEDl89gXUS', NULL, 0, 1, '5xOjGApnAaRPJaqrPDrPgomDxd78M38hQnEakPZbICPAKgUku3jXEnYHJhy2Mg5d', 'D16929', '', '', NULL, 'Mumabi', '', '', '', 45, NULL, '', '2023-11-02 15:54:48', '2023-11-02 15:54:48'),
(424, 'Jasleen Kaur Anand', 'anandjasleen0@gmail.com', '2023-11-02 16:07:15', '$2y$10$v3ROHd9CzYgRheS2lnpZ5eqwp4w6cUNRPSB4lUdRLpEs4Ko1aYsnq', NULL, 0, 1, 'ZI4neUMmc5S2SuP600VvGxPu4ZADRcMVh0jpe6TLCCoZXEy40joL4wbILDlPx9Wy', 'J8505', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-11-02 16:07:15', '2023-11-02 16:07:15'),
(425, 'Samyuktha M I', 'samyuktham@live.com', '2023-11-02 16:08:43', '$2y$10$Sk2G0L7DhpHWuDfRw3moceWu9uXXXB9iWlIGP0/k7MT8aKHyHpSvW', NULL, 0, 1, 'VDGldRD3M7bg75Db6FsBRBClYUUFu2nHSe6J3k1G1tGuUGnNCtvfeKx89SlpJM2e', '-', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 16:08:43', '2023-11-02 16:08:43'),
(426, 'vinod karma', 'vinod.karma@hdfcbank.com', '2023-11-02 16:16:26', '$2y$10$pMuP06jF5J0wE2naJairm.CC9VX63SB1se1PIelxsVlO.G6jsGYqe', NULL, 0, 1, 'yutxt5AQs7jffzYffjj1NulSAO7QAmMUsF9RpW0hZyQF6bgK1lJ230i2xcBkBebT', 'v18492', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 16:16:26', '2023-11-02 16:16:26'),
(427, 'Manikandan Palani', 'manisam23k@gmail.com', '2023-11-02 16:26:32', '$2y$10$iCY5r5Jy7ISuboUqYjDLbukPNmqTR5Gxyn.ysSACvMcdgT7SgfrnS', NULL, 0, 1, 'DIi9OW8kDrhOVM6Fy288z2RFngjZSSBzWrT45y5tCCaJ3D0fJICBRpEDBuozkkFv', 'M19679', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-02 16:26:32', '2023-11-02 16:26:32'),
(428, 'Sumit Batham', 'sumit.batham@gmail.com', '2023-11-02 16:27:05', '$2y$10$PyuKQ8OO9fjxA4Zgz0GkV.FQJ4rTIqLlWngAlxp7L1wiOLJzcvjU2', NULL, 0, 1, 'YcEMdHKh7BmvRSZjhc48Bt2CaNixVurJ48YEz2Q2hAM8QIeDdAK9qJyO8wdI0B0t', 'S29718', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-11-02 16:27:05', '2023-11-02 16:27:05'),
(429, 'himani', 'himaniarora990@gmail.com', '2023-11-02 16:41:39', '$2y$10$.ejLkuAGY4SnwwV52vgU9uSuR.VaFr7jv1847YyMXw1cA5RUKvIhG', NULL, 0, 1, 'LTTHGDAkumzHWj4hVFdMlcGwxZZfTy3FZpqZkWHrg9gw3HEWRqJVSSsKToK4ctAc', 'h8511', '', '', NULL, 'panipat', '', '', '', 45, NULL, '', '2023-11-02 16:41:39', '2023-11-02 16:41:39'),
(430, 'SONAL MALEKAR', 'casonalmalekar@gmail.com', '2023-11-02 16:51:18', '$2y$10$bdF2kIgddS9DPfMYIarpM.VeTl3KwzF4AhJ/YXECWSi7FS35YAoKC', NULL, 0, 1, '0dsuKZd5zYy5QOdLZKssOrgiIXw6yF6Qmu22vng7rhGRcsYSQ9HAfYPMff79Kv8o', 'S65050', '', '', NULL, 'MUMBAI', '', '', '', 45, 'HDFC Bank', '', '2023-11-02 16:51:18', '2023-11-02 16:51:18'),
(431, 'Dipanshu', 'Dipanshu.mithrani123@gmail.com', '2023-11-02 16:55:37', '$2y$10$ddUrZt40Lvk2W4q25STXqOv2iO5LjYxvZd8dmgaayTMoTcy80m0eK', NULL, 0, 1, 'Qmb2nOwMBKpvP4P8DJxOVutF3L0OAw84JMiI8KU24ZTepJbqUBcxW9vy2nBvDVGe', 'D16600', '', '', NULL, 'Karnal', '', '', '', 45, NULL, '', '2023-11-02 16:55:37', '2023-11-02 16:55:37'),
(432, 'Deepthi Virginiya H', 'deepthi.virginiya@gmail.com', '2023-11-02 16:59:48', '$2y$10$G/io7b8G6P8H1Y4HPMThRuGWEDZkplbHZhljw81CoJjUjn.p/munO', NULL, 0, 1, 'VNMZgUt0PO64oyPcZVct9xQ9JY3EgO8sVNs0rD8p6UlJslMHmxOUaiHtx8ZWus2K', 'D17125', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-02 16:59:48', '2023-11-02 16:59:48'),
(433, 'Sanobar Ambi', 'Sanobar.ambi21@gmail.com', '2023-11-02 17:09:01', '$2y$10$qHHMPEKzWGT802LIp4kYpuO01N89PbS7OpKLZuqTab0fSr0KZ6YFW', NULL, 0, 1, 'hzwamoj4meaBpHoBRFhritYGWRZ4L1ap0afxQhtE4DUIoprtnmuQLsLMjEI3xkTr', 'S29312', '', '', NULL, 'pune', '', '', '', 45, NULL, '', '2023-11-02 17:09:01', '2023-11-02 17:09:01'),
(434, 'VISHNUPRIYA', 'chittu2020@gamil.com', '2023-11-02 17:19:41', '$2y$10$FmSOVjPwFwaB9dBunwkix.T81cmrifEn9XOPV58VuqpGQAzW7vqbK', NULL, 0, 1, '8MUZWhx8lofa45qsrdq5pe3fgKk5gUFCANR5bvOoFWPbFrk0pjhOm85MBZb2uJvb', 'V8458', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-11-02 17:19:41', '2023-11-02 17:19:41'),
(435, 'shubhangi kale', 'kaleshubhangi143@gmail.com', '2023-11-02 18:08:15', '$2y$10$0SusY2kc9nzF4FqJLRH3GuU/KvmfGEDMyOFRj5EEgMJ71VVrFUob.', NULL, 0, 1, 'LHRsjHmG6Y5RRdB3NZWJAcOgjn5s4iH4BvCkzDjbzLxmTSrJz6sUFypieIjWd45f', 's67028', '', '', NULL, 'nashik', '', '', '', 45, NULL, '', '2023-11-02 18:08:15', '2023-11-02 18:08:15'),
(436, 'ZAVID MIYA DAD', 'FARYJAVED@GMAIL.COM', '2023-11-02 18:39:00', '$2y$10$b5YfxmOzq4jEhc9Xwxqf9OdPp4F9iFtet8QuIJe867w7h.qsH1iI.', NULL, 0, 1, 'Htij6oLrlZnOBczWlj22Hxg2FaxqYVbGIWqGmyp7FUCHawrFtKVO9u2v5hixN2Ca', 'Z0400', '', '', NULL, 'CHANDPUR', '', '', '', 45, NULL, '', '2023-11-02 18:39:00', '2023-11-02 18:39:00'),
(437, 'Hiren', 'nirvekara@gmail.com', '2023-11-02 19:06:35', '$2y$10$vk4LrM4ughob5HXVaFwMAuQkzblUAEbSc4.KqqeN9Qebvb9WX5U6q', NULL, 0, 1, 'WBWOEntdGSrw7cHGOwcoxbGmouPJ8Rlov6sUZUj4YVgqmWeicAmIRXXTSXQzqp04', 'H6050', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-02 19:06:35', '2023-11-02 19:06:35'),
(438, 'Rohit Kumar Narayan', 'rk.narayan@tcs.com', '2023-11-02 19:10:40', '$2y$10$4WWci7S957IJL2yv24xuB.2cn7643V319kqV0In7ilWl.Fd7rmX7y', NULL, 0, 1, 'zXwWyu0RwClwnhXua5WVyJX9FBWpfrR1nnD64VI8NKwM6xUadyTT06xXyT7TkvsN', NULL, '', '', 'Merchandising/ Design', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:162743a3-02f0-4ebc-9c0c-6c0b800bc9ae?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:5c5a32ee-2006-4f16-8c5e-c170f5539fb7?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:bd7c42d0-6755-4cef-ab6d-384a9e2cd155?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services', '', '2023-11-02 19:10:40', '2023-11-02 22:44:34'),
(439, 'REKHA YADAV', 'rekhakomal.rk@gmail.com', '2023-11-02 19:17:33', '$2y$10$.iitfVZuV12.DjdpQj9Sc.ErLn1BbLwAOutij0cd9ZrlHR0C78WhC', NULL, 0, 1, 'eqhDgGjlCZdtZMJxXf3E41ZsFeib2NIqbaReBSBgK0Le0q4A1i34YNCt7Fzt2wNm', 'r18874', '', '', NULL, 'Noida', '', '', '', 45, NULL, '', '2023-11-02 19:17:33', '2023-11-02 19:17:33'),
(440, 'Shirsha Thakur', 'shirsha.thakur@tcs.com', '2023-11-02 19:47:54', '$2y$10$0ainZFQSbB8ce6tPMHygKONmKuGAwovBA6uyHORMGv7PHCBEg56VK', NULL, 0, 1, 'ibUWeRdCtgspwpHITD1bC0vOsblfcRJ3873yotTp74oDMlslNXHQhvD3TofoNSk6', NULL, '', '', 'TCS Interactive', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:cb58623c-7dd4-466f-9ece-1a2ae4db9f99?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:5a6c45ab-8628-4335-b4ef-e86e6db9a9b3?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:27c427e8-f83e-408e-a1d0-5b435e8ff47a?promoid=Y69SGM5H&mv=other', 0, 'TCS', '', '2023-11-02 19:47:54', '2023-11-02 20:34:29'),
(441, 'Jigar Desai', 'jigardesai90@gmail.com', '2023-11-02 21:25:53', '$2y$10$YFsDvab6DjZzW2P1KQ3LGOK//9NMF7TR/PRrLt2gOUzofUD.6VQd.', NULL, 0, 1, 'sU59GqtWwSzmpNtWSEv660g1ESzsH9Qgm9M1WwdzKJ9m6PkTAVdYMhsBBWGm2Sj2', 'J1555', '', '', NULL, 'SURAT', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:262ad2e8-7f47-4577-8038-65daed93a9be?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:262ad2e8-7f47-4577-8038-65daed93a9be?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:262ad2e8-7f47-4577-8038-65daed93a9be?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-02 21:25:53', '2023-11-02 23:42:33'),
(442, 'MURUGESAN N', 'murugesh7@gmail.com', '2023-11-02 22:40:37', '$2y$10$Wfa8q5JVsW3plbEtWu/YnO03Xt26FU4.QHF8Rylrb7P92y6Mlhkce', NULL, 0, 1, 'mwWzHezsWjYu091MrG45vaatn4U6Ey750ZUO0WhqXJkAhsV9dDL2wyfsyXKGumjL', 'M27457', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-11-02 22:40:37', '2023-11-02 22:40:37'),
(443, 'PAYAL AMIT LAD', 'payal.lad2@gmail.com', '2023-11-03 02:08:08', '$2y$10$dZAx3stOdCftV.qcGy7gCejvRshEa31k3NHfXTvVpuP2MGIWmRiI2', NULL, 0, 1, 'Obzp9nmEiJmGRb4AGeGdP7zBvyJaJFXgO5lDtbcAkTBtpup91MEyrSCNx2nzojdI', 'P25624', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-11-03 02:08:08', '2023-11-03 02:08:08'),
(444, 'MOHIT CHAUHAN', 'mohit4310@gmail.com', '2023-11-03 10:12:18', '$2y$10$EzePC/OESzce4x7dglgqSOmx9gkXld/L8Cu9/Frf0WnaYygS8UDky', NULL, 0, 1, 'uCnvFSV55LUO5NvXIfXIbKRtb5XOgAjWkFGgud9Iqg48oZd3QF7naWcxSp8A8LjP', 'M21498', '', '', NULL, 'Surat', '', '', '', 45, NULL, '', '2023-11-03 10:12:18', '2023-11-03 10:12:18'),
(445, 'Sharvi gupta', 'sharvigupta25@gmail.com', '2023-11-03 12:43:53', '$2y$10$1t0BJXMi7lzdvxuukncr/eH9fhtKi3HezilBGkkJKSaEWcYGhGmp.', NULL, 0, 1, 'SRGPSUEcDzRVqysN0UUF3XSZyvTHxYcYOsXcVepNfG5KqyPMlqFxnYfblRqVPsEE', 'S53248', '', '', NULL, 'AMBALA', '', '', '', 45, NULL, '', '2023-11-03 12:43:53', '2023-11-03 12:43:53'),
(446, 'REMYA M', 'zprakas1983@gmail.com', '2023-11-03 13:56:45', '$2y$10$4ozRNfjT3p5i2f0vZ08C7ud30ZZGp1SCSzfOBF9/hNfSI7OIWLuKG', NULL, 0, 1, 'MmsjcUG7CdIC9TfZaiViGwah9BiPjkrkpF0bPWZTEFZ9AyFXyvRU1aO8B2EEVUOy', 'r24937', '', '', NULL, 'chennai', '', '', '', 45, NULL, '', '2023-11-03 13:56:45', '2023-11-03 13:56:45'),
(447, 'Apurva', 'apurvarj@gmail.com', '2023-11-03 14:10:13', '$2y$10$UKr.Slax6YgHRsMnaXFxt.i8VPfy2M/sEVhoX2WHq3IPQtfan36KG', NULL, 0, 1, '4o4yGlA37pUFcoaZTjl4oaaqSn3pGpCp5puOQhDYoczeeUlA6NKiuh025u1DIuFS', 'A39764', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-03 14:10:13', '2023-11-03 14:10:13'),
(448, 'SANJANA SANTARA', 'sanjana.santara@hdfcbank.com', '2023-11-03 14:58:24', '$2y$10$rBy/inQ8voq8yVYzjK9acuRTgCmff2eZ4.LdnfZki0YumbSet0TAO', NULL, 0, 1, 'UqV487qOQF60HvR3gfyvjdrP59OLCFQaBJdEzbj8Us8s6t38yVg24tXvgrFdKehZ', 'S67508', '', '', NULL, 'Lucknow', '', '', '', 45, NULL, '', '2023-11-03 14:58:24', '2023-11-03 14:58:24'),
(449, 'Pravin A Shinde', 'pravin.am.shinde@relianceada.com', '2023-11-03 16:24:08', '$2y$10$cJityxPdoibgDbP1d.frY.3Eppyl1F9TBVUBTSEHZkL2/NsQm5XF6', NULL, 0, 1, '1rOgy7esR0uGUUu4j2Z0x080tXewUARJdcIpnOLa0wOuFDob8nq9uDK0CYFMaKNk', NULL, '', '', 'IT', 'Mumbai', '', '', '', 43, NULL, '', '2023-11-03 16:24:08', '2023-11-03 16:24:08'),
(450, 'Kunal Raheja', 'knlraheja@gmail.com', '2023-11-03 16:24:12', '$2y$10$F9/29WVv6wlkfA3MecR7Juau8G7KlCQaDszmkvmOhZxhqAdnCubsC', NULL, 0, 1, 'ViIR3vw75Z00vkC3OUmCcoACeoLJHA5O9aRzFA08bwFxNFdPGGgp9yrQeU7gnQRS', NULL, '', '', 'Design', 'Gurugram', '', '', '', 0, 'Adobe Systems', '', '2023-11-03 16:24:12', '2023-11-03 16:24:12'),
(451, 'Himanshu Gogoi', 'gogoi.himanshu@gmail.com', '2023-11-03 17:30:46', '$2y$10$UVAucGJFAl1/i0fxnzquteSLGjy76ny4DPzC82M0xv85hi7u6u4q6', NULL, 0, 1, 'l0hnIiG5qPMAc1uCG4XVbJ8881l03RgrccwgL2Q9JDq1Eujg7qxBdJCoqemdqfPx', NULL, '', '', 'Visual Merchandiser', 'Mumbai', '', '', '', 40, NULL, '', '2023-11-03 17:30:46', '2023-11-03 17:30:46'),
(452, 'Ansh Sharma', 'anshs6818@gmail.com', '2023-11-03 18:43:08', '$2y$10$zqRsmQY0xFsTZwNnPlhjne3JkPMB.wh62PhdMrKm3V9n63EPiavl6', NULL, 0, 1, 'XG9f8soHlgMELhBfFNUOn6H9H1ycu1MQ6AiOI9CAfDWiUBJmLcKuows3kGluCLgF', 'A42241', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-03 18:43:08', '2023-11-03 18:43:08'),
(453, 'VISHNUPRIYA', 'chittu2020@gmail.com', '2023-11-03 21:23:51', '$2y$10$4KllTAXWOgPzs7BBwBBlvuvZ7ZiIInMxMtzckDsemTPgHWJ3.Dfey', NULL, 0, 1, 'NDomeslRiuXu7oUs0x0bMoAkWSB8SXLJRhFns5qNBOd7pYGpwtTIdboPTxldLtLT', 'v8458', '', '', NULL, 'CHENNAI', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:4669cfad-a817-43bf-9021-6caf9f085172?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:fb84d550-4633-407a-965c-3b647ef845f2?promoid=Y69SGM5H&mv=other', '', 45, NULL, '', '2023-11-03 21:23:51', '2023-11-08 23:02:59'),
(454, 'SANKET PREMANAND KAMBLI', 'sanket1005@gmail.com', '2023-11-04 01:00:52', '$2y$10$QSv0d5Br3rLYAdXK1XNKs.MBGY5v7gF5AUheh9zeAPpd8bFBhCxV2', NULL, 0, 1, 'WD1Es0gszDYDc40zRwTuQaRLSJekmdw2K5bA7UqpAn0thdWcUHPypGXyojuafLUo', 'S66119', '', '', NULL, 'MUMBAI', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:225a2964-dd5f-4053-90a7-8f7beb08cf3c?invite=true&promoid=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:225a2964-dd5f-4053-90a7-8f7beb08cf3c?invite=true&promoid=XXTQGVMK&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:225a2964-dd5f-4053-90a7-8f7beb08cf3c?invite=true&promoid=XXTQGVMK&mv=other', 45, NULL, '', '2023-11-04 01:00:52', '2023-11-05 17:11:50'),
(455, 'AISWARYALAKSHMI R', 'aiswaryaa21@gmail.com', '2023-11-04 16:20:30', '$2y$10$ffX9lX8FXIJCmaqFFWij4.7kIYyhpj6HR0V97oiQkcpq9AuqiiKkC', NULL, 0, 1, 'r8s25BWA46CzFCqXdRRmYGY9u9JNn2ZtV3rB9zjdhEsYT9NNnTYRhv85dYwaWgWr', 'A38700', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-04 16:20:30', '2023-11-04 16:20:30'),
(456, 'Meghna Ruparel', 'maggie.ruparel@gmail.com', '2023-11-04 18:09:29', '$2y$10$UGAfU6ybmkaunADY8xOA1OYNyI8JCcHHTVD1y3IwS4T/e7IfcI5K.', NULL, 0, 1, 'jEzcRXI5UVdwCLe9OGGBioCPn01zItCVfbVs75IJzeg1mv1jKxv9dLQm6XhLBNf2', 'M13375', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-04 18:09:29', '2023-11-04 18:09:29'),
(457, 'Meghna Ruparel', 'meghna.ruparel@gmail.com', '2023-11-04 18:11:06', '$2y$10$1.WLyQGaNjVa68rRltqzX.TSLiJ2RLXVjZvE8nM2iSDLTvrCMzCCW', NULL, 0, 1, '5NmTsIuhOepB4yZhvEut7dLNM9R3gxgB4KHgd0bymEkJlUIdF0xaEX9UJZhylRIp', 'M13375', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-04 18:11:06', '2023-11-04 18:11:06'),
(458, 'Moses pervinraj P', 'moses.p.pervinraj@gmail.com', '2023-11-05 20:34:21', '$2y$10$Az7jzKPKRU1O/fGRDD2bKO2GgaKeECPCN0TPLiZII9lWsEM8/k1KW', NULL, 0, 1, 'MpAZOS672FferdglLDYrJoZzzwMPGvc1LGhpIVxMSFmFJKRSTpUTmtpbsQXdd9sX', 'm20893', '', '', NULL, 'chennai', '', '', '', 45, NULL, '', '2023-11-05 20:34:21', '2023-11-05 20:34:21'),
(459, 'Ram Kumar S', 'hi2ram@live.com', '2023-11-06 10:36:24', '$2y$10$xIst3dgRAnKFekS5LHWL0OeCADO9iOcCgXGKSfjn1e9eEH/HUdrHC', NULL, 0, 1, 'za8vDjiYsdEYbAHEKvQJO46D0sucgwunxcnnNQsQbgU1i7lbnJuKUlQoVc2tthQX', 'R18418', '', '', NULL, 'Chennai', '', 'https://express.adobe.com/post/PPlqTseppyTB4/?w=7209357208860', '', 45, NULL, '', '2023-11-06 10:36:24', '2023-11-06 10:55:38'),
(460, 'Ramsingh Subramoniapillai kamali', 'ramsingh.anand@gmail.com', '2023-11-06 10:48:00', '$2y$10$Fs6yfxu5jUIF8K6oYzARheOTDgG7JMZHUGp22JzWofri74VKVvQBG', NULL, 0, 1, 'J1JldaAJppZkkIchsb8U7VvfKmNXYQMfigthhvNDtQRxzKGCdWNGdsWHsSscXr6r', 'R22745', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-06 10:48:00', '2023-11-06 10:48:29'),
(461, 'PRASHANT HANFDE', 'prashanthande.2013@gmail.com', '2023-11-06 11:00:22', '$2y$10$j81R2aDuPXAXKE9ahPQTfu1vj9lLIdq9VtzY4qsnA/WGe.Z.Vccsm', NULL, 0, 1, 'wocidU5cJgiiWwAmLrtFbxxVFyDLWDNb5OoxAkcvVVNqAxGyUrHWEGexXkhKM7WO', 'P20950', '', '', NULL, 'PUNE', '', '', '', 45, NULL, '', '2023-11-06 11:00:22', '2023-11-06 11:00:22'),
(462, 'SREESAN P S', 'sreeshanperumbala@gmail.com', '2023-11-06 11:03:07', '$2y$10$5jK0reFNh8Du2tRagk/vsOM6w79T0jiS50RvT769pVHViWrXB.J.u', NULL, 0, 1, 'fMiX2br93yBJ3Lto8uboOIHEwqfvbWiOYe0aji1WjIw2PXpLE6W5tpBUXvbdU436', 'S60684', '', '', NULL, 'KASARAGOD', '', '', '', 45, NULL, '', '2023-11-06 11:03:07', '2023-11-06 11:03:07'),
(463, 'Rakhee Saha', 'rakheesaha@gmail.com', '2023-11-06 11:08:02', '$2y$10$sb7JP5z/clqCmOpGGUIk1O2krmp70DMd/zJc/DpIhLixG4BhbliYa', NULL, 0, 1, 'aFM7WVeQ9QWHEtZEfven0WSlmY3DNGKXVJQvvnUYlBeMTxKio4HFXI1qVKQBsEf9', 'R3469', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-11-06 11:08:02', '2023-11-06 11:08:02'),
(464, 'Vaishnavi Dnyaneshwar Handge', 'vaishnavi.handge@hdfcbank.com', '2023-11-06 11:12:31', '$2y$10$a7aKzzKrukVM.QX2IHMZ/uGqrgw.fpf5KaynY67DoYTwB8cwHNBz6', NULL, 0, 1, 'piejJc70dnwA4jHC2RNSoRt6609IF3kIPJL3DCBs6MK8qlMvkSSSOAClHL9OrZ0m', 'V16351', '', '', NULL, 'nasik', '', '', '', 45, NULL, '', '2023-11-06 11:12:31', '2023-11-06 11:12:31'),
(465, 'Siva Kumar', 'sivaadv.kumar@gmail.com', '2023-11-06 11:17:22', '$2y$10$s1o9kI.CwWurO8jbTPGHVuqhCBvy6znfSv3XRMfEvxxQN.vBWz9Nq', NULL, 0, 1, 'UNro8gbKNWodgOqVoWjN4FxLxY1MbyadVlIjxY7ga95tUXyWKNd1gyDuSeJnvf23', 'S66050', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-11-06 11:17:22', '2023-11-06 11:17:22'),
(466, 'Shweta Manasseh', 'b.shweta@yahoo.com', '2023-11-06 11:54:44', '$2y$10$nLABfszz8b1WJsTN9qx/funw1y05fXhZidcae3mJ8ys5btrYbFXZW', NULL, 0, 1, '4ZzQyZBFmdtesOxXli5egx9MW8yx6nyqPdQHxzwqyyZkARXwAyg4APzBR5mSuu2a', 'S51360', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-06 11:54:44', '2023-11-06 11:54:44');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `isdelete`, `status`, `token`, `employe_id`, `office_email`, `mobile`, `department`, `city`, `email_header`, `zoom_teams_background`, `linkedin_cover`, `company_id`, `company_name`, `location`, `created_at`, `updated_at`) VALUES
(467, 'Karan Singh', 'Ks9772649117@gmail.com', '2023-11-06 11:59:39', '$2y$10$/cIgE.bwr0MqDzQ3rrjW4uy7JL0JJNsCgS/PMvnP6qEMoP1IUURuu', NULL, 0, 1, 'M4U1jtMBGGjCeSPYKobeIzm9ojItZQwGQYeVzpP8Z2mg5MqnUZmhAiklmL1R005W', 'K10939', '', '', NULL, 'jaipur', '', '', '', 45, NULL, '', '2023-11-06 11:59:39', '2023-11-06 11:59:39'),
(468, 'SUBHENDU SEKHAR PANDA', 'pikunpanda6@gmail.com', '2023-11-06 12:27:06', '$2y$10$DkNkgCnqFMYPjnutxcBmFeU/wPUkJOAXsDOiXDUHg4LrKMm98uUwW', NULL, 0, 1, 'zJ5i1Bh0zbfYTU0iAIam88sYhgPqTr0Rn4Vf0wj1E1eqzR0NLYQKvpYiqcf0zOc1', 'S59748', '', '', NULL, 'DEOBHOG', '', '', '', 45, NULL, '', '2023-11-06 12:27:06', '2023-11-06 12:27:06'),
(469, 'Niloy Chandra Roy', 'niloycroy1977@gmail.com', '2023-11-06 13:06:56', '$2y$10$RP1pwX2fB4swFaMZIi20..uB04O6NZ5vKPNGeiKAeoTFLFXjTBEj6', NULL, 0, 1, 'XloscrY9xzM0YOdxcygHBMf3EHTI5WO9jVQctqDLy0Tit4NhMFHGdY7dPdtT6mA7', 'N19598', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-06 13:06:56', '2023-11-06 13:06:56'),
(470, 'Vijender kumar', 'kumarvijender1664@gmail.com', '2023-11-06 13:44:10', '$2y$10$ci30q7yKkl0m.qWuvNapNeDq/hAnP.HWs/IfG1bw/hKgXfTvSf6Je', NULL, 0, 1, 'pJHZxIP7J67qLBF7cEePXZ9Q6MDy7efLyGV1dzMRzmfHINWMuTzksga04EvPEkZM', 'V19789', '', '', NULL, 'New delhi', '', 'https://www.instagram.com/p/CzTRFkDMcAc/?igshid=MzRIODBiNWFIZA==', '', 45, NULL, '', '2023-11-06 13:44:10', '2023-11-06 19:11:36'),
(471, 'Mrinal Talesra', 'mrinaltalesra@gmail.com', '2023-11-06 13:49:39', '$2y$10$9TYRh2/oYT7DVGPLdsV2DueeJpNAAmwF4qCtJoT5wj5GDgFzOXMtK', NULL, 0, 1, 'Hgvp0zNdqPGQm2hX72bMagDqtrUVNLqDwdmSoA4HictsYahcQKQ9Zl4jIAIm3gjB', 'M18192', '', '', NULL, 'Udaipur', '', '', '', 45, NULL, '', '2023-11-06 13:49:39', '2023-11-06 13:49:39'),
(472, 'Ajay Sharma', 'saiajay.sharma@gmail.com', '2023-11-06 14:07:40', '$2y$10$C0XlftJ3kKkkB5/Ggt76WeYumU6Hvd3poBrMpRfRMphBNLIGhAhhC', NULL, 0, 1, 'KxAOEHvYdTEQnKNKJfiVfm6tbnB1Sfm5QNK7FIz7FXNy1Rr9LStQxLb4MDKHhGls', 'A0499', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-06 14:07:40', '2023-11-06 14:07:40'),
(473, 'Saumya Mukherjee', 'saumyamukherjeee@gmail.com', '2023-11-06 14:24:17', '$2y$10$u.WWFpLpdhoArXy6ArfXm.mq51T1jTvS0.n0N828e5jaQwZ7xKXPW', NULL, 0, 1, 'oDy4L6Kqilp6FbwuPLjeawRn5aKAazPTTZITjmeuE6KEaDSBxprV8TAfHnNRAeXQ', 'S12363', '', '', NULL, 'Kolkata', 'https://www.instagram.com/p/Cqxus6gy245/?igshid=MXNtN2t1YnpqcXltcw==', 'https://www.instagram.com/p/CcX712UJ7QQ/?igshid=MWl3MHR5ODRtZWZtbQ==', 'https://www.instagram.com/p/Cwa8Xo_SsGJ/?igshid=MTQ3aDY3ZzYyeGd0', 45, NULL, '', '2023-11-06 14:24:17', '2023-11-06 14:28:15'),
(474, 'Ashish Raju', 'aashish.rv@gmail.com', '2023-11-06 14:36:36', '$2y$10$rxdxk5VdIGc484K2cygDOO2lxtaiDX3/WCb5vq0yUO9Y5aSXoyPi6', NULL, 0, 1, 'pqJ2jIbjM2D9M67zumZiBtqJOpJIQ4PzffVlTy2yOy5OdRrlVnCpilQVgNf0x8fB', 'A43320', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-11-06 14:36:36', '2023-11-06 14:36:36'),
(475, 'KASHISH KHAN', 'kashish.khan@hdfcbank.com', '2023-11-06 15:21:01', '$2y$10$m6fAHqL7Vytw/xehzETVhufdgheHRLnp8NcYhbJPDsp3KChk.vxfW', NULL, 0, 1, 'ZjBCIzjkV8Hg4mCKDTiWKotfgRUpA5bGKm3nDbXbldgtEN7lhBSZ5c3Fbyxfx9bw', 'K16584', '', '', NULL, 'INDORE', '', '', '', 45, NULL, '', '2023-11-06 15:21:01', '2023-11-06 15:21:01'),
(476, 'Deepak Gupta', 'hello.dk@outlook.com', '2023-11-06 15:40:57', '$2y$10$k7WhWEnON0hBmOtGkh2pOe.XDsp0QI7Dz1v7NuEm8xCkvnilpIA/e', NULL, 0, 1, 'dmaK07YhA3eYNZpRvn19EryXW6hqwdPV7lLrWkLEjHIEyUGg9VEUlEVjuJ68rEbv', 'D12286', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-11-06 15:40:57', '2023-11-06 15:40:57'),
(477, 'SHREYA ATUL POPHLI', 'imshreya.pophli@gmail.com', '2023-11-06 16:32:36', '$2y$10$sgxuNELQNWS/1BV3pnHXweKyVKsPCTkg6.TjCLwlC4I3KvXWyUT2C', NULL, 0, 1, 'vBZvcsXogh3LRHys3GqfieIfBf9D15DzuJn1lMDAR1xPsOaEis1a6dR74XVuOWc0', 'S67250', '', '', NULL, 'BENGALURU', '', '', '', 45, NULL, '', '2023-11-06 16:32:36', '2023-11-06 16:32:36'),
(478, 'Ashish Bhowmick', 'ashish.bhowmick@hdfcbank.com', '2023-11-06 16:41:11', '$2y$10$jL1/Ytox9mWwexzACNR3j.zGa2p5kcyrXHcDT3qxs/3okzcOW2Va.', NULL, 0, 1, 'UzpN3XYhr3xyVHXhyVJHz2vcB2VM1Svh6vCAQ0O9eVaaaa5WXIfdRoqWEn55OKsc', 'A46873', '', '', NULL, 'mumbai', '', '', '', 45, NULL, '', '2023-11-06 16:41:11', '2023-11-06 16:41:11'),
(479, 'Hemant Phanse', 'hemantd.phanse@ltimindtree.com', '2023-11-06 16:47:43', '$2y$10$z5moBbAtaqf.k1.tNvh9zewjolyYGM8hs4kcLew7GOudk4Gwc2uJ6', NULL, 0, 1, 'WlsYTz8qWgvmOo2ZYPutVJElFws1hBxCknfi2mLFL4eppGFYgqzp6PzzmC3SVnAK', NULL, '', '', 'Digital Interactive', 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:8e959e14-aaa3-4c32-a0e1-46652b583b57?category=text', 'https://www.instagram.com/p/CzWnxQiM6fj/', '', 0, 'LTIMindtree', '', '2023-11-06 16:47:43', '2023-11-08 01:01:11'),
(480, 'SHIVENDRA PATEL SINHA', 'shivendra.sinha@ltimindtree.com', '2023-11-06 17:17:26', '$2y$10$NPR1nj0JG3w1K1/lvpf1I.AiKWi78fEPUzpADQ.FDAfGjHZwSwYaO', NULL, 0, 1, 'jK54bZxn3LYFa8CPT9w7pGVCJX2IHBT2yDBP8kVvMLVjL4GV2PSs6eHwkFPXbFc5', NULL, '', '', 'Interactive and Low Code', 'Dhanbad', '', '', '', 0, 'LTIMindtree', '', '2023-11-06 17:17:26', '2023-11-06 17:17:26'),
(481, 'Nayna', 'nayna.raut@ltimindtree.com', '2023-11-06 17:17:32', '$2y$10$CkCqLKokWN4Ek021tYpDOuKklH8lfLJPNeuTsCF.B4.EeKAGBY1k2', NULL, 0, 1, 'ezgATgZFl3bEpDatv043pjMzwRyChK0YeBf6bZfKzI9FfW6XldZubWVLjt1cUbpV', NULL, '', '', 'Design', 'Mumbai', '', '', '', 0, 'LTIMINDTREE', '', '2023-11-06 17:17:32', '2023-11-06 17:17:32'),
(482, 'Akash Kaimal', 'akash.kaimal@tcs.com', '2023-11-06 19:46:43', '$2y$10$zJ5OTrWjJoL.Ue3us55OPeUMqhdZ2JWkGNedDTFDYAHLutuMhReGy', NULL, 0, 1, 'WMLo6vBHEQxTT6dQXfzbwOfW5hr78lShJsF806Sfr5wntBDnNwyayyuLGYHEJYY9', NULL, '', '', 'TI CONTENT SERVICES & SEO', 'TRIVANDRUM', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:00b01661-3317-4922-9989-e59adf616415?promoid=Y69SGM5H&mv=other', '', '', 0, 'TATA CONSULTANCY SERVICES', '', '2023-11-06 19:46:43', '2023-11-06 19:49:21'),
(483, 'Chetan Sambhaji Patil', 'chepa.unr@gmail.com', '2023-11-06 19:59:48', '$2y$10$kBPLz08/covnSlLtFZj3v./549kY03NQ7m5Jxllp8aha8FM9EeKzO', NULL, 0, 1, 'NjzSwy9pGLAv8F49touTeykK8Cfyqyvct9pvw8nJvctK11mkcIqhzUmGyuABnxb9', 'C5500', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:5225d0a5-cf69-5cf9-a935-ada0f7eb610d?invite=true&promoid=XXTQGVMK&mv=other', '', '', 45, NULL, '', '2023-11-06 19:59:48', '2023-11-08 13:47:08'),
(484, 'Samadhan Pandurnag Mali', 'samadhanmali53@gmail.com', '2023-11-06 20:09:39', '$2y$10$273bS8DuMCJOyale8C7DJ.Tlw4WWaoZPhV2pD5qgnu4qyUlCfBD4C', NULL, 0, 1, 'f1V9QiHm4BjJ13PYZ2wNW10oDYHX7lRdRdVjhE6aPwqFhmrmktJTtFZSRWb10p0K', 'S63586', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-11-06 20:09:39', '2023-11-06 20:09:39'),
(485, 'Umesh Shebe', 'umesh.61034784@mindtree.com', '2023-11-07 02:10:03', '$2y$10$lNrEDdHfIme/SDjLvpVtcuNZVLVHjeipNNsCnuSqsk6StClp9/obm', NULL, 0, 1, '00SORlCQX1Ea5JjpMtFanZ1lAarnqyf8b3zUgSehKrPk41DPPWQCVO5CAIN1qD3t', NULL, '', '', 'UX', 'Bellevue, WA. USA', '', '', '', 0, 'LTI Mindtree', '', '2023-11-07 02:10:03', '2023-11-07 02:10:03'),
(486, 'Umesh Shebe', 'ushebe@gmail.com', '2023-11-07 02:11:07', '$2y$10$XX4mDrf2RYYWnYMy8vLDa.JnZRE.t7XHVFFY.bwBg.4gH3BBZbBa2', NULL, 0, 1, '9OmXDVa1hXB17MWKu6QOaF6tk8mLGcolD6MBmcbVjdRmQlZAua2eaQI1RwFoI1m1', NULL, '', '', 'UX', 'Bangalore', '', '', '', 0, 'LTI Mindtree', '', '2023-11-07 02:11:07', '2023-11-07 02:11:07'),
(487, 'Nausad Khan', 'npunchline@gmail.com', '2023-11-07 11:52:43', '$2y$10$iSzQMpPWT8JOA1FXm3IPe.DjmIc6kRRJDFJuthIg2X6Ke.m8m3FGq', NULL, 0, 1, '4ZgUXPH6zcTe8YyaIQzTPqxzUlwifkVMLy1Tny2f4mEYsvuz9NmHzxkHz5yHuLSK', NULL, '', '', 'Design & Marketing', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:fd8740cc-4578-433a-b9e2-80301f6457dc?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:a78fbead-f9e8-45ef-9f2a-bafd9fb59a3f?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:966e5b5e-3754-41fe-8948-f25258a0ea78?promoid=Y69SGM5H&mv=other', 0, 'Kores (India) Limited', '', '2023-11-07 11:52:43', '2023-11-15 15:16:21'),
(488, 'Bibhash Chatterjee', 'bibhash.chatterjee@tcs.com', '2023-11-07 13:25:37', '$2y$10$g51bQyR6VMGwCFqQpfQL4u9qb7AjjlYSgyjH/RU4.3b7PdXogHZYm', NULL, 0, 1, 'FB3hERmCjY9HRqEzeCLVqcMa1dIu02HGIchsDiBsosyeGEHv49GqnJaVa0WqI7U0', NULL, '', '', 'Content Services', 'Mumbai', '', '', '', 0, 'Tata Consultancy Services Ltd.', '', '2023-11-07 13:25:37', '2023-11-07 13:25:37'),
(489, 'Midhun George', 'midhun.george@tcs.com', '2023-11-07 13:26:14', '$2y$10$swG.FBE3U4yZriCdTQJX0u24F5R.ij8M5oJgmvYlDcNDDs66A0eQO', NULL, 0, 1, 'jE6LfHm5O6gjycfzRrZwYfKxIkquUrAFGeLN6mxQP9h02N5hHz4cIMK5oZwrcuEi', NULL, '', '', 'TI- Content Services', 'Thane', '', '', '', 0, 'Tata Consultancy Services', '', '2023-11-07 13:26:14', '2023-11-07 13:26:14'),
(490, 'Midhun George', 'midhungeorge90@gmail.com', '2023-11-07 13:31:05', '$2y$10$j0tzUmRvIFNTCFCN0B2qneCUKDzaKYrSYYS6p4CViVKchVG6BmsMi', NULL, 0, 1, 'Y7XKxdRdClsLduLHAJBQ4N8E5yommBrmXGFDxPuIAR80w9ypPi8jlbWxX9NGkiLj', NULL, '', '', 'TI- Content Services', 'Thane', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:4d13b2c8-cd62-4673-b2fc-30583e983d47?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:300c7b65-f2e4-4d89-8dd9-d22e69754e7a?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:VA6C2:fb3a07be-a7bb-4aff-9b71-a8863311836e?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services', '', '2023-11-07 13:31:05', '2023-11-07 17:10:19'),
(491, 'Suhas Urkude', 'suhas.urkude@tcs.com', '2023-11-07 16:13:13', '$2y$10$HrbL455RH5cmdi4Qn1gjV.TNi.D2VPl0Wpydw/EwErYl197j8qUAS', NULL, 0, 1, '7Z4KIxVPOFU9tScTiviGWjWyD5Nvg34Z6lhw1EbzvVmVBB3iyHAf7Y3qECgcn6MC', NULL, '', '', 'TCS Interactive', 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:352e3328-0611-445f-b8ee-1be8f60dd124?promoid=Y69SGM5H&mv=other', '', 0, 'TCS', '', '2023-11-07 16:13:13', '2023-11-07 16:13:28'),
(492, 'Rishika Gupta', 'guptarishika63@gmail.com', '2023-11-07 16:48:59', '$2y$10$fZgs7uUAUT4IGj5ekvt4CuuhJ/byXe0x87ecJyRipq8MPBt.PY4KK', NULL, 0, 1, 'QuxoYBLloIpxycmEkkdvaX3m1PqLWB6j76rRxLHlCfNlUEvaRcBIXL9gE15R4l9v', NULL, '', '', 'Bid management', 'Mumbai', '', '', '', 0, 'TCS', '', '2023-11-07 16:48:59', '2023-11-07 16:48:59'),
(493, 'kushal grover', 'kushal.grover1@hdfcbank.com', '2023-11-07 17:11:38', '$2y$10$qUdlcvbi54PNiAQSgDvsceMq2UqvpgrIZdJLMYO6lhOkNDzRHTEEG', NULL, 0, 1, 'C36g6IG7hq3wAemxgN8vRjioBgeBMtgzBON2EeTIqHkvsjEMBi7wNhuCwC75MRcX', 'k16856', '', '', NULL, 'delhi', '', '', '', 45, NULL, '', '2023-11-07 17:11:38', '2023-11-07 17:11:38'),
(494, 'Sandip Lakhani', 'sandip.lakhani@hdfcbank.com', '2023-11-07 17:11:40', '$2y$10$9yMZCkoXdDzIDhf3/wMwMOaXFAPhwsx.lvgH.rdLgO23bOpiNbaL.', NULL, 0, 1, 'GeToJhH2HNmmXspS2okyz3QMfofBrJTeJvkOnfygO5tfsAxy055WQdiWyqwGu69q', 'S4008', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-07 17:11:40', '2023-11-07 17:11:40'),
(495, 'Abhishek Kumar', 'akumar.advt@gmail.com', '2023-11-07 17:17:42', '$2y$10$YbuFmj1pJlSSWrp1TFRAJ.wOVgGqjW.nwLeYnUFJKTbaaiNBfnzXG', NULL, 0, 1, 'KYStaJjSFnJ1b1fU5Ft6RyFcqd1K93urVAhFzPLFVaCdaYHs5LrrFiEM78Hj8EDU', NULL, '', '', 'Content Services', 'Gandhinagar', '', '', '', 0, 'Tata Consultancy Services', '', '2023-11-07 17:17:42', '2023-11-07 17:17:42'),
(496, 'Anurag Gupta', 'anurag.garuna26@gmail.com', '2023-11-07 17:19:22', '$2y$10$TEoe2MWvT5Y9wLqw.cfgvu/aHvESqE5laL9spEtRgKG0WtDJ7zDrq', NULL, 0, 1, 'myUXmxqvbRahpegrSoMF4KzCfj6A2Rz0tx1wvBucV6HxYL85pEZLrANYOCXPun89', 'A6121', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-07 17:19:22', '2023-11-07 17:19:22'),
(497, 'SAMPURN', 'hellospg@gmail.com', '2023-11-07 17:25:07', '$2y$10$jQAganBiQCC14IAOslENUOsvLtUtIKH6hqNIkRl/yOsjKRgwoMec.', NULL, 0, 1, 'vQEwAdsY789LJEBYjpl52HYvesN8IeyR3mvuAQcbVHxrL5YbQDQwLQbX2qoxiaQw', 'S57578', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-07 17:25:07', '2023-11-07 17:25:07'),
(498, 'Anupama Dhanapalan', 'anupamadhanapalan98@gmail.com', '2023-11-07 17:26:30', '$2y$10$VmfNvG.STU3YjITADjyMkOmeTArmjh2YJEcJmd/j6OWVPNe3crQSy', NULL, 0, 1, 'RXOzSW3y5gA74vsujwnIVe4tNALeyrxKmISqphwYjKZsiqzB8zfTcAVZZFjSVcDS', NULL, '', '', 'Website editing', 'Mumbai', '', '', '', 0, 'TCS', '', '2023-11-07 17:26:30', '2023-11-07 17:26:30'),
(499, 'Abhishek Kumar', 'abhishek.k87@tcs.com', '2023-11-07 17:28:39', '$2y$10$KOXJuvxmaXfd.PDeACvOOuJZnPsas1RSWNFuyHGPGJum1xuK305ma', NULL, 0, 1, 'naNvGwKK0QxKqOuN3UJe7OC1QtMQuT6Kf4l69CODk7DThNDv9nS62emhNBH1fhwR', NULL, '', '', 'Content Services', 'Gandhinagar', '', '', '', 0, 'Tata Consultancy Services', '', '2023-11-07 17:28:39', '2023-11-07 17:28:39'),
(500, 'MURALEEDHAR P N', 'muraleedhar@outlook.com', '2023-11-07 17:36:41', '$2y$10$Uy.6Pp2uL0dWXnALEmLek.xgHKVdcONGhoDV/SqjppVa86t00GKS2', NULL, 0, 1, 'J3ALv4y00MavVsRqTsoFXJpLCv3shFFAm9OQkJNo1nLobtaYkSKffpUmX2MBqm6b', 'M26227', '', '', NULL, 'Thiruvananthapuram', '', '', '', 45, NULL, '', '2023-11-07 17:36:41', '2023-11-07 17:36:41'),
(501, 'Onal Jain', 'onal.8.jain@gmailcom', '2023-11-07 17:37:28', '$2y$10$Bs1kGIiORZxcQ1rHVvyF0eptKEOxSKK32aWytDW5Z2hRO6.eadHHO', NULL, 0, 1, 'El7TfaPzMYQyi2cKbkqRPfyPImBwoe6bOzqw6GJ236AwELJfsX5kcBtV6anUjenn', 'O0510', '', '', NULL, 'Jaipur', '', '', '', 45, NULL, '', '2023-11-07 17:37:28', '2023-11-07 17:37:28'),
(502, 'Trupti Mhadgut', 'truptim007@gmail.com', '2023-11-07 17:37:43', '$2y$10$3JAyg6dc4NKPTZJQmvIO0.B6a/Wf5ed1K4m.Nepk8UBjxRdwDsZtm', NULL, 0, 1, 'BodBKjPPnB8oEBN5P2Bv4aDkEUE7UbCh66HM6zAVNr7Anu5wLbNncMcSPnyVXg57', 'T4162', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-07 17:37:43', '2023-11-07 17:37:43'),
(503, 'Onal Jain', 'onal.8.jain@gmail.com', '2023-11-07 17:39:08', '$2y$10$3qQKtrI.GQe3XbL9WbgrqOVsPfLrqEvi504DI9tdPwP82JoDqmnwu', NULL, 0, 1, 'xsDbB2EaDaZyO4D1jbHAkwuar0IIo5XLowHZ6qmrPGcTFGiuuMddMl7k74qEQnwD', 'O0510', '', '', NULL, 'Jaipur', '', '', '', 45, NULL, '', '2023-11-07 17:39:08', '2023-11-07 17:39:08'),
(504, 'RESHMA NAIK', 'reshmank28@gmail.com', '2023-11-07 17:55:54', '$2y$10$rtiD/Ir7iFvRQF.YXDpI4OPAS5Y6XOE2wnWaH2k6oKg8Xy122tTSO', NULL, 0, 1, 'fBkVZpdeNjva6eOBvIcMUmjoezWzooRhguwKtL5lnNZZP93V4nyiaQYc07yQ0WUK', 'R18233', '', '', NULL, 'SHIMOGA', '', '', '', 45, NULL, '', '2023-11-07 17:55:54', '2023-11-07 17:55:54'),
(505, 'Aslam Pathan', 'sul.aslamp@gmail.com', '2023-11-07 18:01:34', '$2y$10$zURXuCP1vDBdjqpfF9QlheOryusIfHMOGdxHYDpT6BUx88cp7c6rm', NULL, 0, 1, 'aHoKkHVFT3ADDz83FAWdEFhMt1Dyl7ytSv44YEMyIUguXdLNHKni8OtMQ8suMo8W', 'A47808', '', '', NULL, 'Nanded', '', '', '', 45, NULL, '', '2023-11-07 18:01:34', '2023-11-07 18:01:34'),
(506, 'Yashovardhan Kishor Pednekar', 'yashovardhanpednekar@protonmail.com', '2023-11-07 21:58:52', '$2y$10$UEvyzssJBBUXfbkiO47Q8u3FwVMIsIMTAnZLgkbkZ2o9UKZOHizK6', NULL, 0, 1, 'N2HTpYEF2ZkyfQY9JRd262BIDAVEpNjoLMt4eibxU6ncLUJHGZ4Dn1zAPadqFlOQ', NULL, '', '', 'Surfacing & Lookdev', 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:80c3d2ce-4e6e-45c3-8bda-08003266e0af?promoid=Y69SGM5H&mv=other', '', 38, NULL, '', '2023-11-07 21:58:52', '2023-11-08 00:44:00'),
(507, 'Tiasa Banerjee', 'banerjee.tiasa@tcs.com', '2023-11-07 22:44:45', '$2y$10$84p8wDLjJ5BeoAGNu4HQ8e2fHWjezVQanHEuVR40BMxE.C5CUpinO', NULL, 0, 1, 'jxitnRLZ4uMhv1TCNO9WgfLbxdhZoBytJghthpRqPRisuT5HBTbrO0AbVQfPgMVJ', NULL, '', '', 'Content Services', 'Mumbai', '', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:86991216-9efb-55d0-b71c-08237788a0d0?invite=true&promoid=XXTQGVMK&mv=other', '', 0, 'Tata Consultancy Services', '', '2023-11-07 22:44:45', '2023-11-08 00:37:00'),
(508, 'himani', 'contact.himaniarora@gmail.com', '2023-11-08 00:17:18', '$2y$10$NqZD54WvDkOQ82mDf8lxLe9IezHG2U/l0TGGEM5bK/FyH7yvUQh7O', NULL, 0, 1, 'BjjPZXrqmXXwiC4MD5BDxMX6cLuf18Sh6lzYMAlImrQJuGJIIoscFXFUR2ZDVBGg', 'h8511', '', '', NULL, 'panipat', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:0a39cfb1-0524-4494-b764-833dd7feb6da?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:02e208c1-4b34-46b0-b9f5-5b00fe535469?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:ffb085d9-4023-467a-8aed-03fd820d5983?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-08 00:17:18', '2023-11-09 02:02:18'),
(509, 'PRASHANT BHALERAO', 'pbhalerao622@gmail.com', '2023-11-08 00:26:17', '$2y$10$IWAjMNNAezewm4bH1vyl9.57j3NXvD.2nk5NLncH7IsOOlaOPdGjq', NULL, 0, 1, 'geH1O0xPHlRJ8X8wABXcju76eFheKq6Dl7WLHWXo5LxKhUG8O2pIG8WzbNAr5B2w', 'P27940', '', '', NULL, 'Jaipur', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:74a5febd-4c47-4845-ab6e-60a88e376fa9?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f1960c43-d54c-4906-a0db-6ab5736a14b6?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:570491b5-0cb8-4bc4-8445-2a66e39c6c19?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-08 00:26:17', '2023-11-08 23:57:46'),
(510, 'Kishore Rajaram Pednekar', 'kishorerajarampednekar@gmail.com', '2023-11-08 00:57:13', '$2y$10$0NdoXd2JpLFMkhLll5.6juGIM.I2kIJZ9o810Cs3TwTiGXP7yFQm2', NULL, 0, 1, 'e8CVUNiHZ82QER9KPGwpBCt514bz9TLuioYQT7kHtDomkkzaYq6K97mQ4cVdPhdC', NULL, '', '', 'Art Department', 'Mumbai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:489cac0b-703b-4c5e-af9a-a1c4af4f2e39?promoid=Y69SGM5H&mv=other', '', 0, 'Freelance', '', '2023-11-08 00:57:13', '2023-11-08 02:02:36'),
(511, 'SARVESH SHINDE', 'sarvesh.technosavvy@gmail.com', '2023-11-08 01:38:45', '$2y$10$pO8XBbwrf4PxCPIPzFY63e9hDBzE5Vzxs0jJB1So8AGdIj5AC4xSG', NULL, 0, 1, 'hnSUrY5Jy2kv3Glnovq4IYlyuBvw3LLPTnRKxbpaAjQgWTGoUS2XqgSraxRplAl4', 'S54132', '', '', NULL, 'MUMBAI', '', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:254b1cd1-e3c5-4b95-b06a-be4541e41135?promoid=Y69SGM5H&mv=other', 45, NULL, '', '2023-11-08 01:38:45', '2023-11-09 01:18:39'),
(512, 'Deepthi Virginiya H', 'virginiya.monisha@gmail.com', '2023-11-08 11:17:28', '$2y$10$o0smZYh9UPutU8JiIDBlEensH6tOPvTe2bHgpOwan00MbjGgl0Bne', NULL, 0, 1, '6dODbz4E8TF2uShhngoqG689t71UE686Tv1NfAlKAe6UU7kuKSnjAYbVQKSROEnf', 'D17125', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-08 11:17:28', '2023-11-08 11:17:28'),
(513, 'Shubham Dhiman', 'subhamdhiman12@gmail.com', '2023-11-08 13:33:20', '$2y$10$fhMkwAdYWvRIexlxjVAIxOQsN39844Wotv3pm491Eq95SyLC56bce', NULL, 0, 1, 'uhOPh5EpTbGhI9hULZMlxXYj9dZPyF4beyvx3mmX4pnMdj6W4IqjOfRu1ISeaW4J', 's65876', '', '', 'VRM', 'Mohali', '', '', '', 45, NULL, '', '2023-11-08 13:33:20', '2023-11-08 13:33:45'),
(514, 'Souvik Das', 'souvik.das1@ltimindtree.com', '2023-11-08 13:33:58', '$2y$10$N9USro53Nfe8yAHOUjNRMuRSIAeDOFLYvwe2Ire2GsljAAwwnBvLq', NULL, 0, 1, 'baeRWyVTT5K2Ip3E6OhtZ0KOkI25Gvrj4voJwUj7xTVDLOR1hqSVO3l4G4YUE7mc', NULL, '', '', 'Design', 'Kolkata', '', '', '', 0, 'LTIMindtree', '', '2023-11-08 13:33:58', '2023-11-08 13:33:58'),
(515, 'Viraj Rohan Circar', 'viraj.circar@ltimindtree.com', '2023-11-08 13:42:20', '$2y$10$GwfDGVI/3J809spOAM09Je5MSffdTo/MBfy0ZXe/LSmzb3q9RIV7G', NULL, 0, 1, 'Fg4ZGiD5YwGUDGPsQeM2UapAjmO6XzmnelNbvqrBBXEpYIt18ObbXPwAIf7Xyqnx', NULL, '', '', 'User Experience', 'Kolkata', '', '', '', 0, 'LTIMindtree', '', '2023-11-08 13:42:20', '2023-11-08 13:42:20'),
(516, 'Paraschand Rautre', 'parasrautre@gmail.com', '2023-11-08 13:56:14', '$2y$10$eugZ0V8Xo4Du.E.CgzGaFeQu8xeV.z.J/kLTUGR3TryZ2tecaMC3e', NULL, 0, 1, 't54yg7Rp17OTjv5xEMacv7AguBfpRULqg4SBlSM0ddtE0n3I5lfH41IlPoD7qJRa', 'P25138', '', '', NULL, 'Aurangabad', '', '', '', 45, NULL, '', '2023-11-08 13:56:14', '2023-11-08 13:56:14'),
(517, 'Trupti Mhadgut', 'trruptim007@gmail.com', '2023-11-08 13:56:28', '$2y$10$Dl9Hssqqk.RHhNMzJiX32.vryIIp3ptxLg7A4WrI6nxW4nh906hYq', NULL, 0, 1, 'C5rdmE3qTBqmC1GZ2KhhIqaFOo30tUFf1tMFjzE3qP8E2ggdBh0YwSnAU34afsaT', 'T4162', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-08 13:56:28', '2023-11-08 13:56:28'),
(518, 'Viraj Rohan Circar', 'viraj.61051726@ltimindtree.com', '2023-11-08 14:01:53', '$2y$10$71d8wDUBAl0XSGikhCvNKucRxT93tdHcdGMw5avUW3SZ3OhW4MmZi', NULL, 0, 1, 'kccIYgRftCCEADisG7AY1j2aTNkRkWsc8TXaCsLVOEbPeJAo5fTTge9G4uFDHGR1', NULL, '', '', 'User Experience', 'Kolkata', '', '', '', 0, 'LTIMindtree', '', '2023-11-08 14:01:53', '2023-11-08 14:01:53'),
(519, 'SATYSHIL GAJBHIYE', 'satyshil.gajbhiye@gmail.com', '2023-11-08 14:05:46', '$2y$10$9s/T72ZUl2GDV9KnsfHDGuTkffJLdLFu7A56EfSxMRDKK1Pm3VSn2', NULL, 0, 1, 'kepWihRs01BM7dA6HvjW2Zc560433L7RqiCPz6GxyHL8vF7aNh3TDQ5dQp7Dn8TK', 'S32423', '', '', NULL, 'Nagpur', '', '', '', 45, NULL, '', '2023-11-08 14:05:46', '2023-11-08 14:05:46'),
(520, 'Amit Harit', 'amit.harit23@gmail.com', '2023-11-08 16:00:36', '$2y$10$PjfcloIF8Xk7hmBkW8FGGOWXPbxM4nFg.FxJlsWI.U46Fzbl/wGdi', NULL, 0, 1, 'nVIjmVssMDMOUUduHw3raFheaussiVyoCBsNuI1UcIzQGNuWgpWabdCBIQBfT5XR', 'A50613', '', '', NULL, 'Delhi', '', '', '', 45, NULL, '', '2023-11-08 16:00:36', '2023-11-08 16:00:36'),
(521, 'Pranay Thakkar', 'pranaythakkar55@gmail.com', '2023-11-08 16:17:44', '$2y$10$KgCwRoEi63MTE9YaX6QexO6n3HAye4C4LXv87WX27HthIpDetMUR2', NULL, 0, 1, 'rfuerPlDNN412IaWxD4cbUT7rfO4h74Mw1ysOn2pOmHY9BsaekLdXiEMwlRAYbn2', 'P24931', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-08 16:17:44', '2023-11-08 16:17:44'),
(522, 'Sudhanshu Chatterjee', 'certainnecessary.330@gmail.com', '2023-11-08 16:26:32', '$2y$10$5OgASxrs4wBPUxmoIMdmSugRmDPSpjWnhcH.UBrxeiF3Wl3klXJH.', NULL, 0, 1, 'QBF7UgzKVv5Vv7euMPym7EhEEUso4ZjSeREfLAxsh6IW76qx32arUro0xJDhH8DC', 'S41388', '', '', NULL, 'Kolkata', '', '', '', 45, NULL, '', '2023-11-08 16:26:32', '2023-11-08 16:26:32'),
(523, 'janu narayan', 'janunarayansuraja@gmail.com', '2023-11-08 21:50:52', '$2y$10$xt.c.nlyuhBmAeGJHxsy/eWLtWCCUk2.VApc4./mZneQj.deY5yM6', NULL, 0, 1, 'Oj0Ooenf1FgsdqfwRTxroWrfBzMs7aubDk3tYY4uU3v6pLrjtpY6sddMrgCL1nTc', NULL, '', '', 'Content Services', 'Trivandrum', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:df1de54b-779e-4f4b-92d4-7ea2a63f9257?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:e4d1fd33-2952-4261-8bc0-01274ef6f46e?promoid=Y69SGM5H&mv=other', '', 0, 'Tata Consultancy Services', '', '2023-11-08 21:50:52', '2023-11-08 23:14:43'),
(524, 'Bhagwan P Lamkhede', 'bhagwanlamkhede76@gmail.com', '2023-11-09 00:06:02', '$2y$10$dWFKSwE.Q04wPHeYbCUr5Ot0ZQAmbPiyZn49oIoh9DwxPeMviyHKa', NULL, 0, 1, '5l2bujy2JBNR4X8sI3oyCJUEIhIWKCyyhDj4klL52hHfpOPQEQMYrUKVrwpEz9F8', 'B1469', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-09 00:06:02', '2023-11-09 00:06:02'),
(525, 'Deepthi Virginiya H', 'monishavirginiya@gmail.com', '2023-11-09 01:24:56', '$2y$10$D12HqmiEQTwMB4e0Cn5X3O13frulFmVFkZgNVH67vTP5qC/IDeKMK', NULL, 0, 1, 'TMoiwBDzOevjZ3Rnz7dL1GXoowMgXN1e5l1lMlcmXeEvFeUHIFcFFH2pLkbmb98F', 'D17125', '', '', NULL, 'Chennai', '', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:8853a319-0b80-49b4-a58b-aaa2e662b64b?promoid=Y69SGM5H&mv=other', '', 45, NULL, '', '2023-11-09 01:24:56', '2023-11-09 01:33:36'),
(526, 'SHAN K JOSEPH', 'shan.joseph@hdfcbank.com', '2023-11-09 08:30:49', '$2y$10$0PR7Lb6OKVAqFjtzoDj3Eu/0Hg07zLR57.25ZUJC.0Xj6xcLlDmli', NULL, 0, 1, 'LJASmQHsI8NkMPMCtzCdJAYDyFQ9yJHzvDtqkCe2Um8dIA1XLXZPvDZFxZE1abVv', 'S21267', '', '', NULL, 'CALICUT', '', '', '', 45, NULL, '', '2023-11-09 08:30:49', '2023-11-09 08:30:49'),
(527, 'Mariam Thankam Mohan', 'mariam.m@tcs.com', '2023-11-12 11:51:07', '$2y$10$v8qoC8q3R/k6sAJxE7xcTOlTusJ4lRmGyrL/0XdB46dLubPVWMcT6', NULL, 0, 1, 'oPDV4woxsfDS4UFeFj7a0sEJMDVWJrExcIUjv9XoATin1op0e4rRblYC7YadE4WR', NULL, '', '', 'Content Services', 'Kochi', '', '', '', 0, 'Tata Consultancy Services', '', '2023-11-12 11:51:07', '2023-11-12 11:51:07'),
(528, 'u veeraprathap', 'veera.pratap007@gmail.com', '2023-11-15 11:42:25', '$2y$10$YfeYzKGcdcutm7.n8NE0E.6rzljC9D3Relampvsl/3shVMQwWUel.', NULL, 0, 1, 'ZpIRc43QZTEVPoU70HBOVqLr62SbdnLu5FM1rgQXjV320UvO4kEyEfD84fE38k6c', 'u1363', '', '', NULL, 'kurnool', '', '', '', 45, NULL, '', '2023-11-15 11:42:25', '2023-11-15 11:42:25'),
(529, 'Samina Zummarwala', 'saminazummarwala@gmail.com', '2023-11-15 11:42:41', '$2y$10$d/d83g0rmxtTUHIztlbX5.Vh14fs3I/6mpMoGxhQZyFM7cCduGGly', NULL, 0, 1, 'b3XYkELpySr9CPcA6JafBT8JfyqC5DdSBsxIOQwLPiihX2edY0kC0YX6Js2RbaZO', 's68111', '', '', NULL, 'Pune', '', '', '', 45, NULL, '', '2023-11-15 11:42:41', '2023-11-15 11:42:41'),
(530, 'VARSHA', 'varsha.kori@hdfcbank.com', '2023-11-15 11:44:49', '$2y$10$r3QKC9BG/jyqQyOxMv0MHODxUtwS92tqqfb/rj/J0/XbQf/L3elKK', NULL, 0, 1, 'f3x7of87NcgaaO3IpzLWUfOrmRQonlxh9rizcZDlnnXJhiAEDUm8xpymBuxqX1lD', 'V21594', '', '', NULL, 'BENGALURU', '', '', '', 45, NULL, '', '2023-11-15 11:44:49', '2023-11-15 11:44:49'),
(531, 'Pramod K', 'pramod.ktbl@gmail.com', '2023-11-15 11:45:04', '$2y$10$50fH07MAatIG4XM30/2IwONKFFm1pt23dQTjkYLpP9RQfPnGhPhvW', NULL, 0, 1, 'dR4asTNV7gyZutrQK87iGulR7eMnygMQFazei79yVY4rKt8xDjyTviDIzwHiLXTe', 'P28654', '', '', NULL, 'Bengaluru', '', '', '', 45, NULL, '', '2023-11-15 11:45:04', '2023-11-15 11:45:04'),
(532, 'TEJENDER', 'TEJENDERTEJU4621@GMAIL.COM', '2023-11-15 11:45:17', '$2y$10$Rrkgqp3YX9B7WiWQEw7QTOLxy.MfUiLsFypLqzaiUumBgYrw1mUJ2', NULL, 0, 1, 'JAAiVtVBOuS641j7GtDcEJVXEKQS0Yre2Jt6ZiDapP4NHhdv31HvpOvBzdupdDEs', 'T5638', '', '', NULL, 'FARIDABAD', '', '', '', 45, NULL, '', '2023-11-15 11:45:17', '2023-11-15 11:45:17'),
(533, 'VANI BHAT', 'vanibhat3344@gmail.com', '2023-11-15 11:46:46', '$2y$10$ejrepaCc9J705vjY2vRzCeqTZ.l6d68Cto2uMh5CQchZJPxYQZ6wq', NULL, 0, 1, 'FerO9DeTAOwF6c66S7og0lOvSndvlBBKvhqcyxiC9rSMEgysVMBiN9VPL94jl5AU', 'V21489', '', '', NULL, 'SIRSI', '', '', '', 45, NULL, '', '2023-11-15 11:46:46', '2023-11-15 11:46:46'),
(534, 'Vikas Kotwal', 'vikaskotwal007@gmail.com', '2023-11-15 11:47:54', '$2y$10$JaQ4SqGSETg0JcZ0AgshiOcxATthzve5oE1S6TH1SCE0Ha9fQ3Bpq', NULL, 0, 1, '15sUelyhYBfpKtxYgn71cedbCQfmJGc3bXI2ZCAPkvZPZO5hsHsKpyTXSEJ01g9v', 'V21554', '', '', NULL, 'Katra', '', '', '', 45, NULL, '', '2023-11-15 11:47:54', '2023-11-15 11:47:54'),
(535, 'Balaji k', 'balasunmugam@gmail.com', '2023-11-15 11:54:03', '$2y$10$jIt4Gi1mKcvvRzCn.fL53elKtz4pQIPx3CrRZI7xHoQeJZ9SXfdMG', NULL, 0, 1, 'pC7rxxDAJ0JoHxz0XKJAf6JHylBOoFIpTA4dkFOEOrXJwo4lKvQTGuIAW4CpRCYH', 'B7009', '', '', NULL, 'Chennai', '', '', '', 45, NULL, '', '2023-11-15 11:54:03', '2023-11-15 11:54:03'),
(536, 'GLADIA LINDONA T', 'galdinalindona98@gmail.com', '2023-11-15 11:57:27', '$2y$10$y1VSTY5JVkjArFG3mgzYm.X9QYtUjNuvBdbdqJa3chDC2ALCPYOce', NULL, 0, 1, 'jZU68uCHu6MEy1MAS2cw9u70OY92ddvX0VogWLqPkhVKhGVM0heHFaS4zQG1HGjJ', 'G10043', '', '', NULL, 'CHENNAI', '', '', '', 45, NULL, '', '2023-11-15 11:57:27', '2023-11-15 11:57:27'),
(537, 'Pooja Jain', 'pooja.jain1986@yahoo.com', '2023-11-15 11:58:33', '$2y$10$NWyaktvYA7dSJ0JtyhJRL.ldg8S7lrdlrpQNzQ1LX1MlLffVIuZha', NULL, 0, 1, 'ShMiazRw7jVvq5bkTvVmAVHbRRmNBxtlv1IBZzHxTpoKdA08scf28btX6MWr4SLR', 'P23535', '', '', NULL, 'Ajmer', '', '', '', 45, NULL, '', '2023-11-15 11:58:33', '2023-11-15 11:59:10'),
(538, 'MOTUPALLI ANANDA KUMAR', 'kumar9671kumar@gmail.com', '2023-11-15 12:10:31', '$2y$10$LXa7jsXzjYfvYhnG7eK0MuuedYSupCH7m6J2g.xH3x4Xb7lSyyHw2', NULL, 0, 1, '8FaXfuAr0hKVX7sX3dpTdp80SeBfcLcYiRXsLtMLLqmH3V3u5P94doyqaycnKzCE', 'A46634', '', '', NULL, 'AVANIGADDA', '', '', '', 45, NULL, '', '2023-11-15 12:10:31', '2023-11-15 12:10:31'),
(539, 'Himanshu Mishra', 'himanshu.mishra9@hdfcbank.com', '2023-11-15 12:19:10', '$2y$10$q8l5PPq2qVabCFH22QUzwerLYO2y.gg7CPpZWAp7nE.I80mqpp0Le', NULL, 0, 1, 'Lio8ql6e5EgfvqVHpgRjy8SSaakARhfROcPA3ho2dYPr1wJOS7IUgYIOwXgvgrMf', 'h6481', '', '', NULL, 'Bangalore', '', '', '', 45, NULL, '', '2023-11-15 12:19:10', '2023-11-15 12:19:10'),
(540, 'AKHTAR HUSSAIN BHAT', 'akhtar.hussain702@gmail.com', '2023-11-15 12:19:13', '$2y$10$2cPJh88oI7Ne7t38NtmI.eGoQojse8IzxMjpyzLwfxc0HRUlhsyz.', NULL, 0, 1, 'dnGeyj7YNFu8fyUFitnBiXlJVMJIrLAE2goJZyf7GAjfhYIzySHipSbvPjmYmlPc', 'A36646', '', '', NULL, 'Bandipore', '', '', '', 45, NULL, '', '2023-11-15 12:19:13', '2023-11-15 12:19:13'),
(541, 'Priyanka Hemant Padwal', 'priyankapadwal09@gmail.com', '2023-11-15 12:22:07', '$2y$10$EcpSVutb0G5MTz3joD/eRO86fY7/HbJygP0YKebbGZ6GRlUdY2R2u', NULL, 0, 1, 'M0Z3wuo7qbfJeegHqD2MIdm8SAs8jMUlyOH7LHfCsO2nlCqX7jB1kerWqKKirhOb', 'P21918', '', '', NULL, 'Ahmedabad', '', '', '', 45, NULL, '', '2023-11-15 12:22:07', '2023-11-15 12:22:07'),
(542, 'PRASHANT KUMAR', 'prashantsrm93@gmail.com', '2023-11-15 12:36:40', '$2y$10$Kk5ykdUAvlfukEfVShHj0.Lb9xUjDJ56E0d4F6L3sFjcA44p1P//y', NULL, 0, 1, 'd1deT8JBCXJtZwUuzHtR35HgSQcqOiq7720ZMd7V9jGTxGs0YCTSLEyFgIf5vBof', 'p28919', '', '', NULL, 'NEW DELHI', '', 'theprashantsharma18', '', 45, NULL, '', '2023-11-15 12:36:40', '2023-11-15 12:38:07'),
(543, 'Kumar Kashinathan', 'nammankumar@gmail.com', '2023-11-15 13:03:26', '$2y$10$a4DjygIYqP39.hWpfSxDFeO6U9bCM7Rk13qW0mVoKqnrOGKDQBCzS', NULL, 0, 1, 'KQUzngqKVsLDvSKw8ylGViCBEShC6VyVWRABRCVMLqieaVG7aVIa4hqbWTQiHLex', 'K7636', '', '', NULL, 'THANE', '', '', '', 45, NULL, '', '2023-11-15 13:03:26', '2023-11-15 13:03:26'),
(544, 'Sanjay K Panchal', 'sanjaykumar.panchal1@hdfcbank.com', '2023-11-15 13:17:52', '$2y$10$601xQbavy6.eJg4rd./lluOFvJWsVXFaeyybd/AWPZFssaAw5Vu6O', NULL, 0, 1, 'eCgDrB2K9aI3fKFVImVUaxDgHoT9PqgOmDXGULyjtkvqgSp7eVOlq3fwZGodixcL', 'S67207', '', '', NULL, 'Kalol', '', '', '', 45, NULL, '', '2023-11-15 13:17:52', '2023-11-15 13:20:06'),
(545, 'PRITESH DAHYABHAI PATEL', 'prit240270@gmail.com', '2023-11-15 13:54:18', '$2y$10$GkeG8Ffv1JAfTEFLBLjyhe3xGnUOQ2oVsK/lUYYhFDV8whrABxnle', NULL, 0, 1, 'Or1XkKiUfu7CAOHbYjySrc4EWVsGhHHRlfnGjn33aZ7T0Y8RwoIlCTyGedhus1uu', NULL, '', '', 'Retail', 'Nadiad', '', '', '', 0, 'HDFC BANK LTD.', '', '2023-11-15 13:54:18', '2023-11-15 13:54:18'),
(546, 'HIRENSINGH CHANGLANI', 'changlanihirensingh@gmail.com', '2023-11-15 14:28:28', '$2y$10$uEkgRUCkpfe9BmUg/3oZFevuBPFUXpytmUOO4zA/vXQ5M3WXJhwHe', NULL, 0, 1, 'UBDDMxawYFZE8FRvBklHUmzoXLdKV8MObmQm4xbNlZQESfJfBgUKnglbUgc629Ie', 'H9327', '', '', NULL, 'Rajkot', '', '', '', 45, NULL, '', '2023-11-15 14:28:28', '2023-11-15 14:28:28'),
(547, 'Udita K', 'udita.kulkarni@hdfcbank.com', '2023-11-15 15:43:54', '$2y$10$iQp/nAawhOzAkxwoCwgCteO46QOWAhBKHBcKrcrFnJu7w3ZH2xNsC', NULL, 0, 1, 'lSgoRc67ScnplxposEMlPqU8dlJhsh7EmjnygP3t52na99AUE5IboFtBYWgg5gbr', 'U1948', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-15 15:43:54', '2023-11-15 15:43:54'),
(548, 'GURUPRASAD SUNDAR MOOLYA', 'guru.moolya@gmail.com', '2023-11-15 16:29:12', '$2y$10$/M4Wn9MBmRNZzXqa309oBO/YGt7Ara.wxsEvfkhCV4LvNEv3gJESu', NULL, 0, 1, 'NcQ6EBUUxK15MyRILCykeKbFB3gvEe8qEIwvNeMX2KwZ4Xil0cDTpzbfKTqwopap', 'G8401', '', '', NULL, 'Thane', '', '', '', 45, NULL, '', '2023-11-15 16:29:12', '2023-11-15 16:29:12'),
(549, 'PRATEEK SINGH', 'prateek.singh12@hdfcbank.com', '2023-11-15 16:30:19', '$2y$10$2DctbqP8s3cz2WtWtRumn.sXV1rlbj0JXrVi51OySgcjOc2eU2bS6', NULL, 0, 1, '7roz9bVwP3kzXYV34OZuC23pSWm1FG7QyyErXgkI3ikzBqnfxChdrXhBblgHdhC3', 'P28814', '', '', NULL, 'MUMBAI', '', '', '', 45, NULL, '', '2023-11-15 16:30:19', '2023-11-15 16:30:19'),
(550, 'gaurav prabhakar', 'gaurav.prabhakar10@gmail.com', '2023-11-16 11:19:10', '$2y$10$G2L1sjvZTvgEAL.PAtgTvOqbmjZLOQ7GmjYsINyk/vkPFJ4.R.W/C', NULL, 0, 1, 'o5GQ96MBIiimUv58NlwBvvHm1r15MifeqGJFF7veaiBZKLRiBkc6PXd4cZDku8dw', 'g1839', '', '', NULL, 'Noida', '', '', '', 45, NULL, '', '2023-11-16 11:19:10', '2023-11-16 11:19:10'),
(551, 'Sushmita Adhikary', 'sushmita.adhikary@hcl.com', '2023-11-16 11:30:15', '$2y$10$yjdLbmBYYBZaWfbBx3LVaOpAFrGPKj8X2p/I378yEkCShGff.dSlS', NULL, 0, 1, 'UziAPkipNjlfNkPH5BSS3Pho2Mw3ZebcvtggRDVQbm2Pe8tqgPLhBOL75OndMzL0', NULL, '', '', 'Finance', 'Lucknow', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:5cbf6911-487d-4d2e-a54a-a3dc57e68f58?invite=true&promoid=4F569D5N&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:5cbf6911-487d-4d2e-a54a-a3dc57e68f58?invite=true&promoid=4F569D5N&mv=other', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:5cbf6911-487d-4d2e-a54a-a3dc57e68f58?invite=true&promoid=4F569D5N&mv=other', 9, NULL, '', '2023-11-16 11:30:15', '2023-11-16 12:19:38'),
(552, 'gaurav prabhakar', 'gaurav.prabhakar1962@gmail.com', '2023-11-16 13:40:23', '$2y$10$GncJ94QJuV7RnXNKhgUFY.z1r69DXq1uboCpO38jXwfVPi3lazuCi', NULL, 0, 1, '3jJl2sR1E4UQ3UnTaUhU8ycWUz0utTvzEABonjG14EaJDKZlOZFlmT8rwzyDwLcm', 'g1839', '', '', NULL, 'Noida', '', '', '', 45, NULL, '', '2023-11-16 13:40:23', '2023-11-16 13:40:23'),
(553, 'Himanshu Mishra', 'himanshu.mmmec@gmail.com', '2023-11-16 13:45:28', '$2y$10$Tb2m1sNdLZivIBT.oNLLi.gRuRLeGWLGRh6bOrQxf8432xWsU.4w.', NULL, 0, 1, '7m8nvsh9I9hsnLA3CWzWTDXKIbtQqSeZLmGCY3qMLBrELguhSHfKaogULI1Er2SR', 'h6481', '', '', NULL, 'bangalore', 'https://www.instagram.com/reel/CztDE6OrTmg/?igshid=MzY1NDJmNzMyNQ==', 'https://www.instagram.com/reel/CzsornKLJ7F44KZnM-WucGA8BFMkoeDwZOnK9Y0/?igshid=MzRlODBiNWFlZA==', '', 45, NULL, '', '2023-11-16 13:45:28', '2023-11-16 17:42:56'),
(554, 'RITWIK SAMNATA', 'RITWIKSAMANTA1996@YAHOO.COM', '2023-11-16 15:48:31', '$2y$10$k03R1OsH7KkKi6/PVVHJpeU4WO2Hz2eENYcyLq4gbIRXKbu69rVeS', NULL, 0, 1, 'LwYFcO4BzlDVKkIpkgyzA0HEPXY4ic9YRkS6tZhElvLOM1maOMjN40k53hkeA3kW', 'R28555', '', '', NULL, 'HARIPAL', '', '', '', 45, NULL, '', '2023-11-16 15:48:31', '2023-11-16 15:48:31'),
(555, 'Rohan Deb', 'rohan.deb@hdfcbank.com', '2023-11-17 16:07:41', '$2y$10$BVzVSqHtjdprP/0UiSdULuKXB8a8Y8tCpfMKmONZV8QgEh1SBc6VS', NULL, 0, 1, '4olT3eZKmBC8dlm83JHCvtNLI38P0AIPzkBi8rfkCs30ygQjP551S0GFn9GkLcTT', 'R30727', '', '', NULL, 'Mumbai', '', '', '', 45, NULL, '', '2023-11-17 16:07:41', '2023-11-17 16:07:41'),
(556, 'Prasenjit Ray', 'drprasenjitray@gmail.com', '2023-11-17 18:16:26', '$2y$10$4RWVvnle0paf6jinBmtDyu5dhuYKk84UeLxBsEv1p5fUnkjwtD8AG', NULL, 0, 1, 'yONzHVpPtd9L46zDBAiGrZlF99OpYQoU4bDQG9oCjljd3fP1wwzC7JyybkReCDYV', NULL, '', '', 'Health', 'Hyderabad', '', '', '', 43, NULL, '', '2023-11-17 18:16:26', '2023-11-17 18:16:26'),
(557, 'Vishal Rastogi', 'vishalrastogi22@rediffmail.com', '2023-11-17 18:19:05', '$2y$10$mSWbzeLBNz4V70E2cYe2e.Z8OWeBox3NawhxtAAuDwESa2Pxu4vhS', NULL, 0, 1, 'UEhVjv8UJtMKcWvcLesuZrTXqDFxCFl7ZaiHNuTuGriWQEzHemuly5OWYNwOyNyW', NULL, '', '', 'Health Claims', 'Hyderabad', '', '', '', 43, NULL, '', '2023-11-17 18:19:05', '2023-11-17 18:19:05'),
(558, 'Vishal Rastogi', 'vishal.gd.rastogi@relianceada.com', '2023-11-17 18:20:07', '$2y$10$/7ujZkKADlBsbwugxNJlTeVyq3DauFaLzyStps2sqJypZPuQqcgkO', NULL, 0, 1, '111gmljt57X48FcGkTF9ihaWz6MmRXILyRdsY5qyDGlBb67Csb1s3EpsOeBRXlMX', NULL, '', '', 'Health Claims', 'Hyderabad', '', '', '', 43, NULL, '', '2023-11-17 18:20:07', '2023-11-17 18:20:07'),
(559, 'JUZAR BHANPURAWALA', 'JUZARBHANPURAWALA@GMAIL.COM', '2023-11-17 18:27:28', '$2y$10$A16gD5D7JP/IgqaPt6hswO6PTT6xpSgs/PyV25W8ML5wICk9qNpXi', NULL, 0, 1, 'YVezUI6Jn4mlsvGo8AV7rydG9g8sacBmLZtXyqzMSEs2h8j1GPKvE4StssxBSOZa', NULL, '', '', 'Admin and Infra', 'Mumbai', '', '', '', 43, NULL, '', '2023-11-17 18:27:28', '2023-11-17 18:27:28'),
(560, 'Amol Vamanrao Sawant', 'amol.7aug@gmail.com', '2023-11-17 19:10:48', '$2y$10$V6V8kFdDDMq0i6u6742yO.0.8j2ujnLvaWPQcqEkjGbdjqcw8lVKm', NULL, 0, 1, 'erFaPtPuoexXuVqPMUKan5GOmG4NDz7yoGHN1Opy72Y3fPN2dJ0dtiSBqcDhDqFP', NULL, '', '', 'IT', 'Mumbai', '', '', '', 43, NULL, '', '2023-11-17 19:10:48', '2023-11-17 19:10:48'),
(561, 'Fany Paul', 'paul.fany25@gmail.com', '2023-11-17 19:27:00', '$2y$10$nS6x6i4YCh6sbpQRbq5vEO9AV6bQlDH6MiMINr..Z590eeHB/pfCy', NULL, 0, 1, '6ZHBihox6hKvBtlBl8SNmPWxyTgNUDdESkpzB76Nx8oEd7kYkETPYATKoynvt9gi', NULL, '', '', 'Content Services', 'Bangalore', '', '', '', 0, 'Tata Consultancy Services', '', '2023-11-17 19:27:00', '2023-11-17 19:27:00'),
(562, 'Raghul M G', 'raghulgm@gmail.com', '2023-11-17 21:55:14', '$2y$10$mou7FBlPBhBKS.O9sA8cIOwQpuG5mNjOPlfnJyCnUBE1xDvcoNIoi', NULL, 0, 1, '92F4XDbJxoTg0GqZ395G3Z9ltgYAfSOevNLdxs5EP4VZukZrP1vPaP9YVY2eHJFg', 'R24104', '', '', NULL, 'Chennai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:86234cc5-2e4a-44dc-aa98-fd84c4bff0a9?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:6c6758e3-6efa-4c6b-831a-4a5168486b8f?promoid=Y69SGM5H&mv=other', '', 45, NULL, '', '2023-11-17 21:55:14', '2023-11-19 15:05:40'),
(563, 'Deepika Jayaram', 'deepikajayaram6789@gmail.com', '2023-11-18 00:26:09', '$2y$10$oqthgcQXmc.7fkqscrod9.KCQHBNIRxW3Ln0/byDPH39ZCLHw4b9q', NULL, 0, 1, 'qqJLBi3fxjExq24YvpPoY2eQ4z01BKkhuPk2WDabPP1siM9ckr0pXvjAKCldZvda', NULL, '', '', 'TCS Interactive', 'Kochi', '', '', '', 0, 'Tata Consultancy Services Ltd', '', '2023-11-18 00:26:09', '2023-11-18 00:26:09'),
(564, 'Deepika Jayaram', 'deepika.jayaram@tcs.com', '2023-11-18 00:28:43', '$2y$10$61Y8/tgo/B1SNIQDMaFS3eQAitGEgdUhjhNXKq8JpZ3WUfZP.8YWa', NULL, 0, 1, 'pEKsgoQxUpwX9oNWSC17weziqD6NmGQmc4hrVo9dpYEgbu9r4z7FORZeFTEZ2ml7', NULL, '', '', 'TCS Interactive', 'Kochi', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:923676e0-c5cf-48c2-ac96-bad73db5560c?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:c897f62e-78ba-43c8-ac30-2e536f74928b?promoid=Y69SGM5H&mv=other', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:904cd791-938f-4c23-9ac3-cc6ecea6ee4f?promoid=Y69SGM5H&mv=other', 0, 'Tata Consultancy Services Ltd', '', '2023-11-18 00:28:43', '2023-11-18 00:29:59'),
(565, 'Harmeet Kaur Saggu', 'harmeet.saggu.k@gmail.com', '2023-11-18 14:11:52', '$2y$10$ElshTJjKMFLCWrtP/JCdKOP1EgGGWJy/Vuc9s9/rFWWR0Rdh7Gy7.', NULL, 0, 1, 'yyA3TikjjxCxqkdLkYlI5teRgLPfrOM36pxfm8qGgVWHos6kyxRAymUW899FSazG', NULL, '', '', 'HR', 'Mumbai', 'https://new.express.adobe.com/published/urn:aaid:sc:AP:f9f88946-e590-4395-9459-2defbdf9e661?promoid=Y69SGM5H&mv=otherhttps://new.express.adobe.com/id/urn:aaid:sc:AP:d9e7c73b-d6d1-44ac-82e7-015a0319fd4d?invite=true&promoid=XXTQGVMK&mv=other', '', '', 43, NULL, '', '2023-11-18 14:11:52', '2023-11-18 17:21:34'),
(566, 'Rohan Deb', 'ca.rohandeb@gmail.com', '2023-11-18 19:25:55', '$2y$10$ICVPgixVy4/dphfKXQqhnO1PMaFdjdoyjgdtFxmBn3dbijCQf.kzm', NULL, 0, 1, '9xhKm3C8jFz72OuFNLp718mQTEc4Vqz0OqNYnfbXIM0lwkjFCMBLx4K7pPuly4sF', 'R30727', '', '', NULL, 'Mumbai', 'https://new.express.adobe.com/id/urn:aaid:sc:AP:9fb9ad55-d76d-50b5-a78d-57aa6a33354c?invite=true&promoid=4F569D5N&mv=other', '', '', 45, NULL, '', '2023-11-18 19:25:55', '2023-11-18 22:06:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `companycats`
--
ALTER TABLE `companycats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roadmaps`
--
ALTER TABLE `roadmaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companycats`
--
ALTER TABLE `companycats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roadmaps`
--
ALTER TABLE `roadmaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
