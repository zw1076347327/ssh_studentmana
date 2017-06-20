/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.16-log : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student`;

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(26) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC84C55344AFBAA8D` (`userId`),
  CONSTRAINT `FKC84C55344AFBAA8D` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `report` */

insert  into `report`(`id`,`course`,`price`,`userId`) values (1,'java',80,2),(2,'java web',90,2),(3,'javaEE',80,2),(4,'英语',70,3);

/*Table structure for table `speciality` */

DROP TABLE IF EXISTS `speciality`;

CREATE TABLE `speciality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `speciality` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `teacher` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `speciality` */

insert  into `speciality`(`id`,`uname`,`speciality`,`teacher`) values (1,'aa','软件技术','王大'),(2,'bb','软件测试','赵二'),(3,'cc','互联网','张三'),(4,'dd','电子信息','李四'),(5,'ee','信息工程','王五');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pwd` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `birth` varchar(26) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `address` varchar(26) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `reportId` int(11) DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reportId_foreign` (`reportId`),
  CONSTRAINT `reportId_foreign` FOREIGN KEY (`reportId`) REFERENCES `report` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`uname`,`pwd`,`role`,`birth`,`tel`,`address`,`reportId`,`sex`) values (1,'admin','111','管理员',NULL,NULL,NULL,NULL,NULL),(2,'aa','222','学生','1992/2/2',1869274962,'武汉',1,'男'),(3,'bb','222','学生','1992/2/2',1004372984,'武汉',2,'女'),(4,'cc','222','学生','1991/1/1',1097843789,'南京',3,'男'),(5,'dd','222','学生','1991/2/1',12987347,'北京',4,'男');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
