-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: it_jobs
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `pdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (19,'Java Web','<h6><em>Job description</em></h6>\r\n<p>Trained in HTML, CSS, Bootstrap to build templates.<br>\r\nTrained in Java JSP, Java core, Framework Spring, Hibernate ... in addition to training in SQL database, Oracle.<br>\r\nPerform other tasks at the request of the team leader.</p>\r\n\r\n<h6><em>Applicant requirements</em></h6>\r\n<p>Graduated from universities related to IT majors, CNPM ...<br>\r\nCan meet to work full time.<br>\r\nHave programming knowledge of the language: Java, SQL.<br>\r\nHaving good knowledge of OOP programming is an advantage, good logical thinking.<br>\r\nWork hard and have the ability to quickly grasp new technologies.</p>','WebDeveloper','Active','HaNoi','2022-06-10 08:41:55'),(21,'IT helpdesk','<h6><em>Job description</em></h6>\r\n<p>User support, use Mail server, Files server, Internet<br>\r\nNetwork management, wifi. <br>\r\nServer administration<br>\r\nInformation system management, computer network management;<br>\r\nPerform system backup, data storage, construction, and reporting on server system planning.<br>\r\nSecurity of factory data, documents and secrets.<br>\r\nManage and troubleshoot problems related to hardware devices, and peripherals, factory computers.<br>\r\nBuilding and designing network systems, planning and deploying network systems and server systems.<br>\r\nManage all data backup and recovery systems.<br>\r\nPlan periodic maintenance, repair, upgrade Other tasks as assigned by direct management & indirectly<br>\r\nImplementing the design, building software to support & improve the factory operation system.</p>\r\n<h6><em>Applicant requirements</em></h6>\r\n<p>Work experience: 2-3 years of experience in equivalent positions.<br>\r\nGraduated from university or higher specializing in information technology at The National University / FPT. <br>\r\nProfessional/knowledge priority: Majors in information technology, computer science, software programming. <br>\r\nIn-depth knowledge of Fortigate\'s networking devices, firewall devices<br>\r\nPriority is given to having certificates specializing in network management such as: MCSA, MCSE, MCITCP, CCNA, CCNP (Router & Switch), Firewall<br>\r\nPrioritize you with in-depth knowledge of VBA, C#, SQL Server programming...</p>','ITHelpdesk','Active','HaNoi','2022-06-10 08:54:07'),(22,'Sql Server','<h6><em>Job description</em></h6>\r\n<p>Working on migration of data feeds from legacy Oracle Data Warehouse to new SQL Server Data Warehouse \r\nResponsible for:<br>\r\n+ Code Development and Unit Testing<br>\r\n+ Deploy Preparation<br>\r\n+ Level 2 Production Support<br>\r\n+ Analysis of existing code for data flows in the Oracle warehouse and rebuild it in SQL Server</p>\r\n\r\n<h6><em>Applicant requirements</em></h6>\r\nBachelor Degree in Computer Science or similar degree with strong focus on programming and database design.<br> \r\nRequired Skills and Experience:<br> \r\n+ Working with SQL Server databases (2016 or newer) including Transact-SQL programming<br> \r\n+ Building data processing flows in SQL Server Integration Services (SSIS)<br> \r\n+ Intermediate English<br> \r\nPreferred Skills<br> \r\n+ Experience of designing, building, testing, and deploying financial software for the asset management industry<br> \r\n+ Experience of building processes using Service Broker within SQL Server<br> \r\n+ Experience of Git version control, ideally in Azure Devops<br> \r\n+ JIRA</p>','SQLDeveloper','Active','DaNang','2022-06-10 09:00:32'),(23,'AI Engieer','<h6><em>Job description</em></h6>\r\n<p>Research, develop plans, program, test and optimize the results of AI problems in the following fields:<br>\r\nImage processing: Object Detection, Segmentation, Classification; OCR; Image Captionin<br>\r\nSmart Camera problems<br>\r\nOptimize algorithms, algorithms to build real-time processing programs</p>\r\n<h6><em>Applicant requirements</em></h6>\r\n<p>Education level: University.<br>\r\nKnowledge/Experience:<br>\r\n1-3 years of experience in AI/Computer Vision<br>\r\nAccepting new graduates and less than 1 year of experience, requires agility to be proactive in the work<br>\r\nGood programming capabilities with Python/C++ (priority can do both)<br>\r\nGood use of 1 of ai frameworks: Pytorch, Keras, Tensorflow<br>\r\nCapable of changing, optimizing models, optimizing training processes, data</p>','AIEngineer','Active','SaiGon','2022-06-10 09:04:58');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Kien','kdt@gmail.com','123','Python','user'),(2,'Manh','mctd@gmail.com','123','C#','user'),(3,'Tuan','nvt@gmail.com','123','C/C++','user'),(4,'Hanh','nthh@gmail.com','123','SQL','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10 17:13:43
