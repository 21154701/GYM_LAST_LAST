-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 mai 2024 à 14:35
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gymci22`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `access_level` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`admin_id`, `first_name`, `last_name`, `admin_email`, `admin_password`, `shift`, `access_level`) VALUES
(25, 'Liam', 'Moore', 'admin@mail.com', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'Morning', 1),
(27, 'Olga', 'Daileyy', 'olga@mail.com', '$2y$10$93RGZgljJMWkIispsgVwo.3UW27cZFSu1RQn2F1QBhZuFEgBZ193u', 'Morning', 1),
(28, 'Jamie', 'James', 'jamie@mail.com', '$2y$10$XkHlTuf3wgCr/BQC/Iob2.IOYCEPkE3pbSR7kv5KjTuQvNLD70.ye', 'Morning', 1),
(29, 'Jenifer', 'McFee', 'mcfee@mail.com', '$2y$10$RGOXP2JCy/Swbcm39Vak8.gFq.g09NIVijLGwgcLz7vfdgV/ioqiG', 'Evening', 1),
(31, 'Peter', 'Quill', 'quillp@mail.com', '$2y$10$sxLP3zomQx/V7wS/9b7Sk.mYUXm6MrE4yXXM4shiaYiLmha5AbKQ.', 'Morning', 1),
(39, 'Test', 'Test T', 'test@mail.com', '$2y$10$xTNbk4DQ.pqnLq4KvlTyWuzqlGeRI4iqJOT4bY56n7Up3XHwh6/pG', 'Morning', 2),
(40, 'Sunder', 'test', 'Test@gmail.com', '$2y$10$zJUFJYEfS0Lo74SPbxRau.LbZXFonjGDghc3nZdSps9gFkffg/VoC', 'Morning', 1);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `shift` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `admin_email`, `admin_password`, `shift`) VALUES
(1, 'Will', 'Williams', 'williams@mail.com', '$2y$10$VV4sWAgqpS4putVP.aku1.WjtF4tkAvfy3ji.g4emLyL1ebpmPYTW', 'Morning'),
(3, 'Liam', 'Moore', 'admin@mail.com', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'Morning');

-- --------------------------------------------------------

--
-- Structure de la table `bar`
--

CREATE TABLE `bar` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bar`
--

INSERT INTO `bar` (`id`, `name`, `price`) VALUES
(5, 'Knee Support', '9'),
(6, 'Water', '1'),
(7, 'Fruit Smoothie', '4'),
(9, 'Cap', '7'),
(12, 'Team Jersey (Real FC, Barca FC, City FC...)', '35'),
(13, 'Water bottles', '3'),
(14, 'Energy Drink', '5'),
(28, 'Sport gloves', '4'),
(35, 'Elbow Support', '8'),
(58, 'Sport Socks', '8'),
(63, 'Supplement and Banana', '10'),
(64, 'Protein Shake', '8'),
(68, 'Supplement and Apple', '10');

-- --------------------------------------------------------

--
-- Structure de la table `bin`
--

