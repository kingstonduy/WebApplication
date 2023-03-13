use student_manager;
DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` varchar(45) NOT NULL,
  `sname` varchar(45) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid_UNIQUE` (`sid`),
  UNIQUE KEY `student_name_UNIQUE` (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `student` WRITE;

INSERT INTO `student` VALUES ('ITITIU20194','Duong Khanh Duy'),('ITITIU20257','Nguyen Trong Nghia');
UNLOCK TABLES;

