-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cli_cliente`
--

DROP TABLE IF EXISTS `cli_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_cliente` (
  `CLI_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `CLI_NOME` varchar(255) NOT NULL,
  `CLI_ENDERECO` varchar(255) NOT NULL,
  `CLI_BAIRRO` varchar(255) NOT NULL,
  `CLI_NUMERO` int(10) NOT NULL,
  `CLI_CNPJ` varchar(255) NOT NULL,
  `CLI_TELEFONE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLI_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_cliente`
--

LOCK TABLES `cli_cliente` WRITE;
/*!40000 ALTER TABLE `cli_cliente` DISABLE KEYS */;
INSERT INTO `cli_cliente` VALUES (1,'Brenda','Rua da Palmeira','Sabia',100,'1234567891','31321020'),(2,'Magalhaes','Rua da Selva','Infantaria',1,'1020304050','31015060'),(3,'Pedro','Rua do Hotel','Shopping',1100,'2030540607','30301414');
/*!40000 ALTER TABLE `cli_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_custo`
--

DROP TABLE IF EXISTS `cus_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_custo` (
  `CUS_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_NOME` varchar(255) NOT NULL,
  `CUS_VALOR` double NOT NULL,
  PRIMARY KEY (`CUS_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_custo`
--

LOCK TABLES `cus_custo` WRITE;
/*!40000 ALTER TABLE `cus_custo` DISABLE KEYS */;
INSERT INTO `cus_custo` VALUES (1,'Areia',1000),(2,'Cimento',2000),(3,'Aditivo',500);
/*!40000 ALTER TABLE `cus_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `des_despesa`
--

DROP TABLE IF EXISTS `des_despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `des_despesa` (
  `DES_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `DES_NOME` varchar(255) NOT NULL,
  `DES_VALOR` double NOT NULL,
  PRIMARY KEY (`DES_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `des_despesa`
--

LOCK TABLES `des_despesa` WRITE;
/*!40000 ALTER TABLE `des_despesa` DISABLE KEYS */;
INSERT INTO `des_despesa` VALUES (1,'Transporte',10000),(2,'Salário',50000),(3,'Materias',1000);
/*!40000 ALTER TABLE `des_despesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_estoque`
--

DROP TABLE IF EXISTS `est_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `est_estoque` (
  `EST_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `EST_NOME` varchar(45) NOT NULL,
  `EST_QUANTIDADE` int(11) NOT NULL,
  `EST_DESCRICAO` varchar(255) NOT NULL,
  `PRO_CODIGO` int(11) NOT NULL,
  `PER_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`EST_CODIGO`),
  KEY `fk_EST_ESTOQUE_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  KEY `fk_EST_ESTOQUE_PER_PERDA1_idx` (`PER_CODIGO`),
  CONSTRAINT `fk_EST_ESTOQUE_PER_PERDA1` FOREIGN KEY (`PER_CODIGO`) REFERENCES `per_perda` (`PER_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EST_ESTOQUE_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_estoque`
--

LOCK TABLES `est_estoque` WRITE;
/*!40000 ALTER TABLE `est_estoque` DISABLE KEYS */;
INSERT INTO `est_estoque` VALUES (1,'Bloco de Vedação',10000,'Bloco A',1,1),(2,'Bloco Estrutural',20000,'BLoco B',2,2),(3,'Bloco A',5000,'Vedação',1,2),(4,'Bloco B',10000,'Estrutural',2,1);
/*!40000 ALTER TABLE `est_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `its_itensvenda`
--

DROP TABLE IF EXISTS `its_itensvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `its_itensvenda` (
  `PRO_CODIGO` int(11) NOT NULL,
  `VEN_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`PRO_CODIGO`,`VEN_CODIGO`),
  KEY `fk_PRO_PRODUTO_has_VEN_VENDA_VEN_VENDA1_idx` (`VEN_CODIGO`),
  KEY `fk_PRO_PRODUTO_has_VEN_VENDA_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  CONSTRAINT `fk_PRO_PRODUTO_has_VEN_VENDA_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRO_PRODUTO_has_VEN_VENDA_VEN_VENDA1` FOREIGN KEY (`VEN_CODIGO`) REFERENCES `ven_venda` (`VEN_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `its_itensvenda`
--

LOCK TABLES `its_itensvenda` WRITE;
/*!40000 ALTER TABLE `its_itensvenda` DISABLE KEYS */;
INSERT INTO `its_itensvenda` VALUES (1,1),(2,1),(1,2),(2,2);
/*!40000 ALTER TABLE `its_itensvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot_lote`
--

DROP TABLE IF EXISTS `lot_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lot_lote` (
  `LOT_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `LOT_NOME` varchar(255) NOT NULL,
  `LOT_QUANTIDADE` int(11) NOT NULL,
  `LOT_DESCRICAO` varchar(255) NOT NULL,
  `PRO_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`LOT_CODIGO`),
  KEY `fk_LOT_LOTE_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  CONSTRAINT `fk_LOT_LOTE_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot_lote`
--

LOCK TABLES `lot_lote` WRITE;
/*!40000 ALTER TABLE `lot_lote` DISABLE KEYS */;
INSERT INTO `lot_lote` VALUES (1,'bloco A',3000,'fabricacao propria',1),(2,'bloco B',2000,'fabrcado dia 01',2);
/*!40000 ALTER TABLE `lot_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `met_meta`
--

DROP TABLE IF EXISTS `met_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_meta` (
  `MET_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `MET_META` varchar(255) NOT NULL,
  `MET_MES` varchar(45) NOT NULL,
  `MET_ANO` varchar(45) NOT NULL,
  `MET_DESCRICAO` varchar(255) NOT NULL,
  `MET_PRODUTO` varchar(45) NOT NULL,
  PRIMARY KEY (`MET_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_meta`
--

LOCK TABLES `met_meta` WRITE;
/*!40000 ALTER TABLE `met_meta` DISABLE KEYS */;
INSERT INTO `met_meta` VALUES (1,'Produção','01','2018','produção de blocos','bloco A'),(2,'produzir bem','02','2017','carnaval','Bloco B'),(3,'Produção','03','2016','pácoa','bloco A');
/*!40000 ALTER TABLE `met_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_perda`
--

DROP TABLE IF EXISTS `per_perda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perda` (
  `PER_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PER_ORDEM` varchar(255) NOT NULL,
  `PER_QUANTIDADE` int(11) NOT NULL,
  `PER_MOTIVO` varchar(255) NOT NULL,
  `PER_PRODUTO` varchar(45) NOT NULL,
  PRIMARY KEY (`PER_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_perda`
--

LOCK TABLES `per_perda` WRITE;
/*!40000 ALTER TABLE `per_perda` DISABLE KEYS */;
INSERT INTO `per_perda` VALUES (1,'1',200,'quebra','Bloco A'),(2,'2',50,'descuido','Bloco B'),(3,'3',150,'falta de atenção','Bloco B');
/*!40000 ALTER TABLE `per_perda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_producao`
--

DROP TABLE IF EXISTS `prd_producao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prd_producao` (
  `PRD_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PRD_DATA` varchar(45) NOT NULL,
  `CUS_CODIGO` int(11) NOT NULL,
  `ORD_CODIGO` int(11) NOT NULL,
  `PRD_TABUAS` int(11) NOT NULL,
  PRIMARY KEY (`PRD_CODIGO`),
  KEY `fk_PRD_PRODUCAO_CUS_CUSTO1_idx` (`CUS_CODIGO`),
  KEY `fk_PRD_PRODUCAO_ORD_ORDEM1_idx` (`ORD_CODIGO`),
  CONSTRAINT `fk_PRD_PRODUCAO_CUS_CUSTO1` FOREIGN KEY (`CUS_CODIGO`) REFERENCES `cus_custo` (`CUS_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRD_PRODUCAO_ORD_ORDEM1` FOREIGN KEY (`ORD_CODIGO`) REFERENCES `tbl_os` (`OS_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_producao`
--

LOCK TABLES `prd_producao` WRITE;
/*!40000 ALTER TABLE `prd_producao` DISABLE KEYS */;
INSERT INTO `prd_producao` VALUES (4,'10-10-2016',1,1,100),(5,'15-11-2017',2,2,2000),(6,'28-10-2018',1,1,5000);
/*!40000 ALTER TABLE `prd_producao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_os`
--

DROP TABLE IF EXISTS `tbl_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_os` (
  `OS_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `OS_PRODUTO` varchar(255) NOT NULL,
  `OS_DATAINICIO` varchar(45) NOT NULL,
  `OS_DATAEXPIRACAO` varchar(45) NOT NULL,
  `OS_QUANTIDADE` int(11) NOT NULL,
  `OS_FUNCIONARIO` varchar(255) NOT NULL,
  `OS_DESCRICAO` varchar(255) NOT NULL,
  `PRO_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`OS_CODIGO`),
  KEY `fk_ORD_ORDEM_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  CONSTRAINT `fk_ORD_ORDEM_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_os`
--

LOCK TABLES `tbl_os` WRITE;
/*!40000 ALTER TABLE `tbl_os` DISABLE KEYS */;
INSERT INTO `tbl_os` VALUES (1,'1','01-01-2018','01-02-2018',1000,'Felipe','Bloco A',1),(2,'2','01-03-2017','01-04-2017',5000,'Jairo','Bloco B',2),(3,'3','01-02-2016','01-03-2016',2000,'Danilo','Bloco A',1);
/*!40000 ALTER TABLE `tbl_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pessoa`
--

DROP TABLE IF EXISTS `tbl_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pessoa` (
  `PES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PES_NOME` varchar(255) NOT NULL,
  `PES_SENHA` varchar(255) NOT NULL,
  `PES_EMAIL` varchar(255) NOT NULL,
  `PES_TIPO` varchar(45) NOT NULL,
  `USU_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`PES_ID`),
  KEY `fk_TBL_PESSOA_USU_USUARIO1_idx` (`USU_CODIGO`),
  CONSTRAINT `fk_TBL_PESSOA_USU_USUARIO1` FOREIGN KEY (`USU_CODIGO`) REFERENCES `tbl_usuario` (`USU_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pessoa`
--

LOCK TABLES `tbl_pessoa` WRITE;
/*!40000 ALTER TABLE `tbl_pessoa` DISABLE KEYS */;
INSERT INTO `tbl_pessoa` VALUES (1,'Admin','1234','admin@admin','1',1),(2,'Client','1234','client@client','1',2),(3,'Jose','1234','jose@jose.com','1',3),(4,'Joao','1234','joao@joao.com','1',4);
/*!40000 ALTER TABLE `tbl_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `PRO_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_NOME` varchar(255) NOT NULL,
  `PRO_PRECO` double NOT NULL,
  `PRO_QUANTIDADE` int(11) NOT NULL,
  `PRO_DESCRICAO` varchar(255) NOT NULL,
  `PRO_FOTO` varchar(255) NOT NULL DEFAULT 'DEFAULT NULL',
  `PRO_QUANTIDADEMINIMA` varchar(45) NOT NULL,
  `PRO_ATIVO` int(1) NOT NULL,
  `VEN_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`PRO_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'Bloco A',1,20000,'Bloco consturção','bloco estrutural.jpg','5000',1,1),(2,'Bloco B',2,20000,'Bloco construção','bloco estrutural','5000',1,2);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `USU_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `USU_NOME` varchar(255) NOT NULL,
  `USU_SENHA` varchar(45) NOT NULL,
  `USU_ATIVO` varchar(45) NOT NULL,
  `USU_SOBRENOME` varchar(255) NOT NULL,
  PRIMARY KEY (`USU_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'Admin','1234','1','Admin'),(2,'Client','1234','1','Client'),(3,'Jose','1234','1','Magal'),(4,'Joao','1234','1','Silva');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ven_venda`
--

DROP TABLE IF EXISTS `ven_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ven_venda` (
  `VEN_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `VEN_NOME` varchar(255) NOT NULL,
  `VEN_DATA` varchar(45) NOT NULL,
  `VEN_QUANTIDADE` int(11) NOT NULL,
  `CLI_CODIGO` int(11) NOT NULL,
  `PRO_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`VEN_CODIGO`),
  KEY `fk_VEN_VENDA_CLI_CLIENTE1_idx` (`CLI_CODIGO`),
  CONSTRAINT `fk_VEN_VENDA_CLI_CLIENTE1` FOREIGN KEY (`CLI_CODIGO`) REFERENCES `cli_cliente` (`CLI_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ven_venda`
--

LOCK TABLES `ven_venda` WRITE;
/*!40000 ALTER TABLE `ven_venda` DISABLE KEYS */;
INSERT INTO `ven_venda` VALUES (1,'Ceramica','10-10-2018',20000,1,2),(2,'Loja do Jão','15-11-2017',30000,2,1),(3,'Loja do Pedro','05-05-2016',50000,3,2);
/*!40000 ALTER TABLE `ven_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18  0:58:51
