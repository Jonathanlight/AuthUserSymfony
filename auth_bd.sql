-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 26 Juillet 2016 à 12:10
-- Version du serveur :  5.6.28-0ubuntu0.15.04.1
-- Version de PHP :  5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `auth_bd`
--
CREATE DATABASE IF NOT EXISTS `auth_bd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `auth_bd`;

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `data`
--

INSERT INTO `data` (`id`, `name`, `cp`) VALUES
(1, 'pqngolin', '1542'),
(2, 'Clementine', '8547'),
(3, 'Ananas', '1542'),
(4, 'orangess', '8547'),
(5, 'Cerise', '4587'),
(6, 'raisin', '9998'),
(7, 'Banane', '4587'),
(8, 'Figue', '9998');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `roles`) VALUES
(2, 'toto', '$2y$13$SJwwag7YQx9r6gwEkq2CI.cDhQq.8Z3VIfzd4VtVYMF7pn9ZmUhp.', 'toto@toto.fr', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(3, 'johnlight', '$2y$13$FKT7f94giRqgf7LfSZTEyuVRH5yJGGdhJonYTJ3Q5l.pCJcHqnG2q', 'light@lifv', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(6, 'johnlights', '$2y$13$Rirp2B3ID.73rSrC22y9d.tYJsDLTLOQiE3vXoBqeN/MMDr8dh5c.', 'light@live.fr', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(7, 'uloot', '$2y$13$Xam7Nc6k7nJ0f/hO4TY5fuwXBn6yJbKytoBJrRtxnj8Ej/U1x28em', 'uloot@gmail.com', 'a:1:{i:0;s:9:"ROLE_USER";}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `data`
--
ALTER TABLE `data`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `data`
--
ALTER TABLE `data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
