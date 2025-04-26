-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bancodeteste
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artilheiro`
--

DROP TABLE IF EXISTS `artilheiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artilheiro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gols` bigint DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `id_jogador` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ar_jg_index` (`id_jogador`),
  CONSTRAINT `artilheiro_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `jogadores` (`id_jogador`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artilheiro`
--

LOCK TABLES `artilheiro` WRITE;
/*!40000 ALTER TABLE `artilheiro` DISABLE KEYS */;
INSERT INTO `artilheiro` VALUES (1,2,'Pantera Negra',59),(2,15,'Azuzinho',60),(3,15,'Homem de Ferro',10),(4,28,'Taylor',9),(5,21,'Wilham',2),(6,22,'Sabrina',30),(7,18,'Pente Preto',1),(8,1,'Joker',58),(9,2,'Filipe',29),(10,1,'Telefone',57),(11,1,'Dove',8),(12,30,'Rafael',6),(13,21,'Renato',46),(14,11,'Pente Laranja',51),(15,17,'Tiago',38),(16,2,'Gradiente',52),(17,12,'Pente Rosa',37),(18,2,'Eva',47),(19,1,'Hammer',45),(20,2,'Rodrigo',5),(21,1,'Rivelino',50),(22,1,'Katchup',40),(23,3,'Vinicius',33),(24,2,'Monstro',44),(25,18,'Gael',42),(26,8,'Thanos',34),(27,18,'Raul',13),(28,13,'Michel',18),(29,3,'Super Homem',14),(30,2,'Sr Incrivel',17),(31,14,'Tati',35),(32,1,'Theo',16),(33,1,'Cif',41),(34,4,'Buzz',28),(35,22,'Luciano',22),(36,4,'Maçaneta',21),(37,8,'Hulk',25),(38,18,'Alice',62),(39,23,'Elza',53),(40,24,'Pente Cinza',26),(41,4,'Rildo',63),(42,1,'Sherk',56),(43,2,'Mostarda',24),(44,1,'Sensodyni',55),(45,1,'Sundown',61),(46,1,'Pepe',19),(47,1,'Ufe',31),(48,2,'Azulão',27),(49,1,'Renan',12);
/*!40000 ALTER TABLE `artilheiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artilheiro_torneio`
--

DROP TABLE IF EXISTS `artilheiro_torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artilheiro_torneio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gols` bigint DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artilheiro_torneio`
--

LOCK TABLES `artilheiro_torneio` WRITE;
/*!40000 ALTER TABLE `artilheiro_torneio` DISABLE KEYS */;
INSERT INTO `artilheiro_torneio` VALUES (56,12,'Elza'),(57,12,'Tiago'),(58,15,'Pente Cinza'),(59,7,'Hulk'),(60,8,'Gael'),(61,10,'Renato'),(63,2,'Azulão'),(64,16,'Rafael'),(65,1,'Thanos'),(66,1,'Vinicius'),(67,7,'Homem de Ferro'),(68,7,'Tati'),(69,15,'Wilham'),(70,4,'Michel'),(71,9,'Luciano'),(72,12,'Sabrina'),(73,11,'Pente Preto'),(74,2,'Maçaneta'),(75,16,'Taylor'),(76,1,'Renan');
/*!40000 ALTER TABLE `artilheiro_torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistencia`
--

DROP TABLE IF EXISTS `assistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistencia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assistencias` bigint DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `id_jogador` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ar_jg_index` (`id_jogador`),
  CONSTRAINT `assistencia_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `jogadores` (`id_jogador`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistencia`
--

LOCK TABLES `assistencia` WRITE;
/*!40000 ALTER TABLE `assistencia` DISABLE KEYS */;
INSERT INTO `assistencia` VALUES (3,2,'Telefone',57),(4,9,'Pente Preto',1),(6,12,'Luiz',3),(7,2,'Filipe',29),(8,6,'Ufe',31),(9,12,'Titan',11),(10,2,'Pantera Negra',59),(11,1,'Monange',32),(12,10,'Homem de Ferro',10),(13,5,'Renan',12),(14,10,'Taylor',9),(15,1,'Joker',58),(16,7,'Wilham',2),(17,6,'Rafael',6),(18,7,'Hammer',45),(19,2,'Rivelino',50),(20,4,'Cindy',49),(21,1,'Pente Rosa',37),(22,6,'Tiago',38),(23,14,'Matias',7),(24,4,'Dove',8),(25,3,'Renato',46),(26,2,'Controle da Tv',48),(27,8,'Rodrigo',5),(28,9,'Eva',47),(29,1,'Gradiente',52),(30,1,'Katchup',40),(31,6,'Dony',39),(32,6,'Thanos',34),(33,2,'Gael',42),(34,7,'Cif',41),(35,7,'Vinicius',33),(36,4,'Luiza',15),(37,3,'Sr Incrivel',17),(38,3,'Tati',35),(39,2,'Michel',18),(40,5,'Varicel',43),(41,3,'Theo',16),(42,4,'Super Homem',14),(43,4,'Pantene',36),(44,5,'Pepe',19),(45,1,'Raul',13),(46,2,'Monstro',44),(47,13,'Hulk',25),(48,5,'Maçaneta',21),(49,6,'Mostarda',24),(50,4,'Pente Cinza',26),(51,8,'Loriel',54),(52,2,'Rildo',63),(53,6,'Crystal',64),(55,11,'Azulão',27),(56,2,'Alice',62),(57,7,'Azeite',23),(58,3,'Sherk',56),(59,2,'Buzz',28),(60,4,'Sundown',61),(61,1,'Sensodyni',55),(62,2,'Luciano',22),(63,1,'Pente Laranja',51),(64,1,'Leonardo',4),(65,6,'Elza',53),(66,3,'Sabrina',30);
/*!40000 ALTER TABLE `assistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistencia_torneio`
--

DROP TABLE IF EXISTS `assistencia_torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistencia_torneio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assistencias` bigint DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistencia_torneio`
--

LOCK TABLES `assistencia_torneio` WRITE;
/*!40000 ALTER TABLE `assistencia_torneio` DISABLE KEYS */;
INSERT INTO `assistencia_torneio` VALUES (75,10,'Hulk'),(76,3,'Rafael'),(77,9,'Azulão'),(78,4,'Vinicius'),(79,4,'Eva'),(80,2,'Cindy'),(81,4,'Hammer'),(82,1,'Renato'),(83,4,'Tiago'),(84,12,'Matias'),(85,4,'Thanos'),(86,3,'Pente Cinza'),(87,4,'Rodrigo'),(88,6,'Elza'),(89,1,'Pantene'),(90,8,'Taylor'),(91,5,'Cif'),(92,3,'Varicel'),(93,9,'Homem de Ferro'),(94,4,'Azeite'),(95,4,'Renan'),(97,3,'Loriel'),(98,8,'Luiz'),(99,9,'Titan'),(100,1,'Tati'),(101,3,'Sabrina'),(102,6,'Wilham'),(103,1,'Luciano'),(104,1,'Maçaneta'),(105,1,'Michel'),(106,6,'Pente Preto');
/*!40000 ALTER TABLE `assistencia_torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogadores` (
  `id_jogador` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `posicao` varchar(100) DEFAULT NULL,
  `foto` longblob,
  `id_time` bigint unsigned NOT NULL,
  `dono` int DEFAULT NULL,
  PRIMARY KEY (`id_jogador`),
  KEY `jg_tm_index` (`id_time`),
  CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`id_time`) REFERENCES `times_tb` (`id_time`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Pente Preto','Banheiro','Volante',NULL,1,1),(2,'Wilham','Sala','Meia atacante',NULL,2,NULL),(3,'Luiz','Sala','Meia central',NULL,14,NULL),(4,'Leonardo','Quarto do Norte','Lateral',NULL,10,NULL),(5,'Rodrigo','Cozinha','Meia central',NULL,5,1),(6,'Rafael','Quarto do Norte','Volante',NULL,5,NULL),(7,'Matias','Banheiro','Zagueiro',NULL,2,NULL),(8,'Dove','Banheiro','Meia central',NULL,6,NULL),(9,'Taylor','Sala','Volante',NULL,2,1),(10,'Homem de Ferro','Quarto do Sul','Meia atacante',NULL,2,NULL),(11,'Titan','Quarto do Norte','Meia central',NULL,13,NULL),(12,'Renan','Sacada do Norte','Meia central',NULL,11,NULL),(13,'Raul','Quarto do Norte','Volante',NULL,9,1),(14,'Super Homem','Quarto do Sul','Meia atacante',NULL,9,NULL),(15,'Luiza','Quarto do Sul','Zagueiro',NULL,16,NULL),(16,'Theo','Cozinha','Zagueiro',NULL,10,NULL),(17,'Sr Incrivel','Quarto do Norte','Atacante',NULL,10,1),(18,'Michel','Sala','Volante',NULL,7,NULL),(19,'Pepe','Banheiro','Meia central',NULL,9,NULL),(20,'Rita','Banheiro','Zagueiro',NULL,17,NULL),(21,'Maçaneta','Sacada do Norte','Volante',NULL,13,1),(22,'Luciano','Quarto do Sul','Volante',NULL,13,NULL),(23,'Azeite','Cozinha','Meia central',NULL,7,NULL),(24,'Mostarda','Cozinha','Atacante',NULL,16,NULL),(25,'Hulk','Quarto do Sul','Meia atacante',NULL,14,1),(26,'Pente Cinza','Sala','Volante',NULL,14,NULL),(27,'Azulão','Quarto do Sul','Meia central',NULL,1,NULL),(28,'Buzz','Sala','Atacante',NULL,15,NULL),(29,'Filipe','Sala','Atacante',NULL,3,1),(30,'Sabrina','Quarto do Norte','Volante',NULL,1,NULL),(31,'Ufe','Cozinha','Zagueiro',NULL,3,NULL),(32,'Monange','Quarto do Norte','Lateral',NULL,17,NULL),(33,'Vinicius','Quarto do Norte','Atacante',NULL,11,1),(34,'Thanos','Quarto do Sul','Meia atacante',NULL,1,NULL),(35,'Tati','Quarto do Norte','Volante',NULL,12,NULL),(36,'Pantene','Banheiro','Lateral',NULL,15,NULL),(37,'Pente Rosa','Cozinha','Volante',NULL,6,1),(38,'Tiago','Sala','Meia atacante',NULL,5,NULL),(39,'Dony','Banheiro','Meia central',NULL,6,NULL),(40,'Katchup','Cozinha','Zagueiro',NULL,8,1),(41,'Cif','Laje','Lateral',NULL,12,1),(42,'Gael','Quarto do Sul','Volante',NULL,11,NULL),(43,'Varicel','Quarto do Norte','Lateral',NULL,12,NULL),(44,'Monstro','Salão','Atacante',NULL,10,NULL),(45,'Hammer','Cozinha','Zagueiro',NULL,5,1),(46,'Renato','Quarto do Sul','Volante',NULL,11,NULL),(47,'Eva','Sala','Zagueiro',NULL,7,NULL),(48,'Controle da tv','Sala','Atacante',NULL,17,NULL),(49,'Cindy','Cozinha','Meia central',NULL,7,NULL),(50,'Rivelino','Salão','Meia atacante',NULL,8,NULL),(51,'Pente Laranja','Sala','Volante',NULL,16,NULL),(52,'Gradiente','Sala','Meia atacante',NULL,17,NULL),(53,'Elza','Quarto do Sul','Volante',NULL,14,NULL),(54,'Loriel','Banheiro','Meia central',NULL,13,NULL),(55,'Sensodyni','Cozinha','Zagueiro',NULL,15,1),(56,'Sherk','Quarto do Sul','Atacante',NULL,17,NULL),(57,'Telefone','Sala','Atacante',NULL,17,NULL),(58,'Joker','Quarto do Sul','Meia atacante',NULL,4,NULL),(59,'Pantera Negra','Quarto do Sul','Meia atacante',NULL,4,1),(60,'Azuzinho','Cozinha','Volante',NULL,3,NULL),(61,'Sundown','Quarto do Sul','Lateral',NULL,16,1),(62,'Alice','Quarto do Sul','Volante',NULL,6,NULL),(63,'Rildo','Sacada do Norte','Ponta de lança',NULL,17,NULL),(64,'Crystal','Laje','Zagueiro',NULL,3,NULL),(65,'Rozinha','Casa dos Fundos','Volante',NULL,12,NULL),(66,'Roberto','Quarto do Sul','Meia atacante',NULL,9,NULL),(68,'Verdinho','Quarto do Sul','Ponta de lança',NULL,8,NULL),(69,'Controle do dvd','Sala','Atacante',NULL,4,NULL),(70,'Escuro','Sala','Ponta de lança',NULL,15,NULL),(71,'Coringa','Laje','Atacante',NULL,8,NULL),(72,'Lacan','Banheiro','Lateral',NULL,4,NULL);
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligas`
--

DROP TABLE IF EXISTS `ligas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas`
--

LOCK TABLES `ligas` WRITE;
/*!40000 ALTER TABLE `ligas` DISABLE KEYS */;
INSERT INTO `ligas` VALUES (1,'Division Soccer'),(2,'Coziano'),(3,'Noriano'),(4,'Sulriano'),(5,'Sem liga');
/*!40000 ALTER TABLE `ligas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `log` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placar_jogo`
--

DROP TABLE IF EXISTS `placar_jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placar_jogo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `placar` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placar_jogo`
--

LOCK TABLES `placar_jogo` WRITE;
/*!40000 ALTER TABLE `placar_jogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `placar_jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pontos_troneio`
--

DROP TABLE IF EXISTS `pontos_troneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pontos_troneio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pontos` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pontos_troneio`
--

LOCK TABLES `pontos_troneio` WRITE;
/*!40000 ALTER TABLE `pontos_troneio` DISABLE KEYS */;
INSERT INTO `pontos_troneio` VALUES (1,'Primeiro lugar no Campeonato Mundial',400),(2,'Primeiro lugar na Super Copa',370),(3,'Segundo lugar no Campeonato Mundial',300),(4,'Segundo lugar na Super Copa',270),(5,'Terceiro lugar no Campeonato Mundial',200),(6,'Terceiro lugar na Super Copa',170),(7,'Quarto lugar na Super Copa',70),(8,'Primeiro lugar na liga',100),(9,'Quarto lugar no Campeonato Mundial',100),(10,'Primeiro lugar na Copa',100),(11,'Primeiro lugar na Sub-Liga',90),(12,'Segundo lugar na liga',60),(13,'Quinto lugar no Campeonato Mundial',60),(14,'Segundo lugar na Copa',60),(15,'Segundo lugar na Sub-Liga',50),(16,'Sexto lugar no Campeonato Mundial',40),(17,'Terceiro lugar na liga',30),(18,'Terceiro lugar na Copa',30),(19,'Terceiro lugar na Sub-Liga',20),(20,'Setimo lugar no Campeonato Mundial',20),(21,'Primeiro lugar na Recopa',5);
/*!40000 ALTER TABLE `pontos_troneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_clubes`
--

DROP TABLE IF EXISTS `ranking_clubes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_clubes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pontos` bigint DEFAULT NULL,
  `posicao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_clubes`
--

LOCK TABLES `ranking_clubes` WRITE;
/*!40000 ALTER TABLE `ranking_clubes` DISABLE KEYS */;
INSERT INTO `ranking_clubes` VALUES (1,'Democration',500,NULL),(2,'Castelão',160,NULL),(3,'Brécia',80,NULL),(4,'Panasonic',400,NULL),(5,'Brastemp',80,NULL),(6,'Element',120,NULL),(7,'Galaxy',140,NULL),(8,'Penharol',60,NULL),(9,'Raiden',30,NULL),(10,'Ases',160,NULL),(11,'Once Caldas',260,NULL),(12,'Vans',50,NULL);
/*!40000 ALTER TABLE `ranking_clubes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_jogadores`
--

DROP TABLE IF EXISTS `ranking_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_jogadores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pontos` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_jogadores`
--

LOCK TABLES `ranking_jogadores` WRITE;
/*!40000 ALTER TABLE `ranking_jogadores` DISABLE KEYS */;
INSERT INTO `ranking_jogadores` VALUES (1,'Homem de Ferro',59),(2,'Sabrina',12),(3,'Luiz',5),(4,'Rafael',23),(5,'Hammer',12),(6,'Rodrigo',5),(7,'Thanos',23),(8,'Gael',12),(9,'Varicel',5),(10,'Luciano',23),(11,'Maçaneta',12),(12,'Crystal',5),(13,'Dove',23),(14,'Pente Laranja',12),(15,'Azuzinho',5),(16,'Wilham',23),(17,'Taylor',5);
/*!40000 ALTER TABLE `ranking_jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_titulos`
--

DROP TABLE IF EXISTS `ranking_titulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_titulos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nomeJogador` varchar(100) DEFAULT NULL,
  `liga` int DEFAULT NULL,
  `copa` int DEFAULT NULL,
  `subLiga` int DEFAULT NULL,
  `mundial` int DEFAULT NULL,
  `superCopa` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_titulos`
--

LOCK TABLES `ranking_titulos` WRITE;
/*!40000 ALTER TABLE `ranking_titulos` DISABLE KEYS */;
INSERT INTO `ranking_titulos` VALUES (1,'Taylor',1,NULL,NULL,1,NULL,2),(2,'Homem de Ferro',1,NULL,NULL,1,NULL,2),(3,'Titan',1,NULL,NULL,1,NULL,2),(4,'Renan',1,NULL,NULL,NULL,NULL,1),(5,'Rodrigo',1,NULL,NULL,NULL,NULL,1),(6,'Rafael',1,NULL,NULL,NULL,NULL,1),(7,'Matias',1,NULL,NULL,NULL,NULL,1),(8,'Dove',1,NULL,1,NULL,NULL,2),(9,'Vinicius',1,NULL,NULL,NULL,NULL,1),(10,'Thanos',1,NULL,NULL,NULL,NULL,1),(11,'Tati',1,NULL,NULL,NULL,NULL,1),(12,'Pantene',1,NULL,NULL,NULL,NULL,1),(13,'Maçaneta',1,NULL,NULL,NULL,NULL,1),(14,'Luciano',1,NULL,NULL,NULL,NULL,1),(15,'Azeite',1,NULL,NULL,NULL,NULL,1),(16,'Mostarda',1,NULL,NULL,NULL,NULL,1),(17,'Pente Rosa',NULL,NULL,1,NULL,NULL,1),(18,'Dony',NULL,NULL,1,NULL,NULL,1),(19,'Pente Laranja',NULL,NULL,1,NULL,NULL,1),(20,'Wilham',NULL,NULL,NULL,1,NULL,1);
/*!40000 ALTER TABLE `ranking_titulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados`
--

DROP TABLE IF EXISTS `resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultados` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resultado` varchar(100) DEFAULT NULL,
  `data` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados`
--

LOCK TABLES `resultados` WRITE;
/*!40000 ALTER TABLE `resultados` DISABLE KEYS */;
INSERT INTO `resultados` VALUES (1,'3','2025-04-20 12:07:43'),(2,'2','2025-04-20 12:07:44'),(3,'3','2025-04-20 12:19:31'),(4,'2','2025-04-20 12:19:32'),(5,'3','2025-04-21 11:38:07'),(6,'2','2025-04-21 11:38:08'),(7,'0','2025-04-21 11:44:09'),(8,'4','2025-04-21 11:44:10'),(9,'1','2025-04-21 11:50:12'),(10,'3','2025-04-21 11:50:27'),(11,'2','2025-04-21 11:57:19'),(12,'3','2025-04-21 11:57:20'),(13,'3','2025-04-21 14:25:34'),(14,'1','2025-04-21 14:25:35'),(15,'3','2025-04-21 14:34:51'),(16,'2','2025-04-21 14:34:51'),(17,'3','2025-04-21 14:42:20'),(18,'1','2025-04-21 14:42:21'),(19,'2','2025-04-21 14:54:27'),(20,'3','2025-04-21 14:54:27'),(21,'2','2025-04-21 15:56:35'),(22,'3','2025-04-21 15:56:36'),(23,'1','2025-04-21 16:03:50'),(24,'3','2025-04-21 16:03:52');
/*!40000 ALTER TABLE `resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_copa`
--

DROP TABLE IF EXISTS `resultados_copa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultados_copa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `placar` bigint DEFAULT NULL,
  `fase` varchar(200) DEFAULT NULL,
  `data` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_copa`
--

LOCK TABLES `resultados_copa` WRITE;
/*!40000 ALTER TABLE `resultados_copa` DISABLE KEYS */;
INSERT INTO `resultados_copa` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL),(17,NULL,3,NULL,'2025-04-21 19:23:25'),(18,NULL,4,NULL,'2025-04-21 19:23:25'),(19,NULL,4,NULL,'2025-04-22 20:36:25'),(20,NULL,1,NULL,'2025-04-22 20:36:25'),(21,NULL,4,NULL,'2025-04-21 19:37:53'),(22,NULL,3,NULL,'2025-04-21 19:37:53'),(23,NULL,4,NULL,'2025-04-22 20:45:01'),(24,NULL,3,NULL,'2025-04-22 20:45:01'),(25,NULL,4,NULL,'2025-04-26 11:12:08'),(26,NULL,2,NULL,'2025-04-26 11:12:08'),(27,NULL,1,NULL,'2025-04-26 11:17:51'),(28,NULL,3,NULL,'2025-04-26 11:17:51'),(29,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL),(39,NULL,5,NULL,'2025-04-22 21:01:44'),(40,NULL,7,NULL,'2025-04-22 21:01:44'),(41,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL),(43,NULL,2,NULL,'2025-04-23 19:50:52'),(44,NULL,4,NULL,'2025-04-23 19:50:52'),(45,NULL,3,NULL,'2025-04-23 19:58:17'),(46,NULL,2,NULL,'2025-04-23 19:58:17'),(47,NULL,NULL,NULL,NULL),(48,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resultados_copa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `senha` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'$2b$10$mo2fyb6hCxs5Tcka3V8WgOUg1gDtsv9zwwlSRc79N0Fqh57MEwMnW','litorino');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times_copa`
--

DROP TABLE IF EXISTS `times_copa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times_copa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times_copa`
--

LOCK TABLES `times_copa` WRITE;
/*!40000 ALTER TABLE `times_copa` DISABLE KEYS */;
INSERT INTO `times_copa` VALUES (9,'Castelão'),(10,'Panasonic'),(11,'Once Caldas'),(12,'Democration'),(13,'Democration'),(14,'Panasonic'),(15,'Castelão'),(16,'Once Caldas');
/*!40000 ALTER TABLE `times_copa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times_sorteados`
--

DROP TABLE IF EXISTS `times_sorteados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times_sorteados` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times_sorteados`
--

