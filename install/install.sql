# --- WireDatabaseBackup {"time":"2017-02-03 20:25:22","user":"","dbName":"box-portfolio","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_a_href`;
CREATE TABLE `field_a_href` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_a_href` (`pages_id`, `data`) VALUES('1104', 'https://www.facebook.com/');
INSERT INTO `field_a_href` (`pages_id`, `data`) VALUES('1105', 'https://twitter.com/?lang=pl');
INSERT INTO `field_a_href` (`pages_id`, `data`) VALUES('1106', 'https://www.youtube.com/channel/UCAC6bGszwXecqp1Nq2qn1Sg');
INSERT INTO `field_a_href` (`pages_id`, `data`) VALUES('1131', 'https://dribbble.com/');

DROP TABLE IF EXISTS `field_a_href_text`;
CREATE TABLE `field_a_href_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '148');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1127` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1127`) VALUES('27', '<p>Strona, której szukasz nie została znaleziona.</p>', NULL);
INSERT INTO `field_body` (`pages_id`, `data`, `data1127`) VALUES('1015', '<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1127`) VALUES('1001', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae et gubernationis ultimum cum ultimo sapientiae comparatur. Tecum optime, deinde etiam cum mediocri amico. Et nemo nimium beatus est; Ac ne plura complectar-sunt enim innumerabilia-, bene laudata virtus voluptatis aditus</p>\n\n<p>Tum ille: Tu autem cum ipse tantum librorum habeas, quos hic tandem requiris? Esse enim quam vellet iniquus iustus poterat inpune.</p>', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1127`) VALUES('1059', '<p>Kula Śnierzna.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae et gubernationis ultimum cum ultimo sapientiae comparatur. Tecum optime, deinde etiam cum mediocri amico. Et nemo nimium beatus est; Ac ne plura complectar-sunt enim innumerabilia-, bene laudata virtus voluptatis aditus ultimum cum ultimo sapientiae Et nemo nimium beatus est</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae et gubernationis ultimum cum ultimo sapientiae comparatur. Tecum optime, deinde etiam cum mediocri amico. Et nemo nimium beatus est; Ac ne plura complectar-sunt enim innumerabilia</p>', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1127`) VALUES('1065', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae et gubernationis ultimum cum ultimo sapientiae comparatur. Tecum optime, deinde etiam cum mediocri amico. Et nemo nimium beatus est; Ac ne plura complectar-sunt enim innumerabilia-, bene laudata virtus voluptatis aditus ultimum cum ultimo sapientiae Et nemo nimium beatus est</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae et gubernationis ultimum cum ultimo sapientiae comparatur. Tecum optime, deinde etiam cum mediocri amico. Et nemo nimium beatus est; Ac ne plura complectar-sunt enim innumerabilia</p>', NULL);

DROP TABLE IF EXISTS `field_col_lg`;
CREATE TABLE `field_col_lg` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1083', '1', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1084', '1', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1086', '1', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1109', '3', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1085', '1', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1087', '3', '0');
INSERT INTO `field_col_lg` (`pages_id`, `data`, `sort`) VALUES('1092', '1', '0');

DROP TABLE IF EXISTS `field_col_md`;
CREATE TABLE `field_col_md` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1065', '2', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1083', '2', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1084', '2', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1085', '2', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1086', '1', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1087', '1', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1107', '2', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1092', '3', '0');
INSERT INTO `field_col_md` (`pages_id`, `data`, `sort`) VALUES('1109', '1', '0');

DROP TABLE IF EXISTS `field_col_sm`;
CREATE TABLE `field_col_sm` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_col_sm` (`pages_id`, `data`, `sort`) VALUES('1083', '1', '0');
INSERT INTO `field_col_sm` (`pages_id`, `data`, `sort`) VALUES('1084', '3', '0');
INSERT INTO `field_col_sm` (`pages_id`, `data`, `sort`) VALUES('1085', '1', '0');
INSERT INTO `field_col_sm` (`pages_id`, `data`, `sort`) VALUES('1086', '1', '0');
INSERT INTO `field_col_sm` (`pages_id`, `data`, `sort`) VALUES('1087', '1', '0');

DROP TABLE IF EXISTS `field_copy_right`;
CREATE TABLE `field_copy_right` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_copy_right` (`pages_id`, `data`) VALUES('1101', 'X Foto');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_favicon`;
CREATE TABLE `field_favicon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1101', 'favicon.png', '0', '', '2017-01-19 21:41:18', '2017-01-19 21:41:18');

DROP TABLE IF EXISTS `field_first_intro_txt`;
CREATE TABLE `field_first_intro_txt` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_first_intro_txt` (`pages_id`, `data`, `data1127`) VALUES('1', '-xtra-', '-x-t-r-a-');
INSERT INTO `field_first_intro_txt` (`pages_id`, `data`, `data1127`) VALUES('1001', 'Dowiedz Się O mnie Więcej', NULL);

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1127` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('1', 'Zapoznaj Się z naszymi projektami które wykonujemy.', 'See our projects we do.');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('27', '404 Page Not Found', NULL);
INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('1061', 'Fotografie w ogrodzie dla każdego', NULL);
INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('1059', 'Lubi Latać w przestworzach', 'He likes to fly in the skies');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('1015', 'Szybki kontakt w sprawie zdjęć studyjnych', 'Quick contact the gallery studio');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1127`) VALUES('1079', 'Zobacz ciekawe Budowle z Całego świata', 'See interesting buildings from around the world.');

DROP TABLE IF EXISTS `field_home_rep`;
CREATE TABLE `field_home_rep` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_rep` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1083,1084,1085,1086,1087,1092,1109', '7', '1068');

