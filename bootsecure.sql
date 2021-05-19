-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 07:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootsecure`
--
CREATE DATABASE IF NOT EXISTS `bootsecure` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bootsecure`;

-- --------------------------------------------------------

--
-- Table structure for table `usertab`
--

CREATE TABLE `usertab` (
  `uid` int(10) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upwd` varchar(70) NOT NULL,
  `urole` varchar(30) NOT NULL,
  `uenabled` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertab`
--

INSERT INTO `usertab` (`uid`, `uname`, `upwd`, `urole`, `uenabled`) VALUES
(10, 'niro', '$2a$10$jOx5NzSSTBWukJZ1WteZ2O4E6AUaGGKneuXMg6DLip8Y7J2dApg2.', 'ADMIN', 1),
(11, 'ravi', '$2a$10$iK34k5f12vfdit9PF1pULuIYKkjx0zaso56h.Up1H.h9zE/29XUmK', 'EMPLOYEE', 1),
(12, 'viji', '$2a$10$AAUY2gCqGWINXFfwrWhhWuhh3B180DaukG8X.ktI8T/wdEwGmMZuC', 'STUDENT', 1);
--
-- Database: `dcmallavi`
--
CREATE DATABASE IF NOT EXISTS `dcmallavi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dcmallavi`;

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `event_id` int(11) NOT NULL COMMENT 'event id',
  `event_image` text DEFAULT NULL COMMENT 'Event Image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='event_images';

--
-- Dumping data for table `event_images`
--

INSERT INTO `event_images` (`event_id`, `event_image`) VALUES
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg'),
(1, '/public/assets/images/events/2019-ol.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `popular_events`
--

CREATE TABLE `popular_events` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `event_type` varchar(8) DEFAULT NULL COMMENT 'Event Type ol or al',
  `event_name` varchar(255) DEFAULT NULL COMMENT 'Event Name',
  `event_intro` text DEFAULT NULL COMMENT 'Event Introduction',
  `event_year` varchar(16) DEFAULT NULL COMMENT 'Event Year only',
  `event_date` varchar(16) DEFAULT NULL COMMENT 'Event Date only',
  `event_month` varchar(16) DEFAULT NULL COMMENT 'Event Month only',
  `event_time` varchar(64) DEFAULT NULL COMMENT 'Event Time',
  `event_location` varchar(255) DEFAULT NULL COMMENT 'Event Location',
  `event_students` int(11) DEFAULT NULL COMMENT 'Event Students',
  `event_star` int(2) DEFAULT NULL COMMENT 'Event Star',
  `event_description` text DEFAULT NULL COMMENT 'Event Description',
  `event_content` text DEFAULT NULL COMMENT 'Event Content',
  `event_image` text DEFAULT NULL COMMENT 'Event Image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='upcoming_events';

--
-- Dumping data for table `popular_events`
--

INSERT INTO `popular_events` (`id`, `event_type`, `event_name`, `event_intro`, `event_year`, `event_date`, `event_month`, `event_time`, `event_location`, `event_students`, `event_star`, `event_description`, `event_content`, `event_image`) VALUES
(2, 'O/L', 'Maths', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\r\n                                        Ipsum has been the industry’s standard dummy text ever since the 1500s, when an\r\n                                        unknown printer took a galley of type and scrambled it to make a type specimen\r\n                                        book. It has survived not only five centuries, but also the leap into electronic\r\n                                        typesetting, remaining essentially unchanged.', '2019', '02', '08', '10:30 AM', 'Mu/Mallavi Central College', 300, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\r\n                                        Ipsum has been the industry’s standard dummy text ever since the 1500s, when an\r\n                                        unknown printer took a galley of type and scrambled it to make a type specimen\r\n                                        book. It has survived not only five centuries, but also the leap into electronic\r\n                                        typesetting, remaining essentially unchanged.', '<li>Over 37 lectures and 55.5 hours of content!</li>\r\n                                        <li>LIVE PROJECT End to End Software Testing Training Included.</li>\r\n                                        <li>Learn Software Testing and Automation basics from a professional trainer\r\n                                            from your own desk.</li>\r\n                                        <li>Information packed practical training starting from basics to advanced\r\n                                            testing techniques.</li>\r\n                                        <li>Best suitable for beginners to advanced level users and who learn faster\r\n                                            when demonstrated.</li>\r\n                                        <li>Course content designed by considering current software testing technology\r\n                                            and the job market.</li>\r\n                                        <li>Practical assignments at the end of every session.</li>\r\n                                        <li>Practical learning experience with live project work and examples.cv</li>', '/public/assets/images/events/2019-ol.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_events`
--

CREATE TABLE `upcoming_events` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `event_type` varchar(8) DEFAULT NULL COMMENT 'Event Type ol or al',
  `event_name` varchar(255) DEFAULT NULL COMMENT 'Event Name',
  `event_date` varchar(16) DEFAULT NULL COMMENT 'Event Date only',
  `event_month` varchar(64) DEFAULT NULL COMMENT 'Event Month',
  `event_time` varchar(64) DEFAULT NULL COMMENT 'Event Time',
  `event_location` varchar(255) DEFAULT NULL COMMENT 'Event Place',
  `event_intro` varchar(255) DEFAULT NULL COMMENT 'Event intro',
  `event_image` text DEFAULT NULL COMMENT 'Event Image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='upcoming_events';

-- --------------------------------------------------------

--
-- Table structure for table `what_people_say`
--

CREATE TABLE `what_people_say` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `f_name` varchar(255) DEFAULT NULL COMMENT 'Full Name',
  `position` varchar(255) DEFAULT NULL COMMENT 'Position',
  `said_text` text DEFAULT NULL COMMENT 'What they Said',
  `dp` text DEFAULT NULL COMMENT 'Profile Image Path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='what_people_say';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `popular_events`
--
ALTER TABLE `popular_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `what_people_say`
--
ALTER TABLE `what_people_say`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `popular_events`
--
ALTER TABLE `popular_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key';

--
-- AUTO_INCREMENT for table `what_people_say`
--
ALTER TABLE `what_people_say`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key';
--
-- Database: `ds_office`
--
CREATE DATABASE IF NOT EXISTS `ds_office` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ds_office`;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `email_id`, `first_name`, `last_name`) VALUES
(1, 'nnirosh448@gmail.com', 'Vijayarasha', 'niroshan'),
(2, 'ravina@gmail.com', 'ananthakumaran', 'ravina'),
(5, 'nr@gmail.com', 'ravina', 'niroshan'),
(8, 'nnirosh448@gmail.com', 'aaaaaaaa', 'bbbbbbbb');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'DS'),
(2, 'GS'),
(3, 'GS');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `username`) VALUES
(1111, 'niro1@gmail.com', '$2a$10$.wXxzJFOmNQ23.yoqIMzieL8kz.yFvKE31ai/TFMj.41aAPV.r2Pu', 'niro1'),
(1990, 'niro@gmail.com', '$2a$10$H22fTUVMKqRD6DDOlu9lgu3v922DCh7pJjJsoFE4eeb/pcybNDD1W', 'niro@gmail.com'),
(1991, 'niro@gmail.com', '$2a$10$tTamVY5ptqQ8zyi.Pv0aiuHUvNlRQFSvxui9wJgOGCpnRvqVQ.feS', 'niro@gmail.com'),
(1992, 'niro@gmail.com', '$2a$10$mRiykTjDYAqX9abKBrM5qeeqseRx75RJBy35SZEQRAG4hnifGSyRq', 'niro'),
(1998, 'niro@gmail.com', '$2a$10$tA.9pj/9ECsis8LIuxDcmOxShcSk6YRiKPmcyHJLAKYU9O0/LYcLS', 'ravina'),
(1999, 'niro@gmail.com', '$2a$10$uqZywoLXRZsgEITXsanhA.6U9tyT7rk4Czyfa4UHN3Toqh7O9ej5u', 'ravina');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('nnirosh448@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1111, 3),
(1991, 1),
(1992, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD UNIQUE KEY `UK_it77eq964jhfqtu54081ebtio` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
--
-- Database: `flutter`
--
CREATE DATABASE IF NOT EXISTS `flutter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flutter`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Error reading structure for table flutter.users: #1932 - Table 'flutter.users' doesn't exist in engine
-- Error reading data for table flutter.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `flutter`.`users`' at line 1
--
-- Database: `images`
--
CREATE DATABASE IF NOT EXISTS `images` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `images`;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `uploaded`) VALUES
INSERT INTO `images` (`id`, `image`, `uploaded`) VALUES
INSERT INTO `images` (`id`, `image`, `uploaded`) VALUES
(4, '', '2021-02-28 19:12:35'),
(5, '', '2021-02-28 19:14:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `niroshmedia`
--
CREATE DATABASE IF NOT EXISTS `niroshmedia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `niroshmedia`;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `video_title` varchar(150) NOT NULL,
  `comments_no` int(50) NOT NULL,
  `video_intro` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_type` varchar(100) NOT NULL,
  `thumbnail` varchar(150) NOT NULL,
  `ytlink` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `date`, `video_title`, `comments_no`, `video_intro`, `video_description`, `video_type`, `thumbnail`, `ytlink`) VALUES
(1, '18 April 2021', 'How to add follow button on facebook profile?', 2, 'Facebook ??????????? ??????????? 5000+ ???? ???? ??? ????????? Facebook profile ??? ??????? Follow button ? ????????????????? ?????? ????? ???? ?????????? ??????? ???? ???????. ???? ???????? ????????? ???????????? ???? ?????????? ?????? ?????????????', 'Facebook ??????????? ??????????? 5000+ ???? ???? ??? ????????? Facebook profile ??? ??????? Follow button ? ????????????????? ?????? ????? ???? ?????????? ??????? ???? ???????. ???? ???????? ????????? ???????????? ???? ?????????? ?????? ?????????????? ????????? ???????????.\r\n									', 'Tech_Video', 'images/resource/video-1.jpg', 'https://www.youtube.com/embed/CUl6SeDT8ho2'),
(2, '24 February 2021', 'How to delete google search history?', 6, '??????? ?????????, ???? ?????? ???? ??????? browsing ????? ?????????? history ? ??????? ?????????? ????????? ?????? ????? ???? ???????. ???? ???????? ????????? ???????????? ?????????????.?????', '??????? ?????????? ???? ?????????? ?????? ??????? ???????????????? ????????????? ??????? ?????????(????????? ???????? ?????? ??????? ?????) ??????? p?? ??????? ???????  ?????????? ?????????????? ?????? ????? ??????? ????????????.???????? ??????????? ???????? ????????????? ?????.', 'App', 'images/resource/video-3.jpg', 'https://www.youtube.com/embed/CUl6SeDT8ho2'),
(3, '06 May 2021', 'How to download Advanced Level Exam result sheet as a PDF?', 6, 'வணக்கம் நண்பர்களே, இந்த வீடியோவில் இலங்கை பரீட்சை திணைக்களத்தினால் நடாத்தப்படும் பரீட்சை முடிவுகளை(அண்மையில் நடைபெற்ற உயர்தர பரீட்சை உட்பட) எவ்வாறு pdf வடிவில் இலவசமாக தரவிறக்கம் செய்துகொள்ளவது என்பது பற்றி தெளிவாக கூறியுள்ளேன்.வீடியோவை முழுமையாகப் பார்த்து பயன்பெறுங்கள் நன்றி.', 'வணக்கம் நண்பர்களே, இந்த வீடியோவில் இலங்கை பரீட்சை திணைக்களத்தினால் நடாத்தப்படும் பரீட்சை முடிவுகளை(அண்மையில் நடைபெற்ற உயர்தர பரீட்சை உட்பட) எவ்வாறு pdf வடிவில் இலவசமாக தரவிறக்கம் செய்துகொள்ளவது என்பது பற்றி தெளிவாக கூறியுள்ளேன்.வீடியோவை முழுமையாகப் பார்த்து பயன்பெறுங்கள் நன்றி.', 'Tech_Video', 'images/resource/video-4.jpg', 'https://www.youtube.com/embed/A_BmTr9cQow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'videos', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'bootsecure', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"bootsecure\",\"dcmallavi\",\"ds_office\",\"flutter\",\"images\",\"niroshmedia\",\"phpmyadmin\",\"tempmonitor\",\"test\",\"vds\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bootsecure\",\"table\":\"usertab\"},{\"db\":\"ds_office\",\"table\":\"families\"},{\"db\":\"niroshmedia\",\"table\":\"videos\"},{\"db\":\"dcmallavi\",\"table\":\"popular_events\"},{\"db\":\"dcmallavi\",\"table\":\"upcoming_events\"},{\"db\":\"ds_office\",\"table\":\"user_role\"},{\"db\":\"ds_office\",\"table\":\"user\"},{\"db\":\"ds_office\",\"table\":\"role\"},{\"db\":\"ds_office\",\"table\":\"users\"},{\"db\":\"ds_office\",\"table\":\"hibernate_sequence\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-19 03:02:51', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `tempmonitor`
--
CREATE DATABASE IF NOT EXISTS `tempmonitor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tempmonitor`;

-- --------------------------------------------------------

--
-- Table structure for table `notification_msg`
--
-- Error reading structure for table tempmonitor.notification_msg: #1932 - Table 'tempmonitor.notification_msg' doesn't exist in engine
-- Error reading data for table tempmonitor.notification_msg: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `tempmonitor`.`notification_msg`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--
-- Error reading structure for table tempmonitor.sensor: #1932 - Table 'tempmonitor.sensor' doesn't exist in engine
-- Error reading data for table tempmonitor.sensor: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `tempmonitor`.`sensor`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--
-- Error reading structure for table tempmonitor.sensors: #1932 - Table 'tempmonitor.sensors' doesn't exist in engine
-- Error reading data for table tempmonitor.sensors: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `tempmonitor`.`sensors`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `sensors_mock`
--
-- Error reading structure for table tempmonitor.sensors_mock: #1932 - Table 'tempmonitor.sensors_mock' doesn't exist in engine
-- Error reading data for table tempmonitor.sensors_mock: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `tempmonitor`.`sensors_mock`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Error reading structure for table tempmonitor.users: #1932 - Table 'tempmonitor.users' doesn't exist in engine
-- Error reading data for table tempmonitor.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `tempmonitor`.`users`' at line 1
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `vds`
--
CREATE DATABASE IF NOT EXISTS `vds` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vds`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;