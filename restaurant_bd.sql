-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 23 déc. 2019 à 19:52
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `nom_p` varchar(30) NOT NULL,
  `tele` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`nom_p`, `tele`, `date`) VALUES
('mohamed ali', 22816458, '2005-06-01');

-- --------------------------------------------------------

--
-- Structure de la table `jours`
--

CREATE TABLE `jours` (
  `id_jours` int(11) NOT NULL,
  `nom_jours` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jours`
--

INSERT INTO `jours` (`id_jours`, `nom_jours`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Structure de la table `menu_de_jours`
--

CREATE TABLE `menu_de_jours` (
  `id_jours` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `menu_de_jours`
--

INSERT INTO `menu_de_jours` (`id_jours`, `id_plat`) VALUES
(1, 14),
(1, 7),
(1, 3),
(1, 9),
(2, 2),
(2, 6),
(2, 11),
(2, 12),
(3, 1),
(3, 9),
(3, 3),
(3, 11),
(4, 6),
(4, 8),
(4, 3),
(4, 13),
(5, 10),
(5, 6),
(5, 4),
(5, 12),
(6, 12),
(6, 2),
(6, 1),
(6, 4),
(7, 1),
(7, 5),
(7, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id_plat` int(11) NOT NULL,
  `nom_plat` varchar(20) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id_plat`, `nom_plat`, `prix`) VALUES
(1, 'soup', 5),
(2, 'riz', 10),
(3, 'couscous', 15),
(4, 'brik', 2),
(5, 'omelette', 6),
(6, 'steak', 20),
(7, 'poisson_gille', 12),
(8, 'escalope_grille', 12),
(9, 'gateaux', 5),
(10, 'jus', 7),
(11, 'pizza', 13),
(12, 'sushi', 25),
(13, 'ega', 7),
(14, 'macaroni_tunisienne', 10);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `nom_p` varchar(30) NOT NULL,
  `tele` int(8) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`nom_p`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id_plat`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`nom_p`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
