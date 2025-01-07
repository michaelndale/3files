-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 07 jan. 2025 à 13:39
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `elearning`
--

-- --------------------------------------------------------

--
-- Structure de la table `annees`
--

CREATE TABLE `annees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `statut` varchar(255) NOT NULL DEFAULT 'ACTIF',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annees`
--

INSERT INTO `annees` (`id`, `libelle`, `date_debut`, `date_fin`, `statut`, `created_at`, `updated_at`) VALUES
(1, '2024-2025', '2024-10-01', '2024-10-01', 'ACTIF', '2024-10-27 09:22:06', '2024-10-27 09:22:06'),
(2, '2023-2024', '2024-10-27', '2024-10-27', 'INACTIF', '2024-10-27 09:22:36', '2024-10-27 09:22:36');

-- --------------------------------------------------------

--
-- Structure de la table `bibliotheques`
--

CREATE TABLE `bibliotheques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(1000) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `document` varchar(1000) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bibliotheques`
--

INSERT INTO `bibliotheques` (`id`, `titre`, `photo`, `document`, `description`, `slug`, `etudiant_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Creation de l\'application de gestion de stock cas ONATEL', 'images/bibliotheque/1730487853.png', 'document/bibliotheque/1730487853.pdf', 'General-purpose assistant bot. For queries requiring up-to-date information, it can access real-time data from the web for more accurate answers.', 'creation-de-lapplication-de-gestion-de-stock-cas-onatel', 11, '2024-11-01 18:04:13', '2024-12-08 05:37:27', 'public'),
(2, 'RAPPORT DE STAGE SUR FAISCEAU HERTZIEN', 'images/bibliotheque/1730487950.png', 'document/bibliotheque/1730487950.pdf', 'General-purpose assistant bot. For queries requiring up-to-date information, it can access real-time data from the web for more accurate answers.', 'rapport-de-stage-sur-faisceau-hertzien', 12, '2024-11-01 18:05:50', '2024-11-02 07:03:50', 'public'),
(3, 'E-LEARNING', 'images/bibliotheque/1730536411.jpg', 'document/bibliotheque/1730536411.pdf', 'Cette application consiste a creer une gestion  nbjdhcdc', 'e-learning', 14, '2024-11-02 07:33:31', '2024-12-08 05:37:51', 'prive'),
(6, 'La téléphonie mobile', 'images/bibliotheque/1733636588.jpg', 'document/bibliotheque/1733636588.pdf', 'la téléphonie mobile peut être une excellente idée pour retracer l\'évolution de cette technologie révolutionnaire, explorer ses impacts sociaux, économiques, et techniques, et partager vos propres expériences ou analyses sur le sujet. Voici quelques idées et lignes directrices pour concevoir un tel projet.', 'la-telephonie-mobile', 14, '2024-12-08 03:43:09', '2024-12-08 03:43:09', 'public'),
(7, 'L’intelligence artificielle (IA)', 'images/bibliotheque/1733636695.jpg', 'document/bibliotheque/1733636695.pdf', 'L’intelligence artificielle (IA) est l’un des domaines les plus passionnants et en pleine évolution de notre époque. Voici un aperçu complet pour mieux comprendre ses concepts, ses applications et ses enjeux.', 'lintelligence-artificielle-ia', 22, '2024-12-08 03:44:55', '2024-12-08 03:44:55', 'public');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(1000) NOT NULL,
  `photo` varchar(1000) NOT NULL DEFAULT 'cover.png',
  `description` longtext NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `courte` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `titre`, `photo`, `description`, `slug`, `courte`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'La Danse Traditionnelle Burundaise', '1732372290.webp', 'La danse fait partie intégrante de la culture burundaise, souvent pratiquée lors de festivals et événements culturels. Les danseurs, vêtus de costumes traditionnels colorés, exécutent des mouvements dynamiques qui célèbrent l\'héritage musical du pays. La joie et l\'énergie de ces performances sont un reflet puissant de l\'esprit communautaire et de la richesse culturelle du Burundi.', 'la-danse-traditionnelle-burundaise', 'La danse fait partie intégrante de la culture burundaise, souvent pratiquée lors de festivals et événements culturels.', 40, '2024-11-23 06:24:13', '2024-11-23 12:31:30'),
(3, 'La Danse Traditionnelle Burundaise', '1732350378.webp', 'La danse fait partie intégrante de la culture burundaise, souvent pratiquée lors de festivals et événements culturels. Les danseurs, vêtus de costumes traditionnels colorés, exécutent des mouvements dynamiques qui célèbrent l\'héritage musical du pays. La joie et l\'énergie de ces performances sont un reflet puissant de l\'esprit communautaire et de la richesse culturelle du Burundi.', 'la-danse-traditionnelle-burundaise', 'La danse fait partie intégrante de la culture burundaise,', 40, '2024-11-23 06:26:18', '2024-11-23 06:26:18'),
(4, 'Le Marché Vivant de Bujumbura', '1732351365.webp', 'Les marchés de Bujumbura, aujourd\'hui renommée Gitega, sont des lieux vibrants où l\'on trouve une variété incroyable de produits locaux. Fruits, légumes, épices et tissus colorés sont proposés par les commerçants. Cette atmosphère animée reflète l\'hospitalité chaleureuse et la diversité culturelle du Burundi.', 'le-marche-vivant-de-bujumbura', 'Les marchés de Bujumbura, aujourd\'hui renommée Gitega, sont des lieux vibrants', 40, '2024-11-23 06:42:45', '2024-11-23 06:42:45'),
(5, 'Attelieu de formation sur l\'intelleligence artificielle', '1733639854.jpg', 'L’intelligence artificielle (IA) est l’un des domaines les plus passionnants et en pleine évolution de notre époque. Voici un aperçu complet pour mieux comprendre ses concepts, ses applications et ses enjeux.', 'attelieu-de-formation-sur-lintelleligence-artificielle', 'L’intelligence artificielle (IA) est l’un des domaines les plus passionnants et en pleine évolution de notre époque. Voici un aperçu complet pour mieux comprendre ses concepts, ses applications et ses enjeux.', 40, '2024-12-08 04:37:34', '2024-12-08 04:37:34');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `choixes`
--

CREATE TABLE `choixes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `choixes`
--

INSERT INTO `choixes` (`id`, `question_id`, `titre`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pierre Nkurunziza', 1, '2024-11-05 17:25:17', '2024-11-05 17:25:17'),
(2, 1, 'Ndayishimiye Evariste', 0, '2024-11-05 17:25:17', '2024-11-05 17:25:17'),
(3, 1, 'Pierre Buyoya', 0, '2024-11-05 17:25:17', '2024-11-05 17:25:17'),
(4, 2, 'Europe', 0, '2024-11-05 17:44:54', '2024-11-05 17:44:54'),
(5, 2, 'Asie', 0, '2024-11-05 17:44:54', '2024-11-05 17:44:54'),
(6, 2, 'Amerique', 0, '2024-11-05 17:44:54', '2024-11-05 17:44:54'),
(7, 2, 'Afrique', 1, '2024-11-05 17:44:54', '2024-11-05 17:44:54'),
(8, 2, 'Océanie', 0, '2024-11-05 17:44:54', '2024-11-05 17:44:54');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculte_id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `faculte_id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 2, 'BAC I', '2024-10-26 08:45:57', '2024-10-26 08:45:57'),
(4, 2, 'BAC II', '2024-10-26 08:46:27', '2024-10-26 08:46:27'),
(5, 5, 'BAC I', '2024-10-27 07:40:30', '2024-10-27 07:40:30'),
(6, 6, 'BAC I', '2024-10-27 08:54:11', '2024-10-27 08:54:11'),
(7, 6, 'BAC II', '2024-10-27 08:54:20', '2024-10-27 08:54:20'),
(8, 6, 'BAC III', '2024-10-27 08:54:37', '2024-10-27 08:54:37'),
(9, 6, 'Terminer', '2024-10-27 08:54:47', '2024-11-03 09:44:23'),
(10, 3, 'BAC I', '2024-10-27 09:56:20', '2024-10-27 09:56:20'),
(11, 3, 'BAC II', '2024-10-27 09:56:25', '2024-10-27 09:56:25'),
(12, 3, 'BAC III', '2024-10-27 09:56:30', '2024-10-27 09:56:30'),
(13, 2, 'BAC III', '2024-11-03 09:41:34', '2024-11-03 09:42:04'),
(14, 2, 'Terminer', '2024-11-03 09:42:28', '2024-11-03 09:42:28'),
(15, 3, 'Terminer', '2024-11-03 09:42:50', '2024-11-03 09:42:50');

-- --------------------------------------------------------

--
-- Structure de la table `contenu_cours`
--

CREATE TABLE `contenu_cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `document point` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL DEFAULT 'url_image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `pondelation` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `volume`, `pondelation`, `description`, `created_at`, `updated_at`, `slug`, `status`) VALUES
(1, 'MYSQL', '240', '20', 'Cours sur la gestions des données relationnel', '2024-10-27 07:26:49', '2025-01-06 07:48:13', 'mysql', 'ACTIF'),
(2, 'HTML & CSS', '60', '2', 'Cours de création de site web', '2024-10-27 07:29:48', '2024-10-27 07:29:48', 'html-css', 'ACTIF'),
(3, 'Téléphonie Mobile', '60', '2', 'Cours de téléphonie mobile', '2024-10-27 07:30:53', '2024-10-27 07:30:53', 'telephonie-mobile', 'ACTIF'),
(4, 'Réseau Informatique', '120', '5', 'Cours sur le réseau informatique', '2024-10-27 07:32:04', '2024-10-27 07:32:04', 'reseau-inforamatique', 'ACTIF'),
(5, 'PHP', '120', '10', 'Cours sur la programmation oriente obget', '2024-10-27 07:32:57', '2024-10-27 07:32:57', 'php', 'ACTIF'),
(6, 'Javascript', '120', '3', 'Cours dur la progration oprtiente objet', '2024-10-27 07:33:22', '2024-10-27 07:33:22', 'javascript', 'ACTIF'),
(7, 'Fibre Octique', '60', '3', 'Cours sur le Fo', '2024-10-27 07:33:50', '2024-10-27 07:33:50', 'fibre-optique', 'ACTIF'),
(8, 'Faisceaux Hertziens', '60', '4', 'Cours sur les antennes', '2024-10-27 07:35:06', '2025-01-06 07:49:41', 'faisceaux-hertziens', 'BLOQUE'),
(9, 'ELECTRICITE', '120', '2', 'Cours sur les electricites', '2024-10-27 07:35:47', '2024-10-27 07:35:47', 'electricite', 'ACTIF'),
(10, 'Electronique', '120', '12', 'Cours sur l\'electroinique', '2024-10-27 07:36:37', '2024-10-27 07:36:37', 'electronique', 'ACTIF'),
(11, 'ALGORITHME', '120', '10', 'COURS DE PROGRAMMATION', '2024-10-27 09:57:56', '2024-11-22 23:56:01', 'algorithme', 'ACTIF'),
(12, 'Programmation C', '120', '6', 'Cours de programmation statique', '2024-11-01 15:08:02', '2024-11-01 15:08:02', 'programmation-c', 'ACTIF'),
(13, 'C++', '60', '4', 'visual basique', '2024-11-01 15:09:07', '2024-11-01 15:09:07', 'c++', 'ACTIF');

-- --------------------------------------------------------

--
-- Structure de la table `dispenser_cours`
--

CREATE TABLE `dispenser_cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dispenser_cours`
--

INSERT INTO `dispenser_cours` (`id`, `user_id`, `cours_id`, `created_at`, `updated_at`) VALUES
(1, 60, 2, '2024-11-01 15:57:21', '2024-11-01 15:57:21'),
(2, 60, 3, '2024-11-01 16:10:13', '2024-11-01 16:10:13'),
(3, 40, 1, '2024-11-11 02:34:43', '2024-11-11 02:34:43'),
(4, 52, 4, '2024-11-11 02:44:06', '2024-11-11 02:44:06'),
(6, 60, 5, '2024-12-08 05:27:45', '2024-12-08 05:27:45'),
(7, 40, 8, '2024-12-08 05:29:00', '2024-12-08 05:29:00');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `dateNais` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `piece` varchar(255) DEFAULT NULL,
  `diplomeDetat` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `lettre` varchar(255) DEFAULT NULL,
  `dateEnregitre` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `sexe`, `dateNais`, `adresse`, `nationalite`, `tel`, `piece`, `diplomeDetat`, `cv`, `lettre`, `dateEnregitre`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Pascasie', 'HAKIZIMANA', 'Femme', '2024-10-31', 'Bujumbura', 'Burundi', '6765432', NULL, NULL, NULL, NULL, '2024-10-31', 57, '2024-10-31 17:42:05', '2024-11-08 17:17:45'),
(12, 'Bucumi', 'Prospere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-31', 58, '2024-10-31 17:58:22', '2024-10-31 17:58:22'),
(14, 'NOELLA', 'MUSHOMBO', 'Femme', '2024-11-01', 'BUTERERE', 'Burundi', '23456789', 'document/carteidentite/1730540720.pdf', 'document/diplomeetat/1730538964.pdf', 'document/cv/1730538964.pdf', 'document/lettremotivation/1730538964.pdf', '2024-11-01', 61, '2024-11-01 17:11:03', '2024-11-02 08:45:20'),
(16, 'OMARI', 'MULISHO', 'Homme', '2024-11-24', NULL, 'RDC', NULL, 'images/carteidentite/1732449931.pdf', 'images/diplomeetat/1732449931.pdf', 'images/cv/1732449931.pdf', 'images/lettremotivation/1732449931.pdf', '2024-11-03', 63, '2024-11-03 09:45:36', '2024-11-24 10:08:59'),
(17, 'RUKUNDO', 'Njuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-05', 64, '2024-11-05 16:33:42', '2024-11-05 16:33:42'),
(18, 'NDIHOKUBWAYO', 'Jule', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-05', 65, '2024-11-05 16:37:26', '2024-11-05 16:37:26'),
(19, 'NKURUZIZA', 'Medart', 'Homme', '2024-11-28', 'Bujumbura', 'Burundais', '76767676', NULL, NULL, NULL, NULL, '2024-11-07', 66, '2024-11-07 16:22:35', '2024-11-07 17:35:51'),
(20, 'NKUZIMANA', 'Edouard', 'Homme', '2013-06-19', 'Gihosha', 'Burundi', '79876543', NULL, NULL, NULL, NULL, '2024-11-08', 67, '2024-11-08 17:01:36', '2024-11-08 17:01:36'),
(21, 'Albert', 'NDIZAYE', 'Homme', '2024-11-11', 'Bujumbura', 'Burundi', '9898589', NULL, NULL, NULL, NULL, '2024-11-11', 68, '2024-11-11 01:56:34', '2024-11-11 01:56:34'),
(22, 'ADOLPHINE', 'CHANCE', 'Femme', '2024-11-25', NULL, NULL, NULL, 'images/carteidentite/1733424893.pdf', 'images/diplomeetat/1733424893.pdf', 'images/cv/1733424893.pdf', 'images/lettremotivation/1733424893.pdf', '2024-11-24', 69, '2024-11-24 11:04:57', '2024-12-08 05:57:35'),
(23, 'ILANGA', 'REBECCA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-25', 70, '2024-11-25 03:45:48', '2024-11-25 03:45:48'),
(24, 'ANNE', 'MARIE', 'Femme', '2024-12-08', NULL, NULL, NULL, 'images/carteidentite/1733644982.pdf', NULL, NULL, NULL, '2024-12-08', 71, '2024-12-08 05:59:54', '2024-12-08 06:03:02');

-- --------------------------------------------------------

--
-- Structure de la table `examens`
--

CREATE TABLE `examens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `nombreQuestion` varchar(255) NOT NULL,
  `pointQuestion` varchar(255) NOT NULL,
  `dateexamen` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heuredebut` varchar(255) NOT NULL,
  `heurefin` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'BLOQUE',
  `titre` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `examens`
--

INSERT INTO `examens` (`id`, `cours_id`, `nombreQuestion`, `pointQuestion`, `dateexamen`, `created_at`, `updated_at`, `heuredebut`, `heurefin`, `status`, `titre`) VALUES
(1, 1, '10', '100', '2024-11-06', '2024-11-04 16:59:28', '2025-01-06 12:45:30', '08:00', '12:00', 'ACTIF', 'EXAMENS PREMIERE SESSION'),
(2, 1, '10', '100', '2024-11-04', '2024-11-04 17:04:21', '2025-01-06 12:28:20', '08:00', '09:00', 'ACTIF', 'EXAMENS PREMIERE SESSION'),
(3, 2, '5', '20', '2024-11-05', '2024-11-05 16:54:17', '2025-01-06 08:09:37', '21:00', '23:00', 'ACTIF', 'EXAMEN DE LA PREMIERE SESSION');

-- --------------------------------------------------------

--
-- Structure de la table `facturations`
--

CREATE TABLE `facturations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `montant` varchar(25) NOT NULL,
  `periode` varchar(150) NOT NULL,
  `annee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facturations`
--

INSERT INTO `facturations` (`id`, `libelle`, `montant`, `periode`, `annee_id`, `created_at`, `updated_at`) VALUES
(1, 'Frais d\'Imscription', '50000', '2024-11-23', 1, '2024-11-23 12:53:28', '2024-11-23 12:53:28'),
(2, 'Frais Premiere Tranche', '2500000', '2026-03-01', 1, '2024-11-23 12:54:59', '2024-11-23 12:54:59'),
(3, 'Frais deuxieme Transche', '2500000', '2025-06-23', 1, '2024-11-23 12:55:53', '2024-11-23 12:55:53'),
(4, 'Frais Troisieme Transche', '2500000', '2025-10-25', 1, '2024-11-23 12:56:49', '2024-11-23 12:56:49'),
(6, 'Frais de construction', '15000', '2024-12-01', 1, '2024-11-24 08:38:29', '2024-11-24 08:38:29'),
(7, 'Frais de sylabus', '50000', '2024-12-01', 1, '2024-11-24 08:39:21', '2024-11-24 08:39:21');

-- --------------------------------------------------------

--
-- Structure de la table `facultecours`
--

CREATE TABLE `facultecours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `annescolaire_id` bigint(20) UNSIGNED NOT NULL,
  `faculte_id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facultecours`
--

INSERT INTO `facultecours` (`id`, `cours_id`, `annescolaire_id`, `faculte_id`, `classe_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 5, 5, '2024-10-27 09:29:15', '2024-10-27 09:29:15'),
(4, 2, 1, 3, 10, '2024-10-27 09:56:40', '2024-10-27 09:56:40'),
(5, 4, 1, 3, 10, '2024-10-27 09:56:58', '2024-10-27 09:56:58'),
(6, 11, 1, 3, 10, '2024-10-27 09:58:14', '2024-10-27 09:58:14'),
(7, 2, 1, 5, 5, '2024-11-09 07:52:22', '2024-11-09 07:52:22'),
(8, 4, 1, 5, 5, '2024-11-09 07:52:40', '2024-11-09 07:52:40'),
(9, 6, 1, 5, 5, '2024-11-09 07:59:26', '2024-11-09 07:59:26'),
(10, 1, 1, 2, 1, '2024-11-11 03:39:30', '2024-11-11 03:39:30'),
(11, 2, 1, 5, 5, '2024-11-24 11:07:30', '2024-11-24 11:07:30'),
(12, 3, 1, 5, 5, '2024-11-24 11:07:43', '2024-11-24 11:07:43'),
(13, 5, 1, 5, 5, '2024-11-24 11:07:52', '2024-11-24 11:07:52'),
(14, 8, 1, 5, 5, '2024-11-24 11:07:59', '2024-11-24 11:07:59'),
(15, 2, 1, 2, 1, '2024-11-24 11:09:21', '2024-11-24 11:09:21'),
(16, 3, 1, 2, 1, '2024-11-24 11:09:32', '2024-11-24 11:09:32'),
(17, 5, 1, 2, 1, '2024-11-24 11:09:39', '2024-11-24 11:09:39'),
(18, 13, 1, 2, 1, '2024-11-24 12:06:40', '2024-11-24 12:06:40');

-- --------------------------------------------------------

--
-- Structure de la table `facultes`
--

CREATE TABLE `facultes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facultes`
--

INSERT INTO `facultes` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(2, 'GENI INFORMATIQUE', '2024-09-26 18:06:49', '2024-09-26 18:06:49'),
(3, 'TELECOMMUNICATION', '2024-09-26 18:07:09', '2024-09-26 18:07:09'),
(4, 'RESEAU INFORMATIQUE', '2024-09-26 18:07:31', '2024-09-26 18:07:31'),
(5, 'COMMERECE', '2024-10-27 07:40:10', '2024-10-27 07:40:10'),
(6, 'ENTREPRISE', '2024-10-27 08:51:33', '2024-10-27 08:51:33'),
(7, 'ELECTRONIQUE', '2024-11-11 03:05:36', '2024-11-11 03:05:36'),
(8, 'ELECTRICITE', '2024-11-11 03:07:44', '2024-11-11 03:07:44');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `fonctions`
--

CREATE TABLE `fonctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`id`, `titre`, `created_at`, `updated_at`) VALUES
(1, 'Directeur', '2024-09-22 10:53:32', '2024-09-22 10:53:32'),
(2, 'Rescteur', '2024-09-22 10:53:46', '2024-09-22 10:53:46'),
(3, 'Professeur', '2024-09-22 10:54:00', '2024-09-22 10:54:00'),
(5, 'Doyen', '2024-10-10 17:33:09', '2024-10-10 17:33:09'),
(7, 'ETUDIANT', '2024-10-20 08:15:59', '2024-10-20 08:15:59');

-- --------------------------------------------------------

--
-- Structure de la table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forums`
--

INSERT INTO `forums` (`id`, `titre`, `users_id`, `cours_id`, `question_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'c\'est quoi sql', 69, 1, 'Parle moi plus dur le fichier sql , comment ca fonctionne', 'pending', '2024-12-07 02:16:10', '2024-12-07 02:16:10'),
(2, 'Demande d\'entretiens', 69, 3, 'Bonjour à tous,\r\n\r\nJe suis à la recherche de développeur web avec lesquelles je pourrais échanger afin de pouvoir monter un dossier solide pour Transition Pro pour entamer une formation dans le développement.\r\n\r\nJe suis une femme de 29 ans qui ne s\'épanouit plus dans son métier actuel (ergothérapeute). J\'ai toujours été intéressé par le domaine de la santé et de l’informatique étant plus jeune et je me suis dirigée vers le premier.\r\nDans mon temps libre je travaille sur le codage en suivant des cours dispensés sur internet. Je sais que j’ai que la base mais je suis très motivée et je travaille tous les soirs et les week-ends sur le codage afin d’acquérir les bases.\r\n\r\nJ’ai échangé avec une conseillère afin de monter un dossier solide pour être validé par Transition Pro ; pour cela elle m’a conseillé de réaliser des entretiens avec des professionnels travaillant dans ce domaine afin d’appuyer ma demande et également m’aider à réaliser le « vrai » travail d’un développeur sur le terrain.\r\nCela pour également m’aider à me diriger vers les formations certifiantes adéquates.\r\n\r\nJe suis prête à échanger par téléphone, par mail, message ou même par une rencontre si vous êtes en Ile de France.\r\n\r\nMerci d’avance pour le temps que vous m’avez accordez.', 'pending', '2024-12-07 02:53:52', '2024-12-07 02:53:52'),
(3, 'c\'est quoi mysql', 69, 1, 'Ca nous aide a faire quoi', 'pending', '2024-12-07 12:39:01', '2024-12-07 12:39:01'),
(4, 'Merci d\'envoyer vos questions sur ces forum', 69, 13, 'Merci de nous nous aider a avoir l\'informations sur', 'pending', '2024-12-07 13:12:16', '2024-12-07 13:12:16'),
(5, 'J\'aimerais savoir c\'est la difference entre mysql et sql', 71, 1, 'donne moi plus de precision', 'pending', '2024-12-08 06:23:31', '2024-12-08 06:23:31'),
(6, 'c\'est l\'injection en mysql', 69, 1, 'c\'est quoi la difference entre des injestions et la syntaxe , comment ceci est elle utilser', 'pending', '2024-12-17 07:15:12', '2024-12-17 07:15:12');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_14_091953_create_fonctions_table', 2),
(5, '2024_09_14_092431_create_classes_table', 3),
(6, '2024_09_14_092806_create_facultes_table', 4),
(10, '2024_09_19_171913_create_dispense_cours_table', 7),
(13, '2024_09_19_225535_create_examens_table', 10),
(24, '2024_10_19_081450_create_facturation_controllers_table', 17),
(36, '2024_09_14_222436_create_annees_table', 18),
(37, '2024_09_16_200714_create_cours_table', 18),
(38, '2024_09_16_202512_create_contenu_cours_table', 18),
(39, '2024_09_19_221930_create_etudiants_table', 18),
(40, '2024_09_19_223617_create_user_etudiants_table', 18),
(41, '2024_09_20_163921_create_examens_table', 18),
(42, '2024_10_06_080135_create_blogs_table', 18),
(43, '2024_10_06_101546_create_bibliotheques_table', 18),
(44, '2024_10_08_185533_create_module_cours_table', 18),
(45, '2024_10_17_185337_create_dispenser_cours_table', 18),
(46, '2024_10_19_083527_create_facturations_table', 18),
(47, '2024_10_20_085711_create_personnels_table', 18),
(48, '2024_10_23_170139_create_facultecours_table', 18),
(49, '2024_10_23_182837_create_transite_faculte_etudiants_table', 18),
(50, '2024_10_27_081758_add_heure_to_cours_table', 19),
(51, '2024_10_27_082202_add_temps_to_module_cours_table', 20),
(52, '2024_10_31_183828_add_classeid_to_transite_faculte_etudiants_table', 21),
(53, '2024_11_02_073049_add_statut_to_bibliotheques_table', 22),
(54, '2024_11_03_115351_add_heuredebut_to_examens_table', 23),
(55, '2024_11_03_115800_create_questions_table', 24),
(56, '2024_11_03_120112_create_choixes_table', 25),
(57, '2024_11_03_120442_create_userreponses_table', 26),
(62, '2024_11_10_033118_create_resultats_table', 27),
(63, '2024_11_23_203851_create_payements_table', 27),
(64, '2024_11_24_091117_add_annee_id_to_facturations_table', 27),
(65, '2024_11_24_133802_add_slug_to_cours_table', 28),
(67, '2024_11_25_053704_add_status_to_payements_table', 29),
(68, '2024_12_07_023216_create_forums_table', 30),
(69, '2024_12_07_024117_create_reponse_forums_table', 31),
(70, '2024_12_07_040315_add_titre_to_forums_table', 32);

-- --------------------------------------------------------

--
-- Structure de la table `module_cours`
--

CREATE TABLE `module_cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(1000) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `url_pdf` varchar(1000) NOT NULL,
  `url_video` varchar(1000) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heure` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module_cours`
--

INSERT INTO `module_cours` (`id`, `cours_id`, `titre`, `description`, `slug`, `url_pdf`, `url_video`, `user_id`, `created_at`, `updated_at`, `heure`) VALUES
(2, 1, 'INTRODUCTION', 'Text', 'introduction', 'document/modules/1732329295.pdf', 'https://www.youtube.com/watch?v=oPV2sjMG53U&list=PLZPZq0r_RZOMskz6MdsMOgxzheIyjo-BZ', 40, '2024-11-23 00:34:55', '2024-11-23 00:34:55', '10'),
(3, 1, 'CHAPITRE 1: MySQL tutorial for beginners (intro + installation)', 'Installation integration des bades sur le cours', 'chapitre-1-mysql-tutorial-for-beginners-intro-installation', 'document/modules/1732458720.pdf', 'https://www.youtube.com/watch?v=q-BoKqm_ZKU', 40, '2024-11-24 12:32:00', '2024-11-24 12:32:00', NULL),
(4, 1, 'CHAPITRE 2 : SYSTHACE DES BASES', 'HJVHUGVGYFYGCHGCYCCYGCFYGCG', 'chapitre-2-systhace-des-bases', 'document/modules/1733645522.pdf', 'https://www.youtube.com/watch?v=ZoiAw4Xe4i8&list=PLqwVVulQIzn5p4qlFKhzsFTZUidSkAtJJ&index=71', 40, '2024-12-08 06:12:02', '2024-12-08 06:12:02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payements`
--

CREATE TABLE `payements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED DEFAULT NULL,
  `annee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `type_payement` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payements`
--

INSERT INTO `payements` (`id`, `classe_id`, `annee_id`, `amount`, `payment_date`, `payment_method`, `reference_number`, `type_payement`, `description`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 1, 1, 50000.00, '2025-01-07', 'Espèces', '1452-85554-8555', 'Frais d\'Imscription', 'text', 1, '2025-01-07 06:08:44', '2025-01-07 09:11:15', 71),
(2, 1, 1, 2500000.00, '2025-01-07', 'Lumicash', '1452*85554*8555', 'Frais Premiere Tranche', NULL, 1, '2025-01-07 06:09:15', '2025-01-07 08:50:49', 71),
(3, 1, 1, 2500000.00, '2025-01-31', 'Ecocash', '1452*85554*84555', 'Frais deuxieme Transche', NULL, 1, '2025-01-07 09:45:52', '2025-01-07 09:48:42', 71),
(4, 1, 1, 2500000.00, '2025-01-17', 'Virement Bancaire', '1452-44', 'Frais Troisieme Transche', NULL, 1, '2025-01-07 09:47:52', '2025-01-07 09:48:39', 71),
(5, 1, 1, 50000.00, '2025-01-07', 'Carte de Crédit', '588458-666589-5555', 'Frais de sylabus', NULL, 1, '2025-01-07 09:49:23', '2025-01-07 09:49:36', 71),
(6, 1, 1, 15000.00, '2025-01-07', 'Ecocash', '1452-447859-78589', 'Frais de construction', NULL, 1, '2025-01-07 09:50:16', '2025-01-07 09:50:48', 71);

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomp` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`id`, `nomp`, `prenom`, `sexe`, `tel`, `bio`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'root', 'Admin', 'Homme', '69974848', 'Admin est ne a BUju,bura', 40, '2024-10-26 08:45:18', '2024-11-11 01:31:31'),
(2, 'alain', 'bagaya', 'Homme', '67755654', NULL, 52, '2024-10-31 17:25:36', '2024-10-31 17:25:36'),
(3, 'MBONIMPA', 'Augustin', 'Homme', '67755654', NULL, 60, '2024-11-01 15:47:23', '2024-11-01 15:47:23');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examen_id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(1000) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 1,
  `temps_limite` int(11) NOT NULL DEFAULT 60,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `examen_id`, `titre`, `point`, `temps_limite`, `created_at`, `updated_at`) VALUES
