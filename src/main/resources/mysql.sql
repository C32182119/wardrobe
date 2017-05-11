/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.11 : Database - wardrobe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wardrobe` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wardrobe`;

/*Table structure for table `cloth_info` */

DROP TABLE IF EXISTS `cloth_info`;

CREATE TABLE `cloth_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cloth_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `cloth_name` varchar(255) DEFAULT NULL,
  `cloth_price` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `material` int(11) DEFAULT NULL,
  `occasion` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `cloth_img` varchar(255) DEFAULT NULL,
  `is_favorite` int(11) DEFAULT NULL,
  `is_cleaned` int(11) DEFAULT NULL,
  `is_for_sale` int(11) DEFAULT NULL,
  `is_selled` int(11) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `cloth_info` */

insert  into `cloth_info`(`id`,`cloth_id`,`user_id`,`cloth_name`,`cloth_price`,`create_time`,`material`,`occasion`,`season`,`color`,`size`,`cloth_img`,`is_favorite`,`is_cleaned`,`is_for_sale`,`is_selled`,`others`) values (1,'cuqjeiztS10','uuqjd3bSB10','11','11','2017-07-31T16:00:00.000Z',4,0,1,2,0,'',0,0,0,0,NULL),(2,'cuqjerYBJ10','uuqjcXThM10','11sa','SS','2000-02-29T16:00:00.000Z',4,0,1,0,3,'',0,0,0,0,NULL),(3,'cuqjesCNd10','uuqjd3bSB10','11111','111','0',0,0,2,0,0,'',0,0,0,0,NULL),(4,'cuqjixLRV10','uuqjd3bSB10','112','212','0',0,0,0,0,0,'',0,0,0,0,NULL),(5,'cuqjixOXN11','uuqjd3bSB10','12','23213','0',0,0,0,0,0,'',0,0,0,0,NULL),(6,'cuqjixRxG12','uuqjd3bSB10','a\'da\'s\'d','sa\'da\'s\'d','0',0,0,0,0,0,'',0,0,0,0,NULL),(7,'cuqjiygro10','uuqjd3bSB10','111','11111','0',0,0,0,0,0,'',0,0,0,0,NULL),(8,'cuqjiyndw11','uuqjd3bSB10','11','1111','0',0,0,0,0,0,'',0,0,0,0,NULL),(9,'cuqjiyV1D10','uuqjd3bSB10','sa\'da\'s','s\'d','0',0,0,0,0,0,'',0,0,0,0,NULL),(10,'cuqjiyZXy11','uuqjd3bSB10','1','1','0',0,0,0,0,0,'',0,0,0,0,NULL),(11,'cuqjiz2f612','uuqjd3bSB10','1','1','0',0,0,0,0,0,'',0,0,0,0,NULL),(12,'cuqjiz43M13','uuqjd3bSB10','1','1','0',0,0,0,0,0,'',0,0,0,0,NULL),(13,'cuqjizxkk10','uuqjd3bSB10','111','111','0',0,0,0,0,0,'',0,0,0,0,NULL),(14,'cuqjizDGD11','uuqjd3bSB10','11','11','0',0,0,0,0,0,'',0,0,0,0,NULL),(15,'cuqjiA4k710','uuqjd3bSB10','1','1','0',0,0,0,0,0,'',0,0,0,0,NULL);

/*Table structure for table `follow` */

DROP TABLE IF EXISTS `follow`;

CREATE TABLE `follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `target_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `follow` */

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `info_id` varchar(255) DEFAULT NULL,
  `info_type` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `information` */

/*Table structure for table `market` */

DROP TABLE IF EXISTS `market`;

CREATE TABLE `market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `cloth_id` varchar(255) DEFAULT NULL,
  `sale_price` varchar(255) DEFAULT NULL,
  `is_selled` int(11) DEFAULT NULL,
  `sale_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `market` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar_path` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`user_id`,`username`,`password`,`avatar_path`,`create_time`) values (1,'uuqjcXThM10','111','11',NULL,'2017-05-10 16:17:18:898'),(2,'uuqjcYmyK11','1111','11',NULL,'2017-05-10 16:19:11:427'),(3,'uuqjcYuST12','11111','11',NULL,'2017-05-10 16:19:43:427'),(4,'uuqjcYAWf13','1','11',NULL,'2017-05-10 16:20:06:699'),(5,'uuqjcZCyg10','2','1',NULL,'2017-05-10 16:24:11:229'),(6,'uuqjd0aM310','22','1',NULL,'2017-05-10 16:26:22:780'),(7,'uuqjd0EBM10','3','3',NULL,'2017-05-10 16:28:17:462'),(8,'uuqjd3bSB10','11','11',NULL,'2017-05-10 16:38:22:013'),(9,'uuqjijZRD10','222','1',NULL,'2017-05-11 14:16:29:081');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
