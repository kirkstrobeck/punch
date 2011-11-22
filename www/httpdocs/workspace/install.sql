
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (30, 31, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (29, 24, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (31, 32, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (14, 29, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (20, 30, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (15, 33, 'yes', 'yes');

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (23, 28, 'yes', 24, 20, 'yes');

-- *** STRUCTURE: `tbl_fields_stage` ***
DROP TABLE IF EXISTS `tbl_fields_stage`;
CREATE TABLE `tbl_fields_stage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `constructable` smallint(1) DEFAULT '0',
  `destructable` smallint(1) DEFAULT '0',
  `draggable` smallint(1) DEFAULT '0',
  `droppable` smallint(1) DEFAULT '0',
  `searchable` smallint(1) DEFAULT '0',
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_stage` ***
INSERT INTO `tbl_fields_stage` (`id`, `field_id`, `constructable`, `destructable`, `draggable`, `droppable`, `searchable`, `context`) VALUES (3, 26, 1, 1, 1, 0, 1, 'subsectionmanager');

-- *** STRUCTURE: `tbl_fields_stage_sorting` ***
DROP TABLE IF EXISTS `tbl_fields_stage_sorting`;
CREATE TABLE `tbl_fields_stage_sorting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `order` text,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_stage_sorting` ***

-- *** STRUCTURE: `tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS `tbl_fields_subsectionmanager`;
CREATE TABLE `tbl_fields_subsectionmanager` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_subsectionmanager` ***

-- *** STRUCTURE: `tbl_fields_systemid` ***
DROP TABLE IF EXISTS `tbl_fields_systemid`;
CREATE TABLE `tbl_fields_systemid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_systemid` ***

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***

-- *** STRUCTURE: `tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS `tbl_fields_uniqueupload`;
CREATE TABLE `tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(255) NOT NULL DEFAULT '',
  `validator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_uniqueupload` ***
INSERT INTO `tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (24, 23, '/workspace/uploads', NULL);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
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
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (44, 28, '/uploads/img_4072-1295391507.jpg', 1354994, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T14:58:27-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (45, 29, '/uploads/img_7898-1295391671.jpg', 801569, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:01:11-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 31, '/uploads/n544179250_136201_9835-1295116452.jpg', 41080, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:34:12-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:453;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 32, '/uploads/n544179250_136202_239-1295116468.jpg', 41861, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:34:28-08:00\";s:5:\"width\";i:403;s:6:\"height\";i:604;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 33, '/uploads/n544179250_136203_596-1295116474.jpg', 48074, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:34:34-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:403;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (34, 34, '/uploads/n544179250_136204_940-1295116480.jpg', 55197, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:34:40-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:402;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (47, 43, '/uploads/img_1222-1295391892.jpg', 266605, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:04:52-08:00\";s:5:\"width\";i:904;s:6:\"height\";i:1200;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (36, 36, '/uploads/n544179250_136206_1642-1295116494.jpg', 34422, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:34:54-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:402;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 27, '/uploads/4402_113514789250_544179250_27742-1295116142.jpg', 43409, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-15T10:29:02-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:403;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (43, 26, '/uploads/img_8339-1295391297.jpg', 270028, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T14:54:57-08:00\";s:5:\"width\";i:904;s:6:\"height\";i:1200;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (48, 44, '/uploads/img_7898-1295392046.jpg', 801569, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:07:26-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (114, 110, '/uploads/img_8593-1295401259.jpg', 338341, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:40:59-08:00\";s:5:\"width\";i:900;s:6:\"height\";i:1200;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (50, 46, '/uploads/cpr-1295393671.jpg', 188714, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:34:31-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 47, '/uploads/cpr2-1295393724.jpg', 193188, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:35:24-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 48, '/uploads/betty1-1295393752.jpg', 203645, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:35:52-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (115, 111, '/uploads/img_2220-1295401511.jpg', 1033912, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:45:11-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 50, '/uploads/betty3-1295393833.jpg', 190527, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:37:13-08:00\";s:5:\"width\";i:868;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (292, 296, '/uploads/_ksw0581.jpg_effected-1317666092.jpg', 721356, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T11:21:32-07:00\";s:5:\"width\";i:2254;s:6:\"height\";i:1500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 52, '/uploads/betty5-1295393917.jpg', 257381, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:38:37-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 53, '/uploads/davetubfinal-1295393950.jpg', 832770, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:39:10-08:00\";s:5:\"width\";i:922;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (117, 113, '/uploads/img_3130-1295401672.jpg', 430133, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:47:52-08:00\";s:5:\"width\";i:600;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (190, 187, '/uploads/crocsflowerpower-1297625829.jpg', 364581, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-13T11:37:09-08:00\";s:5:\"width\";i:769;s:6:\"height\";i:505;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (118, 114, '/uploads/img_7804-1295401766.jpg', 383562, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:49:26-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 58, '/uploads/davetub2-1295394145.jpg', 140905, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:42:25-08:00\";s:5:\"width\";i:399;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 59, '/uploads/dehen-1295394198.jpg', 155797, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:43:18-08:00\";s:5:\"width\";i:898;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (195, 191, '/uploads/lenore-1298313825.jpg', 583872, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-21T10:43:45-08:00\";s:5:\"width\";i:1505;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 61, '/uploads/kimtubfinal-1295394314.jpg', 546428, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:45:14-08:00\";s:5:\"width\";i:665;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (66, 62, '/uploads/o_tubfinal-1295394512.jpg', 484802, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:48:32-08:00\";s:5:\"width\";i:604;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (67, 63, '/uploads/picture-1-1295394544.jpg', 442682, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:49:04-08:00\";s:5:\"width\";i:609;s:6:\"height\";i:782;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (134, 130, '/uploads/nehalemroad-1295404636.jpg', 458366, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:37:17-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 65, '/uploads/reneetub2-1295394608.jpg', 138114, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:50:08-08:00\";s:5:\"width\";i:391;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 66, '/uploads/simple4-1295394653.jpg', 150215, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:50:53-08:00\";s:5:\"width\";i:567;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (71, 67, '/uploads/simple5-1295394678.jpg', 154891, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:51:18-08:00\";s:5:\"width\";i:567;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (108, 104, '/uploads/picture-2-1295399789.jpg', 587867, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:16:29-08:00\";s:5:\"width\";i:610;s:6:\"height\";i:783;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (197, 194, '/uploads/cloudblanket-1298580091.jpg', 297826, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-24T12:41:31-08:00\";s:5:\"width\";i:1503;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (187, 183, '/uploads/window-1296488638.jpg', 202532, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-31T07:43:58-08:00\";s:5:\"width\";i:750;s:6:\"height\";i:500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 71, '/uploads/mannequinflowers-1295394858.jpg', 869646, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:54:18-08:00\";s:5:\"width\";i:1772;s:6:\"height\";i:792;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 72, '/uploads/saltcity-1295394929.jpg', 338147, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:55:29-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 73, '/uploads/l1000640-1295395090.jpg', 483859, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:58:10-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 75, '/uploads/l1000645-1295395117.jpg', 246965, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:58:37-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 76, '/uploads/l1000649-1295395184.jpg', 450124, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T15:59:44-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 77, '/uploads/l1000659-1295395220.jpg', 308191, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:00:20-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 78, '/uploads/l1000664-1295395259.jpg', 445101, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:00:59-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 79, '/uploads/l1000670-1295395299.jpg', 416752, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:01:39-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (84, 80, '/uploads/l1000672-1295395359.jpg', 635569, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:02:39-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (85, 81, '/uploads/l1000738-1295395408.jpg', 316103, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:03:28-08:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (192, 189, '/uploads/crocs2-1297625872.jpg', 200395, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-13T11:37:52-08:00\";s:5:\"width\";i:836;s:6:\"height\";i:554;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (88, 84, '/uploads/img_5728-1295395760.jpg', 690899, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:09:20-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (89, 85, '/uploads/img_6030-1295395792.jpg', 672312, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:09:52-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (90, 86, '/uploads/img_7087-1295395910.jpg', 573400, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:11:50-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (111, 107, '/uploads/img_2522-1295400845.jpg', 670335, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:34:05-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:900;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (112, 108, '/uploads/img_7789-1295400980.jpg', 124788, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:36:20-08:00\";s:5:\"width\";i:600;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (93, 89, '/uploads/img_9768-1295396289.jpg', 1013987, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:18:09-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (94, 90, '/uploads/img_1581-2-1295396567.jpg', 955882, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:22:47-08:00\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (95, 91, '/uploads/img_9293-1295396962.jpg', 498041, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:29:22-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (196, 192, '/uploads/lenoretillynoskull_final-1298313887.jpg', 596454, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-21T10:44:47-08:00\";s:5:\"width\";i:734;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (97, 94, '/uploads/depoe_light-1295397416.jpg', 59589, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:36:56-08:00\";s:5:\"width\";i:672;s:6:\"height\";i:450;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (98, 95, '/uploads/ksw_0766-1295397487.jpg', 231451, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:38:07-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (100, 96, '/uploads/legs.original-1295398455.jpg', 334109, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:54:15-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (101, 97, '/uploads/1920_beach-1295398487.jpg', 896487, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:54:47-08:00\";s:5:\"width\";i:1728;s:6:\"height\";i:1155;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (102, 98, '/uploads/4418721815_428e289a87_o-1295398517.jpg', 77165, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:55:17-08:00\";s:5:\"width\";i:777;s:6:\"height\";i:422;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (189, 186, '/uploads/tpc_fallmultispecialty_8x10crop-1297625559.jpg', 4572796, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-13T11:32:39-08:00\";s:5:\"width\";i:2381;s:6:\"height\";i:3151;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (104, 100, '/uploads/simplesustain-1295398639.jpg', 326367, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T16:57:19-08:00\";s:5:\"width\";i:1210;s:6:\"height\";i:482;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (107, 103, '/uploads/ksw_5631-1295399740.jpg', 468734, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:15:40-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (120, 116, '/uploads/img_6834-1295401896.jpg', 202681, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:51:36-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (121, 117, '/uploads/girl_web-1295401943.jpg', 42447, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:52:23-08:00\";s:5:\"width\";i:456;s:6:\"height\";i:450;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (122, 118, '/uploads/ksw_2863-1295401983.jpg', 294798, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:53:03-08:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (123, 119, '/uploads/img_7573-1295402193.jpg', 1332322, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:56:33-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (124, 120, '/uploads/chickenhoframe-1295402380.jpg', 966134, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T17:59:40-08:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (126, 122, '/uploads/photo-1295402595.jpg', 357367, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:03:15-08:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (137, 133, '/uploads/swimtree-1295405153.jpg', 96931, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:45:53-08:00\";s:5:\"width\";i:678;s:6:\"height\";i:450;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (129, 125, '/uploads/photo-18-02-34-1295403000.jpg', 1148945, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:10:00-08:00\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (138, 134, '/uploads/cpr-1295405326.jpg', 188714, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:48:46-08:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (139, 135, '/uploads/davetubfinal-1295405356.jpg', 832770, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-18T18:49:16-08:00\";s:5:\"width\";i:922;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (208, 205, '/uploads/sydtub-1302407300.jpg', 1013738, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-04-09T20:48:20-07:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (210, 212, '/uploads/dn_edgar-1310963300.jpg', 346427, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-17T21:28:20-07:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (211, 213, '/uploads/dn_nic-1310963354.jpg', 444520, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-17T21:29:14-07:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (212, 214, '/uploads/dn_chad-1310963384.jpg', 356898, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-17T21:29:44-07:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (145, 142, '/uploads/ksw_9056.jpg_effected-1295496480.jpg', 115259, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:08:00-08:00\";s:5:\"width\";i:1000;s:6:\"height\";i:664;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (146, 143, '/uploads/ksw_9182.jpg_colorize-1295496504.jpg', 85634, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:08:24-08:00\";s:5:\"width\";i:664;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (147, 144, '/uploads/ksw_9201-1295496544.jpg', 178909, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:09:04-08:00\";s:5:\"width\";i:680;s:6:\"height\";i:1024;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (148, 145, '/uploads/picture-3.png_effected-1295496553.jpg', 63645, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:09:14-08:00\";s:5:\"width\";i:679;s:6:\"height\";i:453;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (175, 171, '/uploads/_ksw1717-1296341692.jpg', 186910, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T14:54:52-08:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (150, 147, '/uploads/ksw_9254.jpg_effected-1295496627.jpg', 106000, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:10:27-08:00\";s:5:\"width\";i:588;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (151, 148, '/uploads/ksw_9194-1295496701.jpg', 180236, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:11:41-08:00\";s:5:\"width\";i:680;s:6:\"height\";i:1024;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (171, 169, '/uploads/ksw_6087.jpg_effected-1295501086.jpg', 1434865, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T21:24:46-08:00\";s:5:\"width\";i:2832;s:6:\"height\";i:4256;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (153, 151, '/uploads/ksw_5207.jpg_effected-1295498154.jpg', 1005849, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:35:54-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (154, 152, '/uploads/ksw_6214.jpg_effected-001-1295498201.jpg', 2077543, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:36:41-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (155, 153, '/uploads/ksw_5382.jpg_effected-1295498246.jpg', 1679314, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:37:26-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (173, 170, '/uploads/miatub_final-1296341623.jpg', 477679, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T14:53:44-08:00\";s:5:\"width\";i:698;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (157, 155, '/uploads/ksw_5830.jpg_effected-1295498352.jpg', 2340856, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:39:12-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (158, 156, '/uploads/ksw_4208.jpg_effected-001-1295498409.jpg', 2345815, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:40:09-08:00\";s:5:\"width\";i:2832;s:6:\"height\";i:4256;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (159, 157, '/uploads/ksw_4445.jpg_effected-1295498454.jpg', 1929719, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:40:54-08:00\";s:5:\"width\";i:2832;s:6:\"height\";i:4256;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (166, 164, '/uploads/ksw_6404.jpg_effected-1295500527.jpg', 2379685, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T21:15:27-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (161, 159, '/uploads/ksw_5964.jpg_effected-1295498604.jpg', 2402860, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T20:43:24-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (170, 168, '/uploads/ksw_5552.jpg_effected-1295500869.jpg', 1431428, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T21:21:09-08:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (167, 165, '/uploads/ksw_4397.jpg_effected-1295500623.jpg', 1582040, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-19T21:17:04-08:00\";s:5:\"width\";i:2832;s:6:\"height\";i:4256;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (176, 172, '/uploads/miatub_final-1296341996.jpg', 477679, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T14:59:56-08:00\";s:5:\"width\";i:698;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (177, 173, '/uploads/l1000856-1296342132.jpg', 103408, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T15:02:12-08:00\";s:5:\"width\";i:752;s:6:\"height\";i:500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (178, 174, '/uploads/l1001003-1296342145.jpg', 71086, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T15:02:25-08:00\";s:5:\"width\";i:752;s:6:\"height\";i:500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (179, 175, '/uploads/_ksw1612-1296342294.jpg', 176065, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T15:04:54-08:00\";s:5:\"width\";i:752;s:6:\"height\";i:500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (204, 201, '/uploads/the-stylist_title-1300310889.jpg', 88497, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:28:09-07:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (205, 202, '/uploads/cpr_title-1300310903.jpg', 84087, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:28:23-07:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (184, 180, '/uploads/_ksw1717a-1296343441.jpg', 106077, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-29T15:24:01-08:00\";s:5:\"width\";i:753;s:6:\"height\";i:500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (185, 181, '/uploads/kristintub_final-1296488432.jpg', 521442, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-31T07:40:33-08:00\";s:5:\"width\";i:533;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (186, 182, '/uploads/reneetub_final-1296488497.jpg', 494818, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-01-31T07:41:37-08:00\";s:5:\"width\";i:568;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (198, 195, '/uploads/luciansilo_sm-1300309723.jpg', 398047, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:08:43-07:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (199, 196, '/uploads/_ksw1956.jpg_effected-1300309770.jpg', 312706, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:09:30-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (200, 197, '/uploads/l1000027.jpg_effected-1300309809.jpg', 206150, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:10:10-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (201, 198, '/uploads/l1000767.jpg_effected-1300310085.jpg', 546744, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:14:45-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (202, 199, '/uploads/l1000120.jpg_effected-1300310109.jpg', 191272, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:15:09-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (203, 200, '/uploads/the-light_title-1300310636.jpg', 86501, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-03-16T14:23:56-07:00\";s:5:\"width\";i:1207;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (281, 285, '/uploads/tina5.jpg_effected-1316192394.jpg', 3569341, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-09-16T09:59:54-07:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2828;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (216, 219, '/uploads/dsc_0603-1311366040.jpg', 102749, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:20:40-07:00\";s:5:\"width\";i:399;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (217, 220, '/uploads/hailey1-1311366082.jpg', 95826, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:21:22-07:00\";s:5:\"width\";i:896;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (286, 290, '/uploads/photo-1316219845.jpg', 1543926, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-09-16T17:37:25-07:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (285, 289, '/uploads/tumblr_lqnq3fbd5x1qbb7rto1_500.pn-1316219577.jpeg', 141101, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-09-16T17:32:57-07:00\";s:5:\"width\";i:500;s:6:\"height\";i:669;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (271, 274, '/uploads/_ksw4053-1311438201.jpg', 750634, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-23T09:23:21-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (280, 283, '/uploads/_ksw2133-1313184605.jpg', 88103, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-08-12T14:30:05-07:00\";s:5:\"width\";i:600;s:6:\"height\";i:399;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (225, 228, '/uploads/paulfrank-1311366450.jpg', 134787, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:27:30-07:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (226, 229, '/uploads/ksw_9769-1311366480.jpg', 106095, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:28:00-07:00\";s:5:\"width\";i:399;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (293, 297, '/uploads/_ksw1974-1317668160.jpg', 3621445, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T11:56:00-07:00\";s:5:\"width\";i:4256;s:6:\"height\";i:2832;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (279, 282, '/uploads/_ksw2189-1313184593.jpg', 122919, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-08-12T14:29:53-07:00\";s:5:\"width\";i:600;s:6:\"height\";i:399;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (231, 234, '/uploads/ksw_5851-1311366657.jpg', 195544, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:30:57-07:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (234, 237, '/uploads/ksw_5111-1311366773.jpg', 329777, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:32:53-07:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (272, 275, '/uploads/ksw_0193-1311439565.jpg', 522089, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-23T09:46:05-07:00\";s:5:\"width\";i:1202;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (273, 276, '/uploads/_ksw5203-1311613642.jpg', 464537, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-25T10:07:23-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (275, 278, '/uploads/ksw_converse-1311785926.jpg', 410164, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-27T09:58:46-07:00\";s:5:\"width\";i:1225;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (277, 280, '/uploads/crocs_nicole-1313184378.jpg', 398872, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-08-12T14:26:18-07:00\";s:5:\"width\";i:845;s:6:\"height\";i:603;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (278, 281, '/uploads/albumsmall-1313184578.jpg', 1881018, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-08-12T14:29:38-07:00\";s:5:\"width\";i:2107;s:6:\"height\";i:1000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (294, 298, '/uploads/img_6569-1317668313.jpg', 1180842, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T11:58:33-07:00\";s:5:\"width\";i:1333;s:6:\"height\";i:2000;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (269, 272, '/uploads/ksw_6212-1311402450.jpg', 153345, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T23:27:30-07:00\";s:5:\"width\";i:902;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (246, 249, '/uploads/ksw_4419-1311367436.jpg', 353107, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T13:43:56-07:00\";s:5:\"width\";i:903;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (265, 268, '/uploads/ksw_9182-1311375080.jpg', 157987, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T15:51:20-07:00\";s:5:\"width\";i:399;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (262, 265, '/uploads/_ksw5184-1311374177.jpg', 605827, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T15:36:17-07:00\";s:5:\"width\";i:1204;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (264, 267, '/uploads/ksw_6315-1311374290.jpg', 326786, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-07-22T15:38:10-07:00\";s:5:\"width\";i:532;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (291, 295, '/uploads/img_9650-1317665804.jpg', 1921783, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T11:16:44-07:00\";s:5:\"width\";i:2250;s:6:\"height\";i:1500;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (289, 293, '/uploads/img_6569.jpg_effected-1317586973.jpg', 1061590, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-02T13:22:53-07:00\";s:5:\"width\";i:1333;s:6:\"height\";i:2000;}');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 42, 'waternaps', 'waternaps');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 41, 'street', 'street');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 40, 'home', 'home');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 37, 'campaigns', 'campaigns');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 38, 'salton-sea', 'salton sea');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 39, 'film', 'film');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 93, 'oregon', 'oregon');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 216, 'lifestyle', 'lifestyle');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (30, 31, 30);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (35, 36, 30);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (117, 111, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (33, 34, 30);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (46, 28, 25);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (50, 44, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (37, 32, 30);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (36, 32, 24);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (32, 33, 30);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (47, 29, 25);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (27, 27, 25);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (49, 43, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (45, 26, 25);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (52, 46, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (53, 47, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (54, 48, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (136, 130, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (56, 50, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (58, 52, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (59, 53, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (123, 117, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (140, 134, 40);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (192, 187, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (122, 116, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (64, 58, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (65, 59, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (199, 194, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (67, 61, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (68, 62, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (69, 63, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (120, 114, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (71, 65, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (72, 66, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (73, 67, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (110, 104, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (198, 192, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (189, 183, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (77, 71, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (78, 72, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (79, 73, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (119, 113, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (81, 75, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (82, 76, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (83, 77, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (84, 78, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (85, 79, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (86, 80, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (87, 81, 38);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (116, 110, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (139, 133, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (90, 84, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (91, 85, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (92, 86, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (113, 107, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (114, 108, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (95, 89, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (96, 90, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (97, 91, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (194, 189, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (99, 94, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (100, 95, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (102, 96, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (103, 97, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (104, 98, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (191, 186, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (106, 100, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (109, 103, 93);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (124, 118, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (125, 119, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (126, 120, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (128, 122, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (197, 191, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (131, 125, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (141, 135, 40);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (215, 214, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (210, 205, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (214, 213, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (284, 285, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (213, 212, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (147, 142, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (148, 143, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (149, 144, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (150, 145, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (175, 170, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (152, 147, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (153, 148, 141);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (173, 169, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (155, 151, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (156, 152, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (157, 153, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (177, 171, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (159, 155, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (160, 156, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (161, 157, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (168, 164, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (163, 159, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (169, 165, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (172, 168, 149);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (178, 172, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (179, 173, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (180, 174, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (181, 175, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (206, 201, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (207, 202, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (186, 180, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (187, 181, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (188, 182, 42);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (200, 195, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (201, 196, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (202, 197, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (203, 198, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (204, 199, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (205, 200, 39);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (219, 219, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (220, 220, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (283, 283, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (289, 290, 41);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (282, 282, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (274, 274, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (280, 280, 37);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (228, 228, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (229, 229, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (296, 297, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (278, 278, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (234, 234, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (237, 237, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (275, 275, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (276, 276, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (288, 289, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (268, 268, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (297, 298, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (272, 272, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (249, 249, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (292, 293, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (267, 267, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (295, 296, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (265, 265, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (294, 295, 216);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `relation_id`) VALUES (281, 281, 37);

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (25, 40, 1);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (29, 41, 2);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (27, 42, 5);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (40, 37, 7);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (22, 38, 4);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (30, 39, 3);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (31, 93, 6);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`) VALUES (42, 216, 8);

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (30, 36, 76);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (25, 31, 55);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (31, 32, 59);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (39, 29, 45);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (22, 27, 31);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (37, 26, 13);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (41, 43, 5);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (28, 34, 72);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (27, 33, 66);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (38, 28, 20);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (42, 44, 1);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (109, 111, 16);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (44, 46, 102);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (45, 47, 100);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (46, 48, 105);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (128, 130, 37);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (48, 50, 106);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (50, 52, 108);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (51, 53, 3);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (115, 117, 21);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (132, 134, 6);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (184, 187, 11);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (114, 116, 8);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (56, 58, 18);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (57, 59, 6);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (191, 194, 21);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (59, 61, 52);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (60, 62, 57);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (61, 63, 14);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (112, 114, 18);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (63, 65, 68);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (64, 66, 8);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (65, 67, 10);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (102, 104, 16);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (190, 192, 71);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (181, 183, 65);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (69, 71, 82);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (70, 72, 16);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (71, 73, 25);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (111, 113, 17);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (73, 75, 38);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (74, 76, 49);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (75, 77, 64);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (76, 78, 73);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (77, 79, 33);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (78, 80, 61);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (79, 81, 8);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (108, 110, 12);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (131, 133, 48);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (82, 84, 10);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (83, 85, 7);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (84, 86, 3);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (105, 107, 4);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (106, 108, 13);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (87, 89, 9);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (88, 90, 11);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (89, 91, 2);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (186, 189, 12);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (91, 94, 4);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (92, 95, 43);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (94, 96, 77);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (95, 97, 1);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (96, 98, 9);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (183, 186, 15);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (98, 100, 7);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (101, 103, 14);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (116, 118, 22);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (117, 119, 20);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (118, 120, 19);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (120, 122, 14);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (189, 191, 27);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (123, 125, 15);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (133, 135, 11);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (206, 214, 4);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (202, 205, 41);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (204, 212, 2);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (275, 285, 3);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (205, 213, 5);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (139, 142, 15);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (140, 143, 7);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (141, 144, 36);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (142, 145, 46);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (167, 170, 24);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (144, 147, 50);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (145, 148, 22);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (165, 169, 35);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (147, 151, 17);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (148, 152, 9);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (149, 153, 28);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (169, 171, 32);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (151, 155, 51);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (152, 156, 42);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (153, 157, 58);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (160, 164, 74);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (155, 159, 67);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (161, 165, 79);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (164, 168, 84);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (170, 172, 12);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (171, 173, 30);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (172, 174, 39);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (173, 175, 56);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (198, 201, 5);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (199, 202, 98);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (178, 180, 54);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (179, 181, 88);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (180, 182, 75);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (192, 195, 85);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (193, 196, 86);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (194, 197, 96);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (195, 198, 92);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (196, 199, 94);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (197, 200, 78);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (210, 219, 12);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (211, 220, 9);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (274, 283, 19);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (280, 290, 6);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (273, 282, 17);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (265, 274, 8);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (271, 280, 13);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (219, 228, 10);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (220, 229, 3);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (287, 297, 17);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (269, 278, 110);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (225, 234, 1);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (228, 237, 11);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (266, 275, 14);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (267, 276, 13);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (279, 289, 111);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (259, 268, 16);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (288, 298, 114);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (263, 272, 15);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (240, 249, 7);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (283, 293, 113);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (258, 267, 5);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (286, 296, 6);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (256, 265, 2);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (285, 295, 4);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `value`) VALUES (272, 281, 18);

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 206, 'cpr', 'cpr');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 207, 'the-stylist', 'the stylist');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 284, 'phyllis-and-beautiful-joe', 'phyllis and beautiful joe');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 209, 'grieveyard', 'grieveyard');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 210, 'xyxx', 'xyxx');

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 206, 'http-cprfilmtumblrcom', 'http://cprfilm.tumblr.com/');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 207, 'http-thestylistfilmtumblrcom', 'http://thestylistfilm.tumblr.com/');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 284, 'http-phyllisandbeautifuljoetumblrcom', 'http://phyllisandbeautifuljoe.tumblr.com/');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 209, 'http-grieveyardcom', 'http://grieveyard.com');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 210, 'http-xyxxtumblrcom', 'http://xyxx.tumblr.com');

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (9, 206, 3);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (8, 207, 4);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (13, 284, 6);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (11, 209, 2);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (12, 210, 5);

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 7, 1, '2011-01-15 10:34:54', '2011-01-15 18:34:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 7, 1, '2011-01-15 10:26:28', '2011-01-15 18:26:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 7, 2, '2011-01-18 15:04:52', '2011-01-18 23:04:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 8, 2, '2011-01-18 15:02:57', '2011-01-18 23:02:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 7, 1, '2011-01-15 10:34:40', '2011-01-15 18:34:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 7, 1, '2011-01-15 10:34:34', '2011-01-15 18:34:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 7, 1, '2011-01-15 10:34:28', '2011-01-15 18:34:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 7, 1, '2011-01-15 10:34:12', '2011-01-15 18:34:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 8, 2, '2011-01-18 15:02:39', '2011-01-18 23:02:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 7, 1, '2011-01-15 10:29:27', '2011-01-15 18:29:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 7, 1, '2011-01-15 10:29:15', '2011-01-15 18:29:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 7, 1, '2011-01-15 10:29:02', '2011-01-15 18:29:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 8, 2, '2011-01-18 15:03:48', '2011-01-18 23:03:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 8, 2, '2011-01-18 14:43:45', '2011-01-18 22:43:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 8, 2, '2011-01-18 14:44:11', '2011-01-18 22:44:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 8, 2, '2011-01-18 14:45:11', '2011-01-18 22:45:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 7, 2, '2011-01-18 15:07:26', '2011-01-18 23:07:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (111, 7, 2, '2011-01-18 17:45:11', '2011-01-19 01:45:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 7, 2, '2011-01-18 15:34:31', '2011-01-18 23:34:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 7, 2, '2011-01-18 15:35:24', '2011-01-18 23:35:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 7, 2, '2011-01-18 15:35:52', '2011-01-18 23:35:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (130, 7, 2, '2011-01-18 18:37:16', '2011-01-19 02:37:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 7, 2, '2011-01-18 15:37:13', '2011-01-18 23:37:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (213, 7, 2, '2011-07-17 21:29:14', '2011-07-18 04:29:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 7, 2, '2011-01-18 15:38:37', '2011-01-18 23:38:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 7, 2, '2011-01-18 15:39:10', '2011-01-18 23:39:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (117, 7, 2, '2011-01-18 17:52:23', '2011-01-19 01:52:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (134, 7, 2, '2011-01-18 18:48:46', '2011-01-19 02:48:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (187, 7, 2, '2011-02-13 11:37:09', '2011-02-13 19:37:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (116, 7, 2, '2011-01-18 17:51:36', '2011-01-19 01:51:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 7, 2, '2011-01-18 15:42:25', '2011-01-18 23:42:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 7, 2, '2011-01-18 15:43:18', '2011-01-18 23:43:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (194, 7, 2, '2011-02-24 12:41:31', '2011-02-24 20:41:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 7, 2, '2011-01-18 15:45:14', '2011-01-18 23:45:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 7, 2, '2011-01-18 15:48:32', '2011-01-18 23:48:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 7, 2, '2011-01-18 15:49:04', '2011-01-18 23:49:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (114, 7, 2, '2011-01-18 17:49:26', '2011-01-19 01:49:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 7, 2, '2011-01-18 15:50:08', '2011-01-18 23:50:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 7, 2, '2011-01-18 15:50:53', '2011-01-18 23:50:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 7, 2, '2011-01-18 15:51:18', '2011-01-18 23:51:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (104, 7, 2, '2011-01-18 17:16:29', '2011-01-19 01:16:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (192, 7, 2, '2011-02-21 10:44:38', '2011-02-21 18:44:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (183, 7, 2, '2011-01-31 07:43:58', '2011-01-31 15:43:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 7, 2, '2011-01-18 15:54:18', '2011-01-18 23:54:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 7, 2, '2011-01-18 15:55:29', '2011-01-18 23:55:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 7, 2, '2011-01-18 15:58:10', '2011-01-18 23:58:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (113, 7, 2, '2011-01-18 17:47:52', '2011-01-19 01:47:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 7, 2, '2011-01-18 15:58:37', '2011-01-18 23:58:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 7, 2, '2011-01-18 15:59:44', '2011-01-18 23:59:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 7, 2, '2011-01-18 16:00:20', '2011-01-19 00:00:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (78, 7, 2, '2011-01-18 16:00:59', '2011-01-19 00:00:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 7, 2, '2011-01-18 16:01:39', '2011-01-19 00:01:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 7, 2, '2011-01-18 16:02:39', '2011-01-19 00:02:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 7, 2, '2011-01-18 16:03:28', '2011-01-19 00:03:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 7, 2, '2011-01-18 17:40:59', '2011-01-19 01:40:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (133, 7, 2, '2011-01-18 18:45:53', '2011-01-19 02:45:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 7, 2, '2011-01-18 16:09:20', '2011-01-19 00:09:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 7, 2, '2011-01-18 16:09:52', '2011-01-19 00:09:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 7, 2, '2011-01-18 16:11:50', '2011-01-19 00:11:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 7, 2, '2011-01-18 17:34:05', '2011-01-19 01:34:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 7, 2, '2011-01-18 17:36:20', '2011-01-19 01:36:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 7, 2, '2011-01-18 16:18:09', '2011-01-19 00:18:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 7, 2, '2011-01-18 16:22:47', '2011-01-19 00:22:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 7, 2, '2011-01-18 16:29:22', '2011-01-19 00:29:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (189, 7, 2, '2011-02-13 11:37:52', '2011-02-13 19:37:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 8, 2, '2011-01-18 16:34:41', '2011-01-19 00:34:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 7, 2, '2011-01-18 16:36:56', '2011-01-19 00:36:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 7, 2, '2011-01-18 16:38:07', '2011-01-19 00:38:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 7, 2, '2011-01-18 16:40:00', '2011-01-19 00:40:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 7, 2, '2011-01-18 16:54:47', '2011-01-19 00:54:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 7, 2, '2011-01-18 16:55:17', '2011-01-19 00:55:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (186, 7, 2, '2011-02-13 11:32:39', '2011-02-13 19:32:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (100, 7, 2, '2011-01-18 16:57:19', '2011-01-19 00:57:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (103, 7, 2, '2011-01-18 17:15:40', '2011-01-19 01:15:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (118, 7, 2, '2011-01-18 17:53:03', '2011-01-19 01:53:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (119, 7, 2, '2011-01-18 17:56:33', '2011-01-19 01:56:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (120, 7, 2, '2011-01-18 17:59:40', '2011-01-19 01:59:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (122, 7, 2, '2011-01-18 18:03:15', '2011-01-19 02:03:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (191, 7, 2, '2011-02-21 10:43:45', '2011-02-21 18:43:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (125, 7, 2, '2011-01-18 18:10:00', '2011-01-19 02:10:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (135, 7, 2, '2011-01-18 18:49:16', '2011-01-19 02:49:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (212, 7, 2, '2011-07-17 21:28:20', '2011-07-18 04:28:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (207, 9, 1, '2011-04-11 18:03:02', '2011-04-12 01:03:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (206, 9, 1, '2011-04-11 18:02:25', '2011-04-12 01:02:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (209, 9, 2, '2011-04-11 20:55:07', '2011-04-12 03:55:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (205, 7, 2, '2011-04-09 20:48:20', '2011-04-10 03:48:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (171, 7, 2, '2011-01-29 14:54:52', '2011-01-29 22:54:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (142, 7, 2, '2011-01-19 20:08:00', '2011-01-20 04:08:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (143, 7, 2, '2011-01-19 20:08:24', '2011-01-20 04:08:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (144, 7, 2, '2011-01-19 20:09:04', '2011-01-20 04:09:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (145, 7, 2, '2011-01-19 20:09:13', '2011-01-20 04:09:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (172, 7, 2, '2011-01-29 14:59:56', '2011-01-29 22:59:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (147, 7, 2, '2011-01-19 20:10:27', '2011-01-20 04:10:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (148, 7, 2, '2011-01-19 20:11:41', '2011-01-20 04:11:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (170, 7, 2, '2011-01-29 14:53:43', '2011-01-29 22:53:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (169, 7, 3, '2011-01-19 21:24:46', '2011-01-20 05:24:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (151, 7, 2, '2011-01-19 20:35:54', '2011-01-20 04:35:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (152, 7, 2, '2011-01-19 20:36:41', '2011-01-20 04:36:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (153, 7, 2, '2011-01-19 20:37:26', '2011-01-20 04:37:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (173, 7, 2, '2011-01-29 15:02:12', '2011-01-29 23:02:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (155, 7, 2, '2011-01-19 20:39:12', '2011-01-20 04:39:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (156, 7, 2, '2011-01-19 20:40:09', '2011-01-20 04:40:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (157, 7, 2, '2011-01-19 20:40:54', '2011-01-20 04:40:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (164, 7, 2, '2011-01-19 21:15:27', '2011-01-20 05:15:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (159, 7, 2, '2011-01-19 20:43:24', '2011-01-20 04:43:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (165, 7, 2, '2011-01-19 21:17:03', '2011-01-20 05:17:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (168, 7, 2, '2011-01-19 21:21:09', '2011-01-20 05:21:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (174, 7, 2, '2011-01-29 15:02:25', '2011-01-29 23:02:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (175, 7, 2, '2011-01-29 15:04:54', '2011-01-29 23:04:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (201, 7, 2, '2011-03-16 14:28:09', '2011-03-16 21:28:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (202, 7, 2, '2011-03-16 14:28:23', '2011-03-16 21:28:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (180, 7, 2, '2011-01-29 15:24:01', '2011-01-29 23:24:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (181, 7, 2, '2011-01-31 07:40:32', '2011-01-31 15:40:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (182, 7, 2, '2011-01-31 07:41:37', '2011-01-31 15:41:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (195, 7, 2, '2011-03-16 14:08:43', '2011-03-16 21:08:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (196, 7, 2, '2011-03-16 14:09:28', '2011-03-16 21:09:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (197, 7, 2, '2011-03-16 14:10:09', '2011-03-16 21:10:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (198, 7, 2, '2011-03-16 14:14:45', '2011-03-16 21:14:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (199, 7, 2, '2011-03-16 14:15:09', '2011-03-16 21:15:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (200, 7, 2, '2011-03-16 14:23:55', '2011-03-16 21:23:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (210, 9, 2, '2011-04-11 20:56:10', '2011-04-12 03:56:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (214, 7, 2, '2011-07-17 21:29:44', '2011-07-18 04:29:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (285, 7, 2, '2011-09-16 09:59:54', '2011-09-16 16:59:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (216, 8, 2, '2011-07-22 13:14:43', '2011-07-22 20:14:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (219, 7, 2, '2011-07-22 13:20:40', '2011-07-22 20:20:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (220, 7, 2, '2011-07-22 13:21:22', '2011-07-22 20:21:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (283, 7, 2, '2011-08-12 14:30:05', '2011-08-12 21:30:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (290, 7, 2, '2011-09-16 17:37:25', '2011-09-17 00:37:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (282, 7, 2, '2011-08-12 14:29:53', '2011-08-12 21:29:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (274, 7, 2, '2011-07-23 09:23:21', '2011-07-23 16:23:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (280, 7, 2, '2011-08-12 14:26:18', '2011-08-12 21:26:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (228, 7, 2, '2011-07-22 13:27:30', '2011-07-22 20:27:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (229, 7, 2, '2011-07-22 13:28:00', '2011-07-22 20:28:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (297, 7, 2, '2011-10-03 11:56:00', '2011-10-03 18:56:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (278, 7, 1, '2011-07-27 09:58:46', '2011-07-27 16:58:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (234, 7, 2, '2011-07-22 13:30:57', '2011-07-22 20:30:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (237, 7, 2, '2011-07-22 13:32:53', '2011-07-22 20:32:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (293, 7, 2, '2011-10-02 13:22:53', '2011-10-02 20:22:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (275, 7, 2, '2011-07-23 09:46:05', '2011-07-23 16:46:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (276, 7, 2, '2011-07-25 10:07:22', '2011-07-25 17:07:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (295, 7, 2, '2011-10-03 11:16:44', '2011-10-03 18:16:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (268, 7, 2, '2011-07-22 15:51:20', '2011-07-22 22:51:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (298, 7, 2, '2011-10-03 11:58:33', '2011-10-03 18:58:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (272, 7, 2, '2011-07-22 23:27:30', '2011-07-23 06:27:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (249, 7, 2, '2011-07-22 13:43:56', '2011-07-22 20:43:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (267, 7, 2, '2011-07-22 15:38:09', '2011-07-22 22:38:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (296, 7, 2, '2011-10-03 11:21:32', '2011-10-03 18:21:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (265, 7, 2, '2011-07-22 15:36:17', '2011-07-22 22:36:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (284, 9, 2, '2011-09-08 11:49:32', '2011-09-08 18:49:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (289, 7, 2, '2011-09-16 17:32:57', '2011-09-17 00:32:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (281, 7, 2, '2011-08-12 14:29:38', '2011-08-12 21:29:38');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (129, 'debugdevkit', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (130, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (131, 'selectbox_link_field', 'enabled', 1.22);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (132, 'jit_image_manipulation', 'enabled', 1.14);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (133, 'maintenance_mode', 'enabled', 1.5);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (134, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (135, 'markdown', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (136, 'xssfilter', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (137, 'uniqueuploadfield', 'enabled', '1.4.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (138, 'subsectionmanager', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (139, 'order_entries', 'enabled', '1.9.7');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (153, 'root_page_params', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (151, 'configuration', 'enabled', '1.3.5');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (154, 'mobiledevicedetection', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (155, 'systemidfield', 'enabled', '1.0.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (156, 'image_index_preview', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (157, 'tweak_ui', 'enabled', '0.1.2');

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (237, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (236, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (238, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (239, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (245, 133, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (244, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (243, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (242, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (241, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (252, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (251, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (234, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (233, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (259, 138, '/backend/', 'AppendPageAlert', '__upgradeMediathek');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (258, 138, '/publish/edit/', 'EntryPostEdit', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (257, 138, '/publish/new/', 'EntryPostNew', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (256, 138, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (250, 139, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (249, 154, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (232, 151, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (254, 153, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'append_preferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (253, 153, '/frontend/', 'FrontendPrePageResolve', 'addPage');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (231, 151, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (248, 154, '/frontend/', 'FrontendInitialised', 'initialize');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (235, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (240, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (246, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (247, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (255, 153, '/system/preferences/', 'Save', 'save_settings');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (260, 156, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (261, 157, '/backend/', 'InitaliseAdminPageHead', 'addScriptToHead');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Order', 'order', 'order_entries', 7, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Order', 'order', 'order_entries', 8, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Category', 'category', 'selectbox_link', 7, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Name', 'name', 'input', 8, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Photo', 'photo', 'uniqueupload', 7, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Link', 'link', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'URL', 'url', 'input', 9, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Order', 'order', 'order_entries', 9, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'ID', 'id', 'systemid', 7, 'no', 0, 'main', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, NULL, 'Home', 'category', NULL, 'category/size', 'categories,links,mobiledevicedetection,photos', NULL, 1);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (681, 77, 'index');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Categories', 'categories', 1, 29, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Photos', 'photos', 3, 30, 'asc', 'no', 'Advanced');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Links', 'links', 2, 33, 'asc', 'no', 'Content');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (19, 8, 24, 7, 28, 'no');
