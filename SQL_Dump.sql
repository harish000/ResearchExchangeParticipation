CREATE DATABASE  IF NOT EXISTS `REP_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `REP_test`;

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `StudyID` varchar(40) NOT NULL DEFAULT '',
  `emailid` varchar(40) NOT NULL DEFAULT '',
  `Choice` varchar(40) DEFAULT NULL,
  `DateSubmitted` datetime DEFAULT NULL,
  PRIMARY KEY (`StudyID`,`emailid`),
  UNIQUE KEY `UniqueSkuAttribKey` (`StudyID`,`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('255','srangan4@uncc.edu','Game of Thrones','2016-04-02 00:00:00'),('255','sri@gmail.com','Game of Thrones','2016-04-02 00:00:00'),('287','srangan4@uncc.edu','Democrats','2016-04-02 00:00:00'),('318','anu@gmail.com','kjb','1969-12-31 00:00:00');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('Usha','usha@gmail.com','Send me details'),('Usha','usha@gmail.com','Send me details'),('Sriharish','srangan4@uncc.edu','NBAD is GREAT..!!!'),('Sriharish Ranganathan','r.sriharish@gmail.com','Wassup? ');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot`
--

DROP TABLE IF EXISTS `forgot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot` (
  `Email` varchar(50) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `Token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot`
--

LOCK TABLES `forgot` WRITE;
/*!40000 ALTER TABLE `forgot` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `StudyID` varchar(40) DEFAULT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `AnswerType` varchar(10) DEFAULT NULL,
  `Option1` varchar(40) DEFAULT NULL,
  `Option2` varchar(40) DEFAULT NULL,
  `Option3` varchar(40) DEFAULT NULL,
  `Option4` varchar(40) DEFAULT NULL,
  `Option5` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'648','Who will win 2016 Elections?','RESEARCH','Democrats','Republicans','None of the above','NULL','NULL'),(2,'287','Who will win 2016 Elections?','RESEARCH','Democrats','Republicans','None of the above','NULL','NULL'),(3,'255','What is your favorite TV Show?','RESEARCH','Game of Thrones','Big Bang Theory','Flash','NULL','NULL'),(4,'8','Some text','RESEARCH','hello','world','wassup','NULL','NULL'),(5,'818','What is your favorite movie? ','RESEARCH','Batman','Superman','Spiderman','NULL','NULL'),(6,'272','What is your favorite game? ','RESEARCH','COD','NFS','CSGO','NULL','NULL'),(7,'786','What is a study?','RESEARCH','Fun ','Sad','Happy','NULL','NULL'),(8,'841','testing a new study','RESEARCH','Working','Not working','Crashed','NULL','NULL'),(9,'355','Testing edit study','RESEARCH','Working','Not working','Crashed','NULL','NULL'),(10,'267','Testing edit study','RESEARCH','1','2','3','NULL','NULL'),(11,'549','Testing edit study','RESEARCH','1','2','3','NULL','NULL'),(12,'790','Testing edit study','RESEARCH','1','2','3','NULL','NULL'),(13,'598','Testing edit study','RESEARCH','1','2','3','NULL','NULL'),(14,'201','Testing edit study','RESEARCH','1','2','3','NULL','NULL'),(15,'705','testing from os','RESEARCH','12','23','34','NULL','NULL');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `friend_email` varchar(50) NOT NULL,
  `message` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES ('Pratyusha','pratyusha@gmail.com','priyanka@gmail.com','Recommending Priyanks'),('Pratyusha','pratyusha@gmail.com','priyanka@gmail.com','Recommending Priyanks'),('Sivasubramanian Sivaramakrishnan','siva.sivaramakrishnan@mavs.uta.edu','siva.sivaramakrishnan@mavs.uta.edu','Check this out');
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reported`
--

DROP TABLE IF EXISTS `reported`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reported` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `StudyID` varchar(40) NOT NULL DEFAULT '',
  `Date` date DEFAULT NULL,
  `NumParticipants` int(15) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `emailid` varchar(45) NOT NULL,
  `Question` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`StudyID`,`emailid`),
  KEY `QuestionID` (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reported`
--

LOCK TABLES `reported` WRITE;
/*!40000 ALTER TABLE `reported` DISABLE KEYS */;
/*!40000 ALTER TABLE `reported` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study` (
  `StudyID` varchar(40) NOT NULL DEFAULT '',
  `StudyName` varchar(40) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `ReqParticipants` int(15) DEFAULT NULL,
  `ActParticipants` int(15) DEFAULT NULL,
  `SStatus` varchar(10) DEFAULT NULL,
  `Question` varchar(200) DEFAULT NULL,
  `Answers` varchar(300) DEFAULT NULL,
  `ImageURL` longblob,
  PRIMARY KEY (`StudyID`),
  KEY `emailid` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempuser`
--

DROP TABLE IF EXISTS `tempuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempuser` (
  `UName` varchar(40) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `Token` varchar(50) DEFAULT NULL,
  `Salt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempuser`
--

LOCK TABLES `tempuser` WRITE;
/*!40000 ALTER TABLE `tempuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `emailid` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Studies` int(15) DEFAULT NULL,
  `Participation` int(15) DEFAULT NULL,
  `Coins` int(15) DEFAULT NULL,
  `salt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('r.sriharish94@gmail.com','f91e421dad38fb8cd16f908a73b96e0273b76fc5ea54288e609cab7d1cecd86f','Sri','Participant',0,0,0,'KAjy4jKdpTOmW8agXm9v/0Bv9UMN1h11KStdzXJi//0='),('r.sriharish@gmail.com','3641e0889608aa9c999c016c05d00011ebe2b5d83a569c2a1bda5b82afbb0e69','Sriharish','admin',0,0,0,'xlWkEvtESDoSQpO3nEymQW0HG0WMldSCxdxpU0fGmwQ=');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
-- Dump completed on 2016-04-02 21:07:39

  
-- Create music_user and grant privileges

DELIMITER //
CREATE PROCEDURE drop_user_if_exists()
BEGIN
    DECLARE userCount BIGINT DEFAULT 0 ;

    SELECT COUNT(*) INTO userCount FROM mysql.user
    WHERE User = 'root' and  Host = 'localhost';

    IF userCount > 0 THEN
        DROP USER root@localhost;
    END IF;
END ; //
DELIMITER ;


CALL drop_user_if_exists() ;

CREATE USER root@localhost IDENTIFIED BY 'sesame';

GRANT SELECT, INSERT, UPDATE, DELETE
ON REP_test.*
TO root@localhost;

