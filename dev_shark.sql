/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : dev_shark

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-11-10 11:13:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for applicants
-- ----------------------------
DROP TABLE IF EXISTS `applicants`;
CREATE TABLE `applicants` (
  `applicant_id` int(11) NOT NULL AUTO_INCREMENT,
  `career_id` int(11) NOT NULL,
  `applicant_name` varchar(150) NOT NULL,
  `applicant_phone` varchar(15) NOT NULL,
  `applicant_email` varchar(150) NOT NULL,
  `apply_date` date DEFAULT NULL,
  `applicant_cv` text NOT NULL,
  PRIMARY KEY (`applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of applicants
-- ----------------------------

-- ----------------------------
-- Table structure for careers
-- ----------------------------
DROP TABLE IF EXISTS `careers`;
CREATE TABLE `careers` (
  `career_id` int(11) NOT NULL AUTO_INCREMENT,
  `career_title` varchar(255) DEFAULT NULL,
  `career_slug` varchar(255) DEFAULT NULL,
  `career_qualifications` text,
  `career_skills` text,
  `date_open` date DEFAULT NULL,
  `date_close` date DEFAULT NULL,
  `is_open` tinyint(4) DEFAULT '1',
  `_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of careers
-- ----------------------------
INSERT INTO `careers` VALUES ('1', 'Web Programmer', 'testdasdsasdasd', 'Qualifications 1|Qualifications 2|Qualifications 3', 'Skills 1|Skills 2', '2016-10-12', '2016-10-12', '1', '2016-10-22 23:51:30', null, '2016-10-22 06:51:30', '1');
INSERT INTO `careers` VALUES ('2', 'Cumi', 'cumi', 'asdasdsad|sadasdsa|asdasdsad', 'sdasdsadsadsad', '2016-10-06', '2016-11-10', '1', null, null, null, null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL,
  `category_desc` varchar(255) DEFAULT NULL,
  `category_img` varchar(255) DEFAULT NULL,
  `category_term` varchar(100) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Industrial', 'industrial', 'SBA 1 merupakan sektor Industrial air compressor yang dibentuk oleh Shark bla bla bla bla lorem ipsum dolor sit amet dummy text goes here bla lorem ipsum dolor sit amet dummy text goes here. ', 'img-dummy.jpg', 'product', '1');
INSERT INTO `categories` VALUES ('2', 'Power Product', 'power-product', 'SBA 1 merupakan sektor Industrial air compressor yang dibentuk oleh Shark bla bla bla bla lorem ipsum dolor sit amet dummy text goes here bla lorem ipsum dolor sit amet dummy text goes here. ', 'img-dummy.jpg', 'product', '1');
INSERT INTO `categories` VALUES ('3', 'Air Compressor', 'air-compressor', 'SBA 1 merupakan sektor Industrial air compressor yang dibentuk oleh Shark bla bla bla bla lorem ipsum dolor sit amet dummy text goes here bla lorem ipsum dolor sit amet dummy text goes here. ', 'img-dummy.jpg', 'product', '1');
INSERT INTO `categories` VALUES ('4', 'Diesel Engine', 'diesel-engine', 'SBA 1 merupakan sektor Industrial air compressor yang dibentuk oleh Shark bla bla bla bla lorem ipsum dolor sit amet dummy text goes here bla lorem ipsum dolor sit amet dummy text goes here. ', 'img-dummy.jpg', 'product', '1');
INSERT INTO `categories` VALUES ('5', 'News', 'adasdsad', 'News', null, 'article', '1');
INSERT INTO `categories` VALUES ('6', 'CSR', 'csr', 'CSR', null, 'article', '1');
INSERT INTO `categories` VALUES ('7', 'Installation', 'installation', 'Installation', null, 'article', '1');

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) DEFAULT NULL,
  `client_phone` varchar(15) DEFAULT NULL,
  `client_email` varchar(100) DEFAULT NULL,
  `client_addr` varchar(255) DEFAULT NULL,
  `client_logo` varchar(100) DEFAULT NULL,
  `_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', 'Clien 1', '', '', '', '1.png', '2016-10-22 22:59:24', '1', '2016-10-22 05:59:24', '1');
INSERT INTO `clients` VALUES ('3', 'Clien 2', '', '', '', '2.png', '2016-10-22 05:58:58', '1', null, null);
INSERT INTO `clients` VALUES ('4', 'Clien 3', '', '', '', '3.png', '2016-10-22 05:59:37', '1', null, null);
INSERT INTO `clients` VALUES ('5', 'Clien 4', '', '', '', '4.png', '2016-10-22 05:59:54', '1', null, null);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'admin', 'Administrator');
INSERT INTO `groups` VALUES ('2', 'member', 'General User');

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('40', 'opt_logo ', 'http://localhost/shark/uploads/site/logo.png');
INSERT INTO `options` VALUES ('41', 'opt_title ', 'Shark');
INSERT INTO `options` VALUES ('42', 'opt_tagline ', 'Hardware and Tools');
INSERT INTO `options` VALUES ('43', 'opt_about', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>');
INSERT INTO `options` VALUES ('44', 'opt_vision ', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>');
INSERT INTO `options` VALUES ('45', 'opt_mission ', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>');
INSERT INTO `options` VALUES ('46', 'opt_value ', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium, totam rem aperiam, eaque ipsaquae ab illo invent ore veritatis et quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>');
INSERT INTO `options` VALUES ('47', 'opt_contact_name ', '');
INSERT INTO `options` VALUES ('48', 'opt_contact_phone ', '+6221 5903411');
INSERT INTO `options` VALUES ('49', 'opt_contact_email ', 'r.unzhurna@gmail.com');
INSERT INTO `options` VALUES ('50', 'opt_contact_addr ', 'Alam Sutera, Tangerang Selatan');
INSERT INTO `options` VALUES ('51', 'opt_contact_name2 ', '');
INSERT INTO `options` VALUES ('52', 'opt_contact_phone2 ', '+6221 5903411');
INSERT INTO `options` VALUES ('53', 'opt_contact_email2', 'mail@shark.co.id');
INSERT INTO `options` VALUES ('54', 'opt_contact_addr2', 'Jl. Industri Keroncong No. 06 Jatiuwung, Tangerang');
INSERT INTO `options` VALUES ('55', 'opt_contact_name3', '');
INSERT INTO `options` VALUES ('56', 'opt_contact_phone3 ', '');
INSERT INTO `options` VALUES ('57', 'opt_contact_email3', '');
INSERT INTO `options` VALUES ('58', 'opt_contact_addr3', '');
INSERT INTO `options` VALUES ('59', 'opt_facebook_url', '#');
INSERT INTO `options` VALUES ('60', 'opt_twitter_url', '#');
INSERT INTO `options` VALUES ('61', 'opt_instagram_url', '#');
INSERT INTO `options` VALUES ('62', 'opt_gplus_url', '#');
INSERT INTO `options` VALUES ('63', 'opt_linkedin_url', '#');
INSERT INTO `options` VALUES ('64', 'opt_youtube_url', '#');
INSERT INTO `options` VALUES ('65', 'opt_meta_title ', 'title');
INSERT INTO `options` VALUES ('66', 'opt_meta_keyword ', 'keyword');
INSERT INTO `options` VALUES ('67', 'opt_meta_description ', 'dfrfwfwf');
INSERT INTO `options` VALUES ('68', 'opt_tracking_id ', 'idsdfd897897');
INSERT INTO `options` VALUES ('69', 'opt_profile_pdf', 'http://localhost/shark/uploads/download/Optimizely-Features.pdf');
INSERT INTO `options` VALUES ('70', 'opt_brocure_pdf', 'http://localhost/shark/uploads/download/Optimizely-Features.pdf');
INSERT INTO `options` VALUES ('71', 'opt_email_protocol', 'smtp');
INSERT INTO `options` VALUES ('72', 'opt_smtp_host', 'ssl://smtp.gmail.com');
INSERT INTO `options` VALUES ('73', 'opt_smtp_port', '465');
INSERT INTO `options` VALUES ('74', 'opt_smtp_user', 'r.unzhurna@gmail.com');
INSERT INTO `options` VALUES ('75', 'opt_smtp_pass', '1Sampa!9');

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(100) DEFAULT NULL,
  `partner_phone` varchar(15) DEFAULT NULL,
  `partner_email` varchar(100) DEFAULT NULL,
  `partner_addr` varchar(255) DEFAULT NULL,
  `_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO `partners` VALUES ('1', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('2', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('3', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('4', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('5', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('6', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('7', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('8', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');
INSERT INTO `partners` VALUES ('9', 'Nama Mitra 1 Xxxx zzzzzzzzzzzz', '087728714555', 'mitra@mitra.com', 'Jl. Alamat mtoko distributor. ', '2016-10-22 23:17:47', '1', '2016-10-22 06:17:47', '1');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` int(11) unsigned NOT NULL DEFAULT '0',
  `post_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) DEFAULT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  PRIMARY KEY (`post_id`),
  KEY `type_status_date` (`post_image`(191),`post_status`,`post_create`,`post_id`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '1', '2016-11-06 03:59:50', '2016-11-06 06:56:30', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 1', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('2', '1', '2016-11-06 04:00:52', '2016-11-06 06:56:36', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 2', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('3', '1', '2016-11-06 04:01:26', '2016-11-06 06:56:42', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 3', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('4', '1', '2016-11-06 04:01:41', '2016-11-06 06:57:06', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 4', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('5', '1', '2016-11-06 04:02:09', '2016-11-06 06:57:14', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 5', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('6', '1', '2016-11-06 04:02:26', '2016-11-06 06:57:24', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 6', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('7', '1', '2016-11-06 04:03:08', '2016-11-06 06:57:34', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 7', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');
INSERT INTO `posts` VALUES ('8', '1', '2016-11-06 04:03:25', '2016-11-06 06:57:42', '<p>The project was in <a title=\"Development hell\" href=\"https://en.wikipedia.org/wiki/Development_hell\">development hell</a> for 14 years.<sup id=\"cite_ref-RL_4-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> Numerous producers had tried for decades to film Doss\' story, including decorated war hero <a title=\"Audie Murphy\" href=\"https://en.wikipedia.org/wiki/Audie_Murphy\">Audie Murphy</a> and <a title=\"Hal B. Wallis\" href=\"https://en.wikipedia.org/wiki/Hal_B._Wallis\">Hal B. Wallis</a> (producer of <em><a title=\"Casablanca (film)\" href=\"https://en.wikipedia.org/wiki/Casablanca_(film)\">Casablanca</a></em>).<sup id=\"cite_ref-WSJ_5-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup> In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of <a title=\"Bing Crosby\" href=\"https://en.wikipedia.org/wiki/Bing_Crosby\">Bing Crosby</a>) wrote a treatment and brought the project to film producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> through the efforts of Stan Jensen of the <a title=\"Seventh-day Adventist Church\" href=\"https://en.wikipedia.org/wiki/Seventh-day_Adventist_Church\">Seventh-day Adventist Church</a>.<sup id=\"cite_ref-RL_4-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-RL-4\">[4]</a></sup> In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the process. However, Doss died in 2006, after which producer Bill Mechanic acquired and then sold the rights to <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a>, which developed the project along with producer <a title=\"David Permut\" href=\"https://en.wikipedia.org/wiki/David_Permut\">David Permut</a> of Permut Presentations.<sup id=\"cite_ref-November2014Deadline_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup> Co-producers of the film are Gregory Crosby and Steve Longi. <sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-7\">[7]</a></sup> <a title=\"Walden Media\" href=\"https://en.wikipedia.org/wiki/Walden_Media\">Walden Media</a> insisted on a <a title=\"Motion Picture Association of America film rating system\" href=\"https://en.wikipedia.org/wiki/Motion_Picture_Association_of_America_film_rating_system\">PG-13</a> version of the battle, then Mechanic spent years working to buy the rights back.<sup id=\"cite_ref-WSJ_5-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJ-5\">[5]</a></sup><sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-8\">[8]</a></sup> After acquring the rights, Mechanic approached <a title=\"Mel Gibson\" href=\"https://en.wikipedia.org/wiki/Mel_Gibson\">Mel Gibson</a> and wanted him to blend the concoction of violence and faith as he did with <em><a title=\"The Passion of the Christ\" href=\"https://en.wikipedia.org/wiki/The_Passion_of_the_Christ\">The Passion of the Christ</a></em> (2004). But Gibson turned down the offer twice as he prevously did with <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em> (1995).<sup id=\"cite_ref-WSJS_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-WSJS-9\">[9]</a></sup> Then almost a decade later, Gibson finally agreed to helm the film on November 2014. The same month <a title=\"Andrew Garfield\" href=\"https://en.wikipedia.org/wiki/Andrew_Garfield\">Andrew Garfield</a> was also confirmed to play the role of <a title=\"Desmond Doss\" href=\"https://en.wikipedia.org/wiki/Desmond_Doss\">Desmond Doss</a>.<sup id=\"cite_ref-November2014Deadline_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-November2014Deadline-6\">[6]</a></sup></p>\r\n<p>On February 9, 2015, <a title=\"IM Global\" href=\"https://en.wikipedia.org/wiki/IM_Global\">IM Global</a> closed a deal to finance the film and also sold the film into the international markets.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-10\">[10]</a></sup> On the same day, <a title=\"Lionsgate\" href=\"https://en.wikipedia.org/wiki/Lionsgate\">Lionsgate</a> acquired the North American distribution rights to the film.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-11\">[11]</a></sup> Chinese distribution rights were acquired by Bliss Media, a Shanghai-based film production and distribution company.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-12\">[12]</a></sup></p>\r\n<p><em>Hacksaw Ridge</em> is the first film directed by Gibson since <em><a title=\"Apocalypto\" href=\"https://en.wikipedia.org/wiki/Apocalypto\">Apocalypto</a></em> in 2006,<sup id=\"cite_ref-THRR_13-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-THRR-13\">[13]</a></sup><sup id=\"cite_ref-Film1_14-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-Film1-14\">[14]</a></sup> and marks a departure from his previous films, such as <em>Apocalypto</em> and <em><a title=\"Braveheart\" href=\"https://en.wikipedia.org/wiki/Braveheart\">Braveheart</a></em>, in which the protagonists acted violently.<sup id=\"cite_ref-DEADinter_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Hacksaw_Ridge#cite_note-DEADinter-15\">[15]</a></sup></p>', 'Development 8', 'The project was in development hell for 14 years.[4] Numerous producers had tried for decades to film Doss\' story, including decorated war hero Audie Murphy and Hal B. Wallis (producer of Casablanca).[5] In 2001, after finally convincing Doss that making a movie on his remarkable life was the right thing to do, screenwriter/producer Gregory Crosby (grandson of Bing Crosby) wrote a treatment and brought the project to film producer David Permut through the efforts of Stan Jensen of the Seventh-day Adventist Church.[4] In 2004, director Terry Benedict won the rights to make a 2004 documentary about Doss and secured dramatic rights in the ...', 'publish', 'development', '5', 'Howitworks_7.jpg');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `prod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prod_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_fiture` text COLLATE utf8mb4_unicode_ci,
  `prod_spec` text COLLATE utf8mb4_unicode_ci,
  `prod_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.jpg',
  `prod_manual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `prod_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `_create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `type_status_date` (`prod_image`(191),`prod_status`,`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('2', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('3', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('4', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('5', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('6', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('7', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('8', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('9', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');
INSERT INTO `products` VALUES ('10', 'asdasd', 'asdasd', '<p>sadasda</p>', '<p>asdasdas</p>', '<p>asdasd</p>', 'X9GeLl9WDx8', 'prod1.png', null, '2', 'publish', '2016-10-30 20:39:24', '1', '2016-10-30 02:39:24', '1');

-- ----------------------------
-- Table structure for products_parts
-- ----------------------------
DROP TABLE IF EXISTS `products_parts`;
CREATE TABLE `products_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products_parts
-- ----------------------------
INSERT INTO `products_parts` VALUES ('1', '1', '1');
INSERT INTO `products_parts` VALUES ('2', '1', '2');
INSERT INTO `products_parts` VALUES ('3', '1', '3');
INSERT INTO `products_parts` VALUES ('4', '1', '4');
INSERT INTO `products_parts` VALUES ('5', '1', '5');
INSERT INTO `products_parts` VALUES ('6', '1', '6');
INSERT INTO `products_parts` VALUES ('7', '1', '7');
INSERT INTO `products_parts` VALUES ('8', '1', '8');
INSERT INTO `products_parts` VALUES ('9', '1', '9');
INSERT INTO `products_parts` VALUES ('10', '1', '10');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) DEFAULT NULL,
  `project_img` varchar(100) DEFAULT 'no_image.jpg',
  `_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'dsadsadsad', 'project-dummy3.jpg', '2016-11-09 03:49:51', '1', null, null);

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_name` varchar(100) DEFAULT NULL,
  `sales_phone` varchar(15) DEFAULT NULL,
  `sales_email` varchar(100) DEFAULT NULL,
  `sales_website` varchar(100) DEFAULT NULL,
  `sales_address` varchar(100) DEFAULT NULL,
  `sales_img` varchar(100) DEFAULT 'no_image.jpg',
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', 'sdsadsd', '89009809809', 'rsladkasl@gmail.com', 'sjahduisaiud', 'uiyuiyui', 'no_image.jpg');

-- ----------------------------
-- Table structure for spareparts
-- ----------------------------
DROP TABLE IF EXISTS `spareparts`;
CREATE TABLE `spareparts` (
  `part_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(200) DEFAULT NULL,
  `part_code` varchar(100) DEFAULT NULL,
  `part_desc` varchar(255) DEFAULT NULL,
  `part_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spareparts
-- ----------------------------
INSERT INTO `spareparts` VALUES ('1', 'sadas', 'asdasd', 'sadsadas', 'part1.png');

-- ----------------------------
-- Table structure for testimony
-- ----------------------------
DROP TABLE IF EXISTS `testimony`;
CREATE TABLE `testimony` (
  `testi_id` int(11) NOT NULL AUTO_INCREMENT,
  `testi_name` varchar(100) DEFAULT NULL,
  `testi_title` varchar(255) DEFAULT NULL,
  `testi_content` text,
  `_create_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_create_by` int(11) DEFAULT NULL,
  `_update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `_update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`testi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimony
-- ----------------------------
INSERT INTO `testimony` VALUES ('1', 'Suteja Indrayana', 'CEO matadantelinga.com', 'Setelah bergabung di Telindo usaha saya semakin maju, selain itu banyak kemudahan yang saya dapatkan sebagai anggota member komunitas. Tak hanya itu, kesempatan mendapatkan passive income sangat terbuka lebar disini!', '2016-10-22 23:15:01', '1', '2016-10-22 06:15:01', '1');
INSERT INTO `testimony` VALUES ('2', 'Siti Yuliana', 'Founder hijabwanita.com', 'Kesempatan mendapatkan passive income sangat terbuka lebar disini!, fasilitas telepon dan SMS gratis sesama komunitas juga memudahkan saya melayani pesanan yang berasal dari member komunitas itu sendiri.', '2016-10-22 06:13:47', '1', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'no_image.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '127.0.0.1', 'superadmin', '$2y$08$pkj2JuUUQu5638W1bF1JYOocZZwq5f7qtEGM0tMKYVjIZR9gy5f0i', '', 'admin@admin.com', '', null, null, 'RFaNNWMgprdiCqsERipmtO', '1268889823', '1478702935', '1', 'Super', 'Admin', '087728723455', 'cerpenesia.xyz xxxxxxxxxxxxxxxxxx', 'sdfdsfds', 'logo-small.png');
INSERT INTO `users` VALUES ('3', '127.0.0.1', null, '$2y$08$2rpCc89fKGYsdcxWAdZOAuASpQS2Ewn1OTDlx8N1lOTnbI8w3ys7q', null, 'r.unzhurna@gmail.com', null, null, null, null, '1476981903', null, '1', 'Raina', 'Unzhurna', '087728723455', 'cerpenesia.xyz', 'Jakarta', 'no_image.jpg');
INSERT INTO `users` VALUES ('4', '127.0.0.1', null, '$2y$08$GE.PyrL3yRkkCzpzC6ZvFe3ujULtaBQWOmPjcvw/Xp8Z4fjboHsMa', null, 'kjoijo@jiojoij.com', null, null, null, null, '1476982033', null, '1', 'acascasc', 'ouiouoiuoi', '980983094832493209', 'ioiudoiuqwoi', 'joisajdioasjd', '14650209_10207505766554743_7621512262634102086_n.jpg');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES ('26', '1', '1');
INSERT INTO `users_groups` VALUES ('4', '3', '2');
INSERT INTO `users_groups` VALUES ('21', '4', '1');

-- ----------------------------
-- View structure for applications
-- ----------------------------
DROP VIEW IF EXISTS `applications`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `applications` AS select `A`.`applicant_id` AS `applicant_id`,`B`.`career_title` AS `career_title`,`A`.`applicant_name` AS `applicant_name`,`A`.`applicant_phone` AS `applicant_phone`,`A`.`applicant_email` AS `applicant_email`,`A`.`apply_date` AS `apply_date`,`A`.`applicant_cv` AS `applicant_cv` from (`applicants` `A` join `careers` `B` on((`B`.`career_id` = `A`.`career_id`))) ;

-- ----------------------------
-- View structure for articles
-- ----------------------------
DROP VIEW IF EXISTS `articles`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `articles` AS select `posts`.`post_id` AS `post_id`,concat(`users`.`first_name`,`users`.`last_name`) AS `post_author`,`posts`.`post_create` AS `post_create`,`posts`.`post_title` AS `post_title`,`categories`.`category_name` AS `post_category`,`posts`.`post_slug` AS `post_slug`,`categories`.`category_slug` AS `category_slug`,`posts`.`post_status` AS `post_status`,`posts`.`post_content` AS `post_content`,`posts`.`post_excerpt` AS `post_excerpt`,`posts`.`post_image` AS `post_image` from ((`posts` join `users` on((`users`.`id` = `posts`.`post_author`))) join `categories` on((`categories`.`category_id` = `posts`.`category_id`))) ;

-- ----------------------------
-- View structure for view_part
-- ----------------------------
DROP VIEW IF EXISTS `view_part`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_part` AS select `products_parts`.`id` AS `id`,`spareparts`.`part_name` AS `part_name`,`spareparts`.`part_code` AS `part_code`,`spareparts`.`part_img` AS `part_img`,`products_parts`.`product_id` AS `product_id` from (`products_parts` join `spareparts` on((`spareparts`.`part_id` = `products_parts`.`part_id`))) ;

-- ----------------------------
-- View structure for view_product
-- ----------------------------
DROP VIEW IF EXISTS `view_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product` AS select `products`.`prod_id` AS `prod_id`,`products`.`prod_image` AS `prod_image`,`products`.`prod_name` AS `prod_name`,`categories`.`category_name` AS `category_name`,`products`.`prod_slug` AS `prod_slug`,`products`.`prod_desc` AS `prod_desc`,`products`.`prod_fiture` AS `prod_fiture`,`products`.`prod_spec` AS `prod_spec`,`products`.`prod_video` AS `prod_video`,`categories`.`category_slug` AS `category_slug`,`products`.`prod_status` AS `prod_status` from (`products` join `categories` on((`categories`.`category_id` = `products`.`category_id`))) ;
SET FOREIGN_KEY_CHECKS=1;
