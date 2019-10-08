-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 21 Novembre 2018 à 19:43
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `agent-fifa`
--

-- --------------------------------------------------------

--
-- Structure de la table `attente`
--

CREATE TABLE `attente` (
  `id_transfer` int(100) NOT NULL,
  `id_player` varchar(255) NOT NULL,
  `id_president` int(11) NOT NULL,
  `from_c` varchar(255) NOT NULL,
  `to_c` varchar(255) NOT NULL,
  `cost` varchar(110) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `ID` int(255) NOT NULL,
  `user_name` varchar(225) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=swe7;

--
-- Contenu de la table `connexion`
--

INSERT INTO `connexion` (`ID`, `user_name`) VALUES
(17, 'Anil Murthy'),
(18, 'Josep Maria Bartomeu'),
(19, 'Josep Maria Bartomeu'),
(20, 'Josep Maria Bartomeu'),
(21, 'Nasser Al-Khela?fi'),
(22, 'Nasser Al-Khela?fi'),
(23, 'Nasser Al-Khela?fi'),
(24, 'Nasser Al-Khela?fi'),
(25, 'Nasser Al-Khela?fi'),
(26, 'Nasser Al-Khela?fi'),
(27, 'Josep Maria Bartomeu'),
(28, 'Nasser Al-Khela?fi'),
(29, 'Nasser Al-Khela?fi'),
(30, 'Nasser Al-Khela?fi'),
(31, 'Nasser Al-Khela?fi'),
(32, 'Nasser Al-Khela?fi'),
(33, 'Nasser Al-Khela?fi'),
(34, 'Nasser Al-Khela?fi'),
(35, 'Nasser Al-Khela?fi'),
(36, 'Nasser Al-Khela?fi'),
(37, 'Nasser Al-Khela?fi'),
(38, 'Nasser Al-Khela?fi'),
(39, 'Nasser Al-Khela?fi'),
(40, 'Nasser Al-Khela?fi'),
(41, 'Nasser Al-Khela?fi'),
(42, 'Nasser Al-Khela?fi'),
(43, 'Nasser Al-Khela?fi'),
(44, 'Nasser Al-Khela?fi'),
(45, 'Nasser Al-Khela?fi'),
(46, 'Nasser Al-Khela?fi'),
(47, 'Nasser Al-Khela?fi'),
(48, 'Nasser Al-Khela?fi'),
(49, 'Nasser Al-Khela?fi'),
(50, 'Nasser Al-Khela?fi'),
(51, 'Nasser Al-Khela?fi'),
(52, 'Nasser Al-Khela?fi'),
(53, 'Nasser Al-Khela?fi'),
(54, 'Nasser Al-Khela?fi'),
(55, 'Nasser Al-Khela?fi'),
(56, 'Nasser Al-Khela?fi'),
(57, 'Nasser Al-Khela?fi'),
(58, 'Nasser Al-Khela?fi'),
(59, 'Nasser Al-Khela?fi'),
(60, 'Nasser Al-Khela?fi');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(64) NOT NULL,
  `budget_equipe` text NOT NULL,
  `id_president` int(11) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`, `budget_equipe`, `id_president`, `crypt`) VALUES
(1, 'Olympique lyonnais', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 1, 1),
(2, 'Paris Saint-Germain', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 2, 1),
(3, 'OGC Nice', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 3, 1),
(4, 'AS Monaco', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gactivity`
--

CREATE TABLE `gactivity` (
  `id_activity` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `action` text NOT NULL,
  `date_activity` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id_joueur` int(11) NOT NULL,
  `nom_joueur` varchar(64) NOT NULL,
  `date_fin_contrat` double NOT NULL,
  `prix_repture_contrat` text NOT NULL,
  `score_joueur` double NOT NULL,
  `equipe_joueur` varchar(64) NOT NULL,
  `vitesse_joueur` double NOT NULL,
  `dribbles_joueur` double NOT NULL,
  `tirs_joueur` double NOT NULL,
  `defense_joueur` double NOT NULL,
  `performance_physique` text NOT NULL,
  `position_joueur` varchar(64) NOT NULL,
  `passes_joueur` double NOT NULL,
  `salaire_joueur` text NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joueurs`
--

INSERT INTO `joueurs` (`id_joueur`, `nom_joueur`, `date_fin_contrat`, `prix_repture_contrat`, `score_joueur`, `equipe_joueur`, `vitesse_joueur`, `dribbles_joueur`, `tirs_joueur`, `defense_joueur`, `performance_physique`, `position_joueur`, `passes_joueur`, `salaire_joueur`, `pic`, `crypt`) VALUES
(1, 'Neymar', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 100, 'Paris Saint-Germain', 92, 95, 84, 32, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 83, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', '366553.jpg', 1),
(2, 'Edinson Cavani', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 89, 'Paris Saint-Germain', 86, 88, 86, 50, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 81, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(3, 'Thiago Silva', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 88, 'Paris Saint-Germain', 43, 78, 62, 85, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 79, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(4, 'Kylian Mbappé', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 87, 'Paris Saint-Germain', 82, 82, 87, 39, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(5, 'Marco Verratti', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 86, 'Paris Saint-Germain', 73, 89, 74, 67, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(6, 'Ángel Di María', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 84, 'Paris Saint-Germain', 78, 89, 72, 46, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 83, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(7, 'Marquinhos', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 84, 'Paris Saint-Germain', 90, 82, 81, 44, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 73, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(8, 'Julian Draxler', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 71, 59, 27, 83, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(9, 'Presnel Kimpembe', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 86, 86, 80, 39, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(10, 'Adrien Rabiot', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 83, 81, 74, 77, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 80, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(11, 'Thomas Meunier', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 82, 'Paris Saint-Germain', 65, 65, 41, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(12, 'Dani Alves', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 82, 'Paris Saint-Germain', 89, 87, 75, 36, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(13, 'Lassana Diarra', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'Paris Saint-Germain', 73, 82, 80, 42, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(14, 'Layvin Kurzawa', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Paris Saint-Germain', 77, 78, 76, 33, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 69, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(15, 'Eric Maxim Choupo-Moting', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Paris Saint-Germain', 52, 71, 51, 77, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LM', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(16, 'Thilo Kehrer', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Paris Saint-Germain', 88, 80, 73, 31, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(17, 'Bernat', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 77, 77, 59, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(18, 'Jesé', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 69, 69, 66, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(19, 'Christopher Nkunku', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 70, 73, 75, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(20, 'Jean-Christophe Bahebeck', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'Paris Saint-Germain', 84, 76, 64, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 67, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(21, 'Timothy Weah', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'Paris Saint-Germain', 78, 62, 45, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(22, 'Moussa Diaby', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'Paris Saint-Germain', 68, 65, 55, 59, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(23, 'Yacine Adli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'Paris Saint-Germain', 71, 67, 54, 40, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(25, 'Nabil Fekir', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 85, 'Olympique Lyonnais', 84, 85, 80, 60, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CAM', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(26, 'Memphis Depay', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Olympique Lyonnais', 68, 86, 69, 54, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(27, 'Marcelo', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 81, 'Olympique Lyonnais', 65, 65, 49, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(28, 'Lucas Tousart', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 69, 76, 73, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 74, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(29, 'Rafael', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 70, 75, 78, 37, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(30, 'Bertrand Traoré', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 75, 72, 65, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(31, 'Kenny Tete', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 81, 82, 75, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(32, 'Tanguy Ndombele', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 84, 84, 62, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(33, 'Houssem Aouar', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 64, 70, 55, 79, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(34, 'Ferland Mendy', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 64, 70, 46, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(35, 'Léo Dubois', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 71, 75, 72, 58, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 77, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(36, 'Marçal', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 64, 76, 76, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(37, 'Jérémy Morel', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 67, 78, 67, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(38, 'Moussa Dembélé', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 73, 75, 69, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 74, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(39, 'Jordan Ferri', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 72, 78, 72, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(40, 'Maxwel Cornet', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 79, 80, 64, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(41, 'Jason Denayer', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'Olympique Lyonnais', 63, 68, 73, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(42, 'Mapou Yanga-M''Biwa', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'Olympique Lyonnais', 44, 57, 43, 74, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 56, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(43, 'Martin Terrier', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'Olympique Lyonnais', 92, 77, 65, 51, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(44, 'Pape Cheikh Diop', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'Olympique Lyonnais', 64, 62, 65, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 67, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(45, 'Olivier Kemen', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'Olympique Lyonnais', 71, 65, 65, 67, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(46, 'Amine Gouiri', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'Olympique Lyonnais', 70, 65, 59, 29, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(47, 'Oumar Solet', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 62, 'Olympique Lyonnais', 69, 64, 60, 45, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(48, 'Reo Griffiths', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 61, 'Olympique Lyonnais', 69, 61, 51, 61, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 55, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(49, 'Yassin Fekir', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 60, 'Olympique Lyonnais', 74, 59, 32, 53, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 49, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(50, 'Mario Balotelli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'OGC Nice', 69, 82, 73, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 79, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(51, 'Dante', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'OGC Nice', 38, 48, 49, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(52, 'Allan Saint-Maximin', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'OGC Nice', 74, 80, 65, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(53, 'Wylan Cyprien', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'OGC Nice', 60, 76, 70, 69, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(54, 'Arnaud Souquet', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'OGC Nice', 68, 63, 30, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 52, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(55, 'Pierre Lees-Melou', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'OGC Nice', 80, 78, 64, 75, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(56, 'Danilo', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'OGC Nice', 89, 73, 70, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(57, 'Christophe Hérelle', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'OGC Nice', 83, 76, 77, 32, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(58, 'Christophe Jallet', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'OGC Nice', 33, 53, 38, 76, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 56, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(59, 'Malang Sarr', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'OGC Nice', 73, 72, 74, 25, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 48, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(60, 'Rémi Walter', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 78, 73, 67, 56, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(61, 'Adrien Tameze', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 77, 70, 69, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(62, 'Bassem Srarfi', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 86, 74, 66, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(63, 'Mickaël Le Bihan', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'OGC Nice', 73, 74, 57, 62, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(64, 'Olivier Boscagli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 74, 68, 68, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(65, 'Patrick Burner', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 69, 55, 45, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(66, 'Ihsan Sacko', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 63, 69, 63, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(67, 'Youcef Atal', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'OGC Nice', 61, 63, 44, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(68, 'Racine Coly', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 79, 67, 67, 26, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(69, 'Myziane Maolida', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 77, 69, 65, 27, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 52, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(70, 'Jean-Victor Makengo', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 70, 65, 59, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(71, 'Ignatius Ganago', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'OGC Nice', 73, 69, 67, 45, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(72, 'Gautier Lloris', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 66, 'OGC Nice', 65, 56, 53, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(73, 'Hicham Mahou', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'OGC Nice', 61, 54, 61, 57, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 41, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(74, 'Falcao', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 85, 'AS Monaco', 83, 84, 81, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(75, 'Kamil Glik', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'AS Monaco', 86, 83, 75, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 81, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(76, 'Rony Lopes', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 73, 81, 75, 38, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(77, 'Stevan Joveti?', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 70, 68, 47, 83, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(78, 'Djibril Sidibé', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 70, 79, 70, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 77, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(79, 'Alexandr Golovin', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 71, 76, 58, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(80, 'Jemerson', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 48, 77, 55, 74, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(81, 'Youri Tielemans', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 66, 69, 46, 80, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 73, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(82, 'Nacer Chadli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'AS Monaco', 48, 64, 75, 34, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LM', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(83, 'Jean-Eudes Aholou', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'AS Monaco', 70, 77, 78, 30, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(84, 'Antonio Barreca', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 72, 69, 77, 35, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(85, 'Youssef Aït Bennasser', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 55, 71, 73, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 71, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(86, 'Pelé', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 70, 64, 34, 75, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(87, 'Andrea Raggi', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 31, 54, 59, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 48, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(88, 'Almamy Touré', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 85, 68, 64, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(89, 'Samuel Grandsir', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 89, 75, 65, 46, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 71, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(90, 'Jorge', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 89, 72, 70, 41, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(91, 'Ronaël Pierre-Gabriel', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'AS Monaco', 65, 62, 40, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(92, 'Kévin N''Doram', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'AS Monaco', 80, 70, 35, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(93, 'Jordi Mboula', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'AS Monaco', 76, 68, 61, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(94, 'Pietro Pellegri', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'AS Monaco', 56, 51, 26, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 37, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(95, 'Sofiane Diop', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'AS Monaco', 86, 68, 59, 30, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CAM', 54, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(96, 'Moussa Sylla', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'AS Monaco', 77, 65, 61, 29, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(97, 'Willem Geubbels', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'AS Monaco', 45, 54, 53, 61, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1),
(98, 'Julien Serrano', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'AS Monaco', 44, 62, 43, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 'default.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `presidents`
--

CREATE TABLE `presidents` (
  `id_president` int(11) NOT NULL,
  `nom_president` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `presidents`
--

INSERT INTO `presidents` (`id_president`, `nom_president`) VALUES
(1, 'Jean-Michel Aulas'),
(2, 'Nasser Al-Khelaïfi'),
(3, 'Jean-Pierre Rivère'),
(4, 'Dmitri Rybolovlev');

-- --------------------------------------------------------

--
-- Structure de la table `transfer`
--

CREATE TABLE `transfer` (
  `id_player` int(11) NOT NULL,
  `id_president` int(11) NOT NULL,
  `from_c` varchar(64) NOT NULL,
  `to_c` varchar(64) NOT NULL,
  `cost` float NOT NULL,
  `date_transfer` date NOT NULL,
  `id_transfer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(64) NOT NULL,
  `passw_user` varchar(64) NOT NULL,
  `grade` varchar(64) NOT NULL,
  `club` varchar(64) NOT NULL,
  `rank` varchar(64) CHARACTER SET swe7 NOT NULL,
  `pic` varchar(10000) CHARACTER SET swe7 DEFAULT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `passw_user`, `grade`, `club`, `rank`, `pic`, `crypt`) VALUES
(1, 'Josep Maria Bartomeu', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'president Barcelone', 'FC Barcelone', '1', NULL, 1),
(2, 'Florentino Pérez', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Real Madrid', 'Real Madrid', '1', NULL, 1),
(3, 'Khaldoon Al Mubarak', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Manchester City', 'Manchester City', '1', NULL, 1),
(4, 'Enrique Cerezo', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Atletico Madrid', 'Atletico Madrid', '1', NULL, 1),
(5, 'Anil Murthy', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Valencia', 'Valencia', '1', NULL, 1),
(6, 'Jean-Michel Aulas', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Olympique lyonnais', 'Olympique lyonnais', '1', NULL, 1),
(7, 'Nasser Al-Khelaïfi', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Paris Saint-Germain', 'Paris Saint-Germain', '1', NULL, 1),
(8, 'Jean-Pierre Rivère', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President OGC Nice', 'OGC Nice', '1', NULL, 1),
(9, 'Dmitri Rybolovlev', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President AS Monaco ', 'AS Monaco', '1', NULL, 1),
(10, 'Tom Werner ', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Liverpool FC', 'Liverpool FC', '1', NULL, 1),
(11, 'Daniel Levy', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Tottenham', 'Tottenham', '1', NULL, 1),
(12, 'Bruce Buck', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'President Chelsea', 'Chelsea', '1', NULL, 1),
(13, 'MATA', 'fa43726ff3a37cf6bd320f412cf14bb7775d4104', 'Responsable des transferts', '', '2', NULL, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Index pour la table `gactivity`
--
ALTER TABLE `gactivity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id_joueur`);

--
-- Index pour la table `presidents`
--
ALTER TABLE `presidents`
  ADD PRIMARY KEY (`id_president`);

--
-- Index pour la table `transfer`
--
ALTER TABLE `transfer`
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
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `gactivity`
--
ALTER TABLE `gactivity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT pour la table `presidents`
--
ALTER TABLE `presidents`
  MODIFY `id_president` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id_transfer` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;--
-- Base de données :  `fifa-es`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `apellido_equipo` varchar(64) NOT NULL,
  `presupuesto_equipo` text NOT NULL,
  `id_presidente` int(11) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `apellido_equipo`, `presupuesto_equipo`, `id_presidente`, `crypt`) VALUES
(1, 'Barcelone', 'b41e6fa06e302d26e06e0995a0235ac4b156568b', 1, 1),
(2, 'Real Madrid', 'b41e6fa06e302d26e06e0995a0235ac4b156568b', 2, 1),
(3, 'Atletico Madrid', 'b41e6fa06e302d26e06e0995a0235ac4b156568b', 3, 1),
(4, 'Valencia', 'b41e6fa06e302d26e06e0995a0235ac4b156568b', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `apellido_jugador` varchar(64) NOT NULL,
  `fecha_finalizacion_contrato` double NOT NULL,
  `precio_rompiendo_contrato` text NOT NULL,
  `puntuacion_jugador` double NOT NULL,
  `equipo_jugador` varchar(64) NOT NULL,
  `velocidad_jugador` double NOT NULL,
  `regate_jugador` double NOT NULL,
  `disparo_jugador` double NOT NULL,
  `defensa_jugador` double NOT NULL,
  `rendimiento_fisico` text NOT NULL,
  `posicion_jugador` varchar(64) NOT NULL,
  `pases_jugador` double NOT NULL,
  `pagar_jugador` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `apellido_jugador`, `fecha_finalizacion_contrato`, `precio_rompiendo_contrato`, `puntuacion_jugador`, `equipo_jugador`, `velocidad_jugador`, `regate_jugador`, `disparo_jugador`, `defensa_jugador`, `rendimiento_fisico`, `posicion_jugador`, `pases_jugador`, `pagar_jugador`, `pic`, `crypt`) VALUES
(1, 'Lionel Messi', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 94, 'FC Barcelona', 88, 96, 91, 32, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CF', 88, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(2, 'Luis Suárez', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 91, 'FC Barcelona', 76, 91, 76, 70, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 90, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(3, 'Coutinho', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 88, 'FC Barcelona', 95, 85, 88, 58, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LW', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(4, 'Sergio Busquets', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 88, 'FC Barcelona', 90, 91, 76, 36, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(5, 'Samuel Umtiti', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 87, 'FC Barcelona', 63, 72, 63, 88, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(6, 'Ivan Rakiti?', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 87, 'FC Barcelona', 84, 75, 84, 35, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 76, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(7, 'Piqué', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 87, 'FC Barcelona', 69, 90, 70, 61, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 87, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(8, 'Jordi Alba', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 87, 'FC Barcelona', 72, 60, 26, 88, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 46, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(9, 'Arturo Vidal', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'FC Barcelona', 64, 84, 86, 38, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 77, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(10, 'Sergi Roberto', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 84, 'FC Barcelona', 64, 60, 41, 83, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 58, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(11, 'Malcom', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'FC Barcelona', 65, 70, 63, 85, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RW', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(12, 'Arthur', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'FC Barcelona', 75, 82, 73, 57, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 86, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(13, 'Clément Lenglet', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'FC Barcelona', 35, 65, 63, 82, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 66, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(14, 'Ousmane Dembélé', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'FC Barcelona', 73, 82, 67, 72, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RW', 81, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(15, 'Rafinha', 2020, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'FC Barcelona', 88, 84, 77, 57, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CAM', 75, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(16, 'Nélson Semedo', 2020, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'FC Barcelona', 63, 72, 81, 31, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 65, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(17, 'Denis Suárez', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'FC Barcelona', 81, 76, 77, 47, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 74, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(18, 'Thomas Vermaelen', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 77, 'FC Barcelona', 79, 79, 77, 33, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 69, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(19, 'Munir', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 77, 'FC Barcelona', 69, 77, 65, 73, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 74, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(20, 'Sergi Samper', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 73, 'FC Barcelona', 89, 78, 70, 44, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 70, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(21, 'Aleñà', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 70, 'FC Barcelona', 65, 62, 41, 66, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 61, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(22, 'Moussa Wagué', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 69, 'FC Barcelona', 93, 69, 65, 33, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 58, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(23, 'Cucurella', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 69, 'FC Barcelona', 61, 61, 38, 72, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 58, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(24, 'Riqui Puig', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 68, 'FC Barcelona', 83, 67, 54, 31, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 61, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(25, 'Abel Ruiz', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 67, 'FC Barcelona', 63, 57, 42, 63, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 58, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(26, 'Miranda', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 66, 'FC Barcelona', 59, 44, 34, 67, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 41, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(27, 'Luka Modri?', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 91, 'Real Madrid', 75, 72, 63, 91, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(28, 'Sergio Ramos', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 91, 'Real Madrid', 91, 94, 82, 35, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 86, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(29, 'Toni Kroos', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 90, 'Real Madrid', 68, 64, 48, 89, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 65, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(30, 'Isco', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 89, 'Real Madrid', 74, 83, 83, 75, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CAM', 88, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(31, 'Casemiro', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 88, 'Real Madrid', 71, 70, 54, 88, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(32, 'Gareth Bale', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 88, 'Real Madrid', 74, 86, 82, 53, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RW', 89, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(33, 'Marcelo', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 88, 'Real Madrid', 73, 83, 87, 31, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 70, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(34, 'Raphaël Varane', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 86, 'Real Madrid', 76, 74, 55, 87, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(35, 'Marco Asensio', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'Real Madrid', 71, 70, 60, 85, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LW', 67, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(36, 'Karim Benzema', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 84, 'Real Madrid', 68, 53, 45, 86, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 51, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(37, 'Carvajal', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 84, 'Real Madrid', 52, 66, 83, 45, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 57, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(38, 'Lucas Vázquez', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'Real Madrid', 79, 86, 69, 69, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RW', 82, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(39, 'Nacho Fernández', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'Real Madrid', 84, 87, 80, 27, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 79, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(40, 'Odriozola', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Real Madrid', 71, 77, 68, 80, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 77, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(41, 'Mariano', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Real Madrid', 64, 78, 71, 76, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 79, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(42, 'Marcos Llorente', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Real Madrid', 81, 78, 60, 75, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 74, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(43, 'Mariano', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Real Madrid', 64, 78, 71, 76, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 79, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(44, 'Marcos Llorente', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Real Madrid', 81, 78, 60, 75, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 74, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(45, 'Fábio Coentrão', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Real Madrid', 77, 74, 54, 78, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(46, 'Vallejo', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 78, 'Real Madrid', 83, 79, 52, 76, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(47, 'Dani Ceballos', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 78, 'Real Madrid', 91, 84, 71, 23, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 68, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(48, 'Vinícius Júnior', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 77, 'Real Madrid', 84, 79, 70, 35, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LW', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(49, 'Borja Mayoral', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 75, 'Real Madrid', 74, 77, 70, 45, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(50, 'Federico Valverde', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 73, 'Real Madrid', 32, 67, 67, 69, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(51, 'Cristo González', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 65, 'Real Madrid', 70, 67, 60, 65, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 57, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(52, 'Reguilón', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 64, 'Real Madrid', 80, 67, 63, 25, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 47, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(53, 'Diego Godín', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 90, 'Atlético de Madrid', 89, 84, 90, 38, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 70, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(54, 'Antoine Griezmann', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 89, 'Atlético de Madrid', 66, 91, 74, 50, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 87, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(55, 'Saúl', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'Atlético de Madrid', 84, 83, 76, 42, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(56, 'Diego Costa', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'Atlético de Madrid', 75, 79, 62, 81, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(57, 'Koke', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'Atlético de Madrid', 83, 62, 18, 86, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 42, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(58, 'Filipe Luís', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 85, 'Atlético de Madrid', 59, 79, 86, 34, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 77, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(59, 'José María Giménez', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 84, 'Atlético de Madrid', 75, 68, 38, 85, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 69, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(60, 'Thomas Lemar', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'Atlético de Madrid', 67, 78, 66, 82, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 76, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(61, 'Stefan Savi?', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'Atlético de Madrid', 61, 71, 65, 82, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(62, 'Thomas Lemar', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 83, 'Atlético de Madrid', 82, 79, 79, 31, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(63, 'Gelson Martins', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Atlético de Madrid', 58, 67, 51, 81, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RM', 67, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(64, 'Lucas Hernández', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Atlético de Madrid', 50, 70, 67, 81, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 72, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(65, 'Thomas Partey', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Atlético de Madrid', 87, 81, 63, 77, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 77, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(66, 'Rodri', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Atlético de Madrid', 80, 79, 86, 48, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 76, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(67, 'Vitolo', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 81, 'Atlético de Madrid', 67, 73, 80, 36, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 62, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(68, 'Ángel Correa', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Atlético de Madrid', 72, 70, 62, 77, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RM', 65, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(69, 'Juanfran', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Atlético de Madrid', 76, 77, 84, 34, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 69, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(70, 'Nikola Kalini?', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Atlético de Madrid', 88, 84, 74, 32, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(71, 'Santiago Arias', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 78, 'Atlético de Madrid', 66, 72, 80, 27, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 62, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(72, 'Óscar Pinchi', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 68, 'Atlético de Madrid', 66, 65, 55, 58, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 65, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(73, 'Parejo', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 86, 'Valencia CF', 65, 89, 60, 79, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(74, 'Rodrigo', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 84, 'Valencia CF', 78, 83, 80, 62, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(75, 'Ezequiel Garay', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Valencia CF', 68, 73, 64, 85, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(76, 'Gonçalo Guedes', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Valencia CF', 60, 82, 77, 47, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LW', 80, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(77, 'Gabriel Paulista', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Valencia CF', 81, 84, 77, 30, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(78, 'Daniel Wass', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Valencia CF', 73, 77, 73, 80, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(79, 'Geoffrey Kondogbia', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 82, 'Valencia CF', 69, 84, 75, 56, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CM', 83, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(80, 'Michy Batshuayi', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 81, 'Valencia CF', 53, 84, 69, 66, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 84, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(81, 'Kévin Gameiro', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 81, 'Valencia CF', 81, 76, 51, 79, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 68, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(82, 'Jeison Murillo', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 81, 'Valencia CF', 52, 63, 47, 82, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 62, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(83, 'Santi Mina', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Valencia CF', 75, 82, 77, 47, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'ST', 80, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(84, 'Carlos Soler', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 80, 'Valencia CF', 72, 81, 78, 45, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RM', 76, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(85, 'Francis Coquelin', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Valencia CF', 66, 76, 77, 70, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 77, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(86, 'Gayà', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 79, 'Valencia CF', 77, 82, 68, 78, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 78, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(87, 'Cristiano Piccini', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 78, 'Valencia CF', 73, 77, 71, 78, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RB', 71, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(88, 'Rúben Vezo', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 77, 'Valencia CF', 48, 69, 59, 74, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 73, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(89, 'Denis Cheryshev', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 77, 'Valencia CF', 51, 73, 66, 66, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 75, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(90, 'Mouctar Diakhaby', 2021, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 76, 'Valencia CF', 61, 75, 73, 48, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 75, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(91, 'Uroš Ra?i?', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 75, 'Valencia CF', 70, 67, 58, 74, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CDM', 68, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(92, 'Lato', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 75, 'Valencia CF', 69, 52, 39, 74, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 55, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(93, 'Ferrán Torres', 2019, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 73, 'Valencia CF', 76, 68, 72, 38, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'RM', 52, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(94, 'Nacho Gil', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 72, 'Valencia CF', 56, 68, 57, 73, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LM', 68, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(95, 'Kangin Lee', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 70, 'Valencia CF', 75, 66, 49, 71, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CAM', 62, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(96, 'Javi Jiménez', 2023, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 65, 'Valencia CF', 81, 66, 61, 21, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'CB', 47, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1),
(97, 'Álex Centelles', 2022, '4dcee7f85df40fc71dcad450a6cbc55190e1253b', 64, 'Valencia CF', 79, 65, 64, 22, '32526d1d6e8be7be93c88ba8c14ec09d51784d1a', 'LB', 57, '9c469af18280250ae033c24c7fed1ca3e30d29ba', 'default.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `presidentes`
--

CREATE TABLE `presidentes` (
  `id_presidente` int(11) NOT NULL,
  `apellido_presidente` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `presidentes`
--

INSERT INTO `presidentes` (`id_presidente`, `apellido_presidente`) VALUES
(1, 'Josep Maria Bartomeu'),
(2, 'Florentino Pérez'),
(3, 'Enrique Cerezo'),
(4, 'Anil Murthy');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Index pour la table `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`);

--
-- Index pour la table `presidentes`
--
ALTER TABLE `presidentes`
  ADD PRIMARY KEY (`id_presidente`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT pour la table `presidentes`
--
ALTER TABLE `presidentes`
  MODIFY `id_presidente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;--
-- Base de données :  `fifa-fr`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(64) NOT NULL,
  `budget_equipe` text NOT NULL,
  `id_president` int(11) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`, `budget_equipe`, `id_president`, `crypt`) VALUES
(1, 'Olympique lyonnais', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 1, 1),
(2, 'Paris Saint-Germain', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 2, 1),
(3, 'OGC Nice', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 3, 1),
(4, 'AS Monaco', '6dd8450939ff9ec93b6875efc0c299d1323b48c9', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id_joueur` int(11) NOT NULL,
  `nom_joueur` varchar(64) NOT NULL,
  `date_fin_contrat` double NOT NULL,
  `prix_repture_contrat` text NOT NULL,
  `score_joueur` double NOT NULL,
  `equipe_joueur` varchar(64) NOT NULL,
  `vitesse_joueur` double NOT NULL,
  `dribbles_joueur` double NOT NULL,
  `tirs_joueur` double NOT NULL,
  `defense_joueur` double NOT NULL,
  `performance_physique` text NOT NULL,
  `position_joueur` varchar(64) NOT NULL,
  `passes_joueur` double NOT NULL,
  `salaire_joueur` text NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joueurs`
--

INSERT INTO `joueurs` (`id_joueur`, `nom_joueur`, `date_fin_contrat`, `prix_repture_contrat`, `score_joueur`, `equipe_joueur`, `vitesse_joueur`, `dribbles_joueur`, `tirs_joueur`, `defense_joueur`, `performance_physique`, `position_joueur`, `passes_joueur`, `salaire_joueur`, `crypt`) VALUES
(1, 'Neymar', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 92, 'Paris Saint-Germain', 92, 95, 84, 32, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 83, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(2, 'Edinson Cavani', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 89, 'Paris Saint-Germain', 86, 88, 86, 50, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 81, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(3, 'Thiago Silva', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 88, 'Paris Saint-Germain', 43, 78, 62, 85, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 79, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(4, 'Kylian Mbappé', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 87, 'Paris Saint-Germain', 82, 82, 87, 39, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(5, 'Marco Verratti', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 86, 'Paris Saint-Germain', 73, 89, 74, 67, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(6, 'Ángel Di María', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 84, 'Paris Saint-Germain', 78, 89, 72, 46, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 83, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(7, 'Marquinhos', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 84, 'Paris Saint-Germain', 90, 82, 81, 44, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 73, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(8, 'Julian Draxler', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 71, 59, 27, 83, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(9, 'Presnel Kimpembe', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 86, 86, 80, 39, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(10, 'Adrien Rabiot', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Paris Saint-Germain', 83, 81, 74, 77, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 80, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(11, 'Thomas Meunier', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 82, 'Paris Saint-Germain', 65, 65, 41, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(12, 'Dani Alves', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 82, 'Paris Saint-Germain', 89, 87, 75, 36, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(13, 'Lassana Diarra', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'Paris Saint-Germain', 73, 82, 80, 42, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(14, 'Layvin Kurzawa', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Paris Saint-Germain', 77, 78, 76, 33, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 69, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(15, 'Eric Maxim Choupo-Moting', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Paris Saint-Germain', 52, 71, 51, 77, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LM', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(16, 'Thilo Kehrer', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Paris Saint-Germain', 88, 80, 73, 31, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(17, 'Bernat', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 77, 77, 59, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(18, 'Jesé', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 69, 69, 66, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(19, 'Christopher Nkunku', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'Paris Saint-Germain', 70, 73, 75, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(20, 'Jean-Christophe Bahebeck', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'Paris Saint-Germain', 84, 76, 64, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 67, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(21, 'Timothy Weah', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'Paris Saint-Germain', 78, 62, 45, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(22, 'Moussa Diaby', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'Paris Saint-Germain', 68, 65, 55, 59, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(23, 'Yacine Adli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'Paris Saint-Germain', 71, 67, 54, 40, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(24, 'Alec Georgen', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'Paris Saint-Germain', 67, 65, 63, 45, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(25, 'Nabil Fekir', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 85, 'Olympique Lyonnais', 84, 85, 80, 60, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CAM', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(26, 'Memphis Depay', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'Olympique Lyonnais', 68, 86, 69, 54, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(27, 'Marcelo', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 81, 'Olympique Lyonnais', 65, 65, 49, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(28, 'Lucas Tousart', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 69, 76, 73, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 74, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(29, 'Rafael', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 70, 75, 78, 37, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(30, 'Bertrand Traoré', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'Olympique Lyonnais', 75, 72, 65, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(31, 'Kenny Tete', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 81, 82, 75, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 72, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(32, 'Tanguy Ndombele', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 84, 84, 62, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(33, 'Houssem Aouar', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'Olympique Lyonnais', 64, 70, 55, 79, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(34, 'Ferland Mendy', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 64, 70, 46, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(35, 'Léo Dubois', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 71, 75, 72, 58, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 77, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(36, 'Marçal', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 64, 76, 76, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(37, 'Jérémy Morel', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'Olympique Lyonnais', 67, 78, 67, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(38, 'Moussa Dembélé', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 73, 75, 69, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 74, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(39, 'Jordan Ferri', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 72, 78, 72, 28, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(40, 'Maxwel Cornet', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'Olympique Lyonnais', 79, 80, 64, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(41, 'Jason Denayer', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'Olympique Lyonnais', 63, 68, 73, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(42, 'Mapou Yanga-M''Biwa', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'Olympique Lyonnais', 44, 57, 43, 74, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 56, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(43, 'Martin Terrier', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'Olympique Lyonnais', 92, 77, 65, 51, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(44, 'Pape Cheikh Diop', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'Olympique Lyonnais', 64, 62, 65, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 67, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(45, 'Olivier Kemen', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'Olympique Lyonnais', 71, 65, 65, 67, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(46, 'Amine Gouiri', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'Olympique Lyonnais', 70, 65, 59, 29, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(47, 'Oumar Solet', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 62, 'Olympique Lyonnais', 69, 64, 60, 45, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(48, 'Reo Griffiths', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 61, 'Olympique Lyonnais', 69, 61, 51, 61, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 55, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(49, 'Yassin Fekir', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 60, 'Olympique Lyonnais', 74, 59, 32, 53, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LW', 49, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(50, 'Mario Balotelli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'OGC Nice', 69, 82, 73, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 79, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(51, 'Dante', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'OGC Nice', 38, 48, 49, 82, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(52, 'Allan Saint-Maximin', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'OGC Nice', 74, 80, 65, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 75, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(53, 'Wylan Cyprien', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'OGC Nice', 60, 76, 70, 69, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 76, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(54, 'Arnaud Souquet', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'OGC Nice', 68, 63, 30, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 52, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(55, 'Pierre Lees-Melou', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 77, 'OGC Nice', 80, 78, 64, 75, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(56, 'Danilo', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'OGC Nice', 89, 73, 70, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(57, 'Christophe Hérelle', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'OGC Nice', 83, 76, 77, 32, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(58, 'Christophe Jallet', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'OGC Nice', 33, 53, 38, 76, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 56, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(59, 'Malang Sarr', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'OGC Nice', 73, 72, 74, 25, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 48, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(60, 'Rémi Walter', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 78, 73, 67, 56, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(61, 'Adrien Tameze', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 77, 70, 69, 47, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(62, 'Bassem Srarfi', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 73, 'OGC Nice', 86, 74, 66, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(63, 'Mickaël Le Bihan', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'OGC Nice', 73, 74, 57, 62, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 70, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(64, 'Olivier Boscagli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 74, 68, 68, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(65, 'Patrick Burner', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 69, 55, 45, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(66, 'Ihsan Sacko', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 71, 'OGC Nice', 63, 69, 63, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(67, 'Youcef Atal', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'OGC Nice', 61, 63, 44, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(68, 'Racine Coly', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 79, 67, 67, 26, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(69, 'Myziane Maolida', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 77, 69, 65, 27, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 52, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(70, 'Jean-Victor Makengo', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 69, 'OGC Nice', 70, 65, 59, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 62, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(71, 'Ignatius Ganago', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'OGC Nice', 73, 69, 67, 45, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(72, 'Gautier Lloris', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 66, 'OGC Nice', 65, 56, 53, 64, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(73, 'Hicham Mahou', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'OGC Nice', 61, 54, 61, 57, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RW', 41, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(74, 'Falcao', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 85, 'AS Monaco', 83, 84, 81, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 84, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(75, 'Kamil Glik', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 83, 'AS Monaco', 86, 83, 75, 43, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 81, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(76, 'Rony Lopes', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 73, 81, 75, 38, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(77, 'Stevan Joveti?', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 70, 68, 47, 83, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(78, 'Djibril Sidibé', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 80, 'AS Monaco', 70, 79, 70, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 77, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(79, 'Alexandr Golovin', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 71, 76, 58, 78, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 68, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(80, 'Jemerson', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 48, 77, 55, 74, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 78, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(81, 'Youri Tielemans', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 79, 'AS Monaco', 66, 69, 46, 80, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 73, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(82, 'Nacer Chadli', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 78, 'AS Monaco', 48, 64, 75, 34, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LM', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(83, 'Jean-Eudes Aholou', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 76, 'AS Monaco', 70, 77, 78, 30, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 63, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(84, 'Antonio Barreca', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 72, 69, 77, 35, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 57, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(85, 'Youssef Aït Bennasser', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 55, 71, 73, 70, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CM', 71, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(86, 'Pelé', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 70, 64, 34, 75, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 58, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(87, 'Andrea Raggi', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 75, 'AS Monaco', 31, 54, 59, 71, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CB', 48, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(88, 'Almamy Touré', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 85, 68, 64, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 65, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(89, 'Samuel Grandsir', 2021, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 89, 75, 65, 46, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 71, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(90, 'Jorge', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 74, 'AS Monaco', 89, 72, 70, 41, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(91, 'Ronaël Pierre-Gabriel', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 72, 'AS Monaco', 65, 62, 40, 72, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RB', 60, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(92, 'Kévin N''Doram', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'AS Monaco', 80, 70, 35, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CDM', 66, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(93, 'Jordi Mboula', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 70, 'AS Monaco', 76, 68, 61, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'RM', 64, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(94, 'Pietro Pellegri', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 67, 'AS Monaco', 56, 51, 26, 65, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 37, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(95, 'Sofiane Diop', 2023, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'AS Monaco', 86, 68, 59, 30, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'CAM', 54, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(96, 'Moussa Sylla', 2022, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 65, 'AS Monaco', 77, 65, 61, 29, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(97, 'Willem Geubbels', 2019, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'AS Monaco', 45, 54, 53, 61, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'ST', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1),
(98, 'Julien Serrano', 2020, 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3', 64, 'AS Monaco', 44, 62, 43, 66, 'fbeff7287bb8d46577504b6c72d5ba3e5ac86548', 'LB', 61, '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7', 1);

-- --------------------------------------------------------

--
-- Structure de la table `presidents`
--

CREATE TABLE `presidents` (
  `id_president` int(11) NOT NULL,
  `nom_president` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `presidents`
--

INSERT INTO `presidents` (`id_president`, `nom_president`) VALUES
(1, 'Jean-Michel Aulas'),
(2, 'Nasser Al-Khelaïfi'),
(3, 'Jean-Pierre Rivère'),
(4, 'Dmitri Rybolovlev');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id_joueur`);

--
-- Index pour la table `presidents`
--
ALTER TABLE `presidents`
  ADD PRIMARY KEY (`id_president`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT pour la table `presidents`
--
ALTER TABLE `presidents`
  MODIFY `id_president` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;--
-- Base de données :  `fifa-uk`
--

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL,
  `name_player` varchar(64) NOT NULL,
  `date_end_contract` double NOT NULL,
  `price_breach_contract` text NOT NULL,
  `score_player` double NOT NULL,
  `team_player` varchar(64) NOT NULL,
  `speed_player` double NOT NULL,
  `dribbling_player` double NOT NULL,
  `shooting_player` double NOT NULL,
  `defense_player` double NOT NULL,
  `physical_performance` text NOT NULL,
  `position_player` varchar(64) NOT NULL,
  `passes_player` double NOT NULL,
  `salary_player` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `players`
--

INSERT INTO `players` (`id_player`, `name_player`, `date_end_contract`, `price_breach_contract`, `score_player`, `team_player`, `speed_player`, `dribbling_player`, `shooting_player`, `defense_player`, `physical_performance`, `position_player`, `passes_player`, `salary_player`, `pic`, `crypt`) VALUES
(1, 'Kevin De Bruyne', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 91, 'Manchester City', 80, 87, 90, 52, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(2, 'Sergio Agüero', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 89, 'Manchester City', 65, 73, 58, 90, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 76, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(3, 'David Silva', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 89, 'Manchester City', 69, 60, 46, 91, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 56, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(4, 'Leroy Sané', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Manchester City', 56, 76, 71, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LW', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(5, 'Fernandinho', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Manchester City', 81, 86, 86, 35, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 77, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(6, 'Nicolás Otamendi', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Manchester City', 78, 88, 76, 30, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 82, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(7, 'Raheem Sterling', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Manchester City', 73, 82, 68, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 83, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(8, 'Riyad Mahrez', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Manchester City', 73, 81, 81, 79, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 77, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(9, 'Vincent Kompany', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Manchester City', 85, 80, 71, 80, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 83, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(10, 'Bernardo Silva', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Manchester City', 72, 87, 70, 78, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 77, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(11, 'Kyle Walker', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Manchester City', 51, 65, 55, 86, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 70, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(12, '?lkay Gündo?an', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Manchester City', 67, 50, 41, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 52, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(13, 'Aymeric Laporte', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Manchester City', 70, 81, 74, 70, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 81, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(14, 'Gabriel Jesus', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Manchester City', 76, 80, 82, 59, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 80, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(15, 'John Stones', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Manchester City', 67, 80, 76, 67, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(16, 'Benjamin Mendy', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Manchester City', 68, 59, 47, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 55, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(17, 'Fabian Delph', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Manchester City', 71, 74, 40, 76, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 70, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(18, 'Danilo', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 79, 'Manchester City', 86, 82, 72, 34, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 73, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(19, 'Eliaquim Mangala', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 77, 'Manchester City', 69, 76, 65, 74, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 72, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(20, 'Douglas Luiz', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 73, 'Manchester City', 55, 66, 73, 39, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 59, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(21, 'Phil Foden', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 73, 'Manchester City', 71, 72, 67, 66, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(22, 'Oleksandr Zinchenko', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 71, 'Manchester City', 68, 66, 67, 68, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 63, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(23, 'Philippe Sandler', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 69, 'Manchester City', 76, 66, 45, 65, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 55, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(24, 'Brahim Díaz', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 69, 'Manchester City', 80, 67, 69, 44, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LW', 61, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(25, 'Claudio Gomes', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 66, 'Manchester City', 72, 63, 55, 65, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 61, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(26, 'Mohamed Salah', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 88, 'Liverpool', 84, 81, 88, 40, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 70, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(27, 'Roberto Firmino', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Liverpool', 86, 83, 80, 62, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CF', 80, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(28, 'Sadio Mané', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Liverpool', 67, 79, 74, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LW', 78, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(29, 'Virgil van Dijk', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Liverpool', 75, 82, 79, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 78, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(30, 'Fabinho', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Liverpool', 72, 82, 64, 69, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 84, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(31, 'Naby Keïta', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Liverpool', 70, 78, 77, 76, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(32, 'Jordan Henderson', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Liverpool', 73, 83, 71, 33, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 81, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(33, 'Georginio Wijnaldum', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Liverpool', 82, 76, 62, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 73, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(34, 'Adam Lallana', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 66, 80, 79, 70, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 78, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(35, 'Dejan Lovren', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 85, 78, 81, 43, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 75, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(36, 'James Milner', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 80, 73, 68, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 74, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(37, 'Xherdan Shaqiri', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 69, 56, 32, 82, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 62, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(38, 'Andrew Robertson', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 88, 64, 80, 42, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 61, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(39, 'Joel Matip', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Liverpool', 77, 84, 74, 66, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(40, 'Daniel Sturridge', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Liverpool', 78, 73, 70, 79, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(41, 'Nathaniel Clyne', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Liverpool', 79, 79, 78, 51, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 68, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(42, 'Alex Oxlade-Chamberlain', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Liverpool', 91, 84, 75, 34, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 72, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(43, 'Trent Alexander-Arnold', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 78, 'Liverpool', 68, 82, 68, 64, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 78, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(44, 'Divock Origi', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 77, 'Liverpool', 62, 50, 52, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 48, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(45, 'Alberto Moreno', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 77, 'Liverpool', 72, 72, 64, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 67, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(46, 'Joe Gomez', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 76, 'Liverpool', 79, 77, 69, 72, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(47, 'Lazar Markovi?', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 74, 'Liverpool', 61, 71, 68, 55, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RM', 77, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(48, 'Dominic Solanke', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 70, 'Liverpool', 78, 70, 70, 44, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 66, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(49, 'Pedro Chirivella', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 66, 'Liverpool', 65, 65, 50, 64, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 65, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(50, 'Rhian Brewster', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 62, 'Liverpool', 74, 61, 41, 59, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 51, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(51, 'Harry Kane', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 89, 'Tottenham Hotspur', 85, 91, 85, 28, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 84, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(52, 'Christian Eriksen', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 88, 'Tottenham Hotspur', 92, 89, 84, 45, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(53, 'Jan Vertonghen', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 87, 'Tottenham Hotspur', 55, 66, 61, 87, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 69, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(54, 'Toby Alderweireld', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 85, 'Tottenham Hotspur', 72, 62, 41, 87, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 57, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(55, 'Moussa Dembélé', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Tottenham Hotspur', 86, 85, 85, 42, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 76, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(56, 'Davinson Sánchez', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Tottenham Hotspur', 83, 84, 80, 42, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 81, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(57, 'Heung Min Son', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Tottenham Hotspur', 68, 67, 41, 86, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LM', 60, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(58, 'Dele Alli', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Tottenham Hotspur', 77, 81, 76, 64, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 82, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(59, 'Lucas', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Tottenham Hotspur', 73, 79, 73, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RM', 76, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(60, 'Kieran Trippier', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Tottenham Hotspur', 71, 70, 47, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 68, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(61, 'Ben Davies', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Tottenham Hotspur', 88, 81, 64, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 77, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(62, 'Serge Aurier', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Tottenham Hotspur', 90, 86, 70, 30, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 75, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(63, 'Victor Wanyama', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Tottenham Hotspur', 69, 83, 69, 39, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 81, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(64, 'Eric Dier', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Tottenham Hotspur', 76, 79, 74, 62, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 81, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(65, 'Erik Lamela', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 80, 'Tottenham Hotspur', 75, 77, 74, 73, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RM', 79, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(66, 'Llorente', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 77, 'Tottenham Hotspur', 62, 68, 75, 36, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 56, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(67, 'Vincent Janssen', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 76, 'Tottenham Hotspur', 72, 78, 77, 48, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(68, 'Moussa Sissoko', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 76, 'Tottenham Hotspur', 64, 65, 40, 74, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 62, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(69, 'Harry Winks', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 75, 'Tottenham Hotspur', 87, 74, 75, 36, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 67, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(70, 'Josh Onomah', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 71, 'Tottenham Hotspur', 86, 73, 65, 55, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 68, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(71, 'Juan Foyth', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 70, 'Tottenham Hotspur', 63, 56, 27, 72, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 57, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(72, 'Kyle Walker-Peters', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 69, 'Tottenham Hotspur', 79, 70, 68, 25, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 62, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(73, 'Luke Amos', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 65, 'Tottenham Hotspur', 54, 49, 58, 65, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 51, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(74, 'Anthony Georgiou', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 62, 'Tottenham Hotspur', 71, 55, 61, 25, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LM', 42, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(75, 'Shayon Harrison', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 61, 'Tottenham Hotspur', 43, 51, 24, 57, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 44, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(76, 'Eden Hazard', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 91, 'Chelsea', 77, 85, 90, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LW', 90, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(77, 'Eden Hazard', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 91, 'Chelsea', 76, 85, 85, 77, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LW', 90, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(78, 'N''Golo Kanté', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 89, 'Chelsea', 84, 89, 89, 28, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CDM', 76, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(79, 'Azpilicueta', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 86, 'Chelsea', 68, 62, 51, 85, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 57, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(80, 'Jorginho', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Chelsea', 81, 84, 82, 40, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 72, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(81, 'Cesc Fàbregas', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Chelsea', 68, 65, 34, 89, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 57, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(82, 'Willian', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 84, 'Chelsea', 68, 84, 74, 69, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 83, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(83, 'Mateo Kova?i?', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Chelsea', 77, 68, 39, 82, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 67, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(84, 'David Luiz', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Chelsea', 79, 79, 84, 24, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 73, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(85, 'Morata', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 83, 'Chelsea', 81, 84, 72, 41, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 80, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(86, 'Olivier Giroud', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Chelsea', 73, 67, 35, 83, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 59, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(87, 'Andreas Christensen', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Chelsea', 69, 86, 73, 59, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 83, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(88, 'Pedro', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Chelsea', 60, 61, 53, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 54, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(89, 'Marcos Alonso', 2021, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 82, 'Chelsea', 47, 69, 46, 81, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LB', 63, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(90, 'Antonio Rüdiger', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Chelsea', 52, 74, 47, 78, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(91, 'Gary Cahill', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 81, 'Chelsea', 80, 85, 77, 46, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CB', 80, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(92, 'Marco van Ginkel', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 79, 'Chelsea', 76, 80, 64, 78, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 75, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(93, 'Ross Barkley', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 79, 'Chelsea', 62, 70, 61, 79, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CAM', 69, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(94, 'Davide Zappacosta', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 79, 'Chelsea', 67, 63, 39, 79, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RB', 59, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(95, 'Danny Drinkwater', 2023, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 79, 'Chelsea', 75, 79, 76, 54, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 74, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(96, 'Victor Moses', 2022, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 78, 'Chelsea', 66, 77, 63, 69, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 71, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(97, 'Ruben Loftus-Cheek', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 77, 'Chelsea', 84, 78, 72, 35, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'CM', 73, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(98, 'Emerson', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 76, 'Chelsea', 78, 80, 76, 39, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'LWB', 70, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(99, 'Tammy Abraham', 2019, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 74, 'Chelsea', 84, 77, 72, 40, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'ST', 65, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1),
(100, 'Lucas Piazon', 2020, '5d6e6f3a5da1a3fdb44c17291d25bf43816fd040', 72, 'Chelsea', 67, 68, 71, 32, 'b77da9422330fead9ab9ec32fbbd59bb9d5fc19a', 'RW', 61, 'c2aab356aa0b7989757bc4ffc8fc21b28caad1a5', 'default.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `president`
--

CREATE TABLE `president` (
  `id_president` int(11) NOT NULL,
  `name_president` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `president`
--

INSERT INTO `president` (`id_president`, `name_president`) VALUES
(1, 'Khaldoon Al Mubarak'),
(2, 'Tom Werner'),
(3, 'Daniel Levy'),
(4, 'Bruce Buck');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id_team` int(11) NOT NULL,
  `name_team` varchar(64) NOT NULL,
  `budget_team` text NOT NULL,
  `id_president` int(11) NOT NULL,
  `crypt` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `team`
--

INSERT INTO `team` (`id_team`, `name_team`, `budget_team`, `id_president`, `crypt`) VALUES
(1, 'Manchester City', '0b6d5e49834dbbb0d35de0282c57184c595a5d5c', 1, 1),
(2, 'Liverpool FC', '0b6d5e49834dbbb0d35de0282c57184c595a5d5c', 2, 1),
(3, 'Tottenham', '0b6d5e49834dbbb0d35de0282c57184c595a5d5c', 3, 1),
(4, 'Chelsea', '0b6d5e49834dbbb0d35de0282c57184c595a5d5c', 4, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id_player`);

--
-- Index pour la table `president`
--
ALTER TABLE `president`
  ADD PRIMARY KEY (`id_president`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `players`
--
ALTER TABLE `players`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `president`
--
ALTER TABLE `president`
  MODIFY `id_president` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;