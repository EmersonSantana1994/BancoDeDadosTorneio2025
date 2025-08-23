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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artilheiro`
--

LOCK TABLES `artilheiro` WRITE;
/*!40000 ALTER TABLE `artilheiro` DISABLE KEYS */;
INSERT INTO `artilheiro` VALUES (1,6,'Pantera Negra',59),(2,39,'Azuzinho',60),(3,34,'Homem de Ferro',10),(4,59,'Taylor',9),(5,51,'Wilham',2),(6,65,'Sabrina',30),(7,46,'Pente Preto',1),(8,18,'Joker',58),(9,12,'Filipe',29),(10,2,'Telefone',57),(11,1,'Dove',8),(12,90,'Rafael',6),(13,31,'Renato',46),(14,33,'Pente Laranja',51),(15,50,'Tiago',38),(16,2,'Gradiente',52),(17,52,'Pente Rosa',37),(18,2,'Eva',47),(19,2,'Hammer',45),(20,3,'Rodrigo',5),(21,3,'Rivelino',50),(22,1,'Katchup',40),(23,4,'Vinicius',33),(24,9,'Monstro',44),(25,46,'Gael',42),(26,19,'Thanos',34),(27,91,'Raul',13),(28,82,'Michel',18),(29,17,'Super Homem',14),(30,10,'Sr Incrivel',17),(31,47,'Tati',35),(32,4,'Theo',16),(33,2,'Cif',41),(34,26,'Buzz',28),(35,87,'Luciano',22),(36,8,'Maçaneta',21),(37,22,'Hulk',25),(38,68,'Alice',62),(39,81,'Elza',53),(40,85,'Pente Cinza',26),(41,17,'Rildo',63),(42,2,'Sherk',56),(43,7,'Mostarda',24),(44,1,'Sensodyni',55),(45,2,'Sundown',61),(46,3,'Pepe',19),(47,2,'Ufe',31),(48,5,'Azulão',27),(49,3,'Renan',12),(50,3,'Crystal',64),(51,7,'Controle do dvd',69),(52,2,'Lacan',72),(53,3,'Coringa',71),(54,1,'Verdinho',68),(55,8,'Escuro',70),(56,23,'Roberto',66),(57,28,'Rozinha',65),(58,2,'Azeite',23),(59,1,'Pincel',74),(60,1,'Leonardo',4),(61,16,'Net',73),(62,1,'Loriel',54),(63,1,'Xavier',76),(64,1,'Controle da Tv',48),(65,1,'Varicel',43),(66,4,'Sky',77),(67,1,'Matias',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artilheiro_torneio`
--

