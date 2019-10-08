-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Sam 01 Décembre 2018 à 20:46
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `db`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `id_activity` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `action` text NOT NULL,
  `date_activity` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `attente`
--

CREATE TABLE `attente` (
  `id_transfer` int(100) NOT NULL,
  `id_player` varchar(255) NOT NULL,
  `id_president` varchar(255) NOT NULL,
  `from_c` varchar(255) NOT NULL,
  `to_c` varchar(255) NOT NULL,
  `cost` varchar(110) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL,
  `name_player` varchar(64) NOT NULL,
  `date_end_contract` text NOT NULL,
  `price_breach_contract` text NOT NULL,
  `score_player` text NOT NULL,
  `team_player` varchar(64) NOT NULL,
  `country` varchar(255) NOT NULL,
  `speed_player` text NOT NULL,
  `dribbling_player` text NOT NULL,
  `shooting_player` text NOT NULL,
  `defense_player` text NOT NULL,
  `physical_performance` text NOT NULL,
  `position_player` varchar(64) NOT NULL,
  `passes_player` text NOT NULL,
  `salary_player` text NOT NULL,
  `pic` varchar(256) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `players`
--

INSERT INTO `players` (`id_player`, `name_player`, `date_end_contract`, `price_breach_contract`, `score_player`, `team_player`, `country`, `speed_player`, `dribbling_player`, `shooting_player`, `defense_player`, `physical_performance`, `position_player`, `passes_player`, `salary_player`, `pic`, `crypt`) VALUES
(1, 'm2MAyF', '2020', 'SXO', 'YQ', 'oyF6G ry6BH-f2FAy6B', 'FR', 'YQ', 'YT', 'XS', 'RQ', 'TY', 'ku', 'XR', 'PW', '692211.jpg', 1),
(2, 'd16BGCB byJyB6', '2019', 'ROO', 'XY', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XV', 'XX', 'XV', 'TO', 'WO', 'rs', 'XP', 'PX', 'default.png', 1),
(3, 's56y4C r69Jy', '2022', 'PQT', 'XX', 'oyF6G ry6BH-f2FAy6B', 'FR', 'SR', 'WX', 'VQ', 'XT', 'XO', 'ba', 'WY', 'PT', 'default.png', 1),
(4, 'jM96yB lzyDDŽ', '2022', 'PXO', 'XW', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XQ', 'XQ', 'XW', 'RY', 'WV', 'qu', 'VR', 'QO', 'default.png', 1),
(5, 'lyF0C t2FFyHH6', '2021', 'PRV', 'XV', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WR', 'XY', 'WS', 'VW', 'VR', 'bl', 'XS', 'QT', 'default.png', 1),
(6, 'çB429 c6 lyF’y', '2022', 'PQX', 'XS', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WX', 'XY', 'WQ', 'SV', 'TX', 'qu', 'XR', 'QS', 'default.png', 1),
(7, 'lyFEI6B5CG', '2022', 'TYO', 'XS', 'oyF6G ry6BH-f2FAy6B', 'FR', 'YO', 'XQ', 'XP', 'SS', 'WP', 'ba', 'WR', 'PT', 'default.png', 1),
(8, 'iI96yB cFyL92F', '2020', 'PXO', 'XR', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WP', 'TY', 'QW', 'XR', 'XP', 'bl', 'TX', 'QO', 'default.png', 1),
(9, 'oF2GB29 j6AD2Az2', '2019', 'PRV', 'XR', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XV', 'XV', 'XO', 'RY', 'WR', 'ba', 'WQ', 'QO', 'default.png', 1),
(10, 'Z1F62B qyz6CH', '2019', 'PQX', 'XR', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XR', 'XP', 'WS', 'WW', 'WV', 'bl', 'XO', 'QT', 'default.png', 1),
(11, 's5CAyG l2IB62F', '2019', 'TYO', 'XQ', 'oyF6G ry6BH-f2FAy6B', 'FR', 'VT', 'VT', 'SP', 'XQ', 'WT', 'qa', 'VQ', 'QS', 'default.png', 1),
(12, 'cyB6 Z9J2G', '2022', 'XO', 'XQ', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XY', 'XW', 'WT', 'RV', 'TT', 'qa', 'WV', 'PT', 'default.png', 1),
(13, 'kyGGyBy c6yFFy', '2022', 'QOO', 'XO', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WR', 'XQ', 'XO', 'SQ', 'WP', 'bcl', 'WX', 'QO', 'default.png', 1),
(14, 'kyMJ6B jIFNyKy', '2020', 'PRV', 'WY', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WW', 'WX', 'WV', 'RR', 'VR', 'ka', 'VY', 'PX', 'default.png', 1),
(15, 'dF60 lyL6A b5CIDC-lCH6B4', '2020', 'PQX', 'WW', 'oyF6G ry6BH-f2FAy6B', 'FR', 'TQ', 'WP', 'TP', 'WW', 'WO', 'kl', 'WV', 'PX', 'default.png', 1),
(16, 's569C j25F2F', '2022', 'PRV', 'WW', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XX', 'XO', 'WR', 'RP', 'VT', 'ba', 'VX', 'PX', 'default.png', 1),
(17, 'a2FByH', '2022', 'PQX', 'WV', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WW', 'WW', 'TY', 'WO', 'VP', 'ka', 'VV', 'PT', 'default.png', 1),
(18, 'i2GŽ', '2021', 'TYO', 'WV', 'oyF6G ry6BH-f2FAy6B', 'FR', 'VY', 'VY', 'VV', 'WP', 'WY', 'ku', 'VX', 'QO', 'default.png', 1),
(19, 'b5F6GHCD52F m8IB8I', '2021', 'XO', 'WV', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WO', 'WR', 'WT', 'QX', 'TO', 'bl', 'TX', 'QT', 'default.png', 1),
(20, 'i2yB-b5F6GHCD52 ay52z208', '2023', 'QOO', 'WQ', 'oyF6G ry6BH-f2FAy6B', 'FR', 'XS', 'WV', 'VS', 'QX', 'VT', 'rs', 'VW', 'QT', 'default.png', 1),
(21, 's6ACH5M u2y5', '2022', 'TYO', 'VY', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WX', 'VQ', 'ST', 'VV', 'WS', 'rs', 'TW', 'QT', 'default.png', 1),
(22, 'lCIGGy c6yzM', '2023', 'XO', 'VT', 'oyF6G ry6BH-f2FAy6B', 'FR', 'VX', 'VT', 'TT', 'TY', 'WV', 'qu', 'VP', 'QS', 'default.png', 1),
(23, 'wy06B2 Z196', '2022', 'QOT', 'VT', 'oyF6G ry6BH-f2FAy6B', 'FR', 'WP', 'VW', 'TS', 'SO', 'SY', 'bl', 'TX', 'QR', 'default.png', 1),
(24, 'Z920 f2CF42B', '2022', 'XO', 'VS', 'oyF6G ry6BH-f2FAy6B', 'FR', 'VW', 'VT', 'VR', 'ST', 'VV', 'qa', 'VT', 'PX', 'default.png', 1),
(25, 'myz69 e286F', '2019', 'QOO', 'XT', 'n9MAD6EI2 kMCBBy6G', 'FR', 'XS', 'XT', 'XO', 'VO', 'VS', 'bZl', 'XS', 'PX', 'default.png', 1),
(26, 'l2AD56G c2DyM', '2019', 'TYO', 'XR', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VX', 'XV', 'VY', 'TS', 'SY', 'rs', 'WX', 'QO', 'default.png', 1),
(27, 'lyF029C', '2023', 'QVO', 'XP', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VT', 'VT', 'SY', 'XQ', 'XP', 'ba', 'VS', 'QT', 'default.png', 1),
(28, 'kI0yG sCIGyFH', '2022', 'QPO', 'WY', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VY', 'WV', 'WR', 'WX', 'XX', 'bcl', 'WS', 'QS', 'default.png', 1),
(29, 'qy3y29', '2022', 'PXY', 'WY', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WO', 'WT', 'WX', 'RW', 'VR', 'qa', 'VQ', 'PT', 'default.png', 1),
(30, 'a2FHFyB1 sFyCFŽ', '2019', 'PVO', 'WY', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WT', 'WQ', 'VT', 'WX', 'XP', 'qu', 'WQ', 'PX', 'default.png', 1),
(31, 'j2BBM s2H2', '2019', 'TYO', 'WX', 'n9MAD6EI2 kMCBBy6G', 'FR', 'XP', 'XQ', 'WT', 'SW', 'VW', 'qa', 'WQ', 'QT', 'default.png', 1),
(32, 'syB4IM m1CAz292', '2022', 'XO', 'WX', 'n9MAD6EI2 kMCBBy6G', 'FR', 'XS', 'XS', 'VQ', 'WQ', 'VY', 'bl', 'WT', 'QS', 'default.png', 1),
(33, 'gCIGG2A ZCIyF', '2022', 'QOT', 'WX', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VS', 'WO', 'TT', 'WY', 'WV', 'bl', 'VV', 'QR', 'default.png', 1),
(34, 'e2F9yB1 l2B1M', '2023', 'PXY', 'WW', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VS', 'WO', 'SV', 'WX', 'VX', 'ka', 'VQ', 'PX', 'default.png', 1),
(35, 'kŽC cIzC6G', '2022', 'PTX', 'WW', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WP', 'WT', 'WQ', 'TX', 'WO', 'qa', 'WW', 'PX', 'default.png', 1),
(36, 'lyFy9', '2022', 'PTX', 'WW', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VS', 'WV', 'WV', 'WQ', 'WR', 'ka', 'WV', 'PT', 'default.png', 1),
(37, 'iŽFŽAM lCF29', '2022', 'PQO', 'WW', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VW', 'WX', 'VW', 'VV', 'VY', 'ba', 'WX', 'QT', 'default.png', 1),
(38, 'lCIGGy c2AzŽ9Ž', '2021', 'PVO', 'WT', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WR', 'WT', 'VY', 'VS', 'VT', 'rs', 'WS', 'PQ', 'default.png', 1),
(39, 'iCF1yB e2FF6', '2019', 'TYO', 'WT', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WQ', 'WX', 'WQ', 'QX', 'VO', 'bl', 'WT', 'PW', 'default.png', 1),
(40, 'lyLK29 bCFB2H', '2023', 'XO', 'WT', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WY', 'XO', 'VS', 'SR', 'VO', 'qu', 'WO', 'QT', 'default.png', 1),
(41, 'iyGCB c2ByM2F', '2022', 'QOT', 'WS', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VR', 'VX', 'WR', 'SR', 'VX', 'ba', 'VQ', 'QR', 'default.png', 1),
(42, 'lyDCI wyB4y-l''a6Ky', '2022', 'PXY', 'WR', 'n9MAD6EI2 kMCBBy6G', 'FR', 'SS', 'TW', 'SR', 'WS', 'WX', 'ba', 'TV', 'QT', 'default.png', 1),
(43, 'lyFH6B s2FF62F', '2019', 'PTX', 'WR', 'n9MAD6EI2 kMCBBy6G', 'FR', 'YQ', 'WW', 'VT', 'TP', 'VS', 'rs', 'VV', 'QS', 'default.png', 1),
(44, 'oyD2 b52685 c6CD', '2019', 'XO', 'WO', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VS', 'VQ', 'VT', 'VT', 'WS', 'bl', 'VW', 'QR', 'default.png', 1),
(45, 'n96J62F j2A2B', '2022', 'QOT', 'WO', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WP', 'VT', 'VT', 'VW', 'WQ', 'bl', 'VX', 'PX', 'default.png', 1),
(46, 'ZA6B2 fCI6F6', '2022', 'QVO', 'VW', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WO', 'VT', 'TY', 'QY', 'VO', 'rs', 'VT', 'PX', 'default.png', 1),
(47, 'nIAyF rC92H', '2023', 'QPO', 'VQ', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VY', 'VS', 'VO', 'ST', 'VY', 'ba', 'VO', 'PX', 'default.png', 1),
(48, 'q2C fF6336H5G', '2022', 'PXY', 'VP', 'n9MAD6EI2 kMCBBy6G', 'FR', 'VY', 'VP', 'TP', 'VP', 'VP', 'rs', 'TT', 'PT', 'default.png', 1),
(49, 'wyGG6B e286F', '2022', 'PTX', 'VO', 'n9MAD6EI2 kMCBBy6G', 'FR', 'WS', 'TY', 'RQ', 'TR', 'TX', 'ku', 'SY', 'QT', 'default.png', 1),
(50, 'lyF6C ay9CH2996', '2022', 'PQO', 'XR', 'nfb m602', 'FR', 'VY', 'XQ', 'WR', 'WO', 'VY', 'rs', 'WY', 'PQ', 'default.png', 1),
(51, 'cyBH2', '2023', 'PTX', 'XO', 'nfb m602', 'FR', 'RX', 'SX', 'SY', 'XQ', 'WY', 'ba', 'VQ', 'QT', 'default.png', 1),
(52, 'Z99yB ry6BH-lyL6A6B', '2022', 'TYO', 'WX', 'nfb m602', 'FR', 'WS', 'XO', 'VT', 'WO', 'VY', 'qu', 'WT', 'QS', 'default.png', 1),
(53, 'uM9yB bMDF62B', '2022', 'XO', 'WX', 'nfb m602', 'FR', 'VO', 'WV', 'WO', 'VY', 'VX', 'bl', 'WV', 'QR', 'default.png', 1),
(54, 'ZFByI1 rCIEI2H', '2022', 'QVO', 'WW', 'nfb m602', 'FR', 'VX', 'VR', 'RO', 'WX', 'WQ', 'qa', 'TQ', 'PX', 'default.png', 1),
(55, 'o62FF2 k22G-l29CI', '2022', 'QPO', 'WW', 'nfb m602', 'FR', 'XO', 'WX', 'VS', 'WT', 'WV', 'bl', 'WO', 'PX', 'default.png', 1),
(56, 'cyB69C', '2022', 'PXY', 'WV', 'nfb m602', 'FR', 'XY', 'WR', 'WO', 'SW', 'WQ', 'bl', 'WO', 'QT', 'default.png', 1),
(57, 'b5F6GHCD52 gŽF2992', '2019', 'PVO', 'WV', 'nfb m602', 'FR', 'XR', 'WV', 'WW', 'RQ', 'TX', 'ba', 'VS', 'QS', 'default.png', 1),
(58, 'b5F6GHCD52 iy992H', '2019', 'TYO', 'WT', 'nfb m602', 'FR', 'RR', 'TR', 'RX', 'WV', 'WS', 'qa', 'TV', 'QO', 'default.png', 1),
(59, 'ly9yB4 ryFF', '2022', 'XO', 'WS', 'nfb m602', 'FR', 'WR', 'WQ', 'WS', 'QT', 'WW', 'ba', 'SX', 'PX', 'default.png', 1),
(60, 'qŽA6 uy9H2F', '2022', 'QOT', 'WR', 'nfb m602', 'FR', 'WX', 'WR', 'VW', 'TV', 'VQ', 'bl', 'VX', 'PX', 'default.png', 1),
(61, 'Z1F62B syA2N2', '2021', 'PXY', 'WR', 'nfb m602', 'FR', 'WW', 'WO', 'VY', 'SW', 'WP', 'bcl', 'VR', 'PY', 'default.png', 1),
(62, 'ayGG2A rFyF36', '2022', 'XO', 'WR', 'nfb m602', 'FR', 'XV', 'WS', 'VV', 'VT', 'WS', 'qu', 'WO', 'PT', 'default.png', 1),
(63, 'l608y‘9 k2 a65yB', '2021', 'QOO', 'WQ', 'nfb m602', 'FR', 'WR', 'WS', 'TW', 'VQ', 'WP', 'rs', 'WO', 'PY', 'default.png', 1),
(64, 'n96J62F aCG0y496', '2022', 'TYO', 'WP', 'nfb m602', 'FR', 'WS', 'VX', 'VX', 'SR', 'VW', 'ka', 'VS', 'PY', 'default.png', 1),
(65, 'oyHF608 aIFB2F', '2022', 'XO', 'WP', 'nfb m602', 'FR', 'VY', 'TT', 'ST', 'WP', 'WS', 'qa', 'TW', 'PT', 'default.png', 1),
(66, 'h5GyB ry08C', '2023', 'XO', 'WP', 'nfb m602', 'FR', 'VR', 'VY', 'VR', 'VT', 'WS', 'rs', 'VS', 'PQ', 'default.png', 1),
(67, 'wCI023 ZHy9', '2021', 'QOO', 'WO', 'nfb m602', 'FR', 'VP', 'VR', 'SS', 'VV', 'WS', 'qa', 'VT', 'QO', 'default.png', 1),
(68, 'qy06B2 bC9M', '2022', 'TYO', 'VY', 'nfb m602', 'FR', 'WY', 'VW', 'VW', 'QV', 'TV', 'ka', 'TW', 'PX', 'default.png', 1),
(69, 'lMN6yB2 lyC961y', '2022', 'XO', 'VY', 'nfb m602', 'FR', 'WW', 'VY', 'VT', 'QW', 'TX', 'rs', 'TQ', 'PX', 'default.png', 1),
(70, 'i2yB-t60HCF ly82B4C', '2023', 'YT', 'VY', 'nfb m602', 'FR', 'WO', 'VT', 'TY', 'VS', 'WX', 'bl', 'VQ', 'PY', 'default.png', 1),
(71, 'h4ByH6IG fyBy4C', '2022', 'QTO', 'VW', 'nfb m602', 'FR', 'WR', 'VY', 'VW', 'ST', 'TT', 'rs', 'VS', 'PT', 'default.png', 1),
(72, 'fyIH62F k9CF6G', '2019', 'QVO', 'VV', 'nfb m602', 'FR', 'VT', 'TV', 'TR', 'VS', 'XP', 'ba', 'VO', 'QO', 'default.png', 1),
(73, 'g605yA ly5CI', '2019', 'QPO', 'VS', 'nfb m602', 'FR', 'VP', 'TS', 'VP', 'TW', 'WO', 'qu', 'SP', 'PX', 'default.png', 1),
(74, 'ey90yC', '2022', 'PXY', 'XT', 'Zr lCBy0C', 'FR', 'XR', 'XS', 'XP', 'WP', 'XR', 'rs', 'XS', 'PX', 'default.png', 1),
(75, 'jyA69 f968', '2021', 'PTX', 'XR', 'Zr lCBy0C', 'FR', 'XV', 'XR', 'WT', 'SR', 'TQ', 'ba', 'XP', 'PT', 'default.png', 1),
(76, 'qCBM kCD2G', '2022', 'YT', 'XO', 'Zr lCBy0C', 'FR', 'WR', 'XP', 'WT', 'RX', 'TX', 'ql', 'WX', 'QO', 'default.png', 1),
(77, 'rH2JyB iCJ2H6?', '2022', 'VX', 'XO', 'Zr lCBy0C', 'FR', 'WO', 'VX', 'SW', 'XR', 'WS', 'rs', 'VR', 'QT', 'default.png', 1),
(78, 'c76zF69 r616zŽ', '2023', 'WO', 'XO', 'Zr lCBy0C', 'FR', 'WO', 'WY', 'WO', 'WP', 'WS', 'qa', 'WW', 'QS', 'default.png', 1),
(79, 'Z92LyB1F fC9CJ6B', '2022', 'POO', 'WY', 'Zr lCBy0C', 'FR', 'WP', 'WV', 'TX', 'WX', 'XP', 'bl', 'VX', 'QO', 'default.png', 1),
(80, 'i2A2FGCB', '2019', 'QPO', 'WY', 'Zr lCBy0C', 'FR', 'SX', 'WW', 'TT', 'WS', 'VY', 'ba', 'WX', 'QT', 'default.png', 1),
(81, 'wCIF6 s6292AyBG', '2019', 'PXY', 'WY', 'Zr lCBy0C', 'FR', 'VV', 'VY', 'SV', 'XO', 'WQ', 'bl', 'WR', 'QS', 'default.png', 1),
(82, 'my02F b5y196', '2022', 'PTX', 'WX', 'Zr lCBy0C', 'FR', 'SX', 'VS', 'WT', 'RS', 'XT', 'kl', 'VP', 'PT', 'default.png', 1),
(83, 'i2yB-dI12G Z5C9CI', '2022', 'YT', 'WV', 'Zr lCBy0C', 'FR', 'WO', 'WW', 'WX', 'RO', 'VR', 'bcl', 'VR', 'QO', 'default.png', 1),
(84, 'ZBHCB6C ayFF20y', '2023', 'VX', 'WT', 'Zr lCBy0C', 'FR', 'WQ', 'VY', 'WW', 'RT', 'WX', 'ka', 'TW', 'QT', 'default.png', 1),
(85, 'wCIGG23 Z•H a2BByGG2F', '2022', 'QVO', 'WT', 'Zr lCBy0C', 'FR', 'TT', 'WP', 'WR', 'WO', 'WS', 'bl', 'WP', 'QO', 'default.png', 1),
(86, 'o29Ž', '2019', 'QPO', 'WT', 'Zr lCBy0C', 'FR', 'WO', 'VS', 'RS', 'WT', 'WS', 'bcl', 'TX', 'PX', 'default.png', 1),
(87, 'ZB1F2y qy446', '2019', 'PXY', 'WT', 'Zr lCBy0C', 'FR', 'RP', 'TS', 'TY', 'WP', 'XR', 'ba', 'SX', 'PX', 'default.png', 1),
(88, 'Z9AyAM sCIFŽ', '2022', 'PTX', 'WS', 'Zr lCBy0C', 'FR', 'XT', 'VX', 'VS', 'VV', 'WW', 'qa', 'VT', 'QO', 'default.png', 1),
(89, 'ryAI29 fFyB1G6F', '2021', 'QVO', 'WS', 'Zr lCBy0C', 'FR', 'XY', 'WT', 'VT', 'SV', 'VS', 'ql', 'WP', 'PX', 'default.png', 1),
(90, 'iCF42', '2022', 'QPO', 'WS', 'Zr lCBy0C', 'FR', 'XY', 'WQ', 'WO', 'SP', 'WO', 'ka', 'VV', 'PX', 'default.png', 1),
(91, 'qCBy‘9 o62FF2-fyzF629', '2019', 'QPO', 'WQ', 'Zr lCBy0C', 'FR', 'VT', 'VQ', 'SO', 'WQ', 'XO', 'qa', 'VO', 'PY', 'default.png', 1),
(92, 'jŽJ6B m''cCFyA', '2019', 'PXY', 'WO', 'Zr lCBy0C', 'FR', 'XO', 'WO', 'RT', 'VT', 'WS', 'bcl', 'VV', 'PT', 'default.png', 1),
(93, 'iCF16 lzCI9y', '2022', 'PTX', 'WO', 'Zr lCBy0C', 'FR', 'WV', 'VX', 'VP', 'VV', 'VT', 'ql', 'VS', 'QO', 'default.png', 1),
(94, 'o62HFC o29924F6', '2022', 'YT', 'VW', 'Zr lCBy0C', 'FR', 'TV', 'TP', 'QV', 'VT', 'WP', 'rs', 'RW', 'PX', 'default.png', 1),
(95, 'rC36yB2 c6CD', '2023', 'VX', 'VT', 'Zr lCBy0C', 'FR', 'XV', 'VX', 'TY', 'RO', 'TY', 'bZl', 'TS', 'PX', 'default.png', 1),
(96, 'lCIGGy rM99y', '2022', 'POO', 'VT', 'Zr lCBy0C', 'FR', 'WW', 'VT', 'VP', 'QY', 'TW', 'rs', 'VP', 'PY', 'default.png', 1),
(97, 'u6992A f2Izz29G', '2019', 'PTO', 'VS', 'Zr lCBy0C', 'FR', 'ST', 'TS', 'TR', 'VP', 'WV', 'rs', 'VP', 'PX', 'default.png', 1),
(98, 'iI962B r2FFyBC', '2020', 'PQO', 'VS', 'Zr lCBy0C', 'FR', 'SS', 'VQ', 'SR', 'VV', 'WO', 'ka', 'VP', 'QO', 'default.png', 1),
(99, 'k6CB29 l2GG6', '2021', 'WOO', 'YS', 'eb ayF029CBy', 'ES', 'XX', 'YV', 'YP', 'RQ', 'VP', 'be', 'XX', 'SO', 'default.png', 1),
(100, 'kI6G rI‡F2N', '2021', 'TOO', 'YP', 'eb ayF029CBy', 'ES', 'WV', 'YP', 'WV', 'WO', 'VW', 'rs', 'YO', 'RO', 'default.png', 1),
(101, 'bCIH6B5C', '2019', 'TOO', 'XX', 'eb ayF029CBy', 'ES', 'YT', 'XT', 'XX', 'TX', 'WV', 'ku', 'XS', 'RT', 'default.png', 1),
(102, 'r2F46C aIGEI2HG', '2019', 'QOO', 'XX', 'eb ayF029CBy', 'ES', 'YO', 'YP', 'WV', 'RV', 'TO', 'bcl', 'XS', 'QO', 'default.png', 1),
(103, 'ryAI29 UAH6H6', '2021', 'QTO', 'XW', 'eb ayF029CBy', 'ES', 'VR', 'WQ', 'VR', 'XX', 'WY', 'ba', 'WR', 'PX', 'default.png', 1),
(104, 'hJyB qy86H6?', '2021', 'ROO', 'XW', 'eb ayF029CBy', 'ES', 'XS', 'WT', 'XS', 'RT', 'XW', 'bl', 'WV', 'PX', 'default.png', 1),
(105, 'o6EIŽ', '2022', 'PXO', 'XW', 'eb ayF029CBy', 'ES', 'VY', 'YO', 'WO', 'VP', 'TW', 'ba', 'XW', 'PX', 'default.png', 1),
(106, 'iCF16 Z9zy', '2022', 'PQT', 'XW', 'eb ayF029CBy', 'ES', 'WQ', 'VO', 'QV', 'XX', 'XV', 'ka', 'SV', 'PT', 'default.png', 1),
(107, 'ZFHIFC t61y9', '2019', 'PXO', 'XT', 'eb ayF029CBy', 'ES', 'VS', 'XS', 'XV', 'RX', 'VT', 'bcl', 'WW', 'QO', 'default.png', 1),
(108, 'r2F46 qCz2FHC', '2019', 'PRV', 'XS', 'eb ayF029CBy', 'ES', 'VS', 'VO', 'SP', 'XR', 'XT', 'qa', 'TX', 'QT', 'default.png', 1),
(109, 'ly90CA', '2022', 'PQX', 'XR', 'eb ayF029CBy', 'ES', 'VT', 'WO', 'VR', 'XT', 'XO', 'qu', 'WR', 'QS', 'default.png', 1),
(110, 'ZFH5IF', '2021', 'TYO', 'XQ', 'eb ayF029CBy', 'ES', 'WT', 'XQ', 'WR', 'TW', 'VW', 'bl', 'XV', 'QR', 'default.png', 1),
(111, 'b9ŽA2BH k2B492H', '2021', 'XO', 'XQ', 'eb ayF029CBy', 'ES', 'RT', 'VT', 'VR', 'XQ', 'WY', 'ba', 'VV', 'PX', 'default.png', 1),
(112, 'nIGAyB2 c2AzŽ9Ž', '2022', 'QOO', 'XQ', 'eb ayF029CBy', 'ES', 'WR', 'XQ', 'VW', 'WQ', 'VX', 'qu', 'XP', 'PX', 'default.png', 1),
(113, 'qy36B5y', '2020', 'PRV', 'XQ', 'eb ayF029CBy', 'ES', 'XX', 'XS', 'WW', 'TW', 'WP', 'bZl', 'WT', 'PT', 'default.png', 1),
(114, 'mŽ9GCB r2A21C', '2020', 'PQX', 'XO', 'eb ayF029CBy', 'ES', 'VR', 'WQ', 'XP', 'RP', 'WS', 'qa', 'VT', 'QO', 'default.png', 1),
(115, 'c2B6G rI‡F2N', '2022', 'PRV', 'WY', 'eb ayF029CBy', 'ES', 'XP', 'WV', 'WW', 'SW', 'WT', 'bl', 'WS', 'QT', 'default.png', 1),
(116, 's5CAyG t2FAy292B', '2022', 'PQX', 'WW', 'eb ayF029CBy', 'ES', 'WY', 'WY', 'WW', 'RR', 'VO', 'ba', 'VY', 'QS', 'default.png', 1),
(117, 'lIB6F', '2021', 'TYO', 'WW', 'eb ayF029CBy', 'ES', 'VY', 'WW', 'VT', 'WR', 'WR', 'rs', 'WS', 'QR', 'default.png', 1),
(118, 'r2F46 ryAD2F', '2021', 'XO', 'WR', 'eb ayF029CBy', 'ES', 'XY', 'WX', 'WO', 'SS', 'VY', 'bcl', 'WO', 'PX', 'default.png', 1),
(119, 'Z92–ˆ', '2023', 'QOO', 'WO', 'eb ayF029CBy', 'ES', 'VT', 'VQ', 'SP', 'VV', 'WY', 'bl', 'VP', 'PX', 'default.png', 1),
(120, 'lCIGGy uy4IŽ', '2021', 'TYO', 'VY', 'eb ayF029CBy', 'ES', 'YR', 'VY', 'VT', 'RR', 'VT', 'qa', 'TX', 'QO', 'default.png', 1),
(121, 'bI0IF299y', '2022', 'XO', 'VY', 'eb ayF029CBy', 'ES', 'VP', 'VP', 'RX', 'WQ', 'WP', 'ka', 'TX', 'QT', 'default.png', 1),
(122, 'q6EI6 oI64', '2022', 'QOT', 'VX', 'eb ayF029CBy', 'ES', 'XR', 'VW', 'TS', 'RP', 'VQ', 'bl', 'VP', 'QS', 'default.png', 1),
(123, 'Zz29 qI6N', '2021', 'XO', 'VW', 'eb ayF029CBy', 'ES', 'VR', 'TW', 'SQ', 'VR', 'WW', 'rs', 'TX', 'QR', 'default.png', 1),
(124, 'l6FyB1y', '2022', 'QOO', 'VV', 'eb ayF029CBy', 'ES', 'TY', 'SS', 'RS', 'VW', 'WO', 'ka', 'SP', 'PX', 'default.png', 1),
(125, 'kI8y lC1F6?', '2022', 'TYO', 'YP', 'q2y9 ly1F61', 'ES', 'WT', 'WQ', 'VR', 'YP', 'XS', 'bl', 'WP', 'QO', 'default.png', 1),
(126, 'r2F46C qyACG', '2023', 'QVO', 'YP', 'q2y9 ly1F61', 'ES', 'YP', 'YS', 'XQ', 'RT', 'VW', 'ba', 'XV', 'QT', 'default.png', 1),
(127, 'sCB6 jFCCG', '2022', 'QPO', 'YO', 'q2y9 ly1F61', 'ES', 'VX', 'VS', 'SX', 'XY', 'XS', 'bl', 'VT', 'QS', 'default.png', 1),
(128, 'hG0C', '2022', 'PXY', 'XY', 'q2y9 ly1F61', 'ES', 'WS', 'XR', 'XR', 'WT', 'XQ', 'bZl', 'XX', 'QR', 'default.png', 1),
(129, 'byG2A6FC', '2019', 'PTX', 'XX', 'q2y9 ly1F61', 'ES', 'WP', 'WO', 'TS', 'XX', 'WY', 'bcl', 'WR', 'PX', 'default.png', 1),
(130, 'fyF2H5 ay92', '2019', 'TYO', 'XX', 'q2y9 ly1F61', 'ES', 'WS', 'XV', 'XQ', 'TR', 'VS', 'qu', 'XY', 'QT', 'default.png', 1),
(131, 'lyF029C', '2022', 'XO', 'XX', 'q2y9 ly1F61', 'ES', 'WR', 'XR', 'XW', 'RP', 'WS', 'ka', 'WO', 'QS', 'default.png', 1),
(132, 'qyD5y‘9 tyFyB2', '2022', 'QOT', 'XV', 'q2y9 ly1F61', 'ES', 'WV', 'WS', 'TT', 'XW', 'WW', 'ba', 'WX', 'QR', 'default.png', 1),
(133, 'lyF0C ZG2BG6C', '2023', 'QPO', 'XT', 'q2y9 ly1F61', 'ES', 'WP', 'WO', 'VO', 'XT', 'XS', 'ku', 'VW', 'PX', 'default.png', 1),
(134, 'jyF6A a2BN2Ay', '2022', 'PXY', 'XS', 'q2y9 ly1F61', 'ES', 'VX', 'TR', 'ST', 'XV', 'XQ', 'rs', 'TP', 'QQ', 'default.png', 1),
(135, 'byFJy7y9', '2022', 'PTX', 'XS', 'q2y9 ly1F61', 'ES', 'TQ', 'VV', 'XR', 'ST', 'XR', 'qa', 'TW', 'PX', 'default.png', 1),
(136, 'kI0yG t‡NEI2N', '2022', 'PQO', 'XR', 'q2y9 ly1F61', 'ES', 'WY', 'XV', 'VY', 'VY', 'WQ', 'qu', 'XQ', 'PT', 'default.png', 1),
(137, 'my05C e2FB‡B12N', '2021', 'PVO', 'XR', 'q2y9 ly1F61', 'ES', 'XS', 'XW', 'XO', 'QW', 'TW', 'ba', 'WY', 'PX', 'default.png', 1),
(138, 'n1F6CNC9y', '2022', 'TYO', 'XO', 'q2y9 ly1F61', 'ES', 'WP', 'WW', 'VX', 'XO', 'XR', 'qa', 'WW', 'PT', 'default.png', 1),
(139, 'lyF6yBC', '2022', 'XO', 'XO', 'q2y9 ly1F61', 'ES', 'VS', 'WX', 'WP', 'WV', 'WR', 'rs', 'WY', 'QT', 'default.png', 1),
(140, 'lyF0CG k9CF2BH2', '2023', 'QOT', 'WY', 'q2y9 ly1F61', 'ES', 'XP', 'WX', 'VO', 'WT', 'WX', 'bcl', 'WS', 'QR', 'default.png', 1),
(141, 'lyF6yBC', '2022', 'PXY', 'XO', 'q2y9 ly1F61', 'ES', 'VS', 'WX', 'WP', 'WV', 'WR', 'rs', 'WY', 'QQ', 'default.png', 1),
(142, 'lyF0CG k9CF2BH2', '2019', 'PTX', 'WY', 'q2y9 ly1F61', 'ES', 'XP', 'WX', 'VO', 'WT', 'WX', 'bcl', 'WS', 'PX', 'default.png', 1),
(143, 'e‡z6C bC2BHF‹C', '2019', 'XO', 'WY', 'q2y9 ly1F61', 'ES', 'WW', 'WS', 'TS', 'WX', 'XR', 'ka', 'WR', 'PT', 'default.png', 1),
(144, 'ty9927C', '2022', 'QOT', 'WX', 'q2y9 ly1F61', 'ES', 'XR', 'WY', 'TQ', 'WV', 'VW', 'ba', 'WP', 'QR', 'default.png', 1),
(145, 'cyB6 b2zy99CG', '2022', 'QVO', 'WX', 'q2y9 ly1F61', 'ES', 'YP', 'XS', 'WP', 'QR', 'VO', 'bl', 'VX', 'QQ', 'default.png', 1),
(146, 't6B’06IG iœB6CF', '2023', 'QPO', 'WW', 'q2y9 ly1F61', 'ES', 'XS', 'WY', 'WO', 'RT', 'VO', 'ku', 'WP', 'PX', 'default.png', 1),
(147, 'aCF7y lyMCFy9', '2022', 'PXY', 'WT', 'q2y9 ly1F61', 'ES', 'WS', 'WW', 'WO', 'ST', 'TP', 'rs', 'WR', 'PT', 'default.png', 1),
(148, 'e212F60C ty9J2F12', '2022', 'PTX', 'WR', 'q2y9 ly1F61', 'ES', 'RQ', 'VW', 'VW', 'VY', 'VR', 'bl', 'WX', 'QT', 'default.png', 1),
(149, 'bF6GHC fCBN‡92N', '2022', 'PQO', 'VT', 'q2y9 ly1F61', 'ES', 'WO', 'VW', 'VO', 'VT', 'VV', 'rs', 'TW', 'PQ', 'default.png', 1),
(150, 'q24I69—B', '2023', 'PTX', 'VS', 'q2y9 ly1F61', 'ES', 'XO', 'VW', 'VR', 'QT', 'TX', 'ka', 'SW', 'PW', 'default.png', 1),
(151, 'c624C fC1’B', '2022', 'TYO', 'YO', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XY', 'XS', 'YO', 'RX', 'WS', 'ba', 'WO', 'QT', 'default.png', 1),
(152, 'ZBHC6B2 fF62NAyBB', '2022', 'XO', 'XY', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VV', 'YP', 'WS', 'TO', 'VO', 'rs', 'XW', 'QR', 'default.png', 1),
(153, 'ryœ9', '2022', 'QVO', 'XT', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XS', 'XR', 'WV', 'SQ', 'WS', 'bl', 'XS', 'QQ', 'default.png', 1),
(154, 'c624C bCGHy', '2022', 'QPO', 'XT', 'ZH9ŽH60C 12 ly1F61', 'ES', 'WT', 'WY', 'VQ', 'XP', 'WY', 'rs', 'WX', 'PX', 'default.png', 1),
(155, 'jC82', '2022', 'PXY', 'XT', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XR', 'VQ', 'PX', 'XV', 'XQ', 'kl', 'SQ', 'PT', 'default.png', 1),
(156, 'e696D2 kI’G', '2019', 'PTX', 'XT', 'ZH9ŽH60C 12 ly1F61', 'ES', 'TY', 'WY', 'XV', 'RS', 'WX', 'ka', 'WW', 'PX', 'default.png', 1),
(157, 'iCGŽ lyF’y f6AŽB2N', '2019', 'PTX', 'XS', 'ZH9ŽH60C 12 ly1F61', 'ES', 'WT', 'VX', 'RX', 'XT', 'WV', 'ba', 'VY', 'PT', 'default.png', 1),
(158, 's5CAyG k2AyF', '2022', 'TYO', 'XR', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VW', 'WX', 'VV', 'XQ', 'WT', 'kl', 'WV', 'PX', 'default.png', 1),
(159, 'rH23yB ryJ6?', '2022', 'XO', 'XR', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VP', 'WP', 'VT', 'XQ', 'WW', 'ba', 'WR', 'PT', 'default.png', 1),
(160, 's5CAyG k2AyF', '2021', 'QOO', 'XR', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XQ', 'WY', 'WY', 'RP', 'WP', 'kl', 'WP', 'PX', 'default.png', 1),
(161, 'f29GCB lyFH6BG', '2022', 'XO', 'XQ', 'ZH9ŽH60C 12 ly1F61', 'ES', 'TX', 'VW', 'TP', 'XP', 'XR', 'ql', 'VW', 'PT', 'default.png', 1),
(162, 'kI0yG g2FB‡B12N', '2021', 'QOO', 'XQ', 'ZH9ŽH60C 12 ly1F61', 'ES', 'TO', 'WO', 'VW', 'XP', 'XY', 'ka', 'WQ', 'PY', 'default.png', 1),
(163, 's5CAyG oyFH2M', '2022', 'TYO', 'XQ', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XW', 'XP', 'VR', 'WW', 'WO', 'bcl', 'WW', 'PY', 'default.png', 1),
(164, 'qC1F6', '2022', 'XO', 'XQ', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XO', 'WY', 'XV', 'SX', 'XX', 'bl', 'WV', 'PT', 'default.png', 1),
(165, 't6HC9C', '2023', 'XO', 'XP', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VW', 'WR', 'XO', 'RV', 'WW', 'kl', 'VQ', 'PQ', 'default.png', 1),
(166, 'çB429 bCFF2y', '2021', 'QOO', 'XO', 'ZH9ŽH60C 12 ly1F61', 'ES', 'WQ', 'WO', 'VQ', 'WW', 'XW', 'ql', 'VT', 'QO', 'default.png', 1),
(167, 'iIyB3FyB', '2022', 'TYO', 'XO', 'ZH9ŽH60C 12 ly1F61', 'ES', 'WV', 'WW', 'XS', 'RS', 'VW', 'qa', 'VY', 'PX', 'default.png', 1),
(168, 'm68C9y jy96B6?', '2022', 'XO', 'WY', 'ZH9ŽH60C 12 ly1F61', 'ES', 'XX', 'XS', 'WS', 'RQ', 'TX', 'rs', 'WP', 'PX', 'default.png', 1),
(169, 'ryBH6y4C ZF6yG', '2023', 'YT', 'WX', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VV', 'WQ', 'XO', 'QW', 'XS', 'qa', 'VQ', 'PY', 'default.png', 1),
(170, 'îG0yF o6B056', '2022', 'QTO', 'VX', 'ZH9ŽH60C 12 ly1F61', 'ES', 'VV', 'VT', 'TT', 'TX', 'WQ', 'kl', 'VT', 'PT', 'default.png', 1),
(171, 'oyF27C', '2019', 'QVO', 'XV', 'ty92B06y be', 'ES', 'VT', 'XY', 'VO', 'WY', 'VV', 'bl', 'XS', 'QO', 'default.png', 1),
(172, 'qC1F64C', '2019', 'QPO', 'XS', 'ty92B06y be', 'ES', 'WX', 'XR', 'XO', 'VQ', 'WQ', 'rs', 'XS', 'PX', 'default.png', 1),
(173, 'dN2EI629 fyFyM', '2022', 'PXY', 'XQ', 'ty92B06y be', 'ES', 'VX', 'WR', 'VS', 'XT', 'WY', 'ba', 'WR', 'PX', 'default.png', 1),
(174, 'fCBy9C fI212G', '2021', 'PTX', 'XQ', 'ty92B06y be', 'ES', 'VO', 'XQ', 'WW', 'SW', 'WR', 'ku', 'XO', 'PT', 'default.png', 1),
(175, 'fyzF629 oyI96GHy', '2022', 'YT', 'XQ', 'ty92B06y be', 'ES', 'XP', 'XS', 'WW', 'RO', 'VS', 'ba', 'WX', 'QO', 'default.png', 1),
(176, 'cyB629 uyGG', '2022', 'VX', 'XQ', 'ty92B06y be', 'ES', 'WR', 'WW', 'WR', 'XO', 'WY', 'bl', 'WX', 'QT', 'default.png', 1),
(177, 'f2C33F2M jCB1C4z6y', '2023', 'WO', 'XQ', 'ty92B06y be', 'ES', 'VY', 'XS', 'WT', 'TV', 'VR', 'bl', 'XR', 'QS', 'default.png', 1),
(178, 'l605M ayHG5IyM6', '2022', 'POO', 'XP', 'ty92B06y be', 'ES', 'TR', 'XS', 'VY', 'VV', 'VS', 'rs', 'XS', 'QO', 'default.png', 1),
(179, 'jŽJ6B fyA26FC', '2021', 'WO', 'XP', 'ty92B06y be', 'ES', 'XP', 'WV', 'TP', 'WY', 'WV', 'rs', 'VX', 'QT', 'default.png', 1),
(180, 'i26GCB lIF699C', '2021', 'QPO', 'XP', 'ty92B06y be', 'ES', 'TQ', 'VR', 'SW', 'XQ', 'WS', 'ba', 'VQ', 'QS', 'default.png', 1),
(181, 'ryBH6 l6By', '2022', 'PXY', 'XO', 'ty92B06y be', 'ES', 'WT', 'XQ', 'WW', 'SW', 'VX', 'rs', 'XO', 'PT', 'default.png', 1),
(182, 'byF9CG rC92F', '2022', 'XO', 'XO', 'ty92B06y be', 'ES', 'WQ', 'XP', 'WX', 'ST', 'VW', 'ql', 'WV', 'QO', 'default.png', 1),
(183, 'eFyB06G bCEI296B', '2023', 'QOO', 'WY', 'ty92B06y be', 'ES', 'VV', 'WV', 'WW', 'WO', 'WR', 'bcl', 'WW', 'QT', 'default.png', 1),
(184, 'fyMˆ', '2022', 'QVO', 'WY', 'ty92B06y be', 'ES', 'WW', 'XQ', 'VX', 'WX', 'WW', 'ka', 'WX', 'QO', 'default.png', 1),
(185, 'bF6GH6yBC o6006B6', '2019', 'QPO', 'WX', 'ty92B06y be', 'ES', 'WR', 'WW', 'WP', 'WX', 'XX', 'qa', 'WP', 'PX', 'default.png', 1),
(186, 'qœz2B t2NC', '2019', 'PXY', 'WW', 'ty92B06y be', 'ES', 'SX', 'VY', 'TY', 'WS', 'WR', 'ba', 'WR', 'PX', 'default.png', 1),
(187, 'c2B6G b52FMG52J', '2022', 'PTX', 'WW', 'ty92B06y be', 'ES', 'TP', 'WR', 'VV', 'VV', 'WV', 'kl', 'WT', 'PT', 'default.png', 1),
(188, 'lCI0HyF c6y85yzM', '2021', 'QVO', 'WV', 'ty92B06y be', 'ES', 'VP', 'WT', 'WR', 'SX', 'VT', 'ba', 'WT', 'QO', 'default.png', 1),
(189, 'UFC? qy?6?', '2022', 'QPO', 'WT', 'ty92B06y be', 'ES', 'WO', 'VW', 'TX', 'WS', 'VY', 'bcl', 'VX', 'QT', 'default.png', 1),
(190, 'kyHC', '2019', 'PXY', 'WT', 'ty92B06y be', 'ES', 'VY', 'TQ', 'RY', 'WS', 'WX', 'ka', 'TT', 'QS', 'default.png', 1),
(191, 'e2FF‡B sCFF2G', '2019', 'PTX', 'WR', 'ty92B06y be', 'ES', 'WV', 'VX', 'WQ', 'RX', 'WV', 'ql', 'TQ', 'QR', 'default.png', 1),
(192, 'my05C f69', '2022', 'QOO', 'WQ', 'ty92B06y be', 'ES', 'TV', 'VX', 'TW', 'WR', 'VV', 'kl', 'VX', 'QO', 'default.png', 1),
(193, 'jyB46B k22', '2022', 'TYO', 'WO', 'ty92B06y be', 'ES', 'WT', 'VV', 'SY', 'WP', 'WP', 'bZl', 'VQ', 'PX', 'default.png', 1),
(194, 'iyJ6 i6AŽB2N', '2023', 'XO', 'VT', 'ty92B06y be', 'ES', 'XP', 'VV', 'VP', 'QP', 'VX', 'ba', 'SW', 'PX', 'default.png', 1),
(195, 'ç92L b2BH2992G', '2022', 'POO', 'VS', 'ty92B06y be', 'ES', 'WY', 'VT', 'VS', 'QQ', 'VR', 'ka', 'TW', 'PY', 'default.png', 1),
(196, 'j2J6B c2 aFIMB2', '2019', 'TOO', 'YP', 'lyB052GH2F b6HM', 'UK', 'XO', 'XW', 'YO', 'TQ', 'XT', 'bZl', 'WY', 'RT', 'default.png', 1),
(197, 'r2F46C Z4Ÿ2FC', '2019', 'PTX', 'XY', 'lyB052GH2F b6HM', 'UK', 'VT', 'WR', 'TX', 'YO', 'WV', 'rs', 'WV', 'QO', 'default.png', 1),
(198, 'cyJ61 r69Jy', '2022', 'TYO', 'XY', 'lyB052GH2F b6HM', 'UK', 'VY', 'VO', 'SV', 'YP', 'XQ', 'bZl', 'TV', 'PX', 'default.png', 1),
(199, 'k2FCM ryBŽ', '2021', 'XO', 'XV', 'lyB052GH2F b6HM', 'UK', 'TV', 'WV', 'WP', 'XR', 'XR', 'ku', 'WY', 'PX', 'default.png', 1),
(200, 'e2FByB16B5C', '2020', 'QVO', 'XV', 'lyB052GH2F b6HM', 'UK', 'XP', 'XV', 'XV', 'RT', 'VT', 'bcl', 'WW', 'PX', 'default.png', 1),
(201, 'm60C9‡G nHyA2B16', '2020', 'QPO', 'XV', 'lyB052GH2F b6HM', 'UK', 'WX', 'XX', 'WV', 'RO', 'TW', 'ba', 'XQ', 'PT', 'default.png', 1),
(202, 'qy522A rH2F96B4', '2022', 'PQT', 'XT', 'lyB052GH2F b6HM', 'UK', 'WR', 'XQ', 'VX', 'WW', 'WR', 'qu', 'XR', 'QO', 'default.png', 1),
(203, 'q6My1 ly5F2N', '2019', 'PXO', 'XT', 'lyB052GH2F b6HM', 'UK', 'WR', 'XP', 'XP', 'WY', 'XS', 'qu', 'WW', 'PX', 'default.png', 1),
(204, 't6B02BH jCADyBM', '2019', 'PTX', 'XT', 'lyB052GH2F b6HM', 'UK', 'XT', 'XO', 'WP', 'XO', 'WW', 'ba', 'XR', 'QT', 'default.png', 1),
(205, 'a2FByF1C r69Jy', '2022', 'TYO', 'XS', 'lyB052GH2F b6HM', 'UK', 'WQ', 'XW', 'WO', 'WX', 'XQ', 'qu', 'WW', 'QT', 'default.png', 1),
(206, 'jM92 uy982F', '2021', 'XO', 'XS', 'lyB052GH2F b6HM', 'UK', 'TP', 'VT', 'TT', 'XV', 'XR', 'qa', 'WO', 'RO', 'default.png', 1),
(207, '?98yM fŸB1C?yB', '2021', 'QVO', 'XS', 'lyB052GH2F b6HM', 'UK', 'VW', 'TO', 'SP', 'XR', 'XQ', 'bl', 'TQ', 'RT', 'default.png', 1),
(208, 'ZMA2F60 kyDCFH2', '2022', 'QPO', 'XR', 'lyB052GH2F b6HM', 'UK', 'WO', 'XP', 'WS', 'WO', 'VY', 'ba', 'XP', 'QO', 'default.png', 1),
(209, 'fyzF629 i2GIG', '2020', 'PRV', 'XR', 'lyB052GH2F b6HM', 'UK', 'WV', 'XO', 'XQ', 'TY', 'WP', 'rs', 'XO', 'PX', 'default.png', 1),
(210, 'iC5B rHCB2G', '2020', 'PQX', 'XQ', 'lyB052GH2F b6HM', 'UK', 'VW', 'XO', 'WV', 'VW', 'WS', 'ba', 'WY', 'PX', 'default.png', 1),
(211, 'a2B7yA6B l2B1M', '2022', 'PRV', 'XP', 'lyB052GH2F b6HM', 'UK', 'VX', 'TY', 'SW', 'XP', 'XQ', 'ka', 'TT', 'PX', 'default.png', 1),
(212, 'eyz6yB c29D5', '2022', 'PQX', 'XO', 'lyB052GH2F b6HM', 'UK', 'WP', 'WS', 'SO', 'WV', 'WW', 'ka', 'WO', 'PT', 'default.png', 1),
(213, 'cyB69C', '2021', 'PTX', 'WY', 'lyB052GH2F b6HM', 'UK', 'XV', 'XQ', 'WQ', 'RS', 'VR', 'qa', 'WR', 'QO', 'default.png', 1),
(214, 'd96yEI6A lyB4y9y', '2021', 'TYO', 'WW', 'lyB052GH2F b6HM', 'UK', 'VY', 'WV', 'VT', 'WS', 'WV', 'ba', 'WQ', 'QT', 'default.png', 1),
(215, 'cCI49yG kI6N', '2023', 'XO', 'WR', 'lyB052GH2F b6HM', 'UK', 'TT', 'VV', 'WR', 'RY', 'WW', 'bl', 'TY', 'QT', 'default.png', 1),
(216, 'o569 eC12B', '2021', 'QVO', 'WR', 'lyB052GH2F b6HM', 'UK', 'WP', 'WQ', 'VW', 'VV', 'VT', 'bZl', 'WP', 'RO', 'default.png', 1),
(217, 'n928GyB1F x6B052B8C', '2022', 'QPO', 'WP', 'lyB052GH2F b6HM', 'UK', 'VX', 'VV', 'VW', 'VX', 'WY', 'ka', 'VR', 'RT', 'default.png', 1),
(218, 'o5696DD2 ryB192F', '2022', 'QOT', 'VY', 'lyB052GH2F b6HM', 'UK', 'WV', 'VV', 'ST', 'VT', 'VV', 'ba', 'TT', 'QO', 'default.png', 1),
(219, 'aFy56A c’yN', '2021', 'XO', 'VY', 'lyB052GH2F b6HM', 'UK', 'XO', 'VW', 'VY', 'SS', 'VS', 'ku', 'VP', 'QR', 'default.png', 1),
(220, 'b9yI16C fCA2G', '2022', 'QOO', 'VV', 'lyB052GH2F b6HM', 'UK', 'WQ', 'VR', 'TT', 'VT', 'VY', 'bcl', 'VP', 'PX', 'default.png', 1),
(221, 'lC5yA21 ry9y5', '2022', 'TYO', 'XX', 'k6J2FDCC9', 'UK', 'XS', 'XP', 'XX', 'SO', 'WT', 'qu', 'WO', 'QO', 'default.png', 1),
(222, 'qCz2FHC e6FA6BC', '2023', 'QVO', 'XV', 'k6J2FDCC9', 'UK', 'XV', 'XR', 'XO', 'VQ', 'WX', 'be', 'XO', 'RT', 'default.png', 1),
(223, 'ry16C lyBŽ', '2022', 'QPO', 'XV', 'k6J2FDCC9', 'UK', 'VW', 'WY', 'WS', 'XR', 'WY', 'ku', 'WX', 'QO', 'default.png', 1),
(224, 't6F469 JyB c678', '2019', 'PXY', 'XT', 'k6J2FDCC9', 'UK', 'WT', 'XQ', 'WY', 'XR', 'XR', 'ba', 'WX', 'PX', 'default.png', 1),
(225, 'eyz6B5C', '2019', 'PTX', 'XT', 'k6J2FDCC9', 'UK', 'WQ', 'XQ', 'VS', 'VY', 'WP', 'bcl', 'XS', 'PX', 'default.png', 1),
(226, 'myzM j2•Hy', '2022', 'TYO', 'XR', 'k6J2FDCC9', 'UK', 'WO', 'WX', 'WW', 'WV', 'XP', 'bl', 'WY', 'QQ', 'default.png', 1),
(227, 'iCF1yB g2B12FGCB', '2021', 'XO', 'XQ', 'k6J2FDCC9', 'UK', 'WR', 'XR', 'WP', 'RR', 'VT', 'bcl', 'XP', 'PX', 'default.png', 1),
(228, 'f2CF46B6C u67By91IA', '2022', 'QOT', 'XQ', 'k6J2FDCC9', 'UK', 'XQ', 'WV', 'VQ', 'XP', 'WY', 'bl', 'WR', 'PT', 'default.png', 1),
(229, 'Z1yA ky99yBy', '2023', 'QPO', 'XP', 'k6J2FDCC9', 'UK', 'VV', 'XO', 'WY', 'WO', 'WV', 'bl', 'WX', 'PX', 'default.png', 1),
(230, 'c27yB kCJF2B', '2022', 'PXY', 'XP', 'k6J2FDCC9', 'UK', 'XT', 'WX', 'XP', 'SR', 'VX', 'ba', 'WT', 'PX', 'default.png', 1),
(231, 'iyA2G l69B2F', '2022', 'PTX', 'XP', 'k6J2FDCC9', 'UK', 'XO', 'WR', 'VX', 'XP', 'WY', 'bl', 'WS', 'PT', 'default.png', 1),
(232, 'v52F1yB r5yE6F6', '2022', 'PQO', 'XP', 'k6J2FDCC9', 'UK', 'VY', 'TV', 'RQ', 'XQ', 'WS', 'qu', 'VQ', 'RT', 'default.png', 1),
(233, 'ZB1F2K qCz2FHGCB', '2021', 'PVO', 'XP', 'k6J2FDCC9', 'UK', 'XX', 'VS', 'XO', 'SQ', 'XX', 'ka', 'VP', 'QO', 'default.png', 1),
(234, 'iC29 lyH6D', '2022', 'TYO', 'XP', 'k6J2FDCC9', 'UK', 'WW', 'XS', 'WS', 'VV', 'XP', 'ba', 'WY', 'PX', 'default.png', 1),
(235, 'cyB629 rHIFF6142', '2022', 'XO', 'XO', 'k6J2FDCC9', 'UK', 'WX', 'WR', 'WO', 'WY', 'WX', 'rs', 'WP', 'PX', 'default.png', 1),
(236, 'myH5yB629 b9MB2', '2023', 'QOT', 'XO', 'k6J2FDCC9', 'UK', 'WY', 'WY', 'WX', 'TP', 'WR', 'qa', 'VX', 'PX', 'default.png', 1),
(237, 'Z92L nL9y12-b5yAz2F9y6B', '2022', 'PXY', 'XO', 'k6J2FDCC9', 'UK', 'YP', 'XS', 'WT', 'RS', 'VX', 'bl', 'WQ', 'PT', 'default.png', 1),
(238, 'sF2BH Z92LyB12F-ZFBC91', '2019', 'PTX', 'WX', 'k6J2FDCC9', 'UK', 'VX', 'XQ', 'VX', 'VS', 'TP', 'qa', 'WX', 'PX', 'default.png', 1),
(239, 'c6JC08 nF646', '2019', 'PTX', 'WW', 'k6J2FDCC9', 'UK', 'VQ', 'TO', 'TQ', 'WW', 'WW', 'rs', 'SX', 'PT', 'default.png', 1),
(240, 'Z9z2FHC lCF2BC', '2022', 'TYO', 'WW', 'k6J2FDCC9', 'UK', 'WQ', 'WQ', 'VS', 'WW', 'WV', 'ka', 'VW', 'QR', 'default.png', 1),
(241, 'iC2 fCA2N', '2021', 'XO', 'WV', 'k6J2FDCC9', 'UK', 'WY', 'WW', 'VY', 'WQ', 'WV', 'qa', 'WP', 'QQ', 'default.png', 1),
(242, 'kyNyF lyF8CJ6?', '2023', 'QVO', 'WS', 'k6J2FDCC9', 'UK', 'VP', 'WP', 'VX', 'TT', 'WP', 'ql', 'WW', 'PX', 'default.png', 1),
(243, 'cCA6B60 rC9yB82', '2022', 'QPO', 'WO', 'k6J2FDCC9', 'UK', 'WX', 'WO', 'WO', 'SS', 'TW', 'rs', 'VV', 'PT', 'default.png', 1),
(244, 'o21FC b56F6J299y', '2022', 'PTX', 'VV', 'k6J2FDCC9', 'UK', 'VT', 'VT', 'TO', 'VS', 'VX', 'bcl', 'VT', 'QT', 'default.png', 1),
(245, 'q56yB aF2KGH2F', '2022', 'PQO', 'VQ', 'k6J2FDCC9', 'UK', 'WS', 'VP', 'SP', 'TY', 'VQ', 'rs', 'TP', 'PQ', 'default.png', 1),
(246, 'gyFFM jyB2', '2022', 'PVO', 'XY', 'sCHH2B5yA gCHGDIF', 'UK', 'XT', 'YP', 'XT', 'QX', 'VV', 'rs', 'XS', 'PW', 'default.png', 1),
(247, 'b5F6GH6yB dF68G2B', '2021', 'TYO', 'XX', 'sCHH2B5yA gCHGDIF', 'UK', 'YQ', 'XY', 'XS', 'ST', 'WQ', 'bZl', 'WY', 'QT', 'default.png', 1),
(248, 'iyB t2FHCB452B', '2022', 'XO', 'XW', 'sCHH2B5yA gCHGDIF', 'UK', 'TT', 'VV', 'VP', 'XW', 'WV', 'ba', 'VY', 'QR', 'default.png', 1),
(249, 'sCzM Z912FK26F291', '2022', 'QOT', 'XT', 'sCHH2B5yA gCHGDIF', 'UK', 'WQ', 'VQ', 'SP', 'XW', 'XQ', 'ba', 'TW', 'QQ', 'default.png', 1),
(250, 'lCIGGy c2AzŽ9Ž', '2022', 'PXY', 'XS', 'sCHH2B5yA gCHGDIF', 'UK', 'XV', 'XT', 'XT', 'SQ', 'VX', 'bl', 'WV', 'PX', 'default.png', 1),
(251, 'cyJ6BGCB r‡B052N', '2022', 'PTX', 'XS', 'sCHH2B5yA gCHGDIF', 'UK', 'XR', 'XS', 'XO', 'SQ', 'VY', 'ba', 'XP', 'PT', 'default.png', 1),
(252, 'g2IB4 l6B rCB', '2019', 'PTX', 'XS', 'sCHH2B5yA gCHGDIF', 'UK', 'VX', 'VW', 'SP', 'XV', 'WV', 'kl', 'VO', 'PX', 'default.png', 1),
(253, 'c292 Z996', '2022', 'PTX', 'XS', 'sCHH2B5yA gCHGDIF', 'UK', 'WW', 'XP', 'WV', 'VS', 'VY', 'bZl', 'XQ', 'PT', 'default.png', 1),
(254, 'kI0yG', '2021', 'TYO', 'XQ', 'sCHH2B5yA gCHGDIF', 'UK', 'WR', 'WY', 'WR', 'XR', 'XX', 'ql', 'WV', 'PX', 'default.png', 1),
(255, 'j62FyB sF6DD62F', '2022', 'XO', 'XQ', 'sCHH2B5yA gCHGDIF', 'UK', 'WP', 'WO', 'SW', 'XP', 'XS', 'qa', 'VX', 'PT', 'default.png', 1),
(256, 'a2B cyJ62G', '2022', 'QOO', 'XP', 'sCHH2B5yA gCHGDIF', 'UK', 'XX', 'XP', 'VS', 'WW', 'WP', 'ka', 'WW', 'PX', 'default.png', 1),
(257, 'r2F42 ZIF62F', '2022', 'XO', 'XP', 'sCHH2B5yA gCHGDIF', 'UK', 'YO', 'XV', 'WO', 'RO', 'TV', 'qa', 'WT', 'PT', 'default.png', 1),
(258, 't60HCF uyBMyAy', '2021', 'QOO', 'XO', 'sCHH2B5yA gCHGDIF', 'UK', 'VY', 'XR', 'VY', 'RY', 'VR', 'bcl', 'XP', 'PY', 'default.png', 1),
(259, 'dF60 c62F', '2022', 'TYO', 'XO', 'sCHH2B5yA gCHGDIF', 'UK', 'WV', 'WY', 'WS', 'VQ', 'VT', 'bcl', 'XP', 'PY', 'default.png', 1),
(260, 'dF68 kyA29y', '2022', 'XO', 'XO', 'sCHH2B5yA gCHGDIF', 'UK', 'WT', 'WW', 'WS', 'WR', 'WV', 'ql', 'WY', 'PT', 'default.png', 1),
(261, 'k9CF2BH2', '2023', 'XO', 'WW', 'sCHH2B5yA gCHGDIF', 'UK', 'VQ', 'VX', 'WT', 'RV', 'XR', 'rs', 'TV', 'PQ', 'default.png', 1),
(262, 't6B02BH iyBGG2B', '2021', 'QOO', 'WV', 'sCHH2B5yA gCHGDIF', 'UK', 'WQ', 'WX', 'WW', 'SX', 'TY', 'rs', 'WP', 'QO', 'default.png', 1),
(263, 'lCIGGy r6GGC8C', '2022', 'TYO', 'WV', 'sCHH2B5yA gCHGDIF', 'UK', 'VS', 'VT', 'SO', 'WS', 'WR', 'bl', 'VQ', 'PX', 'default.png', 1),
(264, 'gyFFM u6B8G', '2022', 'XO', 'WT', 'sCHH2B5yA gCHGDIF', 'UK', 'XW', 'WS', 'WT', 'RV', 'VY', 'bl', 'VW', 'PX', 'default.png', 1),
(265, 'iCG5 nBCAy5', '2023', 'YT', 'WP', 'sCHH2B5yA gCHGDIF', 'UK', 'XV', 'WR', 'VT', 'TT', 'VX', 'bZl', 'VX', 'PY', 'default.png', 1),
(266, 'iIyB eCMH5', '2022', 'QTO', 'WO', 'sCHH2B5yA gCHGDIF', 'UK', 'VR', 'TV', 'QW', 'WQ', 'WY', 'ba', 'TW', 'PT', 'default.png', 1),
(267, 'jM92 uy982F-o2H2FG', '2019', 'QVO', 'VY', 'sCHH2B5yA gCHGDIF', 'UK', 'WY', 'WO', 'VX', 'QT', 'TY', 'qa', 'VQ', 'QO', 'default.png', 1),
(268, 'kI82 ZACG', '2019', 'QPO', 'VT', 'sCHH2B5yA gCHGDIF', 'UK', 'TS', 'SY', 'TX', 'VT', 'XX', 'bl', 'TP', 'PX', 'default.png', 1),
(269, 'ZBH5CBM f2CF46CI', '2022', 'PXY', 'VQ', 'sCHH2B5yA gCHGDIF', 'UK', 'WP', 'TT', 'VP', 'QT', 'VV', 'kl', 'SQ', 'PX', 'default.png', 1),
(270, 'r5yMCB gyFF6GCB', '2021', 'PTX', 'VP', 'sCHH2B5yA gCHGDIF', 'UK', 'SR', 'TP', 'QS', 'TW', 'WW', 'rs', 'SS', 'PT', 'default.png', 1),
(271, 'd12B gyNyF1', '2022', 'PVO', 'YP', 'b529G2y', 'UK', 'WW', 'XT', 'YO', 'WW', 'XS', 'ku', 'YO', 'QO', 'default.png', 1),
(272, 'd12B gyNyF1', '2022', 'TYO', 'YP', 'b529G2y', 'UK', 'WV', 'XT', 'XT', 'WW', 'XT', 'ku', 'YO', 'QT', 'default.png', 1),
(273, 'm''fC9C jyBHŽ', '2023', 'XO', 'XY', 'b529G2y', 'UK', 'XS', 'XY', 'XY', 'QX', 'WR', 'bcl', 'WV', 'QS', 'default.png', 1),
(274, 'ZND6960I2Hy', '2022', 'QOT', 'XV', 'b529G2y', 'UK', 'VX', 'VQ', 'TP', 'XT', 'XP', 'ba', 'TW', 'QO', 'default.png', 1),
(275, 'iCF46B5C', '2021', 'PXY', 'XS', 'b529G2y', 'UK', 'XP', 'XS', 'XQ', 'SO', 'WQ', 'bl', 'WQ', 'QT', 'default.png', 1),
(276, 'b2G0 eˆzF24yG', '2021', 'PTX', 'XS', 'b529G2y', 'UK', 'VX', 'VT', 'RS', 'XY', 'WQ', 'bl', 'TW', 'QS', 'default.png', 1),
(277, 'u6996yB', '2022', 'PXY', 'XS', 'b529G2y', 'UK', 'VX', 'XS', 'WS', 'VY', 'WO', 'qu', 'XR', 'PT', 'default.png', 1),
(278, 'lyH2C jCJy?6?', '2022', 'XO', 'XR', 'b529G2y', 'UK', 'WW', 'VX', 'RY', 'XQ', 'XR', 'bl', 'VW', 'QO', 'default.png', 1),
(279, 'cyJ61 kI6N', '2023', 'QOO', 'XR', 'b529G2y', 'UK', 'WY', 'WY', 'XS', 'QS', 'WW', 'ba', 'WR', 'QT', 'default.png', 1),
(280, 'lCFyHy', '2022', 'QVO', 'XR', 'b529G2y', 'UK', 'XP', 'XS', 'WQ', 'SP', 'TV', 'rs', 'XO', 'QO', 'default.png', 1),
(281, 'n96J62F f6FCI1', '2019', 'QPO', 'XQ', 'b529G2y', 'UK', 'WR', 'VW', 'RT', 'XR', 'WX', 'rs', 'TY', 'PX', 'default.png', 1),
(282, 'ZB1F2yG b5F6GH2BG2B', '2019', 'PXY', 'XQ', 'b529G2y', 'UK', 'VY', 'XV', 'WR', 'TY', 'VW', 'ba', 'XR', 'PX', 'default.png', 1),
(283, 'o21FC', '2022', 'PTX', 'XQ', 'b529G2y', 'UK', 'VO', 'VP', 'TR', 'XP', 'XW', 'qu', 'TS', 'PT', 'default.png', 1),
(284, 'lyF0CG Z9CBGC', '2021', 'QVO', 'XQ', 'b529G2y', 'UK', 'SW', 'VY', 'SV', 'XP', 'XQ', 'ka', 'VR', 'QO', 'default.png', 1),
(285, 'ZBHCB6C qŸ1642F', '2022', 'QPO', 'XP', 'b529G2y', 'UK', 'TQ', 'WS', 'SW', 'WX', 'WV', 'ba', 'WP', 'QT', 'default.png', 1),
(286, 'fyFM by5699', '2019', 'PXY', 'XP', 'b529G2y', 'UK', 'XO', 'XT', 'WW', 'SV', 'WO', 'ba', 'XO', 'QS', 'default.png', 1),
(287, 'lyF0C JyB f6B829', '2019', 'PTX', 'WY', 'b529G2y', 'UK', 'WV', 'XO', 'VS', 'WX', 'WP', 'bl', 'WT', 'QR', 'default.png', 1),
(288, 'qCGG ayF892M', '2022', 'QOO', 'WY', 'b529G2y', 'UK', 'VQ', 'WO', 'VP', 'WY', 'XR', 'bZl', 'VY', 'QO', 'default.png', 1),
(289, 'cyJ612 xyDDy0CGHy', '2022', 'PVO', 'WY', 'b529G2y', 'UK', 'VW', 'VR', 'RY', 'WY', 'WW', 'qa', 'TY', 'PX', 'default.png', 1),
(290, 'cyBBM cF6B8KyH2F', '2023', 'TYO', 'WY', 'b529G2y', 'UK', 'WT', 'WY', 'WV', 'TS', 'WY', 'bl', 'WS', 'PX', 'default.png', 1),
(291, 't60HCF lCG2G', '2022', 'XO', 'WX', 'b529G2y', 'UK', 'VV', 'WW', 'VR', 'VY', 'WW', 'qu', 'WP', 'PY', 'default.png', 1),
(292, 'qIz2B kC3HIG-b5228', '2019', 'QOT', 'WW', 'b529G2y', 'UK', 'XS', 'WX', 'WQ', 'RT', 'VT', 'bl', 'WR', 'PX', 'default.png', 1),
(293, 'dA2FGCB', '2020', 'PXY', 'WV', 'b529G2y', 'UK', 'WX', 'XO', 'WV', 'RY', 'VS', 'kua', 'WO', 'QO', 'default.png', 1),
(294, 'syAAM ZzFy5yA', '2019', 'PTX', 'WS', 'b529G2y', 'UK', 'XS', 'WW', 'WQ', 'SO', 'VQ', 'rs', 'VT', 'PT', 'default.png', 1),
(295, 'kI0yG o6yNCB', '2020', 'PTO', 'WQ', 'b529G2y', 'UK', 'VW', 'VX', 'WP', 'RQ', 'WY', 'qu', 'VP', 'PV', 'default.png', 1),
(296, 'xdllZlnUbgd lngZldc kZlhmd', '2021', 'RT', 'VS', 'Url Z942F', 'DZ', 'TT', 'VV', 'WR', 'TQ', 'XT', 'bZl', 'TY', 'QT', 'default.png', 1),
(297, 'admwZghZ lC5yA21', '2023', 'RQ', 'TT', 'Url Z942F', 'DZ', 'WP', 'WQ', 'VW', 'YO', 'WV', 'rs', 'WP', 'RO', 'default.png', 1),
(298, 'bgZeZh eZqnUj', '2019', 'SX', 'TO', 'Url Z942F', 'DZ', 'VX', 'VV', 'VW', 'YP', 'XQ', 'bZl', 'VR', 'RT', 'default.png', 1),
(299, 'lZmrnUqh hGAy69', '2022', 'SO', 'VS', 'Url Z942F', 'DZ', 'WV', 'VV', 'ST', 'XR', 'XR', 'ku', 'TT', 'QO', 'default.png', 1),
(300, 'anUcdqaZk qy368', '2020', 'TV', 'TT', 'Url Z942F', 'DZ', 'WR', 'XP', 'XP', 'RT', 'VT', 'bcl', 'VP', 'QR', 'default.png', 1),
(301, 'ldesZg lC5yA21', '2019', 'RQ', 'TT', 'Url Z942F', 'DZ', 'VW', 'TO', 'SP', 'RO', 'TW', 'ba', 'XQ', 'PT', 'default.png', 1),
(302, 'jnUcqh gZlxZ', '2022', 'QT', 'VT', 'Url Z942F', 'DZ', 'WO', 'XP', 'WS', 'WW', 'WR', 'qu', 'XR', 'QO', 'default.png', 1),
(303, 'admjgdlZrrZ lC5yA21', '2019', 'QO', 'WY', 'Url Z942F', 'DZ', 'WR', 'XP', 'XP', 'WY', 'XS', 'qu', 'WW', 'PX', 'default.png', 1),
(304, 'adm lnUrrZ lC85HyF', '2019', 'RT', 'XT', 'Url Z942F', 'DZ', 'XT', 'XO', 'WP', 'XO', 'WW', 'ba', 'XR', 'QT', 'default.png', 1),
(305, 'admgZllnUcZ ahkkdk', '2022', 'RQ', 'XS', 'Url Z942F', 'DZ', 'WQ', 'XW', 'WO', 'WX', 'XQ', 'qu', 'WW', 'QT', 'default.png', 1),
(306, 'adqqdeZmd lnUqZc', '2021', 'SX', 'XS', 'Url Z942F', 'DZ', 'TP', 'VT', 'TT', 'XV', 'XR', 'qa', 'WY', 'RT', 'default.png', 1),
(307, 'ZlqnUbgd lC5yA21', '2021', 'SO', 'XS', 'Url Z942F', 'DZ', 'VW', 'TO', 'SP', 'XR', 'XQ', 'bl', 'WV', 'QO', 'default.png', 1),
(308, 'dknqeh ZllZq', '2022', 'TV', 'XR', 'Url Z942F', 'DZ', 'WO', 'XP', 'WS', 'WO', 'VY', 'ba', 'TV', 'PX', 'default.png', 1),
(309, 'lZqnUe gyANy', '2020', 'RQ', 'XR', 'Url Z942F', 'DZ', 'WV', 'XO', 'XQ', 'TQ', 'XT', 'rs', 'WY', 'PX', 'default.png', 1),
(310, 'lZmrnUqh wZbhmd', '2020', 'QT', 'XQ', 'Url Z942F', 'DZ', 'VW', 'XO', 'WV', 'YO', 'WV', 'ba', 'WW', 'PX', 'default.png', 1),
(311, 'ZkhZmd wy06B2', '2022', 'QO', 'XP', 'Url Z942F', 'DZ', 'VX', 'TY', 'SW', 'YP', 'XQ', 'ka', 'XQ', 'PT', 'default.png', 1),
(312, 'ZaZrrh x6B2116B2', '2022', 'PQX', 'XO', 'Url Z942F', 'DZ', 'WP', 'WS', 'SO', 'XR', 'XR', 'ka', 'WO', 'PT', 'default.png', 1),
(313, 'Zkhkds Z12A', '2021', 'RQ', 'WY', 'Url Z942F', 'DZ', 'XV', 'XQ', 'WQ', 'RT', 'VT', 'qa', 'WR', 'QO', 'default.png', 1),
(314, 'ZacdkkZxhx Zz129Ay928', '2021', 'SX', 'WW', 'Url Z942F', 'DZ', 'VY', 'WV', 'VT', 'RO', 'TW', 'ba', 'WQ', 'QT', 'default.png', 1),
(315, ' adciZnUh Z5A21', '2023', 'SO', 'WR', 'Url Z942F', 'DZ', 'TT', 'VV', 'WR', 'WW', 'WR', 'bl', 'TY', 'QT', 'default.png', 1),
(316, 'nUZqsh wCI023', '2021', 'TV', 'WR', 'Url Z942F', 'DZ', 'WP', 'WQ', 'VW', 'WY', 'XS', 'bZl', 'WP', 'RO', 'default.png', 1),
(317, 'rhkdl kM2G wy8CIz', '2022', 'RQ', 'WP', 'Url Z942F', 'DZ', 'VX', 'VV', 'VW', 'XO', 'WW', 'ka', 'VR', 'RT', 'default.png', 1),
(318, 'gZccnUbgd hkwdr eZhbZk', '2022', 'QT', 'VY', 'Url Z942F', 'DZ', 'WV', 'VV', 'ST', 'WX', 'XQ', 'ba', 'TT', 'QO', 'default.png', 1),
(319, 'rhenUq ZacdklnUldmd ', '2021', 'SO', 'VY', 'Url Z942F', 'DZ', 'XO', 'VW', 'VY', 'XV', 'XR', 'ku', 'VP', 'QR', 'default.png', 1),
(320, 'AZZI AYOUB', '2020', '56', '84', 'MC Alger', 'DZ', '86', '82', '72', '83', '82', 'CAM', '59', '25', '455006.', 1),
(321, 'admZqnUr Zz1298F6A', '2020', 'RQ', 'XS', 'lb Z942F', 'DZ', 'VY', 'WV', 'VT', 'XO', 'WW', 'rs', 'WP', 'RO', '481693.jpg', 1),
(322, 'admlnUlZ jyF6A', '2023', 'QT', 'XS', 'lb Z942F', 'DZ', 'TT', 'VV', 'WR', 'RT', 'VT', 'bZl', 'VR', 'RT', '701017.jpg', 1),
(323, 'cdllnU ZacdkfgZmh', '2019', 'QO', 'XR', 'lb Z942F', 'DZ', 'WP', 'WQ', 'VW', 'RO', 'TW', 'ku', 'TT', 'QO', '109418.jpg', 1),
(324, 'gZbgnUc ZacdqqZglZmd', '2022', 'RQ', 'XR', 'lb Z942F', 'DZ', 'VX', 'VV', 'VW', 'XO', 'WW', 'bcl', 'VP', 'QR', '150494.png', 1),
(325, 'ZacdkkZnUh rnehZmd', '2020', 'QT', 'XQ', 'lb Z942F', 'DZ', 'WV', 'VV', 'ST', 'RT', 'VT', 'ba', 'WW', 'PX', 'default.png', 1),
(326, 'adkfZbdlh xhmd dcchmd Zgldc', '2019', 'SO', 'XP', 'lb Z942F', 'DZ', 'WR', 'XP', 'XP', 'RO', 'TW', 'qu', 'WY', 'RT', 'default.png', 1),
(327, 'cZZr rZhc', '2022', 'TV', 'TT', 'lb Z942F', 'DZ', 'XT', 'XO', 'WP', 'WW', 'WR', 'qu', 'WV', 'QO', 'default.png', 1),
(328, 'cdqqZci lngZldc mZchq', '2020', 'RQ', 'WR', 'lb Z942F', 'DZ', 'WQ', 'XW', 'WO', 'RT', 'VT', 'ba', 'TV', 'PX', 'default.png', 1),
(329, 'ciZgcnU lngZldc qhcgZ', '2019', 'QT', 'WR', 'lb Z942F', 'DZ', 'TP', 'VT', 'TT', 'RO', 'TW', 'qu', 'WY', 'PX', 'default.png', 1),
(330, 'jdahq j5y921', '2021', 'RQ', 'VS', 'lb Z942F', 'DZ', 'TT', 'VV', 'WR', 'RO', 'TW', 'qa', 'WW', 'PX', 'default.png', 1),
(331, 'knUhxhmh wnUbde', '2021', 'SX', 'TT', 'lb Z942F', 'DZ', 'WP', 'WQ', 'VW', 'WW', 'WR', 'bl', 'XQ', 'PT', 'default.png', 1),
(332, 'lZshadm qZbghc', '2023', 'QT', 'TO', 'lb Z942F', 'DZ', 'VX', 'VV', 'VW', 'WY', 'XS', 'ba', 'WY', 'PX', 'default.png', 1),
(333, 'mdqhdq b52AG d116B2', '2021', 'PS', 'VS', 'lb Z942F', 'DZ', 'WV', 'VV', 'ST', 'XO', 'WW', 'rs', 'WW', 'PX', 'default.png', 1),
(334, 'Zhs Zacdrrkdl Z5A21', '2022', 'RT', 'TT', 'ir jyzM962', 'DZ', 'WR', 'XP', 'XP', 'XO', 'WW', 'ba', 'XQ', 'PT', 'default.png', 1),
(335, 'Zhs hchq jZqhl', '2022', 'RQ', 'TT', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'RT', 'VT', 'ka', 'WY', 'RT', 'default.png', 1),
(336, 'adkjZbdlh f5692G', '2021', 'SX', 'VT', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'RO', 'TW', 'ka', 'WV', 'QO', 'default.png', 1),
(337, 'admZkcihZ l2516', '2019', 'QT', 'WY', 'ir jyzM962', 'DZ', 'WO', 'XP', 'WS', 'WW', 'WR', 'qa', 'TV', 'PX', 'default.png', 1),
(338, 'edqfUdmd qyA1yB2', '2022', 'PS', 'TO', 'ir jyzM962', 'DZ', 'WR', 'XP', 'XP', 'RO', 'TW', 'ba', 'WY', 'PX', 'default.png', 1),
(339, 'hqZsmh Zz12FNy8', '2020', 'RQ', 'VS', 'ir jyzM962', 'DZ', 'XT', 'XO', 'WP', 'WW', 'WR', 'bl', 'WW', 'PX', 'default.png', 1),
(340, 'ldxhZmd rAy69', '2019', 'SX', 'TT', 'ir jyzM962', 'DZ', 'WQ', 'XW', 'WO', 'WY', 'XS', 'bZl', 'XQ', 'PT', 'default.png', 1),
(341, 'mZhs qZaZg ly859CI3', '2019', 'QT', 'WR', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'XO', 'WW', 'ka', 'WY', 'PX', 'default.png', 1),
(342, 'nUfUdmnUmd lC5yA21 yA6B2', '2022', 'PS', 'WR', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'XO', 'WW', 'ba', 'WW', 'PX', 'default.png', 1),
(343, 'nUjZbh iIzy', '2020', 'QT', 'WP', 'ir jyzM962', 'DZ', 'WO', 'XP', 'WS', 'RT', 'VT', 'ku', 'XQ', 'PT', 'default.png', 1),
(344, 'qdmZh kM2G', '2019', 'PS', 'VY', 'ir jyzM962', 'DZ', 'WV', 'XO', 'XQ', 'RO', 'TW', 'bZl', 'WY', 'RT', 'default.png', 1),
(345, 'sZemh lyGG6B6GGy', '2019', 'QR', 'TO', 'ir jyzM962', 'DZ', 'VW', 'XO', 'WV', 'XO', 'WW', 'rs', 'WV', 'QO', 'default.png', 1),
(346, 'shxhanUZkh a69y9', '2022', 'RT', 'VS', 'ir jyzM962', 'DZ', 'WQ', 'XW', 'WO', 'RO', 'TW', 'bZl', 'TV', 'PX', 'default.png', 1),
(347, 'Zhs ZlhqZs ZB6G', '2020', 'RQ', 'TT', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'WW', 'WR', 'ku', 'TY', 'QT', 'default.png', 1),
(348, 'Zhs fgdqah c7yA29', '2019', 'SX', 'TO', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'WY', 'XS', 'bcl', 'WP', 'RO', 'default.png', 1),
(349, 'ZlnjqZmd wy56y', '2023', 'QT', 'VS', 'ir jyzM962', 'DZ', 'WO', 'XP', 'WS', 'XO', 'WW', 'ba', 'VR', 'RT', 'default.png', 1),
(350, 'adbgdjdq lyGH2B', '2019', 'PS', 'TT', 'ir jyzM962', 'DZ', 'WR', 'XP', 'XP', 'XO', 'WW', 'qu', 'TT', 'QO', 'default.png', 1),
(351, 'adkZxxnUx lC5yA21 gyz6z', '2022', 'QR', 'TT', 'ir jyzM962', 'DZ', 'XT', 'XO', 'WP', 'RT', 'VT', 'qu', 'VP', 'QR', 'default.png', 1),
(352, 'adkfZbdl ZAyF lC5yA21 ry61', '2020', 'RT', 'VT', 'ir jyzM962', 'DZ', 'WQ', 'XW', 'WO', 'RO', 'TW', 'ba', 'TV', 'PX', 'default.png', 1),
(353, 'adqbghbgd wyB6G', '2019', 'RQ', 'WY', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'WW', 'WR', 'qu', 'WY', 'PX', 'default.png', 1),
(354, 'anUbgdghs ZMCIz', '2021', 'SX', 'WW', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'WW', 'WR', 'qa', 'WW', 'PX', 'default.png', 1),
(355, 'cZgkZk aZcqdcchmd ', '2023', 'QR', 'WR', 'ir jyzM962', 'DZ', 'WR', 'XQ', 'VX', 'WY', 'XS', 'bl', 'XQ', 'PT', 'default.png', 1),
(356, 'cZhadbgd nIGGyAy', '2019', 'RT', 'WR', 'ir jyzM962', 'DZ', 'WR', 'XP', 'XP', 'XO', 'WW', 'ba', 'WV', 'QO', 'default.png', 1),
(357, 'cZnUch myGG6A', '2022', 'RQ', 'WP', 'ir jyzM962', 'DZ', 'XT', 'XO', 'WP', 'WW', 'WR', 'rs', 'TV', 'PX', 'default.png', 1),
(358, 'cdgqha eyFCI8', '2020', 'SX', 'VY', 'ir jyzM962', 'DZ', 'WQ', 'XW', 'WO', 'WY', 'XS', 'ba', 'WY', 'PX', 'default.png', 1),
(359, 'cdjjZk lyGG6', '2019', 'QT', 'TO', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'XO', 'WW', 'ka', 'WW', 'PX', 'default.png', 1),
(360, 'jghqchmmd ay1F2116B2', '2022', 'PS', 'VS', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'RO', 'TW', 'ka', 'TY', 'QT', 'default.png', 1),
(361, ' ldaZqjh qZbhl', '2020', 'QR', 'TT', 'ir jyzM962', 'DZ', 'WO', 'XP', 'WS', 'WW', 'WR', 'qa', 'WP', 'RO', 'default.png', 1),
(362, ' mdxkZ lyGG6B6GGy', '2019', 'RT', 'VT', 'ir jyzM962', 'DZ', 'WR', 'XP', 'XP', 'WY', 'XS', 'ba', 'VR', 'RT', 'default.png', 1),
(363, 'nUZqZa jyF6A', '2019', 'RQ', 'WY', 'ir jyzM962', 'DZ', 'XT', 'XO', 'WP', 'XO', 'WW', 'bl', 'TT', 'QO', 'default.png', 1),
(364, 'nUrrZZcZ a298y02A', '2022', 'SX', 'WW', 'ir jyzM962', 'DZ', 'WQ', 'XW', 'WO', 'XO', 'WW', 'bZl', 'VP', 'QR', 'default.png', 1),
(365, 'rlZhk eyH25', '2019', 'QT', 'WR', 'ir jyzM962', 'DZ', 'TP', 'VT', 'TT', 'RT', 'VT', 'ka', 'WW', 'PX', 'default.png', 1),
(366, 'xZnUbgd Z5A21', '2022', 'PS', 'WR', 'ir jyzM962', 'DZ', 'VW', 'TO', 'SP', 'RO', 'TW', 'ba', 'XQ', 'PT', 'default.png', 1),
(367, 'ZwZc gyANy', '2020', 'QR', 'WP', 'irl a27y6y', 'DZ', 'WO', 'XP', 'WS', 'WW', 'WR', 'ku', 'WY', 'PX', 'default.png', 1),
(368, 'admlZmrnUq eyFCI8', '2019', 'RT', 'VY', 'irl a27y6y', 'DZ', 'WV', 'XO', 'XQ', 'WW', 'WR', 'bZl', 'WW', 'PX', 'default.png', 1),
(369, 'admrZwZg q61y', '2022', 'RQ', 'TO', 'irl a27y6y', 'DZ', 'VW', 'XO', 'WV', 'WY', 'XS', 'rs', 'XQ', 'PT', 'default.png', 1),
(370, 'anUfgZmdl wyB6G', '2019', 'SX', 'TT', 'irl a27y6y', 'DZ', 'WQ', 'XW', 'WO', 'XO', 'WW', 'bZl', 'TY', 'QT', 'default.png', 1),
(371, 'fgZmdl eCIy1', '2022', 'QT', 'VT', 'irl a27y6y', 'DZ', 'TP', 'VT', 'TT', 'RT', 'VT', 'ku', 'WP', 'RO', 'default.png', 1),
(372, 'jgdkkZe myz69', '2020', 'TV', 'WY', 'irl a27y6y', 'DZ', 'VW', 'TO', 'SP', 'RO', 'TW', 'bcl', 'VR', 'RT', 'default.png', 1),
(373, 'lnqrh hrkdl', '2019', 'RQ', 'WW', 'irl a27y6y', 'DZ', 'WO', 'XP', 'WS', 'WW', 'WR', 'ba', 'TT', 'QO', 'default.png', 1),
(374, 'xZlnUl uy961', '2019', 'QT', 'WR', 'irl a27y6y', 'DZ', 'WV', 'XO', 'XQ', 'WY', 'XS', 'qu', 'VP', 'QR', 'default.png', 1),
(375, 'ZcqZq nlZq', '2022', 'TR', 'WR', 'irl a27y6y', 'DZ', 'VW', 'XO', 'WV', 'XO', 'WW', 'qu', 'TV', 'PX', 'default.png', 1),
(376, 'ZhrrZs xhmdcchmd', '2021', 'RT', 'WP', 'irl a27y6y', 'DZ', 'TP', 'VT', 'TT', 'YP', 'XQ', 'ba', 'WY', 'PX', 'default.png', 1),
(377, 'ZlfgZq xZghq', '2023', 'RQ', 'WP', 'irl a27y6y', 'DZ', 'VW', 'TO', 'SP', 'XR', 'XR', 'qu', 'WW', 'PX', 'default.png', 1),
(378, 'ZqjnUa gnbhmd', '2019', 'SX', 'VY', 'irl a27y6y', 'DZ', 'WO', 'XP', 'WS', 'RT', 'VT', 'qa', 'XQ', 'PT', 'default.png', 1),
(379, 'aZbgh eZuxh', '2022', 'SO', 'VY', 'irl a27y6y', 'DZ', 'WV', 'XO', 'XQ', 'RO', 'TW', 'bl', 'TV', 'PX', 'default.png', 1),
(380, 'aZghnU lZsnUa', '2021', 'TV', 'TO', 'irl a27y6y', 'DZ', 'VW', 'XO', 'WV', 'WW', 'WR', 'ba', 'WY', 'PX', 'default.png', 1);
INSERT INTO `players` (`id_player`, `name_player`, `date_end_contract`, `price_breach_contract`, `score_player`, `team_player`, `country`, `speed_player`, `dribbling_player`, `shooting_player`, `defense_player`, `physical_performance`, `position_player`, `passes_player`, `salary_player`, `pic`, `crypt`) VALUES
(381, 'adkgnbhmd sZqhj', '2019', 'RQ', 'TT', 'irl a27y6y', 'DZ', 'VX', 'TY', 'SW', 'WY', 'XS', 'rs', 'WY', 'RT', 'default.png', 1),
(382, 'admjnUknU qZaZg', '2022', 'QT', 'VT', 'irl a27y6y', 'DZ', '', '', '', 'XO', 'WW', 'ba', 'WV', 'QO', 'default.png', 1),
(383, 'anUZkkZj dk gZbgdlh', '2020', 'SO', 'WY', 'irl a27y6y', 'DZ', 'XT', 'XO', 'WP', 'WX', 'XQ', 'ka', 'TV', 'PX', 'default.png', 1),
(384, 'anUajdUq lngZldc', '2019', 'TV', 'WW', 'irl a27y6y', 'DZ', 'WQ', 'XW', 'WO', 'XV', 'XR', 'ka', 'WY', 'PX', 'default.png', 1),
(385, 'edqgZs lZjgknUe', '2019', 'RQ', 'WR', 'irl a27y6y', 'DZ', 'TP', 'VT', 'TT', 'XR', 'XQ', 'qa', 'WW', 'PX', 'default.png', 1),
(386, 'fUdmZmZ lnUmhq', '2022', 'QT', 'WR', 'irl a27y6y', 'DZ', 'VW', 'TO', 'SP', 'RT', 'VT', 'ba', 'XQ', 'PT', 'default.png', 1),
(387, 'jgdkeZnUh wZmhr ZacdrkZl', '2019', 'QO', 'WP', 'irl a27y6y', 'DZ', 'WO', 'XP', 'WS', 'RO', 'TW', 'bl', 'WY', 'PX', 'default.png', 1),
(388, ' ldjqdbgd wZghZ', '2022', 'RT', 'VY', 'irl a27y6y', 'DZ', 'WV', 'XO', 'XQ', 'WW', 'WR', 'bZl', 'WW', 'PX', 'default.png', 1),
(389, 'lngZmc bgdqhe kwdr', '2020', 'RQ', 'VY', 'irl a27y6y', 'DZ', 'VW', 'XO', 'WV', 'WY', 'XS', 'ka', 'XQ', 'PT', 'default.png', 1),
(390, 'nUZkh uZkhc', '2019', 'SX', 'TO', 'irl a27y6y', 'DZ', 'VX', 'TY', 'SW', 'XO', 'WW', 'ba', 'TY', 'QR', 'default.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `transfert`
--

CREATE TABLE `transfert` (
  `id_transfer` int(100) NOT NULL,
  `id_player` varchar(255) NOT NULL,
  `id_president` varchar(255) NOT NULL,
  `from_c` varchar(255) NOT NULL,
  `to_c` varchar(255) NOT NULL,
  `cost` varchar(110) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `transfert`
--

INSERT INTO `transfert` (`id_transfer`, `id_player`, `id_president`, `from_c`, `to_c`, `cost`, `date`) VALUES
(1, '2', '15', 'Paris Saint-Germain', 'MC Alger', '300', '2018'),
(2, '4', '15', 'Paris Saint-Germain', 'MC Alger', '180', '2018');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(64) NOT NULL,
  `passw_user` varchar(64) NOT NULL,
  `grade` varchar(64) NOT NULL,
  `crypt` tinyint(1) NOT NULL,
  `name_team` text NOT NULL,
  `country` text NOT NULL,
  `pic` text NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `passw_user`, `grade`, `crypt`, `name_team`, `country`, `pic`, `rank`) VALUES
(1, 'EjnZk HVmdV 6VmojhZp', '7e736515a6038ec4aec5f1b5803b470c1b6ae062', 'kmZndYZio', 1, '6VmXZgjiZ', 'ES', 'default.png', 1),
(2, 'AgjmZiodij KémZu', 'fbd5b93b932a7440d6d56a43ca2575ebf5e02058', 'kmZndYZio', 1, 'MZVg HVYmdY', 'ES', 'default.png', 1),
(3, 'FcVgYjji 5g HpWVmVf', '8dd3a635ab8173f95332ccc59b6017f89598cf1a', 'kmZndYZio', 1, 'HViXcZnoZm 7dot', 'UK', 'default.png', 1),
(4, '9imdlpZ 7ZmZuj', '02ee4a97f17d0592fd87bac367adc8314ae10c14', 'kmZndYZio', 1, '5ogZodXj HVYmdY', 'ES', 'default.png', 1),
(5, '5idg Hpmoct', '8342d2996e6c097b1fce57a44f3b3fc153c860ea', 'kmZndYZio', 1, 'PVgZiXdV', 'ES', 'default.png', 1),
(6, 'EZVi-HdXcZg 5pgVn', '5ec97277964fc692c8c82e2a90b0ee382f236683', 'kmZndYZio', 1, 'JgthkdlpZ gtjiiVdn', 'FR', 'default.png', 1),
(7, 'IVnnZm 5g-FcZgVïad', 'e13cf07feeb3585d35b1e5b80c1e8539690c9c3c', 'kmZndYZio', 1, 'KVmdn NVdio-BZmhVdi', 'FR', 'default.png', 1),
(8, 'EZVi-KdZmmZ MdqèmZ', '88be63182c8e0e5674709510beb3bda6aadbcbec', 'kmZndYZio', 1, 'JB7 IdXZ', 'FR', 'default.png', 1),
(9, '8hdomd MtWjgjqgZq', 'e1f48a9611251ce5ed07b9e854c6399814bbdc2c', 'kmZndYZio', 1, '5N HjiVXj', 'FR', 'default.png', 1),
(10, 'Ojh QZmiZm', '9b8588b3a252b69fb87c83ac56d26c542ab6cd93', 'kmZndYZio', 1, 'GdqZmkjjg A7', 'UK', 'default.png', 1),
(11, '8VidZg GZqt', 'f4f7c6dd113b1e9c309ee8db429cb912515d43d9', 'kmZndYZio', 1, 'OjooZicVh', 'UK', 'default.png', 1),
(12, '6mpXZ 6pXf', '318cd0091a7c15d89c91c225b4ce754dd8fdc360', 'kmZndYZio', 1, '7cZgnZV', 'UK', 'default.png', 1),
(13, 'DIA5IODIJ BdViid', '3ca362c126db5e98e17286c6b2dee34f15f11e52', '5bZio ADA5', 1, '', '', 'default.png', 2),
(14, '6ZgfVXZh CjpVnnd', '7fbe3736d04ae6073d9c8a9a123cf18d43df64a7', 'kmZndYZio', 1, 'ENH 6ZeVdV', 'DZ', 'default.png', 1),
(15, 'HjcVhZY CdmZXcZ', 'a00a6580f9d30181b6e451fd6c18561880880f34', 'kmZndYZio', 1, 'H7 5gbZm', 'DZ', 'default.png', 1),
(16, '5gd CVYYVY', 'b80c0aba947ee523f68921928563b80f4fc43887', 'kmZndYZio', 1, 'UNH 5gbZm', 'DZ', 'default.png', 1),
(17, '7cémda HZggVg', 'ffbf77f7ae702d1c80730efe4ce774e30bc9d72a', 'kmZndYZio', 1, 'EN FVWtgdZ', 'DZ', 'default.png', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id_activity`);

--
-- Index pour la table `attente`
--
ALTER TABLE `attente`
  ADD PRIMARY KEY (`id_transfer`),
  ADD UNIQUE KEY `id_player` (`id_player`);

--
-- Index pour la table `transfert`
--
ALTER TABLE `transfert`
  ADD PRIMARY KEY (`id_transfer`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `attente`
--
ALTER TABLE `attente`
  MODIFY `id_transfer` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `transfert`
--
ALTER TABLE `transfert`
  MODIFY `id_transfer` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;