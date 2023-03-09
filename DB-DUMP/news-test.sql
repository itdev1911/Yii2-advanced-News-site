/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 10.4.19-MariaDB-log : Database - news-test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`news-test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `news-test`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`isActive`,`status`,`created_at`,`updated_at`) values 
(1,'Техника',1,1,NULL,NULL),
(2,'Наука',1,1,NULL,NULL),
(3,'Технология',1,1,NULL,NULL),
(4,'Кулинария',1,1,NULL,NULL),
(5,'Экономика',1,1,NULL,NULL),
(6,'Политика',1,1,NULL,NULL);

/*Table structure for table `followers` */

DROP TABLE IF EXISTS `followers`;

CREATE TABLE `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `followers` */

insert  into `followers`(`id`,`fio`,`phone`,`email`,`comment`,`isActive`,`status`,`created_at`,`updated_at`) values 
(1,'TEST','+992927001911','manu6699@mail.ru','TEST Comment',NULL,NULL,NULL,NULL);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1678178652),
('m130524_201442_init',1678178655),
('m190124_110200_add_verification_token_column_to_user_table',1678178655),
('m230307_084920_create_category_table',1678180907),
('m230307_084931_create_news_table',1678180907),
('m230307_084949_create_news_category_table',1678180907),
('m230307_090316_create_followers_table',1678180907);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`description`,`photo`,`isActive`,`status`,`created_at`,`updated_at`) values 
(1,'ТЕСТ','<p>Просьба не трогать!</p>\r\n','',1,NULL,NULL,NULL),
(2,'Чат-бот ChatGPT предсказал будущее российской экономики','<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 0px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__text\" style=\"max-height: 1e+06px; box-sizing: inherit; font-size: 18px; line-height: 28px; color: rgb(69, 69, 69);\">Чат-бот ChatGPT предсказал будущее российской экономики: сейчас она переживает трудности, но способна справиться с вызовами, такие ответы нейросеть сгенерировала на вопросы РИА Новости.</div>\r\n</div>\r\n\r\n<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 20px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__quote\" style=\"max-height: 1e+06px; box-sizing: inherit; position: relative; padding: 20px 0px;\">\r\n<div class=\"article__quote-bg color-font\" style=\"max-height: 1e+06px; box-sizing: inherit; position: absolute; top: 0px; left: 0px; font-size: 150px; line-height: 30px; font-weight: 600; color: rgb(0, 41, 129); opacity: 0.1;\">&laquo;</div>\r\n\r\n<div class=\"article__quote-text m-small\" style=\"max-height: 1e+06px; box-sizing: inherit; position: relative; font-size: 20px; line-height: 30px; color: rgb(69, 69, 69);\">\r\n<p>&quot;Россия является крупной экономикой, и ее государственный бюджет имеет значительный запас ресурсов. Также Россия располагает значительными запасами природных ресурсов, включая нефть, газ и другие полезные ископаемые. Это помогает России сохранять экономическую стабильность и сдерживать влияние внешних факторов на свою экономику&quot;, - ответил чат-бот на вопрос о будущем российской экономики.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 20px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__text\" style=\"max-height: 1e+06px; box-sizing: inherit; font-size: 18px; line-height: 28px; color: rgb(69, 69, 69);\">Чат-бот ChatGPT набрал популярность после запуска в конце ноября прошлого года, собрав первый миллион пользователей менее чем за неделю. Он принадлежит компании OpenAI. Одним из ее сооснователей в 2015 году выступил американский миллиардер&nbsp;<a href=\"https://ria.ru/person_Ilon_Mask/\" style=\"max-height: 1e+06px; box-sizing: inherit; text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51); margin-bottom: 0px; white-space: pre-wrap; position: relative; border-bottom: 1px solid rgb(0, 0, 0);\" target=\"_blank\">Илон Маск</a>, который позже разорвал связи со стартапом.</div>\r\n</div>\r\n','',1,NULL,NULL,NULL),
(3,'На грузинской границе образовалась пробка в сторону России','<p><span style=\"color:rgb(69, 69, 69); font-family:robotoflex,arial,sans-serif; font-size:18px\">Со стороны Грузии очередь большая к границе&quot;, - написал один из пользователей чата, сопроводив сообщение фотографией. Другой участник сообщил, что пробка со стороны Грузии до грузинского поста достигает двух километров. &quot;В сторону РФ большая пробка, все стоит&quot;, - добавила еще одна участница.</span></p>\r\n','',1,NULL,NULL,NULL),
(4,'Антонов назвал позором награждение в Белом доме члена \"Азова\"* Тайры','<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 0px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__text\" style=\"max-height: 1e+06px; box-sizing: inherit; font-size: 18px; line-height: 28px; color: rgb(69, 69, 69);\">Посол России в США Анатолий Антонов назвал позорным факт награждения в Белом доме представительницы украинского националистического полка &quot;Азов&quot;* (запрещенная в России террористическая организация) Юлии Паевской, известной как Тайра.</div>\r\n</div>\r\n\r\n<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 20px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__quote\" style=\"max-height: 1e+06px; box-sizing: inherit; position: relative; padding: 20px 0px;\">\r\n<div class=\"article__quote-bg color-font\" style=\"max-height: 1e+06px; box-sizing: inherit; position: absolute; top: 0px; left: 0px; font-size: 150px; line-height: 30px; font-weight: 600; color: rgb(0, 41, 129); opacity: 0.1;\">&laquo;</div>\r\n\r\n<div class=\"article__quote-text\" style=\"max-height: 1e+06px; box-sizing: inherit; position: relative; font-size: 20px; line-height: 30px; color: rgb(69, 69, 69);\">\r\n<p>&quot;Это позор. В голове не укладывается, что в стенах Белого дома могут чествовать нацистов&quot;, &ndash; говорится в заявлении главы дипмиссии.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"article__block\" style=\"max-height: 1e+06px; box-sizing: inherit; margin-top: 20px; position: relative; color: rgb(0, 0, 0); font-family: RobotoFlex, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"article__text\" style=\"max-height: 1e+06px; box-sizing: inherit; font-size: 18px; line-height: 28px; color: rgb(69, 69, 69);\">Он отметил, что американские власти знают о человеконенавистнической идеологии &quot;Азова&quot;*, который использует символику гитлеровской&nbsp;<a href=\"https://ria.ru/location_Germany/\" style=\"max-height: 1e+06px; box-sizing: inherit; text-decoration-line: none; cursor: pointer; color: rgb(51, 51, 51); margin-bottom: 0px; white-space: pre-wrap; position: relative; border-bottom: 1px solid rgb(0, 0, 0);\" target=\"_blank\">Германии</a>.</div>\r\n</div>\r\n','',1,NULL,NULL,NULL);

/*Table structure for table `news_category` */

DROP TABLE IF EXISTS `news_category`;

CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-news-news_id` (`news_id`),
  KEY `fk-news-cat_id` (`category_id`),
  CONSTRAINT `fk-news-cat_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-news-news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news_category` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`verification_token`) values 
(1,'admin','OrK0C2_cPl6klnnKRAc3sfXsuxYmPE-E','$2y$13$hcc8irGs44QwsnavgVgQRuaPyaDfB5s9PekxGynzR6pGco4GEPzT2',NULL,'admin@mail.ru',10,1678178687,1678178687,'mBLJsMr7eANAE_bM8qEiKlLUV_Yd1yyr_1678178687');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
