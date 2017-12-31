CREATE DATABASE  IF NOT EXISTS `tracnghiemonline` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tracnghiemonline`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tracnghiemonline
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `dotest`
--

DROP TABLE IF EXISTS `dotest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotest` (
  `UserID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `ExamID` int(11) NOT NULL,
  `AnswerChoose` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`QuestionID`,`ExamID`),
  KEY `QuestionID` (`QuestionID`,`ExamID`),
  CONSTRAINT `dotest_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `dotest_ibfk_2` FOREIGN KEY (`QuestionID`, `ExamID`) REFERENCES `test` (`QuestionID`, `ExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dotest`
--

LOCK TABLES `dotest` WRITE;
/*!40000 ALTER TABLE `dotest` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `ExamID` int(11) NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(100) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `StateExam` int(1) NOT NULL DEFAULT '1',
  `SubjectID` int(11) NOT NULL,
  PRIMARY KEY (`ExamID`),
  KEY `SubjectID` (`SubjectID`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'Quá trình lần 1',10,10,0,1),(2,'Quá trình lần 2',10,10,0,1),(3,'Quá trình lần 3',10,10,0,1),(4,'Quá trình lần 4',10,10,0,1);
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `MajorID` int(11) NOT NULL AUTO_INCREMENT,
  `MajorName` varchar(100) NOT NULL,
  PRIMARY KEY (`MajorID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (10,'Sư phạm Toán'),(11,'Ngôn ngữ Anh'),(12,'Vật lý học');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `MissionID` int(11) NOT NULL AUTO_INCREMENT,
  `MissionName` varchar(200) NOT NULL,
  PRIMARY KEY (`MissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionContent` varchar(2000) NOT NULL,
  `SubjectID` int(11) NOT NULL,
  `OptionA` varchar(1000) NOT NULL,
  `OptionB` varchar(1000) NOT NULL,
  `OptionC` varchar(1000) NOT NULL,
  `OptionD` varchar(1000) NOT NULL,
  `Answer` int(1) NOT NULL,
  PRIMARY KEY (`QuestionID`),
  KEY `SubjectID` (`SubjectID`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Hình tam giác có mấy góc ?',1,'1','2','3','4',3),(2,'1 + 1 = ?',1,'1','2','3','4',2),(3,'Tổng 3 góc của một tam giác bằng bao nhiêu ?',1,'120','240','360','480',3),(4,'Tính tích 50 số tự nhiên đầu tiên ?',1,'50!','1024','0','2048',3),(5,'1 + 16/(9 - 1) = ?',1,'1','2','3','4',3),(6,'Đâu là phát biểu đúng về định lý Pitago ?',1,'Bình phương cạnh huyền bằng tổng bình phương hai cạnh góc vuông','Bình phương cạnh góc vuông bằng hiệu bình phương cạnh góc vuông với cạnh huyền','Bình phương cạnh huyền bằng bình phương tổng hai cạnh góc vuông','Bình phương nghịch đảo cạnh huyền bằng tổng bình phương hai cạnh góc vuông',1),(7,'Biết 3x+2(5-x) = 0 ,giá trị của x là ?',1,'-8','-9','-10','Kết quả khác',3),(8,'1! = ?',1,'0','1','2','3',1),(9,'Giá trị của x để x( x + 1) = 0 là ?',1,'0','-1','0 và 1','0 và -1',4),(10,'Một hình thang có độ dài hai đáy là 3 cm và 11 cm. Độ dài đường trung bình của hình thang đó là ?',1,'14','8','7','Kết quả khác',3),(11,'Is Susan...........home? ?',2,'in','at','on','under',2),(12,'Do the children go to school every day ?',2,'Yes, they go.','Yes, they do.','They go.','No, they dont go.',2),(13,'They always go to school ............. bicycle',2,'with','in','on','by',4),(14,'What color ........... his new car ?',2,'have','is','does','are',2),(15,'You should do your.................before going to class ?',2,'home work','homework','homeworks','housework',2),(16,'Mr. Pike ............ us English ?',2,'teach','teaches','teaching','to teach',2),(17,'Tom and ............. are going to the birthday party together ?',2,'I','me','my','mine',1),(18,'Our English lessons are ............... long ?',2,'many','much','a lot of','very',4),(19,'Bangkok is ............ capital of Thailand ?',2,'a','one','the','an',3),(20,'Is this your pencil? No, it isnt.It is .......... pencil',2,'his','my','your','hers',1),(21,'Chuyển động nào sau đây là dao động tuần hoàn ?',3,'Chuyển động đều trên đường tròn','Chuyển động của máu trong cơ thể','Chuyển động của quả lắc đồng hồ','Sự rung của cây đàn',4),(22,'Dao động tự do điều hòa là dao động có ?',3,'Tọa độ là hàm cô sin của thời gian','Trạng thái chuyển động lặp lại như cũ sau những khoảng thời gian bằng nhau','Vận tốc lớn nhất khi ở ly độ cực đại','Năng lượng dao động tỉ lệ với biên độ',1),(23,'Chu kỳ dao động là khoảng thời gian ?',3,'Nhất định để trạng thái dao động được lặp lại như cũ','Giữa 2 lần liên tiếp vật dao động qua cùng 1 vị trí','Vật đi hết 1 đoạn đường bằng quỹ đạo','Ngắn nhất để trạng thái dao động được lặp lại như cũ',4),(24,'Tần số dao động là ?',3,'Góc mà bán kính nối vật dao động với 1 điểm cố định quét được trong 1s','Số dao động thực hiện trong 1 khoảng thời gian','Số chu kỳ làm được trong 1 thời gian','Số trạng thái dao động lặp lại như cũ trong 1 đơn vị thời gian',4),(25,'Để duy trì dao động của 1 cơ hệ ta phải ?',3,'Bổ xung năng lượng để bù vào phần năng lượng mất đi do ma sát','Làm nhẵn, bôi trơn để giảm ma sát','Tác dụng lên hệ 1 ngoại lực tuần hoàn','Câu a và c đều đúng',4),(26,'Khi nói về dao động cưỡng bức, câu nào sau đây sai ?',3,'Dao động dưới tác dụng của ngoại lực tuần hoàn','Tần số dao động bằng tần số của ngoại lực','Biên độ dao động phụ thuộc vào tần số của ngoại lực','Tần số ngoại lực tăng thì biên độ dao động giảm',4),(27,'Đối với 1 dao động điều hòa thì nhận định nào sau đây sai ?',3,'Li độ bằng không khi vận tốc bằng không','Vận tốc bằng không khi thế năng cực đại',', Li độ cực đại khi lực hồi phục có cường độ lớn nhất','Vận tốc cực đại khi thế năng cực tiểu',1),(28,'Khi 1 vật dao động điều hòa đi từ vị trí cân bằng đến biên điểm thì ?',3,'Li độ giảm dần','Động năng tăng dần','Thế năng giảm dần','Động năng và thế năng chuyển hóa cho nhau',4),(29,'Phát biểu nào sai khi nói về sự cộng hưởng ?',3,'Khi có cộng hưởng thì biên độ dao động tăng nhanh đến 1 giá trị cực đại','Ứng dụng để chế tạo số kế dùng để đo tần số dao động riêng của 1 hệ cơ','Xảy ra khi tần số ngoại lực bằng tần số riêng của hệ','Biên độ lúc cộng hưởng càng lớn khi ma sát cùng nhỏ',2),(30,'Dao động là chuyển động ?',3,'Có quỹ đạo là đường thẳng','Được lặp lại như cũ sau một khoảng thời gian nhất định','Lặp đi, lặp lại nhiều lần quanh một điểm cố định','Qua lại quanh một vị trí bất kỳ và có giới hạn trong không gian',2);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `ResultID` int(11) NOT NULL AUTO_INCREMENT,
  `ExamID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Mark` int(11) NOT NULL,
  PRIMARY KEY (`ResultID`),
  KEY `UserID` (`UserID`),
  KEY `ExamID` (`ExamID`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,3,2),(2,1,3,2);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `MajorID` int(11) NOT NULL,
  PRIMARY KEY (`SubjectID`),
  KEY `MajorID` (`MajorID`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`MajorID`) REFERENCES `major` (`MajorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Toán',10),(2,'English',11),(3,'Vật Lý',12);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `QuestionID` int(11) NOT NULL,
  `ExamID` int(11) NOT NULL,
  PRIMARY KEY (`QuestionID`,`ExamID`),
  KEY `ExamID` (`ExamID`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`),
  CONSTRAINT `test_ibfk_2` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,1),(3,1),(5,1),(7,1),(9,1),(11,1),(13,1),(15,1),(17,1),(19,1),(2,2),(6,2),(8,2),(10,2),(12,2),(21,2),(23,2),(25,2),(27,2),(29,2),(9,3),(14,3),(16,3),(18,3),(20,3),(22,3),(24,3),(26,3),(28,3),(30,3),(1,4),(4,4),(5,4),(6,4),(10,4),(16,4),(18,4),(20,4),(21,4),(29,4);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeuser`
--

DROP TABLE IF EXISTS `typeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeuser` (
  `TypeUserID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeUserName` varchar(200) NOT NULL,
  PRIMARY KEY (`TypeUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeuser`
--

LOCK TABLES `typeuser` WRITE;
/*!40000 ALTER TABLE `typeuser` DISABLE KEYS */;
INSERT INTO `typeuser` VALUES (1,'Admin'),(2,'Người QLNH câu hỏi'),(3,'Student'),(4,'Người ra đề');
/*!40000 ALTER TABLE `typeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeuser_mission`
--

DROP TABLE IF EXISTS `typeuser_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeuser_mission` (
  `MissionID` int(11) NOT NULL,
  `TypeUserID` int(11) NOT NULL,
  PRIMARY KEY (`MissionID`,`TypeUserID`),
  KEY `TypeUserID` (`TypeUserID`),
  CONSTRAINT `typeuser_mission_ibfk_1` FOREIGN KEY (`MissionID`) REFERENCES `mission` (`MissionID`),
  CONSTRAINT `typeuser_mission_ibfk_2` FOREIGN KEY (`TypeUserID`) REFERENCES `typeuser` (`TypeUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeuser_mission`
--

LOCK TABLES `typeuser_mission` WRITE;
/*!40000 ALTER TABLE `typeuser_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeuser_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_typeuser`
--

DROP TABLE IF EXISTS `user_typeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_typeuser` (
  `UserID` int(11) NOT NULL,
  `TypeUserID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`TypeUserID`),
  KEY `TypeUserID` (`TypeUserID`),
  CONSTRAINT `user_typeuser_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `user_typeuser_ibfk_2` FOREIGN KEY (`TypeUserID`) REFERENCES `typeuser` (`TypeUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_typeuser`
--

LOCK TABLES `user_typeuser` WRITE;
/*!40000 ALTER TABLE `user_typeuser` DISABLE KEYS */;
INSERT INTO `user_typeuser` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `user_typeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserPass` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` int(1) NOT NULL DEFAULT '1',
  `PhoneNumber` varchar(15) NOT NULL,
  `StateUser` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1234','Dung','1997-11-21',0,'5546464',1),(2,'1234','Khoa','1997-11-20',0,'5546464',1),(3,'1234','Thien','1996-12-21',0,'01697421797',1),(4,'1234','Nhi','1997-11-20',1,'5546464',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tracnghiemonline'
