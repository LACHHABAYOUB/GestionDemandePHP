-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 16 jan. 2018 à 17:47
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mundiademande`
--

-- --------------------------------------------------------

--
-- Structure de la table `action_demande`
--

CREATE TABLE `action_demande` (
  `id` int(11) NOT NULL,
  `id_demande` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date_action` datetime NOT NULL,
  `id_etat` int(11) NOT NULL,
  `action` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `prix`, `description`) VALUES
(1, 100, 'article1'),
(2, 200, 'article2'),
(3, 150, 'article3'),
(4, 400, 'article4');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `date_creation` date NOT NULL,
  `id_departement` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `commentaire` text,
  `devis1` varchar(255) DEFAULT NULL,
  `devis2` varchar(255) DEFAULT NULL,
  `devis3` varchar(255) DEFAULT NULL,
  `note_presentation` text,
  `fournisseur` varchar(60) DEFAULT NULL,
  `periode` int(11) NOT NULL,
  `type_conge` varchar(60) DEFAULT NULL,
  `raison_conge` varchar(255) NOT NULL,
  `interim` varchar(255) NOT NULL,
  `local_reservation` varchar(50) NOT NULL,
  `materiel_reservation` varchar(50) NOT NULL,
  `date_evenement` date NOT NULL,
  `debut_evenement` time DEFAULT NULL,
  `fin_evenement` time DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `montant_total` double NOT NULL,
  `bond_commande` varchar(255) DEFAULT NULL,
  `num_bond_achat` varchar(60) DEFAULT NULL,
  `bond_livraison` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_achat`
--

CREATE TABLE `demande_achat` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_Creation` date NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `devis1` varchar(200) NOT NULL,
  `devis2` varchar(200) NOT NULL,
  `devis3` varchar(200) NOT NULL,
  `note_presentation` varchar(200) NOT NULL,
  `fournisseur` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_achat`
--

INSERT INTO `demande_achat` (`id`, `id_demandeur`, `id_departement`, `email`, `date_Creation`, `id_type`, `id_etat`, `id_intervenant`, `devis1`, `devis2`, `devis3`, `note_presentation`, `fournisseur`) VALUES
(1, 1, 1, 'h.setti@mundiapolis.ma', '2017-12-24', 2, 1, 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `demande_conges`
--

CREATE TABLE `demande_conges` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `date_creation` date NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `type_conges` varchar(50) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `raison` varchar(50) NOT NULL,
  `interim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_it`
--

CREATE TABLE `demande_it` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `date_creation` date NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `equipement` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_reservation`
--

CREATE TABLE `demande_reservation` (
  `id` int(11) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `date_creation` date NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `lieu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_scolarite`
--

CREATE TABLE `demande_scolarite` (
  `id` int(11) NOT NULL,
  `id_demandeur` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date_creation` date NOT NULL,
  `id_departement` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `titre` varchar(60) NOT NULL,
  `commentaire` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_scolarite`
--

INSERT INTO `demande_scolarite` (`id`, `id_demandeur`, `email`, `date_creation`, `id_departement`, `id_type`, `id_etat`, `id_intervenant`, `titre`, `commentaire`) VALUES
(13, 1, '', '2017-12-11', 2, 1, 3, 1, 'Attestation de scolaritÃ©', 'n;'),
(14, 1, '', '2017-12-11', 2, 1, 3, 1, 'Attestation de scolaritÃ©', ''),
(16, 2, 'h.setti@mundiapolis.ma', '2017-12-24', 2, 1, 3, 3, 'Attestation de scolaritÃ©', 'hgkh'),
(17, 2, 'h.setti@mundiapolis.ma', '2017-12-24', 2, 1, 3, 3, 'Attestation de scolaritÃ©', 'hikj');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `nom`) VALUES
(1, 'Ecole d\'ingénierie'),
(2, 'Business school'),
(3, 'Faculté des sciences de la santé'),
(4, 'Faculté des sciences politiques');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE `equipement` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `etape` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `id_type`, `etape`, `profile`) VALUES
(3, 1, '1', 'service recouvrement'),
(4, 1, '2', 'service scolarité'),
(5, 4, '1', 'service it'),
(7, 3, '1', 'superieur'),
(8, 3, '2', 'Directeur RH'),
(9, 5, '1', 'Responsable d’achat et logistique'),
(10, 2, '1', 'superieur'),
(11, 2, '2', 'Responsable d’achat et logistique'),
(12, 2, '3', 'Contrôleur de gestion'),
(13, 2, '4', 'Directeur financier'),
(14, 2, '5', 'Président'),
(15, 2, '6', 'Directeur financier'),
(16, 2, '7', 'Responsable d’achat et logistique');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `cne` int(11) NOT NULL,
  `id_filiere` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `cne`, `id_filiere`, `nom`, `prenom`, `email`, `classe`) VALUES
(3, 2365, 1, 'CHIBANI', 'MOHAMED', 'm.chibani@mundiapolis.ma', 1),
(4, 2456, 1, 'SETTI', 'HATIM', 'h.setti@mundiapolis.ma', 1);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `chef_filiere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_demande`
--

