/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - db_employee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_employee` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_employee`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `EMP_ID` int(8) NOT NULL AUTO_INCREMENT,
  `EMP_NAME` varchar(20) NOT NULL,
  `JOB` varchar(20) DEFAULT NULL,
  `SALARY` double(50,2) DEFAULT NULL,
  `DEPT` int(10) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`EMP_ID`,`EMP_NAME`,`JOB`,`SALARY`,`DEPT`) values (1,'王楠','clerk',4300.00,10),(2,'张敬','clerk',4300.00,10),(3,'李刚','manager',5000.00,20),(4,'马明','manager',5000.00,20);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