LOCK TABLES `artilheiro_torneio` WRITE;
/*!40000 ALTER TABLE `artilheiro_torneio` DISABLE KEYS */;
INSERT INTO `artilheiro_torneio` VALUES (264,8,'Rildo'),(265,2,'Pente Cinza'),(266,2,'Sky'),(267,14,'Raul'),(268,2,'Pente Preto'),(269,11,'Rafael'),(270,1,'Buzz'),(271,1,'Ufe'),(272,10,'Alice'),(273,5,'Tati'),(274,13,'Elza'),(275,8,'Tiago'),(276,8,'Michel'),(277,10,'Luciano'),(278,2,'Sabrina'),(279,1,'Super Homem'),(280,1,'Maçaneta');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistencia`
--

LOCK TABLES `assistencia` WRITE;
/*!40000 ALTER TABLE `assistencia` DISABLE KEYS */;
INSERT INTO `assistencia` VALUES (3,4,'Telefone',57),(4,13,'Pente Preto',1),(6,32,'Luiz',3),(7,18,'Filipe',29),(8,21,'Ufe',31),(9,46,'Titan',11),(10,19,'Pantera Negra',59),(11,1,'Monange',32),(12,35,'Homem de Ferro',10),(13,26,'Renan',12),(14,20,'Taylor',9),(15,4,'Joker',58),(16,15,'Wilham',2),(17,20,'Rafael',6),(18,28,'Hammer',45),(19,15,'Rivelino',50),(20,25,'Cindy',49),(21,10,'Pente Rosa',37),(22,22,'Tiago',38),(23,44,'Matias',7),(24,18,'Dove',8),(25,7,'Renato',46),(26,8,'Controle da Tv',48),(27,26,'Rodrigo',5),(28,36,'Eva',47),(29,1,'Gradiente',52),(30,1,'Katchup',40),(31,8,'Dony',39),(32,15,'Thanos',34),(33,7,'Gael',42),(34,23,'Cif',41),(35,11,'Vinicius',33),(36,12,'Luiza',15),(37,9,'Sr Incrivel',17),(38,12,'Tati',35),(39,11,'Michel',18),(40,20,'Varicel',43),(41,10,'Theo',16),(42,28,'Super Homem',14),(43,8,'Pantene',36),(44,39,'Pepe',19),(45,13,'Raul',13),(46,4,'Monstro',44),(47,37,'Hulk',25),(48,29,'Maçaneta',21),(49,18,'Mostarda',24),(50,11,'Pente Cinza',26),(51,38,'Loriel',54),(52,4,'Rildo',63),(53,25,'Crystal',64),(55,25,'Azulão',27),(56,18,'Alice',62),(57,21,'Azeite',23),(58,6,'Sherk',56),(59,7,'Buzz',28),(60,9,'Sundown',61),(61,3,'Sensodyni',55),(62,13,'Luciano',22),(63,4,'Pente Laranja',51),(64,4,'Leonardo',4),(65,20,'Elza',53),(66,5,'Sabrina',30),(67,8,'Azuzinho',60),(68,11,'Lacan',72),(70,10,'Controle do dvd',69),(71,1,'Verdinho',68),(72,13,'Roberto',66),(73,5,'Net',73),(74,24,'Xavier',76),(75,5,'Rozinha',65),(76,2,'Escuro',70),(77,2,'Montila',78),(78,6,'Sky',77);
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
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistencia_torneio`
--

