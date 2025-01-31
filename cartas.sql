-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- SO do servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- A despejar estrutura da base de dados para cartas
DROP DATABASE IF EXISTS `cartas`;
CREATE DATABASE IF NOT EXISTS `cartas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cartas`;

-- A despejar estrutura para tabela cartas.cartas_pokemon
DROP TABLE IF EXISTS `cartas_pokemon`;
CREATE TABLE IF NOT EXISTS `cartas_pokemon` (
  `id_pk_carta` int NOT NULL AUTO_INCREMENT,
  `nome_carta` varchar(50) DEFAULT NULL,
  `box_set` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preco` decimal(20,2) DEFAULT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  `quantidade` int NOT NULL
  PRIMARY KEY (`id_pk_carta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.cartas_pokemon: ~20 rows (aproximadamente)
INSERT INTO `cartas_pokemon` (`id_pk_carta`, `nome_carta`, `box_set`, `preco`, `imagem`, `quantidade`) VALUES
	(1, 'Arven', 'OBF', 0.02, '../static/pk1.png', 10),
	(2, 'Buddy-Buddy Poffin', 'TEF', 0.02, '../static/pk2.png', 10),
	(3, 'Ceruledge ex', 'SSP', 1.99, '../static/pk3.png', 10),
	(4, 'Dusknoir', 'SFA', 0.06, '../static/pk4.png', 10),
	(5, 'Earthen Vessel', 'PAR', 0.02, '../static/pk5.png', 10),
	(6, 'Alolan Exeggutor ex', 'SSP', 0.49, '../static/pk6.png', 10),
	(7, 'Fezandipiti ex', 'SFA', 4.99, '../static/pk7.png', 10),
	(8, 'Garchomp ex', 'PAR', 1.50, '../static/pk8.png', 10),
	(9, 'Gardevoir ex', 'PAF', 0.49, '../static/pk9.png', 10),
	(10, 'Hydreigon ex', 'SSP', 0.99, '../static/pk10.png', 10),
	(11, 'Latias ex', 'SSP', 0.95, '../static/pk11.png', 10),
	(12, 'Mewscarada ex', 'PAL', 0.29, '../static/pk12.png', 10),
	(13, 'Milotic ex', 'SSP', 0.30, '../static/pk13.png', 10),
	(14, 'Miraidon ex', 'SVI', 0.48, '../static/pk14.png', 10),
	(15, 'Night Stretcher', 'SFA', 0.57, '../static/pk15.png', 10),
	(16, 'Palafin', 'PAF', 0.59, '../static/pk16.png', 10),
	(17, 'Pikachu ex', 'SSP', 2.99, '../static/pk17.png', 10),
	(18, 'Precious Trolley', 'SSP', 1.99, '../static/pk18.png', 10),
	(19, 'Super Rod', 'PAL', 0.02, '../static/pk19.png', 10),
	(20, 'Sylveon ex', 'SSP', 1.99, '../static/pk20.png', 10);

-- A despejar estrutura para tabela cartas.cartas_vg
DROP TABLE IF EXISTS `cartas_vg`;
CREATE TABLE IF NOT EXISTS `cartas_vg` (
  `id_vg_carta` int NOT NULL AUTO_INCREMENT,
  `nome_carta` varchar(50) DEFAULT NULL,
  `box_set` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preco` decimal(20,2) DEFAULT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  `quantidade` int NOT NULL
  PRIMARY KEY (`id_vg_carta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.cartas_vg: ~20 rows (aproximadamente)
INSERT INTO `cartas_vg` (`id_vg_carta`, `nome_carta`, `box_set`, `preco`, `imagem`, `quantidade`) VALUES
	(1, 'Unparalleled Drekasleif, Varga Dragres "Rakshasa"', 'D-BT05', 19.99, '../static/cv1.png', 10),
	(2, 'Summit Flare Dragon', 'D-BT05', 3.50, '../static/cv2.png', 10),
	(3, 'Anachronous Dragon', 'D-BT05', 3.50, '../static/cv3.png', 10),
	(4, 'Destined One of Time, Liael=Odium', 'D-BT05', 16.99, '../static/cv4.png', 10),
	(5, 'Demonic Path Autocrat, Vasargo', 'D-BT05', 3.99, '../static/cv5.png', 10),
	(6, 'Headway Router Dragon', 'D-BT05', 1.75, '../static/cv6.png', 10),
	(7, 'Fated King of Miracles, Rezael Vita', 'D-BT05', 24.99, '../static/cv7.png', 10),
	(8, 'Blest Dragon, Gabwelius', 'D-BT05', 17.99, '../static/cv8.png', 10),
	(9, 'Destined King of Infinity, Levidras Empireo', 'D-BT05', 16.00, '../static/cv9.png', 10),
	(10, 'Sequence Wizard', 'D-BT05', 0.99, '../static/vanguard/10.png', 10),
	(11, 'Veleno Soldato, Lephonohyla', 'D-BT05', 0.99, '../static/cv11.png', 10),
	(12, 'FL∀MMe-Glam sup.Gt. Grenadine', 'D-BT05', 2.00, '../static/cv12.png', 10),
	(13, 'Clover Hearts, Nellinea', 'D-BT05', 1.00, '../static/cv13.png', 10),
	(14, 'Storm Slasher Dragon', 'D-BT05', 2.00, '../static/cv14.png', 10),
	(15, 'Almanac Colossus', 'D-BT05', 2.00, '../static/cv15.png', 10),
	(16, 'Direful Doll, Bartolomea', 'D-BT05', 1.40, '../static/cv16.png', 10),
	(17, 'Aurora Battle Princess, Capture Cherrino', 'D-BT05', 0.24, '../static/cv17.png', 10),
	(18, 'Knight of Formosity, Charmnet', 'D-BT05', 1.00, '../static/cv18.png', 10),
	(19, 'Inquisitive Squarrol', 'D-BT05', 0.34, '../static/cv19.png', 10),
	(20, 'Morning Practice in the Calm Sea, Tolmana', 'D-BT05', 0.35, '../static/cv20.png', 10);

-- A despejar estrutura para tabela cartas.cartas_yugioh
DROP TABLE IF EXISTS `cartas_yugioh`;
CREATE TABLE IF NOT EXISTS `cartas_yugioh` (
  `id_yg_carta` int NOT NULL AUTO_INCREMENT,
  `nome_carta` varchar(50) DEFAULT NULL,
  `box_set` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preco` decimal(20,2) DEFAULT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  `quantidade` int NOT NULL
  PRIMARY KEY (`id_yg_carta`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.cartas_yugioh: ~0 rows (aproximadamente)
INSERT INTO `cartas_yugioh` (`id_yg_carta`, `nome_carta`, `box_set`, `preco`, `imagem`, `quantidade`) VALUES
	(1, 'Mereologic Aggregator', 'DABL', 1.90, '../static/yg1.png'),
	(2, 'Tidal, Dragon Ruler of Waterfalls', 'RA03', 0.05, '../static/yg2.png', 10),
	(3, 'Blaster, Dragon Ruler of Infernos', 'RA03', 0.05, '../static/yg3.png', 10),
	(4, 'Tempest, Dragon Ruler of Storms', 'RA03', 0.02, '../static/yg4.png', 10),
	(5, 'Reactan, Dragon Ruler of Pebbles', 'RA03', 0.49, '../static/yg5.png', 10),
	(6, 'Stream, Dragon Ruler of Droplets', 'RA03', 1.49, '../static/yg6.png', 10),
	(7, 'Burner, Dragon Ruler of Sparks', 'RA03', 9.99, '../static/yg7.png', 10),
	(8, 'Lightning, Dragon Ruler of Drafts', 'RA03', 0.25, '../static/yg8.png', 10),
	(9, 'Ice Ryzeal', 'CRBR', 18.50, '../static/yg9.png', 10),
	(10, 'Ryzeal Detonator', 'CRBR', 1.00, '../static/yg10.png', 10),
	(11, 'Maliss <P> White Rabbit', 'CRBR', 23.20, '../static/yg11.png', 10),
	(12, 'Maliss <P> Chessy Cat', 'CRBR', 0.02, '../static/yg12.png', 10),
	(13, 'Maliss <P> Dormouse', 'CRBR', 0.02, '../static/yg13.png', 10),
	(14, 'Maliss <P> Red Ransom', 'CRBR', 0.02, '../static/yg14.png', 10),
	(15, 'Maliss <P> White Binder', 'CRBR', 0.02, '../static/yg15.png', 10),
	(16, 'Maliss <P> Hearts Crypter', 'CRBR', 0.25, '../static/yg16.png', 10),
	(17, 'Maliss in Underground', 'CRBR', 20.00, '../static/yg17.png', 10),
	(18, 'Maliss <C> MTP-07', 'CRBR', 0.19, '../static/yg18.png', 10),
	(19, 'Maliss <C> TB-11', 'CRBR', 0.02, '../static/yg19.png', 10),
	(20, 'Sosei Ryu-Ge Mistva', 'CRBR', 3.40, '../static/yg20.png', 10);

-- A despejar estrutura para tabela cartas.compra
DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `vendedor_id` int NOT NULL DEFAULT '0',
  `id_user` int NOT NULL DEFAULT '0',
  `id_yg_carta` int NOT NULL DEFAULT '0',
  `id_vg_carta` int NOT NULL DEFAULT '0',
  `id_pk_carta` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_compra`),
  KEY `vendedor_id` (`vendedor_id`),
  KEY `id_user` (`id_user`),
  KEY `id_vg_carta` (`id_vg_carta`),
  KEY `id_pk_carta` (`id_pk_carta`),
  KEY `id_yg_carta` (`id_yg_carta`),
  CONSTRAINT `id_pk_carta` FOREIGN KEY (`id_pk_carta`) REFERENCES `cartas_pokemon` (`id_pk_carta`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`user_id`),
  CONSTRAINT `id_vg_carta` FOREIGN KEY (`id_vg_carta`) REFERENCES `cartas_vg` (`id_vg_carta`),
  CONSTRAINT `id_yg_carta` FOREIGN KEY (`id_yg_carta`) REFERENCES `cartas_yugioh` (`id_yg_carta`),
  CONSTRAINT `vendedor_id` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedor` (`vendedor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.compra: ~0 rows (aproximadamente)

-- A despejar estrutura para tabela cartas.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telemovel` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `morada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`user_id`, `user_name`, `password`, `email`, `telemovel`, `morada`, `role`) VALUES
(1, 'Cruz', '12345', 'teste@gmail.com', '+351927202585', '3045-451', 1),
(2, 'teste2', '12345', 'teste2@gmail.com', '+351901845632', '3045-451', 0);
(6, 'teste5', '$2y$10$5cYPPeQOPr5ORQNy8gCsW.d67ANWgFvbbBHIsnJYZCTQMVXzBwNFK', 'teste5@gmail.com', '+555234165789', NULL, NULL);

-- A despejar estrutura para tabela cartas.vendedor
DROP TABLE IF EXISTS `vendedor`;
CREATE TABLE IF NOT EXISTS `vendedor` (
  `vendedor_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `id_pk_carta` int DEFAULT NULL,
  `id_vg_carta` int DEFAULT NULL,
  `id_yg_carta` int DEFAULT NULL,
  `vendedor_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vendedor_id`) USING BTREE,
  KEY `FK_vendedor_users` (`user_id`),
  KEY `FK_vendedor_cartas_pokemon` (`id_pk_carta`),
  KEY `FK_vendedor_cartas_vg` (`id_vg_carta`),
  KEY `FK_vendedor_cartas_yugioh` (`id_yg_carta`) USING BTREE,
  CONSTRAINT `FK_vendedor_cartas_pokemon` FOREIGN KEY (`id_pk_carta`) REFERENCES `cartas_pokemon` (`id_pk_carta`),
  CONSTRAINT `FK_vendedor_cartas_vg` FOREIGN KEY (`id_vg_carta`) REFERENCES `cartas_vg` (`id_vg_carta`),
  CONSTRAINT `FK_vendedor_cartas_yugioh` FOREIGN KEY (`id_yg_carta`) REFERENCES `cartas_yugioh` (`id_yg_carta`),
  CONSTRAINT `FK_vendedor_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela cartas.vendedor: ~0 rows (aproximadamente)
INSERT INTO `vendedor` (`vendedor_id`, `user_id`, `id_pk_carta`, `id_vg_carta`, `id_yg_carta`, `vendedor_name`) VALUES
	(1, 1, NULL, NULL, NULL, 'Cruz');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
