# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.1.44)
# Database: punch
# Generation Time: 2011-11-22 00:51:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sym_authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_authors`;

CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '0000-00-00 00:00:00',
  `user_type` enum('author','developer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` int(11) NOT NULL DEFAULT '0',
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;

INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`)
VALUES
	(1,'kirkstrobeck','eb5999e46d61f4e0013b77436c57f1edc2087592','Kirk','Strobeck','kirk@strobeck.com','2011-11-21 14:45:53','developer','yes',8,'no',NULL),
	(4,'admin','aa551fdb6e9fa83803b380c2be158758e4a0edec','Admin','Admin','admin@noreply.com','2011-11-21 16:44:48','developer','no',8,'no',NULL);

/*!40000 ALTER TABLE `sym_authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_cache`;

CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creation` (`creation`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_cache` WRITE;
/*!40000 ALTER TABLE `sym_cache` DISABLE KEYS */;

INSERT INTO `sym_cache` (`id`, `hash`, `creation`, `expiry`, `data`)
VALUES
	(1,'_session_config',1295115709,NULL,'eJwzBAAAMgAy');

/*!40000 ALTER TABLE `sym_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries`;

CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL DEFAULT '0',
  `author_id` int(11) unsigned NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creation_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries` WRITE;
/*!40000 ALTER TABLE `sym_entries` DISABLE KEYS */;

INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`)
VALUES
	(43,7,2,'2011-01-18 15:04:52','2011-01-18 23:04:52'),
	(41,8,2,'2011-01-18 15:02:57','2011-01-18 23:02:57'),
	(40,8,2,'2011-01-18 15:02:39','2011-01-18 23:02:39'),
	(44,7,2,'2011-01-18 15:07:26','2011-01-18 23:07:26'),
	(111,7,2,'2011-01-18 17:45:11','2011-01-19 01:45:11'),
	(130,7,2,'2011-01-18 18:37:16','2011-01-19 02:37:16'),
	(117,7,2,'2011-01-18 17:52:23','2011-01-19 01:52:23'),
	(134,7,2,'2011-01-18 18:48:46','2011-01-19 02:48:46'),
	(116,7,2,'2011-01-18 17:51:36','2011-01-19 01:51:36'),
	(194,7,2,'2011-02-24 12:41:31','2011-02-24 20:41:31'),
	(114,7,2,'2011-01-18 17:49:26','2011-01-19 01:49:26'),
	(113,7,2,'2011-01-18 17:47:52','2011-01-19 01:47:52'),
	(110,7,2,'2011-01-18 17:40:59','2011-01-19 01:40:59'),
	(133,7,2,'2011-01-18 18:45:53','2011-01-19 02:45:53'),
	(84,7,2,'2011-01-18 16:09:20','2011-01-19 00:09:20'),
	(85,7,2,'2011-01-18 16:09:52','2011-01-19 00:09:52'),
	(86,7,2,'2011-01-18 16:11:50','2011-01-19 00:11:50'),
	(107,7,2,'2011-01-18 17:34:05','2011-01-19 01:34:05'),
	(108,7,2,'2011-01-18 17:36:20','2011-01-19 01:36:20'),
	(89,7,2,'2011-01-18 16:18:09','2011-01-19 00:18:09'),
	(90,7,2,'2011-01-18 16:22:47','2011-01-19 00:22:47'),
	(91,7,2,'2011-01-18 16:29:22','2011-01-19 00:29:22'),
	(93,8,2,'2011-01-18 16:34:41','2011-01-19 00:34:41'),
	(94,7,2,'2011-01-18 16:36:56','2011-01-19 00:36:56'),
	(95,7,2,'2011-01-18 16:38:07','2011-01-19 00:38:07'),
	(103,7,2,'2011-01-18 17:15:40','2011-01-19 01:15:40'),
	(118,7,2,'2011-01-18 17:53:03','2011-01-19 01:53:03'),
	(119,7,2,'2011-01-18 17:56:33','2011-01-19 01:56:33'),
	(120,7,2,'2011-01-18 17:59:40','2011-01-19 01:59:40'),
	(122,7,2,'2011-01-18 18:03:15','2011-01-19 02:03:15'),
	(125,7,2,'2011-01-18 18:10:00','2011-01-19 02:10:00'),
	(135,7,2,'2011-01-18 18:49:16','2011-01-19 02:49:16'),
	(207,9,1,'2011-04-11 18:03:02','2011-04-12 01:03:02'),
	(206,9,1,'2011-04-11 18:02:25','2011-04-12 01:02:25'),
	(209,9,2,'2011-04-11 20:55:07','2011-04-12 03:55:07'),
	(210,9,2,'2011-04-11 20:56:10','2011-04-12 03:56:10'),
	(290,7,2,'2011-09-16 17:37:25','2011-09-17 00:37:25');

/*!40000 ALTER TABLE `sym_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_23
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_23`;

CREATE TABLE `sym_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_entries_data_23` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_23` DISABLE KEYS */;

INSERT INTO `sym_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`)
VALUES
	(47,43,'/uploads/img_1222-1295391892.jpg',266605,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:04:52-08:00\";s:5:\"width\";i:904;s:6:\"height\";i:1200;}'),
	(48,44,'/uploads/img_7898-1295392046.jpg',801569,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:07:26-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(114,110,'/uploads/img_8593-1295401259.jpg',338341,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:40:59-08:00\";s:5:\"width\";i:900;s:6:\"height\";i:1200;}'),
	(115,111,'/uploads/img_2220-1295401511.jpg',1033912,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:45:11-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}'),
	(117,113,'/uploads/img_3130-1295401672.jpg',430133,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:47:52-08:00\";s:5:\"width\";i:600;s:6:\"height\";i:800;}'),
	(118,114,'/uploads/img_7804-1295401766.jpg',383562,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:49:26-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;}'),
	(134,130,'/uploads/nehalemroad-1295404636.jpg',458366,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:37:17-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}'),
	(197,194,'/uploads/cloudblanket-1298580091.jpg',297826,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-02-24T12:41:31-08:00\";s:5:\"width\";i:1503;s:6:\"height\";i:1000;}'),
	(88,84,'/uploads/img_5728-1295395760.jpg',690899,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:09:20-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(89,85,'/uploads/img_6030-1295395792.jpg',672312,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:09:52-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(90,86,'/uploads/img_7087-1295395910.jpg',573400,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:11:50-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(111,107,'/uploads/img_2522-1295400845.jpg',670335,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:34:05-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:900;}'),
	(112,108,'/uploads/img_7789-1295400980.jpg',124788,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:36:20-08:00\";s:5:\"width\";i:600;s:6:\"height\";i:800;}'),
	(93,89,'/uploads/img_9768-1295396289.jpg',1013987,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:18:09-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}'),
	(94,90,'/uploads/img_1581-2-1295396567.jpg',955882,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:22:47-08:00\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;}'),
	(95,91,'/uploads/img_9293-1295396962.jpg',498041,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:29:22-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(97,94,'/uploads/depoe_light-1295397416.jpg',59589,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:36:56-08:00\";s:5:\"width\";i:672;s:6:\"height\";i:450;}'),
	(98,95,'/uploads/ksw_0766-1295397487.jpg',231451,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:38:07-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}'),
	(107,103,'/uploads/ksw_5631-1295399740.jpg',468734,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:15:40-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}'),
	(120,116,'/uploads/img_6834-1295401896.jpg',202681,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:51:36-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}'),
	(121,117,'/uploads/girl_web-1295401943.jpg',42447,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:52:23-08:00\";s:5:\"width\";i:456;s:6:\"height\";i:450;}'),
	(122,118,'/uploads/ksw_2863-1295401983.jpg',294798,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:53:03-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}'),
	(123,119,'/uploads/img_7573-1295402193.jpg',1332322,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:56:33-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}'),
	(124,120,'/uploads/chickenhoframe-1295402380.jpg',966134,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:59:40-08:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}'),
	(126,122,'/uploads/photo-1295402595.jpg',357367,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:03:15-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}'),
	(137,133,'/uploads/swimtree-1295405153.jpg',96931,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:45:53-08:00\";s:5:\"width\";i:678;s:6:\"height\";i:450;}'),
	(129,125,'/uploads/photo-18-02-34-1295403000.jpg',1148945,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:10:00-08:00\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;}'),
	(138,134,'/uploads/cpr-1295405326.jpg',188714,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:48:46-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}'),
	(139,135,'/uploads/davetubfinal-1295405356.jpg',832770,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:49:16-08:00\";s:5:\"width\";i:922;s:6:\"height\";i:800;}'),
	(286,290,'/uploads/photo-1316219845.jpg',1543926,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2011-09-16T17:37:25-07:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');

/*!40000 ALTER TABLE `sym_entries_data_23` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_24
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_24`;

CREATE TABLE `sym_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_entries_data_24` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_24` DISABLE KEYS */;

INSERT INTO `sym_entries_data_24` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(29,41,'street','street'),
	(25,40,'home','home'),
	(31,93,'oregon','oregon');

/*!40000 ALTER TABLE `sym_entries_data_24` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_28
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_28`;

CREATE TABLE `sym_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_entries_data_28` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_28` DISABLE KEYS */;

INSERT INTO `sym_entries_data_28` (`id`, `entry_id`, `relation_id`)
VALUES
	(117,111,41),
	(50,44,41),
	(49,43,41),
	(136,130,93),
	(123,117,41),
	(140,134,40),
	(122,116,41),
	(199,194,93),
	(120,114,41),
	(119,113,41),
	(116,110,41),
	(139,133,93),
	(90,84,41),
	(91,85,41),
	(92,86,41),
	(113,107,41),
	(114,108,41),
	(95,89,41),
	(96,90,41),
	(97,91,41),
	(99,94,93),
	(100,95,93),
	(109,103,93),
	(124,118,41),
	(125,119,41),
	(126,120,41),
	(128,122,41),
	(131,125,41),
	(141,135,40),
	(289,290,41);

/*!40000 ALTER TABLE `sym_entries_data_28` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_29
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_29`;

CREATE TABLE `sym_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_entries_data_29` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_29` DISABLE KEYS */;

INSERT INTO `sym_entries_data_29` (`id`, `entry_id`, `value`)
VALUES
	(25,40,1),
	(29,41,2),
	(31,93,6);

/*!40000 ALTER TABLE `sym_entries_data_29` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_30
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_30`;

CREATE TABLE `sym_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_entries_data_30` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_30` DISABLE KEYS */;

INSERT INTO `sym_entries_data_30` (`id`, `entry_id`, `value`)
VALUES
	(41,43,5),
	(42,44,1),
	(109,111,16),
	(128,130,37),
	(115,117,21),
	(132,134,6),
	(114,116,8),
	(191,194,21),
	(112,114,18),
	(111,113,17),
	(108,110,12),
	(131,133,48),
	(82,84,10),
	(83,85,7),
	(84,86,3),
	(105,107,4),
	(106,108,13),
	(87,89,9),
	(88,90,11),
	(89,91,2),
	(91,94,4),
	(92,95,43),
	(101,103,14),
	(116,118,22),
	(117,119,20),
	(118,120,19),
	(120,122,14),
	(123,125,15),
	(133,135,11),
	(280,290,6);

/*!40000 ALTER TABLE `sym_entries_data_30` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_31
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_31`;

CREATE TABLE `sym_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `sym_entries_data_31` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_31` DISABLE KEYS */;

INSERT INTO `sym_entries_data_31` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(9,206,'cpr','cpr'),
	(8,207,'the-stylist','the stylist'),
	(14,209,'kimberly-warner','kimberly warner'),
	(12,210,'xyxx','xyxx');

/*!40000 ALTER TABLE `sym_entries_data_31` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_32
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_32`;

CREATE TABLE `sym_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `sym_entries_data_32` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_32` DISABLE KEYS */;

INSERT INTO `sym_entries_data_32` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(9,206,'http-cprfilmtumblrcom','http://cprfilm.tumblr.com/'),
	(8,207,'http-thestylistfilmtumblrcom','http://thestylistfilm.tumblr.com/'),
	(14,209,'http-kimberlywarnercom','http://kimberlywarner.com/'),
	(12,210,'http-xyxxtumblrcom','http://xyxx.tumblr.com');

/*!40000 ALTER TABLE `sym_entries_data_32` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_33
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_33`;

CREATE TABLE `sym_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `sym_entries_data_33` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_33` DISABLE KEYS */;

INSERT INTO `sym_entries_data_33` (`id`, `entry_id`, `value`)
VALUES
	(9,206,3),
	(8,207,4),
	(14,209,2),
	(12,210,5);

/*!40000 ALTER TABLE `sym_entries_data_33` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_34
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_34`;

CREATE TABLE `sym_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions`;

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions` WRITE;
/*!40000 ALTER TABLE `sym_extensions` DISABLE KEYS */;

INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`)
VALUES
	(129,'debugdevkit','enabled','1.2.1'),
	(130,'export_ensemble','enabled','1.16'),
	(131,'selectbox_link_field','enabled','1.22'),
	(132,'jit_image_manipulation','enabled','1.14'),
	(133,'maintenance_mode','enabled','1.5'),
	(134,'profiledevkit','enabled','1.0.4'),
	(135,'markdown','enabled','1.13'),
	(136,'xssfilter','enabled','1.1'),
	(137,'uniqueuploadfield','enabled','1.4.2'),
	(138,'subsectionmanager','enabled','1.3'),
	(139,'order_entries','enabled','1.9.7'),
	(153,'root_page_params','enabled','1.2'),
	(151,'configuration','enabled','1.3.5'),
	(154,'mobiledevicedetection','enabled','1.2'),
	(155,'systemidfield','enabled','1.0.2'),
	(156,'image_index_preview','enabled','1.2.1'),
	(157,'tweak_ui','enabled','0.1.2');

/*!40000 ALTER TABLE `sym_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_extensions_delegates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions_delegates`;

CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL DEFAULT '0',
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions_delegates` WRITE;
/*!40000 ALTER TABLE `sym_extensions_delegates` DISABLE KEYS */;

INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`)
VALUES
	(237,129,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(236,129,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(238,130,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(239,132,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(245,133,'/blueprints/pages/','AppendPageContent','__appendType'),
	(244,133,'/backend/','AppendPageAlert','__appendAlert'),
	(243,133,'/system/preferences/','CustomActions','__toggleMaintenanceMode'),
	(242,133,'/system/preferences/','Save','__SavePreferences'),
	(241,133,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(252,134,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(251,134,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(234,136,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),
	(233,136,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),
	(259,138,'/backend/','AppendPageAlert','__upgradeMediathek'),
	(258,138,'/publish/edit/','EntryPostEdit','__saveSortOrder'),
	(257,138,'/publish/new/','EntryPostNew','__saveSortOrder'),
	(256,138,'/backend/','AdminPagePreGenerate','__appendAssets'),
	(250,139,'/backend/','InitaliseAdminPageHead','appendScriptToHead'),
	(249,154,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(232,151,'/system/preferences/','Save','__SavePreferences'),
	(254,153,'/system/preferences/','AddCustomPreferenceFieldsets','append_preferences'),
	(253,153,'/frontend/','FrontendPrePageResolve','addPage'),
	(231,151,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(248,154,'/frontend/','FrontendInitialised','initialize'),
	(235,136,'/frontend/','EventPreSaveFilter','eventPreSaveFilter'),
	(240,132,'/system/preferences/','Save','__SavePreferences'),
	(246,133,'/frontend/','FrontendPrePageResolve','__checkForMaintenanceMode'),
	(247,133,'/frontend/','FrontendParamsResolve','__addParam'),
	(255,153,'/system/preferences/','Save','save_settings'),
	(260,156,'/backend/','AdminPagePreGenerate','__appendAssets'),
	(261,157,'/backend/','InitaliseAdminPageHead','addScriptToHead');

/*!40000 ALTER TABLE `sym_extensions_delegates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields`;

CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;

INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`)
VALUES
	(30,'Order','order','order_entries',7,'no',3,'main','no'),
	(29,'Order','order','order_entries',8,'no',1,'main','no'),
	(28,'Category','category','selectbox_link',7,'no',2,'main','yes'),
	(24,'Name','name','input',8,'no',0,'main','yes'),
	(23,'Photo','photo','uniqueupload',7,'yes',1,'main','yes'),
	(31,'Link','link','input',9,'yes',0,'main','yes'),
	(32,'URL','url','input',9,'yes',1,'main','yes'),
	(33,'Order','order','order_entries',9,'no',2,'main','no'),
	(34,'ID','id','systemid',7,'no',0,'main','yes');

/*!40000 ALTER TABLE `sym_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_author`;

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_checkbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_checkbox`;

CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_date
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_date`;

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_input
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_input`;

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;

INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`)
VALUES
	(30,31,NULL),
	(29,24,NULL),
	(31,32,'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');

/*!40000 ALTER TABLE `sym_fields_input` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_order_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_order_entries`;

CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_fields_order_entries` WRITE;
/*!40000 ALTER TABLE `sym_fields_order_entries` DISABLE KEYS */;

INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`)
VALUES
	(14,29,'yes','yes'),
	(20,30,'yes','yes'),
	(15,33,'yes','yes');

/*!40000 ALTER TABLE `sym_fields_order_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_select
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_select`;

CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_selectbox_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_selectbox_link`;

CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_selectbox_link` WRITE;
/*!40000 ALTER TABLE `sym_fields_selectbox_link` DISABLE KEYS */;

INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`)
VALUES
	(23,28,'yes','24',20,'yes');

/*!40000 ALTER TABLE `sym_fields_selectbox_link` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_stage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_stage`;

CREATE TABLE `sym_fields_stage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `constructable` smallint(1) DEFAULT '0',
  `destructable` smallint(1) DEFAULT '0',
  `draggable` smallint(1) DEFAULT '0',
  `droppable` smallint(1) DEFAULT '0',
  `searchable` smallint(1) DEFAULT '0',
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_fields_stage` WRITE;
/*!40000 ALTER TABLE `sym_fields_stage` DISABLE KEYS */;

INSERT INTO `sym_fields_stage` (`id`, `field_id`, `constructable`, `destructable`, `draggable`, `droppable`, `searchable`, `context`)
VALUES
	(3,26,1,1,1,0,1,'subsectionmanager');

/*!40000 ALTER TABLE `sym_fields_stage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_stage_sorting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_stage_sorting`;

CREATE TABLE `sym_fields_stage_sorting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `order` text,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_subsectionmanager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_subsectionmanager`;

CREATE TABLE `sym_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `subsection_id` varchar(255) NOT NULL DEFAULT '',
  `filter_tags` text,
  `caption` text,
  `included_fields` text,
  `allow_multiple` tinyint(1) DEFAULT '0',
  `show_preview` tinyint(1) DEFAULT '0',
  `droptext` text,
  `lock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_systemid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_systemid`;

CREATE TABLE `sym_fields_systemid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_taglist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_taglist`;

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_textarea
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_textarea`;

CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_uniqueupload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_uniqueupload`;

CREATE TABLE `sym_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(255) NOT NULL DEFAULT '',
  `validator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_fields_uniqueupload` WRITE;
/*!40000 ALTER TABLE `sym_fields_uniqueupload` DISABLE KEYS */;

INSERT INTO `sym_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`)
VALUES
	(24,23,'/workspace/uploads',NULL);

/*!40000 ALTER TABLE `sym_fields_uniqueupload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_upload`;

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_forgotpass
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_forgotpass`;

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages`;

CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages` WRITE;
/*!40000 ALTER TABLE `sym_pages` DISABLE KEYS */;

INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`)
VALUES
	(77,NULL,'Home','category',NULL,'category/size','categories,links,mobiledevicedetection,photos',NULL,1);

/*!40000 ALTER TABLE `sym_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_pages_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages_types`;

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;

INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`)
VALUES
	(681,77,'index');

/*!40000 ALTER TABLE `sym_pages_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections`;

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `entry_order` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_order_direction` enum('asc','desc') COLLATE utf8_unicode_ci DEFAULT 'asc',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections` WRITE;
/*!40000 ALTER TABLE `sym_sections` DISABLE KEYS */;

INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`)
VALUES
	(8,'Categories','categories',1,'29','asc','no','Content'),
	(7,'Photos','photos',3,'30','asc','no','Advanced'),
	(9,'Links','links',2,'33','asc','no','Content');

/*!40000 ALTER TABLE `sym_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sections_association
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections_association`;

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL DEFAULT '0',
  `child_section_field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;

INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`)
VALUES
	(19,8,24,7,28,'no');

/*!40000 ALTER TABLE `sym_sections_association` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sessions`;

CREATE TABLE `sym_sessions` (
  `session` varchar(255) NOT NULL DEFAULT '',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text,
  PRIMARY KEY (`session`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `sym_sessions` WRITE;
/*!40000 ALTER TABLE `sym_sessions` DISABLE KEYS */;

INSERT INTO `sym_sessions` (`session`, `session_expires`, `session_data`)
VALUES
	('bcba752696f2502f05d39c47ea34e0d4',1321315973,'sym-|a:0:{}'),
	('87dbde3ded80515319e6806da7949bab',1321315972,'sym-|a:0:{}'),
	('708c9852c0630dba998785ce7e8eeb50',1321308927,'sym-|a:0:{}'),
	('6c45edbc02dfdaa6059e96b81d9fc190',1321305964,'sym-|a:0:{}'),
	('554c3468765f2c848ec9bf266a5e0ac6',1321305963,'sym-|a:0:{}'),
	('1e280d23f8436a8936bbdf6b85a1033d',1321299168,'sym-|a:0:{}'),
	('a1f68e7b0c3168aed81207b25e7a4fe0',1321299149,'sym-|a:0:{}'),
	('060eac292fec06266f870a49957ec645',1321293915,'sym-|a:0:{}'),
	('9dd7707693215264354b01d96f752e86',1321914624,'sym-|a:2:{s:8:\"username\";s:12:\"kirkstrobeck\";s:4:\"pass\";s:40:\"eb5999e46d61f4e0013b77436c57f1edc2087592\";}'),
	('0584a0587e1e65b79de68b379c818765',1321922688,'sym-|a:2:{s:8:\"username\";s:5:\"admin\";s:4:\"pass\";s:40:\"aa551fdb6e9fa83803b380c2be158758e4a0edec\";}');

/*!40000 ALTER TABLE `sym_sessions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