CREATE TABLE `bin` (
  `id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `membership_no` varchar(11) DEFAULT NULL,
  `member_name` varchar(20) DEFAULT NULL,
  `member_type` varchar(10) DEFAULT NULL,
  `packages` varchar(50) DEFAULT NULL,
  `total_amount` varchar(15) DEFAULT NULL,
  `cashier` varchar(20) DEFAULT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) DEFAULT NULL,
  `payment_type` varchar(15) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) DEFAULT NULL,
  `remarks` text NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bin`
--

INSERT INTO `bin` (`id`, `report_id`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `remarks`, `type`) VALUES
(12, 2, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Knee Support', '400', 'Liam', NULL, NULL, '', 'Cash', '2022-04-21 16:59:47', NULL, 'Test', ''),
(13, 1, NULL, 'Juice Bar', 'Items/Juic', ',Orange Juice s,Grape Fruit Juice Large,Knee Suppo', '850', 'hanzala', NULL, NULL, '', 'Cash', '2022-04-21 17:01:51', NULL, 'none', ''),
(14, 12, NULL, 'Juice Bar', 'Items/Juic', ',Knee Support', '18', 'admin@mail.com', NULL, NULL, '', 'Cash', '2022-04-21 17:33:03', NULL, 'Demo Test', ''),
(15, 3, '787', 'Christine', 'Monthly', '6 Months Zumba\n', '36500', 'Liam', '2022-04-18', '2022-10-15', '11292', 'Cash', '2024-05-19 14:06:19', NULL, '', ''),
(16, 4, NULL, 'Juice Bar', 'Items/Juic', ',Grape Fruit Juice Large', '250', 'Liam', NULL, NULL, '', 'Cash', '2024-05-19 14:06:28', NULL, '', ''),
(17, 6, '110', 'Charles E. King', 'Monthly', '1 Months Aerobatics/Yoga\n', '0', 'Liam', '2022-04-20', '2022-05-20', '159', 'Cash', '2024-05-19 14:06:33', NULL, '', ''),
(18, 8, NULL, 'Test Visitor', 'Daily', 'Suana/Steam\n', '0', 'admin@mail.com', '2022-04-21', NULL, '46', 'Card', '2024-05-19 14:06:40', NULL, '', ''),
(19, 7, '188', 'Margaret H. Stradfor', 'Monthly', '6 Months Aerobatics/Yoga\nZumba\n', '456', 'admin@mail.com', '2022-04-21', '2022-10-18', '0', 'Card', '2024-05-19 14:06:48', NULL, '', ''),
(20, 10, '302', 'Antonio M. Hayes', 'Monthly', '12 Months Aerobatics/Yoga\nCardio\n', '743', 'admin@mail.com', '2022-04-21', '2023-04-16', '0', 'Cheque', '2024-05-19 14:06:53', NULL, '', ''),
(21, 11, NULL, 'Juice Bar', 'Items/Juic', ',Fruit Smoothie,Chocolate Milk', '8', 'admin@mail.com', NULL, NULL, '', 'Cash', '2024-05-19 14:07:01', NULL, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `daily_members`
--

CREATE TABLE `daily_members` (
  `user_id` int(20) NOT NULL,
  `user_name` text DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_cellnumber` varchar(20) DEFAULT NULL,
  `user_nic` varchar(20) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `daily_members`
--

INSERT INTO `daily_members` (`user_id`, `user_name`, `user_address`, `user_cellnumber`, `user_nic`, `balance_status`, `time_stamp`) VALUES
(23, 'Test Visitor', 'Test Address', '7774444545', '1245785457854', '46', '2022-04-21 16:17:42');

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `remarks` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `operation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `type`, `remarks`, `time_stamp`, `operation`) VALUES
(46, 'Workout', 'New Package/Item (Name: Test Gym, Type:Workout, Price: 500 Rs) Added by Admin: Liam', '2024-04-18 18:17:10', 'Add'),
(48, 'Member', 'Record of  Member (Name: Hanzala, ID: 3) Was Deleted by Admin: Liam', '2024-05-10 05:31:13', 'Delete'),
(50, 'Workout Package', 'Record of Workout Package (Name: Personal Training, ID: 36) was updated by Admin Liam', '2024-05-10 05:36:20', 'Update'),
(57, 'Monthly Package', 'Record of Monthly Package(Duration: 1) Updated By Admin: Liam', '2024-05-08 05:39:42', 'Update'),
(58, 'Member', 'Member :Christine,787 Status was updated from Active to Dormant By Liam', '2024-05-10 05:40:18', 'Update'),
(67, 'T/M Package', 'Record of Therapy/Massage Packages (Name: Ventosa Cupping Therapy 90 Minutes) was updated by Admin: Liam', '2024-05-16 05:44:30', 'Update'),
(69, 'Workout', 'New Package/Item (Name: Cardio, Type:Workout, Price: 19 Rs) Added by Admin: Liam', '2024-05-13 17:55:36', 'Add'),
(70, 'Member', 'New Member (No:101 Name: Rodney K. Jackson) was added by Admin: Liam', '2024-05-10 18:10:06', 'Insert'),
(119, 'Member', 'New Member (No:188 Name: Margaret H. Stradford) was added by Admin: Liam', '2024-05-15 15:45:08', 'Insert'),
(121, 'Member', 'New Member (No:200 Name: Melanie R. Haynes) was added by Admin: Liam', '2024-05-11 16:26:44', 'Insert'),
(126, 'T/M Package', 'Record of Therapy/Massage Package(Name: Ventosa Cupping Therapy 90 Minutes) Deleted by Admin: yo@gmail.com', '2024-05-18 22:32:15', 'Delete'),
(127, 'T/M Package', 'Record of Therapy/Massage Package(Name: Deep Tissue Back Massage 20 Minutes) Deleted by Admin: yo@gmail.com', '2024-05-18 22:32:25', 'Delete'),
(128, 'Workout Package', 'Record of Workout Package (Name: Personal Trainer, ID: 36) was updated by Admin yo@gmail.com', '2024-05-18 22:33:24', 'Update'),
(133, 'Juice/Item', 'Item (Name: Milk Coffee) Deleted by Admin : admin@mail.com', '2024-05-19 13:52:51', 'Delete'),
(135, 'Juice/Item', 'Item (Name: Carrot Juice ) Deleted by Admin : admin@mail.com', '2024-05-19 13:55:58', 'Delete'),
(136, 'Juice/Item', 'Item (Name: Milk Pack Small) Deleted by Admin : admin@mail.com', '2024-05-19 13:56:08', 'Delete'),
(137, 'Juice/Item', 'Item (Name: Grape Fruit Juice Large) Deleted by Admin : admin@mail.com', '2024-05-19 13:56:16', 'Delete'),
(138, 'Juice/Item', 'Item (Name: Tea) Deleted by Admin : admin@mail.com', '2024-05-19 14:00:24', 'Delete'),
(139, 'Juice/Item', 'Item (Name: Black Coffee) Deleted by Admin : admin@mail.com', '2024-05-19 14:00:40', 'Delete'),
(140, 'Daily Package', 'Record of Daily package(Name: Suana/Steam) Deleted By Admin: admin@mail.com', '2024-05-19 14:01:25', 'Delete'),
(141, 'Workout Package', 'Record of Workout Package (Name: Muscle Training, ID: 15) was updated by Admin admin@mail.com', '2024-05-19 14:03:54', 'Update'),
(142, 'Workout Package', 'Record of Workout Package (Name: Dance, ID: 37) was updated by Admin admin@mail.com', '2024-05-19 14:04:12', 'Update'),
(143, 'Workout Package', 'Record of Workout Package (Name: Slimming Program, ID: 35) was updated by Admin admin@mail.com', '2024-05-19 14:05:13', 'Update'),
(144, 'Member', 'New Member (No:21 Name: Akuma) was added by Admin: admin@mail.com', '2024-05-19 14:30:22', 'Insert'),
(145, 'Member', 'New Member (No:456789465 Name: Nobody) was added by Admin: admin@mail.com', '2024-05-19 14:32:43', 'Insert');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_no` int(11) DEFAULT NULL,
  `member_name` varchar(25) NOT NULL,
  `member_father_name` varchar(25) NOT NULL,
  `member_dob` varchar(20) NOT NULL,
  `member_nic` varchar(20) NOT NULL,
  `member_gender` varchar(10) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `member_bloodpressure` varchar(20) DEFAULT NULL,
  `member_heart_disease` varchar(20) DEFAULT NULL,
  `member_diabetes` varchar(20) DEFAULT NULL,
  `member_hepatitis` varchar(20) DEFAULT NULL,
  `member_asthma` varchar(15) DEFAULT NULL,
  `member_arthritis` varchar(20) DEFAULT NULL,
  `member_others` varchar(25) DEFAULT NULL,
  `member_resident` varchar(50) NOT NULL,
  `member_address` varchar(50) NOT NULL,
  `member_telephone` varchar(20) NOT NULL,
  `member_fax_no` varchar(20) DEFAULT NULL,
  `member_email` varchar(20) NOT NULL,
  `member_emergency_no` varchar(20) DEFAULT NULL,
  `member_aerobics` varchar(20) DEFAULT NULL,
  `member_gymnasium` varchar(20) DEFAULT NULL,
  `member_zumba` varchar(20) DEFAULT NULL,
  `member_personal_training` varchar(20) DEFAULT NULL,
  `member_gym_time` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `freeze_by` varchar(15) DEFAULT NULL,
  `freeze_date` date DEFAULT NULL,
  `activate_date` date DEFAULT NULL,
  `monthlyfee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fee_status` varchar(6) DEFAULT NULL,
  `balance_status` varchar(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateby` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `member_no`, `member_name`, `member_father_name`, `member_dob`, `member_nic`, `member_gender`, `image`, `member_bloodpressure`, `member_heart_disease`, `member_diabetes`, `member_hepatitis`, `member_asthma`, `member_arthritis`, `member_others`, `member_resident`, `member_address`, `member_telephone`, `member_fax_no`, `member_email`, `member_emergency_no`, `member_aerobics`, `member_gymnasium`, `member_zumba`, `member_personal_training`, `member_gym_time`, `status`, `freeze_by`, `freeze_date`, `activate_date`, `monthlyfee_date`, `end_date`, `fee_status`, `balance_status`, `time_stamp`, `updateby`) VALUES
(5, 787, 'Christine', 'Zeuus', '02/12/1990', '1111111111110', 'Female', NULL, 'bloodpressure', '', '', NULL, '', NULL, '', 'Test', 'Testaddress', '7777777774', NULL, 'christine@mail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Dormant', NULL, NULL, NULL, '2024-04-18', '2024-10-15', 'Paid', '190', '2024-05-19 14:26:26', NULL),
(6, 101, 'Promise', 'Tobey Jackson', '06/11/1985', '1111002100140', 'Male', NULL, '', '', '', NULL, '', NULL, 'none', '0145896570', '84 Bloomfield Way', '0145896570', NULL, 'rodneyk@mail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Dormant', NULL, NULL, NULL, '2024-04-20', '2024-10-17', 'Paid', '100', '2024-05-19 14:25:55', NULL),
(7, 110, 'Charles E. King', 'Ben E. King', '12/10/1989', '1111111100101', 'Male', NULL, '', '', '', NULL, '', NULL, 'none', '0125698740', '63 Koontz Lane', '0125698740', NULL, 'charlek@mail.com', NULL, NULL, NULL, NULL, NULL, 'Evening', 'Dormant', NULL, NULL, NULL, '2024-04-20', '2024-05-20', 'Unpaid', '200', '2024-05-19 14:27:34', NULL),
(10, 302, 'Antonio M. Hayes', 'none', '12/08/1990', '3322114455100', 'Male', NULL, '', '', '', NULL, '', NULL, 'none', '0125698570', '88 Gordon Street', '0125698570', NULL, 'hayanto@mail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Dormant', NULL, NULL, NULL, '2024-04-21', '2025-04-16', 'UnPaid', '400', '2024-05-19 14:27:59', NULL),
(11, 21, 'Akuma', 'Sama', '10/02/2001', '121345646468', 'Male', NULL, '', '', '', NULL, '', NULL, '', 'Douala', 'Bonaberi', '3', NULL, 'gitsunder@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Morning', 'Active', NULL, NULL, NULL, '2024-05-19', '2025-05-14', 'Paid', '45', '2024-05-19 14:30:22', NULL),
(12, 456789465, 'Nobody', 'Yeahh', '02/01/2002', '46545131321231', 'Male', NULL, '', '', '', NULL, '', NULL, '', 'Yaoundé', 'Nsimaléen', '032454654', NULL, 'nobody@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Evening', 'Active', NULL, NULL, NULL, '2024-05-19', '2025-05-14', 'Paid', '1500', '2024-05-19 14:32:43', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `duration` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `type`, `duration`) VALUES
(3, 'Full Body Massage', 98, 'TM', '90'),
(10, 'Swedish Massage', 55, 'TM', ''),
(12, 'Head And Shoulder Massage ', 35, 'TM', ''),
(15, 'Muscle Training', 40, 'Workout', ''),
(26, 'Orange Juice', 200, 'juice', NULL),
(35, 'Slimming Program', 35, 'Workout', ''),
(36, 'Personal Trainer', 1300, 'Workout', ''),
(37, 'Dance', 75, 'Workout', ''),
(38, 'Cardio', 19, 'Workout', ''),
(39, '12 Months', 595, 'Monthly', '12');

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `id_r` int(11) NOT NULL,
  `membership_no` varchar(15) DEFAULT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_type` varchar(10) NOT NULL,
  `packages` varchar(50) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  `cashier` varchar(20) NOT NULL,
  `fee_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `balance` varchar(11) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount` varchar(15) NOT NULL,
  `fee` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reports`
--

INSERT INTO `reports` (`id_r`, `membership_no`, `member_name`, `member_type`, `packages`, `total_amount`, `cashier`, `fee_date`, `end_date`, `balance`, `payment_type`, `time_stamp`, `discount`, `fee`, `tax`, `amount_paid`) VALUES
(5, '101', 'Rodney K. Jackson', 'Monthly', '6 Months Cardio\n', '412.88', 'Liam', '2022-04-20', '2022-10-17', '0', 'Cash', '2022-04-21 17:31:34', '0', 397, 16, NULL),
(9, '200', 'Melanie R. Haynes', 'Monthly', '1 Months Cardio\n', '151', 'admin@mail.com', '2022-04-21', '2022-05-21', '0', 'Cash', '2022-04-21 17:31:43', '0', 146, 6, NULL),
(12, '21', 'Akuma', 'Monthly', '12 Months Muscle Training\n', '45', 'admin@mail.com', '2024-05-19', '2025-05-14', '0', 'Cash', '2024-05-19 14:31:05', '0', 635, 25, NULL),
(13, '21', 'Akuma', 'Monthly', '12 Months Muscle Training\n', '615', 'admin@mail.com', '2024-05-19', '2025-05-14', '0', 'Cash', '2024-05-19 14:31:05', '0', 635, 25, NULL),
(14, '456789465', 'Nobody', 'Monthly', '12 Months Personal Trainer\n', '1500', 'admin@mail.com', '2024-05-19', '2025-05-14', '470', 'Cash', '2024-05-19 14:32:43', '0', 1895, 76, NULL),
(15, NULL, 'Juice Bar', 'Items/Juic', ',Elbow Support', '8', 'Test@gmail.com', NULL, NULL, '', 'Cash', '2024-05-21 13:00:09', '0', 0, 0, 8);

-- --------------------------------------------------------

--
-- Structure de la table `therapy_pkgs`
--

CREATE TABLE `therapy_pkgs` (
  `id` int(11) NOT NULL,
  `pkg_name` varchar(50) NOT NULL,
  `pkg_price` int(11) NOT NULL,
  `pkg_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `therapy_pkgs`
--

INSERT INTO `therapy_pkgs` (`id`, `pkg_name`, `pkg_price`, `pkg_time`) VALUES
(1, 'Full Body Massage', 6000, 90),
(2, 'Swedish Massage', 4000, 60),
(3, 'Deep Tissue Back Massage', 3000, 30),
(4, 'Head And Shoulde Massage', 2000, 30),
(5, 'Ventosa Cuppping Therapy', 6000, 90),
(6, 'Deep Tissue Therapy', 2000, 30);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bin`
--
ALTER TABLE `bin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `daily_members`
--
ALTER TABLE `daily_members`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_r`);

--
-- Index pour la table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `bar`
--
ALTER TABLE `bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `bin`
--
ALTER TABLE `bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `daily_members`
--
ALTER TABLE `daily_members`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `therapy_pkgs`
--
ALTER TABLE `therapy_pkgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
