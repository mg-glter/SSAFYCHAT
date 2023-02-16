-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssafychat
-- ------------------------------------------------------
-- Server version       8.0.31

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
-- Table structure for table `apply_mentoring`
--

DROP TABLE IF EXISTS `apply_mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply_mentoring` (
  `apply_mentoring_id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(30) NOT NULL,
  `job` varchar(20) NOT NULL,
  `mentee_uid` int NOT NULL,
  PRIMARY KEY (`apply_mentoring_id`),
  KEY `FKiulp0890lvbnai0e8ebqs37d9` (`mentee_uid`),
  CONSTRAINT `FKiulp0890lvbnai0e8ebqs37d9` FOREIGN KEY (`mentee_uid`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_mentoring`
--

LOCK TABLES `apply_mentoring` WRITE;
/*!40000 ALTER TABLE `apply_mentoring` DISABLE KEYS */;
INSERT INTO `apply_mentoring` VALUES (86,'라인','백엔드',49),(90,'삼성전자','백엔드',2),(91,'삼성전자','백엔드',2),(92,'삼성전자','백엔드',2);
/*!40000 ALTER TABLE `apply_mentoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_mentoring`
--

DROP TABLE IF EXISTS `cancel_mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel_mentoring` (
  `cancel_mentoring_id` int NOT NULL,
  `canceler` int NOT NULL,
  `company` varchar(30) NOT NULL,
  `job` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `mentee_uid` int NOT NULL,
  `mentor_uid` int NOT NULL,
  PRIMARY KEY (`cancel_mentoring_id`),
  KEY `FK9070gne9nsqi0y8r8bfq4xc25` (`mentee_uid`),
  KEY `FK5bqi9es22ptme8y9yx67yw4s3` (`mentor_uid`),
  CONSTRAINT `FK5bqi9es22ptme8y9yx67yw4s3` FOREIGN KEY (`mentor_uid`) REFERENCES `member` (`user_id`),
  CONSTRAINT `FK9070gne9nsqi0y8r8bfq4xc25` FOREIGN KEY (`mentee_uid`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_mentoring`
--

LOCK TABLES `cancel_mentoring` WRITE;
/*!40000 ALTER TABLE `cancel_mentoring` DISABLE KEYS */;
INSERT INTO `cancel_mentoring` VALUES (1,2,'삼성전자','백엔드','저는 당신이 싫습니다','2023-02-14 04:00:00.000000',2,1),(3,4,'넥슨','백엔드','시간이 맞지 않습니다.','2023-02-13 05:00:10.000000',3,4),(14,1,'삼성전자','백엔드','하기싫어서?','2023-03-01 13:00:00.000000',2,1),(21,2,'삼성전자','백엔드','당신이 싫어요','2023-03-04 13:00:00.000000',2,1),(45,2,'삼성전자','백엔드','싫어요','2023-04-08 08:00:00.000000',2,1),(52,2,'삼성전자','백엔드','실헝요','2023-02-17 03:00:00.000000',2,1),(57,1,'삼성전자','백엔드','죄송해요','2023-02-14 23:30:41.522000',2,1),(58,2,'삼성전자','백엔드','취소','2023-02-24 06:00:00.000000',2,1);
/*!40000 ALTER TABLE `cancel_mentoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complete_mentoring`
--

DROP TABLE IF EXISTS `complete_mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complete_mentoring` (
  `complete_mentoring_id` int NOT NULL,
  `chat_log` text,
  `company` varchar(30) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `job` varchar(20) NOT NULL,
  `review_content` text,
  `review_height` int DEFAULT '0',
  `review_selected` tinyint(1) NOT NULL,
  `review_width` int DEFAULT '0',
  `score` int DEFAULT '3',
  `time` datetime(6) NOT NULL,
  `mentee_uid` int NOT NULL,
  `mentor_uid` int NOT NULL,
  PRIMARY KEY (`complete_mentoring_id`),
  KEY `FKpej1aplysifj23xibhl3cve6v` (`mentee_uid`),
  KEY `FKe7vuqho21p5908u14xqoe4gou` (`mentor_uid`),
  CONSTRAINT `FKe7vuqho21p5908u14xqoe4gou` FOREIGN KEY (`mentor_uid`) REFERENCES `member` (`user_id`),
  CONSTRAINT `FKpej1aplysifj23xibhl3cve6v` FOREIGN KEY (`mentee_uid`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complete_mentoring`
--

LOCK TABLES `complete_mentoring` WRITE;
/*!40000 ALTER TABLE `complete_mentoring` DISABLE KEYS */;
INSERT INTO `complete_mentoring` VALUES (13,NULL,'삼성전자',1,'백엔드','thankU',0,0,0,5,'2023-02-13 13:00:28.135000',2,1),(15,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-03-01 14:00:00.000000',2,1),(19,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-14 13:00:00.000000',2,1),(24,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-13 17:00:41.110000',2,1),(26,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-15 17:00:00.000000',2,1),(34,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-26 05:00:00.000000',2,1),(35,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-28 08:30:00.000000',2,1),(36,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-03-02 08:00:00.000000',2,1),(37,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-03-04 08:00:00.000000',2,1),(38,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-03-30 08:00:00.000000',2,1),(39,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-14 08:00:40.063000',2,1),(40,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-23 08:00:00.000000',2,1),(41,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-03-31 08:00:00.000000',2,1),(42,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-03 08:00:00.000000',2,1),(43,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-04-01 08:00:00.000000',2,1),(44,NULL,'삼성전자',1,'백엔드','감사해용 두줄짜리 리뷰를 쓰고 싶은데 이정도면 두줄이 되겠죠 별은 2개',189,1,124,2,'2023-04-29 08:00:00.000000',2,1),(46,NULL,'삼성전자',1,'백엔드','싫어',0,0,0,3,'2023-02-14 09:00:39.196000',2,1),(48,NULL,'삼성전자',1,'백엔드','감사해요 이것은 롤링페이퍼에요',282,1,157,5,'2024-02-02 09:00:00.000000',2,1),(49,NULL,'삼성전자',1,'백엔드','지워졌습니다 이 채널은',667,1,88,3,'2024-02-03 09:00:00.000000',2,1),(50,NULL,'삼성전자',1,'백엔드','너무 좋은 리뷰였구요 다음에 또 뵈었으면 좋겠습니다. 스크럼한번 진행하겠습니다. 프론트 비전공 프론트 아 그래요 시트 보고 연락 x표시 저희 반이라서 연락이 온 것 같아요 프론트하실래요? 그 이미 프론트 였으면 벌써 잡아갔을 것 같아요 무서워요 공통에서 힘들었던',0,0,0,3,'2024-02-04 09:00:00.000000',2,1),(51,NULL,'삼성전자',1,'백엔드','구구구굿\n',0,0,0,3,'2024-02-12 09:00:00.000000',2,1),(53,NULL,'삼성전자',1,'백엔드','고마와요',0,0,0,3,'2023-02-20 14:00:00.000000',2,1),(54,NULL,'삼성전자',1,'백엔드','감사합니다 당신은 최고에ㅛ',0,0,0,3,'2023-02-15 00:00:07.277000',2,1),(55,NULL,'삼성전자',1,'백엔드','완전히 이해했습니다!',0,0,0,4,'2023-02-14 23:30:17.821000',2,1),(56,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-15 02:00:23.413000',2,1),(59,NULL,'라인',1,'백엔드','이렇게 만나게 되어서 정말 영광이었습니다. 덕분에 좋은 정보 많이 알아가네요. 자신감을 얻었어요 ㅎㅎ \n선배님을 회사에서 만나게 되면 정말 기쁠 것 같아요! 그런 날이 온다면 제가 밥을 사드리고 싶습니다. 좋은 하루 되세요. 다시 한 번 정말 감사드립니다!',176,1,40,5,'2023-02-15 07:00:00.000000',51,31),(60,NULL,'라인',1,'백엔드','멘토님 정말 감사합니다 ㅠㅠ 덕분에 많은걸 알아갈 수 있었어요! 면접 열심히 준비해서 꼭 후배로 들어갈 수 있도록 노력할게요 다시한번 감사드려요!!!',569,1,50,5,'2023-02-15 08:30:32.024000',52,31),(61,NULL,'라인',1,'백엔드','멘토님 정말 늦은 시간에도 불구하고 최대한 많은 정보를 말씀해주시려고 노력해주셔서 감사합니다. 나중에 서울 올라가면 연락드리겠습니다!! ',102,1,416,3,'2023-03-01 10:30:00.000000',7,31),(62,NULL,'라인',1,'백엔드','멘토님의 조언들 정말 큰 도움이 되었습니다. 열심히 힘내서 꼭 멘토님이 계신 회사에 들어가고 싶습니다! 감사합니다!!!',0,0,0,5,'2023-03-06 08:00:00.000000',49,31),(63,NULL,'라인',1,'백엔드','멘토님 짱!! 진작 만났으면 좋았을 텐데 괜히 오래 고민했어요!',564,1,432,5,'2023-02-27 12:30:00.000000',50,31),(65,NULL,'라인',1,'백엔드','선배님 사랑합니다. 선배님의 조언이 저의 피가 되고 살이 되어서 좋은 양분이 될 것 같습니다. 다음 컨퍼런스에서 꼭 뵐수 있으면 좋겠습니다.',0,0,0,5,'2023-02-24 11:00:00.000000',53,31),(67,NULL,'라인',1,'백엔드','멘토님의 정성스러운 답변 너무 감사드립니다!!! 좋은 사이트 많이 알려주셔서 고맙습니다!!',754,1,412,5,'2023-02-17 10:30:00.000000',55,31),(69,NULL,'삼성전자',1,'백엔드','드디어 취뽀할 수 있겠어!',0,0,0,3,'2023-02-16 04:00:40.177000',2,1),(70,NULL,'삼성전자',1,'백엔드','qwer',0,0,0,3,'2023-02-16 03:30:03.146000',2,1),(71,NULL,'삼성전자',1,'백엔드','점수 가나요',0,0,0,3,'2023-02-16 06:30:30.161000',2,1),(72,NULL,'삼성전자',1,'백엔드','감사해요',433,1,172,3,'2023-02-16 04:00:21.914000',2,1),(73,NULL,'삼성전자',1,'백엔드','점수 4점 이에요',0,0,0,4,'2023-02-17 04:00:00.000000',2,1),(74,NULL,'삼성전자',1,'백엔드','고마워요',0,0,0,3,'2023-02-18 04:00:00.000000',2,1),(75,NULL,'삼성전자',1,'백엔드','감사해요',0,0,0,5,'2023-02-19 04:00:00.000000',2,1),(76,NULL,'삼성전자',1,'백엔드','별을 다섯개 드릴게요',0,0,0,5,'2023-02-16 04:00:52.908000',2,1),(77,NULL,'삼성전자',1,'백엔드','별별별별별 당신이 최고',0,0,0,5,'2023-02-17 04:00:00.000000',2,1),(78,NULL,'삼성전자',1,'백엔드','감사의 한마디를 전하겠습니다',0,0,0,5,'2023-02-20 04:00:00.000000',2,1),(79,NULL,'삼성전자',1,'백엔드','별이 다섯개',0,0,0,5,'2023-02-22 04:00:00.000000',2,1),(80,NULL,'삼성전자',1,'백엔드','너무 감사해요',0,0,0,5,'2023-03-01 04:00:00.000000',2,1),(81,NULL,'삼성전자',1,'백엔드','너무너무 감사해요',581,1,303,3,'2023-03-02 05:00:00.000000',2,1),(82,NULL,'삼성전자',1,'백엔드','너무 감사합니다 5개의 별을 드리겠습니다',923,1,73,3,'2023-04-01 05:00:00.000000',2,1),(84,NULL,'삼성전자',1,'백엔드','너무 감사합니다 선생님 당신은 최고에요 두줄만 쓸게요 조금더 별 다섯개 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ',359,1,523,5,'2023-02-16 09:30:20.977000',2,1),(85,NULL,'삼성전자',1,'백엔드','고마워요 당신은 나의 신이에요',712,1,242,5,'2023-02-17 08:00:00.000000',2,1),(87,NULL,'삼성전자',1,'백엔드','고마워요',0,0,0,5,'2023-02-16 08:00:52.743000',2,1),(88,NULL,'삼성전자',1,'백엔드',NULL,0,0,0,0,'2023-02-16 08:00:56.825000',2,1);
/*!40000 ALTER TABLE `complete_mentoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `belong` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `job` varchar(20) DEFAULT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `refresh_token` varchar(1000) DEFAULT NULL,
  `role` varchar(15) NOT NULL,
  `social` varchar(10) NOT NULL,
  `student_number` varchar(10) NOT NULL,
  `total_score` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`),
  UNIQUE KEY `UK_9aum603gwkjo0ihn9bhygqad8` (`student_number`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'삼성전자','kdw1@test.com','백엔드','김멘토','$2a$10$G.WlyBAq/wFRz0/Gssb0mufM7i19ZZeF/D1PUHlGgw5.M3NODOwni',NULL,'role_mentor','싸피','0842221',26),(2,'','kdw2@test.com','','김멘티','$2a$10$F1T3odf0SpT1fIa4FJpbiO8pyvFgDaTWpt7zoEfRxpauD74acPehK',NULL,'role_mentee','싸피','0842222',0),(3,'','wjdgml01@naver.com','','박멘티','$2a$10$kuTsrpYqwOExYjPvxPOmZu0Fce48i9pGmsjDsPiHMou3w/KNXiGCK',NULL,'role_mentee','싸피','0101212',0),(4,'넥슨','wjdgml11@naver.com','백엔드','박멘토','$2a$10$ntxingZooWrwQhdNBab8l.aFAJCdnE7Fw/uoaGRtxXcJAtBCAXz0u',NULL,'role_mentor','싸피','0201111',0),(5,'','e@mail.com','','김싸피','$2a$10$sTPmz2nYetVZUriApOaRfece87iLdNuH7a5moSjkfppe.xs0BHthy',NULL,'role_mentee','싸피','0734123',0),(6,'넥슨','wjdgml12@naver.com','프론트','박프론트','$2a$10$3ulmrZBtjM/AA3LkETOtoeVT2eekcVk77bqna9tcITv7rCcp3cViy',NULL,'role_mentor','싸피','0303311',0),(7,'','socm9145@naver.com','','김태현','$2a$10$oRlIKNOF.8AyyJeHE7IhYuqqSZtjYSbokQvRpStTJp3tVm0NjyTuu',NULL,'role_mentee','싸피','0841128',0),(8,'카카오','socm9146@naver.com','백엔드','김현태','$2a$10$oK39zpJQoYVZ83J3LRYUKu6.i0DOjxwURNk1XM3hhwP0TZ4J69X7q',NULL,'role_mentor','싸피','0741128',0),(9,'','e2@mail.com','','이싸피','$2a$10$zwvMRlWjep4qT1m3UW/9yuI4OSONHj6OOIJmhu/cMQoHZJoKH4IJa',NULL,'role_mentee','싸피','0643112',0),(10,'','sairo@test.com','','난멘티','$2a$10$JMrBsO.3rfWrFIh0d27S2.7n9wcgmpoIff/y9IGv1uLn0f.HO3Z3a',NULL,'role_mentee','싸피','0899999',0),(11,'','e5@mail.com','','김멘티','$2a$10$wQzfkwPOPLSawKHKLULzj.cjPHxSUaCmcwmA7mlT.l0IDl19NIJUK',NULL,'role_mentee','싸피','0754323',0),(12,'SSAFY','e4@mail.com','','이멘티','$2a$10$ChzHITt5ZP5UFs/UQr9HpeaflIuaDSAHvoL7gs3u7q0YejEDzj1Ii',NULL,'role_mentee','싸피','0435652',0),(13,'SSAFY','e6@mail.com','Dev-Ops','김멘토','$2a$10$uAkKogzYA/K7//OSv2hy9ed7uInNrmsXRJLrAiCoh5N5WwpqcGy9S',NULL,'role_mentor','싸피','0644213',0),(14,'네이버','e7@mail.com','BACK-END','이멘토','$2a$10$2.oaH.8HYlYzTMfSBvt5F.ZlB3ZMvR33pwfbGpiuQfi3c7IXMDmfq',NULL,'role_mentor','싸피','0321455',0),(15,'당근마켓','wonjae@test.com','백엔드','조원재','$2a$10$2z1sn2wjIaGtTFlXdor1rebR7dCdxc5498ulInR6wx/X82WfZXsuC',NULL,'role_mentor','싸피','0848541',0),(16,'SSAFY','wjdtest@naver.com','','박테스트','$2a$10$SVH/8yofs/LU06Mpw.x4FOF8Z5CuZPmSKlbgjOhzOWzMjXxqc.K8m',NULL,'role_mentee','싸피','0808888',0),(17,'넥슨','mentor1@test.com','백엔드','김시닐','$2a$10$6bI3piUvWJ9nuujEQRrfUOLrfwrMx4RdB8V9F4xDO74f9ztw7GNV.',NULL,'role_mentor','싸피','0535367',0),(18,'SSAFY','kdw3@test.com','','김세번째','$2a$10$TJkegQjKBrO8/g9dzoOcLOwEnkakFOhzPKecQYnLpOvxYDoz20Yzy',NULL,'role_mentee','싸피','0842223',0),(19,'삼성전자','kdw4@test.com','프론트','김삼성','$2a$10$5rMiJ8X.yiUXtgP1s2xCtOlynxcbEcZHjHbL..wbMZoiRrU63yG1C',NULL,'role_mentor','싸피','0555555',0),(20,'네이버','e8@mail.com','백엔드','김넹버','$2a$10$v7r2phusA0NkLv9kB9.BOeEdz5QsfqKFfFpZOSZ5mSHyZIslIL7se',NULL,'role_mentor','싸피','0322214',0),(21,'당근마켓','dang1@ssafy.com','백엔드','이원일','$2a$10$2R0lMhFNCnQEeq5a22IAW.mAq5fS.oxzhQGKxclR.nnJtPtoP71XC',NULL,'role_mentor','싸피','0319827',0),(22,'네이버','e9@mail.com','프론트','이넹버','$2a$10$Qj4uxhNl1wPWhxflLUTxKe4wmQ5FoNCAuNo0XnRs.6cKgv0j1b3.y',NULL,'role_mentor','싸피','0231456',0),(23,'네이버','e0@mail.com','DBA','박넹버','$2a$10$HDBWkbBs1n6TodzrIM8MJugAanjW2J/mFQ5r9LQONiXmAFklfbJAi',NULL,'role_mentor','싸피','0143624',0),(24,'당근마켓','dang2@ssafy.com','프론트','나해강','$2a$10$.xAWhe9y.3a0eXIymdTWUOuLjvuUd1MR6cqKitURklDcItIy6lSGa',NULL,'role_mentor','싸피','0192856',0),(25,'네이버','e11@mail.com','네트워크','최넹버','$2a$10$jy9MUGxu0InDvghlHgGcruTYGWe/O4KE80m85V2FvIh7k8TmrKiHO',NULL,'role_mentor','싸피','0433215',0),(26,'당근마켓','dang3@ssafy.com','DBA','유하나','$2a$10$vl3GZjakvAsKlC49LzvPbuD7SlNYQx8n1oq4Ke6.Ly5sMoPfDKWka',NULL,'role_mentor','싸피','0495822',0),(27,'네이버','e12@mail.com','네트워크','김네입','$2a$10$Hh5mnLtGdu8a8YwvS7ZisuBHxmGpX0HmiNzzHsPX1jR3YgZWMk1sq',NULL,'role_mentor','싸피','0643256',0),(28,'네이버','e13@mail.com','데브옵스','이네입','$2a$10$1/Vk4jb5E8ceEC.Zk22L7.OOnBmFClZ5GdgccMnnJvjudcdJk/Vmu',NULL,'role_mentor','싸피','0544321',0),(29,'당근마켓','dang4@ssafy.com','네트워크','하윤진','$2a$10$s70HpVb2hNCEJ5TsIjb.uecieubHci3aYQ.gFNTfFxxADu8.hM632',NULL,'role_mentor','싸피','0391112',0),(30,'네이버','e14@mail.com','QA','박네입','$2a$10$ZYVH.Xo2JzBDfpYogx71R.kjf2AW.8F7/TWtCtetnwW7TezlmSxMS',NULL,'role_mentor','싸피','0723156',0),(31,'라인','e15@mail.com','백엔드','김라인','$2a$10$lw5Ax/.PSdzUJ/3c36GrTet0klxw8/zJ3D8/ocT840jTmRyQ076V2',NULL,'role_mentor','싸피','0134525',0),(32,'당근마켓','dang5@ssafy.com','데브옵스','이현수','$2a$10$c8actH4j5mAdLlgxmowKEuOvyHEJZnMfzfFvriaRJhKqrtasEQgpG',NULL,'role_mentor','싸피','0298118',0),(33,'라인','e16@mail.com','프론트','이라인','$2a$10$7rBMWfrQKCfmxVcg91nJoeCXXypzBUNEYKSgY6mcy6Q.b2NwzRWr2',NULL,'role_mentor','싸피','0421356',0),(34,'당근마켓','dang6@ssafy.com','QA','박현우','$2a$10$vwyc8xXBsm8InThKF0Tv6ehL8RaMMYrf.cwJ/ptqs1WCCx1zmV/Cu',NULL,'role_mentor','싸피','0214564',0),(35,'라인','e17@mail.com','DBA','박라인','$2a$10$IkgCwqd1F92DXdQjTRkOWuUQ6AI0SawDbpYlDfIwlOsnLa0hkSHDK',NULL,'role_mentor','싸피','0644289',0),(36,'라인','e18@mail.com','네트워크','최라인','$2a$10$4C9SxNDNVJP6txiYE6Z4luqadm2.PEt83Dk0a0loaeyjbYzY.r8cK',NULL,'role_mentor','싸피','0335789',0),(37,'넥슨','nex1@ssafy.com','백엔드','최가인','$2a$10$MvTs75IMxRJTVgjPzmvwSOsU/KU0exvilXnUI4oKo2MWuR8QTUbpi',NULL,'role_mentor','싸피','0711573',0),(38,'라인','e19@mail.com','데브옵스','김롸인','$2a$10$YTv1XNCnQPkUIw2lsQH28Ol1pJr1qqF5XgxYZMk9Ios9L5jfYYVv2',NULL,'role_mentor','싸피','0833322',0),(39,'넥슨','nex2@ssafy.com','프론트','조윤환','$2a$10$xULlI1/oJrEkRd5GeXSo6esV2.fQ.6nbgVYFMtvc70OvFvIY1htpy',NULL,'role_mentor','싸피','0544732',0),(40,'라인','e20@mail.com','데브옵스','이롸인','$2a$10$NL618jX2kKLJU/vOd2I0PuBI/uoTU3ckWWYR2L/ZjsYnJJg64gMWi',NULL,'role_mentor','싸피','0773121',0),(41,'라인','e21@mail.com','QA','박롸인','$2a$10$1b/qhlazvp5d.LHZ9e536eH/VnkGWq5ZqOKRFD45DfUXhV1GpKu4G',NULL,'role_mentor','싸피','0433288',0),(42,'넥슨','nex3@ssafy.com','DBA','황인철','$2a$10$bpzXQ6BI/Zx5QUybj4cIUeBYPjkmTv3SKjod8zlDOYfCoT7TV47dy',NULL,'role_mentor','싸피','0655389',0),(43,'넥슨','nex4@ssafy.com','네트워크','주민지','$2a$10$qhmXmEzk98McRWbBhfXsu.aml2e7DnRS4ufrHolNRZwjLCtNZrMPa',NULL,'role_mentor','싸피','0392288',0),(44,'넥슨','nex5@ssafy.com','데브옵스','박민준','$2a$10$7mTPfPep5wL/s/sfEtsbBOdHrhh7taSR8TIS1BaRS9Z6KO.vsWZA2',NULL,'role_mentor','싸피','0275684',0),(45,'넥슨','nex6@ssafy.com','QA','강현우','$2a$10$yxC6nYK/57fJXBJOCcBeNu6YKa0mT8Yng2F9grtT4Z0iT24hF7ht2',NULL,'role_mentor','싸피','0557321',0),(46,'카카오','kao1@ssafy.com','프론트','민지연','$2a$10$Lpf5rGr4av0ir4Bq5L9WiOBUA1Bv2fIulCbbBv4phYuxdS/GiW2WS',NULL,'role_mentor','싸피','0354678',0),(47,'카카오','kao2@ssafy.com','DBA','신지원','$2a$10$fK/KrWtYoxg.r.kdjQu4jO7gbTPGq2NvKAHh/sovGx3.i0.YD9OB6',NULL,'role_mentor','싸피','0624331',0),(48,'카카오','kao3@ssafy.com','데브옵스','유민정','$2a$10$xZmb0jp7mRJse2UCKm8PJO9P8QcM4MATDFtyoO0U08No8Lk.pl34S',NULL,'role_mentor','싸피','0193756',0),(49,'SSAFY','kdw@test.com','','김도원','$2a$10$tfnmAtli79ST2hmNvQtnFuZiRuG9GfgjY/xJcKs./INrilFyUlJNG',NULL,'role_mentee','싸피','0842220',0),(50,'SSAFY','socm9147@naver.com','','조원재','$2a$10$h06N1Tf8km69ODepMZaA6OqYQ4dAfO7Waw78n.l0DRLN6SnMvbKQK',NULL,'role_mentee','싸피','0815364',0),(51,'SSAFY','me1@ssafy.com','','정은비','$2a$10$YVGXCCGRFZB0nXNnjLXXs./D14NTdWfH3DuAx2V.We54M6dDX4LEC',NULL,'role_mentee','싸피','0832569',0),(52,'SSAFY','ex@mail.com','','김민지','$2a$10$VIFaJGRl1FLKnCo7dL2s1e.4QrO0adaoAFzHQZSYoVMPDNaxN5Vzq',NULL,'role_mentee','싸피','0765312',0),(53,'SSAFY','xogus12@naver.com','','박정희','$2a$10$i.9bjavel9CxXxrOUGnFl.dcrAZTO3Z9cXUQEUsAsHBw7alNzRXrW',NULL,'role_mentee','싸피','0823325',0),(54,'SSAFY','ex2@mail.com','','이보람','$2a$10$jcrfs7utFKg4fxqZ7KsbMef2EFipUwmLTlpr/gH6y5.8Q/6nwhPTK',NULL,'role_mentee','싸피','0755321',0),(55,'SSAFY','xogus71@naver.com','','김태현','$2a$10$rdfbADo4yt2gUjW/v2cAfei6jQVt4P4mNJSoCCPJcbn6K3ZrCLOcu',NULL,'role_mentee','싸피','0841235',0),(56,'SSAFY','testkdw@test.com','','김연승','$2a$10$UNHgdIGFgpXrjmrQ0aWK5.VODbttNT7fYU3dI7emtibsZXE1G1OUy',NULL,'role_mentee','싸피','0849990',0);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_roles` (
  `member_user_id` int NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FKm67o2d4rwol642pli7018ot7i` (`member_user_id`),
  CONSTRAINT `FKm67o2d4rwol642pli7018ot7i` FOREIGN KEY (`member_user_id`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,'role_mentor'),(2,'role_mentee'),(3,'role_mentee'),(4,'role_mentor'),(5,'role_mentee'),(6,'role_mentor'),(7,'role_mentee'),(8,'role_mentor'),(9,'role_mentee'),(10,'role_mentee'),(11,'role_mentee'),(12,'role_mentee'),(13,'role_mentor'),(14,'role_mentor'),(15,'role_mentor'),(16,'role_mentee'),(17,'role_mentor'),(18,'role_mentee'),(19,'role_mentor'),(20,'role_mentor'),(21,'role_mentor'),(22,'role_mentor'),(23,'role_mentor'),(24,'role_mentor'),(25,'role_mentor'),(26,'role_mentor'),(27,'role_mentor'),(28,'role_mentor'),(29,'role_mentor'),(30,'role_mentor'),(31,'role_mentor'),(32,'role_mentor'),(33,'role_mentor'),(34,'role_mentor'),(35,'role_mentor'),(36,'role_mentor'),(37,'role_mentor'),(38,'role_mentor'),(39,'role_mentor'),(40,'role_mentor'),(41,'role_mentor'),(42,'role_mentor'),(43,'role_mentor'),(44,'role_mentor'),(45,'role_mentor'),(46,'role_mentor'),(47,'role_mentor'),(48,'role_mentor'),(49,'role_mentee'),(50,'role_mentee'),(51,'role_mentee'),(52,'role_mentee'),(53,'role_mentee'),(54,'role_mentee'),(55,'role_mentee'),(56,'role_mentee');
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentoring`
--

DROP TABLE IF EXISTS `mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentoring` (
  `mentoring_id` int NOT NULL,
  `company` varchar(30) NOT NULL,
  `job` varchar(20) NOT NULL,
  `time` datetime(6) NOT NULL,
  `mentee_uid` int NOT NULL,
  `mentor_uid` int NOT NULL,
  PRIMARY KEY (`mentoring_id`),
  KEY `FKnq5udcxtnrumxl9454t6dslem` (`mentee_uid`),
  KEY `FKlt8dllhs287tjteep233udd5v` (`mentor_uid`),
  CONSTRAINT `FKlt8dllhs287tjteep233udd5v` FOREIGN KEY (`mentor_uid`) REFERENCES `member` (`user_id`),
  CONSTRAINT `FKnq5udcxtnrumxl9454t6dslem` FOREIGN KEY (`mentee_uid`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentoring`
--

LOCK TABLES `mentoring` WRITE;
/*!40000 ALTER TABLE `mentoring` DISABLE KEYS */;
INSERT INTO `mentoring` VALUES (4,'카카오','백엔드','2023-02-13 05:00:05.839000',7,8),(64,'넥슨','백엔드','2023-02-15 09:00:34.680000',3,4),(66,'라인','백엔드','2023-02-18 06:30:00.000000',54,31),(89,'삼성전자','백엔드','2023-02-16 08:00:59.588000',2,1),(93,'삼성전자','백엔드','2023-02-16 09:00:11.078000',2,1);
/*!40000 ALTER TABLE `mentoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentoring_date`
--

DROP TABLE IF EXISTS `mentoring_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentoring_date` (
  `apply_mentoring_id` int NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`apply_mentoring_id`,`time`),
  CONSTRAINT `FK3i0t3t0jjmtogxj0bikdo6q30` FOREIGN KEY (`apply_mentoring_id`) REFERENCES `apply_mentoring` (`apply_mentoring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentoring_date`
--

LOCK TABLES `mentoring_date` WRITE;
/*!40000 ALTER TABLE `mentoring_date` DISABLE KEYS */;
INSERT INTO `mentoring_date` VALUES (86,'2023-02-16 09:00:52.072000'),(90,'2023-02-17 09:00:00.000000'),(91,'2023-02-16 09:00:05.940000'),(92,'2023-02-16 09:00:08.441000');
/*!40000 ALTER TABLE `mentoring_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `complete_mentoring_id` int NOT NULL,
  `reporter` int NOT NULL,
  `reason` text NOT NULL,
  `reported` int NOT NULL,
  PRIMARY KEY (`complete_mentoring_id`,`reporter`),
  CONSTRAINT `FKa928n2sbmu6e1ojbgpammgch5` FOREIGN KEY (`complete_mentoring_id`) REFERENCES `complete_mentoring` (`complete_mentoring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17  0:58:30