LOCK TABLES `assistencia_torneio` WRITE;
/*!40000 ALTER TABLE `assistencia_torneio` DISABLE KEYS */;
INSERT INTO `assistencia_torneio` VALUES (349,2,'Dony'),(350,4,'Sky'),(351,1,'Hulk'),(352,3,'Hammer'),(353,4,'Rafael'),(354,2,'Buzz'),(355,1,'Sabrina'),(356,3,'Elza'),(357,2,'Crystal'),(358,2,'Cif'),(359,8,'Xavier'),(360,1,'Varicel'),(361,5,'Filipe'),(362,3,'Maçaneta'),(363,5,'Eva'),(364,4,'Tiago'),(365,3,'Matias'),(366,1,'Homem de Ferro'),(367,2,'Pente Preto'),(368,3,'Raul'),(369,1,'Ufe'),(370,1,'Super Homem'),(371,7,'Titan'),(372,1,'Luciano'),(373,5,'Renan'),(374,5,'Pepe'),(375,3,'Alice');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Pente Preto','Banheiro','Volante',NULL,1,1),(2,'Wilham','Sala','Meia atacante',NULL,2,NULL),(3,'Luiz','Sala','Meia central',NULL,2,NULL),(4,'Leonardo','Quarto do Norte','Lateral',NULL,17,NULL),(5,'Rodrigo','Cozinha','Meia central',NULL,5,1),(6,'Rafael','Quarto do Norte','Volante',NULL,9,NULL),(7,'Matias','Banheiro','Zagueiro',NULL,7,NULL),(8,'Dove','Banheiro','Meia central',NULL,6,NULL),(9,'Taylor','Sala','Volante',NULL,2,1),(10,'Homem de Ferro','Quarto do Sul','Meia atacante',NULL,14,NULL),(11,'Titan','Quarto do Norte','Meia central',NULL,13,NULL),(12,'Renan','Sacada do Norte','Meia central',NULL,9,NULL),(13,'Raul','Quarto do Norte','Volante',NULL,9,1),(14,'Super Homem','Quarto do Sul','Meia atacante',NULL,7,NULL),(15,'Luiza','Quarto do Sul','Zagueiro',NULL,16,NULL),(16,'Theo','Cozinha','Zagueiro',NULL,4,NULL),(17,'Sr Incrivel','Quarto do Norte','Atacante',NULL,10,1),(18,'Michel','Sala','Volante',NULL,7,NULL),(19,'Pepe','Banheiro','Meia central',NULL,9,NULL),(20,'Rita','Banheiro','Zagueiro',NULL,17,NULL),(21,'Maçaneta','Sacada do Norte','Volante',NULL,13,1),(22,'Luciano','Quarto do Sul','Volante',NULL,13,NULL),(23,'Azeite','Cozinha','Meia central',NULL,6,NULL),(24,'Mostarda','Cozinha','Atacante',NULL,16,NULL),(25,'Hulk','Quarto do Sul','Meia atacante',NULL,14,1),(26,'Pente Cinza','Sala','Volante',NULL,14,NULL),(27,'Azulão','Quarto do Sul','Meia central',NULL,10,NULL),(28,'Buzz','Sala','Atacante',NULL,1,NULL),(29,'Filipe','Sala','Atacante',NULL,3,1),(30,'Sabrina','Quarto do Norte','Volante',NULL,1,NULL),(31,'Ufe','Cozinha','Zagueiro',NULL,1,NULL),(32,'Monange','Quarto do Norte','Lateral',NULL,17,NULL),(33,'Vinicius','Quarto do Norte','Atacante',NULL,17,NULL),(34,'Thanos','Quarto do Sul','Meia atacante',NULL,4,1),(35,'Tati','Quarto do Norte','Volante',NULL,12,NULL),(36,'Pantene','Banheiro','Lateral',NULL,11,NULL),(37,'Pente Rosa','Cozinha','Volante',NULL,6,1),(38,'Tiago','Sala','Meia atacante',NULL,13,NULL),(39,'Dony','Banheiro','Meia central',NULL,8,NULL),(40,'Katchup','Cozinha','Zagueiro',NULL,17,NULL),(41,'Cif','Laje','Lateral',NULL,12,1),(42,'Gael','Quarto do Sul','Volante',NULL,10,NULL),(43,'Varicel','Quarto do Norte','Lateral',NULL,12,NULL),(44,'Monstro','Salão','Atacante',NULL,5,NULL),(45,'Hammer','Cozinha','Zagueiro',NULL,8,NULL),(46,'Renato','Quarto do Sul','Volante',NULL,11,NULL),(47,'Eva','Sala','Zagueiro',NULL,7,1),(48,'Controle da tv','Sala','Atacante',NULL,15,1),(49,'Cindy','Cozinha','Meia central',NULL,6,NULL),(50,'Rivelino','Salão','Meia atacante',NULL,10,NULL),(51,'Pente Laranja','Sala','Volante',NULL,16,1),(52,'Gradiente','Sala','Meia atacante',NULL,17,NULL),(53,'Elza','Quarto do Sul','Volante',NULL,3,NULL),(54,'Loriel','Banheiro','Meia central',NULL,14,NULL),(55,'Sensodyni','Cozinha','Zagueiro',NULL,17,NULL),(56,'Sherk','Quarto do Sul','Atacante',NULL,16,NULL),(57,'Telefone','Sala','Atacante',NULL,4,NULL),(58,'Joker','Quarto do Sul','Meia atacante',NULL,11,1),(59,'Pantera Negra','Quarto do Sul','Meia atacante',NULL,15,NULL),(60,'Azuzinho','Cozinha','Volante',NULL,2,NULL),(61,'Sundown','Quarto do Sul','Lateral',NULL,17,NULL),(62,'Alice','Quarto do Sul','Volante',NULL,3,NULL),(63,'Rildo','Sacada do Norte','Ponta de lança',NULL,8,NULL),(64,'Crystal','Laje','Zagueiro',NULL,12,1),(65,'Rozinha','Casa dos Fundos','Volante',NULL,5,NULL),(66,'Roberto','Quarto do Sul','Meia atacante',NULL,5,NULL),(68,'Verdinho','Quarto do Sul','Ponta de lança',NULL,17,NULL),(69,'Controle do dvd','Sala','Atacante',NULL,4,NULL),(70,'Escuro','Sala','Ponta de lança',NULL,17,NULL),(71,'Coringa','Laje','Atacante',NULL,17,NULL),(72,'Lacan','Banheiro','Lateral',NULL,11,NULL),(73,'Net','Quarto do Sul','Atacante',NULL,15,NULL),(74,'Pincel','Cozinha','Ponta de lança',NULL,17,NULL),(75,'Condicionador','Banheiro','Lateral',NULL,17,NULL),(76,'Xavier','Banheiro','Zagueiro',NULL,3,NULL),(77,'Sky','Cozinha','Atacante',NULL,8,1),(78,'Montila','Quarto do Sul','Lateral',NULL,15,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_clubes`
--