LOCK TABLES `times_sorteados` WRITE;
/*!40000 ALTER TABLE `times_sorteados` DISABLE KEYS */;
INSERT INTO `times_sorteados` VALUES (32,'Democration'),(33,'Penharol'),(34,'Castelão'),(35,'Ases'),(36,'Castelão'),(37,'Penharol');
/*!40000 ALTER TABLE `times_sorteados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times_tb`
--

DROP TABLE IF EXISTS `times_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times_tb` (
  `id_time` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `id_liga` bigint unsigned NOT NULL,
  `escudo` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`id_time`),
  KEY `liga_time_index` (`id_liga`),
  CONSTRAINT `times_tb_ibfk_1` FOREIGN KEY (`id_liga`) REFERENCES `ligas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times_tb`
--

LOCK TABLES `times_tb` WRITE;
/*!40000 ALTER TABLE `times_tb` DISABLE KEYS */;
INSERT INTO `times_tb` VALUES (1,'Castelão',1,'utils/escudoTimes/castelao.png'),(2,'Democration',1,'utils/escudoTimes/democration.png'),(3,'Brécia',1,NULL),(4,'Chips',1,NULL),(5,'Panasonic',2,'utils/escudoTimes/panasonic.png'),(6,'Element',2,NULL),(7,'Brastemp',2,NULL),(8,'Juventude',2,NULL),(9,'Raiden',3,NULL),(10,'Halor',3,NULL),(11,'Galaxy',3,NULL),(12,'Penharol',3,NULL),(13,'Ases',4,NULL),(14,'Once Caldas',4,'utils/escudoTimes/once caldas.png'),(15,'Lacta',4,NULL),(16,'Vans',4,NULL),(17,'Sem time',5,NULL);
/*!40000 ALTER TABLE `times_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneio`
--

DROP TABLE IF EXISTS `torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pontos` bigint DEFAULT NULL,
  `saldo` bigint DEFAULT NULL,
  `desempate` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneio`
--

LOCK TABLES `torneio` WRITE;
/*!40000 ALTER TABLE `torneio` DISABLE KEYS */;
INSERT INTO `torneio` VALUES (1,'Democration',8,7,NULL),(2,'Ases',3,-4,NULL),(3,'Castelão',6,4,NULL),(4,'Penharol',1,-7,NULL);
/*!40000 ALTER TABLE `torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 13:24:52
