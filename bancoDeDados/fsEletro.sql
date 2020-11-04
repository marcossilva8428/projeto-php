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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(40) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Marcos Silva','Rua A bairro flores','Geladeira Frost Free Consul Prata 340 litros',1910.00,1,1910.00),(2,'Jovino Ramos','Rua b bairro palmares','Consul Inox com Mesa de Vidro',1129.00,1,1129.00),(3,'Madalena Macanoel','Rua c bairro dos patriarcas','Forno de Microondas Electrolux 20L Branco',436.05,1,436.05);
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
INSERT INTO `produto` VALUES (3,NULL,'geladeira','Geladeira Frost Free Consul Prata 340 litros',2086.00,1910.00,'imagens/produtos/geladeiraBrastempPrata.jpeg'),(4,NULL,'fogao','Fogao 4 Bocas Consul Inox com Mesa de Vidro',1200.90,1129.00,'imagens/produtos/fogaoBrastemp4BocasPrata.jpeg'),(5,NULL,'fogao','Fogao de piso 4 Bocas Brastemp',600.00,519.70,'imagens/produtos/fogaoBrastemp4BocasBranco.jpeg'),(6,NULL,'microondas','Microondas Consul 32 Litros Inox 220V',1200.98,1130.00,'imagens/produtos/microondasConsulPrata.jpeg'),(7,NULL,'microondas','Microondas 25L Espelhado Philco 220V',508.70,464.53,'imagens/produtos/microondasPhilcoPrata.jpeg'),(8,NULL,'microondas','Forno de Microondas Electrolux 20L Branco',459.90,436.05,'imagens/produtos/microondasEletroluxBranco.jpeg'),(9,NULL,'lava-louca','Lava-Louça Electrolux Inox',3599.00,2799.90,'imagens/produtos/lavaLoucaEletrolux.jpeg'),(10,NULL,'lava-louca','Lava Louça Compacta Brastemp',1970.50,1730.61,'imagens/produtos/lavaLoucaBrastemp.jpeg'),(11,NULL,'lavadora-de-roupa','Lavadora de Roupas Brastemp 11kg',1699.00,1214.00,'imagens/produtos/lavaRoupasEletrolux.jpeg'),(12,NULL,'lavadora-de-roupa','Lavadora de Roupas Philco Inverter 12KG',2399.00,2179.00,'imagens/produtos/lavaSecaRoupasConsul.jpeg');
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

-- Dump completed on 2020-10-25 20:56:10
