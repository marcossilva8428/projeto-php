CREATE DATABASE  IF NOT EXISTS `fseletro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fseletro`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Marcos','Teste de envio de mensagem.','2020-11-02 02:04:54'),(2,'Marcos','Teste de envio de mensagem.','2020-11-02 02:27:54'),(3,'Marcos','Teste de envio de mensagem.','2020-11-02 02:31:34'),(4,'Marcos','Teste de envio de mensagem.','2020-11-02 02:39:55'),(5,'Marcos','Novo teste de envio de mensagem.','2020-11-02 03:47:00'),(6,'','','2020-11-02 03:53:15'),(7,'Marcos','Teste final de envio de mensagens.','2020-11-02 12:13:53'),(8,'BasÃ­lio','OlÃ¡, fiz o pedido agora pouco, gostaria de cancelar. ','2020-11-02 14:31:48'),(9,'Frencesca Giacomo Biazzi','Manja que te fa bene , porca misÃ©ria, Ã´ sole mio entan fronte a te.','2020-11-04 10:16:45');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `prod` varchar(60) DEFAULT NULL,
  `quant` int(100) DEFAULT NULL,
  `ende` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Marcos','Geladeira',1,'3000.00'),(2,'Marcos','Geladeira',1,'3000.00'),(3,'Marcos','Geladeira',1,'3000.00'),(4,'Marcos','FogÃ£o',2,'Av Juscelino Kubitchek'),(5,'Marcos','FogÃ£o',2,'Av Juscelino Kubitchek'),(6,'Tulio','Lava louca',1,'Rua Trindade, 45'),(7,'Marcos','Geladeira',1,'3000.00'),(8,'Edik','Geladeira',2,'Rua Capadocia, 45'),(9,'Alex da Silva','Fogao',3,'Rua das Camelias, 45'),(10,'Marcos','Geladeira',1,'Rua Trindade, 45'),(11,'BasÃ­lio','Lava Roupa',3,'Rua da trombeta, 342'),(12,'Manoel Bacana Fidelis','Fogao',3,'Rua Jeronimo Jovino');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `data_inclusao` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (3,'31/10/2020','geladeira','Geladeira Frost Free Consul Prata 340 litros',2086.00,1910.00,'imagens/produtos/geladeiraBrastempPrata.jpeg'),(4,'31/10/2020','fogao','Fogao 4 Bocas Consul Inox com Mesa de Vidro',1200.90,1129.00,'imagens/produtos/fogaoBrastemp4BocasPrata.jpeg'),(5,'31/10/2020','fogao','Fogao de piso 4 Bocas Brastemp',600.00,519.70,'imagens/produtos/fogaoBrastemp4BocasBranco.jpeg'),(6,'31/10/2020','microondas','Microondas Consul 32 Litros Inox 220V',1200.98,1130.00,'imagens/produtos/microondasConsulPrata.jpeg'),(7,'31/10/2020','microondas','Microondas 25L Espelhado Philco 220V',508.70,464.53,'imagens/produtos/microondasPhilcoPrata.jpeg'),(8,'31/10/2020','microondas','Forno de Microondas Electrolux 20L Branco',459.90,436.05,'imagens/produtos/microondasEletroluxBranco.jpeg'),(9,'31/10/2020','lavaL','Lava-Louca Electrolux Inox',3599.00,2799.90,'imagens/produtos/lavaLoucaEletrolux.jpeg'),(10,'31/10/2020','lavaL','Lava Louca Compacta Brastemp',1970.50,1730.61,'imagens/produtos/lavaLoucaBrastemp.jpeg'),(11,'31/10/2020','lavaR','Lavadora de Roupas Brastemp 11kg',1699.00,1214.00,'imagens/produtos/lavaRoupasEletrolux.jpeg'),(12,'31/10/2020','lavaR','Lavadora de Roupas Philco Inverter 12KG',2399.00,2179.00,'imagens/produtos/lavaSecaRoupasConsul.jpeg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 13:57:39