DROP TABLE IF EXISTS `field_icon`;
CREATE TABLE `field_icon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1112', 'ion-android-alarm-clock');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1113', 'ion-android-color-palette');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1114', 'ion-android-star-half');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1115', 'ion-android-sunny');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1116', 'ion-android-subway');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1118', 'ion-android-desktop');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1075', 'plouzane.jpg', '0', '', '2017-01-19 18:26:56', '2017-01-19 18:26:56');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1076', 'parachute-1843350_1280.jpg', '1', '', '2017-01-21 11:03:34', '2017-01-21 11:03:34');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1072', 'eifel-tower.jpg', '0', '', '2017-01-19 18:25:38', '2017-01-19 18:25:38');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'fireworks-1885571_1280.jpg', '0', '', '2017-01-21 14:52:44', '2017-01-21 14:52:44');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('27', 'tree-838667_1280.jpg', '0', '', '2017-01-21 20:05:58', '2017-01-21 20:05:58');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1129', 'doubai.jpg', '0', '[\"\"]', '2017-01-24 21:18:44', '2017-01-24 21:18:44');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1079', 'eifel-tower.jpg', '1', '[\"\"]', '2017-01-25 13:11:57', '2017-01-25 13:11:57');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1079', 'plouzane.jpg', '2', '[\"\"]', '2017-01-25 13:11:57', '2017-01-25 13:11:57');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1015', 'vintange.jpg', '0', '[\"\"]', '2017-01-26 12:09:21', '2017-01-26 12:09:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1059', 'parahute.jpg', '0', '', '2017-01-19 18:20:48', '2017-01-19 18:20:48');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1016', 'fireworks-1885571_1280.jpg', '0', '', '2017-01-19 20:14:26', '2017-01-19 20:14:26');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1001', 'about-us.jpg', '0', '', '2017-01-20 07:41:13', '2017-01-20 07:41:13');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'parahute.jpg', '5', '', '2017-01-20 07:42:30', '2017-01-20 07:42:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'forest.jpg', '4', '', '2017-01-20 07:42:30', '2017-01-20 07:42:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1081', 'beauty.jpg', '0', '', '2017-01-23 21:30:11', '2017-01-23 21:30:11');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1090', 'boys-teacher.jpg', '0', '', '2017-01-19 19:04:35', '2017-01-19 19:04:35');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'architecture-1727807_1920.jpg', '1', '', '2017-01-20 07:42:30', '2017-01-20 07:42:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'beauty.jpg', '2', '', '2017-01-20 07:42:30', '2017-01-20 07:42:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'eifel-tower.jpg', '3', '', '2017-01-20 07:42:30', '2017-01-20 07:42:30');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1017', 'tree-838667_1280.jpg', '0', '', '2017-01-19 20:13:50', '2017-01-19 20:13:50');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1107', 'lens.jpg', '0', '', '2017-01-20 07:55:03', '2017-01-20 07:55:03');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1065', 'snow-round.jpg', '0', '', '2017-01-20 14:09:35', '2017-01-20 14:09:35');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1076', 'fireworks-1885571_1280.jpg', '0', '', '2017-01-21 11:03:34', '2017-01-21 11:03:34');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1060', 'parachute-1843350_1280.jpg', '0', '', '2017-01-21 11:42:45', '2017-01-21 11:42:45');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1066', 'santa-claus-1819933_1280.jpg', '0', '', '2017-01-21 11:48:21', '2017-01-21 11:48:21');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1079', 'doubai.jpg', '0', '[\"\"]', '2017-01-25 13:11:57', '2017-01-25 13:11:57');

DROP TABLE IF EXISTS `field_img_en`;
CREATE TABLE `field_img_en` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_en` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1101', 'english.png', '0', '[\"\"]', '2017-01-24 22:04:23', '2017-01-24 22:04:23');

DROP TABLE IF EXISTS `field_img_pl`;
CREATE TABLE `field_img_pl` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img_pl` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1101', 'pol.png', '0', '[\"\"]', '2017-01-24 22:04:23', '2017-01-24 22:04:23');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1125', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1125', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1125', 'wire--core--admintheme-php.json', '1', '[\"\"]', '2017-01-24 21:03:47', '2017-01-24 21:03:47');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1125', 'wire--core--admin-php.json', '0', '[\"\"]', '2017-01-24 21:03:20', '2017-01-24 21:03:20');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1125', 'wire--templates-admin--topnav-inc.json', '2', '[\"\"]', '2017-01-24 21:04:08', '2017-01-24 21:04:08');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1127', 'site--templates--_head-php.json', '0', '[\"\"]', '2017-01-24 21:59:04', '2017-01-24 21:59:04');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1127', 'site--templates--contact-php.json', '1', '[\"\"]', '2017-01-25 13:46:56', '2017-01-25 13:46:56');

DROP TABLE IF EXISTS `field_last_intro_txt`;
CREATE TABLE `field_last_intro_txt` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1127` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_last_intro_txt` (`pages_id`, `data`, `data1127`) VALUES('1', 'Portfolio na każdą okazję', 'Portfolio for every occasion');

DROP TABLE IF EXISTS `field_logo`;
CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_logo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1101', 'box-logo-1.png', '0', '', '2017-01-19 21:31:58', '2017-01-19 21:31:58');

DROP TABLE IF EXISTS `field_mail_from`;
CREATE TABLE `field_mail_from` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_from` (`pages_id`, `data`) VALUES('1015', 'rafalolszewicz@gmail.com');

DROP TABLE IF EXISTS `field_mail_subject`;
CREATE TABLE `field_mail_subject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_subject` (`pages_id`, `data`) VALUES('1015', 'Wysłano z RAFOL.PL');

DROP TABLE IF EXISTS `field_mail_to`;
CREATE TABLE `field_mail_to` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_to` (`pages_id`, `data`) VALUES('1015', 'rafalolszewicz@gmail.com');

DROP TABLE IF EXISTS `field_menu_opis`;
CREATE TABLE `field_menu_opis` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_menu_opis` (`pages_id`, `data`, `data1127`) VALUES('1101', 'Zobacz Naszą Stronę', 'See Page');

DROP TABLE IF EXISTS `field_nr_tel`;
CREATE TABLE `field_nr_tel` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_nr_tel` (`pages_id`, `data`) VALUES('1015', '730040629');

DROP TABLE IF EXISTS `field_page_ref_port`;
CREATE TABLE `field_page_ref_port` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1084', '1059', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1083', '1065', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1085', '1072', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1087', '1075', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1086', '1081', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1092', '1090', '0');
INSERT INTO `field_page_ref_port` (`pages_id`, `data`, `sort`) VALUES('1109', '1107', '0');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_pge_ref_s`;
CREATE TABLE `field_pge_ref_s` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pge_ref_s` (`pages_id`, `data`, `sort`) VALUES('1120', '1062', '0');
INSERT INTO `field_pge_ref_s` (`pages_id`, `data`, `sort`) VALUES('1077', '1066', '0');
INSERT INTO `field_pge_ref_s` (`pages_id`, `data`, `sort`) VALUES('1078', '1076', '0');
INSERT INTO `field_pge_ref_s` (`pages_id`, `data`, `sort`) VALUES('1080', '1079', '0');

DROP TABLE IF EXISTS `field_port_cat_pages`;
CREATE TABLE `field_port_cat_pages` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1065', '1066', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1129', '1066', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1059', '1076', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1065', '1076', '1');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1072', '1079', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1075', '1079', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1081', '1082', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1090', '1091', '0');
INSERT INTO `field_port_cat_pages` (`pages_id`, `data`, `sort`) VALUES('1107', '1108', '0');

DROP TABLE IF EXISTS `field_port_filter_heading`;
CREATE TABLE `field_port_filter_heading` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_port_filter_heading` (`pages_id`, `data`) VALUES('1016', 'Zobacz Wszystkie');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1124', '165');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1126', '166');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1133', '174');

