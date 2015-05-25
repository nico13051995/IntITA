-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-05-25 18:15:53
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table int_ita_db.lectures
DROP TABLE IF EXISTS `lectures`;
CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `idModule` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `idType` int(11) DEFAULT NULL,
  `durationInMinutes` int(11) DEFAULT NULL,
  `idTeacher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lectures: ~17 rows (approximately)
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` (`id`, `image`, `alias`, `language`, `idModule`, `order`, `title`, `idType`, `durationInMinutes`, `idTeacher`) VALUES
	(1, 'lectureImage.png', 'lecture1', 'ua', 1, 1, 'Змінні та типи даних в PHP', 1, 40, '1'),
	(2, 'lectureImage.png', 'lecture2', 'ua', 1, 2, 'Основи синтаксису', 1, 50, '3'),
	(3, 'lectureImage.png', 'lecture3', 'ua', 1, 3, 'Обробка запитів з допомогою PHP', 1, 60, '4'),
	(5, 'lectureImage.png', 'lecture4', 'ua', 1, 4, 'Функції в PHP', 1, 60, '1'),
	(14, 'lectureImage.png', 'lecture5', 'ua', 1, 5, 'Об\'єкти і класи PHP', 1, 60, '2'),
	(15, 'lectureImage.png', 'lecture6', 'ua', 1, 6, 'Робота з масивами даних', 1, 60, '3'),
	(16, 'lectureImage.png', 'lecture7', 'ua', 1, 7, 'Робота з стрічками', 1, 60, '2'),
	(17, 'lectureImage.png', 'lecture8', 'ua', 1, 8, 'Робота з файловою системою', 1, 60, '4'),
	(18, 'lectureImage.png', 'lecture9', 'ua', 1, 9, 'Бази даних і СУБД. Введення в SQL', 1, 60, '2'),
	(19, 'lectureImage.png', 'lecture10', 'ua', 1, 10, 'Взаємодія PHP і MySQL', 1, 60, '1'),
	(20, 'lectureImage.png', 'lecture11', 'ua', 1, 11, 'Авторизація доступу з допомогою сесій', 1, 60, '3'),
	(21, 'lectureImage.png', 'lecture12', 'ua', 1, 12, 'Регулярні вирази', 1, 60, '2'),
	(22, 'lectureImage.png', 'lecture1', 'ua', 2, 1, 'Взаємодія PHP і XML', 1, 60, '1'),
	(23, 'lectureImage.png', 'lecture2', 'ua', 2, 2, 'Приклади коду', 1, 60, '2'),
	(24, 'lectureImage.png', 'lecture3', 'ua', 2, 3, 'Список літератури', 1, 60, '4'),
	(26, 'lectureImage.png', 'lecture14', 'ua', 1, 13, 'Фреймворк Yii', 1, 60, '1'),
	(27, 'lectureImage.png', 'lecture15', 'ua', 1, 14, 'Фреймворк Lavarel', 1, 60, '3');
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
