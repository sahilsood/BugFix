-- MySQL dump 10.13  Distrib 5.6.12, for osx10.7 (x86_64)
--
-- Host: localhost    Database: bugfix
-- ------------------------------------------------------
-- Server version	5.6.12-enterprise-commercial-advanced

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
-- Table structure for table `answercommentmaster`
--

DROP TABLE IF EXISTS `answercommentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answercommentmaster` (
  `answer_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `user_id` int(11) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`answer_comment_id`),
  KEY `fk_answercommentmaster_1_idx` (`user_id`),
  KEY `fk_answercommentmaster_2_idx` (`answer_id`),
  CONSTRAINT `fk_answercommentmaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_answercommentmaster_2` FOREIGN KEY (`answer_id`) REFERENCES `answermaster` (`answer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answercommentmaster`
--

LOCK TABLES `answercommentmaster` WRITE;
/*!40000 ALTER TABLE `answercommentmaster` DISABLE KEYS */;
INSERT INTO `answercommentmaster` VALUES (1,'Thank You for Answering',1,'2015-04-07 00:28:44',1),(2,'Thank You for Answering',1,'2015-04-07 00:28:53',2),(3,'Thank You for Answering',2,'2015-04-07 00:29:06',3),(4,'Thank You for Answering',2,'2015-04-07 00:29:16',4),(5,'Thank You for Answering',3,'2015-04-07 00:29:27',5),(6,'Thank You for Answering',3,'2015-04-07 00:30:06',6),(7,'Thank You for Answering',4,'2015-04-07 00:30:17',7),(8,'Thank You for Answering',4,'2015-04-07 00:30:25',8),(9,'Thank You for Answering',5,'2015-04-07 00:30:34',9),(10,'Thank You for Answering',5,'2015-04-07 00:30:44',10),(11,'Thank You for Answering',6,'2015-04-07 00:30:53',11),(12,'Thank You for Answering',6,'2015-04-07 00:31:01',12),(13,'Thank You for Answering',7,'2015-04-07 00:31:10',13),(14,'Thank You for Answering',7,'2015-04-07 00:31:19',14),(15,'Thank You for Answering',8,'2015-04-07 00:31:29',15),(16,'Thank You for Answering',8,'2015-04-07 00:31:37',16),(17,'Thank You for Answering',9,'2015-04-07 00:31:48',17),(18,'Thank You for Answering',9,'2015-04-07 00:31:59',18),(19,'Thank You for Answering',10,'2015-04-07 00:32:10',19),(20,'Thank You for Answering',10,'2015-04-07 00:32:19',20);
/*!40000 ALTER TABLE `answercommentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answermaster`
--

DROP TABLE IF EXISTS `answermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answermaster` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `is_correct` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `fk_answermaster_1_idx` (`user_id`),
  KEY `fk_answermaster_2_idx` (`question_id`),
  CONSTRAINT `fk_answermaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_answermaster_2` FOREIGN KEY (`question_id`) REFERENCES `questionmaster` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answermaster`
--

LOCK TABLES `answermaster` WRITE;
/*!40000 ALTER TABLE `answermaster` DISABLE KEYS */;
INSERT INTO `answermaster` VALUES (1,'JVM is an abstract machine which provides the runtime environment in which java bytecode can be executed. JRE is the implementation of JVM and physically exists. JDK physically exists. It contains JRE + development tools.',2,1,NULL),(2,'JVM is Java Virtual Machine -- the JVM actually runs Java byte code. JDK is Java Developer Kit -- the JDK is what you need to compile Java source code. JRE is Java Runtime Environment -- is what you need to run a java program -- it contains a JVM, among other things.',3,1,NULL),(3,'The Object Oriented Programming Languages directly represent the real life objects like Car, Jeep, Account, Customer etc. The features of the OO programming languages like polymorphism, inheritance and encapsulation make it powerful.',3,2,NULL),(4,'Object Oriented Programming is a paradigm that provides many concepts such as inheritance, data binding, polymorphism etc.',4,2,NULL),(5,'A way to reuse code of existing objects, establish a subtype from an existing object, or both.',4,3,NULL),(6,'Inheritance is when an object or class is based on another object or class, using the same implementation.',5,3,NULL),(7,'Keywords are a type of Tokens. These keywords are explicitly reserved identifiers that cannot be used as variables.',5,4,NULL),(8,'Keywords are reserved words In C programming and Identifiers are name given to C entities.',6,4,NULL),(9,'An array is data structure which stores a fixed-size sequential collection of elements of the same type. We can store a collection of data.',6,5,NULL),(10,'An array is a container object that holds a fixed number of values of a single type. The length of an array is established when the array is created.',7,5,NULL),(11,'Operating system controls and coordinates the use of the hardware among the various applications programs for various uses. ',7,6,NULL),(12,'Operating system acts as resource allocator and manager. Also operating system is control program which controls the user programs to prevent errors and improper use of the computer.',8,6,NULL),(13,'Time Sharing is a logical extension of Multiprogramming',8,7,NULL),(14,'In Time Sharing systems, CPU executes multiple jobs by switching among them, but the switches occur so frequently that the users can interact with each program while it is running.',9,7,NULL),(15,'Database normalization is a data design and organization process applied to data structures based on rules that help build relational databases.',9,8,NULL),(16,'In relational database design, the process of organizing data to minimize redundancy. Normalization usually involves dividing a database into two or more tables and defining relationships between the tables.',10,8,NULL),(17,'The purpose of garbage collection is to identify and discard objects that are no longer needed by a program so that their resources can be reclaimed and reused. A Java object is subject to garbage collection when it becomes unreachable to the program in which it is used.',10,9,NULL),(18,'In computer science, garbage collection (GC) is a form of automatic memory management. The garbage collector, or just collector, attempts to reclaim garbage, or memory occupied by objects that are no longer in use by the program.',1,9,NULL),(19,'Pass By Reference means the passing the address itself rather than passing the value. Pass by Value means passing a copy of the value to be passed.',1,10,NULL),(20,'Passing by reference means the called functions parameter will be the same as the callers passed argument (not the value, but the identity - the variable itself). Pass by value means the called functions parameter will be a copy of the callers passed argument.',2,10,NULL);
/*!40000 ALTER TABLE `answermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answervotemaster`
--

DROP TABLE IF EXISTS `answervotemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answervotemaster` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_favour` tinyint(4) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `fk_answervotemaster_1_idx` (`user_id`),
  KEY `fk_answervotemaster_2_idx` (`answer_id`),
  CONSTRAINT `fk_answervotemaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_answervotemaster_2` FOREIGN KEY (`answer_id`) REFERENCES `answermaster` (`answer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answervotemaster`
--

LOCK TABLES `answervotemaster` WRITE;
/*!40000 ALTER TABLE `answervotemaster` DISABLE KEYS */;
INSERT INTO `answervotemaster` VALUES (3,1,2,4),(4,1,1,4),(5,1,1,4);
/*!40000 ALTER TABLE `answervotemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `fk_city_1_idx` (`state_id`),
  CONSTRAINT `fk_city_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Chandigarh',1,1),(2,'Mohali',1,1),(3,'Shimla',1,2),(4,'Manali',1,2),(5,'Manhattan',1,3),(6,'NY City',1,3),(7,'Newark',1,4),(8,'Trenton',1,4),(9,'Sirhind',1,1),(10,'LCity',1,7),(11,'LCity1',1,7),(12,'CCity',1,8),(13,'CCity1',1,8);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India',1),(2,'US',1),(3,'Pakistan',1),(4,'UK',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqmaster`
--

DROP TABLE IF EXISTS `faqmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqmaster` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(45) DEFAULT NULL,
  `answer` text,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqmaster`
--

LOCK TABLES `faqmaster` WRITE;
/*!40000 ALTER TABLE `faqmaster` DISABLE KEYS */;
INSERT INTO `faqmaster` VALUES (1,'What is the full form of JSTL?','JSP Standard Tag Library',1),(2,'What do you mean by Servlet?','It is used in Server Side Programming',1);
/*!40000 ALTER TABLE `faqmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackmaster`
--

DROP TABLE IF EXISTS `feedbackmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbackmaster` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(45) DEFAULT NULL,
  `feedback_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `fk_feedbackmaster_1_idx` (`user_id`),
  CONSTRAINT `fk_feedbackmaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackmaster`
--

LOCK TABLES `feedbackmaster` WRITE;
/*!40000 ALTER TABLE `feedbackmaster` DISABLE KEYS */;
INSERT INTO `feedbackmaster` VALUES (2,'Impressive UI','2015-03-30 13:21:03',5),(3,'Good Website','2015-03-30 13:27:46',5);
/*!40000 ALTER TABLE `feedbackmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questioncommentmaster`
--

DROP TABLE IF EXISTS `questioncommentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questioncommentmaster` (
  `question_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `user_id` int(11) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_comment_id`),
  KEY `fk_questioncommentmaster_1_idx` (`user_id`),
  KEY `fk_questioncommentmaster_2_idx` (`question_id`),
  CONSTRAINT `fk_questioncommentmaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questioncommentmaster_2` FOREIGN KEY (`question_id`) REFERENCES `questionmaster` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questioncommentmaster`
--

LOCK TABLES `questioncommentmaster` WRITE;
/*!40000 ALTER TABLE `questioncommentmaster` DISABLE KEYS */;
INSERT INTO `questioncommentmaster` VALUES (1,'Good Question',9,'2015-04-06 20:20:46',1),(2,'I too need the answer',10,'2015-04-06 20:21:37',1),(3,'Good Question',10,'2015-04-06 20:23:50',2),(4,'I too need the answer',1,'2015-04-06 20:23:56',2),(5,'Good Question',1,'2015-04-06 21:20:28',3),(6,'I too need the answer',2,'2015-04-06 21:20:50',3),(7,'Good Question',2,'2015-04-06 23:52:42',4),(8,'I too need the answer',3,'2015-04-06 23:53:20',4),(9,'Good Question',3,'2015-04-06 23:53:37',5),(10,'I too need the answer',4,'2015-04-06 23:53:53',5),(11,'Good Question',4,'2015-04-06 23:54:05',6),(12,'I too need the answer',5,'2015-04-06 23:54:15',6),(13,'Good Question',5,'2015-04-06 23:54:28',7),(14,'I too need the answer',6,'2015-04-06 23:54:40',7),(15,'Good Question',6,'2015-04-06 23:54:54',8),(16,'I too need the answer',7,'2015-04-06 23:55:04',8),(17,'Good Question',7,'2015-04-06 23:55:16',9),(18,'I too need the answer',8,'2015-04-06 23:55:26',9),(19,'Good Question',8,'2015-04-06 23:55:39',10),(20,'I too need the answer',9,'2015-04-06 23:55:51',10);
/*!40000 ALTER TABLE `questioncommentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionmaster`
--

DROP TABLE IF EXISTS `questionmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionmaster` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `body` text,
  `tags` text,
  `question_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `fk_questionmaster_1_idx` (`user_id`),
  CONSTRAINT `fk_questionmaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionmaster`
--

LOCK TABLES `questionmaster` WRITE;
/*!40000 ALTER TABLE `questionmaster` DISABLE KEYS */;
INSERT INTO `questionmaster` VALUES (1,'What is difference between JDK, JRE and JVM?','JVM is an acronym for Java Virtual Machine. JRE stands for Java Runtime Environment. JDK is an acronym for Java Development Kit.','Java, Software, Programming','2015-04-06 19:57:20',1,0),(2,'What are the advantages of Object Oriented Programming Languages?','Object-oriented programming (OOP) is a programming paradigm based on the concept of objects','OOPS,Java,Programming','2015-04-06 20:13:37',2,0),(3,'What is Inheritance?','It is a concept of object-oriented programming','OOPS,Programming','2015-04-06 21:16:44',3,0),(4,'What are keywords?','Please explain precisely','C++,Programming','2015-04-06 23:25:03',4,0),(5,'What are Arrays?','Please explain its use.','C++,Programming','2015-04-06 23:28:01',5,0),(6,'What are the basic functions of an operating system?','List some main functions','OS,Software','2015-04-06 23:31:08',6,0),(7,'What is meant by Time-sharing Systems?','What is its use?','OS,Software','2015-04-06 23:34:25',7,0),(8,'What is Normalization in Database?','What are its uses?','DBMS,Programming,SQL','2015-04-06 23:37:57',8,0),(9,'What is the purpose of garbage collection in Java?','when is it used?','Java,Programming','2015-04-06 23:42:33',9,0),(10,'What are pass by reference and pass by value?','Explain in detail.','Java,Programming,C++','2015-04-06 23:46:55',10,0);
/*!40000 ALTER TABLE `questionmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requestmaster`
--

DROP TABLE IF EXISTS `requestmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requestmaster` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_title` varchar(45) DEFAULT NULL,
  `description` text,
  `request_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `fk_requestmaster_1_idx` (`user_id`),
  CONSTRAINT `fk_requestmaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestmaster`
--

LOCK TABLES `requestmaster` WRITE;
/*!40000 ALTER TABLE `requestmaster` DISABLE KEYS */;
INSERT INTO `requestmaster` VALUES (1,'Login Problem','I am not able to login. I sometimes get a Username error.','2015-03-28 00:03:45',4),(2,'Authenticaton Problem','I am not able to authenticate my account through my email id.','2015-03-28 11:03:10',4);
/*!40000 ALTER TABLE `requestmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsemaster`
--

DROP TABLE IF EXISTS `responsemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsemaster` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `response` text,
  `response_date` datetime DEFAULT NULL,
  `response_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`response_id`),
  KEY `fk_responsemaster_1_idx` (`request_id`),
  KEY `fk_responsemaster_2_idx` (`response_user_id`),
  CONSTRAINT `fk_responsemaster_1` FOREIGN KEY (`request_id`) REFERENCES `requestmaster` (`request_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsemaster_2` FOREIGN KEY (`response_user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsemaster`
--

LOCK TABLES `responsemaster` WRITE;
/*!40000 ALTER TABLE `responsemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitymaster`
--

DROP TABLE IF EXISTS `securitymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitymaster` (
  `security_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`security_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitymaster`
--

LOCK TABLES `securitymaster` WRITE;
/*!40000 ALTER TABLE `securitymaster` DISABLE KEYS */;
INSERT INTO `securitymaster` VALUES (1,'What is your favourite color?',1),(2,'What is your favourite dish?',1),(3,'What is your favourite sports?',1),(4,'Who is your favourite player?',1),(7,'Who is your favourite actor?',1);
/*!40000 ALTER TABLE `securitymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `fk_state_1_idx` (`country_id`),
  CONSTRAINT `fk_state_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Punjab',1,1),(2,'HP',1,1),(3,'New York',1,2),(4,'New Jersey',1,2),(5,'Islamabad',1,3),(6,'Lahore',1,3),(7,'London',1,4),(8,'Cambridge',1,4);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccountsecurity`
--

DROP TABLE IF EXISTS `useraccountsecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccountsecurity` (
  `user_id` int(11) NOT NULL,
  `security_question_id` int(11) DEFAULT NULL,
  `answer` text,
  PRIMARY KEY (`user_id`),
  KEY `fk_useraccountsecurity_1_idx` (`security_question_id`),
  CONSTRAINT `fk_useraccountsecurity_1` FOREIGN KEY (`security_question_id`) REFERENCES `securitymaster` (`security_question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_useraccountsecurity_2` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccountsecurity`
--

LOCK TABLES `useraccountsecurity` WRITE;
/*!40000 ALTER TABLE `useraccountsecurity` DISABLE KEYS */;
INSERT INTO `useraccountsecurity` VALUES (1,1,'White'),(2,2,'Pizza'),(3,3,'Cricket'),(4,4,'Sachin'),(5,7,'James'),(6,4,'Dravid'),(7,2,'Pasta'),(8,1,'Blue'),(9,7,'Brian'),(10,4,'Ringo');
/*!40000 ALTER TABLE `useraccountsecurity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(45) DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `profile_pic_path` varchar(45) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_userdetail_2_idx` (`country_id`),
  KEY `fk_userdetail_3_idx` (`state_id`),
  KEY `fk_userdetail_4_idx` (`city_id`),
  CONSTRAINT `fk_userdetail_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_3` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_4` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,'Sahil','Male','1993-04-28','123456','9780697948','sahilsood@msn.com','Bassi Road WN9',1,1,1,NULL,'140406'),(2,'Steve','male','1955-09-11','13123213','232134121','steve@icloud.com','paulo alto cu',2,4,7,NULL,'123421'),(3,'Bill','male','1960-04-23','13123213','232134121','bill@ms.com','ms complex ca',2,4,8,NULL,'123421'),(4,'Kurt','Male','1965-02-20','13123213','232134121','kurt@nvna.com','seattle wdc',2,3,5,NULL,'12421'),(5,'Dave','male','1966-11-12','145213','45675121','dave@ffs.com','scity la',2,3,6,NULL,'546621'),(6,'Krist','Male','1978-09-18','342344151','757658875','Krist@nirvana.com','St 11, SLTS Avenue.',2,4,8,NULL,'213123'),(7,'Eddie','Male','1997-04-15','2131312432','1243242142','pj@prljm.com','Park Street road.',4,7,10,NULL,'2134124'),(8,'Paul','Male','1985-04-01','23232132','23423444','paul@bttl.com','Liverpool city, 12a.',4,8,13,NULL,'344231'),(9,'John','Male','1995-04-30','432343214','234231423','john@bttl.com','lvrpl road, london.',4,8,12,NULL,'4543534'),(10,'George','Male','1965-04-15','2131342142','2142341234','george@bttl.com','Camb Road, CCL Avenue.',4,7,10,NULL,'123223');
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermaster`
--

DROP TABLE IF EXISTS `usermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermaster` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermaster`
--

LOCK TABLES `usermaster` WRITE;
/*!40000 ALTER TABLE `usermaster` DISABLE KEYS */;
INSERT INTO `usermaster` VALUES (1,'admin','admin','administrator','active',NULL,NULL),(2,'emp1','emp1','employee','Active',NULL,NULL),(3,'emp2','emp2','employee','Active',NULL,NULL),(4,'user1','user1','user','Active',NULL,NULL),(5,'user2','user2','user','Active',NULL,NULL),(6,'user3','user3','user','Active',NULL,NULL),(7,'user4','user4','user','Active',NULL,NULL),(8,'user5','user5','user','Active',NULL,NULL),(9,'user6','user6','user','Active',NULL,NULL),(10,'user7','user7','user','Active',NULL,NULL);
/*!40000 ALTER TABLE `usermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrepomaster`
--

DROP TABLE IF EXISTS `userrepomaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrepomaster` (
  `user_id` int(11) NOT NULL,
  `repo` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_userrepomaster_1` FOREIGN KEY (`user_id`) REFERENCES `usermaster` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrepomaster`
--

LOCK TABLES `userrepomaster` WRITE;
/*!40000 ALTER TABLE `userrepomaster` DISABLE KEYS */;
INSERT INTO `userrepomaster` VALUES (1,550),(2,350),(3,300),(4,233),(5,230),(6,230),(7,240),(8,250),(9,220),(10,280);
/*!40000 ALTER TABLE `userrepomaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-10 15:32:32