DROP TABLE IF EXISTS `field_quality`;
CREATE TABLE `field_quality` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1083', '10', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1084', '10', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1085', '7', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1086', '10', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1087', '7', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1059', '2', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1109', '7', '0');
INSERT INTO `field_quality` (`pages_id`, `data`, `sort`) VALUES('1065', '10', '0');

DROP TABLE IF EXISTS `field_rep_intro`;
CREATE TABLE `field_rep_intro` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_intro` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1098,1130', '2', '1097');

DROP TABLE IF EXISTS `field_rep_port_filter`;
CREATE TABLE `field_rep_port_filter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_port_filter` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1016', '1077,1078,1080,1120', '4', '1022');

DROP TABLE IF EXISTS `field_rep_services`;
CREATE TABLE `field_rep_services` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_services` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1017', '1112,1113,1114,1115,1116,1118', '6', '1111');

DROP TABLE IF EXISTS `field_rep_social`;
CREATE TABLE `field_rep_social` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_social` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1101', '1104,1105,1106,1131', '4', '1103');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_single_img`;
CREATE TABLE `field_single_img` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_social_select`;
CREATE TABLE `field_social_select` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_social_select` (`pages_id`, `data`, `sort`) VALUES('1104', '1', '0');
INSERT INTO `field_social_select` (`pages_id`, `data`, `sort`) VALUES('1105', '2', '0');
INSERT INTO `field_social_select` (`pages_id`, `data`, `sort`) VALUES('1106', '5', '0');
INSERT INTO `field_social_select` (`pages_id`, `data`, `sort`) VALUES('1131', '3', '0');

DROP TABLE IF EXISTS `field_social_text`;
CREATE TABLE `field_social_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_social_text` (`pages_id`, `data`, `data1127`) VALUES('1101', 'Podąrzaj za Nami', 'Follow Us');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1127` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1127`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1127`) VALUES('1', 'Tworzymy nowoczesne projekty o świetnej charakterystyce oraz przyjazne dla każdego oka. Mamy świetny zespół oraz uwielbiamy naszą pracę.', 'We create modern designs with excellent characteristics and friendly to each eye. We have a great team and we love our work.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1127`) VALUES('1015', 'Załóż własną galerię zdjęć i ciesz się nowoczesnym wyglądem waszego nowego domowego archiwum fotograficznego.', 'Create your own photo gallery and enjoy the modern look of your new home photo archive.');