CREATE TABLE `ligne_demande` (
  `id_demande` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `observation` varchar(200) NOT NULL,
  `description_article` varchar(255) NOT NULL,
  `prix_article` double NOT NULL,
  `montant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne_demande`
--

INSERT INTO `ligne_demande` (`id_demande`, `quantite`, `observation`, `description_article`, `prix_article`, `montant`) VALUES
(65, 67, 'achat', 'artcile1', 666, 44622),
(66, 67, 'hahah', 'hgjh', 66, 4422),
(68, 67, 'achat', 'article1', 666, 44622),
(69, 99, 'hahah', 'chat', 99, 9801),
(71, 10, 'Article1', 'Article1', 100, 1000),
(71, 7, 'Article2', 'Article2', 900, 6300),
(72, 78, 'achat', 'article1', 777, 60606),
(72, 78, 'achat', 'article2', 777, 60606),
(73, 77, 'achat', 'arcticle1', 777, 59829),
(74, 67, 'achat', 'artcile1', 6666, 446622),
(75, 67, 'achat', 'artcile1', 6666, 446622),
(84, 67, 'achat', 'article1', 666, 44622),
(85, 588, 'achat', 'article1', 1999, 1175412);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_equipement`
--

CREATE TABLE `ligne_equipement` (
  `id` int(11) NOT NULL,
  `id_equipement` int(11) NOT NULL,
  `id_demande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profile`
--

INSERT INTO `profile` (`id`, `nom`) VALUES
(1, 'service recouvrement'),
(2, 'service scolarité'),
(3, 'service it'),
(6, 'professeur'),
(7, 'Directeur RH'),
(8, 'Responsable d’achat et logistique'),
(9, 'Contrôleur de gestion'),
(10, 'Directeur financier'),
(11, 'Président');

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_profile` int(11) NOT NULL,
  `solde_conges` int(11) DEFAULT NULL,
  `id_superieur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`id`, `nom`, `prenom`, `email`, `id_profile`, `solde_conges`, `id_superieur`) VALUES
(3, 'RACHID', 'AKOUTAB', 's.drhmundia@gmail.com', 7, 20, 16),
(6, 'ANAS', 'IT', 'serviceitmundia@gmail.com', 3, 10, 16),
(7, 'DOUNIA', 'BELOUALI', 's.scolaritem@gmail.com', 2, 20, 16),
(8, 'HAJIBA', 'KHALIDI', 's.recouvre@gmail.com', 1, 20, 16),
(9, 'SETTI', 'HATIM', 'hatim.setti@gmail.com', 6, 15, 16),
(10, 'DIHAJI', 'BOUCHRA', 'bouchra.dihaji2017@gmail.com', 6, 20, 16),
(11, 'IMANE', 'OUAKRIM', 's.achatlog@gmail.com', 8, 16, 16),
(12, 'CONTROLE', 'GESTION', 's.controlem@gmail.com', 9, 20, 16),
(13, 'DIRECTEUR', 'FINANCIER', 's.dfmundia@gmail.com', 10, 20, 16),
(14, 'AMINE', 'BENSAID', 'presidentmundia@gmail.com', 11, 20, NULL),
(16, 'SUPERIEUR', 'MUNDIA', 'sup.mundia@gmail.com', 6, 20, 14),
(17, 'PROFESSEUR', 'MUNDIA', 'prof.mundia@gmail.com', 6, 20, 16);

-- --------------------------------------------------------

--
-- Structure de la table `type_demande`
--

CREATE TABLE `type_demande` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_demande`
--

INSERT INTO `type_demande` (`id`, `nom`) VALUES
(1, 'demande_scolarite'),
(2, 'demande_achat'),
(3, 'demande_conge'),
(4, 'demande_it'),
(5, 'demande_reservation');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `action_demande`
--
ALTER TABLE `action_demande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demande_achat`
--
ALTER TABLE `demande_achat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demande_conges`
--
ALTER TABLE `demande_conges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_Demandeur` (`id_demandeur`);

--
-- Index pour la table `demande_it`
--
ALTER TABLE `demande_it`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_Demandeur` (`id_departement`);

--
-- Index pour la table `demande_reservation`
--
ALTER TABLE `demande_reservation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_Demandeur` (`id_demandeur`);

--
-- Index pour la table `demande_scolarite`
--
ALTER TABLE `demande_scolarite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_departement` (`id_departement`);

--
-- Index pour la table `ligne_equipement`
--
ALTER TABLE `ligne_equipement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_demande`
--
ALTER TABLE `type_demande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `action_demande`
--
ALTER TABLE `action_demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `demande_achat`
--
ALTER TABLE `demande_achat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `demande_conges`
--
ALTER TABLE `demande_conges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_it`
--
ALTER TABLE `demande_it`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_reservation`
--
ALTER TABLE `demande_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_scolarite`
--
ALTER TABLE `demande_scolarite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `equipement`
--
ALTER TABLE `equipement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ligne_equipement`
--
ALTER TABLE `ligne_equipement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `type_demande`
--
ALTER TABLE `type_demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