LOCK TABLES `ranking_clubes` WRITE;
/*!40000 ALTER TABLE `ranking_clubes` DISABLE KEYS */;
INSERT INTO `ranking_clubes` VALUES (1,'Democration',905,NULL),(2,'Castelão',270,NULL),(3,'Brécia',600,NULL),(4,'Panasonic',970,NULL),(5,'Brastemp',630,NULL),(6,'Element',300,NULL),(7,'Galaxy',170,NULL),(8,'Penharol',250,NULL),(9,'Raiden',1065,NULL),(10,'Ases',720,NULL),(11,'Once Caldas',990,NULL),(12,'Vans',110,NULL),(13,'Chips',90,NULL),(14,'Lacta',30,NULL),(15,'Juventude',130,NULL),(16,'Halor',140,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_jogadores`
--

LOCK TABLES `ranking_jogadores` WRITE;
/*!40000 ALTER TABLE `ranking_jogadores` DISABLE KEYS */;
INSERT INTO `ranking_jogadores` VALUES (2,'Sabrina',12),(3,'Luiz',5),(4,'Rafael',56),(5,'Hammer',36),(6,'Rodrigo',5),(7,'Thanos',23),(8,'Gael',12),(9,'Varicel',28),(10,'Luciano',46),(11,'Maçaneta',17),(12,'Crystal',5),(13,'Dove',23),(14,'Pente Laranja',12),(15,'Azuzinho',5),(16,'Wilham',46),(17,'Taylor',10),(18,'Joker',12),(19,'Homem de Ferro',45),(20,'Michel',51),(21,'Titan',12),(22,'Raul',81),(23,'Pepe',35),(24,'Sr Incrivel',5),(25,'Tiago',28),(26,'Pente Rosa',23),(27,'Cindy',12),(28,'Pente Cinza',40),(29,'Elza',17),(30,'Loriel',23),(31,'Matias',12),(32,'Ufe',5),(33,'Tati',17),(34,'Rozinha',5),(35,'Rivelino',12),(36,'Super Homem',10),(37,'Cif',12),(38,'Hulk',23),(39,'Alice',23),(40,'Xavier',24),(41,'Sky',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_titulos`
--

LOCK TABLES `ranking_titulos` WRITE;
/*!40000 ALTER TABLE `ranking_titulos` DISABLE KEYS */;
INSERT INTO `ranking_titulos` VALUES (1,'Taylor',2,1,NULL,1,NULL,4),(2,'Homem de Ferro',1,2,NULL,1,NULL,4),(3,'Titan',1,1,NULL,1,NULL,3),(4,'Renan',1,1,NULL,1,1,4),(5,'Rodrigo',1,1,NULL,NULL,1,3),(6,'Rafael',1,2,NULL,NULL,2,5),(7,'Matias',2,1,NULL,NULL,NULL,3),(8,'Dove',2,NULL,1,NULL,NULL,3),(9,'Vinicius',1,NULL,NULL,NULL,NULL,1),(10,'Thanos',1,NULL,NULL,NULL,NULL,1),(11,'Tati',2,NULL,NULL,NULL,NULL,2),(12,'Pantene',1,NULL,NULL,NULL,NULL,1),(13,'Maçaneta',1,1,NULL,NULL,NULL,2),(14,'Luciano',2,1,NULL,NULL,NULL,3),(15,'Azeite',1,1,1,NULL,NULL,3),(16,'Mostarda',1,NULL,NULL,NULL,NULL,1),(17,'Pente Rosa',1,NULL,1,NULL,NULL,2),(18,'Dony',NULL,NULL,1,NULL,NULL,1),(19,'Pente Laranja',NULL,NULL,1,NULL,NULL,1),(20,'Wilham',NULL,1,NULL,1,NULL,2),(21,'Hammer',NULL,1,NULL,NULL,1,2),(22,'Tiago',NULL,1,NULL,NULL,1,2),(23,'Loriel',1,2,NULL,NULL,NULL,3),(24,'Raul',NULL,2,NULL,1,1,4),(25,'Pepe',NULL,2,NULL,1,1,4),(26,'Super Homem',NULL,2,NULL,NULL,NULL,2),(27,'Roberto',NULL,1,NULL,1,NULL,2),(28,'Cindy',1,NULL,NULL,NULL,NULL,1),(29,'Rivelino',1,NULL,1,NULL,NULL,2),(30,'Hulk',1,1,NULL,NULL,NULL,2),(31,'Luiz',1,NULL,NULL,NULL,NULL,1),(32,'Pente Cinza',1,1,NULL,NULL,NULL,2),(33,'Alice',1,1,NULL,NULL,NULL,2),(34,'Cif',1,NULL,NULL,NULL,NULL,1),(35,'Varicel',1,NULL,NULL,NULL,NULL,1),(36,'Rozinha',1,NULL,NULL,NULL,NULL,1),(37,'Michel',NULL,1,1,NULL,NULL,2),(38,'Eva',NULL,1,1,NULL,NULL,2),(39,'Filipe',NULL,1,NULL,NULL,NULL,1),(40,'Elza',NULL,1,NULL,NULL,NULL,1),(41,'Ufe',NULL,1,NULL,NULL,NULL,1);
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
INSERT INTO `resultados` VALUES (1,'3','2025-06-28 23:58:48'),(2,'2','2025-06-28 23:58:49'),(3,'3','2025-06-29 00:05:29'),(4,'2','2025-06-29 00:05:30'),(5,'2','2025-06-29 14:22:41'),(6,'3','2025-06-29 14:22:42'),(7,'3','2025-06-29 14:28:37'),(8,'1','2025-06-29 14:28:39'),(9,'1','2025-06-29 14:33:56'),(10,'3','2025-06-29 14:33:57'),(11,'3','2025-06-29 14:41:09'),(12,'2','2025-06-29 14:41:10'),(13,'3','2025-06-29 21:40:00'),(14,'1','2025-06-29 21:40:01'),(15,'3','2025-06-29 21:45:17'),(16,'2','2025-06-29 21:45:19'),(17,'1','2025-06-29 21:51:02'),(18,'3','2025-06-29 21:51:03'),(19,'4','2025-06-29 21:55:55'),(20,'0','2025-06-29 21:55:56'),(21,'1','2025-06-30 21:14:46'),(22,'3','2025-06-30 21:14:47'),(23,'2','2025-06-30 21:24:45'),(24,'3','2025-06-30 21:24:46');
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
INSERT INTO `resultados_copa` VALUES (1,NULL,4,NULL,'2025-08-05 21:25:24'),(2,NULL,1,NULL,'2025-08-05 21:25:24'),(3,NULL,1,NULL,'2025-08-07 21:54:07'),(4,NULL,2,NULL,'2025-08-07 21:54:07'),(5,NULL,4,NULL,'2025-08-05 21:32:55'),(6,NULL,3,NULL,'2025-08-05 21:32:55'),(7,NULL,4,NULL,'2025-08-07 22:02:09'),(8,NULL,2,NULL,'2025-08-07 22:02:09'),(9,NULL,3,NULL,'2025-08-06 22:54:19'),(10,NULL,4,NULL,'2025-08-06 22:54:19'),(11,NULL,4,NULL,'2025-08-10 20:44:30'),(12,NULL,2,NULL,'2025-08-10 20:44:30'),(13,NULL,3,NULL,'2025-08-06 22:54:26'),(14,NULL,4,NULL,'2025-08-06 22:54:26'),(15,NULL,3,NULL,'2025-08-10 20:53:05'),(16,NULL,4,NULL,'2025-08-10 20:53:05'),(17,NULL,4,NULL,'2025-08-16 20:56:02'),(18,NULL,2,NULL,'2025-08-16 20:56:02'),(19,NULL,1,NULL,'2025-08-16 22:05:31'),(20,NULL,3,NULL,'2025-08-16 22:05:31'),(21,NULL,2,NULL,'2025-08-16 21:05:03'),(22,NULL,4,NULL,'2025-08-16 21:05:03'),(23,NULL,3,NULL,'2025-08-16 22:12:12'),(24,NULL,0,NULL,'2025-08-16 22:12:12'),(25,NULL,3,NULL,'2025-08-22 22:42:06'),(26,NULL,4,NULL,'2025-08-22 22:42:06'),(27,NULL,3,NULL,'2025-08-22 22:51:25'),(28,NULL,4,NULL,'2025-08-22 22:51:25'),(29,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL),(35,NULL,4,NULL,'2025-08-10 21:00:36'),(36,NULL,2,NULL,'2025-08-10 21:00:36'),(37,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL),(41,NULL,4,NULL,'2025-08-22 23:01:35'),(42,NULL,1,NULL,'2025-08-22 23:01:35'),(43,NULL,4,NULL,'2025-08-16 22:21:01'),(44,NULL,1,NULL,'2025-08-16 22:21:01'),(45,NULL,0,NULL,'2025-08-16 22:26:33'),(46,NULL,2,NULL,'2025-08-16 22:26:33'),(47,NULL,NULL,NULL,NULL),(48,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times_copa`
--

LOCK TABLES `times_copa` WRITE;
/*!40000 ALTER TABLE `times_copa` DISABLE KEYS */;
INSERT INTO `times_copa` VALUES (143,'Juventude'),(144,'Once Caldas'),(145,'Castelão'),(146,'Raiden'),(147,'Penharol'),(148,'Brécia'),(149,'Ases'),(150,'Brastemp'),(151,'Raiden'),(152,'Juventude'),(153,'Ases'),(154,'Brécia'),(155,'Raiden'),(156,'Brécia'),(157,'Juventude'),(158,'Ases');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times_sorteados`
--

LOCK TABLES `times_sorteados` WRITE;
/*!40000 ALTER TABLE `times_sorteados` DISABLE KEYS */;
INSERT INTO `times_sorteados` VALUES (58,'Raiden'),(59,'Element'),(60,'Once Caldas'),(61,'Panasonic');
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
INSERT INTO `times_tb` VALUES (1,'Castelão',1,'utils/escudoTimes/castelao.png'),(2,'Democration',1,'utils/escudoTimes/democration.png'),(3,'Brécia',1,'utils/escudoTimes/brécia.png'),(4,'Chips',1,'utils/escudoTimes/chips.png'),(5,'Panasonic',2,'utils/escudoTimes/Panasonic.png'),(6,'Element',2,'utils/escudoTimes/element.png'),(7,'Brastemp',2,'utils/escudoTimes/brastemp.png'),(8,'Juventude',2,NULL),(9,'Raiden',3,'utils/escudoTimes/raiden.png'),(10,'Halor',3,'utils/escudoTimes/halor.png'),(11,'Galaxy',3,NULL),(12,'Penharol',3,'utils/escudoTimes/penharol.png'),(13,'Ases',4,'utils/escudoTimes/ases.png'),(14,'Once Caldas',4,'utils/escudoTimes/once caldas.png'),(15,'Lacta',4,NULL),(16,'Vans',4,NULL),(17,'Sem time',5,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneio`
--

LOCK TABLES `torneio` WRITE;
/*!40000 ALTER TABLE `torneio` DISABLE KEYS */;
INSERT INTO `torneio` VALUES (25,'Element',3,-5,NULL),(26,'Once Caldas',5,3,NULL),(27,'Raiden',8,6,NULL),(28,'Panasonic',3,-4,NULL);
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

-- Dump completed on 2025-08-23  0:01:16