DROP TABLE IF EXISTS `field_text_1`;
CREATE TABLE `field_text_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1098', 'portfolio-', '-portfolios-');
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1001', 'Trochę o Mnie', 'About Me');
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1015', 'Szybki Kontakt', 'Fast contact');
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1112', '1 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1113', '2 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1114', '3 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1115', '4 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1116', '5 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1118', '6 ikona', NULL);
INSERT INTO `field_text_1` (`pages_id`, `data`, `data1127`) VALUES('1130', 'dla-ciebie', '-for-you-');

DROP TABLE IF EXISTS `field_text_2`;
CREATE TABLE `field_text_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text_2` (`pages_id`, `data`, `data1127`) VALUES('1015', 'Kontakt w sprawie założenia strony', 'Contact the founding of the page');

DROP TABLE IF EXISTS `field_textarea_1`;
CREATE TABLE `field_textarea_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1112', '1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');
INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1113', '2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');
INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1114', '3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');
INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1115', '4 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');
INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1116', '5 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');
INSERT INTO `field_textarea_1` (`pages_id`, `data`) VALUES('1118', '6 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1127` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1127` (`data1127`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1127` (`data1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('11', 'Templates', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('16', 'Fields', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('22', 'Opcje', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('3', 'Strony', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('6', 'Add Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('8', 'Tree', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('9', 'Save Sort', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('10', 'Edit', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('21', 'Modules', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('29', 'Users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('30', 'Roles', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('2', 'Admin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('7', 'Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('27', '404 Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('302', 'Insert Link', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('23', 'Login', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('304', 'Profile', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('301', 'Empty Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('300', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('303', 'Insert Image', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('28', 'Access', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('31', 'Permissions', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('32', 'Edit pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('34', 'Delete pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('35', 'Move pages (change parent)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('36', 'View pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('50', 'Sort child pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('51', 'Change templates on pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('52', 'Administer users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('53', 'User can update profile/password', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('54', 'Lock or unlock a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1', 'Strona Domowa', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1001', 'O Nas', 'About US');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1017', 'Właściwości', 'Properties');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1000', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1016', 'Portfolio', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1005', 'Site Map', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1006', 'Use Page Lister', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1007', 'Find', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1009', 'Recent', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1010', 'Can see recently edited pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1011', 'Logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1012', 'Can view system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1013', 'Can manage system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1015', 'Kontakt', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1019', 'Repeaters', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1060', 'Kategorie Portfolio', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1021', 'rep_port_filter', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1022', 'portfolio', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1062', 'Foto Budynków', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1065', 'Kula Śnierzna', 'Snow Ball');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1066', 'Zima', 'Winter');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1059', 'Spadochroniarz', 'Paratrooper');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1061', 'Foto W Ogrodzie', 'Photo In The Garden');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1067', 'home_rep', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1068', 'home', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1072', 'Aifla', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1074', 'Lato', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1075', 'Latarnia', 'Lantern');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1076', 'Przestrzeń', 'Space');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1079', 'Budowle', 'Buildings');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1081', 'Beuty', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1082', 'Piękno', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1090', 'Nauczyciel', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1091', 'Nauka', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1096', 'rep_intro', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1097', 'home', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1101', 'Opcje Strony', 'Options Page');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1102', 'rep_social', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1103', 'opcje-strony', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1107', 'Obiektyw', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1108', 'Fotografie', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1110', 'rep_services', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1111', 'wlasciwosci', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1123', 'Administer languages and static translation files', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1124', 'Languages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1125', 'Polish', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1126', 'Language Translator', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1127', 'English', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1129', 'Nowe Portfolio', 'New Portffolio');
INSERT INTO `field_title` (`pages_id`, `data`, `data1127`) VALUES('1133', 'Export Site Profile', '');

DROP TABLE IF EXISTS `field_w_q_on`;
CREATE TABLE `field_w_q_on` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_width`;
CREATE TABLE `field_width` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_width` (`pages_id`, `data`, `sort`) VALUES('1065', '2', '0');
INSERT INTO `field_width` (`pages_id`, `data`, `sort`) VALUES('1059', '1', '0');

DROP TABLE IF EXISTS `field_width_home`;
CREATE TABLE `field_width_home` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_width_home` (`pages_id`, `data`, `sort`) VALUES('1083', '1', '0');
INSERT INTO `field_width_home` (`pages_id`, `data`, `sort`) VALUES('1086', '3', '0');
INSERT INTO `field_width_home` (`pages_id`, `data`, `sort`) VALUES('1087', '1', '0');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'services');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'repeater_rep_port_filter');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'pojedyncza-kategoria-portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'kategorie-portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'single-portfolio');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'repeater_home_rep');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'repeater_rep_intro');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'repeater_rep_social');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'repeater_rep_services');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('116', 'language');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '137', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '124', '8', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '128', '9', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '122', '6', '{\"columnWidth\":15}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '97', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '3', '{\"columnWidth\":70,\"label\":\"Dodaj Kategori\\u0119 Portfolio\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '44', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '129', '5', '{\"columnWidth\":30,\"description\":\"Podaj w\\u0142asny email np: twojmail@gmail.com\",\"description1127\":\"Please enter your own e-mail\",\"label\":\"Od Kogo\",\"label1127\":\"Mail From\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '44', '4', '{\"columnWidth\":75}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '99', '2', '{\"columnWidth\":30,\"label\":\"Dodaj Nazw\\u0119 dla Wszystkich Kategorii\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '44', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '124', '5', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '4', '{\"columnWidth\":35}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '111', '5', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '130', '6', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '7', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '109', '8', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '109', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '76', '10', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '112', '2', '{\"columnWidth\":35}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '131', '4', '{\"description\":\"[kony](http:\\/\\/fa2png.io\\/r\\/ionicons\\/)\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '140', '8', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '117', '1', '{\"columnWidth\":50,\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '121', '0', '{\"columnWidth\":50,\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '123', '7', '{\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '105', '3', '{\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '120', '4', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '116', '5', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '114', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '44', '2', '{\"columnWidth\":50,\"description\":\"Dodaj Obrazek lub obrazki najlepiej 1200x800\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '109', '3', '{\"collapsed\":\"5\",\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '110', '4', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '76', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '125', '4', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '123', '5', '{\"columnWidth\":15}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '110', '3', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '103', '8', '{\"collapsed\":\"5\",\"columnWidth\":30,\"label\":\"Wybierz Kategorie\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '9', '{\"collapsed\":\"5\",\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '44', '3', '{\"columnWidth\":55}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '127', '4', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '126', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '105', '4', '{\"collapsed\":\"1\",\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '104', '5', '{\"collapsed\":\"1\",\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '132', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '109', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '133', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '134', '1', '{\"collapsed\":\"1\",\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '104', '2', '{\"columnWidth\":10}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '135', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '136', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '138', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '139', '7', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '115', '3', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '113', '1', '{\"columnWidth\":35}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '107', '0', '{\"columnWidth\":35,\"required\":1}');

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Nazwa', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":5,\"columnWidth\":20,\"minlength\":0,\"showCount\":0,\"langBlankInherit\":0,\"label1127\":\"Title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"collapsed\":5,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextareaLanguage', 'summary', '1', 'Dłuższy opis SEO do 160 znaków', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":5,\"rows\":3,\"contentType\":0,\"minlength\":0,\"maxlength\":155,\"showCount\":1,\"langBlankInherit\":0,\"columnWidth\":50,\"label1127\":\"Longer description of the SEO to 160 characters\",\"tags\":\"-seo\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextareaLanguage', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeTextareaLanguage', 'headline', '0', 'Krótki Opis SEO', '{\"description\":\"U\\u017cyj Tego kr\\u00f3tkiego opisu kt\\u00f3ry jest widoczny w widoku wyszukiwarek.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":5,\"size\":0,\"maxlength\":60,\"columnWidth\":30,\"minlength\":0,\"showCount\":1,\"label1127\":\"Headline\",\"langBlankInherit\":0,\"description1127\":\"Use this brief description of which is visible in the view of search engines.\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypePage', 'pge_ref_s', '0', 'Page Reference Single', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":1060,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"-portfolio\",\"icon\":\"sticky-note\",\"size\":10,\"addable\":1,\"template_id\":54}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeRepeater', 'rep_port_filter', '0', 'Repeater Portfolio Filter', '{\"template_id\":49,\"parent_id\":1021,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-portfolio\",\"icon\":\"th\",\"repeaterFields\":{\"1\":97}}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeText', 'port_filter_heading', '0', 'Port Filter Heading', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-portfolio\",\"icon\":\"wpforms\",\"placeholder\":\"Dodaj Tekst\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeImage', 'single_img', '0', 'Single Img', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":2,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypePage', 'port_cat_pages', '0', 'Port Cat Pages', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1060,\"template_id\":54,\"labelFieldName\":\"title\",\"collapsed\":0,\"addable\":1,\"icon\":\"th-large\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeOptions', 'col_md', '0', 'Col Md', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"tags\":\"-image\",\"description\":\"Szeroko\\u015b\\u0107 Kolumny\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeOptions', 'col_sm', '0', 'Col Sm', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"tags\":\"-image\",\"description\":\"Szeroko\\u015b\\u0107 Kolumny\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeRepeater', 'home_rep', '0', 'Home Rep', '{\"template_id\":57,\"parent_id\":1067,\"repeaterFields\":[107,134,104,105,125,123],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"#n: {page_ref_port.title}\",\"tags\":\"-home\",\"accordionMode\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypePage', 'page_ref_port', '0', 'Page Ref Port', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":1016,\"labelFieldName\":\"title\",\"collapsed\":0,\"template_id\":52}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeRepeater', 'rep_intro', '0', 'Rep Intro', '{\"template_id\":58,\"parent_id\":1096,\"repeaterFields\":[109],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":5,\"tags\":\"-home\",\"icon\":\"forumbee\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeTextLanguage', 'text_1', '0', 'Text 1', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextLanguage', 'first_intro_txt', '0', 'Pierwszy Tekst Intro', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":5,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-home\",\"icon\":\"first-order\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"langBlankInherit\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeTextareaLanguage', 'last_intro_txt', '0', 'Ostatni Tekst Intro', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":5,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-home\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeImage', 'favicon', '0', 'Favicon', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-opcje\",\"fileSchema\":2,\"description\":\"Najlepsze wymiary dla Favicona 84x86\",\"collapsed\":5,\"icon\":\"fire\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeImage', 'logo', '0', 'Logo', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"-opcje\",\"fileSchema\":2,\"description\":\"Najlepsze wymiary dla logo 251x114\",\"collapsed\":5,\"icon\":\"leaf\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeText', 'copy_right', '0', 'Copy Right', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-opcje\",\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeTextLanguage', 'menu_opis', '0', 'Menu Opis', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-menu\",\"langBlankInherit\":0,\"collapsed\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeRepeater', 'rep_social', '0', 'Rep Social', '{\"template_id\":60,\"parent_id\":1102,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":5,\"tags\":\"-menu\",\"icon\":\"gg\",\"repeaterFields\":[121,117]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeURL', 'a_href', '0', 'A Href', '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"-odnosniki\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'a_href_text', '0', 'A Href Text', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-odnosniki\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeOptions', 'width', '0', 'Szerokość', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"tags\":\"-image\",\"description\":\"Szeroko\\u015b\\u0107  Obrazka w px\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeTextLanguage', 'social_text', '0', 'Social Text', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-menu\",\"langBlankInherit\":0,\"collapsed\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeOptions', 'social_select', '0', 'Social Select', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0,\"tags\":\"-menu\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeOptions', 'quality', '0', 'Jakość', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"tags\":\"-image\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeOptions', 'w_q_on', '0', 'H & Q', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"tags\":\"-image\",\"description\":\"Zobacz Jako\\u015b\\u0107 oraz Szeroko\\u015b\\u0107 Obrazka\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeOptions', 'width_home', '0', 'Szerokość', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":1,\"description\":\"Szeroko\\u015b\\u0107  Obrazka w px\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeText', 'nr_tel', '0', 'NR TEL', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"-kontakt\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeEmail', 'mail_to', '0', 'Email', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0,\"tags\":\"-kontakt\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeTextLanguage', 'text_2', '0', 'Text 2', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeEmail', 'mail_from', '0', 'Mail From', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0,\"tags\":\"-kontakt\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeTextarea', 'mail_subject', '0', 'Mail Subject', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"-kontakt\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeRepeater', 'rep_services', '0', 'Rep Services', '{\"template_id\":61,\"parent_id\":1110,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"-services\",\"repeaterFields\":[132,109,133]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeText', 'icon', '0', 'Icon', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeTextarea', 'textarea_1', '0', 'Textarea 1', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeOptions', 'col_lg', '0', 'Col Lg', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1124,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeImage', 'img_pl', '0', 'Img Pl', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"clone_field\":\"img_en\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeImage', 'img_en', '0', 'Img EN', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":2}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title1127` text,
  `value1127` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  UNIQUE KEY `title1127` (`title1127`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  KEY `value1127` (`value1127`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`),
  FULLTEXT KEY `title1127_value1127` (`title1127`,`value1127`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '6', 'col-md-12', '', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '3', 'col-md-6', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '4', 'col-md-8', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '6', 'col-sm-12', '', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '5', 'col-md-9', '', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '2', 'col-md-4', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('104', '1', 'col-md-3', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '5', 'col-sm-9', '', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '4', 'col-sm-8', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '3', 'col-sm-6', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '2', 'col-sm-4', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('105', '1', 'col-sm-3', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('121', '1', 'ion-social-facebook', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('121', '2', 'ion-social-twitter', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('121', '3', 'ion-social-dribbble', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('121', '4', 'ion-social-instagram-outline', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('121', '5', 'ion-social-youtube-outline', '', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '2', '20', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '1', '10', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '1', '320', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '2', '640', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '3', '1000', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '3', '30', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '4', '40', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '5', '50', '', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '6', '60', '', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '7', '70', '', '6', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '8', '80', '', '7', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '9', '90', '', '8', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('123', '10', '100', '', '9', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '4', '1280', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '5', '2560', '', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('122', '6', '3200', '', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('124', '1', 'on', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('125', '1', '400', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('125', '2', '800', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('125', '3', '1200', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('125', '4', '2300', '', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('134', '1', 'col-lg-4', '', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('134', '2', 'col-lg-6', '', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('134', '3', 'col-lg-8', '', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1127`, `value1127`) VALUES('134', '4', 'col-lg-12', '', '3', NULL, NULL);

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"bookmarks\":{\"_0\":[1016,1060]}}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":15,\"coreVersion\":\"3.0.50\"}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2017-01-17 21:24:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2017-01-17 21:24:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLogger', '1', '', '2017-01-17 21:25:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'InputfieldIcon', '0', '', '2017-01-17 21:25:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1019}', '2017-01-17 22:49:38');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldRepeater', '0', '', '2017-01-17 22:49:38');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeOptions', '1', '', '2017-01-17 22:50:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'LanguageSupport', '35', '{\"languagesPageID\":1124,\"defaultLanguagePageID\":1125,\"otherLanguagePageIDs\":[1127],\"languageTranslatorPageID\":1126}', '2017-01-24 20:53:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'ProcessLanguage', '1', '{\"showFields\":[]}', '2017-01-24 20:53:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'ProcessLanguageTranslator', '1', '', '2017-01-24 20:53:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'LanguageSupportFields', '3', '', '2017-01-24 20:53:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeTextLanguage', '1', '', '2017-01-24 20:53:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypePageTitleLanguage', '1', '', '2017-01-24 20:53:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'FieldtypeTextareaLanguage', '1', '', '2017-01-24 20:53:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9}', '2017-01-24 20:53:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'LanguageTabs', '11', '', '2017-01-24 20:53:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'AdminThemeReno', '10', '{\"colors\":\"\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2017-01-24 20:53:54');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1127` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1127` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1127_parent_id` (`name1127`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1134 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1', '0', '1', 'pl', '9', '2017-01-25 10:20:34', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', 'en', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('2', '1', '2', 'admin', '1035', '2017-01-26 12:00:02', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '9', 'admin', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('3', '2', '2', 'page', '21', '2017-01-24 21:06:25', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('6', '3', '2', 'add', '21', '2017-01-17 21:25:04', '40', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('7', '1', '2', 'trash', '1039', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('8', '3', '2', 'list', '1045', '2017-01-17 21:25:20', '40', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('9', '3', '2', 'sort', '1047', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('10', '3', '2', 'edit', '1045', '2017-01-17 21:25:20', '40', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('11', '22', '2', 'template', '21', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('16', '22', '2', 'field', '21', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('21', '2', '2', 'module', '21', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('22', '2', '2', 'setup', '21', '2017-01-24 21:07:34', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('23', '2', '2', 'login', '1035', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('27', '1', '29', 'http404', '1035', '2017-01-21 20:07:45', '41', '2017-01-17 21:24:50', '3', '2017-01-17 21:24:50', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('28', '2', '2', 'access', '13', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('29', '28', '2', 'users', '29', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('30', '28', '2', 'roles', '29', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('31', '28', '2', 'permissions', '29', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('32', '31', '5', 'page-edit', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('34', '31', '5', 'page-delete', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('35', '31', '5', 'page-move', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('36', '31', '5', 'page-view', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('37', '30', '4', 'guest', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('38', '30', '4', 'superuser', '25', '2017-01-24 21:47:58', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('41', '29', '3', 'pw-admin-raf', '1', '2017-01-24 20:58:02', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('40', '29', '3', 'guest', '25', '2017-01-24 20:53:24', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('50', '31', '5', 'page-sort', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('51', '31', '5', 'page-template', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('52', '31', '5', 'user-admin', '25', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('53', '31', '5', 'profile-edit', '1', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('54', '31', '5', 'page-lock', '1', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('300', '3', '2', 'search', '1045', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('301', '3', '2', 'trash', '1047', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('302', '3', '2', 'link', '1041', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('303', '3', '2', 'image', '1041', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('304', '2', '2', 'profile', '1025', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1000', '1', '26', 'search', '1025', '2017-01-17 21:24:50', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1001', '1', '43', 'o-mnie', '1', '2017-01-26 12:07:35', '1132', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1017', '1', '46', 'wlasciwosci', '1', '2017-01-25 09:00:20', '41', '2017-01-17 22:36:20', '41', '2017-01-17 22:36:20', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1005', '1', '34', 'site-map', '3073', '2017-01-21 20:12:07', '41', '2017-01-17 21:24:50', '2', '2017-01-17 21:24:50', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1006', '31', '5', 'page-lister', '1', '2017-01-17 21:24:50', '40', '2017-01-17 21:24:50', '40', '2017-01-17 21:24:50', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1007', '3', '2', 'lister', '1', '2017-01-17 21:24:50', '40', '2017-01-17 21:24:50', '40', '2017-01-17 21:24:50', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1009', '3', '2', 'recent-pages', '1', '2017-01-17 21:24:53', '40', '2017-01-17 21:24:53', '40', '2017-01-17 21:24:53', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2017-01-17 21:24:53', '40', '2017-01-17 21:24:53', '40', '2017-01-17 21:24:53', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1011', '22', '2', 'logs', '1', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1012', '31', '5', 'logs-view', '1', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1013', '31', '5', 'logs-edit', '1', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '40', '2017-01-17 21:25:02', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1015', '1', '44', 'kontakt', '1', '2017-01-26 12:09:21', '1132', '2017-01-17 22:09:58', '41', '2017-01-17 22:09:58', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1016', '1', '45', 'portfolio', '1', '2017-01-23 22:17:57', '41', '2017-01-17 22:26:23', '41', '2017-01-17 22:26:23', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1085', '1068', '57', '1484846984-032-1', '1', '2017-01-23 21:38:16', '41', '2017-01-19 18:29:44', '41', '2017-01-19 18:29:53', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1019', '2', '2', 'repeaters', '1036', '2017-01-17 22:49:38', '41', '2017-01-17 22:49:38', '41', '2017-01-17 22:49:38', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1068', '1067', '2', 'for-page-1', '17', '2017-01-18 20:56:11', '41', '2017-01-18 20:56:11', '41', '2017-01-18 20:56:11', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1021', '1019', '2', 'for-field-98', '17', '2017-01-17 22:54:36', '41', '2017-01-17 22:54:36', '41', '2017-01-17 22:54:36', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1022', '1021', '2', 'for-page-1016', '17', '2017-01-17 23:01:17', '41', '2017-01-17 23:01:17', '41', '2017-01-17 23:01:17', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1083', '1068', '57', '1484846972-3367-1', '1', '2017-01-23 21:38:16', '41', '2017-01-19 18:29:32', '41', '2017-01-19 18:29:53', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1084', '1068', '57', '1484846979-966-1', '1', '2017-01-23 21:38:16', '41', '2017-01-19 18:29:39', '41', '2017-01-19 18:29:53', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1059', '1016', '52', 'spadochroniarz', '1', '2017-01-25 09:49:14', '41', '2017-01-18 11:42:31', '41', '2017-01-18 11:47:45', '0', 'paratrooper', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1079', '1060', '54', 'budowle', '1', '2017-01-25 13:11:57', '41', '2017-01-19 18:25:38', '41', '2017-01-19 18:25:38', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1078', '1022', '49', '1484846667-1352-1', '1', '2017-01-19 18:26:01', '41', '2017-01-19 18:24:27', '41', '2017-01-19 18:24:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1062', '1060', '54', 'foto-budynkow', '1', '2017-01-18 11:45:07', '41', '2017-01-18 11:45:07', '41', '2017-01-18 11:45:07', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1067', '1019', '2', 'for-field-106', '17', '2017-01-18 20:51:44', '41', '2017-01-18 20:51:44', '41', '2017-01-18 20:51:44', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1065', '1016', '52', '2-portfolio', '1', '2017-01-24 22:31:49', '41', '2017-01-18 12:29:38', '41', '2017-01-18 12:30:02', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1066', '1060', '54', 'zima', '1', '2017-01-25 09:51:36', '41', '2017-01-18 12:30:58', '41', '2017-01-18 12:30:58', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1060', '1', '53', 'kategorie-portfolio', '1025', '2017-01-21 19:59:31', '41', '2017-01-18 11:42:52', '41', '2017-01-21 10:55:01', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1061', '1060', '54', 'foto-w-ogrodzie', '1', '2017-01-25 09:48:36', '41', '2017-01-18 11:43:49', '41', '2017-01-18 11:43:49', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1072', '1016', '52', '3-portfolio', '1', '2017-01-19 18:25:38', '41', '2017-01-18 22:04:13', '41', '2017-01-19 18:25:38', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1077', '1022', '49', '1484846652-7021-1', '1', '2017-01-19 18:26:01', '41', '2017-01-19 18:24:12', '41', '2017-01-19 18:24:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1074', '1060', '54', 'lato', '1', '2017-01-18 22:06:34', '41', '2017-01-18 22:06:34', '41', '2017-01-18 22:06:34', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1075', '1016', '52', 'aifla', '1', '2017-01-25 09:12:25', '41', '2017-01-18 22:07:45', '41', '2017-01-18 22:08:15', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1076', '1060', '54', 'przestrzen', '1', '2017-01-25 09:50:58', '41', '2017-01-19 18:20:48', '41', '2017-01-19 18:20:48', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1080', '1022', '49', '1484846754-0294-1', '1', '2017-01-19 18:27:20', '41', '2017-01-19 18:25:54', '41', '2017-01-19 18:26:01', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1081', '1016', '52', 'beuty', '1', '2017-01-23 21:33:00', '41', '2017-01-19 18:28:37', '41', '2017-01-19 18:28:56', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1082', '1060', '54', 'piekno', '1', '2017-01-19 18:28:54', '41', '2017-01-19 18:28:54', '41', '2017-01-19 18:28:54', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1086', '1068', '57', '1484846988-5873-1', '1', '2017-01-25 09:10:58', '41', '2017-01-19 18:29:48', '41', '2017-01-19 18:29:53', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1087', '1068', '57', '1484848564-7368-1', '1', '2017-01-23 21:45:33', '41', '2017-01-19 18:56:04', '41', '2017-01-19 18:56:18', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1091', '1060', '54', 'nauka', '1', '2017-01-19 19:04:35', '41', '2017-01-19 19:04:35', '41', '2017-01-19 19:04:35', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1090', '1016', '52', 'nauczyciel', '1', '2017-01-19 19:05:10', '41', '2017-01-19 19:04:15', '41', '2017-01-19 19:05:10', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1092', '1068', '57', '1484849090-8847-1', '1', '2017-01-23 21:46:07', '41', '2017-01-19 19:04:50', '41', '2017-01-19 19:05:01', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1096', '1019', '2', 'for-field-108', '17', '2017-01-19 19:29:47', '41', '2017-01-19 19:29:47', '41', '2017-01-19 19:29:47', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1097', '1096', '2', 'for-page-1', '17', '2017-01-19 19:33:30', '41', '2017-01-19 19:33:30', '41', '2017-01-19 19:33:30', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1098', '1097', '58', '1484850939-0294-1', '1', '2017-01-24 22:46:55', '41', '2017-01-19 19:35:39', '41', '2017-01-19 19:36:25', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1131', '1103', '60', '1485333807-9988-1', '1', '2017-01-25 09:46:00', '41', '2017-01-25 09:43:27', '41', '2017-01-25 09:43:59', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1101', '1', '59', 'opcje-strony', '1025', '2017-01-25 09:46:00', '41', '2017-01-19 19:46:40', '41', '2017-01-19 19:46:40', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1110', '1019', '2', 'for-field-131', '17', '2017-01-21 19:12:25', '41', '2017-01-21 19:12:25', '41', '2017-01-21 19:12:25', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1102', '1019', '2', 'for-field-116', '17', '2017-01-19 21:50:28', '41', '2017-01-19 21:50:28', '41', '2017-01-19 21:50:28', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1103', '1102', '2', 'for-page-1101', '17', '2017-01-19 21:59:17', '41', '2017-01-19 21:59:17', '41', '2017-01-19 21:59:17', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1104', '1103', '60', '1484859581-4976-1', '1', '2017-01-19 22:14:00', '41', '2017-01-19 21:59:41', '41', '2017-01-19 22:10:48', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1105', '1103', '60', '1484860373-4905-1', '1', '2017-01-19 22:14:00', '41', '2017-01-19 22:12:53', '41', '2017-01-19 22:14:00', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1106', '1103', '60', '1484860689-2103-1', '1', '2017-01-20 07:47:34', '41', '2017-01-19 22:18:09', '41', '2017-01-19 22:18:44', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1107', '1016', '52', 'obiektyw', '1', '2017-01-20 07:55:03', '41', '2017-01-20 07:50:07', '41', '2017-01-20 07:55:03', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1108', '1060', '54', 'fotografie', '1', '2017-01-20 07:55:03', '41', '2017-01-20 07:55:03', '41', '2017-01-20 07:55:03', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1109', '1068', '57', '1484895332-8602-1', '1', '2017-01-23 22:00:14', '41', '2017-01-20 07:55:32', '41', '2017-01-20 07:55:40', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1111', '1110', '2', 'for-page-1017', '17', '2017-01-21 19:18:20', '41', '2017-01-21 19:18:20', '41', '2017-01-21 19:18:20', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1112', '1111', '61', '1485022702-9157-1', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:18:22', '41', '2017-01-21 19:29:28', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1113', '1111', '61', '1485023331-9838-1', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:28:51', '41', '2017-01-21 19:29:28', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1114', '1111', '61', '1485023345-3016-1', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:29:05', '41', '2017-01-21 19:29:28', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1115', '1111', '61', '1485023687-0438-1c', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:34:47', '41', '2017-01-21 19:35:17', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1116', '1111', '61', '1485023731-3454-1c', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:35:31', '41', '2017-01-21 19:35:55', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1118', '1111', '61', '1485023805-8235-1c', '1', '2017-01-21 19:37:53', '41', '2017-01-21 19:36:45', '41', '2017-01-21 19:37:07', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1120', '1022', '49', '1485206232-2904-1', '1', '2017-01-23 22:17:45', '41', '2017-01-23 22:17:12', '41', '2017-01-23 22:17:18', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1130', '1097', '58', '1485293666-1589-1', '1', '2017-01-24 22:46:55', '41', '2017-01-24 22:34:26', '41', '2017-01-24 22:35:21', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1123', '31', '5', 'lang-edit', '1', '2017-01-24 20:53:23', '41', '2017-01-24 20:53:23', '41', '2017-01-24 20:53:23', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1124', '22', '2', 'languages', '16', '2017-01-24 20:53:24', '41', '2017-01-24 20:53:24', '41', '2017-01-24 20:53:24', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1125', '1124', '62', 'default', '16', '2017-01-24 21:04:08', '41', '2017-01-24 20:53:24', '41', '2017-01-24 20:53:24', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1126', '22', '2', 'language-translator', '1040', '2017-01-24 20:53:24', '41', '2017-01-24 20:53:24', '41', '2017-01-24 20:53:24', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1127', '1124', '62', 'english', '1', '2017-01-25 13:46:56', '41', '2017-01-24 20:55:52', '41', '2017-01-24 20:55:52', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1127`, `status1127`) VALUES('1129', '1016', '52', 'nowe-portfolio', '1', '2017-01-24 21:18:56', '41', '2017-01-24 21:18:27', '41', '2017-01-24 21:18:44', '7', 'new-portffolio', '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1077', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1085', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1109', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1098', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '2', '2017-01-25 09:43:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1104', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1105', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1106', '2', '2017-01-21 10:55:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2017-01-21 14:33:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1112', '2', '2017-01-21 19:18:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1113', '2', '2017-01-21 19:28:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1114', '2', '2017-01-21 19:29:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1115', '2', '2017-01-21 19:34:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1116', '2', '2017-01-21 19:35:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1118', '2', '2017-01-21 19:36:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1120', '2', '2017-01-23 22:17:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '2', '2017-01-24 22:34:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1123', '2', '2017-01-24 20:53:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '2', '2017-01-24 20:53:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '2', '2017-01-24 20:55:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1129', '1', '2017-01-24 21:18:27');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1019', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1021', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1021', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '1021');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1067', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1067', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1067');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1097', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1097', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1097', '1096');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1102', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1102', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '1102');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1110', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1110', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1111', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1111', '1019');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1111', '1110');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1124', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1124', '22');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1484344346,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-university title\",\"compile\":3,\"tags\":\"-home\",\"modified\":1485291263,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1486149583,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1484740573,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"pageLabelField\":\"fa-stack-overflow title\",\"compile\":3,\"modified\":1485029270,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'about', '97', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-user-secret title\",\"compile\":3,\"modified\":1485205067,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'contact', '98', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-o title\",\"compile\":3,\"modified\":1485348934,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'portfolio', '99', '0', '0', '{\"noParents\":1,\"childTemplates\":[52],\"slashUrls\":1,\"pageLabelField\":\"fa-tripadvisor title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1485205153,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'services', '100', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-pie-chart title\",\"compile\":3,\"modified\":1485332308,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'kategorie-portfolio', '107', '0', '0', '{\"useRoles\":1,\"childTemplates\":[54],\"slashUrls\":1,\"pageLabelField\":\"fa-ils title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1485001536,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'repeater_rep_port_filter', '103', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1484690076}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'pojedyncza-kategoria-portfolio', '108', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-paperclip title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1485021948,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'single-portfolio', '106', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-yelp title\",\"compile\":3,\"tags\":\"-portfolio\",\"modified\":1485332276,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'repeater_home_rep', '111', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1484769104}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'repeater_rep_intro', '112', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1484850587}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'options', '113', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"modified\":1485333716}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'repeater_rep_social', '114', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1484859028}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'repeater_rep_services', '115', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1485022345}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('62', 'language', '116', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1485287604}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":58,"numCreateTables":65,"numInserts":795,"numSeconds":1}