(1, 1, 'Qui est le Boss du burundi', 10, 10, '2024-11-05 17:25:17', '2024-11-05 17:25:17'),
(2, 1, 'Ou c\'est trouve le burundi', 10, 10, '2024-11-05 17:44:54', '2024-11-05 17:44:54');

-- --------------------------------------------------------

--
-- Structure de la table `reponse_forums`
--

CREATE TABLE `reponse_forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponse_forums`
--

INSERT INTO `reponse_forums` (`id`, `forum_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 40, 'Veuillez deposer votre document au bureau', '2024-12-07 03:29:49', '2024-12-07 03:29:49'),
(2, 2, 40, 'text', '2024-12-07 03:32:30', '2024-12-07 03:32:30'),
(3, 2, 40, 'text', '2024-12-07 03:33:11', '2024-12-07 03:33:11'),
(4, 2, 69, 'Merci pour vos questions', '2024-12-07 03:51:40', '2024-12-07 03:51:40'),
(5, 2, 69, 'merci monsieur pour votre participation', '2024-12-07 03:55:53', '2024-12-07 03:55:53'),
(6, 1, 40, 'C\'est pour l\'analyse est conception , analyse et création de la base des données', '2024-12-07 13:01:17', '2024-12-07 13:01:17'),
(7, 4, 69, 'Merci pour la longue attente maintenent ne vous soucier plus de rien je deja trouver la reponse a la questions', '2024-12-07 13:14:08', '2024-12-07 13:14:08'),
(8, 5, 71, 'merci j;ai deja LA SOLUTION', '2024-12-08 06:26:11', '2024-12-08 06:26:11'),
(9, 5, 40, 'MYSQL C\'EST UNE GESTIONNAIRE DES BASES DES DEONNES MAIS SQL C\'EST SONT LES INSTRUCTIONS', '2024-12-08 06:28:09', '2024-12-08 06:28:09'),
(10, 6, 69, 'c\'est une requette', '2024-12-17 07:24:22', '2024-12-17 07:24:22'),
(11, 5, 69, 'Deuxieme est pratique je pense est une bonne reponse', '2024-12-17 08:42:27', '2024-12-17 08:42:27'),
(12, 5, 69, 'si non ca reste a verifier', '2024-12-17 08:43:22', '2024-12-17 08:43:22');

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

CREATE TABLE `resultats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `examen_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `total_questions` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL DEFAULT 0,
  `wrong_answers` int(11) NOT NULL DEFAULT 0,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `status` enum('completed','incomplete') NOT NULL DEFAULT 'incomplete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resultats`
--

INSERT INTO `resultats` (`id`, `user_id`, `examen_id`, `score`, `total_questions`, `correct_answers`, `wrong_answers`, `started_at`, `finished_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 71, 1, 0, 2, 0, 0, NULL, NULL, 'incomplete', '2025-01-06 16:45:42', '2025-01-06 16:45:42');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
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
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9ftc9Jm9eGupVT8Mqs9swMvGUW1UQ6YoZW3M5uFg', 40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2FtZE9PeEVBMmc1RTNmcnlqRjB2eUJHOE8zRzUxUk52ZU91Ukw3eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lZGl0Y291cnMvMyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQwO30=', 1731144483),
('O6meCVxeGxXwwLaViic4EM2aUKEfAgwTajDUDC3B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3lpdkozdzBHVmo2M1VjTG5GdVRwNThRQUNwN1dPVTUzdzZNckhuTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnNjcmlwdGlvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731145425);

-- --------------------------------------------------------

--
-- Structure de la table `transite_faculte_etudiants`
--

CREATE TABLE `transite_faculte_etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `annescolaire_id` bigint(20) UNSIGNED NOT NULL,
  `faculte_id` bigint(20) UNSIGNED NOT NULL,
  `statut` varchar(255) NOT NULL DEFAULT 'ACTIF',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transite_faculte_etudiants`
--

INSERT INTO `transite_faculte_etudiants` (`id`, `users_id`, `annescolaire_id`, `faculte_id`, `statut`, `created_at`, `updated_at`, `classe_id`) VALUES
(1, 57, 1, 2, 'ACTIF', '2024-10-31 17:42:05', '2024-10-31 17:42:05', 1),
(2, 58, 1, 2, 'ACTIF', '2024-10-31 17:58:22', '2024-10-31 17:58:22', 1),
(4, 61, 1, 2, 'ACTIF', '2024-11-01 17:11:03', '2024-11-01 17:11:03', 1),
(6, 63, 1, 2, 'ACTIF', '2024-11-03 09:45:36', '2024-11-03 09:45:36', 14),
(7, 64, 1, 2, 'ACTIF', '2024-11-05 16:33:42', '2024-11-05 16:33:42', 1),
(8, 65, 1, 3, 'ACTIF', '2024-11-05 16:37:26', '2024-11-05 16:37:26', 10),
(9, 66, 1, 5, 'ACTIF', '2024-11-07 16:22:35', '2024-11-07 16:22:35', 5),
(10, 67, 1, 5, 'ACTIF', '2024-11-08 17:01:36', '2024-11-08 17:01:36', 5),
(11, 68, 1, 2, 'ACTIF', '2024-11-11 01:56:34', '2024-11-11 01:56:34', 1),
(12, 69, 1, 2, 'ACTIF', '2024-11-24 11:04:57', '2024-11-24 11:04:57', 1),
(13, 70, 1, 2, 'ACTIF', '2024-11-25 03:45:48', '2024-11-25 03:45:48', 1),
(14, 71, 1, 2, 'ACTIF', '2024-12-08 05:59:54', '2024-12-08 05:59:54', 1);

-- --------------------------------------------------------

--
-- Structure de la table `userreponses`
--

CREATE TABLE `userreponses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `examen_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `choix_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'images/profile/photo.png',
  `idfonction` int(11) NOT NULL DEFAULT 7,
  `status` varchar(255) NOT NULL DEFAULT 'ACTIF',
  `code` varchar(25) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `prenom`, `email`, `photo`, `idfonction`, `status`, `code`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(40, 'Admin', 'admin@gmail.com', 'images/profile/1731248573.jpg', 1, 'ACTIF', 'INITADMIN001', NULL, '$2y$12$KKVTsfCOUyotU1fZzwdtpOxxTGDTIMMZ5xLGu9ClaJNARn6yhoJ06', NULL, '2024-10-26 08:45:18', '2025-01-06 07:35:45'),
(52, 'bagaya', 'bagayaalain@gmail.com', 'images/profile/photo.png', 1, 'ACTIF', 'INITADMIN002', NULL, '$2y$12$XJNAjvPry67GSUnKf6uwyeWOg5F9brkeN6nEZIi.ZdBd/i1ZPI9.W', NULL, '2024-10-31 17:25:36', '2024-10-31 17:25:36'),
(57, 'HAKIZIMANA', 'pascasie@gmail.com', 'images/profile/1732297155.png', 7, 'BLOQUE', 'INIT001', NULL, '$2y$12$B8xN0EFUPqBFC.DPMP6.7O9hJ9AD.3O7224zRvtwB6Y8ybF6814J6', NULL, '2024-10-31 17:42:05', '2025-01-06 06:39:43'),
(58, 'Prospere', 'bucumipros@gmail.com', 'images/profile/1733642183.png', 7, 'ACTIF', 'INIT002', NULL, '$2y$12$l73crH4zRVjUl84aW6go/e7iCtRnVATh20H071A6uE2ftZ642gHia', NULL, '2024-10-31 17:58:22', '2024-12-08 05:16:23'),
(60, 'Augustin', 'mbonimpa@gmail.com', 'images/profile/photo.png', 3, 'ACTIF', 'INITADMIN003', NULL, '$2y$12$edO2TyxJ6.8kwTkPnW9U9eBChh0pmTMZWf6.AsgO3U1qTAuxhHYFu', NULL, '2024-11-01 15:47:23', '2024-11-01 15:47:23'),
(61, 'MUSHOMBO', 'mushombenoella@gmail.com', 'images/profile/1730623554.png', 7, 'ACTIF', 'INIT004', NULL, '$2y$12$ZvQVX8m1VoqlbUCSIkY02.YY32TSNw3AixILkjBfa8Gciz1OZYVEC', NULL, '2024-11-01 17:11:03', '2024-11-03 08:55:15'),
(63, 'MULISHO', 'omarimulisho@gmail.com', 'images/profile/1732450034.png', 7, 'ACTIF', 'INIT004', NULL, '$2y$12$XTU30ROmTs1djXFxxJ6kl.imUJvuHDAmnN67tWSwPA1IdhFFSo28m', NULL, '2024-11-03 09:45:36', '2024-11-24 10:07:14'),
(64, 'Njuma', 'rukundo@gmail.com', 'images/profile/photo.png', 7, 'ACTIF', 'INIT005', NULL, '$2y$12$AEYEtRrSAdFkeaQ5fYG64eoRrc.oLESkZmwoNAKRM9/Jg.vUpFof2', NULL, '2024-11-05 16:33:42', '2024-11-05 16:33:42'),
(65, 'Jule', 'jule@gmail.com', 'images/profile/photo.png', 7, 'ACTIF', 'INIT006', NULL, '$2y$12$.E7gr.znwalFPZMS.XlBteq/h5nb6E0WqM8h589WSCmsAXXM9v8MO', NULL, '2024-11-05 16:37:26', '2024-11-05 16:37:26'),
(66, 'Medart', 'medart@gmail.com', 'images/profile/1731139085.jpg', 7, 'ACTIF', 'INIT007', NULL, '$2y$12$t41X6WWQDsfLiM3RMxt53ujDpcHqKJ1spgMr9o8nzIEd9yjUXrchW', NULL, '2024-11-07 16:22:35', '2024-11-09 06:58:05'),
(67, 'Edouard', 'edouard@gmail.com', 'images/profile/photo.png', 7, 'NON ACTIF', 'INIT008', NULL, '$2y$12$3FjR7ZwymlTDRiRE6F6yCutUsnjzOkPFlAagdHDk7SFG3xs9DupFS', NULL, '2024-11-08 17:01:36', '2024-11-08 17:01:36'),
(68, 'NDIZAYE', 'albert@gmail.com', 'images/profile/photo.png', 7, 'ACTIF', 'INIT009', NULL, '$2y$12$eAxiplRGRjprOXjod6IGbOYdwg1uC95PGC/HQpaS3gQPqPPfWc55S', NULL, '2024-11-11 01:56:34', '2024-11-11 01:56:34'),
(69, 'CHANCE', 'chance@gmail.com', 'images/profile/photo.png', 7, 'ACTIF', 'INIT010', NULL, '$2y$12$v.9WJxA8cpvMXfkFTP.4feHKNFXORlFSCkPPdq4kxiPcssX7wlBUC', NULL, '2024-11-24 11:04:57', '2024-11-24 11:04:57'),
(70, 'REBECCA', 'rebecca@gmail.com', 'images/profile/photo.png', 7, 'ACTIF', 'INIT011', NULL, '$2y$12$azgazK6hjxd7nF8WAboQvuWszxo6DnAoNWig3JtffrrDEsNgrkAl2', NULL, '2024-11-25 03:45:48', '2024-11-25 03:45:48'),
(71, 'MARIE', 'anne@gmail.com', 'images/profile/1733645021.jpg', 7, 'ACTIF', 'INIT012', NULL, '$2y$12$u24B105qAlKfcJkko09ZA.d8KgJnAsVnj5j5FT0OKfheAq/oAximu', NULL, '2024-12-08 05:59:54', '2024-12-08 06:03:41');

-- --------------------------------------------------------

--
-- Structure de la table `user_etudiants`
--

CREATE TABLE `user_etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etudiants_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annees`
--
ALTER TABLE `annees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bibliotheques`
--
ALTER TABLE `bibliotheques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bibliotheques_etudiant_id_foreign` (`etudiant_id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `choixes`
--
ALTER TABLE `choixes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `choixes_question_id_foreign` (`question_id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_faculte_id_foreign` (`faculte_id`);

--
-- Index pour la table `contenu_cours`
--
ALTER TABLE `contenu_cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contenu_cours_cours_id_foreign` (`cours_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dispenser_cours`
--
ALTER TABLE `dispenser_cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dispenser_cours_user_id_foreign` (`user_id`),
  ADD KEY `dispenser_cours_cours_id_foreign` (`cours_id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_user_id_foreign` (`user_id`);

--
-- Index pour la table `examens`
--
ALTER TABLE `examens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examens_cours_id_foreign` (`cours_id`);

--
-- Index pour la table `facturations`
--
ALTER TABLE `facturations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturations_annee_id_foreign` (`annee_id`);

--
-- Index pour la table `facultecours`
--
ALTER TABLE `facultecours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facultecours_cours_id_foreign` (`cours_id`),
  ADD KEY `facultecours_annescolaire_id_foreign` (`annescolaire_id`),
  ADD KEY `facultecours_faculte_id_foreign` (`faculte_id`),
  ADD KEY `facultecours_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `facultes`
--
ALTER TABLE `facultes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `fonctions`
--
ALTER TABLE `fonctions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_users_id_foreign` (`users_id`),
  ADD KEY `forums_cours_id_foreign` (`cours_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `module_cours`
--
ALTER TABLE `module_cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_cours_cours_id_foreign` (`cours_id`),
  ADD KEY `module_cours_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `payements`
--
ALTER TABLE `payements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payements_classe_id_foreign` (`classe_id`),
  ADD KEY `payements_annee_id_foreign` (`annee_id`);

--
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnels_user_id_foreign` (`user_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_examen_id_foreign` (`examen_id`);

--
-- Index pour la table `reponse_forums`
--
ALTER TABLE `reponse_forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reponse_forums_forum_id_foreign` (`forum_id`),
  ADD KEY `reponse_forums_user_id_foreign` (`user_id`);

--
-- Index pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultats_user_id_foreign` (`user_id`),
  ADD KEY `resultats_examen_id_foreign` (`examen_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `transite_faculte_etudiants`
--
ALTER TABLE `transite_faculte_etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transite_faculte_etudiants_users_id_foreign` (`users_id`),
  ADD KEY `transite_faculte_etudiants_annescolaire_id_foreign` (`annescolaire_id`),
  ADD KEY `transite_faculte_etudiants_faculte_id_foreign` (`faculte_id`),
  ADD KEY `transite_faculte_etudiants_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `userreponses`
--
ALTER TABLE `userreponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userreponses_user_id_foreign` (`user_id`),
  ADD KEY `userreponses_examen_id_foreign` (`examen_id`),
  ADD KEY `userreponses_question_id_foreign` (`question_id`),
  ADD KEY `userreponses_choix_id_foreign` (`choix_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_etudiants`
--
ALTER TABLE `user_etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_etudiants_etudiants_id_foreign` (`etudiants_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annees`
--
ALTER TABLE `annees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bibliotheques`
--
ALTER TABLE `bibliotheques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `choixes`
--
ALTER TABLE `choixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `contenu_cours`
--
ALTER TABLE `contenu_cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `dispenser_cours`
--
ALTER TABLE `dispenser_cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `examens`
--
ALTER TABLE `examens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `facturations`
--
ALTER TABLE `facturations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `facultecours`
--
ALTER TABLE `facultecours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `facultes`
--
ALTER TABLE `facultes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fonctions`
--
ALTER TABLE `fonctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `module_cours`
--
ALTER TABLE `module_cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `payements`
--
ALTER TABLE `payements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reponse_forums`
--
ALTER TABLE `reponse_forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `resultats`
--
ALTER TABLE `resultats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `transite_faculte_etudiants`
--
ALTER TABLE `transite_faculte_etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `userreponses`
--
ALTER TABLE `userreponses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `user_etudiants`
--
ALTER TABLE `user_etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bibliotheques`
--
ALTER TABLE `bibliotheques`
  ADD CONSTRAINT `bibliotheques_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`);

--
-- Contraintes pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `choixes`
--
ALTER TABLE `choixes`
  ADD CONSTRAINT `choixes_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_faculte_id_foreign` FOREIGN KEY (`faculte_id`) REFERENCES `facultes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `contenu_cours`
--
ALTER TABLE `contenu_cours`
  ADD CONSTRAINT `contenu_cours_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`);

--
-- Contraintes pour la table `dispenser_cours`
--
ALTER TABLE `dispenser_cours`
  ADD CONSTRAINT `dispenser_cours_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dispenser_cours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `examens`
--
ALTER TABLE `examens`
  ADD CONSTRAINT `examens_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`);

--
-- Contraintes pour la table `facturations`
--
ALTER TABLE `facturations`
  ADD CONSTRAINT `facturations_annee_id_foreign` FOREIGN KEY (`annee_id`) REFERENCES `annees` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `facultecours`
--
ALTER TABLE `facultecours`
  ADD CONSTRAINT `facultecours_annescolaire_id_foreign` FOREIGN KEY (`annescolaire_id`) REFERENCES `annees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `facultecours_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `facultecours_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `facultecours_faculte_id_foreign` FOREIGN KEY (`faculte_id`) REFERENCES `facultes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forums_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `module_cours`
--
ALTER TABLE `module_cours`
  ADD CONSTRAINT `module_cours_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`),
  ADD CONSTRAINT `module_cours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `payements`
--
ALTER TABLE `payements`
  ADD CONSTRAINT `payements_annee_id_foreign` FOREIGN KEY (`annee_id`) REFERENCES `annees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payements_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD CONSTRAINT `personnels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_examen_id_foreign` FOREIGN KEY (`examen_id`) REFERENCES `examens` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponse_forums`
--
ALTER TABLE `reponse_forums`
  ADD CONSTRAINT `reponse_forums_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponse_forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD CONSTRAINT `resultats_examen_id_foreign` FOREIGN KEY (`examen_id`) REFERENCES `examens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resultats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transite_faculte_etudiants`
--
ALTER TABLE `transite_faculte_etudiants`
  ADD CONSTRAINT `transite_faculte_etudiants_annescolaire_id_foreign` FOREIGN KEY (`annescolaire_id`) REFERENCES `annees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transite_faculte_etudiants_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transite_faculte_etudiants_faculte_id_foreign` FOREIGN KEY (`faculte_id`) REFERENCES `facultes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transite_faculte_etudiants_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `userreponses`
--
ALTER TABLE `userreponses`
  ADD CONSTRAINT `userreponses_choix_id_foreign` FOREIGN KEY (`choix_id`) REFERENCES `choixes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userreponses_examen_id_foreign` FOREIGN KEY (`examen_id`) REFERENCES `examens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userreponses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userreponses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_etudiants`
--
ALTER TABLE `user_etudiants`
  ADD CONSTRAINT `user_etudiants_etudiants_id_foreign` FOREIGN KEY (`etudiants_id`) REFERENCES `etudiants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