--

--
-- Dumping routines for database 'tracnghiemonline'
--
/*!50003 DROP PROCEDURE IF EXISTS `procDoiPass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDoiPass`(
	IN _UserID int(11),
    IN _OldPass varchar(100),
     IN _NewPass varchar(100),
      IN _NewPassAgain varchar(100)
)
begin
declare temp varchar(100);
set temp=_NewPass;
	update users set UserPass=_NewPass where UserID=_UserID and UserPass=_OldPass and temp=_NewPassAgain;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSuaExam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSuaExam`(
	IN _ExamID int(11),
    IN _ExamName nvarchar(100),
    IN _Amount int(11),
    IN _Time int(11),
	IN _StateExam int(1),
	IN _SubjectID int(11)
    
)
Begin
	
		Update exam
        Set  ExamName=_ExamName,Amount=_Amount,Time=_Time,
        StateExam=_StateExam,SubjectID=_SubjectID
        Where ExamID=_ExamID;
    
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSuaUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSuaUser`(
	IN _UserID int(11),
    IN _UserPass varchar(100),
    IN _UserName varchar(100),
	IN _DateOfBirth date,
	IN _Gender int(1),
	IN _PhoneNumber varchar(15),
    IN _StateUser int(1)
    
)
Begin
	
		Update users
        Set  UserPass=_UserID,UserName=_UserName,DateOfBirth=_DateOfBirth,Gender=_Gender,
        PhoneNumber=_PhoneNumber,StateUser=_StateUser
        Where UserID=_UserID;
    
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procThemExam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procThemExam`(
	IN _ExamID int(11),
    IN _ExamName nvarchar(100),
    IN _Amount int(11),
    IN _Time int(11),
	IN _StateExam int(1),
	IN _SubjectID int(11)
    
)
Begin
	
		Insert into exam(ExamID,ExamName,Amount,Time,StateExam,SubjectID)
        values (_ExamID,_ExamName,_Amount,_Time,_StateExam,_SubjectID);
    
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procThemResult` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procThemResult`(
	IN _UserID int(11),
    IN _ExamID int(11),
    IN _Mark int(11)
)
Begin
	
		insert into result (UserID,ExamID,Mark) value(_UserID,_ExamID,_Mark);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procThemTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procThemTest`(
	
	IN _ExamID int(11),

    	IN _QuestionID int(11)
)
Begin
	
		
	insert into test value (_ExamID,_QuestionID);

End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procThemUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procThemUsers`(
	IN UserID int(11),
    IN UserPass varchar(100),
    IN UserName varchar(100),
	IN DateOfBirth date,
	IN Gender int(1),
	IN PhoneNumber varchar(15),
    IN StateUser int(1)
    
)
Begin
	
		Insert into users(UserID,UserPass,UserName,DateOfBirth,Gender,PhoneNumber,StateUser)
        values (UserID,UserPass,UserName,DateOfBirth,Gender,PhoneNumber,StateUser);
    
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procXoaExam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procXoaExam`(
	IN _id int(11)
)
Begin
	
		Delete From exam where ExamID=_id;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procXoaUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procXoaUser`(
	IN _id int(11)
)
Begin
	
		Delete From users where UserID=_id;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-30 15:13:11
