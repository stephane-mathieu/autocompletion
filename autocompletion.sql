-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 11 mai 2022 à 13:22
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `Voiture_Japonaises`
--

CREATE TABLE `Voiture_Japonaises` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Voiture_Japonaises`
--

INSERT INTO `Voiture_Japonaises` (`id`, `Nom`, `image`, `description`) VALUES
(1, 'Nissan GT-R R34 Z-Tune', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/unnamed_1024x1024.jpg?v=1593040582', 'La Z-Tune a été conçue et développée à la fin de la vie de production de la R34 Skyline. L\'entreprise de tuning interne de Nissan, Nismo.'),
(2, 'Toyota 2000GT', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/2000gt-ouverture_2048x2048.jpg?v=1593040456', 'Toyota a commencé à développer cette voiture peu après le Grand Prix du Japon de 1964. La société voulait créer une nouvelle voiture qui offrirait une nouvelle expérience de conduite plus attrayante aux amateurs d\'automobiles japonais.'),
(3, 'Honda NSX-R', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/2880-1800-crop-honda-nsx-type-r-c178421032014223721_1_2048x2048.jpg?v=1593040474', 'La NSX-R était davantage orientée vers la piste que la NSX standard et offrait une plus grande expérience de conduite aux passionnés.'),
(4, 'Subaru Impreza 22B STi', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/Subaru-Impreza-22B-STI-WRC-e1584104599668_2048x2048.jpg?v=1593040576', 'Subaru a créé la 22B STi pour célébrer les victoires des constructeurs du Championnat du monde des rallyes de 1995 à 1997. Il s\'agissait essentiellement d\'une version large du coupé WRX STi et sa production était limitée'),
(5, 'Mazda RX-7 FD', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/maxresdefault_9ec3754a-cb8c-4ce4-a97f-fd07ad3d73d1_2048x2048.jpg?v=1593040521', 'La Mazda RX-7 de troisième génération est largement considérée comme l\'une des plus grandes voitures de sport de tous les temps, sans parler de l\'une des meilleures voitures japonaises jamais fabriquées.'),
(6, 'Mitsubishi Evolution VI Tommi Mäkinen Edition', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/mitsu-evo-ta_2048x2048.jpg?v=1593040545', 'L\'Evolution VI Tommi Mäkinen Edition ou TME a été lancée à la fin de 1999 et a été introduite pour célébrer le quatrième championnat consécutif des pilotes WRC de Mäkinen.'),
(7, 'Toyota Supra Mk4', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/S0-une-toyota-supra-vendue-plus-de-150-000-eur-596078_2048x2048.jpg?v=1593040570', 'Sans doute l\'une des voitures de sport les plus légendaires de tous les temps, la Toyota Supra Mk4 est devenue en quelque sorte une pièce de collection dont les modèles atteignent plus de 100 000 dollars aux enchères (et parfois bien plus).'),
(8, 'Mazda MX-5 (NA)', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/1989-mazda-mx-5-na_2048x2048.jpg?v=1593040426', 'La MX-5 NA a connu un succès instantané lors de son lancement en 1989 et elle a été très bien accueillie par les journalistes et les passionnés de l\'automobile. Avec un poids inférieur à 1 000 kg et d\'excellentes caractéristiques de conduite,'),
(9, 'Nissan 350Z', 'https://www.automobile-sportive.com/guide/nissan/350z_300ch/nissan-350z-300ch.jpg', 'La Nissan 350 Z est équipée d\'un moteur longitudinal avant six cylindres en V atmosphérique développant un couple maximum de 363 Nm dès 4800 trs/min et une puissance maximum de 280 ch à 6200 trs/min'),
(10, 'Nissan GT-R R32', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/landscape-1462289981-gt-r_2048x2048.jpg?v=1593040501', 'Nissan a équipé la voiture d\'un moteur RB26DETT biturbo de 2,6 litres qui envoie 276 chevaux et 260 lb-pi de couple aux quatre roues. '),
(11, 'Toyota MR2 Mk2', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/1993ToyotaMR2Hardtop_2048x2048.jpg?v=1593040448', 'Toyota a produit une gamme de différents modèles de MR2 pour le marché japonais et international. Toutefois, les modèles haut de gamme étaient équipés d\'un moteur 3S-GTE de 2,0 litres qui développait 218 ch.'),
(12, 'Honda Integra Type R DC2', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/honda-integra-type-r-dc2-7_2048x2048.jpg?v=1593124315', 'L\'Integra a été la deuxième voiture Honda à porter la marque de la nomenclature Type R de la société. La Honda Integra Type R DC2 a été introduite pour la première fois en 1995 et a reçu la même transformation que la Type R NSX'),
(13, 'Mitsubishi GTO/3000GT (Bi-turbo)', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/Mitsubishi_3000GT_--_03-21-2012_2048x2048.jpg?v=1593040534', 'Il ne fait aucun doute que la Mitsubishi GTO (3000GT) est un chef-d\'œuvre technologique du début des années 90. Au moment de son lancement,'),
(14, 'Nissan 300ZX Z32 Twin-Turbo', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/1989-nissan-fairlady-300zx-twin-turbo-z32_2048x2048.jpg?v=1593040433', 'La 300ZX Z32, l\'une des voitures japonaises les plus aimées de tous les temps, a été une étape importante par rapport à la Z31.'),
(15, 'Honda S2000', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/b68be172660872434a4dafe9fa9b4c89_2048x2048.jpg?v=1593040487', 'La Honda S2000 est considérée comme l\'une des plus grandes voitures de sport de tous les temps, et encore moins comme l\'une des plus grandes voitures japonaises de tous les temps.'),
(16, 'Nissan Fairlady Z (Datsun 240Z)', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/IMG_1251_2048x2048.jpg?v=1593040494', 'La Fairlady Z était la principale concurrente de la 2000GT lors de son lancement en 1969. Même si elle n\'était pas aussi luxueuse que la Toyota, la Fairlady Z offrait aux conducteurs des performances supérieures.'),
(17, 'Honda Civic Type R FK8', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/maxresdefault_1_2048x2048.jpg?v=1593040513', 'Si toutes les Civic Type R de Honda sont spéciales, la FK8 s\'est révélée être une bête redoutable dans le monde compétitif des écoutilles. La Type R est devenue la voiture à traction avant la plus rapide pour le tour du célèbre Nürburgring en Allemagne'),
(18, 'Nissan Nismo R35 GT-R', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/2020-nissan-gt-r-nismo_2048x2048.jpg?v=1593040464', 'La R35 GT-R était l\'une des voitures les plus rapides jamais produites lors de son lancement en 2007. Elle a fait la part belle à la concurrence et a fixé la barre pour les futurs véhicules performants, tant au Japon que dans le reste du monde.'),
(19, 'Toyota Century (première génération)', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/1967_Toyota-Century_07_2048x2048.jpg?v=1593040414', 'Bien que nous aimions toutes les différentes générations de la Toyota Century, la première est toujours la plus cool pour nous. La Century était à l\'origine basée sur la Crown Eight de 1964 et a été conçue pour être aussi luxueuse'),
(20, 'Nissan Nismo 400R R33 GT-R', 'https://cdn.shopify.com/s/files/1/0332/4677/3307/files/nismo-400r-hero-1001x565_2048x2048.jpg?v=1593040557', 'En 1997, Nissan a lancé une version ultime de la R33 GT-R connue sous le nom de 400R. Seules 44 de ces voitures ont été produites avant la fin de la production en 1998. La conception et le développement global de la 400R ont été réalisés par Nismo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Voiture_Japonaises`
--
ALTER TABLE `Voiture_Japonaises`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Voiture_Japonaises`
--
ALTER TABLE `Voiture_Japonaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
