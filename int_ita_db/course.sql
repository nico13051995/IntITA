-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-04-28 18:40:09
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table int_ita_db.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_ID` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `level` enum('intern','junior','strong junior','middle','senior') NOT NULL,
  `start` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `modules_count` int(255) DEFAULT NULL,
  `course_duration_hours` int(11) NOT NULL,
  `course_price` decimal(10,0) DEFAULT NULL,
  `for_whom` text,
  `what_you_learn` text,
  `what_you_get` text,
  `course_img` varchar(255) DEFAULT NULL,
  `review` text,
  PRIMARY KEY (`course_ID`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='status: 0 - in develop, 1 - avaliable';

-- Dumping data for table int_ita_db.course: ~7 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`course_ID`, `alias`, `language`, `course_name`, `level`, `start`, `status`, `modules_count`, `course_duration_hours`, `course_price`, `for_whom`, `what_you_learn`, `what_you_get`, `course_img`, `review`) VALUES
	(1, 'Php', 'ua', 'Інтернет програміст (РНР)', 'strong junior', '2015-07-30', 0, 7, 89, 6548, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект;', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити;', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині;', '/css/images/course1Image.png', NULL),
	(2, 'Javascript', 'ua', 'Інтернет програміст (Java Script)', 'strong junior', '2015-10-30', 0, 7, 120, 0, '', '', '', '/css/images/course1Image.png', NULL),
	(3, 'Java', 'ua', 'Програміст (Java)', 'strong junior', '2015-10-30', 0, 7, 30, 0, '', '', '', '/css/images/course1Image.png', NULL),
	(4, 'C#', 'ua', 'Програміст (C#)', 'strong junior', '2015-10-30', 0, 7, 40, 0, '', '', '', '/css/images/course1Image.png', NULL),
	(5, 'C++', 'ua', 'Програміст (С++)', 'intern', '2015-12-30', 0, 7, 36, 0, '', '', '', '/css/images/course1Image.png', NULL),
	(6, 'ObjectiveC', 'ua', 'Програміст (Objective С)', 'middle', '2015-10-30', 0, 7, 130, 0, '', '', '', '/css/images/course1Image.png', NULL),
	(7, 'QA', 'ua', 'Тестувальник (QA)', 'junior', '2016-02-28', 0, 7, 64, 0, '', '', '', '/css/images/course1Image.png', NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
