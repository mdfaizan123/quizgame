CREATE DATABASE  IF NOT EXISTS `quizgame` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quizgame`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: quizgame
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `question1` longtext NOT NULL,
  `question2` longtext NOT NULL,
  `question3` longtext NOT NULL,
  `question4` longtext NOT NULL,
  `question5` longtext NOT NULL,
  `option1` longtext NOT NULL,
  `option2` longtext NOT NULL,
  `option3` longtext NOT NULL,
  `option4` longtext NOT NULL,
  `option5` longtext NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Easy',' Express a speed of 36 kmph in meters per second?','Express 25 mps in kmph?','The speed of a train is 90 kmph. What is the distance covered by it in 10 minutes?','A car covers a distance of 624 km in 6 ½ hours. Find its speed?','In what time will a railway train 60 m long moving at the rate of 36 kmph pass a telegraph post on its way?','10 mps,12 mps,14 mps,17 mps','15 kmph,99 kmph,90 kmph,None','15 kmph,12 kmph,10 kmph,5 kmph','104 kmph,140 kmph,104 mph,10.4 kmph','9 sec,8 sec,7 sec,6 sec','1,3,1,1,4'),(2,'Medium','The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:','The length of the bridge, which a train 130 meters long and travelling at 45 km/hr can cross in 30 seconds, is:','Two trains running in opposite directions cross a man standing on the platform in 27 seconds and 17 seconds respectively and they cross each other in 23 seconds. The ratio of their speeds is:','200 m,225 m,245 m,250 m','120 metres,180 metres,324 metres,150 metres','45 km/hr,50 km/hr,54 km/hr,55 km/hr','200 m,225 m,245 m,250 m','1 : 3,3 : 2,3 : 4,None of these','3,4,2,3,2'),(3,'Hard','The probability that a number selected at random from the first 50 natural numbers is a composite number is -.','A coin is tossed live times. What is the probability that there is at the least one tail?','If a number is chosen at random from the set {1, 2, 3, ...., 100}, then the probability that the chosen number is a perfect cube is -.','Out of first 20 natural numbers, one number is selected at random. The probability that it is either an even number or a prime number is -.','If two dice are thrown together, the probability of getting an even number on one die and an odd number on the other is -.','21/25,17/25,4/25,8/25','31/32,1/16,1/2,1/32','1/25,1/2,4/13,1/10','1/2,16/19,4/5,17/20','1/4,1/2,3/4,3/5','2,1,1,4,2'),(4,'Easy','A and B complete a work in 6 days. A alone can do it in 10 days. If both together can do the work in how many days?','A and B together can do a piece of work in 8 days. If A alone can do the same work in 12 days, then B alone can do the same work in?','A can do a piece of work in 4 days. B can do it in 5 days. With the assistance of C they completed the work in 2 days. Find in how many days can C alone do it?','A and B can do a piece of work in 6 2/3 days and 5 days respectively. They work together for 2 days and then A leaves. In how many days after that B will complete the work alone.','A can do a piece of work in 30 days. He works at it for 5 days and then B finishes it in 20 days. In what time can A and B together it?','3.75 days,4 days,5 days,6 days','20 days,16 days,24 days,28 days','10 days,20 days,5 days,4 days','2 days,1 ½ days,3 days,3 ½ days','16 2/3 days,13 1/3 days,17 1/3 days,16 1/2 days','1,3,2,2,2'),(5,'Medium','A and B can do a piece of work in 12 days and 16 days respectively. Both work for 3 days and then A goes away. Find how long will B take to complete the remaining work?','A and B can do a piece of work in 3 days, B and C in 4 days, C and A in 6 days. How long will C take to do it?','A can do a piece of work in 10 days. He works at it for 4 days and then B finishes it in 9 days. In how many days can A and B together finish the work?','A can do a piece of work in 40 days; B can do the same in 30 days. A started alone but left the work after 10 days, then B worked at it for 10 days. C finished the remaining work in 10 days. C alone can do the whole work in?','A work which could be finished in 9 days was finished 3 days earlier after 10 more men joined. The number of men employed was?','15 days,12 days,10 days,9 days','18 days,20 days,24 days,30 days','6 days,8 days,8 ½ days,7 ½ days','24 days,30 days,44 days,17 1/2 days','18,20,22,24','4,3,1,1,2'),(6,'Easy','The area of a triangle is with base 4m and height 5m?','The area of a triangle will be when a = 1m, b = 2m, c = 3m, a, b, c being lengths of respective sides.','The length of each side of an equilateral triangle having an area of 4 root 3cm2 is?','The altitude of an equilateral triangle of side 2  root 3 cm is?','The base of a right triangle is 8 and hypotenuse is 10. Its area is?','20 sq m,10 sq m,5 sq m,3 sq m','0 sq m,3 sq m,2 sq m,6 sq m','4/3 cm,3/4 cm,3 cm,4 cm','3/2 cm,1/2 cm,3/4 cm,3 cm','12,80,59,24','2,1,4,4,4');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12 16:56:12
