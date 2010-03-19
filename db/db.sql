/*
SQLyog Community v8.3 
MySQL - 5.1.37-1ubuntu5.1 : Database - cake
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cake` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cake`;

/*Table structure for table `acos` */

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `acos` */

insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (1,NULL,NULL,NULL,'controllers',1,70),(2,1,NULL,NULL,'Pages',2,15),(3,2,NULL,NULL,'display',3,4),(4,2,NULL,NULL,'add',5,6),(5,2,NULL,NULL,'edit',7,8),(6,2,NULL,NULL,'index',9,10),(7,2,NULL,NULL,'view',11,12),(8,2,NULL,NULL,'delete',13,14),(9,1,NULL,NULL,'Users',16,31),(10,9,NULL,NULL,'login',17,18),(11,9,NULL,NULL,'logout',19,20),(12,9,NULL,NULL,'index',21,22),(13,9,NULL,NULL,'view',23,24),(14,9,NULL,NULL,'add',25,26),(15,9,NULL,NULL,'edit',27,28),(16,9,NULL,NULL,'delete',29,30),(17,1,NULL,NULL,'Widgets',32,43),(18,17,NULL,NULL,'index',33,34),(19,17,NULL,NULL,'view',35,36),(20,17,NULL,NULL,'add',37,38),(21,17,NULL,NULL,'edit',39,40),(22,17,NULL,NULL,'delete',41,42),(23,1,NULL,NULL,'Groups',44,57),(24,23,NULL,NULL,'index',45,46),(25,23,NULL,NULL,'view',47,48),(26,23,NULL,NULL,'add',49,50),(27,23,NULL,NULL,'edit',51,52),(28,23,NULL,NULL,'delete',53,54),(29,23,NULL,NULL,'build_acl',55,56),(30,1,NULL,NULL,'Posts',58,69),(31,30,NULL,NULL,'index',59,60),(32,30,NULL,NULL,'view',61,62),(33,30,NULL,NULL,'add',63,64),(34,30,NULL,NULL,'edit',65,66),(35,30,NULL,NULL,'delete',67,68);

/*Table structure for table `aros` */

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `aros` */

/*Table structure for table `aros_acos` */

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `aros_acos` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `users` */

/*Table structure for table `widgets` */

DROP TABLE IF EXISTS `widgets`;

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `widgets` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
