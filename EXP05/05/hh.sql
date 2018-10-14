/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - db_user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_user` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_user`;

/*Table structure for table `hh` */

DROP TABLE IF EXISTS `hh`;

CREATE TABLE `hh` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hh` */

insert  into `hh`(`id`,`name`) values (1,'江小鱼'),(2,'张嘉佳');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `address` varchar(300) NOT NULL,
  `hobbies` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `staticcode` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`sex`,`address`,`hobbies`,`email`,`staticcode`) values (56,'江小鱼','14e1b600b1fd579f47433b88e8d85291','女','中国·北京·东城·','爬山,游泳,滑雪,','18852931815@163.com',1),(57,'王木木','e10adc3949ba59abbe56e057f20f883e','女','中国·上海·东城·','爬山,游泳,滑雪,','18852931815@163.com',1),(60,'江流儿','e10adc3949ba59abbe56e057f20f883e','男','中国·上海·西城·','爬山,游泳,','18852931815@163.com',1),(61,'杨杰','e10adc3949ba59abbe56e057f20f883e','男','中国·北京·西城·','游泳,滑雪,','18852931815@163.com',1),(62,'张嘉佳','e10adc3949ba59abbe56e057f20f883e','男','中国·北京·海淀·','游泳,滑雪,','18852931815@163.com',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `balance` double NOT NULL,
  `code` int(6) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`balance`,`code`) values ('???','12',888,531251),('老王','123',100,662987),('老蒋','123',100,688449),('事实上','2222',555,914877);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
