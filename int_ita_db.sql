-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-06-23 16:44:28
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for int_ita_db
CREATE DATABASE IF NOT EXISTS `int_ita_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `int_ita_db`;


-- Dumping structure for table int_ita_db.aa_access
DROP TABLE IF EXISTS `aa_access`;
CREATE TABLE IF NOT EXISTS `aa_access` (
  `user_id` smallint(5) unsigned NOT NULL,
  `interface_id` smallint(5) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `add` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`interface_id`),
  KEY `interface_id` (`interface_id`),
  CONSTRAINT `aa_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `aa_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aa_access_ibfk_2` FOREIGN KEY (`interface_id`) REFERENCES `aa_interfaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_access: ~0 rows (approximately)
/*!40000 ALTER TABLE `aa_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_access` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_authorizations
DROP TABLE IF EXISTS `aa_authorizations`;
CREATE TABLE IF NOT EXISTS `aa_authorizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL,
  `when_enter` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `when_enter` (`when_enter`),
  CONSTRAINT `aa_authorizations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `aa_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_authorizations: ~60 rows (approximately)
/*!40000 ALTER TABLE `aa_authorizations` DISABLE KEYS */;
INSERT INTO `aa_authorizations` (`id`, `user_id`, `when_enter`, `ip`) VALUES
	(1, 2, '2015-03-02 15:33:25', '::1'),
	(2, 2, '2015-03-02 15:33:25', '::1'),
	(3, 2, '2015-03-02 15:41:58', '::1'),
	(4, 2, '2015-03-02 15:41:59', '::1'),
	(5, 3, '2015-03-02 15:45:10', '::1'),
	(6, 3, '2015-03-02 15:45:10', '::1'),
	(7, 2, '2015-03-03 15:04:10', '::1'),
	(8, 2, '2015-03-03 15:04:10', '::1'),
	(9, 2, '2015-03-03 15:41:31', '::1'),
	(10, 2, '2015-03-03 15:41:32', '::1'),
	(11, 2, '2015-03-03 17:26:15', '::1'),
	(12, 2, '2015-03-03 17:26:15', '::1'),
	(13, 2, '2015-03-04 12:54:56', '::1'),
	(14, 2, '2015-03-04 12:54:56', '::1'),
	(15, 2, '2015-03-05 14:12:11', '::1'),
	(16, 2, '2015-03-05 14:12:12', '::1'),
	(17, 2, '2015-03-06 13:21:13', '::1'),
	(18, 2, '2015-03-06 13:21:13', '::1'),
	(19, 2, '2015-03-06 13:33:29', '::1'),
	(20, 2, '2015-03-06 13:33:30', '::1'),
	(21, 2, '2015-03-07 01:19:06', '::1'),
	(22, 2, '2015-03-07 01:19:07', '::1'),
	(23, 2, '2015-03-07 10:31:26', '::1'),
	(24, 2, '2015-03-07 10:31:27', '::1'),
	(25, 2, '2015-03-10 14:40:09', '::1'),
	(26, 2, '2015-03-10 14:40:09', '::1'),
	(27, 2, '2015-03-12 17:10:57', '::1'),
	(28, 2, '2015-03-12 17:10:57', '::1'),
	(29, 2, '2015-03-12 18:59:14', '::1'),
	(30, 2, '2015-03-12 18:59:14', '::1'),
	(31, 2, '2015-03-13 13:24:19', '::1'),
	(32, 2, '2015-03-13 13:24:21', '::1'),
	(33, 2, '2015-03-13 16:25:37', '::1'),
	(34, 2, '2015-03-13 16:25:37', '::1'),
	(35, 2, '2015-03-19 15:45:40', '::1'),
	(36, 2, '2015-03-19 15:45:41', '::1'),
	(37, 2, '2015-03-20 15:14:18', '::1'),
	(38, 2, '2015-03-20 15:14:18', '::1'),
	(39, 2, '2015-03-23 14:29:03', '::1'),
	(40, 2, '2015-03-23 14:29:04', '::1'),
	(41, 2, '2015-03-24 19:48:01', '::1'),
	(42, 2, '2015-03-24 19:48:01', '::1'),
	(43, 2, '2015-03-26 16:11:11', '::1'),
	(44, 2, '2015-03-26 16:11:12', '::1'),
	(45, 2, '2015-04-02 16:57:52', '::1'),
	(46, 2, '2015-04-02 16:57:52', '::1'),
	(47, 2, '2015-04-07 16:12:17', '::1'),
	(48, 2, '2015-04-07 16:12:17', '::1'),
	(49, 2, '2015-04-09 13:46:07', '::1'),
	(50, 2, '2015-04-09 13:46:07', '::1'),
	(51, 2, '2015-05-05 23:41:47', '::1'),
	(52, 2, '2015-05-05 23:41:47', '::1'),
	(53, 2, '2015-05-06 14:29:21', '::1'),
	(54, 2, '2015-05-06 14:29:21', '::1'),
	(55, 2, '2015-05-06 19:24:31', '::1'),
	(56, 2, '2015-05-06 19:24:31', '::1'),
	(57, 2, '2015-05-10 22:46:16', '::1'),
	(58, 2, '2015-05-10 22:46:16', '::1'),
	(59, 2, '2015-05-21 16:59:55', '::1'),
	(60, 2, '2015-05-21 16:59:56', '::1');
/*!40000 ALTER TABLE `aa_authorizations` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_errors
DROP TABLE IF EXISTS `aa_errors`;
CREATE TABLE IF NOT EXISTS `aa_errors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `error_type` enum('exception','warning') DEFAULT NULL,
  `info` text,
  `authorization_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authorization_id` (`authorization_id`),
  CONSTRAINT `aa_errors_ibfk_1` FOREIGN KEY (`authorization_id`) REFERENCES `aa_authorizations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.aa_errors: ~0 rows (approximately)
/*!40000 ALTER TABLE `aa_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_errors` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_interfaces
DROP TABLE IF EXISTS `aa_interfaces`;
CREATE TABLE IF NOT EXISTS `aa_interfaces` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` tinyint(3) unsigned DEFAULT NULL,
  `alias` varchar(60) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '5',
  `title` varchar(80) NOT NULL,
  `info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `aa_interfaces_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `aa_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_interfaces: ~0 rows (approximately)
/*!40000 ALTER TABLE `aa_interfaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_interfaces` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_logs
DROP TABLE IF EXISTS `aa_logs`;
CREATE TABLE IF NOT EXISTS `aa_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `interface_id` smallint(5) unsigned DEFAULT NULL,
  `authorization_id` int(10) unsigned DEFAULT NULL,
  `when_event` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `interface_id` (`interface_id`),
  KEY `authorization_id` (`authorization_id`),
  CONSTRAINT `aa_logs_ibfk_1` FOREIGN KEY (`interface_id`) REFERENCES `aa_interfaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aa_logs_ibfk_2` FOREIGN KEY (`authorization_id`) REFERENCES `aa_authorizations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `aa_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_logs` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_sections
DROP TABLE IF EXISTS `aa_sections`;
CREATE TABLE IF NOT EXISTS `aa_sections` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_sections: ~0 rows (approximately)
/*!40000 ALTER TABLE `aa_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_sections` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aa_users
DROP TABLE IF EXISTS `aa_users`;
CREATE TABLE IF NOT EXISTS `aa_users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `level` enum('root','admin','user') NOT NULL DEFAULT 'user',
  `login` varchar(21) NOT NULL,
  `password` varchar(32) NOT NULL,
  `interface_level` tinyint(4) NOT NULL DEFAULT '1',
  `email` varchar(40) NOT NULL,
  `surname` varchar(21) NOT NULL,
  `firstname` varchar(21) NOT NULL,
  `middlename` varchar(21) DEFAULT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info` tinytext,
  `salt` varchar(8) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `aa_users` DISABLE KEYS */;
INSERT INTO `aa_users` (`id`, `level`, `login`, `password`, `interface_level`, `email`, `surname`, `firstname`, `middlename`, `regdate`, `info`, `salt`, `disabled`) VALUES
	(2, 'root', 'root', '63a9f0ea7bb98050796b649e85481845', 1, 'root', 'root', 'root', 'root', '2015-03-02 15:33:13', NULL, NULL, 0),
	(3, 'user', 'User', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'user', 'Surname', 'Name', 'Middle name', '2015-03-02 15:43:00', NULL, NULL, 0);
/*!40000 ALTER TABLE `aa_users` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.aboutus
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE IF NOT EXISTS `aboutus` (
  `blockID` int(11) NOT NULL AUTO_INCREMENT,
  `language` enum('EN','UA','RU') NOT NULL,
  `line2Image` varchar(255) NOT NULL,
  `iconImage` varchar(255) NOT NULL,
  `titleText` varchar(50) NOT NULL,
  `textAbout` varchar(255) NOT NULL,
  `linkAddress` varchar(255) NOT NULL,
  `imagesPath` varchar(255) NOT NULL,
  `drop1Text` text NOT NULL,
  `drop2Text` text NOT NULL,
  `drop3Text` text NOT NULL,
  `dropName` varchar(50) NOT NULL,
  `textLarge` text NOT NULL,
  PRIMARY KEY (`blockID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.aboutus: ~6 rows (approximately)
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` (`blockID`, `language`, `line2Image`, `iconImage`, `titleText`, `textAbout`, `linkAddress`, `imagesPath`, `drop1Text`, `drop2Text`, `drop3Text`, `dropName`, `textLarge`) VALUES
	(1, 'UA', '/css/images/line2.png', 'image1.png', 'Про що мрієш ти?', '<p>Спробуємо вгадати: власна квартира чи навіть будинок? Гарний автомобіль? Закордонні подорожі, можливо, до екзотичних країн?</p>', '/index.php?r=aboutus/index&id=1', '/images/aboutus/', '', '', '', '', '<p>Спробуємо вгадати: власна квартира чи навіть будинок? Гарний автомобіль? Закордонні подорожі, можливо, до екзотичних країн? Забезпечене життя для себе та близьких, коли не доводиться думати про гроші?\nА, може, це свобода жити своїм життям? Самостійно керувати власним часом з можливістю працювати за зручним графіком без необхідності щодня їздити на роботу, але при цьому мати стабільно високий дохід?\n	Можливо ти хочеш заробляти, займаючись улюбленою справою і отримувати задоволення від сучасної професії?\nПро що б ти не мріяв, для здійснення більшості мрій потрібні гроші. Сьогодні середня зарплата в Україні є найнижчою в Європі: близько 3,5 тис грн у місяць. Навіть якщо брати сферу бізнесу, зарплати більшості робітників не перевищують 5-8 тис грн. \nЯк щодо 40 - 60 тис грн в місяць з можливістю працювати за гнучким графіком та дистанційно? Ти думаєш, що в нашій країні такі умови лише у керівників та власників бізнесу? У нас хороша новина: вже через рік-два-три так зможеш заробляти і ти.</p>\n\n<p><span class="detailTitle2">Професія майбутнього</span>\n Сьогодні у тебе є реальна можливість поєднати хороший заробіток, гнучкий графік роботи та зручність дистанційної роботи. І це не “заработок в интернете”, про який кричить банерна реклама на багатьох сайтах. Ми віримо у те, що високого стабільного доходу можна досягти лише за допомогою власних зусиль.\nМи живемо в епоху, коли головним двигуном розвитку світової економіки є інформаційні технології (ІТ). Вони дозволяють досягти нових проривних результатів у традиційних галузях: виробництві та послугах. Саме інформаційні технології повністю змінили і продовжують трансформувати індустрії звязку, розваг (книги, музика, фільми), банківських послуг, а також такі традиційні бізнеси, як послуги таксі (Uber), готелів (Airbnb), навчання (Coursera). \nГерої інформаційної епохи - це спеціалісти з інформаційних технологій. Вони знаходяться на передовій змін, вони придумали та продовжують розвивати Windows, iOS, Android, а також мільйони додатків до них, вони створюють соціальні мережі, сайти та бази даних. \nГарна новина для тебе: сьогодні таких спеціалістів не вистачає. Інформаційні технології розвиваються дуже швидко і стають потрібними усюди, тому людей не вистачає, існуючі навчальні заклади просто не встигають готувати потрібну кількість. Нестача спеціалістів означає, що зарплати на ринку стабільно зростають, і сягнули небачених для України значень: в середньому спеціалісти з інформаційних технологій сьогодні отримують 3-5 тис доларів у місяць, і при цьому роботодавці активно полюють на професіоналів. Секрет таких високих зарплат не лише у дефіциті кадрів, а й у тому, що для ІТ-галузі кордони - не проблема. Ти можеш працювати вдома зі своєї квартири в Україні над замовленням клієнта зі США чи Німеччини і отримувати винагороду у доларах чи євро з рівнем оплати, не набагато нижчим від американських чи європейських стандартів.  \nМи запрошуємо тебе приєднатися до світової інформаційної еліти та за короткий час стати професіоналом у сфері інформаційних технологій, щоб отримувати стабільно високий дохід та працювати в зручних умовах за гнучким графіком. </p>\n\n<p><span class="detailTitle2">Що очікується від тебе</span><br/>\nПрограмування - це не так складно, як ти можеш уявляти. Безумовно, щоб стати хорошим програмістом, потрібен час та зусилля. Ризикнемо сказати, що крім часу та зусиль (та, зрозуміло, наявності простенького компютера) не потрібно більше ні-чо-го. Не потрібно бути сильним у математиці: навіть якщо у школі ти не любив математику, а твої оцінки не піднимались вище середнього рівня, ти зможеш стати чудовим програмістом. Не потрібно знати, як влаштований компютер чи бути досвіченим користувачем будь-яких програм. Достатньо часу на навчання та бажання займатися. Гарні знання з математики, логіки, комп’ютера можуть пришвидшити темп навчання, але й без них кожен зможе досягти високого рівня професіоналізму у програмуванні завдяки іноваційному підходу до навчання Академії Програмування ІНТІТА.</p>'),
	(2, 'UA', '/css/images/line2.png', 'image2.png', 'Навчання майбутнього', '<p>Програмування – це не так складно, як ти можеш уявляти. Безумовно, щоб стати хорошим програмістом, потрібен час та зусилля.</p>', '/index.php?r=aboutus/index&id=2', '/images/aboutus/', '', '', '', '', '<p>Коли мова йде про навчальний заклад, можемо побитися об заклад, що до думки тобі приходять велика будівля з десятками навчальних приміщень, лекційна аудиторія, парти, записники, конспекти, викладачі, лекції, семінари. Така система освіти сформувалася ще у Стародавній Греції, і за кілька тисяч років майже не змінилася. Але зараз світ стоїть на порозі великої революції в освіті, яка назавжди змінить те, як ми навчаємося. Сьогодні технології зробили доступним те, що раніше могли дозволити собі лише одиниці, наймаючи персональних вчителів та репетиторів: персоналізоване навчання.\n<span class="detailTitle2">“Три кити” Академії ІНТІТА </span></p>\n\n<p><span class="detailTitle3">Кит перший. Гнучкість та зручність. </span></p>\n\n<p>Ти можеш самостійно будувати графік навчання, виходячи з власних потреб та цілей. Якщо ти хочеш закінчити навчання та почати працювати вже через рік, обирай інтенсивне навчання та займайся 6-8 годин в день. Якщо ти хочеш освоїти програмування поступово, не жертвуючи іншими важливими для тебе речами, ти можеш займатися ті ж 6-8 годин, але у тиждень. \nНе потрібно відвідувати навчальний заклад, Академія з тобою всюди. Навіть якщо ти у місці, де немає звязку та інтернету, ти можеш переглядати лекції в офлайн-режимі, а практичну частину зробити пізніше, коли зявиться доступ.  \n<span class="detailTitle3">Кит другий. Орієнтація на ринок. </span></p>\n\n<p>Ми даємо тобі лише 100% необхідні знання. Ми поважаємо гуманітарні дисципліни та фундаментальні точні науки, які входять до  складу обовязкових для вивчення у вишах, але переконані, що вони не є обовязковими для того, щоб стати професіоналом у сфері інформаційних технологій. Ми вважаємо, що кожен має вирішувати індивідуально, що вивчати та чим цікавитись за межами своєї професії. У той же час у програмах вишів відсутні критичні для професійного успіху дисципліни, або ж вони викладаються недостатньо професійно (англійська мова для ІТ-спеціалістів, проектний менеджмент тощо). Інформаційні технології - це дисципліна, яка змінюється кожного дня, програми вишів просто не встигають адаптуватися до такої швидкості змін. ІНТІТА слідкує за змінами щодня, і адаптує як навчальну програму, так і зміст окремих предметів за необхідностю миттєво. Ми завжди у пошуку нового матеріалу, який можна передати студентам академії.  \nПорівнюючи звичайний технічний виш та академію ІНТІТА, ти можеш думати про сімейний універсал та болід Формула-1. Перший підходить для широкого кола завдань, але він значно програє позашляховикам у прохідності, міні-венам у місткості, лімузинам - у комфорті, спротивним автомобілям - у швидкості та керуванні. Другий сконструйовано лише заради максимальної швидкості та маневреності, жертвуючи усім іншим. І в результаті ми не зробимо з тебе універсально освічену людину, яка розбирається потрохи у всьому, ми зробимо тебе професіоналом світового класу в області програмування.  \n <span class="detailTitle3">Кит третій. Результативність. </span></p>\n\n<p>На відміну від традиційних закладів, ми не навчаємо задля оцінок. Ми працюємо індивідуально з кожним студентом, щоб досягти 100% засвоєння необхідних знань (а ми даємо лише необхідні знання). Ми не обмежуємо тебе у часі, теоретично ти можеш навчатися як завгодно довго. Ми беремо на себе зобовязання навчити тебе програмуванню, незважаючи на те, які знання у тебе вже є. Єдиними передумовами для початку занять є бажання, час на навчання, наявність хоча б простенького компютера та вміння читати та писати. \nЗнання, які ти отримаєш, максимально практичні та сучасні. Починаючи з першого заняття, ти робитимеш завдання з реального світу програмування. Ближче до закінчення навчання ти будеш приймати участь у створенні реальних програмних продуктів для ринку.\nМи гарантуємо тобі 100% отримання пропозиції про працевлаштування протягом 4-6-ти місяців після успішного закінчення навчання.\n <span class="detailTitle2">ІНТІТА: переваги наочно</span>\n \n <table id="detailTable">\n<tr><td><span class="detailTitle2">Традиційне навчання</span></td><td><span class="detailTitle2">ІНТІТА</span></td><td><span class="detailTitle2">Переваги</span></td></tr>\n <tr><td>Необхідність відвідувати заняття у класі</td><td>Навчання у себе вдома</td><td>Комфортна домашня атмосфера, економія часу та коштів на поїздки</td></tr>\n <tr><td>Заняття за фіксованим графіком</td><td>Заняття за індивідуальним графіком</td><td>Можливість підлаштувати графік навчання під власні потреби</td></tr>\n<tr><td>Жорстко визначена навчальна програма, привязана до часових рамок (академічний рік)</td><td>Можливість обирати предмети та термін навчання </td><td>Навчання в комфортному темпі за власним графіком, не обмежене часом</td></tr>\n<tr><td>Лекції та семінари, як основа навчального процесу (вивчення теорії)</td><td>Практичні заняття з першого дня навчання, створення реальних працюючих проектів</td><td>Отримання реального робочого досвіду вже протягом навчання, портфоліо готових робіт на момент закінчення навчання</td></tr>\n<tr><td>Оцінки за якість засвоєних знань за певний час </td><td>Оцінок немає, лише “знання засвоєні” чи “потрібно навчатися далі”</td><td>Навчання до позитивного результату: до повного засвоєння необхідних знань</td></tr>\n<tr><td>Диплом про вищу освіту видається через 5-6 років за умови засвоєння великої кількості непрофільних знань (мова, історія, філософія тощо)</td><td>Лише практичні знання, які будуть потрібні тобі у роботі та житті: програмування, англійська мова, побудова карєри на ринку інформаційних технологій, основи життєвого успіху.</td><td>Весь час навчання витрачається на отримання корисних практичних знань, тому термін навчання скорочуються, а кількість практичних засвоєних знань більша, ніж у традиційних закладах.</td></tr>\n </table> \'</p>'),
	(3, 'UA', '/css/images/line2.png', 'image3.png', 'Питання та відгуки', '<p>Три кити Академії Програмування ІНТІТА Самостійний графік навчання. Лише 100% необхідні знання. Засвоєння 100% знань!</p>', '/index.php?r=aboutus/index&id=3', '/images/aboutus/', '', '', '', '', '<p><span class="detailTitle3">Скільки триває навчання, як швидко я зможу почати заробляти?\n</span><ul><li class="listAbout">навчання не має фіксованого терміну і залежить виключно від темпу, який обереш ти.\n</li></ul>\n<span class="detailTitle3">Чи отримаю я державний диплом про освіту?\n</span><ul><li class="listAbout">ми не видаємо дипломів державного зразка, наша ціль - забезпечити передумови для гарантованого працевлаштування слухачів.\n</li></ul>\n<span class="detailTitle3">Чому навчання коштує так дешево (дорого) у порівнянні з вишем (курсами) Х?\n</span><ul><li class="listAbout">вартість навчання економічно обгрунтована і буде відроблена менше, ніж за рік роботи на позиції програміста-початківця.\n</li></ul>\n<span class="detailTitle3">У мене зараз немає необхідних коштів, чи можу я навчатися у кредит?\n</span><ul><li class="listAbout">так, ми пропонуємо гнучкий підхід в оплаті за навчання, детальніше можна вияснити написавши нам листа на електронну пошту. Контакти.\n</li></ul>\n<span class="detailTitle3">Я чув від знайомого, що він освоїв програмування самотужки, це можливо?\n</span><ul><li class="listAbout">так, на ринку багато “програмістів-самоучок”, але вони, як правило, пройшли довгий шлях для того, щоб навчитись програмуванню, ми - один із ефективних варіантів стати кваліфікованим програмістом за короткий час.\n</li></ul>\n<span class="detailTitle3">У мене у школі було погано з математикою / я давно не займався математикою. Це може завадити мені навчитися програмуванню?\n</span><ul><li class="listAbout">математика допомагає краще розвинути логічне мислення і знання елементарної математики необхідні обов’язково, проте, не математичне, а логічне мислення визначає наскільки гарний програміст і тільки невеликий відсоток гарних математиків стають професійними програмістами.\n</li></ul>\n<span class="detailTitle3">Мені 34 роки, чи можу я зараз розпочати навчання?\n</span><ul><li class="listAbout">верхньої вікової межі для того, щоб вивчати програмування - немає, люди і старшого віку розпочинали і досягали гарних результатів. Життєвий досвід людям старшого віку дозволяє ефективніше побудувати навчальний процес і швидше кар’єрно зростати.\n</li></ul>\n<span class="detailTitle3">Я чув думку, що професія програміста технічна, а я - людина творча. Чи підійде програмування мені?\n</span><ul><li class="listAbout">програмування - це і є творчість, варто спробувати, щоб зрозуміти чи це твоє покликання.\n</li></ul>\'</p>'),
	(4, 'RU', '/css/images/line2.png', 'image1.png', 'О чём ты мечтаешь?', '<p>Попробуем угадать: собственная квартира или даже дом? Красивая машина? Заграничные путешествия в экзотические страны?</p>', '/index.php?r=aboutus/index&id=1', '/images/aboutus/', '', '', '', '', ''),
	(5, 'RU', '/css/images/line2.png', 'image2.png', 'Обучение будущего', '<p>Программирование - это не так сложно, как ты думаешь. Безусловно, чтобы стать хорошим программистом, нужны время и усилия.</p>', '/index.php?r=aboutus/index&id=2', '/images/aboutus/', '', '', '', '', ''),
	(6, 'RU', '/css/images/line2.png', 'image3.png', 'Вопросы и отзывы', '<p>Три кита Академии Программирования ИНТИТА. Самостоятельный график обучения. Только 100% необходимые знания. 100 % усвоение знаний!</p>', '/index.php?r=aboutus/index&id=3', '/images/aboutus/', '', '', '', '', '');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.attribute_value
DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `teacher` int(10) NOT NULL,
  `attribute` int(10) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_attribute_value_role_attribute` (`attribute`),
  KEY `FK_attribute_value_roles` (`teacher`),
  CONSTRAINT `FK_attribute_value_role_attribute` FOREIGN KEY (`attribute`) REFERENCES `role_attribute` (`id`),
  CONSTRAINT `FK_attribute_value_roles` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.attribute_value: ~43 rows (approximately)
/*!40000 ALTER TABLE `attribute_value` DISABLE KEYS */;
INSERT INTO `attribute_value` (`id`, `teacher`, `attribute`, `value`) VALUES
	(2, 1, 1, '10'),
	(3, 2, 1, '12'),
	(4, 3, 1, '23'),
	(6, 4, 1, '5'),
	(8, 6, 1, '14'),
	(10, 1, 2, '51'),
	(11, 2, 2, '52'),
	(13, 3, 2, '54'),
	(14, 6, 2, '22'),
	(15, 4, 2, '55'),
	(16, 6, 3, '1'),
	(17, 1, 3, '2'),
	(18, 2, 3, '5'),
	(19, 3, 4, '3\r\n'),
	(20, 5, 3, '5'),
	(21, 1, 5, '1'),
	(22, 2, 5, '1'),
	(23, 3, 5, '1'),
	(24, 4, 5, '1'),
	(25, 6, 5, '1'),
	(32, 1, 4, '1'),
	(33, 2, 4, '2'),
	(34, 4, 4, '4'),
	(35, 5, 4, '5'),
	(37, 6, 4, '6'),
	(38, 1, 6, '1'),
	(39, 2, 6, '5'),
	(40, 3, 6, '14'),
	(41, 4, 6, '5'),
	(43, 5, 6, '4'),
	(44, 6, 6, '5'),
	(45, 1, 7, '1'),
	(46, 2, 7, '2'),
	(47, 3, 7, '3'),
	(48, 4, 7, '1'),
	(49, 5, 7, '1'),
	(50, 6, 7, '1'),
	(51, 1, 8, '12'),
	(52, 2, 8, '4'),
	(53, 3, 8, '4'),
	(54, 4, 8, '5'),
	(55, 5, 8, '6'),
	(56, 6, 8, '2');
/*!40000 ALTER TABLE `attribute_value` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.carousel
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `order` int(11) NOT NULL,
  `pictureURL` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `imagesPath` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.carousel: ~4 rows (approximately)
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` (`order`, `pictureURL`, `description`, `imagesPath`, `text`) VALUES
	(1, '1.jpg', '<p>Слайдер фото 1</p>', '/css/images/slider_img/', 'Не упусти свій шанс змінити світ - отримай якісну та сучасну освіту і стань класним спеціалістом!'),
	(2, '2.jpg', '<p>Слайдер фото 2</p>', '/css/images/slider_img/', 'Хочеш стати висококласним спеціалістом, приймай вірне рішення - вступай до ІТ Академії ІНТІТА!'),
	(3, '3.jpg', '<p>Слайдер фото 3</p>', '/css/images/slider_img/', 'Один рік наполегливого і цікавого навчання - і ти станеш професійним програмістом. Навчатись важко - зате роботу знайти легко!'),
	(4, '4.jpg', '<p>Слайдер фото 4</p>', '/css/images/slider_img/', 'Не втрачай свій шанс на гідну та цікаву працю – програмуй своє майбутнє вже сьогодні!');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.consultant_modules
DROP TABLE IF EXISTS `consultant_modules`;
CREATE TABLE IF NOT EXISTS `consultant_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `consultant` int(10) NOT NULL,
  `module` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__teacher` (`consultant`),
  KEY `FK__module` (`module`),
  CONSTRAINT `FK__module` FOREIGN KEY (`module`) REFERENCES `module` (`module_ID`),
  CONSTRAINT `FK__teacher` FOREIGN KEY (`consultant`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.consultant_modules: ~6 rows (approximately)
/*!40000 ALTER TABLE `consultant_modules` DISABLE KEYS */;
INSERT INTO `consultant_modules` (`id`, `consultant`, `module`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 50),
	(6, 6, 54);
/*!40000 ALTER TABLE `consultant_modules` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.consultationscalendar
DROP TABLE IF EXISTS `consultationscalendar`;
CREATE TABLE IF NOT EXISTS `consultationscalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `date_cons` date DEFAULT NULL,
  `start_cons` time DEFAULT NULL,
  `end_cons` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.consultationscalendar: ~29 rows (approximately)
/*!40000 ALTER TABLE `consultationscalendar` DISABLE KEYS */;
INSERT INTO `consultationscalendar` (`id`, `teacher_id`, `user_id`, `lecture_id`, `date_cons`, `start_cons`, `end_cons`) VALUES
	(1, 1, 1, 1, '2015-05-08', '12:20:00', '12:40:00'),
	(2, 1, 1, 1, '2015-05-07', '14:20:00', '14:40:00'),
	(3, 1, 1, 1, '2015-05-07', '16:00:00', '16:20:00'),
	(4, 1, 1, 1, '2015-05-07', '17:20:00', '17:40:00'),
	(5, 1, 1, 1, '2015-05-07', '18:40:00', '19:00:00'),
	(6, 1, 1, 1, '2015-05-07', '19:20:00', '19:40:00'),
	(7, 1, 1, 1, '2015-05-07', '17:20:00', '17:40:00'),
	(8, 1, 1, 1, '2015-05-07', '18:20:00', '18:40:00'),
	(9, 1, 1, 1, '2015-05-07', '19:20:00', '19:40:00'),
	(10, 2, 38, 1, '2015-05-05', '12:20:00', '12:40:00'),
	(11, 2, 38, 1, '2015-05-05', '13:00:00', '14:00:00'),
	(12, 2, 38, 1, '2015-05-05', '14:20:00', '14:40:00'),
	(13, 2, 38, 1, '2015-05-12', '12:00:00', '15:00:00'),
	(14, 2, 38, 1, '2015-05-12', '19:00:00', '21:00:00'),
	(15, 2, 38, 1, '2015-05-13', '14:20:00', '14:40:00'),
	(16, 2, 38, 1, '2015-05-13', '15:20:00', '15:40:00'),
	(17, 2, 38, 1, '2015-05-13', '17:20:00', '19:40:00'),
	(18, 2, 38, 1, '2015-05-12', '17:20:00', '17:40:00'),
	(19, 2, 1, 1, '2015-05-06', '11:20:00', '12:00:00'),
	(20, 2, 1, 1, '2015-05-06', '14:20:00', '14:40:00'),
	(21, 2, 1, 1, '2015-05-06', '15:20:00', '15:40:00'),
	(22, 2, 1, 1, '2015-05-06', '16:20:00', '16:40:00'),
	(23, 2, 1, 1, '2015-05-13', '21:00:00', '21:20:00'),
	(24, 2, 38, 1, '2015-05-14', '11:20:00', '11:40:00'),
	(25, 1, 49, 1, '2015-05-26', '11:20:00', '11:40:00'),
	(26, 1, 49, 1, '2015-05-27', '11:20:00', '11:40:00'),
	(27, 1, 22, 1, '2015-06-23', '11:20:00', '11:40:00'),
	(28, 1, 22, 1, '2015-06-23', '14:20:00', '14:40:00'),
	(29, 1, 22, 1, '2015-06-18', '10:00:00', '10:20:00');
/*!40000 ALTER TABLE `consultationscalendar` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_ID` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(20) NOT NULL,
  `language` varchar(6) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `level` enum('intern','junior','strong junior','middle','senior') NOT NULL,
  `start` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `modules_count` int(255) DEFAULT NULL,
  `course_duration_hours` int(11) NOT NULL,
  `course_price` decimal(10,0) DEFAULT NULL,
  `for_whom` text,
  `what_you_learn` text,
  `what_you_get` text,
  `course_img` varchar(255) DEFAULT 'courseimg1.png',
  `rating` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`course_ID`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='status: 0 - in develop, 1 - avaliable';

-- Dumping data for table int_ita_db.course: ~9 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`course_ID`, `alias`, `language`, `course_name`, `level`, `start`, `status`, `modules_count`, `course_duration_hours`, `course_price`, `for_whom`, `what_you_learn`, `what_you_get`, `course_img`, `rating`) VALUES
	(1, 'coursePhp', 'ua', 'Інтернет програміст (РНР)', 'strong junior', '2015-07-30', 0, 16, 89, 6548, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course1Image.png', 9),
	(2, 'courseJavaScript', 'ua', 'Інтернет програміст (Java Script)', 'strong junior', '2015-10-30', 0, 0, 120, 6500, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course9Image.png', 6),
	(3, 'courseJava', 'ua', 'Програміст (Java)', 'strong junior', '2015-10-30', 0, 0, 30, 6700, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course3Image.png', 6),
	(4, 'C#', 'ua', 'Програміст (C#)', 'strong junior', '2015-10-30', 0, 0, 40, 6000, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course4Image.png', 6),
	(5, 'C++', 'ua', 'Програміст (С++)', 'intern', '2015-12-30', 0, 0, 36, 5900, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course2Image.png', 6),
	(6, 'ObjectiveC', 'ua', 'Програміст (Objective С)', 'middle', '2015-10-30', 0, 0, 130, 7100, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course8Image.png', 4),
	(7, 'QA', 'ua', 'Тестувальник (QA)', 'senior', '2016-02-28', 0, 0, 64, 6100, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course7Image.png', 6),
	(13, 'english', 'ua', 'Англійська мова для ІТ', 'middle', '2015-12-30', 0, 3, 60, 2500, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині', 'course1Image.png', 6),
	(14, 'career', 'ua', 'Побудова успішної ІТ кар’єри', 'senior', '2015-12-30', 0, 3, 0, 0, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект\r\n [...]', '', '', 'course3Image.png', 1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.element_type
DROP TABLE IF EXISTS `element_type`;
CREATE TABLE IF NOT EXISTS `element_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Types of lecture elements.';

-- Dumping data for table int_ita_db.element_type: ~9 rows (approximately)
/*!40000 ALTER TABLE `element_type` DISABLE KEYS */;
INSERT INTO `element_type` (`id`, `type`) VALUES
	(1, 'text'),
	(2, 'video'),
	(3, 'code'),
	(4, 'example'),
	(5, 'task'),
	(6, 'final task'),
	(7, 'instruction'),
	(8, 'label'),
	(9, 'image');
/*!40000 ALTER TABLE `element_type` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.footer
DROP TABLE IF EXISTS `footer`;
CREATE TABLE IF NOT EXISTS `footer` (
  `footerID` int(11) NOT NULL AUTO_INCREMENT,
  `language` enum('EN','UA','RU') NOT NULL DEFAULT 'UA',
  `imageSotial` varchar(255) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `imageUp` varchar(255) NOT NULL,
  PRIMARY KEY (`footerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.footer: ~3 rows (approximately)
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
INSERT INTO `footer` (`footerID`, `language`, `imageSotial`, `phone`, `mobile`, `email`, `imageUp`) VALUES
	(1, 'RU', '/css/images/sotial.gif', 'телефон: +38 0432 52 82 67 ', 'тел. моб. +38 067 431 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png'),
	(2, 'EN', '/css/images/sotial.gif', 'tel.: +38 0432 52 82 67', 'mobile +38 067 431 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png'),
	(3, 'UA', '/css/images/sotial.gif', 'телефон: +38 0432 52 82 67', 'тел. моб. +38 067 431 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png');
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.graduate
DROP TABLE IF EXISTS `graduate`;
CREATE TABLE IF NOT EXISTS `graduate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `graduate_date` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  `work_site` varchar(255) DEFAULT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `courses_page` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT NULL,
  `recall` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.graduate: ~6 rows (approximately)
/*!40000 ALTER TABLE `graduate` DISABLE KEYS */;
INSERT INTO `graduate` (`id`, `first_name`, `last_name`, `avatar`, `graduate_date`, `position`, `work_place`, `work_site`, `courses`, `courses_page`, `history`, `rate`, `recall`) VALUES
	(1, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 1, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.'),
	(2, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 2, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.'),
	(3, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 3, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.'),
	(4, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 4, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.'),
	(5, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 5, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.'),
	(6, 'Роксана', 'Соковита', 'Graduates.jpg', '2015-05-12', 'Інтернет-програміст, середнього рівня', 'Google Inc.', 'https://www.google.com/about/careers/', 'Інтернет програміст (РНР), сильний початківець', 'http://intita.itatests.com/course/index/1/', NULL, 6, 'Про академію, можна написати, що дала хороші базові знання в області програмування, що забезпечило швидке кар’єрне зростання, впевненість у колективі більш досвідчених програмістів та розуміння подальшого плану розвитку, як спеціаліста. Також спілкування з однодумцями в групі, робота в команді і т.п.');
/*!40000 ALTER TABLE `graduate` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.header
DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `headerID` int(11) NOT NULL AUTO_INCREMENT,
  `language` enum('EN','UA','RU') NOT NULL,
  `logoURL` varchar(255) NOT NULL,
  `smallLogoURL` varchar(255) NOT NULL,
  `item1Link` varchar(255) NOT NULL,
  `item2Link` varchar(255) NOT NULL,
  `item3Link` varchar(255) NOT NULL,
  `item4Link` varchar(255) NOT NULL,
  PRIMARY KEY (`headerID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.header: ~2 rows (approximately)
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` (`headerID`, `language`, `logoURL`, `smallLogoURL`, `item1Link`, `item2Link`, `item3Link`, `item4Link`) VALUES
	(0, 'UA', '/css/images/Logo_big.png', '/css/images/Logo_small.png', '/courses', '/teachers', '/forum', '/aboutus'),
	(1, 'RU', '/css/images/Logo_big.png', '/css/images/Logo_small.png', '/courses', '/teachers', '/forum', '/aboutus');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `language` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.language: ~3 rows (approximately)
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `code`, `language`, `country`) VALUES
	(1, 'ru', 'русский', 'Россия'),
	(2, 'en', 'english', 'Great Britain'),
	(3, 'ua', 'українська', 'Україна');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.leader_modules
DROP TABLE IF EXISTS `leader_modules`;
CREATE TABLE IF NOT EXISTS `leader_modules` (
  `leader` int(10) NOT NULL,
  `module` int(10) NOT NULL,
  KEY `FK_leader_modules_teacher` (`leader`),
  KEY `FK_leader_modules_module` (`module`),
  CONSTRAINT `FK_leader_modules_module` FOREIGN KEY (`module`) REFERENCES `module` (`module_ID`),
  CONSTRAINT `FK_leader_modules_teacher` FOREIGN KEY (`leader`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.leader_modules: ~7 rows (approximately)
/*!40000 ALTER TABLE `leader_modules` DISABLE KEYS */;
INSERT INTO `leader_modules` (`leader`, `module`) VALUES
	(5, 54),
	(5, 18),
	(5, 56),
	(6, 7),
	(6, 56),
	(6, 54),
	(6, 16);
/*!40000 ALTER TABLE `leader_modules` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lectures
DROP TABLE IF EXISTS `lectures`;
CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT 'lectureImage.png',
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `idModule` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `idType` int(11) DEFAULT '1',
  `durationInMinutes` int(11) DEFAULT '60',
  `idTeacher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lectures: ~33 rows (approximately)
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
	(26, 'lectureImage.png', 'lecture13', 'ua', 1, 13, 'Фреймворк Yii', 1, 60, '1'),
	(27, 'lectureImage.png', 'lecture14', 'ua', 1, 14, 'Фреймворк Lavarel', 1, 60, '3'),
	(31, 'lectureImage.png', 'lecture1', 'ua', 3, 1, 'Вступ', 1, 60, '1'),
	(32, 'lectureImage.png', 'lecture2', 'ua', 3, 2, '2', 1, 60, '1'),
	(33, 'lectureImage.png', 'lecture3', 'ua', 3, 3, '3', 1, 60, '1'),
	(35, 'lectureImage.png', 'lecture15', 'ua', 0, 0, ',,....gergregea', 1, 60, '1'),
	(36, 'lectureImage.png', 'lecture16', 'ua', 0, 0, ',,....gergregea', 1, 60, '1'),
	(37, 'lectureImage.png', 'lecture17', 'ua', 0, 0, 'u7j5787j', 1, 60, '1'),
	(38, 'lectureImage.png', 'lecture18', 'ua', 0, 0, 'u7j5787j', 1, 60, '1'),
	(39, 'lectureImage.png', 'lecture19', 'ua', 0, 0, 'u7j5787j', 1, 60, '1'),
	(40, 'lectureImage.png', 'lecture15', 'ua', 0, 0, 'ythteth', 1, 60, '1'),
	(41, 'lectureImage.png', 'lecture16', 'ua', 0, 0, 'j7t578', 1, 60, '1'),
	(42, 'lectureImage.png', 'lecture17', 'ua', 0, 0, 'j7t578', 1, 60, '1'),
	(43, 'lectureImage.png', 'lecture18', 'ua', 0, 0, 'j7t578', 1, 60, '1'),
	(44, 'lectureImage.png', 'lecture19', 'ua', 0, 0, 'j7t578', 1, 60, '1'),
	(45, 'lectureImage.png', 'lecture15', 'ua', 0, 0, 'eargrtsg..,,', 1, 60, '1'),
	(46, 'lectureImage.png', 'lecture16', 'ua', 0, 0, '6363', 1, 60, '1'),
	(47, 'lectureImage.png', 'lecture15', 'ua', 1, 15, '15', 1, 60, '3');
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lecturetype
DROP TABLE IF EXISTS `lecturetype`;
CREATE TABLE IF NOT EXISTS `lecturetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `text` varchar(50) NOT NULL,
  `short` varchar(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lecturetype: ~4 rows (approximately)
/*!40000 ALTER TABLE `lecturetype` DISABLE KEYS */;
INSERT INTO `lecturetype` (`id`, `image`, `text`, `short`, `description`) VALUES
	(1, 'lectureType.png', 'лекція/практика', 'л/п', ''),
	(2, 'exam.png', 'екзамен', 'екз', ''),
	(3, 'imp.png', 'індивідуальний модульний проект', 'ІМП', ''),
	(4, 'kdp.png', 'командний дипломний проект', 'КДП', '');
/*!40000 ALTER TABLE `lecturetype` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lecture_element
DROP TABLE IF EXISTS `lecture_element`;
CREATE TABLE IF NOT EXISTS `lecture_element` (
  `id_block` int(11) NOT NULL AUTO_INCREMENT,
  `id_lecture` int(11) NOT NULL,
  `block_order` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_type` tinyint(4) NOT NULL,
  `html_block` text NOT NULL,
  PRIMARY KEY (`id_block`),
  KEY `FK_lecture_element_element_type` (`id_type`),
  CONSTRAINT `FK_lecture_element_element_type` FOREIGN KEY (`id_type`) REFERENCES `element_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Chapters and other lecture''s resources ';

-- Dumping data for table int_ita_db.lecture_element: ~30 rows (approximately)
/*!40000 ALTER TABLE `lecture_element` DISABLE KEYS */;
INSERT INTO `lecture_element` (`id_block`, `id_lecture`, `block_order`, `type`, `id_type`, `html_block`) VALUES
	(9, 1, 1, 'video', 2, 'https://www.youtube.com/embed/L3Mg6lk6yyA'),
	(10, 1, 2, 'instruction', 7, '<ol>\n	<li>On line 7, set <span class="colorBP"><span class="colorGreen">$</span>ter<em>ms</em></span><em> equal to a number greater than 5. Make sure to put a semicolon at the end of the line.</em></li>\n	<li>On line 9, edit the state condition so that your program will be out Some expressions return a \' logical value": TRUE or FALSE, text like thise:<span class="colorAlert">You get a 10% discount!</span></li>\n</ol>'),
	(13, 1, 3, 'text', 1, '<p><span class="colorBlack">Імена змінних</span>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(18, 1, 4, 'task', 5, '<ol>\n	<ol>\n		<li><span style="background-color: rgb(255, 255, 0);">On <del>li</del>ne 7, set <span class="colorGreen">$</span>terms equal to a number greater than 5. Make sure to put a semicolon at the end of the line.</span></li>\n		<li><span style="background-color: rgb(255, 255, 0);">On line 9, edit the st<del>ate condition so that your program will be out Some expressions return a \' logical value": TRUE or FALSE, text like thise:</del></span><span style="background-color: rgb(255, 255, 0);">You get a 1</span>0% discount!</li>\n	</ol>\n</ol>'),
	(19, 1, 5, 'video', 2, 'https://www.youtube.com/embed/L3Mg6lk6yyA'),
	(21, 2, 1, 'text', 1, '<p><span class="colorBlack">Імена змінних<em></em></span>\n	<strong><del><em></em></del></strong>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(22, 3, 1, 'text', 1, ' <span class="colorBlack">Імена змінних</span>\r\n    <p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:</p>'),
	(23, 24, 1, 'text', 1, '<p>New text block!</p>'),
	(24, 24, 2, 'text', 1, '<p><iframe width="420" height="315" src="https://www.youtube.com/embed/7KAhgrBDl3A" frameborder="0" allowfullscreen=""></iframe></p>'),
	(25, 1, 6, 'text', 1, '<p>simple\r\n</p>'),
	(26, 1, 7, 'text', 1, '<p>Add links. Example with "www" and "http"</p><p><a href="http://www.google.com">www.google.com</a></p><p><a href="http://google.com">http://google.com</a></p><p><br></p>'),
	(27, 1, 8, 'text', 1, '<p>Add video. Example: ("<a href="http://www.youtube.com/watch?v=QlRGhXj0uRY">youtube.com/watch?v=QlRGhXj0uRY</a>")\r\n</p>\r\n<p>\r\n	<iframe width="500" height="281" src="//www.youtube.com/embed/QlRGhXj0uRY" frameborder="0" allowfullscreen="">\r\n	</iframe><span class="redactor-invisible-space"><br></span>\r\n</p>'),
	(28, 1, 9, 'text', 1, '<p>Add picture. Example: "screensavergift.com/wp-content/uploads/BeautifulNature3-610x320.jpg"</p><p><img src="http://www.screensavergift.com/wp-content/uploads/BeautifulNature3-610x320.jpg"><span class="redactor-invisible-space"><br></span></p>'),
	(29, 1, 10, 'text', 1, '<p>Add code. Example:</p><pre>&lt;div id="logo_img" class="down"&gt;<br> &lt;a href="&lt;?php echo Yii::app()-&gt;createUrl(\'site/index\');?&gt;"&gt;<br> &lt;img id="logo" src="&lt;?php echo Yii::app()-&gt;request-&gt;baseUrl;?&gt;/css/images/Logo_small.png"/&gt;<br> &lt;/a&gt;<br>&lt;/div&gt;</pre>'),
	(30, 1, 11, 'text', 1, '<p><iframe width="500" height="281" src="//www.youtube.com/embed/6zEnXc8jdEE" frameborder="0" allowfullscreen=""></iframe></p>'),
	(32, 1, 12, 'code', 3, '<pre>\r\nmodel = Module::model()->findByPk($idModule);\r\n        $owners = explode(\';\',$model->owners); //array of teacher\'s ids that cna edit this module\r\n        $teachers = Teacher::model()->findAllByAttributes(array(\'teacher_id\'=>$owners)); //info about owners\r\n\r\n\r\n        $criteria=new CDbCriteria();\r\n        $criteria->addCondition(\'idModule>0\');\r\n        $criteria->addCondition(\'idModule=\'.$idModule);\r\n\r\n        $dataProvider = new CActiveDataProvider(\'Lecture\', array(\r\n            \'criteria\' =>$criteria,\r\n            \'pagination\'=>false,\r\n            \'sort\'=>array(\r\n                \'defaultOrder\'=>array(\r\n                    \'order\'=>CSort::SORT_ASC,\r\n                )\r\n            )\r\n        ));\r\n</pre>'),
	(35, 1, 13, 'text', 8, '<p>Глава 1.</p>'),
	(36, 1, 14, 'label', 8, '<p>Глава 3.</p>'),
	(37, 1, 15, 'label', 8, '<p>Глава 4.</p>'),
	(38, 1, 16, 'task', 5, '<p>aefaeghsr</p>'),
	(39, 1, 17, 'text', 1, '<p>124578235689</p>'),
	(40, 1, 18, 'video', 2, '//www.youtube.com/embed/bVssxumkHI4"'),
	(41, 1, 19, 'video', 2, '//www.youtube.com/embed/5PSNL1qE6VY"'),
	(42, 1, 20, 'video', 2, '//www.youtube.com/embed/5PSNL1qE6VY"'),
	(43, 1, 21, 'video', 2, '//www.youtube.com/embed/d1_JBMrrYw8"'),
	(45, 1, 22, 'text', 1, '<p>y6</p>'),
	(46, 1, 23, 'text', 1, '<iframe style="width: 500px; height: 281px;" src="//www.youtube.com/embed/9eiRmWLcASw" frameborder="0" allowfullscreen=""></iframe>'),
	(47, 1, 24, 'video', 2, '//www.youtube.com/embed/9eiRmWLcASw"'),
	(56, 2, 2, 'text', 1, '/images/lecture/2139e6cb5c89529517e7c5ae47c49763.jpg'),
	(57, 2, 3, 'image', 9, '/images/lecture/29ce2affb5bdaa6c330f9ed52d0cf64a.jpg"></p');
/*!40000 ALTER TABLE `lecture_element` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.letters
DROP TABLE IF EXISTS `letters`;
CREATE TABLE IF NOT EXISTS `letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `addressee_id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `text_letter` text NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.letters: ~1 rows (approximately)
/*!40000 ALTER TABLE `letters` DISABLE KEYS */;
INSERT INTO `letters` (`id`, `sender_id`, `addressee_id`, `theme`, `text_letter`, `date`, `status`) VALUES
	(1, 22, 38, 'Заняття 4', 'Привіт1', '2015-06-21 21:36:58', 1);
/*!40000 ALTER TABLE `letters` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.mainpage
DROP TABLE IF EXISTS `mainpage`;
CREATE TABLE IF NOT EXISTS `mainpage` (
  `id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sliderHeader` varchar(50) NOT NULL,
  `sliderText` varchar(255) NOT NULL,
  `category` varchar(32) NOT NULL,
  `message` varchar(50) NOT NULL,
  `sliderTextureURL` varchar(255) NOT NULL,
  `sliderLineURL` varchar(255) NOT NULL,
  `sliderButtonText` varchar(20) NOT NULL,
  `header1` varchar(50) NOT NULL,
  `subLineImage` varchar(255) NOT NULL,
  `subheader1` varchar(100) NOT NULL,
  `arrayBlocks` varchar(10) NOT NULL,
  `header2` varchar(50) NOT NULL,
  `subheader2` varchar(100) NOT NULL,
  `arraySteps` varchar(10) NOT NULL,
  `stepSize` varchar(10) NOT NULL,
  `linkName` varchar(20) NOT NULL,
  `hexagon` varchar(255) NOT NULL,
  `formHeader1` varchar(50) NOT NULL,
  `formHeader2` varchar(50) NOT NULL,
  `regText` varchar(50) NOT NULL,
  `buttonStart` varchar(50) NOT NULL,
  `socialText` varchar(50) NOT NULL,
  `imageNetwork` varchar(255) NOT NULL,
  `formFon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.mainpage: ~1 rows (approximately)
/*!40000 ALTER TABLE `mainpage` DISABLE KEYS */;
INSERT INTO `mainpage` (`id`, `language`, `title`, `sliderHeader`, `sliderText`, `category`, `message`, `sliderTextureURL`, `sliderLineURL`, `sliderButtonText`, `header1`, `subLineImage`, `subheader1`, `arrayBlocks`, `header2`, `subheader2`, `arraySteps`, `stepSize`, `linkName`, `hexagon`, `formHeader1`, `formHeader2`, `regText`, `buttonStart`, `socialText`, `imageNetwork`, `formFon`) VALUES
	(0, 'ua', 'INTITA', 'ПРОГРАМУЙ  МАЙБУТНЄ', 'Не упусти свій шанс змінити світ - отримай якісну та сучасну освіту і стань класним спеціалістом!', 'mainpage', 'PROGRAM FUTURE', '/css/images/slider_img/texture.png', '/css/images/slider_img/line.png', 'ПОЧАТИ', 'Про нас', 'line1.png', 'дещо, що Вам потрібно знати про наші курси', '1', 'Як проводиться навчання?', 'далі пояснення як ви будете вчитися крок за кроком', '1', '958px', 'детальніше ...', 'hexagon.png', 'Готові розпочати?', 'Введіть дані в форму нижче', 'розширена реєстрація', 'ПОЧАТИ', 'Ви можете також зареєструватися через соцмережі:', 'networking.png', 'formFon.png');
/*!40000 ALTER TABLE `mainpage` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.messages
DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id_record` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`id_record`),
  KEY `FK_messages_sourcemessages` (`id`),
  CONSTRAINT `FK_messages_sourcemessages` FOREIGN KEY (`id`) REFERENCES `sourcemessages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.messages: ~1 441 rows (approximately)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id_record`, `id`, `language`, `translation`) VALUES
	(1, 1, 'ua', 'INTITA'),
	(2, 2, 'ua', 'Про нас'),
	(3, 3, 'ua', 'Як розпочати навчання?'),
	(4, 4, 'ua', 'детальніше ...'),
	(5, 5, 'ua', 'ПРОГРАМУЙ МАЙБУТНЄ!'),
	(6, 6, 'ua', 'Важлива інформація про навчання разом з нами'),
	(7, 7, 'ua', 'П’ять кроків до здійснення твоїх мрій'),
	(8, 8, 'ua', 'ПОЧАТИ  />'),
	(9, 9, 'ua', 'Реєстрація в один клік'),
	(10, 10, 'ua', 'Введіть дані в форму нижче'),
	(11, 11, 'ua', 'розширена реєстрація'),
	(12, 12, 'ua', 'Зареєструватись через соцмережі'),
	(13, 13, 'ua', 'ПОЧАТИ />'),
	(14, 14, 'ua', 'Електронна пошта'),
	(15, 15, 'ua', 'Пароль'),
	(16, 16, 'ua', 'Курси'),
	(17, 17, 'ua', 'Форум'),
	(18, 18, 'ua', 'Про нас'),
	(19, 19, 'ua', 'Вхід'),
	(20, 20, 'ua', 'Вихід'),
	(21, 21, 'ua', 'Викладачі'),
	(22, 22, 'ua', 'Вихід'),
	(23, 23, 'ua', 'телефон:  +38 0432 52 82 67'),
	(24, 24, 'ua', 'тел. моб. +38 067 431 20 10'),
	(25, 25, 'ua', 'ел. пошта: intita.hr@gmail.com'),
	(26, 26, 'ua', 'скайп: int.ita'),
	(27, 27, 'ua', 'Ми гарантуємо тобі отримання пропозиції працевлаштування<br>\r\nпісля успішного завершення навчання!'),
	(28, 28, 'ua', 'Не упусти свій шанс змінити світ - отримай якісну та сучасну освіту<br>\r\nі стань класним спеціалістом!'),
	(29, 29, 'ua', 'Один рік наполегливого та цікавого навчання - і ти станеш професійним програмістом<br>\r\nготовим працювати в індустрії інформаційних технологій!\r\n'),
	(30, 30, 'ua', 'Хочеш стати висококласним спеціалістом?<br>\r\nПриймай вірне і виважене рішення - навчайся разом з нами! \r\n'),
	(31, 31, 'ua', 'Не втрачай свій шанс на творчу, цікаву, гідну та перспективну працю –<br>\r\n плануй своє професійне майбутнє вже сьогодні!'),
	(32, 32, 'ua', 'Про що мрієш ти?'),
	(33, 33, 'ua', 'Навчання майбутнього'),
	(34, 34, 'ua', 'Важливі питання'),
	(35, 35, 'ua', 'Можливо, це свобода жити своїм життям? \r\nСамостійно керувати власним часом\r\nз можливістю заробляти, займаючись \r\nулюбленою справою і отримувати \r\nзадоволення від сучасної професії?'),
	(36, 36, 'ua', 'На відміну від традиційних закладів, \r\nми не навчаємо задля оцінок.  \r\nМи працюємо індивідуально  \r\nз кожним студентом, щоб досягти \r\n100% засвоєння необхідних знань. '),
	(37, 37, 'ua', 'Ми пропонуємо кожному нашому \r\nвипускнику гарантоване отримання \r\nпропозиції працевлаштування \r\nпротягом 4-6-ти місяців після \r\nуспішного завершення навчання.'),
	(38, 38, 'ua', 'Реєстрація на сайті'),
	(39, 39, 'ua', 'Вибір курсу чи модуля'),
	(40, 40, 'ua', 'Проплата за навчання'),
	(41, 41, 'ua', 'Освоєння матеріалу'),
	(42, 42, 'ua', 'Завершення курсу'),
	(43, 43, 'ua', 'крок'),
	(44, 44, 'ua', 'Щоб отримати доступ до курсів та пройти безкоштовні модулі і заняття зареєструйся на сайті. Реєстрація дозволить тобі оцінити якість та зручність нашого продукт, який стане для тебе надійним партнером і порадником в професійній самореалізації.'),
	(45, 45, 'ua', 'Щоб стати спеціалістом певного напрямку та рівня (отримати професійну спеціалізацію) вибери для проходження відповідний курс. Якщо Тебе цікавить виключно поглиблення знань в певному напрямку інформаційних технологій, то вибери відповідний модуль для проходження.'),
	(46, 46, 'ua', 'Щоб розпочати проходження курсу чи модуля вибери схему оплати (вся сума за курс, оплата модулів, оплата потриместрово, помісячно тощо) та здійсни оплату зручним Тобі способом (схему оплати курсу чи модуля можна змінювати, також можлива помісячна оплата в кредит).'),
	(47, 47, 'ua', 'Вивчення матеріалу можливе шляхом читання тексту чи/і перегляду відео для кожного заняття. Під час проходження заняття виконуй Проміжні тестові завдання. По завершенню кожного заняття виконуй Підсумкове тестове завдання. Кожен модуль завершується Індивідуальним проектом чи Екзаменом. 	Можна отримати індивідуальну консультацію викладача чи консультацію онлайн.'),
	(48, 48, 'ua', 'Підсумком курсу є Командний дипломний проект, який виконується разом з іншими студентами (склад команди формуєш самостійно чи рекомендує керівник, який затверджує тему і технічне завдання проекту). Здача проекту передбачає передзахист та захист в он-лайн режимі із представленням технічної документації. Після захисту видається диплом та рекомендація для працевлаштування.'),
	(49, 49, 'ua', 'Головна'),
	(50, 50, 'ua', 'Курси'),
	(51, 51, 'ua', 'Про нас'),
	(52, 52, 'ua', 'Викладачі'),
	(53, 53, 'ua', 'Форум'),
	(54, 54, 'ua', 'Профіль'),
	(55, 55, 'ua', 'Редагувати профіль'),
	(56, 56, 'ua', 'Реєстрація'),
	(57, 57, 'ua', 'Профіль викладача'),
	(58, 58, 'ua', 'Наші викладачі'),
	(59, 59, 'ua', 'персональна сторінка'),
	(60, 60, 'ua', 'Якщо ви професійний ІТ-шник і бажаєте викладати окремі ІТ теми чи модулі і співпрацювати з нами в напрямку підготовки програмістів, напишіть нам листа.'),
	(61, 61, 'ua', 'Веде модулі:'),
	(62, 62, 'ua', 'Читати повністю'),
	(63, 63, 'ua', 'Відгуки'),
	(64, 64, 'ua', 'Розділ:'),
	(65, 65, 'ua', 'Про викладача:'),
	(66, 66, 'ua', 'Наші курси'),
	(67, 67, 'ua', 'Концепція підготовки'),
	(68, 68, 'ua', 'Рівень курсу:'),
	(69, 69, 'ua', 'Мова курсу:'),
	(70, 70, 'ua', 'Курс:'),
	(71, 71, 'ua', 'мова:'),
	(72, 72, 'ua', 'Модуль:'),
	(73, 73, 'ua', 'Заняття'),
	(74, 74, 'ua', 'Тип:'),
	(75, 75, 'ua', 'Тривалість:'),
	(76, 76, 'ua', 'хв'),
	(77, 77, 'ua', 'Викладач'),
	(78, 78, 'ua', 'детальніше'),
	(79, 79, 'ua', 'Запланувати консультацію'),
	(80, 80, 'ua', 'Зміст'),
	(81, 81, 'ua', 'показати'),
	(82, 82, 'ua', 'приховати'),
	(83, 83, 'ua', 'Відео'),
	(84, 84, 'ua', 'Зразок коду'),
	(85, 85, 'ua', 'Інструкція'),
	(86, 86, 'ua', 'Завдання'),
	(87, 87, 'ua', 'переглянути знову попереднє заняття'),
	(88, 88, 'ua', 'НАСТУПНЕ ЗАНЯТТЯ />'),
	(89, 89, 'ua', 'Відповісти'),
	(90, 90, 'ua', 'Підсумкове завдання'),
	(91, 91, 'ua', 'Ви можете також увійти через соцмережі:'),
	(92, 92, 'ua', 'Забули пароль?'),
	(93, 93, 'ua', 'ВВІЙТИ />'),
	(94, 94, 'ua', 'Стан курсу: '),
	(95, 95, 'ua', 'Профіль студента'),
	(96, 96, 'ua', 'Редагувати </br> профіль'),
	(97, 97, 'ua', ' років'),
	(98, 98, 'ua', ' рік'),
	(99, 99, 'ua', ' роки'),
	(100, 100, 'ua', 'Про себе:'),
	(101, 101, 'ua', 'Електронна пошта:'),
	(102, 102, 'ua', 'Телефон:'),
	(103, 103, 'ua', 'Освіта:'),
	(104, 104, 'ua', 'Інтереси:'),
	(105, 105, 'ua', 'Звідки дізнався про Вас:'),
	(106, 106, 'ua', 'Форма навчання:'),
	(107, 107, 'ua', 'Завершені курси:'),
	(108, 108, 'ua', 'Мої курси'),
	(109, 109, 'ua', 'Розклад'),
	(110, 110, 'ua', 'Консультації'),
	(111, 111, 'ua', 'Екзамени'),
	(112, 112, 'ua', 'Проекти'),
	(113, 113, 'ua', 'Мій рейтинг'),
	(114, 114, 'ua', 'Завантаження'),
	(115, 115, 'ua', 'Листування'),
	(116, 116, 'ua', 'Мої оцінювання'),
	(117, 117, 'ua', 'Фінанси'),
	(118, 118, 'ua', 'Поточний курс:'),
	(119, 119, 'ua', 'Незавершений курс:'),
	(120, 120, 'ua', 'Завершений курс:'),
	(121, 121, 'ua', 'Необхідно здійснити наступну проплату до'),
	(122, 122, 'ua', 'Сума проплати:'),
	(123, 123, 'ua', ' грн'),
	(124, 124, 'ua', 'Індивідуальний модульний проект'),
	(125, 125, 'ua', 'Командний дипломний проект'),
	(126, 126, 'ua', 'Тип'),
	(127, 127, 'ua', 'Дата'),
	(128, 128, 'ua', 'Час'),
	(129, 129, 'ua', 'Викладач'),
	(130, 130, 'ua', 'Тема'),
	(131, 131, 'ua', 'Е'),
	(132, 132, 'ua', 'К'),
	(133, 133, 'ua', 'ІМП'),
	(134, 134, 'ua', 'КДП'),
	(135, 135, 'ua', ' сильний початківець'),
	(136, 136, 'ua', ' українська'),
	(137, 137, 'ua', 'Випускники'),
	(138, 138, 'ua', 'Вибачте, Ви не можете переглядати цю лекцію. Щоб отримати доступ до цієї лекції, зареєструйтесь або увійдіть у свій аккаунт.'),
	(139, 139, 'ua', 'Вибачте, Ви не можете переглядати цю лекцію. Щоб отримати доступ до цієї лекції, увійдіть у свій аккаунт та оплатіть доступ до лекції.'),
	(140, 140, 'ua', 'Для початківців'),
	(141, 141, 'ua', 'Для спеціалістів'),
	(142, 142, 'ua', 'Для експертів'),
	(143, 143, 'ua', 'Усі курси'),
	(144, 144, 'ua', 'знижка'),
	(145, 145, 'ua', 'Оцінка курсу:'),
	(146, 146, 'ua', 'детальніше ...'),
	(147, 147, 'ua', 'Вартість курсу: '),
	(148, 148, 'ua', 'Спочатку навчання створюється стійкий фундамент для підготовки програмістів: необхідні знання елементарної математики, будови комп’ютера і основ програмування.'),
	(149, 149, 'ua', '<p>Потім вивчаються основні принципи програмування на базі класичних комп&rsquo;ютерних наук і методологій: алгоритмічна мова;елементи вищої та дискретної математики і комбінаторики; структури даних, розробка і аналіз алгоритмів.                                 \r\n<p>Після чого формується база для переходу до сучасних технологій програмування: об’єктно-орієнтоване програмування; проектування баз даних.\r\n<p>Завершення процесу підготовки шляхом конкретного застосування отриманих знань на реальних проектах із засвоєнням сучасних методів і технологій, які використовуються в ІТ індустрії компаніями.'),
	(150, 1, 'en', 'INTITA'),
	(151, 2, 'en', 'About Us'),
	(152, 3, 'en', 'How to start studying?'),
	(153, 4, 'en', 'more ...'),
	(154, 5, 'en', 'PROGRAM THE FUTURE'),
	(155, 6, 'en', 'Important information about studying with us'),
	(156, 7, 'en', 'Five steps to implement your dreams'),
	(157, 8, 'en', 'START />'),
	(158, 9, 'en', 'Ready to get started?'),
	(159, 10, 'en', 'Enter data into the form below'),
	(160, 11, 'en', 'extended registration'),
	(161, 12, 'en', 'You can also register by social networks:'),
	(162, 13, 'en', 'START'),
	(163, 14, 'en', 'Email'),
	(164, 15, 'en', 'password'),
	(165, 16, 'en', 'Courses'),
	(166, 17, 'en', 'Forum'),
	(167, 18, 'en', 'About Us'),
	(168, 19, 'en', 'Enter'),
	(169, 20, 'en', 'Exit'),
	(170, 21, 'en', 'Teachers'),
	(171, 22, 'en', 'Exit'),
	(172, 23, 'en', 'phone: +38 0432 52 82 67'),
	(173, 24, 'en', 'mobile: +38 067 431 20 10'),
	(174, 25, 'en', 'e-mail: intita.hr@gmail.com'),
	(175, 26, 'en', 'skype: int.ita'),
	(176, 27, 'en', 'We guarantee you an offer of employment<br>\r\nafter successful completion of training!'),
	(177, 28, 'en', 'Do not miss your chance to change the world - get high-quality and modern education<br>\r\nand become a specialist class!'),
	(178, 29, 'en', 'One year of productive and interesting learning - and you will become a professional programmer<br>\r\nready work in the IT industry!'),
	(179, 30, 'en', 'Do you want to become a high-class specialist?<br>\r\ntakes correct and informed decision - Learn with us!'),
	(180, 31, 'en', 'Do not lose your chance for creative, interesting, and challenging decent work -<br>\r\nplan their professional future today!'),
	(181, 32, 'en', 'What are you dreaming?'),
	(182, 33, 'en', 'Future Studies'),
	(183, 34, 'en', 'Important questions'),
	(184, 35, 'en', 'Maybe this freedom to live their lives? Independently manage own time with opportunity to earn by doing things you love and get business and get meet the modern profession?'),
	(185, 36, 'en', 'Unlike traditional schools, We do not teach for the sake of ratings. We work individually with each student to achieve 100% mastering the necessary knowledge.'),
	(186, 37, 'en', 'We offer each of our graduate guaranteed receipt employment offers for 4-6 months after the successful completion of training.'),
	(187, 38, 'en', 'Register Online'),
	(188, 39, 'en', 'Choice of course or module'),
	(189, 40, 'en', 'Payment for training'),
	(190, 41, 'en', 'Mastering the material'),
	(191, 42, 'en', 'Completion rate'),
	(192, 43, 'en', 'step'),
	(193, 44, 'en', 'To access the courses and pass free modules and classes register on the site. Registration will allow you to assess the quality and usability of our product that you will become a reliable partner and advisor in professional self-realization.'),
	(194, 45, 'en', 'To become specialists in a certain direction and level (get professional specialization) choose to undergo appropriate course. If you are interested only deepen the knowledge in a particular area of ​​information technology, then choose the module to pass.\')'),
	(195, 46, 'en', 'To start a course or module choose payment scheme (the entire amount for the course, payment modules, payment potrymestrovo, month, etc.) and make a payment convenient way to You (payment scheme or course module can be changed monthly as possible payment credit). '),
	(196, 47, 'en', 'The study material is possible by reading the text and / or viewing a video for each session. During the passage Intermediate classes perform tests. At the end of each session do the final test tasks. Each module ends with an individual project or exam. You can receive individual counseling teacher or advice online. '),
	(197, 48, 'en', 'The result of course is the command thesis project, performed together with other students (the team recommends that forms an independent or executive who approved topic and terms of reference of the project). Delivery Project peredzahyst and provides protection in the online mode with presentation design. After defending his diploma and recommendation for employment.'),
	(198, 49, 'en', 'Home'),
	(199, 50, 'en', 'Courses'),
	(200, 51, 'en', 'About us'),
	(201, 52, 'en', 'Teachers'),
	(202, 53, 'en', 'Forum'),
	(203, 54, 'en', 'Profile'),
	(204, 55, 'en', 'Edit profile'),
	(205, 56, 'en', 'Registration'),
	(206, 57, 'en', 'Teacher profile'),
	(207, 58, 'en', 'Our teachers'),
	(208, 59, 'en', 'personal <br>page'),
	(209, 60, 'en', 'If you\'re a professional IT specialist and want to teach some courses or modules IT and cooperate with us in the field of training programmers write us a letter.'),
	(210, 61, 'en', 'Conducts modules'),
	(211, 62, 'en', 'Read more'),
	(212, 63, 'en', 'Reviews'),
	(213, 64, 'en', 'Section:'),
	(214, 65, 'en', 'About the teacher:'),
	(215, 66, 'en', 'Our courses'),
	(216, 67, 'en', 'Training concept'),
	(217, 68, 'en', 'Level: '),
	(218, 69, 'en', 'Language: '),
	(219, 70, 'en', 'Course:'),
	(220, 71, 'en', 'lang:'),
	(221, 72, 'en', 'Module:'),
	(222, 73, 'en', 'Lecture '),
	(223, 74, 'en', 'Type:'),
	(224, 75, 'en', 'Duration:'),
	(225, 76, 'en', 'min'),
	(226, 77, 'en', 'Teacher'),
	(227, 78, 'en', 'more'),
	(228, 79, 'en', 'Plan consultation'),
	(229, 80, 'en', 'Content'),
	(230, 81, 'en', 'show'),
	(231, 82, 'en', 'hide'),
	(232, 83, 'en', 'Videos'),
	(233, 84, 'en', 'Sample code'),
	(234, 85, 'en', 'Instruction'),
	(235, 86, 'en', 'Task'),
	(236, 87, 'en', 'review the previous lesson'),
	(237, 88, 'en', 'NEXT LECTURE />'),
	(238, 89, 'en', 'Reply'),
	(239, 90, 'en', 'Final task'),
	(240, 91, 'en', 'You can also enter by social networks:'),
	(241, 92, 'en', 'Forget password?'),
	(242, 93, 'en', 'SIGN IN />'),
	(243, 94, 'en', 'Status:'),
	(244, 95, 'en', 'Student Profile'),
	(245, 96, 'en', 'Edit </br> profile'),
	(246, 97, 'en', ' years'),
	(247, 98, 'en', ' year'),
	(248, 99, 'en', ' years'),
	(249, 100, 'en', 'About myself:'),
	(250, 101, 'en', 'Email:'),
	(251, 102, 'en', 'Phone:'),
	(252, 103, 'en', 'Education:'),
	(253, 104, 'en', 'Interests:'),
	(254, 105, 'en', 'Where learned you:'),
	(255, 106, 'en', 'Learning:'),
	(256, 107, 'en', 'Completion of the course:'),
	(257, 108, 'en', 'My courses'),
	(258, 109, 'en', 'Timetable'),
	(259, 110, 'en', 'Consultation'),
	(260, 111, 'en', 'Exams'),
	(261, 112, 'en', 'Projects'),
	(262, 113, 'en', 'My rating'),
	(263, 114, 'en', 'Downloads'),
	(264, 115, 'en', 'Correspondence'),
	(265, 116, 'en', 'My assessment'),
	(266, 117, 'en', 'Finances'),
	(267, 118, 'en', 'Current course:'),
	(268, 119, 'en', 'Unfinished course:'),
	(269, 120, 'en', 'Completed course:'),
	(270, 121, 'en', 'Please make the following payments to'),
	(271, 122, 'en', 'Amount of payment:'),
	(272, 123, 'en', ' UAH'),
	(273, 124, 'en', 'Individual modular project'),
	(274, 125, 'en', 'Team thesis project'),
	(275, 126, 'en', 'Type'),
	(276, 127, 'en', 'Date'),
	(277, 128, 'en', 'Time'),
	(278, 129, 'en', 'Teacher'),
	(279, 130, 'en', 'Theme'),
	(280, 131, 'en', 'E'),
	(281, 132, 'en', 'C'),
	(282, 133, 'en', 'IMP'),
	(283, 134, 'en', 'TTP'),
	(284, 135, 'en', ' strong junior'),
	(285, 136, 'en', ' ukrainian'),
	(286, 137, 'en', 'Graduates'),
	(287, 138, 'en', 'Sorry, you couldn\\\'t view this lecture.Please login for getting access to this material.'),
	(288, 139, 'en', 'Sorry, you couldn\\\'t view this lecture.\r\nYou don\\\'t have access to this lecture.\r\nPlease go to your profile and pay access.'),
	(289, 140, 'en', 'For beginners'),
	(290, 141, 'en', 'For specialists'),
	(291, 142, 'en', 'For experts'),
	(292, 143, 'en', 'All courses'),
	(293, 144, 'en', 'discount'),
	(294, 145, 'en', 'Сourse rate:'),
	(295, 146, 'en', 'details ...'),
	(296, 147, 'en', 'Course price:'),
	(297, 148, 'en', 'Firstly training creates a stable foundation for training programmers: requires knowledge of elementary mathematics, the structure of computer and computer science.'),
	(298, 149, 'en', '<P>Then we study the basic principles of programming based on classic PC & raquo; Books sciences and methodologies algorithmic language, elements of higher and discrete mathematics and combinatorics; data structures, design and analysis of algorithms.\r\n<P> After that formed the basis for the transition to modern programming technologies: object-oriented programming; database design.\r\n<P> Completion of training by the specific application of knowledge to real projects with the assimilation of modern techniques and technologies used in the IT industry companies.'),
	(299, 1, 'ru', 'INTITA'),
	(300, 2, 'ru', 'О нас'),
	(301, 3, 'ru', 'Как проходит обучение?'),
	(302, 4, 'ru', 'далее ...'),
	(303, 5, 'ru', 'ПРОГРАММИРУЙ БУДУЩЕЕ'),
	(304, 6, 'ru', 'Важная информация про обучение вместе с нами'),
	(305, 7, 'ru', 'Пять шагов к исполнения твоих желаний'),
	(306, 8, 'ru', 'СТАРТ  />'),
	(307, 9, 'ru', 'Готовы начать?'),
	(308, 10, 'ru', 'Введите данные в форму ниже'),
	(309, 11, 'ru', 'расширенная регистрация'),
	(310, 12, 'ru', 'Вы также можете зарегистрироваться с помощью соцсетей:'),
	(311, 13, 'ru', 'НАЧАТЬ'),
	(312, 14, 'ru', 'Электронная почта'),
	(313, 15, 'ru', 'Пароль'),
	(314, 16, 'ru', 'Курсы'),
	(315, 17, 'ru', 'Форум'),
	(316, 18, 'ru', 'О нас'),
	(317, 19, 'ru', 'Вход'),
	(318, 20, 'ru', 'Выход'),
	(319, 21, 'ru', 'Преподаватели'),
	(320, 22, 'ru', 'Выход'),
	(321, 23, 'ru', 'телефон: +38 0432 52 82 67 '),
	(322, 24, 'ru', 'тел. моб. +38 067 431 20 10'),
	(323, 25, 'ru', 'эл. почта: intita.hr@gmail.com'),
	(324, 26, 'ru', 'скайп: int.ita'),
	(325, 27, 'ru', 'Мы гарантируем получение предложения работы<br>\r\nпосле успешного завершения обучения!'),
	(326, 28, 'ru', 'Хочешь стать классным специалистом?<br>\r\nпринимай правильное решение - поступай в IТ Академию  ИНТИТА!'),
	(327, 29, 'ru', 'Один год упорного и интересного обучения - и ты станешь проессиональным программистом.<br>\r\nУчиться тяжело -зато легко найти работу!'),
	(328, 30, 'ru', 'Не упускай свой шанс на достойную и интересную работу - <br>\r\nпрограммируй свое будущее уже сегодня!'),
	(329, 31, 'ru', 'Текст на пятой картинке слайдера'),
	(330, 32, 'ru', 'О чем ты мечтаешь?'),
	(331, 33, 'ru', 'Обучение будущего'),
	(332, 34, 'ru', 'Вопросы'),
	(333, 35, 'ru', 'Может, это возможность жить своей жизнью? Самостоятельно распоряжаться своим временем с возможностью зарабатывать, занимаясь любимым делом и получать удовольстие от современной профессии?'),
	(334, 36, 'ru', 'В отличие от традиционных заведений, мы не учим ради оценок. Мы индивидуально работаем с каждым студентом, чтобы достичь 100% усвоения необходимых знаний.'),
	(335, 37, 'ru', 'Мы предлагаем каждому выпускнику гарантированное получение предложения работы в течении 4-6-ти месяцев после успешного завершения обучения.'),
	(336, 38, 'ru', 'Регистрация на сайте'),
	(337, 39, 'ru', 'Выбор курса или модуля'),
	(338, 40, 'ru', 'Оплата'),
	(339, 41, 'ru', 'Изучение материала'),
	(340, 42, 'ru', 'Завершение курса'),
	(341, 43, 'ru', 'шаг'),
	(342, 44, 'ru', 'Чтобы получить доступ к курсам и пройти бесплатные модули и занятия зарегистрируйся на сайте. Регистрация позволит тебе оценить качество и удобство нашего продукт , который станет для тебя надежным партнером и советчиком в профессиональной самореализации.'),
	(343, 45, 'ru', 'Чтобы стать специалистом определенного направления и уровня ( получить профессиональную специализацию ) выбери для прохождения соответствующий курс . Если Тебя интересует исключительно углубления знаний в определенном направлении информационных технологий , то выбери соответствующий модуль для прохождения .'),
	(344, 46, 'ru', 'Чтобы начать прохождении курса модуля выбери схему оплаты ( вся сумма за курс , оплата модулей , оплата потриместрово , помесячно и т.д.) и исполни оплату удобным Тебе способом ( схему оплаты курса или модуля можно изменять , также возможна помесячная оплата в кредит ) .'),
	(345, 47, 'ru', 'Изучать материал возможно путем чтения текста и/или просмотра видео для каждого занятия. Во время прохождения занятия решай Промежуточные тестовые задания. По завершению каждого занятия решай Финальное тестовое задание. Каждый модуль завершается И ндивидуальным проектом или Экзаменом. Можно получить индивидуальную консультацию преподавателя или консультацию онлайн.'),
	(346, 48, 'ru', 'Завершением курса есть Командный дипломный проект, который исполняется вместе с другими студентами (склад команды формируешь самостоятельно или рекондует тренер, который утверждает тему и техническое задание проекта). Сдача проекта предусматривает предзащиту и защиту в онлайн-режиме с представлением техдокументации. После защиты выдается диплом и рекомендация для трудоустройства. '),
	(347, 49, 'ru', 'Главная'),
	(348, 50, 'ru', 'Курсы'),
	(349, 51, 'ru', 'О нас'),
	(350, 52, 'ru', 'Преподаватели'),
	(351, 53, 'ru', 'Форум'),
	(352, 54, 'ru', 'Профиль'),
	(353, 55, 'ru', 'Редактировать профиль'),
	(354, 56, 'ru', 'Регистрация'),
	(355, 57, 'ru', 'Профиль преподавателя'),
	(356, 58, 'ru', 'Наши преподаватели'),
	(357, 59, 'ru', 'персональная страница'),
	(358, 60, 'ru', 'Если Вы профессиональный ІТ-шник и хотите преподавать некоторые ІТ курсы и сотрудничать с нами в подготовке программистов, напишите нам письмо.'),
	(359, 61, 'ru', 'Ведет модули:'),
	(360, 62, 'ru', 'Читать полностью'),
	(361, 63, 'ru', 'Отзывы'),
	(362, 64, 'ru', 'Раздел:'),
	(363, 65, 'ru', 'О преподавателе:'),
	(364, 66, 'ru', 'Наши курсы'),
	(365, 67, 'ru', 'Концепция подготовки'),
	(366, 68, 'ru', 'Уровень курса:'),
	(367, 69, 'ru', 'Язык курса:'),
	(368, 70, 'ru', 'Курс:'),
	(369, 71, 'ru', 'язык:'),
	(370, 72, 'ru', 'Модуль:'),
	(371, 73, 'ru', 'Занятие '),
	(372, 74, 'ru', 'Тип:'),
	(373, 75, 'ru', 'Время:'),
	(374, 76, 'ru', 'мин'),
	(375, 77, 'ru', 'Преподаватель'),
	(376, 78, 'ru', 'детальнее'),
	(377, 79, 'ru', 'Запланировать консультацию'),
	(378, 80, 'ru', 'Содержание'),
	(379, 81, 'ru', 'показать'),
	(380, 82, 'ru', 'скрыть'),
	(381, 83, 'ru', 'Видео'),
	(382, 84, 'ru', 'Пример кода'),
	(383, 85, 'ru', 'Инструкция'),
	(384, 86, 'ru', 'Задание'),
	(385, 87, 'ru', 'просмотреть снова предыдущее занятие'),
	(386, 88, 'ru', 'СЛЕДУЮЩЕЕ ЗАНЯТИЕ />'),
	(387, 89, 'ru', 'Ответить'),
	(388, 90, 'ru', 'Итоговое задание'),
	(389, 91, 'ru', 'Вы также можете ввойти с помощью соцсетей:'),
	(390, 92, 'ru', 'Забыли пароль?'),
	(391, 93, 'ru', 'ВОЙТИ />'),
	(392, 94, 'ru', 'Статус курса: '),
	(393, 95, 'ru', 'Профиль студента'),
	(394, 96, 'ru', 'Редактировать </br> профиль'),
	(395, 97, 'ru', ' лет'),
	(396, 98, 'ru', ' год'),
	(397, 99, 'ru', ' года'),
	(398, 100, 'ru', 'Про себя:'),
	(399, 101, 'ru', 'Электронная почта:'),
	(400, 102, 'ru', 'Телефон:'),
	(401, 103, 'ru', 'Образование:'),
	(402, 104, 'ru', 'Интересы:'),
	(403, 105, 'ru', 'Откуда узнал о Вас:'),
	(404, 106, 'ru', 'Форма обучения:'),
	(405, 107, 'ru', 'Завершенные курсы:'),
	(406, 108, 'ru', 'Мои курсы'),
	(407, 109, 'ru', 'Расписание'),
	(408, 110, 'ru', 'Консультации'),
	(409, 111, 'ru', 'Экзамены'),
	(410, 112, 'ru', 'Проекты'),
	(411, 113, 'ru', 'Мой рейтинг'),
	(412, 114, 'ru', 'Загрузки'),
	(413, 115, 'ru', 'Переписка'),
	(414, 116, 'ru', 'Мои оценки'),
	(415, 117, 'ru', 'Финансы'),
	(416, 118, 'ru', 'Текущий курс:'),
	(417, 119, 'ru', 'Незавершенный курс:'),
	(418, 120, 'ru', 'Завершен курс:'),
	(419, 121, 'ru', 'Необходимо осуществить следующую проплату до'),
	(420, 122, 'ru', 'Сумма оплаты:'),
	(421, 123, 'ru', ' грн'),
	(422, 124, 'ru', 'Индивидуальный модульный проект'),
	(423, 125, 'ru', 'Командный дипломный проект'),
	(424, 126, 'ru', 'Тип'),
	(425, 127, 'ru', 'Дата'),
	(426, 128, 'ru', 'Время'),
	(427, 129, 'ru', 'Преподаватель'),
	(428, 130, 'ru', 'Тема'),
	(429, 131, 'ru', 'Э'),
	(430, 132, 'ru', 'К'),
	(431, 133, 'ru', 'ИМП'),
	(432, 134, 'ru', 'КДП'),
	(433, 135, 'ru', ' начинающий сильный'),
	(434, 136, 'ru', ' украинский'),
	(435, 137, 'ru', 'Выпускники'),
	(436, 138, 'ru', 'Извините, Вы не можете просматривать эту лекцию. Пожалуйста, зарестрируйтесь для доступа к этой лекции.'),
	(437, 139, 'ru', 'Извините, Вы не можете просматривать эту лекцию. Вы не имеете доступа к этой лекции. Пожалуйста, зайдите в свой аккаунт и оплатите доступ.'),
	(438, 140, 'ru', 'Для начинающих'),
	(439, 141, 'ru', 'Для специалистов'),
	(440, 142, 'ru', 'Для экспертов'),
	(441, 143, 'ru', 'Все курсы'),
	(442, 144, 'ru', 'скидка'),
	(443, 145, 'ru', 'Оценка курса:'),
	(444, 146, 'ru', 'детальнее ...'),
	(445, 147, 'ru', 'Стоимость курса:'),
	(446, 148, 'ru', 'В начале обучения формируется стойкий фундамент для подготовки программистов: необходимые знания элементарной математики, устройства компьютера и основ информатики.'),
	(447, 149, 'ru', '<p>Потом изучаются основные принципы программирования на базе классических компьютерних наук и методологий: алгоритмический язык; элементы высшей и дискретной математики, комбинаторики; структуры данных, разработка и анализ алгоритмов.\r\n<P> После чего формируется база для перехода к современным технологиям программирования: объектно-ориентированное программирование; проектирования баз данных.\r\n<P> Завершением процесса подготовки есть конкретное применение полученных знаний на реальных проектах с усвоением современных методов и технологий, используемых в ИТ индустрии компаниями.'),
	(448, 150, 'ua', 'Персональні дані'),
	(449, 150, 'ru', 'Персональные данные'),
	(450, 150, 'en', 'Personal info'),
	(451, 151, 'ua', 'Студент'),
	(452, 151, 'ru', 'Студент'),
	(453, 151, 'en', 'Student'),
	(454, 152, 'ua', 'введіть в форматі дд/мм/рррр'),
	(455, 152, 'ru', 'введите в формате дд/мм/гггг'),
	(456, 152, 'en', 'enter as dd/mm/yyyy'),
	(457, 153, 'ua', 'введіть Ваші інтереси (через кому)'),
	(458, 153, 'ru', 'введите Ваши интересы (через запятую)'),
	(459, 153, 'en', 'enter Your interests '),
	(460, 154, 'ua', 'звідки Ви про нас дізналися?'),
	(461, 154, 'en', 'where you hear about us?'),
	(462, 154, 'ru', 'откуда Вы о нас узнали?'),
	(463, 155, 'ua', 'ВІДПРАВИТИ />'),
	(464, 155, 'ru', 'ОТПРАВИТЬ />'),
	(465, 155, 'en', 'SEND />'),
	(466, 156, 'ua', 'Завантажити фото профілю'),
	(467, 156, 'ru', 'Загрузить фото профиля'),
	(468, 156, 'en', 'Download your profile avatar'),
	(469, 157, 'ua', 'ВИБЕРІТЬ ФАЙЛ'),
	(470, 157, 'ru', 'ВЫБЕРИТЕ ФАЙЛ'),
	(471, 157, 'en', 'CHOOSE FILE'),
	(472, 158, 'ua', 'Розмір фото до 5 Mб'),
	(473, 158, 'ru', 'Размер фото до 5 Mб'),
	(474, 158, 'en', 'Photo size to 5 Mб'),
	(475, 159, 'ua', 'Файл не вибрано...'),
	(476, 159, 'ru', 'Файл не выбран...'),
	(477, 159, 'en', 'The file is not selected'),
	(478, 160, 'ua', 'І\'мя'),
	(479, 160, 'ru', 'Имя'),
	(480, 160, 'en', 'Name'),
	(481, 161, 'ua', 'Роль'),
	(482, 161, 'ru', 'Роль'),
	(483, 161, 'en', 'Role'),
	(484, 162, 'ua', 'Прізвище'),
	(485, 162, 'ru', 'Фамилия'),
	(486, 162, 'en', 'Last name'),
	(487, 163, 'ua', 'Нік'),
	(488, 163, 'ru', 'Ник'),
	(489, 163, 'en', 'Nickname'),
	(490, 164, 'ua', 'Дата народження'),
	(491, 164, 'ru', 'Дата рождения'),
	(492, 164, 'en', 'Date of birth'),
	(493, 165, 'ua', 'Телефон'),
	(494, 165, 'ru', 'Телефон'),
	(495, 165, 'en', 'Phone'),
	(496, 166, 'ua', 'Адреса'),
	(497, 166, 'ru', 'Адрес'),
	(498, 166, 'en', 'Address'),
	(499, 167, 'ua', 'Освіта'),
	(500, 167, 'ru', 'Образование'),
	(501, 167, 'en', 'Education'),
	(502, 168, 'ua', 'Форма навчання'),
	(503, 168, 'ru', 'Форма обучения'),
	(504, 168, 'en', 'Education form'),
	(505, 169, 'ua', 'Захоплення'),
	(506, 169, 'ru', 'Увлечения'),
	(507, 169, 'en', 'Interests'),
	(508, 170, 'ua', 'Про себе'),
	(509, 170, 'ru', 'О себе'),
	(510, 170, 'en', 'About myself'),
	(511, 171, 'ua', 'Пароль'),
	(512, 171, 'ru', 'Пароль'),
	(513, 171, 'en', 'Password'),
	(514, 172, 'ua', 'Повтор пароля'),
	(515, 172, 'ru', 'Повтор пароля'),
	(516, 172, 'en', 'Repeat password'),
	(517, 173, 'ua', 'ЗБЕРЕГТИ'),
	(518, 173, 'ru', 'СОХРАНИТЬ'),
	(519, 173, 'en', 'SAVE'),
	(520, 174, 'ua', 'І\'мя'),
	(521, 174, 'ru', 'Имя'),
	(522, 174, 'en', 'Name'),
	(523, 175, 'ua', 'Прізвище'),
	(524, 175, 'ru', 'Фамилия'),
	(525, 175, 'en', 'Last name'),
	(526, 176, 'ua', 'Вік'),
	(527, 176, 'ru', 'Возраст'),
	(528, 176, 'en', 'Age'),
	(529, 177, 'ua', 'Освіта'),
	(530, 177, 'ru', 'Образование'),
	(531, 177, 'en', 'Education'),
	(532, 178, 'ua', 'Телефон'),
	(533, 178, 'ru', 'Телефон'),
	(534, 178, 'en', 'Phone'),
	(535, 179, 'ua', 'Які курси Ви готові викладати'),
	(536, 179, 'ru', 'Какие курсы Вы готовы преподавать'),
	(537, 179, 'en', 'What courses you ready to teach '),
	(538, 180, 'ua', 'Відправити'),
	(539, 180, 'ru', 'Отправить'),
	(540, 180, 'en', 'Send'),
	(541, 181, 'ua', 'Відгуки студентів про викладача:'),
	(542, 181, 'ru', 'Отзывы студентов о преподавателе:'),
	(543, 181, 'en', 'Guest students of the teacher:'),
	(544, 182, 'ua', 'Середня оцінка: '),
	(545, 182, 'ru', 'Средний балл:'),
	(546, 182, 'en', 'Average rate:'),
	(547, 183, 'ua', 'Знання: '),
	(548, 183, 'ru', 'Знания:'),
	(549, 183, 'en', 'Knowledge:'),
	(550, 184, 'ua', 'Ефективність: '),
	(551, 184, 'ru', 'Эффективность:'),
	(552, 184, 'en', 'Efficiency:'),
	(553, 185, 'ua', 'Відношення до студента: '),
	(554, 185, 'ru', 'Отношение к студенту:'),
	(555, 185, 'en', 'Relationship to student:'),
	(556, 186, 'ua', 'Оцінка: '),
	(557, 186, 'ru', 'Оценка:'),
	(558, 186, 'en', 'Rate:'),
	(559, 187, 'ua', 'Твій відгук'),
	(560, 187, 'ru', 'Твой отзыв'),
	(561, 187, 'en', 'Your review:'),
	(562, 188, 'ua', 'Ваша оцінка'),
	(563, 188, 'ru', 'Ваша оценка'),
	(564, 188, 'en', 'Your rate'),
	(565, 189, 'ua', 'Знання викладача:'),
	(566, 189, 'ru', 'Знания преподавателя:'),
	(567, 189, 'en', 'Teacher knowledge:'),
	(568, 190, 'ua', 'Ефективність: '),
	(569, 190, 'ru', 'Эффективность:'),
	(570, 190, 'en', 'Efficiency:'),
	(571, 191, 'ua', 'Ставлення до студента:'),
	(572, 191, 'ru', 'Отношение к студенту:'),
	(573, 191, 'en', 'Relationship to student:'),
	(574, 192, 'ua', 'Відправити'),
	(575, 192, 'ru', 'Отправить'),
	(576, 192, 'en', 'Send'),
	(577, 193, 'ua', 'Рівень: '),
	(578, 193, 'ru', 'Уровень:'),
	(579, 193, 'en', 'Course:'),
	(580, 194, 'ua', 'Тривалість: '),
	(581, 194, 'ru', 'Длительность:'),
	(582, 194, 'en', 'Course duration:'),
	(583, 195, 'ua', 'Відгуків немає.'),
	(584, 195, 'ru', 'Отзывов нет.'),
	(585, 195, 'en', 'There are not any reviews.'),
	(586, 196, 'ua', 'Схеми проплат'),
	(587, 196, 'ru', 'Схемы оплаты'),
	(588, 196, 'en', 'Ways of pay'),
	(589, 197, 'ua', 'за весь курс наперед:'),
	(590, 197, 'ru', 'за весь курс наперед:'),
	(591, 197, 'en', 'for the entire course:'),
	(592, 198, 'ua', 'проплати за курс:'),
	(593, 198, 'ru', 'оплаты за курс:'),
	(594, 198, 'en', 'pays for course:'),
	(595, 199, 'ua', 'проплати за курс:'),
	(596, 199, 'ru', 'оплаты за курс:'),
	(597, 199, 'en', 'pays for course:'),
	(598, 200, 'ua', 'помісячно:'),
	(599, 200, 'ru', 'ежемесячно:'),
	(600, 200, 'en', 'every month:'),
	(601, 201, 'ua', 'кредит на 2 роки:'),
	(602, 201, 'ru', 'кредит на 2 года:'),
	(603, 201, 'en', 'credit for 2 years:'),
	(604, 202, 'ua', 'кредит на 3 роки:'),
	(605, 202, 'ru', 'кредит на 3 года:'),
	(606, 202, 'en', 'credit for 3 years:'),
	(607, 203, 'ua', 'Оцінка: '),
	(608, 203, 'ru', 'Оценка:'),
	(609, 203, 'en', 'Rate:'),
	(610, 204, 'ua', 'Для кого:'),
	(611, 204, 'ru', 'Для кого:'),
	(612, 204, 'en', 'For whom:'),
	(613, 205, 'ua', 'Чому Ти навчишся?'),
	(614, 205, 'ru', 'Чему Ты научишься?'),
	(615, 205, 'en', 'Why do you learn ?'),
	(616, 206, 'ua', 'Що Ти отримаєш?'),
	(617, 206, 'ru', 'Что ты получишь?'),
	(618, 206, 'en', 'What you get?'),
	(619, 207, 'ua', 'Викладачі'),
	(620, 207, 'ru', 'Преподаватели'),
	(621, 207, 'en', 'Teachers'),
	(622, 208, 'ua', 'Модуль'),
	(623, 208, 'ru', 'Модуль'),
	(624, 208, 'en', 'Module'),
	(625, 209, 'ua', 'орієнтовно'),
	(626, 209, 'ru', 'около'),
	(627, 209, 'en', 'approximately'),
	(628, 210, 'ua', 'знижка'),
	(629, 210, 'ru', 'скидка'),
	(630, 210, 'en', 'discount'),
	(631, 211, 'ua', 'Модуль:'),
	(632, 211, 'ru', 'Модуль:'),
	(633, 211, 'en', 'Module:'),
	(634, 212, 'ua', 'Заняття:'),
	(635, 212, 'ru', 'Занятие:'),
	(636, 212, 'en', 'Lectures:'),
	(637, 213, 'ua', 'Тривалість:'),
	(638, 213, 'ru', 'Длительность:'),
	(639, 213, 'en', 'Duration:'),
	(640, 214, 'ua', 'Рівень:'),
	(641, 214, 'ru', 'Уровень:'),
	(642, 214, 'en', 'Level:'),
	(643, 215, 'ua', 'Тривалість:'),
	(644, 215, 'ru', 'Длительность:'),
	(645, 215, 'en', 'Duration:'),
	(646, 216, 'ua', 'занять'),
	(647, 216, 'ru', 'занятий'),
	(648, 216, 'en', 'lectures'),
	(649, 217, 'ua', 'орієнтовно'),
	(650, 217, 'ru', 'ориентировочно'),
	(651, 217, 'en', 'approximately'),
	(652, 218, 'ua', 'міс.'),
	(653, 218, 'ru', 'мес.'),
	(654, 218, 'en', 'months'),
	(655, 219, 'ua', 'год./день'),
	(656, 219, 'ru', 'ч. / день'),
	(657, 219, 'en', 'hr. / day'),
	(658, 220, 'ua', 'дні/тиждень'),
	(659, 220, 'ru', 'дня / неделю'),
	(660, 220, 'en', 'days / week'),
	(661, 221, 'ua', 'Вартість:'),
	(662, 221, 'ru', 'Cтоимость:'),
	(663, 221, 'en', 'Cost:'),
	(664, 222, 'ua', 'грн.'),
	(665, 222, 'ru', 'грн.'),
	(666, 222, 'en', 'UAH'),
	(667, 223, 'ua', 'в межах курсу'),
	(668, 223, 'ru', 'в рамках курса'),
	(669, 223, 'en', 'within a year'),
	(670, 224, 'ua', 'Оцінка:'),
	(671, 224, 'ru', 'Оценка:'),
	(672, 224, 'en', 'Rating:'),
	(673, 225, 'ua', 'Заняття модуля'),
	(674, 225, 'ru', 'Занятия модуля'),
	(675, 225, 'en', 'Lectures module'),
	(676, 227, 'ua', 'Викладач:'),
	(677, 227, 'ru', 'Преподаватель:'),
	(678, 227, 'en', 'Teacher:'),
	(679, 228, 'ru', 'персональная страница'),
	(680, 228, 'en', 'personal page'),
	(681, 228, 'ua', 'персональна сторінка'),
	(682, 226, 'ru', 'Занятие'),
	(683, 226, 'en', 'Lecture'),
	(684, 226, 'ua', 'Заняття'),
	(685, 229, 'ua', '<p>Потім вивчаються основні принципи програмування на базі класичних комп ютерних наук і методологій: алгоритмічна мова;елементи вищої та дискретної математики і комбінаторики; структури даних, розробка і аналіз алгоритмів." +                                  "<p>Після чого формується база для переходу до сучасних технологій програмування: об’єктно-орієнтоване програмування; проектування баз даних." +                                   "<p>Завершення процесу підготовки шляхом конкретного застосування отриманих знань на реальних проектах із засвоєнням сучасних методів і технологій, які використовуються в ІТ індустрії компаніями.'),
	(686, 229, 'ru', '<P> Затем изучаются основные принципы программирования на базе классических компьютерных наук и методологий: алгоритмический язык; элементы высшего и дискретной математики и комбинаторики; структуры данных, разработка и анализ алгоритмов. "+\r\n                                  "<P> После чего формируется база для перехода к современным технологиям программирования: объектно-ориентированное программирование, проектирование баз данных." +\r\n                                   "<P> Завершение процесса подготовки путем конкретного применения полученных знаний на реальных проектах с усвоением современных методов и технологий, используемых в ИТ индустрии компаниями.'),
	(687, 229, 'en', '<P> Then we study the basic principles of programming based on classic computer books sciences and methodologies algorithmic language, elements of higher and discrete mathematics and combinatorics; data structures, design and analysis of algorithms. "+\r\n                                  "<P> After that formed the basis for the transition to modern programming technologies, object-oriented programming, database design." +\r\n                                   "<P> Completion of training by specific application of knowledge to real projects with the assimilation of modern methods and technologies used in IT industry companies.'),
	(688, 230, 'ua', 'розробляється'),
	(689, 230, 'ru', 'в разработке'),
	(690, 230, 'en', 'in develop'),
	(691, 231, 'ua', 'доступний'),
	(692, 231, 'ru', 'доступен'),
	(693, 231, 'en', 'available'),
	(694, 232, 'ua', 'стажер'),
	(695, 232, 'ru', 'стажер'),
	(696, 232, 'en', 'intern'),
	(697, 233, 'ua', 'початківець'),
	(698, 233, 'ru', 'начинающий'),
	(699, 233, 'en', 'junior'),
	(700, 234, 'ua', 'сильний початківець'),
	(701, 234, 'ru', 'начинающий сильный'),
	(702, 234, 'en', 'strong junior'),
	(703, 235, 'ua', 'середній'),
	(704, 235, 'ru', 'средний'),
	(705, 235, 'en', 'middle'),
	(706, 236, 'ua', 'високий'),
	(707, 236, 'ru', 'высокий'),
	(708, 236, 'en', 'senior'),
	(709, 241, 'ua', 'Профіль викладача'),
	(710, 241, 'ru', 'Профиль преподавателя'),
	(711, 241, 'en', 'Teacher profile'),
	(712, 246, 'ua', 'Ім\'я або id Vkontakte'),
	(713, 246, 'ru', 'Имя или id Vkontakte'),
	(714, 245, 'en', 'Id on LinkedIn (for example in / username)'),
	(715, 247, 'ua', 'Ім\'я или id профиля Twitter'),
	(716, 247, 'ru', 'Имя профиля Twitter'),
	(717, 254, 'ua', 'Мої розрахунки'),
	(718, 254, 'ru', 'Мои расчеты'),
	(719, 254, 'en', 'My finance'),
	(720, 255, 'ua', 'Проплати:'),
	(721, 255, 'ru', 'Проплаты:'),
	(722, 255, 'en', 'Payment:'),
	(723, 256, 'ua', 'проплачені повністю'),
	(724, 256, 'ru', 'проплаченные полностью'),
	(725, 256, 'en', 'are paid completely'),
	(726, 257, 'ua', 'проплачені частково'),
	(727, 257, 'ru', 'проплаченные частично'),
	(728, 257, 'en', 'are paid partly'),
	(729, 247, 'en', 'Username Twitter'),
	(730, 248, 'ua', 'Змінити пароль'),
	(731, 248, 'ru', 'Изменить пароль'),
	(732, 248, 'en', 'Change password'),
	(733, 253, 'ua', 'Замовити</br>електронний</br>сертифікат'),
	(734, 253, 'ru', 'Заказать </ br> электронный </ br> сертификат'),
	(735, 253, 'en', 'Order </ br> e </ br> certificate'),
	(736, 249, 'ua', 'ЗБЕРЕГТИ />'),
	(737, 249, 'ru', 'СОХРАНИТЬ />'),
	(738, 249, 'en', 'SAVE />'),
	(739, 252, 'ua', 'Екзаменаційний проект'),
	(740, 252, 'ru', 'Экзаменационный проект'),
	(741, 252, 'en', 'Examination project'),
	(742, 250, 'ua', 'Модуль'),
	(743, 250, 'ru', 'Модуль'),
	(744, 250, 'en', 'Module'),
	(745, 251, 'ua', 'Екзамен'),
	(746, 251, 'ru', 'Экзамен'),
	(747, 251, 'en', 'Exam'),
	(748, 258, 'ua', 'Проплачено:'),
	(749, 258, 'ru', 'Проплачено:'),
	(750, 258, 'en', 'Paid for:'),
	(751, 259, 'ua', 'грн'),
	(752, 259, 'ru', 'грн'),
	(753, 259, 'en', 'UAH'),
	(754, 260, 'ua', 'Проплачені модулі:'),
	(755, 260, 'ru', 'Проплаченные модули:'),
	(756, 260, 'en', 'Bribed modules:'),
	(757, 261, 'ua', 'Сплатити зараз'),
	(758, 261, 'ru', 'Оплатить сейчас'),
	(759, 261, 'en', 'Pay now'),
	(760, 243, 'en', 'Username Facebook'),
	(761, 244, 'ua', 'Ім\'я або id профіля Google+'),
	(762, 244, 'ru', 'Имя или id профиля Google+'),
	(763, 244, 'en', 'Username or Id Google+ profile'),
	(764, 245, 'ua', 'Id на LinkedIn (наприклад in/username)'),
	(765, 245, 'ru', 'Id на LinkedIn (например in/username)'),
	(766, 262, 'ua', 'дд.мм.рррр'),
	(767, 262, 'ru', 'дд.мм.гггг'),
	(768, 262, 'en', 'dd.mm.yyyy'),
	(769, 263, 'ua', 'Діючий пароль'),
	(770, 263, 'ru', 'Действующий пароль'),
	(771, 263, 'en', 'Current password'),
	(772, 266, 'ua', 'Забули пароль?'),
	(773, 266, 'ru', 'Забыли пароль?'),
	(774, 266, 'en', 'Forgot your password?'),
	(775, 268, 'ua', 'Будь ласка заповніть поле'),
	(776, 268, 'ru', 'Пожалуйста заполните поле'),
	(777, 268, 'en', 'Please fill out the field'),
	(778, 269, 'ua', 'Паролі не співпадають'),
	(779, 269, 'ru', 'Пароли не совпадают'),
	(780, 269, 'en', 'Passwords do not match'),
	(781, 273, 'ua', 'Невірна електронна пошта або пароль'),
	(782, 273, 'ru', 'Неверная электронная почта или пароль'),
	(783, 273, 'en', 'Incorrect email or password'),
	(784, 274, 'ua', 'Невірний пароль'),
	(785, 274, 'ru', 'Неверный пароль'),
	(786, 274, 'en', 'Invalid password'),
	(787, 267, 'ua', 'ЗБЕРЕГТИ />'),
	(788, 267, 'ru', 'СОХРАНИТЬ />'),
	(789, 267, 'en', 'SAVE />'),
	(790, 264, 'ua', 'Новий пароль'),
	(791, 264, 'ru', 'Новый пароль'),
	(792, 264, 'en', 'New password'),
	(793, 265, 'ua', 'Повторіть новий пароль'),
	(794, 265, 'ru', 'Повторите новый пароль'),
	(795, 265, 'en', 'Repeat your new password'),
	(796, 242, 'ua', 'Електронна пошта'),
	(797, 242, 'ru', 'Электронная почта'),
	(798, 242, 'en', 'Email'),
	(799, 243, 'ua', 'Ім\'я користувача Facebook'),
	(800, 243, 'ru', 'Имя пользователя Facebook'),
	(801, 246, 'en', 'Username or Id Vkontakte'),
	(802, 270, 'ua', 'не може бути пустою'),
	(803, 270, 'ru', 'не может быть пустым'),
	(804, 270, 'en', 'can not be empty'),
	(805, 271, 'ua', 'Електронна пошта не являється правильною'),
	(806, 271, 'ru', 'Электронная почта не является правильной'),
	(807, 271, 'en', 'Email is incorrect'),
	(808, 272, 'ua', 'Електронна пошта уже зайнята'),
	(809, 272, 'ru', 'Электронная почта уже занята'),
	(810, 272, 'en', 'Email already occupied'),
	(811, 279, 'ua', 'ПОЧАТИ МОДУЛЬ />'),
	(812, 279, 'ru', 'НАЧАТЬ МОДУЛЬ />'),
	(813, 279, 'en', 'START MODULE />'),
	(814, 280, 'ua', 'ПОЧАТИ КУРС />'),
	(815, 280, 'ru', 'НАЧАТЬ КУРС />'),
	(816, 280, 'en', 'START COURSE />'),
	(817, 237, 'ru', 'Запрашиваемая страница не существует.'),
	(818, 237, 'en', 'The requested page does not exist.'),
	(819, 237, 'ua', 'Запрошена сторінка не існує.'),
	(820, 237, 'ru', 'Запрашиваемая страница не существует.'),
	(821, 237, 'en', 'The requested page does not exist.'),
	(822, 237, 'ru', 'Запрашиваемая страница не существует.'),
	(823, 237, 'en', 'The requested page does not exist.'),
	(824, 238, 'ua', 'Час дії посилання для відновлення паролю вичерпано.'),
	(825, 238, 'ru', 'Время действия ссылки для восстановления пароля исчерпан.'),
	(826, 238, 'en', 'Time for action restoration link exhausted.'),
	(827, 239, 'ua', 'Для відновлення паролю перейдіть по посиланню нижче:'),
	(828, 239, 'ru', 'Для восстановления пароля перейдите по ссылке ниже:'),
	(829, 239, 'en', 'To recover your password click on the link below:'),
	(830, 240, 'ua', 'Нажміть тут для відновлення паролю'),
	(831, 240, 'ru', 'Нажмите здесь для восстановления пароля'),
	(832, 240, 'en', 'Click here for password recovery'),
	(833, 238, 'ua', 'Час дії посилання для відновлення паролю вичерпано.'),
	(834, 238, 'ru', 'Время действия ссылки для восстановления пароля исчерпан.'),
	(835, 238, 'en', 'Time for action restoration link exhausted.'),
	(836, 239, 'ua', 'Для відновлення паролю перейдіть по посиланню нижче:'),
	(837, 239, 'ru', 'Для восстановления пароля перейдите по ссылке ниже:'),
	(838, 239, 'en', 'To recover your password click on the link below:'),
	(839, 240, 'ua', 'Нажміть тут для відновлення паролю'),
	(840, 240, 'ru', 'Нажмите здесь для восстановления пароля'),
	(841, 240, 'en', 'Click here for password recovery'),
	(842, 281, 'ua', 'Відновлення паролю'),
	(843, 281, 'ru', 'Восстановление пароля'),
	(844, 281, 'en', 'Password recovery'),
	(845, 282, 'ua', 'Підтвердження email'),
	(846, 282, 'ru', 'Подтверждение email'),
	(847, 282, 'en', 'Сonfirmation email'),
	(848, 283, 'ua', 'Для підтвердження email перейдіть по посиланню нижче:'),
	(849, 283, 'ru', 'Для подтверждения email перейдите по ссылке ниже:'),
	(850, 283, 'en', 'For confirmation email click on the link below:'),
	(851, 284, 'ua', 'Нажміть тут для підтвердження email'),
	(852, 284, 'ru', 'Нажмите здесь для подтверждения email'),
	(853, 284, 'en', 'Click here to confirm your email'),
	(854, 285, 'ua', 'Відновлення паролю'),
	(855, 285, 'ru', 'Восстановление пароля'),
	(856, 285, 'en', 'Password recovery'),
	(857, 286, 'ua', 'Зміна email'),
	(858, 286, 'ru', 'Смена email'),
	(859, 286, 'en', 'Change email'),
	(860, 287, 'ua', 'Вітаємо!'),
	(861, 287, 'ru', 'Поздравляем!'),
	(862, 287, 'en', 'Congratulations!'),
	(863, 288, 'ua', 'Ви успішно змінили пароль.'),
	(864, 288, 'ru', 'Вы успешно изменили пароль.'),
	(865, 288, 'en', 'You have successfully changed your password.'),
	(866, 289, 'ua', 'Відновлення паролю'),
	(867, 289, 'ru', 'Восстановление пароля'),
	(868, 289, 'en', 'Password recovery'),
	(869, 290, 'ua', 'Щоб відновити пароль, введіть свою електронну пошту нижче. На данну електронну пошту буде відправлено посиланням для відновлення паролю. Термін дії посилання 30 хв.'),
	(870, 290, 'ru', 'Чтобы восстановить пароль, введите свою электронную почту ниже. На эту электронную почту будет отправлено ссылкой для восстановления пароля. Срок действия ссылки 30 мин.'),
	(871, 290, 'en', 'To reset your password, enter your email below. In this e-mail will be sent a link to reset your password. The link 30 min.'),
	(872, 291, 'ua', 'ВІДПРАВИТИ />'),
	(873, 291, 'ru', 'ОТПРАВИТЬ />'),
	(874, 291, 'en', 'SEND />'),
	(875, 292, 'ua', 'Зміна email'),
	(876, 292, 'ru', 'Изменение email'),
	(877, 292, 'en', 'Changing email'),
	(878, 293, 'ua', 'Введіть нову електронну пошту в поле нижче.На дану електронну пошту буде відправлено посиланням для підтвердження дійсності адреси. Термін дії посилання 30 хв.'),
	(879, 293, 'ru', 'Введите новую электронную почту в поле ниже.На данную электронную почту будет отправлено ссылкой для подтверждения подлинности адреса. Срок действия ссылки 30 мин.'),
	(880, 293, 'en', 'Enter a new e-mail in this field below.Na email will be sent a link to confirm validity of the address. The link 30 min.'),
	(881, 294, 'ua', 'ВІДПРАВИТИ />'),
	(882, 294, 'ru', 'ОТПРАВИТЬ />'),
	(883, 294, 'en', 'SEND />'),
	(884, 295, 'ua', 'Змінити email'),
	(885, 295, 'ru', 'Изменить email'),
	(886, 295, 'en', 'Change email'),
	(887, 238, 'ua', 'Час дії посилання для відновлення паролю вичерпано.'),
	(888, 238, 'ru', 'Время действия ссылки для восстановления пароля исчерпан.'),
	(889, 238, 'en', 'Time for action restoration link exhausted.'),
	(890, 239, 'ua', 'Для відновлення паролю перейдіть по посиланню нижче:'),
	(891, 239, 'ru', 'Для восстановления пароля перейдите по ссылке ниже:'),
	(892, 239, 'en', 'To recover your password click on the link below:'),
	(893, 240, 'ua', 'Нажміть тут для відновлення паролю'),
	(894, 240, 'ru', 'Нажмите здесь для восстановления пароля'),
	(895, 240, 'en', 'Click here for password recovery'),
	(896, 281, 'ua', 'Відновлення паролю'),
	(897, 281, 'ru', 'Восстановление пароля'),
	(898, 281, 'en', 'Password recovery'),
	(899, 282, 'ua', 'Підтвердження email'),
	(900, 282, 'ru', 'Подтверждение email'),
	(901, 282, 'en', 'Сonfirmation email'),
	(902, 283, 'ua', 'Для підтвердження email перейдіть по посиланню нижче:'),
	(903, 283, 'ru', 'Для подтверждения email перейдите по ссылке ниже:'),
	(904, 283, 'en', 'For confirmation email click on the link below:'),
	(905, 284, 'ua', 'Нажміть тут для підтвердження email'),
	(906, 284, 'ru', 'Нажмите здесь для подтверждения email'),
	(907, 284, 'en', 'Click here to confirm your email'),
	(908, 285, 'ua', 'Відновлення паролю'),
	(909, 285, 'ru', 'Восстановление пароля'),
	(910, 285, 'en', 'Password recovery'),
	(911, 286, 'ua', 'Зміна email'),
	(912, 286, 'ru', 'Смена email'),
	(913, 286, 'en', 'Change email'),
	(914, 287, 'ua', 'Вітаємо!'),
	(915, 287, 'ru', 'Поздравляем!'),
	(916, 287, 'en', 'Congratulations!'),
	(917, 288, 'ua', 'Ви успішно змінили пароль.'),
	(918, 288, 'ru', 'Вы успешно изменили пароль.'),
	(919, 288, 'en', 'You have successfully changed your password.'),
	(920, 289, 'ua', 'Відновлення паролю'),
	(921, 289, 'ru', 'Восстановление пароля'),
	(922, 289, 'en', 'Password recovery'),
	(923, 290, 'ua', 'Щоб відновити пароль, введіть свою електронну пошту нижче. На данну електронну пошту буде відправлено посиланням для відновлення паролю. Термін дії посилання 30 хв.'),
	(924, 290, 'ru', 'Чтобы восстановить пароль, введите свою электронную почту ниже. На эту электронную почту будет отправлено ссылкой для восстановления пароля. Срок действия ссылки 30 мин.'),
	(925, 290, 'en', 'To reset your password, enter your email below. In this e-mail will be sent a link to reset your password. The link 30 min.'),
	(926, 291, 'ua', 'ВІДПРАВИТИ />'),
	(927, 291, 'ru', 'ОТПРАВИТЬ />'),
	(928, 291, 'en', 'SEND />'),
	(929, 292, 'ua', 'Зміна email'),
	(930, 292, 'ru', 'Изменение email'),
	(931, 292, 'en', 'Changing email'),
	(932, 293, 'ua', 'Введіть нову електронну пошту в поле нижче.На дану електронну пошту буде відправлено посиланням для підтвердження дійсності адреси. Термін дії посилання 30 хв.'),
	(933, 293, 'ru', 'Введите новую электронную почту в поле ниже.На данную электронную почту будет отправлено ссылкой для подтверждения подлинности адреса. Срок действия ссылки 30 мин.'),
	(934, 293, 'en', 'Enter a new e-mail in this field below.Na email will be sent a link to confirm validity of the address. The link 30 min.'),
	(935, 294, 'ua', 'ВІДПРАВИТИ />'),
	(936, 294, 'ru', 'ОТПРАВИТЬ />'),
	(937, 294, 'en', 'SEND />'),
	(938, 295, 'ua', 'Змінити email'),
	(939, 295, 'ru', 'Изменить email'),
	(940, 295, 'en', 'Change email'),
	(941, 296, 'ua', 'Випускники'),
	(942, 296, 'ru', 'Выпускники'),
	(943, 296, 'en', 'Graduates'),
	(944, 297, 'ua', 'Наші випускники'),
	(945, 297, 'ru', 'Наши выпускники'),
	(946, 297, 'en', 'Our graduates'),
	(947, 298, 'ua', 'Дякуємо за реєстрацію!'),
	(948, 298, 'ru', 'Спасибо за регистрацию!'),
	(949, 298, 'en', 'Thanks for signing up!'),
	(950, 299, 'ua', 'Дякуємо за реєстрацію на сайті! Для активації Вашого облікового запису, будь ласка перейдіть за посиланням: '),
	(951, 299, 'ru', 'Thank you for registering on the site! To activate your account, please go to: '),
	(952, 299, 'en', 'Спасибо за регистрацию на сайте! Для активации учетной записи, пожалуйста перейдите по ссылке: '),
	(953, 300, 'ua', 'Ви ввели невірні дані.'),
	(954, 300, 'ru', 'Вы ввели неверные данные.'),
	(955, 300, 'en', 'You entered incorrect data.'),
	(956, 301, 'ua', 'Ви ввели не дійсну електронну адресу'),
	(957, 301, 'ru', 'You entered is not a valid email address'),
	(958, 301, 'en', 'Вы ввели недействительный электронный адрес'),
	(959, 302, 'ua', 'Розмір файла перевищує 5 Мб'),
	(960, 302, 'ru', 'Размер файла превышает 5 Мб'),
	(961, 302, 'en', 'File size exceeds 5 MB'),
	(962, 303, 'ua', 'Активація облікового запису'),
	(963, 303, 'ru', 'Активация учетной записи'),
	(964, 303, 'en', 'Account Activation'),
	(965, 304, 'ua', 'Ви успішно активували обліковий запис'),
	(966, 304, 'ru', 'Вы успешно активировали аккаунт'),
	(967, 304, 'en', 'You have successfully activated your account'),
	(968, 305, 'ua', 'Спасибі, тепер ваша реєстрація завершена. Щоб увійти на сайт під Вашим обліковим записом, введіть електронну пошту та пароль в формі Вхід.'),
	(969, 305, 'ru', 'Спасибо, теперь ваша регистрация завершена. Чтобы войти на сайт под вашей учетной записью, введите адрес электронной почты и пароль в форме Вход.'),
	(970, 305, 'en', 'Thank you, now your registration is complete. To enter the site under your account, enter your email and password in the login form.'),
	(971, 306, 'ua', 'Дякуємо за реєстрацію!'),
	(972, 306, 'ru', 'Спасибо за регистрацию!'),
	(973, 306, 'en', 'Thanks for signing up!'),
	(974, 307, 'ua', 'На адресу'),
	(975, 307, 'ru', 'На адрес'),
	(976, 307, 'en', 'Addressed'),
	(977, 308, 'ua', 'було відправлено листа з інструкціями щодо активації облікового запису. Після отримання листа по електронній пошті, ви ПОВИННІ відвідати URL, вказаний у листі, щоб активувати ваш аккаунт.'),
	(978, 308, 'ru', 'было отправлено письмо с инструкциями по активации аккаунта. После получения письма по электронной почте, вы ДОЛЖНЫ посетить URL, указанный в письме, чтобы активировать ваш аккаунт.'),
	(979, 308, 'en', 'was sent a letter with instructions to activate your account. After receiving an e-mail, you should visit URL, specified in the email to activate your account.'),
	(980, 309, 'ua', 'Зміна email'),
	(981, 309, 'ru', 'Изменение email'),
	(982, 309, 'en', 'Changing email'),
	(983, 310, 'ua', 'було відправлено листа з інструкціями процедури зміни email. Після отримання листа по електронній пошті, ВИ ПОВИННІ відвідати URL, вказаний у листі, щоб зміна email прошла успішно.'),
	(984, 310, 'ru', 'было отправлено письмо с инструкциями процедуры изменения email. После получения письма по электронной почте, ВЫ ДОЛЖНЫ посетить URL, указанный в письме, чтобы изменение email прошла успешно.'),
	(985, 310, 'en', 'sent a letter to the instructions procedures change email. After receiving an e-mail, you must visit the URL, specified in the letter to change email passed successfully.'),
	(986, 311, 'ua', 'Обліковий запис не активовано'),
	(987, 311, 'ru', 'Аккаунт не активирован'),
	(988, 311, 'en', 'Your account is not activated'),
	(989, 312, 'ua', 'Спочатку активуйте обліковий запис'),
	(990, 312, 'ru', 'Сначала активируйте аккаунт'),
	(991, 312, 'en', 'First activate account'),
	(992, 313, 'ua', 'Перед тим як увійти на сайт, активуйте Ваш обліковий запис. Лист з активацією був відправлений на електронну пошту:'),
	(993, 313, 'ru', 'Перед тем как войти на сайт, активируйте Ваш аккаунт. Письмо с активацией был отправлен на электронную почту:'),
	(994, 313, 'en', 'Before you sign activate your account. The letter was sent with the activation e-mail:'),
	(995, 314, 'ua', 'Зміна паролю'),
	(996, 314, 'ru', 'Изменение пароля'),
	(997, 314, 'en', 'Password Reset'),
	(998, 315, 'ua', 'було відправлено листа з інструкціями процедури зміни паролю. Після отримання листа по електронній пошті, ВИ ПОВИННІ відвідати URL, вказаний у листі, щоб змінити пароль.'),
	(999, 315, 'ru', 'было отправлено письмо с инструкциями процедуры смены пароля. После получения письма по электронной почте, ВЫ ДОЛЖНЫ посетить URL, указанный в письме, чтобы изменить пароль.'),
	(1000, 315, 'en', 'sent a letter with procedure instructions to reset your password. After receiving an e-mail, you must visit the URL, specified in the email to reset your password.'),
	(1001, 422, 'ua', 'У цій лекції ще нічого немає ('),
	(1002, 422, 'ru', 'В данной лекции еще ничего нет ('),
	(1003, 315, 'ru', 'было отправлено письмо с инструкциями процедуры смены пароля. После получения письма по электронной почте, ВЫ ДОЛЖНЫ посетить URL, указанный в письме, чтобы изменить пароль.'),
	(1004, 315, 'en', 'sent a letter with procedure instructions to reset your password. After receiving an e-mail, you must visit the URL, specified in the email to reset your password.'),
	(1005, 422, 'en', 'There are not any content in this lecture ('),
	(1006, 317, 'ua', 'Зміст'),
	(1007, 317, 'ru', 'Содержание'),
	(1008, 317, 'en', 'Contents'),
	(1009, 316, 'en', 'Position:'),
	(1010, 316, 'ua', 'Посада:'),
	(1011, 316, 'ru', 'Должность:'),
	(1012, 317, 'en', 'Place of work:'),
	(1013, 317, 'ua', 'Місце роботи:'),
	(1014, 317, 'ru', 'Место работы:'),
	(1015, 318, 'en', 'The course is finished:'),
	(1016, 318, 'ua', 'Курс закінчив:'),
	(1017, 318, 'ru', 'Курс закончил:'),
	(1018, 319, 'en', 'User Rating:'),
	(1019, 319, 'ua', 'Рейтинг:'),
	(1020, 319, 'ru', 'Рейтинг:'),
	(1021, 320, 'en', 'Issue:'),
	(1022, 320, 'ua', 'Випуск:'),
	(1023, 320, 'ru', 'Выпуск:'),
	(1024, 317, 'en', 'Contents'),
	(1025, 337, 'ua', 'Спробуємо вгадати:'),
	(1026, 337, 'en', 'Try to guess:'),
	(1027, 337, 'ru', 'Попробуем угадать:'),
	(1028, 338, 'ua', 'власна квартира'),
	(1029, 338, 'en', 'own apartment'),
	(1030, 338, 'ru', 'собственная квартира'),
	(1031, 339, 'ua', 'чи навіть будинок?'),
	(1032, 339, 'en', 'or even house?'),
	(1033, 339, 'ru', 'или даже дом?'),
	(1034, 340, 'ua', 'ГАРНИЙ'),
	(1035, 340, 'en', 'GOOD'),
	(1036, 340, 'ru', 'ХОРОШИЙ'),
	(1037, 341, 'ua', 'автомобіль'),
	(1038, 341, 'en', 'car'),
	(1039, 341, 'ru', 'автомобиль'),
	(1040, 342, 'ua', 'закордонні'),
	(1041, 342, 'en', 'foreign'),
	(1042, 342, 'ru', 'заграничные'),
	(1043, 343, 'ua', 'подорожі,'),
	(1044, 343, 'en', 'trips'),
	(1045, 343, 'ru', 'путешествия'),
	(1046, 344, 'ua', 'можливо'),
	(1047, 344, 'en', 'perhaps'),
	(1048, 344, 'ru', 'возможно'),
	(1049, 345, 'ua', 'ДО ЕКЗОТИЧНИХ КРАЇН?'),
	(1050, 345, 'en', 'TO EXOTIC COUNTRIES?'),
	(1051, 345, 'ru', 'В ЭКЗОТИЧЕСКИЕ СТРАНЫ?'),
	(1052, 346, 'ua', 'Забезпечене'),
	(1053, 346, 'en', 'Rich'),
	(1054, 346, 'ru', 'Обеспеченная'),
	(1055, 347, 'ua', 'життя'),
	(1056, 347, 'en', 'life'),
	(1057, 347, 'ru', 'жизнь'),
	(1058, 348, 'ua', 'для себе і близьких,'),
	(1059, 348, 'en', 'for themselves and loved once'),
	(1060, 348, 'ru', 'для себя и близких'),
	(1061, 349, 'ua', 'коли не доводиться думати про'),
	(1062, 349, 'en', 'when you have not think about'),
	(1063, 349, 'ru', 'когда не приходится думать о'),
	(1064, 350, 'ua', 'гроші?'),
	(1065, 350, 'en', 'money?'),
	(1066, 350, 'ru', 'деньгах?'),
	(1067, 351, 'ua', 'А, може, це свобода жити своїм <br>життям? Самостійно керувати <br> власним часом з можливістю <br>працювати за <span>зручним <br>графіком</span> без необхідності <br>щодня їздити на роботу, але<br> при цьому мати стабільно<br> високий дохід?'),
	(1068, 351, 'en', 'And, perhaps, is the freedom to live<br> their lives? Independently manage <br> own time with the ability to work on <br> <span>convenient schedule </ span> without the need <br> daily commute to work, but still have <br> <br> stable high income?'),
	(1069, 351, 'ru', 'А, может, это свобода жить своей <br> жизнью? Самостоятельно управлять <br> собственным временем с возможностью <br> работать по <span> удобному <br> графику </ span> без необходимости <br> ежедневно ездить на работу, но <br> при этом иметь стабильно <br> высокий доход?'),
	(1070, 352, 'ua', 'Як щодо'),
	(1071, 352, 'en', 'What about'),
	(1072, 352, 'ru', 'Что насчёт'),
	(1073, 353, 'ua', '/в місяць?'),
	(1074, 353, 'en', ' per month?'),
	(1075, 353, 'ru', '/в месяц?'),
	(1076, 354, 'ua', 'з можливістю працювати за гнучким<br>графіком та дистанційно? Ти думаєш, що в<br>нашій країні такі умови лише у керівників<br>та власників бізнесу?<br><br>У нас хороша новина:<br>'),
	(1077, 354, 'en', 'with the ability to work flexible schedule and <br> remotely? You think that in our country <br> conditions only <br> managers and business owners? <br> <br> We have good news:<br>'),
	(1078, 354, 'ru', 'с возможностью работать по гибкому <br> графику и дистанционно? Ты думаешь, что в <br> нашей стране такие условия только у руководителей <br> и владельцев бизнеса? <br> <br> У нас хорошая новость: <br>'),
	(1079, 355, 'ua', 'вже через рік-два-три так зможеш<br>заробляти і<br><br>ТИ . . . '),
	(1080, 355, 'en', 'in a year or two or three so <br> able to earn and <br> <br> you. . .'),
	(1081, 355, 'ru', 'уже через год-два-три так сможешь <br> зарабатывать и <br> <br> ТЫ. . .'),
	(1082, 356, 'ua', 'Професія майбутнього'),
	(1083, 356, 'en', 'Occupation future'),
	(1084, 356, 'ru', 'Профессия будущего'),
	(1085, 357, 'ua', 'Сьогодні у тебе є реальна можливість <br>\r\n																				 поєднати хороший заробіток, гнучкий<br>\r\n																				 графік роботи та зручність<br>\r\n																				 дистанційної роботи. І це не<br>\r\n																				 “заработок в интернете”, про який<br>\r\n																				 кричить банерна реклама на багатьох<br>\r\n																				 сайтах. Ми віримо у те, що високого <br>\r\n																				 стабільного доходу можна досягти <br>\r\n																				 лише за допомогою власних зусиль.'),
	(1086, 357, 'en', 'Today you have a real opportunity <br>\r\n																				 combine the good salary, flexible <br>\r\n																				 schedule and convenience <br>\r\n																				 teleworking. This is not <br>\r\n																				 "Earnings on the Internet", which <br>\r\n																				 screaming banner ads on many <br>\r\n																				 sites. We believe that high <br>\r\n																				 stable income can be achieved <br>\r\n																				 only through their own efforts.'),
	(1087, 357, 'ru', 'Сегодня у тебя есть реальная возможность <br>\r\n																				 совместить хороший заработок, гибкий <br>\r\n																				 график работы и удобство <br>\r\n																				 дистанционной работы. И это не <br>\r\n																				 "Заработок в интернете", о котором <br>\r\n																				 кричит баннерная реклама на многих <br>\r\n																				 сайтах. Мы верим в то, что высокого <br>\r\n																				 стабильного дохода можно достичь <br>\r\n																				 только с помощью собственных усилий.'),
	(1088, 358, 'ua', 'Ми живемо в епоху, коли'),
	(1089, 358, 'en', 'We live in an era when'),
	(1090, 358, 'ru', 'Мы живем в эпоху, когда'),
	(1091, 359, 'ua', 'ГОЛОВНИМ ДВИГУНОМ РОЗВИТКУ СВІТОВОЇ ЕКОНОМІКИ Є ІНФОРМАЦІЙНІ   <br>ТЕХНОЛОГІЇ'),
	(1092, 359, 'en', 'THE MAIN ENGINE OF THE GLOBAL ECONOMY ARE <br> INFORMATION TECHNOLOGY'),
	(1093, 359, 'ru', 'ГЛАВНЫМ ДВИГАТЕЛЕМ РАЗВИТИЯ МИРОВОЙ ЭКОНОМИКИ ЕСТЬ ИНФОРМАЦИОННЫЕ <br> ТЕХНОЛОГИИ'),
	(1094, 360, 'ua', 'Як?'),
	(1095, 360, 'en', 'How?'),
	(1096, 360, 'ru', 'Как?'),
	(1097, 361, 'ua', '<li>Вони дозволяють досягти нових проривних результатів у   <br>\r\n																						 традиційних галузях: виробництві та послугах.</li>\r\n																				 <li>саме інформаційні технології повністю змінили і <br>\r\n																						 продовжують трансформувати індустрії звязку,   <br>\r\n																						 розваг (книги, музика, фільми), банківських послуг;</li>\r\n																				 <li>також такі традиційні бізнеси, як послуги таксі (Uber);</li>\r\n																				 <li>  готелів (Airbnb);</li>\r\n																				 <li>навчання (Coursera).</li>'),
	(1098, 361, 'en', '<li> They can achieve new breakthrough results in <br>\r\n																							traditional industries, manufacturing and services. </ li>\r\n																							<li> information technology is completely changed and <br>\r\n																							communication industry continues to transform, <br>\r\n																							entertainment (books, music, movies), banking services; </ li>\r\n																							<li> as traditional businesses such as taxi services (Uber); </ li>\r\n																							<li> hotels (Airbnb); </ li>\r\n																							<li> Learning (Coursera). </ li>'),
	(1099, 361, 'ru', '<li> Они позволяют достичь новых прорывных результатов в <br>\r\n																							традиционных отраслях: производстве и услугах. </ li>\r\n																							<li> именно информационные технологии полностью изменили и <br>\r\n																							продолжают трансформировать индустрии связи, <br>\r\n																							развлечений (книги, музыка, фильмы), банковских услуг; </ li>\r\n																							<li> также такие традиционные бизнесы, как услуги такси (Uber); </ li>\r\n																							<li> гостиниц (Airbnb); </ li>\r\n																							<li> обучения (Coursera). </ li>'),
	(1100, 362, 'ua', 'Герої інформаційної епохи - це спеціалісти з інформаційних технологій.<br>\r\n																				 Вони знаходяться на передовій змін, вони придумали та<br>\r\n																				 продовжують розвивати Windows, iOS, Android, а також мільйони<br>\r\n																				 додатків до них, вони створюють соціальні мережі, сайти та бази<br>\r\n																				 даних.'),
	(1101, 362, 'en', 'Heroes of the information age - the specialists in information technologies. <br>\r\n																				 They are at the forefront of change, they came up and <br>\r\n																				 continue to develop Windows, iOS, Android, and millions <br>\r\n																				 annexes, they create social networks, websites and database <br>\r\n																				 data.'),
	(1102, 362, 'ru', 'Герои информационной эпохи - это специалисты по информационным технологиям. <br>\r\n																				 Они находятся на передовой изменений, они придумали и <br>\r\n																				 продолжают развивать Windows, iOS, Android, а также миллионы <br>\r\n																				 приложений к ним, они создают социальные сети, сайты и базы <br>\r\n																				 данных.'),
	(1103, 363, 'ua', 'Розпочинай вчитися вже зараз!'),
	(1104, 363, 'en', 'Starts learn now!'),
	(1105, 363, 'ru', 'Начинай учиться уже сейчас!'),
	(1106, 337, 'ua', 'Спробуємо вгадати:'),
	(1107, 337, 'en', 'Try to guess:'),
	(1108, 337, 'ru', 'Попробуем угадать:'),
	(1109, 338, 'ua', 'власна квартира'),
	(1110, 338, 'en', 'own apartment'),
	(1111, 338, 'ru', 'собственная квартира'),
	(1112, 339, 'ua', 'чи навіть будинок?'),
	(1113, 339, 'en', 'or even house?'),
	(1114, 339, 'ru', 'или даже дом?'),
	(1115, 340, 'ua', 'ГАРНИЙ'),
	(1116, 340, 'en', 'GOOD'),
	(1117, 340, 'ru', 'ХОРОШИЙ'),
	(1118, 341, 'ua', 'автомобіль'),
	(1119, 341, 'en', 'car'),
	(1120, 341, 'ru', 'автомобиль'),
	(1121, 342, 'ua', 'закордонні'),
	(1122, 342, 'en', 'foreign'),
	(1123, 342, 'ru', 'заграничные'),
	(1124, 343, 'ua', 'подорожі,'),
	(1125, 343, 'en', 'trips'),
	(1126, 343, 'ru', 'путешествия'),
	(1127, 344, 'ua', 'можливо'),
	(1128, 344, 'en', 'perhaps'),
	(1129, 344, 'ru', 'возможно'),
	(1130, 345, 'ua', 'ДО ЕКЗОТИЧНИХ КРАЇН?'),
	(1131, 345, 'en', 'TO EXOTIC COUNTRIES?'),
	(1132, 345, 'ru', 'В ЭКЗОТИЧЕСКИЕ СТРАНЫ?'),
	(1133, 346, 'ua', 'Забезпечене'),
	(1134, 346, 'en', 'Rich'),
	(1135, 346, 'ru', 'Обеспеченная'),
	(1136, 347, 'ua', 'життя'),
	(1137, 347, 'en', 'life'),
	(1138, 347, 'ru', 'жизнь'),
	(1139, 348, 'ua', 'для себе і близьких,'),
	(1140, 348, 'en', 'for themselves and loved once'),
	(1141, 348, 'ru', 'для себя и близких'),
	(1142, 349, 'ua', 'коли не доводиться думати про'),
	(1143, 349, 'en', 'when you have not think about'),
	(1144, 349, 'ru', 'когда не приходится думать о'),
	(1145, 350, 'ua', 'гроші?'),
	(1146, 350, 'en', 'money?'),
	(1147, 350, 'ru', 'деньгах?'),
	(1148, 351, 'ua', 'А, може, це свобода жити своїм <br>життям? Самостійно керувати <br> власним часом з можливістю <br>працювати за <span>зручним <br>графіком</span> без необхідності <br>щодня їздити на роботу, але<br> при цьому мати стабільно<br> високий дохід?'),
	(1149, 351, 'en', 'And, perhaps, is the freedom to live<br> their lives? Independently manage <br> own time with the ability to work on <br> <span>convenient schedule </ span> without the need <br> daily commute to work, but still have <br> <br> stable high income?'),
	(1150, 351, 'ru', 'А, может, это свобода жить своей <br> жизнью? Самостоятельно управлять <br> собственным временем с возможностью <br> работать по <span> удобному <br> графику </ span> без необходимости <br> ежедневно ездить на работу, но <br> при этом иметь стабильно <br> высокий доход?'),
	(1151, 352, 'ua', 'Як щодо'),
	(1152, 352, 'en', 'What about'),
	(1153, 352, 'ru', 'Что насчёт'),
	(1154, 353, 'ua', '/в місяць?'),
	(1155, 353, 'en', ' per month?'),
	(1156, 353, 'ru', '/в месяц?'),
	(1157, 354, 'ua', 'з можливістю працювати за гнучким<br>графіком та дистанційно? Ти думаєш, що в<br>нашій країні такі умови лише у керівників<br>та власників бізнесу?<br><br>У нас хороша новина:<br>'),
	(1158, 354, 'en', 'with the ability to work flexible schedule and <br> remotely? You think that in our country <br> conditions only <br> managers and business owners? <br> <br> We have good news:<br>'),
	(1159, 354, 'ru', 'с возможностью работать по гибкому <br> графику и дистанционно? Ты думаешь, что в <br> нашей стране такие условия только у руководителей <br> и владельцев бизнеса? <br> <br> У нас хорошая новость: <br>'),
	(1160, 355, 'ua', 'вже через рік-два-три так зможеш<br>заробляти і<br><br>ТИ . . . '),
	(1161, 355, 'en', 'in a year or two or three so <br> able to earn and <br> <br> you. . .'),
	(1162, 355, 'ru', 'уже через год-два-три так сможешь <br> зарабатывать и <br> <br> ТЫ. . .'),
	(1163, 356, 'ua', 'Професія майбутнього'),
	(1164, 356, 'en', 'Occupation future'),
	(1165, 356, 'ru', 'Профессия будущего'),
	(1166, 357, 'ua', 'Сьогодні у тебе є реальна можливість <br>\r\n																				 поєднати хороший заробіток, гнучкий<br>\r\n																				 графік роботи та зручність<br>\r\n																				 дистанційної роботи. І це не<br>\r\n																				 “заработок в интернете”, про який<br>\r\n																				 кричить банерна реклама на багатьох<br>\r\n																				 сайтах. Ми віримо у те, що високого <br>\r\n																				 стабільного доходу можна досягти <br>\r\n																				 лише за допомогою власних зусиль.'),
	(1167, 357, 'en', 'Today you have a real opportunity <br>\r\n																				 combine the good salary, flexible <br>\r\n																				 schedule and convenience <br>\r\n																				 teleworking. This is not <br>\r\n																				 "Earnings on the Internet", which <br>\r\n																				 screaming banner ads on many <br>\r\n																				 sites. We believe that high <br>\r\n																				 stable income can be achieved <br>\r\n																				 only through their own efforts.'),
	(1168, 357, 'ru', 'Сегодня у тебя есть реальная возможность <br>\r\n																				 совместить хороший заработок, гибкий <br>\r\n																				 график работы и удобство <br>\r\n																				 дистанционной работы. И это не <br>\r\n																				 "Заработок в интернете", о котором <br>\r\n																				 кричит баннерная реклама на многих <br>\r\n																				 сайтах. Мы верим в то, что высокого <br>\r\n																				 стабильного дохода можно достичь <br>\r\n																				 только с помощью собственных усилий.'),
	(1169, 358, 'ua', 'Ми живемо в епоху, коли'),
	(1170, 358, 'en', 'We live in an era when'),
	(1171, 358, 'ru', 'Мы живем в эпоху, когда'),
	(1172, 359, 'ua', 'ГОЛОВНИМ ДВИГУНОМ РОЗВИТКУ СВІТОВОЇ ЕКОНОМІКИ Є ІНФОРМАЦІЙНІ   <br>ТЕХНОЛОГІЇ'),
	(1173, 359, 'en', 'THE MAIN ENGINE OF THE GLOBAL ECONOMY ARE <br> INFORMATION TECHNOLOGY'),
	(1174, 359, 'ru', 'ГЛАВНЫМ ДВИГАТЕЛЕМ РАЗВИТИЯ МИРОВОЙ ЭКОНОМИКИ ЕСТЬ ИНФОРМАЦИОННЫЕ <br> ТЕХНОЛОГИИ'),
	(1175, 360, 'ua', 'Як?'),
	(1176, 360, 'en', 'How?'),
	(1177, 360, 'ru', 'Как?'),
	(1178, 361, 'ua', '<li>Вони дозволяють досягти нових проривних результатів у   <br>\r\n																						 традиційних галузях: виробництві та послугах.</li>\r\n																				 <li>саме інформаційні технології повністю змінили і <br>\r\n																						 продовжують трансформувати індустрії звязку,   <br>\r\n																						 розваг (книги, музика, фільми), банківських послуг;</li>\r\n																				 <li>також такі традиційні бізнеси, як послуги таксі (Uber);</li>\r\n																				 <li>  готелів (Airbnb);</li>\r\n																				 <li>навчання (Coursera).</li>'),
	(1179, 361, 'en', '<li> They can achieve new breakthrough results in <br>\r\n																							traditional industries, manufacturing and services. </ li>\r\n																							<li> information technology is completely changed and <br>\r\n																							communication industry continues to transform, <br>\r\n																							entertainment (books, music, movies), banking services; </ li>\r\n																							<li> as traditional businesses such as taxi services (Uber); </ li>\r\n																							<li> hotels (Airbnb); </ li>\r\n																							<li> Learning (Coursera). </ li>'),
	(1180, 361, 'ru', '<li> Они позволяют достичь новых прорывных результатов в <br>\r\n																							традиционных отраслях: производстве и услугах. </ li>\r\n																							<li> именно информационные технологии полностью изменили и <br>\r\n																							продолжают трансформировать индустрии связи, <br>\r\n																							развлечений (книги, музыка, фильмы), банковских услуг; </ li>\r\n																							<li> также такие традиционные бизнесы, как услуги такси (Uber); </ li>\r\n																							<li> гостиниц (Airbnb); </ li>\r\n																							<li> обучения (Coursera). </ li>'),
	(1181, 362, 'ua', 'Герої інформаційної епохи - це спеціалісти з інформаційних технологій.<br>\r\n																				 Вони знаходяться на передовій змін, вони придумали та<br>\r\n																				 продовжують розвивати Windows, iOS, Android, а також мільйони<br>\r\n																				 додатків до них, вони створюють соціальні мережі, сайти та бази<br>\r\n																				 даних.'),
	(1182, 362, 'en', 'Heroes of the information age - the specialists in information technologies. <br>\r\n																				 They are at the forefront of change, they came up and <br>\r\n																				 continue to develop Windows, iOS, Android, and millions <br>\r\n																				 annexes, they create social networks, websites and database <br>\r\n																				 data.'),
	(1183, 362, 'ru', 'Герои информационной эпохи - это специалисты по информационным технологиям. <br>\r\n																				 Они находятся на передовой изменений, они придумали и <br>\r\n																				 продолжают развивать Windows, iOS, Android, а также миллионы <br>\r\n																				 приложений к ним, они создают социальные сети, сайты и базы <br>\r\n																				 данных.'),
	(1184, 363, 'ua', 'Розпочинай вчитися вже зараз!'),
	(1185, 363, 'en', 'Starts learn now!'),
	(1186, 363, 'ru', 'Начинай учиться уже сейчас!'),
	(1187, 321, 'en', 'Contents:'),
	(1188, 321, 'ua', 'Зміст:'),
	(1189, 321, 'ru', 'Содержание:'),
	(1190, 364, 'ua', 'Модуль'),
	(1191, 364, 'ru', 'Модуль'),
	(1192, 364, 'en', 'Module'),
	(1193, 365, 'ua', 'Новий модуль:'),
	(1194, 365, 'ru', 'Новый модуль:'),
	(1195, 365, 'en', 'New module:'),
	(1196, 366, 'ua', 'Модуль'),
	(1197, 366, 'ru', 'Модуль'),
	(1198, 366, 'en', 'Module'),
	(1199, 367, 'ua', 'Додати'),
	(1200, 367, 'ru', 'Добавить'),
	(1201, 367, 'en', 'Add'),
	(1202, 368, 'ua', 'Скасувати'),
	(1203, 368, 'ru', 'Отменить'),
	(1204, 368, 'en', 'Cancel'),
	(1205, 369, 'ua', 'Введіть назву модуля'),
	(1206, 369, 'ru', 'Введите название модуля'),
	(1207, 369, 'en', 'Enter the name of the module'),
	(1208, 370, 'ua', 'Введіть кількість годин в день'),
	(1209, 370, 'ru', 'Введите количество часов в день'),
	(1210, 370, 'en', 'Enter the number of hours per day'),
	(1211, 371, 'ua', 'Введіть кількість днів на тиждень'),
	(1212, 371, 'ru', 'Введите количество дней в неделю'),
	(1213, 371, 'en', 'Enter the number of days a week'),
	(1214, 372, 'ua', 'Введіть ціну модуля'),
	(1215, 372, 'ru', 'Введите цену модуля'),
	(1216, 372, 'en', 'Enter price module'),
	(1217, 373, 'ua', 'Редагувати список занять'),
	(1218, 373, 'ru', 'Редактировать список занятий'),
	(1219, 373, 'en', 'Edit the list of classes'),
	(1220, 374, 'ua', 'Додати заняття'),
	(1221, 374, 'ru', 'Добавить занятия'),
	(1222, 374, 'en', 'Add occupation'),
	(1223, 375, 'ua', 'У даному модулі занять немає.'),
	(1224, 375, 'ru', 'В данном модуле занятий нет.'),
	(1225, 375, 'en', 'This module classes there.'),
	(1226, 376, 'ua', 'Ви впевнені що хочете видалити даний урок?'),
	(1227, 376, 'ru', 'Вы уверены что хотите удалить данный урок?'),
	(1228, 376, 'en', 'Are you sure you want to remove this class?'),
	(1229, 377, 'ua', 'Ви впевнені, що хочете видалити це заняття?'),
	(1230, 377, 'ru', 'Вы уверены, что хотите удалить это занятие?'),
	(1231, 377, 'en', 'Are you sure you want to delete this session?'),
	(1232, 378, 'ua', 'Дезактивувати заняття'),
	(1233, 378, 'ru', 'Дезактивировать занятие'),
	(1234, 378, 'en', 'Deactivate lesson'),
	(1235, 379, 'ua', 'Підняти заняття вгору на 1 позицію'),
	(1236, 379, 'ru', 'Поднять занятие вверх на 1 позицию'),
	(1237, 379, 'en', 'Lift the lesson up to the 1 position'),
	(1238, 380, 'ua', 'Опустити модуль вниз на 1 позицію'),
	(1239, 380, 'ru', 'Опустить занятие вниз на 1 позицию'),
	(1240, 380, 'en', 'Lower the lesson down to the 1 position'),
	(1241, 381, 'ua', 'Заняття'),
	(1242, 381, 'ru', 'Занятие'),
	(1243, 381, 'en', 'Lesson'),
	(1244, 382, 'ua', 'Нове заняття:'),
	(1245, 382, 'ru', 'Новое занятие:'),
	(1246, 382, 'en', 'New lesson:'),
	(1247, 383, 'ua', 'Додати'),
	(1248, 383, 'ru', 'Добавить'),
	(1249, 383, 'en', 'Add'),
	(1250, 384, 'ua', 'Скасувати'),
	(1251, 384, 'ru', 'Отменить'),
	(1252, 384, 'en', 'Cancel'),
	(1253, 385, 'ua', 'Спочатку оцініть викладача по трьох критеріях'),
	(1254, 385, 'ru', 'Сначала оцените преподавателя по трем критериям'),
	(1255, 385, 'en', 'At first rate teacher three criteria'),
	(1256, 386, 'ua', 'Ваш відгук відправлено. Зачекайте модерації.'),
	(1257, 386, 'ru', 'Ваш отзыв отправлен. Подождите модерации.'),
	(1258, 386, 'en', 'Your review has been sent. Wait moderation.'),
	(1259, 387, 'ua', 'Поле обов\'язкове для заповнення'),
	(1260, 387, 'ru', 'Поле обязательное для заполнения'),
	(1261, 387, 'en', 'This field is required'),
	(1262, 388, 'ua', 'Введіть ціле невід\'ємне число'),
	(1263, 388, 'ru', 'Введите целое неотрицательное число'),
	(1264, 388, 'en', 'Enter a non-negative integer'),
	(1265, 389, 'ua', 'Введіть дату в форматі рррр-мм-дд'),
	(1266, 389, 'ru', 'Введите дату в формате гггг-мм-дд'),
	(1267, 389, 'en', 'Enter the date in yyyy-mm-dd'),
	(1268, 390, 'ua', 'Курси'),
	(1269, 390, 'ru', 'Курсы'),
	(1270, 390, 'en', 'Courses'),
	(1271, 391, 'ua', 'Створити'),
	(1272, 391, 'ru', 'Создать'),
	(1273, 391, 'en', 'Create'),
	(1274, 392, 'ua', 'Список курсів'),
	(1275, 392, 'ru', 'Список курсов'),
	(1276, 392, 'en', 'List of courses'),
	(1277, 393, 'ua', 'Управління курсами'),
	(1278, 393, 'ru', 'Управление курсами'),
	(1279, 393, 'en', 'Management courses'),
	(1280, 394, 'ua', 'Створити курс'),
	(1281, 394, 'ru', 'Создать курс'),
	(1282, 394, 'en', 'Create course'),
	(1283, 395, 'ua', 'РРРР-ММ-ДД'),
	(1284, 395, 'ru', 'ГГГГ-ММ-ДД'),
	(1285, 395, 'en', 'YYYY-MM-DD'),
	(1286, 396, 'ua', 'В розробці'),
	(1287, 396, 'ru', 'В разработке'),
	(1288, 396, 'en', 'In development'),
	(1289, 397, 'ua', 'Готовий'),
	(1290, 397, 'ru', 'Готовый'),
	(1291, 397, 'en', 'Ready'),
	(1292, 398, 'ua', 'Створити'),
	(1293, 398, 'ru', 'Создать'),
	(1294, 398, 'en', 'Create'),
	(1295, 399, 'ua', 'Зберегти'),
	(1296, 399, 'ru', 'Сохранить'),
	(1297, 399, 'en', 'Save'),
	(1298, 400, 'ua', 'Мова'),
	(1299, 400, 'ru', 'Язык'),
	(1300, 400, 'en', 'Language'),
	(1301, 401, 'ua', 'Назва'),
	(1302, 401, 'ru', 'Название'),
	(1303, 401, 'en', 'Title'),
	(1304, 402, 'ua', 'Тривалість в годинах'),
	(1305, 402, 'ru', 'Продолжительность в часах'),
	(1306, 402, 'en', 'Duration in hours'),
	(1307, 403, 'ua', 'Кількість модулів'),
	(1308, 403, 'ru', 'Количество модулей'),
	(1309, 403, 'en', 'Number of units'),
	(1310, 404, 'ua', 'Вартість'),
	(1311, 404, 'ru', 'Стоимость'),
	(1312, 404, 'en', 'Price'),
	(1313, 405, 'ua', 'Для кого'),
	(1314, 405, 'ru', 'Для кого'),
	(1315, 405, 'en', 'For whom'),
	(1316, 406, 'ua', 'Що навчитеся'),
	(1317, 406, 'ru', 'Что научитесь'),
	(1318, 406, 'en', 'What learn'),
	(1319, 407, 'ua', 'Що отримаєте'),
	(1320, 407, 'ru', 'Что получите'),
	(1321, 407, 'en', 'Things get'),
	(1322, 408, 'ua', 'Зображення'),
	(1323, 408, 'ru', 'Изображения'),
	(1324, 408, 'en', 'Image'),
	(1325, 409, 'ua', 'Рівень'),
	(1326, 409, 'ru', 'Уровень'),
	(1327, 409, 'en', 'Level'),
	(1328, 410, 'ua', 'Початок'),
	(1329, 410, 'ru', 'Начало'),
	(1330, 410, 'en', 'Beginning'),
	(1331, 411, 'ua', 'Статус'),
	(1332, 411, 'ru', 'Статус'),
	(1333, 411, 'en', 'Status'),
	(1334, 412, 'ua', 'Поле обов\'язкове для заповнення'),
	(1335, 412, 'ru', 'Поле обязательное для заполнения'),
	(1336, 412, 'en', 'This field is required'),
	(1337, 413, 'ua', 'Введіть ціле невід\'ємне число'),
	(1338, 413, 'ru', 'Введите целое неотрицательное число'),
	(1339, 413, 'en', 'Enter a non-negative integer'),
	(1340, 322, 'ua', 'грн.'),
	(1341, 322, 'ru', 'грн.'),
	(1342, 322, 'en', 'UAH'),
	(1343, 323, 'ua', 'проплати'),
	(1344, 323, 'ru', 'проплаты'),
	(1345, 323, 'en', 'payments'),
	(1346, 324, 'ua', 'проплат'),
	(1347, 324, 'ru', 'проплат'),
	(1348, 324, 'en', 'payments'),
	(1349, 325, 'ua', 'кредит на 3 роки, помісячно:'),
	(1350, 325, 'ru', 'кредит на 3 года, помесячно:'),
	(1351, 325, 'en', 'credit for 3 years, month:'),
	(1352, 326, 'ua', 'кредит на 4 роки, помісячно:'),
	(1353, 326, 'ru', 'кредит на 4 года, помесячно:'),
	(1354, 326, 'en', 'credit for 4 years, month:'),
	(1355, 322, 'ua', 'грн.'),
	(1356, 322, 'ru', 'грн.'),
	(1357, 322, 'en', 'UAH'),
	(1358, 323, 'ua', 'проплати'),
	(1359, 323, 'ru', 'проплаты'),
	(1360, 323, 'en', 'payments'),
	(1361, 324, 'ua', 'проплат'),
	(1362, 324, 'ru', 'проплат'),
	(1363, 324, 'en', 'payments'),
	(1364, 325, 'ua', 'кредит на 3 роки, помісячно:'),
	(1365, 325, 'ru', 'кредит на 3 года, помесячно:'),
	(1366, 325, 'en', 'credit for 3 years, month:'),
	(1367, 326, 'ua', 'кредит на 4 роки, помісячно:'),
	(1368, 326, 'ru', 'кредит на 4 года, помесячно:'),
	(1369, 326, 'en', 'credit for 4 years, month:'),
	(1370, 326, 'ua', 'кредит на 4 роки, помісячно:'),
	(1371, 326, 'ru', 'кредит на 4 года, помесячно:'),
	(1372, 326, 'en', 'credit for 4 years, month:'),
	(1373, 327, 'ua', 'кредит на 5 роки, помісячно:'),
	(1374, 327, 'ru', 'кредит на 5 года, помесячно:'),
	(1375, 327, 'en', 'credit for 5 years, month:'),
	(1376, 328, 'ua', 'ПОЧАТИ КУРС />'),
	(1377, 328, 'ru', 'НАЧАТЬ КУРС />'),
	(1378, 328, 'en', 'COURSE START />'),
	(1379, 329, 'ua', 'Редагувати список модулів'),
	(1380, 329, 'ru', 'Редактировать список модулей'),
	(1381, 329, 'en', 'Edit the list of modules'),
	(1382, 330, 'ua', 'Модулі'),
	(1383, 330, 'ru', 'Модули'),
	(1384, 330, 'en', 'Modules'),
	(1385, 331, 'ua', 'У даному курсі модулів немає.'),
	(1386, 331, 'ru', 'В данном курсе модулей нет.'),
	(1387, 331, 'en', 'In this course modules there.'),
	(1388, 332, 'ua', 'Ви впевнені що хочете видалити модуль?'),
	(1389, 332, 'ru', 'Вы уверены что хотите удалить модуль?'),
	(1390, 332, 'en', 'Are you sure you want to delete the module?'),
	(1391, 333, 'ua', 'Дезактивувати модуль'),
	(1392, 333, 'ru', 'Дезактивировать модуль'),
	(1393, 333, 'en', 'Deactivate module'),
	(1394, 334, 'ua', 'Підняти модуль вгору на 1 позицію'),
	(1395, 334, 'ru', 'Поднять модуль вверх на 1 позицию'),
	(1396, 334, 'en', 'Lift the module up to the 1 position'),
	(1397, 335, 'ua', 'Опустити модуль вниз на 1 позицію'),
	(1398, 335, 'ru', 'Опустить модуль вниз на 1 позицию'),
	(1399, 335, 'en', 'Lower the module down to the 1 position'),
	(1400, 336, 'ua', 'Додати модуль'),
	(1401, 336, 'ru', 'Добавить модуль'),
	(1402, 336, 'en', 'Add your module'),
	(1403, 414, 'ua', 'Розгорнути схеми проплат'),
	(1404, 414, 'ru', 'Развернуть схемы проплат'),
	(1405, 414, 'en', 'Expand payment plan'),
	(1406, 415, 'ua', 'Згорнути схеми проплат'),
	(1407, 415, 'ru', 'Свернуть схемы проплат'),
	(1408, 415, 'en', 'Close payment plan'),
	(1409, 416, 'ua', 'Недопустимі символи!'),
	(1410, 416, 'ru', 'Недопустимые символы!'),
	(1411, 416, 'en', 'Invalid characters!'),
	(1412, 417, 'ua', 'Для відображення у вигляді не нумерованого списку, розділяйте пункти символом \';\''),
	(1413, 417, 'ru', 'Для отражения в виде не нумерованного списка, разделяйте пункты символом \';\''),
	(1414, 417, 'en', 'To display as a not numbered list, separate the items with \';\''),
	(1415, 418, 'ua', 'Email'),
	(1416, 418, 'ru', 'Email'),
	(1417, 418, 'en', 'Email'),
	(1418, 420, 'ua', 'Відео'),
	(1419, 420, 'ru', 'Видео'),
	(1420, 420, 'en', 'Video'),
	(1421, 419, 'ua', 'Введіть ціле невід\'ємне число'),
	(1422, 419, 'ru', 'Введите целое неотрицательное число'),
	(1423, 419, 'en', 'Enter a non-negative integer'),
	(1424, 421, 'ua', 'безкоштовно'),
	(1425, 421, 'ru', 'бесплатно'),
	(1426, 421, 'en', 'free'),
	(1427, 424, 'ua', 'Розгорнути відгук про навчання'),
	(1428, 424, 'ru', 'Развернуть отзыв об обучении'),
	(1429, 424, 'en', 'Open training review'),
	(1430, 423, 'ua', 'Згорнути відгук про навчання'),
	(1431, 423, 'ru', 'Свернуть отзыв об обучении'),
	(1432, 423, 'en', 'Close review of training'),
	(1433, 425, 'ua', 'кредит на '),
	(1434, 425, 'ru', 'кредит на'),
	(1435, 425, 'en', 'credit for'),
	(1436, 426, 'ua', 'роки:'),
	(1437, 426, 'ru', 'года:'),
	(1438, 426, 'en', 'years:'),
	(1439, 427, 'ua', 'Введіть дату народження в форматі дд/мм/рррр'),
	(1440, 427, 'ru', 'Введите дату рождения в формате дд/мм/гггг'),
	(1441, 427, 'en', 'Enter your date of birth in the format DD/MM/YYYY');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.module
DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `module_ID` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `module_duration_hours` int(11) NOT NULL,
  `module_duration_days` int(11) NOT NULL DEFAULT '0',
  `lesson_count` int(11) DEFAULT '0',
  `module_price` decimal(10,0) DEFAULT '0',
  `for_whom` text,
  `what_you_learn` text,
  `what_you_get` text,
  `module_img` varchar(255) DEFAULT 'courseimg1.png',
  `about_module` text,
  `owners` varchar(100) DEFAULT NULL,
  `level` enum('intern','junior','strong junior','middle','senior') DEFAULT NULL,
  `hours_in_day` int(11) DEFAULT '3',
  `days_in_week` int(11) DEFAULT '3',
  `rating` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`module_ID`),
  UNIQUE KEY `module_ID` (`module_ID`),
  KEY `course` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.module: ~24 rows (approximately)
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`module_ID`, `course`, `order`, `module_name`, `alias`, `language`, `module_duration_hours`, `module_duration_days`, `lesson_count`, `module_price`, `for_whom`, `what_you_learn`, `what_you_get`, `module_img`, `about_module`, `owners`, `level`, `hours_in_day`, `days_in_week`, `rating`) VALUES
	(1, 1, 1, 'Вступ до програмування', 'module1', 'ua', 313, 20, 15, 6500, 'для менеджерів проектів і тих, хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект;', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити;', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині;', 'courseimg1.png', NULL, '1;2;3;4;', 'strong junior', 4, 6, NULL),
	(2, 1, 4, 'Елементарна математика', 'module2', 'ua', 30, 15, 3, 3200, NULL, NULL, NULL, 'courseimg1.png', NULL, '3;4;', 'junior', 3, 3, NULL),
	(3, 1, 2, 'Алгоритмізація і програмування на мові С', 'module3', 'ua', 60, 30, 3, 3500, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;4;5;', 'junior', 3, 3, NULL),
	(4, 1, 3, 'Елементи вищої математики', 'module4', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '4;', 'junior', 3, 3, NULL),
	(7, 1, 5, 'Комп\'ютерні мережі', 'module5', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;2;', 'junior', 3, 3, NULL),
	(9, 1, 6, 'Розробка та аналіз алгоритмів. Комбінаторні алгоритми.', 'module6', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '3;4;', 'junior', 3, 3, NULL),
	(10, 1, 7, 'Дискретна математика', 'module7', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;4;', 'junior', 3, 3, NULL),
	(11, 1, 8, 'Бази даних', 'module8', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;3;', 'junior', 3, 3, NULL),
	(14, 1, 9, 'Англійська мова', 'module9', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '4;5;6;', 'junior', 3, 3, NULL),
	(16, 1, 10, 'Програмування на PHP (Частина 1)', 'module10', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '6;', 'junior', 3, 3, NULL),
	(17, 1, 11, 'Програмування на PHP (Частина 2)', 'module11', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '5;6;', 'junior', 3, 3, NULL),
	(18, 1, 13, 'Верстка на HTML, CSS', 'module12', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;', 'junior', 3, 3, NULL),
	(20, 1, 12, 'Програмування на JavaScript', 'module13', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;5;6;', 'junior', 3, 3, NULL),
	(22, 1, 14, 'Сучасні технології розробки програм', 'module14', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '5;4;6;', 'junior', 3, 3, NULL),
	(23, 1, 15, 'Командний дипломний проект', 'module15', 'ua', 60, 0, 0, 3000, NULL, NULL, NULL, 'courseimg1.png', NULL, '1;4;', 'junior', 3, 3, NULL),
	(50, 8, 1, 'Module 1.', 'module1', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, 'strong junior', 3, 3, NULL),
	(51, 8, 2, 'Module 2.', 'module2', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(54, 13, 1, 'For beginners', 'module1', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(55, 13, 2, 'Pre Intermediate', 'module2', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(56, 13, 3, 'Intermediate', 'module3', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(58, 14, 1, 'Побудова індивідуального плану успішної ІТ кар єри.', 'module2', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(59, 14, 2, 'Ефективне працевлаштування', 'module2', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(60, 14, 3, 'Психологія успіху', 'module3', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL),
	(61, 1, 16, '\';\'d;;dfg,d', 'module16', 'ua', 0, 0, 0, 0, NULL, NULL, NULL, 'courseimg1.png', NULL, NULL, NULL, 3, 3, NULL);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id_user` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL,
  `rights` tinyint(10) NOT NULL,
  PRIMARY KEY (`id_user`,`id_resource`),
  KEY `FK_permissions_lectures` (`id_resource`),
  CONSTRAINT `FK_permissions_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User rights for lectures: TINYINT(10) \r\n0 - read\r\n1 - edit\r\n2 - create\r\n3 - delete  ';

-- Dumping data for table int_ita_db.permissions: ~146 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id_user`, `id_resource`, `rights`) VALUES
	(1, 1, 15),
	(1, 2, 3),
	(1, 3, 7),
	(1, 5, 1),
	(1, 14, 7),
	(1, 15, 1),
	(1, 16, 1),
	(1, 17, 1),
	(1, 18, 1),
	(1, 19, 1),
	(1, 20, 1),
	(1, 21, 1),
	(1, 22, 1),
	(1, 23, 1),
	(1, 24, 1),
	(1, 26, 1),
	(1, 27, 1),
	(1, 31, 5),
	(1, 32, 1),
	(1, 33, 15),
	(1, 35, 1),
	(1, 36, 1),
	(1, 37, 1),
	(1, 38, 1),
	(1, 39, 1),
	(1, 40, 1),
	(1, 41, 1),
	(1, 42, 1),
	(1, 43, 1),
	(1, 44, 1),
	(1, 45, 1),
	(1, 46, 1),
	(1, 47, 1),
	(38, 1, 15),
	(38, 2, 15),
	(38, 3, 15),
	(38, 5, 15),
	(38, 14, 15),
	(38, 15, 15),
	(38, 16, 15),
	(38, 17, 15),
	(38, 18, 15),
	(38, 19, 15),
	(38, 20, 15),
	(38, 21, 15),
	(38, 22, 15),
	(38, 23, 15),
	(38, 24, 15),
	(38, 26, 15),
	(38, 27, 15),
	(38, 31, 15),
	(38, 32, 15),
	(38, 33, 15),
	(38, 34, 15),
	(38, 36, 15),
	(38, 39, 15),
	(38, 43, 15),
	(38, 44, 15),
	(38, 45, 15),
	(38, 47, 15),
	(38, 48, 15),
	(38, 49, 15),
	(38, 50, 15),
	(39, 1, 15),
	(39, 2, 15),
	(39, 14, 15),
	(39, 16, 15),
	(39, 18, 3),
	(39, 21, 3),
	(40, 2, 3),
	(40, 3, 1),
	(40, 5, 1),
	(40, 14, 1),
	(40, 15, 15),
	(40, 16, 3),
	(40, 17, 1),
	(40, 18, 1),
	(40, 19, 1),
	(40, 20, 3),
	(40, 21, 1),
	(40, 26, 7),
	(40, 27, 3),
	(40, 47, 3),
	(40, 51, 3),
	(40, 52, 3),
	(40, 53, 3),
	(40, 54, 3),
	(40, 55, 3),
	(40, 56, 3),
	(40, 57, 3),
	(41, 3, 15),
	(42, 1, 15),
	(42, 2, 15),
	(42, 3, 1),
	(42, 5, 7),
	(42, 14, 1),
	(42, 15, 1),
	(42, 16, 1),
	(42, 17, 3),
	(42, 18, 1),
	(42, 19, 1),
	(42, 20, 1),
	(42, 21, 1),
	(42, 26, 1),
	(42, 27, 1),
	(43, 1, 15),
	(43, 2, 15),
	(45, 1, 1),
	(45, 2, 1),
	(45, 3, 1),
	(45, 5, 1),
	(45, 14, 1),
	(45, 15, 1),
	(45, 16, 1),
	(45, 19, 1),
	(45, 27, 1),
	(49, 1, 1),
	(49, 2, 1),
	(49, 3, 1),
	(49, 5, 1),
	(49, 14, 1),
	(49, 15, 1),
	(49, 16, 1),
	(49, 17, 1),
	(49, 18, 1),
	(49, 19, 1),
	(49, 20, 1),
	(49, 21, 1),
	(49, 26, 1),
	(49, 27, 1),
	(49, 31, 1),
	(49, 32, 1),
	(49, 33, 1),
	(50, 1, 15),
	(50, 2, 1),
	(50, 3, 1),
	(50, 5, 1),
	(50, 14, 1),
	(50, 15, 1),
	(50, 16, 1),
	(50, 17, 1),
	(50, 18, 1),
	(50, 19, 1),
	(50, 20, 1),
	(50, 21, 1),
	(50, 26, 1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_acl_groups
DROP TABLE IF EXISTS `phpbb_acl_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_acl_groups: ~22 rows (approximately)
/*!40000 ALTER TABLE `phpbb_acl_groups` DISABLE KEYS */;
INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
	(1, 0, 88, 0, 1),
	(1, 0, 97, 0, 1),
	(1, 0, 115, 0, 1),
	(5, 0, 0, 5, 0),
	(5, 0, 0, 1, 0),
	(2, 0, 0, 6, 0),
	(3, 0, 0, 6, 0),
	(4, 0, 0, 5, 0),
	(4, 0, 0, 10, 0),
	(1, 1, 0, 17, 0),
	(2, 1, 0, 17, 0),
	(3, 1, 0, 17, 0),
	(6, 1, 0, 17, 0),
	(1, 2, 0, 17, 0),
	(2, 2, 0, 15, 0),
	(3, 2, 0, 15, 0),
	(4, 2, 0, 21, 0),
	(5, 2, 0, 14, 0),
	(5, 2, 0, 10, 0),
	(6, 2, 0, 19, 0),
	(7, 0, 0, 23, 0),
	(7, 2, 0, 24, 0);
/*!40000 ALTER TABLE `phpbb_acl_groups` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_acl_options
DROP TABLE IF EXISTS `phpbb_acl_options`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_acl_options: ~121 rows (approximately)
/*!40000 ALTER TABLE `phpbb_acl_options` DISABLE KEYS */;
INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
	(1, 'f_', 0, 1, 0),
	(2, 'f_announce', 0, 1, 0),
	(3, 'f_attach', 0, 1, 0),
	(4, 'f_bbcode', 0, 1, 0),
	(5, 'f_bump', 0, 1, 0),
	(6, 'f_delete', 0, 1, 0),
	(7, 'f_download', 0, 1, 0),
	(8, 'f_edit', 0, 1, 0),
	(9, 'f_email', 0, 1, 0),
	(10, 'f_flash', 0, 1, 0),
	(11, 'f_icons', 0, 1, 0),
	(12, 'f_ignoreflood', 0, 1, 0),
	(13, 'f_img', 0, 1, 0),
	(14, 'f_list', 0, 1, 0),
	(15, 'f_noapprove', 0, 1, 0),
	(16, 'f_poll', 0, 1, 0),
	(17, 'f_post', 0, 1, 0),
	(18, 'f_postcount', 0, 1, 0),
	(19, 'f_print', 0, 1, 0),
	(20, 'f_read', 0, 1, 0),
	(21, 'f_reply', 0, 1, 0),
	(22, 'f_report', 0, 1, 0),
	(23, 'f_search', 0, 1, 0),
	(24, 'f_sigs', 0, 1, 0),
	(25, 'f_smilies', 0, 1, 0),
	(26, 'f_sticky', 0, 1, 0),
	(27, 'f_subscribe', 0, 1, 0),
	(28, 'f_user_lock', 0, 1, 0),
	(29, 'f_vote', 0, 1, 0),
	(30, 'f_votechg', 0, 1, 0),
	(31, 'f_softdelete', 0, 1, 0),
	(32, 'm_', 1, 1, 0),
	(33, 'm_approve', 1, 1, 0),
	(34, 'm_chgposter', 1, 1, 0),
	(35, 'm_delete', 1, 1, 0),
	(36, 'm_edit', 1, 1, 0),
	(37, 'm_info', 1, 1, 0),
	(38, 'm_lock', 1, 1, 0),
	(39, 'm_merge', 1, 1, 0),
	(40, 'm_move', 1, 1, 0),
	(41, 'm_report', 1, 1, 0),
	(42, 'm_split', 1, 1, 0),
	(43, 'm_softdelete', 1, 1, 0),
	(44, 'm_ban', 1, 0, 0),
	(45, 'm_warn', 1, 0, 0),
	(46, 'a_', 1, 0, 0),
	(47, 'a_aauth', 1, 0, 0),
	(48, 'a_attach', 1, 0, 0),
	(49, 'a_authgroups', 1, 0, 0),
	(50, 'a_authusers', 1, 0, 0),
	(51, 'a_backup', 1, 0, 0),
	(52, 'a_ban', 1, 0, 0),
	(53, 'a_bbcode', 1, 0, 0),
	(54, 'a_board', 1, 0, 0),
	(55, 'a_bots', 1, 0, 0),
	(56, 'a_clearlogs', 1, 0, 0),
	(57, 'a_email', 1, 0, 0),
	(58, 'a_extensions', 1, 0, 0),
	(59, 'a_fauth', 1, 0, 0),
	(60, 'a_forum', 1, 0, 0),
	(61, 'a_forumadd', 1, 0, 0),
	(62, 'a_forumdel', 1, 0, 0),
	(63, 'a_group', 1, 0, 0),
	(64, 'a_groupadd', 1, 0, 0),
	(65, 'a_groupdel', 1, 0, 0),
	(66, 'a_icons', 1, 0, 0),
	(67, 'a_jabber', 1, 0, 0),
	(68, 'a_language', 1, 0, 0),
	(69, 'a_mauth', 1, 0, 0),
	(70, 'a_modules', 1, 0, 0),
	(71, 'a_names', 1, 0, 0),
	(72, 'a_phpinfo', 1, 0, 0),
	(73, 'a_profile', 1, 0, 0),
	(74, 'a_prune', 1, 0, 0),
	(75, 'a_ranks', 1, 0, 0),
	(76, 'a_reasons', 1, 0, 0),
	(77, 'a_roles', 1, 0, 0),
	(78, 'a_search', 1, 0, 0),
	(79, 'a_server', 1, 0, 0),
	(80, 'a_styles', 1, 0, 0),
	(81, 'a_switchperm', 1, 0, 0),
	(82, 'a_uauth', 1, 0, 0),
	(83, 'a_user', 1, 0, 0),
	(84, 'a_userdel', 1, 0, 0),
	(85, 'a_viewauth', 1, 0, 0),
	(86, 'a_viewlogs', 1, 0, 0),
	(87, 'a_words', 1, 0, 0),
	(88, 'u_', 1, 0, 0),
	(89, 'u_attach', 1, 0, 0),
	(90, 'u_chgavatar', 1, 0, 0),
	(91, 'u_chgcensors', 1, 0, 0),
	(92, 'u_chgemail', 1, 0, 0),
	(93, 'u_chggrp', 1, 0, 0),
	(94, 'u_chgname', 1, 0, 0),
	(95, 'u_chgpasswd', 1, 0, 0),
	(96, 'u_chgprofileinfo', 1, 0, 0),
	(97, 'u_download', 1, 0, 0),
	(98, 'u_hideonline', 1, 0, 0),
	(99, 'u_ignoreflood', 1, 0, 0),
	(100, 'u_masspm', 1, 0, 0),
	(101, 'u_masspm_group', 1, 0, 0),
	(102, 'u_pm_attach', 1, 0, 0),
	(103, 'u_pm_bbcode', 1, 0, 0),
	(104, 'u_pm_delete', 1, 0, 0),
	(105, 'u_pm_download', 1, 0, 0),
	(106, 'u_pm_edit', 1, 0, 0),
	(107, 'u_pm_emailpm', 1, 0, 0),
	(108, 'u_pm_flash', 1, 0, 0),
	(109, 'u_pm_forward', 1, 0, 0),
	(110, 'u_pm_img', 1, 0, 0),
	(111, 'u_pm_printpm', 1, 0, 0),
	(112, 'u_pm_smilies', 1, 0, 0),
	(113, 'u_readpm', 1, 0, 0),
	(114, 'u_savedrafts', 1, 0, 0),
	(115, 'u_search', 1, 0, 0),
	(116, 'u_sendemail', 1, 0, 0),
	(117, 'u_sendim', 1, 0, 0),
	(118, 'u_sendpm', 1, 0, 0),
	(119, 'u_sig', 1, 0, 0),
	(120, 'u_viewonline', 1, 0, 0),
	(121, 'u_viewprofile', 1, 0, 0);
/*!40000 ALTER TABLE `phpbb_acl_options` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_acl_roles
DROP TABLE IF EXISTS `phpbb_acl_roles`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_acl_roles: ~24 rows (approximately)
/*!40000 ALTER TABLE `phpbb_acl_roles` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
	(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
	(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
	(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
	(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
	(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
	(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
	(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
	(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
	(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
	(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
	(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
	(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
	(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
	(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
	(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
	(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
	(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
	(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
	(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
	(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
	(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
	(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
	(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
	(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);
/*!40000 ALTER TABLE `phpbb_acl_roles` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_acl_roles_data
DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_acl_roles_data: ~406 rows (approximately)
/*!40000 ALTER TABLE `phpbb_acl_roles_data` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
	(1, 46, 1),
	(1, 48, 1),
	(1, 49, 1),
	(1, 50, 1),
	(1, 52, 1),
	(1, 53, 1),
	(1, 54, 1),
	(1, 58, 1),
	(1, 59, 1),
	(1, 60, 1),
	(1, 61, 1),
	(1, 62, 1),
	(1, 63, 1),
	(1, 64, 1),
	(1, 65, 1),
	(1, 66, 1),
	(1, 69, 1),
	(1, 71, 1),
	(1, 73, 1),
	(1, 74, 1),
	(1, 75, 1),
	(1, 76, 1),
	(1, 82, 1),
	(1, 83, 1),
	(1, 84, 1),
	(1, 85, 1),
	(1, 86, 1),
	(1, 87, 1),
	(2, 46, 1),
	(2, 49, 1),
	(2, 50, 1),
	(2, 59, 1),
	(2, 60, 1),
	(2, 61, 1),
	(2, 62, 1),
	(2, 69, 1),
	(2, 74, 1),
	(2, 82, 1),
	(2, 85, 1),
	(2, 86, 1),
	(3, 46, 1),
	(3, 49, 1),
	(3, 50, 1),
	(3, 52, 1),
	(3, 63, 1),
	(3, 64, 1),
	(3, 65, 1),
	(3, 75, 1),
	(3, 82, 1),
	(3, 83, 1),
	(3, 85, 1),
	(3, 86, 1),
	(4, 46, 1),
	(4, 47, 1),
	(4, 48, 1),
	(4, 49, 1),
	(4, 50, 1),
	(4, 51, 1),
	(4, 52, 1),
	(4, 53, 1),
	(4, 54, 1),
	(4, 55, 1),
	(4, 56, 1),
	(4, 57, 1),
	(4, 58, 1),
	(4, 59, 1),
	(4, 60, 1),
	(4, 61, 1),
	(4, 62, 1),
	(4, 63, 1),
	(4, 64, 1),
	(4, 65, 1),
	(4, 66, 1),
	(4, 67, 1),
	(4, 68, 1),
	(4, 69, 1),
	(4, 70, 1),
	(4, 71, 1),
	(4, 72, 1),
	(4, 73, 1),
	(4, 74, 1),
	(4, 75, 1),
	(4, 76, 1),
	(4, 77, 1),
	(4, 78, 1),
	(4, 79, 1),
	(4, 80, 1),
	(4, 81, 1),
	(4, 82, 1),
	(4, 83, 1),
	(4, 84, 1),
	(4, 85, 1),
	(4, 86, 1),
	(4, 87, 1),
	(5, 88, 1),
	(5, 89, 1),
	(5, 90, 1),
	(5, 91, 1),
	(5, 92, 1),
	(5, 93, 1),
	(5, 94, 1),
	(5, 95, 1),
	(5, 96, 1),
	(5, 97, 1),
	(5, 98, 1),
	(5, 99, 1),
	(5, 100, 1),
	(5, 101, 1),
	(5, 102, 1),
	(5, 103, 1),
	(5, 104, 1),
	(5, 105, 1),
	(5, 106, 1),
	(5, 107, 1),
	(5, 108, 1),
	(5, 109, 1),
	(5, 110, 1),
	(5, 111, 1),
	(5, 112, 1),
	(5, 113, 1),
	(5, 114, 1),
	(5, 115, 1),
	(5, 116, 1),
	(5, 117, 1),
	(5, 118, 1),
	(5, 119, 1),
	(5, 120, 1),
	(5, 121, 1),
	(6, 88, 1),
	(6, 89, 1),
	(6, 90, 1),
	(6, 91, 1),
	(6, 92, 1),
	(6, 95, 1),
	(6, 96, 1),
	(6, 97, 1),
	(6, 98, 1),
	(6, 100, 1),
	(6, 101, 1),
	(6, 102, 1),
	(6, 103, 1),
	(6, 104, 1),
	(6, 105, 1),
	(6, 106, 1),
	(6, 107, 1),
	(6, 110, 1),
	(6, 111, 1),
	(6, 112, 1),
	(6, 113, 1),
	(6, 114, 1),
	(6, 115, 1),
	(6, 116, 1),
	(6, 117, 1),
	(6, 118, 1),
	(6, 119, 1),
	(6, 121, 1),
	(7, 88, 1),
	(7, 90, 1),
	(7, 91, 1),
	(7, 92, 1),
	(7, 95, 1),
	(7, 96, 1),
	(7, 97, 1),
	(7, 98, 1),
	(7, 103, 1),
	(7, 104, 1),
	(7, 105, 1),
	(7, 106, 1),
	(7, 109, 1),
	(7, 110, 1),
	(7, 111, 1),
	(7, 112, 1),
	(7, 113, 1),
	(7, 118, 1),
	(7, 119, 1),
	(7, 121, 1),
	(8, 88, 1),
	(8, 90, 1),
	(8, 91, 1),
	(8, 92, 1),
	(8, 95, 1),
	(8, 97, 1),
	(8, 98, 1),
	(8, 100, 0),
	(8, 101, 0),
	(8, 113, 0),
	(8, 118, 0),
	(8, 119, 1),
	(8, 121, 1),
	(9, 88, 1),
	(9, 90, 0),
	(9, 91, 1),
	(9, 92, 1),
	(9, 95, 1),
	(9, 96, 1),
	(9, 97, 1),
	(9, 98, 1),
	(9, 103, 1),
	(9, 104, 1),
	(9, 105, 1),
	(9, 106, 1),
	(9, 109, 1),
	(9, 110, 1),
	(9, 111, 1),
	(9, 112, 1),
	(9, 113, 1),
	(9, 118, 1),
	(9, 119, 1),
	(9, 121, 1),
	(10, 32, 1),
	(10, 33, 1),
	(10, 34, 1),
	(10, 35, 1),
	(10, 36, 1),
	(10, 37, 1),
	(10, 38, 1),
	(10, 39, 1),
	(10, 40, 1),
	(10, 41, 1),
	(10, 42, 1),
	(10, 43, 1),
	(10, 44, 1),
	(10, 45, 1),
	(11, 32, 1),
	(11, 33, 1),
	(11, 35, 1),
	(11, 36, 1),
	(11, 37, 1),
	(11, 38, 1),
	(11, 39, 1),
	(11, 40, 1),
	(11, 41, 1),
	(11, 42, 1),
	(11, 43, 1),
	(11, 45, 1),
	(12, 32, 1),
	(12, 35, 1),
	(12, 36, 1),
	(12, 37, 1),
	(12, 41, 1),
	(12, 43, 1),
	(13, 32, 1),
	(13, 33, 1),
	(13, 36, 1),
	(14, 1, 1),
	(14, 2, 1),
	(14, 3, 1),
	(14, 4, 1),
	(14, 5, 1),
	(14, 6, 1),
	(14, 7, 1),
	(14, 8, 1),
	(14, 9, 1),
	(14, 10, 1),
	(14, 11, 1),
	(14, 12, 1),
	(14, 13, 1),
	(14, 14, 1),
	(14, 15, 1),
	(14, 16, 1),
	(14, 17, 1),
	(14, 18, 1),
	(14, 19, 1),
	(14, 20, 1),
	(14, 21, 1),
	(14, 22, 1),
	(14, 23, 1),
	(14, 24, 1),
	(14, 25, 1),
	(14, 26, 1),
	(14, 27, 1),
	(14, 28, 1),
	(14, 29, 1),
	(14, 30, 1),
	(14, 31, 1),
	(15, 1, 1),
	(15, 3, 1),
	(15, 4, 1),
	(15, 5, 1),
	(15, 6, 1),
	(15, 7, 1),
	(15, 8, 1),
	(15, 9, 1),
	(15, 11, 1),
	(15, 13, 1),
	(15, 14, 1),
	(15, 15, 1),
	(15, 17, 1),
	(15, 18, 1),
	(15, 19, 1),
	(15, 20, 1),
	(15, 21, 1),
	(15, 22, 1),
	(15, 23, 1),
	(15, 24, 1),
	(15, 25, 1),
	(15, 27, 1),
	(15, 29, 1),
	(15, 30, 1),
	(15, 31, 1),
	(16, 1, 0),
	(17, 1, 1),
	(17, 7, 1),
	(17, 14, 1),
	(17, 19, 1),
	(17, 20, 1),
	(17, 23, 1),
	(17, 27, 1),
	(18, 1, 1),
	(18, 4, 1),
	(18, 7, 1),
	(18, 8, 1),
	(18, 9, 1),
	(18, 13, 1),
	(18, 14, 1),
	(18, 15, 1),
	(18, 17, 1),
	(18, 18, 1),
	(18, 19, 1),
	(18, 20, 1),
	(18, 21, 1),
	(18, 22, 1),
	(18, 23, 1),
	(18, 24, 1),
	(18, 25, 1),
	(18, 27, 1),
	(18, 29, 1),
	(18, 31, 1),
	(19, 1, 1),
	(19, 7, 1),
	(19, 14, 1),
	(19, 19, 1),
	(19, 20, 1),
	(20, 1, 1),
	(20, 3, 1),
	(20, 4, 1),
	(20, 7, 1),
	(20, 8, 1),
	(20, 9, 1),
	(20, 13, 1),
	(20, 14, 1),
	(20, 15, 0),
	(20, 17, 1),
	(20, 18, 1),
	(20, 19, 1),
	(20, 20, 1),
	(20, 21, 1),
	(20, 22, 1),
	(20, 23, 1),
	(20, 24, 1),
	(20, 25, 1),
	(20, 27, 1),
	(20, 29, 1),
	(20, 31, 1),
	(21, 1, 1),
	(21, 3, 1),
	(21, 4, 1),
	(21, 5, 1),
	(21, 6, 1),
	(21, 7, 1),
	(21, 8, 1),
	(21, 9, 1),
	(21, 11, 1),
	(21, 13, 1),
	(21, 14, 1),
	(21, 15, 1),
	(21, 16, 1),
	(21, 17, 1),
	(21, 18, 1),
	(21, 19, 1),
	(21, 20, 1),
	(21, 21, 1),
	(21, 22, 1),
	(21, 23, 1),
	(21, 24, 1),
	(21, 25, 1),
	(21, 27, 1),
	(21, 29, 1),
	(21, 30, 1),
	(21, 31, 1),
	(22, 1, 1),
	(22, 4, 1),
	(22, 7, 1),
	(22, 8, 1),
	(22, 9, 1),
	(22, 13, 1),
	(22, 14, 1),
	(22, 15, 1),
	(22, 16, 1),
	(22, 17, 1),
	(22, 18, 1),
	(22, 19, 1),
	(22, 20, 1),
	(22, 21, 1),
	(22, 22, 1),
	(22, 23, 1),
	(22, 24, 1),
	(22, 25, 1),
	(22, 27, 1),
	(22, 29, 1),
	(22, 31, 1),
	(23, 96, 0),
	(23, 100, 0),
	(23, 101, 0),
	(23, 118, 0),
	(24, 15, 0);
/*!40000 ALTER TABLE `phpbb_acl_roles_data` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_acl_users
DROP TABLE IF EXISTS `phpbb_acl_users`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_acl_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_acl_users` DISABLE KEYS */;
INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
	(2, 0, 0, 5, 0);
/*!40000 ALTER TABLE `phpbb_acl_users` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_attachments
DROP TABLE IF EXISTS `phpbb_attachments`;
CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_attachments: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_attachments` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_banlist
DROP TABLE IF EXISTS `phpbb_banlist`;
CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_banlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_banlist` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_bbcodes
DROP TABLE IF EXISTS `phpbb_bbcodes`;
CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_bbcodes: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_bbcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bbcodes` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_bookmarks
DROP TABLE IF EXISTS `phpbb_bookmarks`;
CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_bookmarks: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bookmarks` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_bots
DROP TABLE IF EXISTS `phpbb_bots`;
CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_bots: ~45 rows (approximately)
/*!40000 ALTER TABLE `phpbb_bots` DISABLE KEYS */;
INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
	(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
	(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
	(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
	(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
	(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
	(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
	(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
	(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
	(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
	(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
	(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
	(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
	(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
	(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
	(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
	(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
	(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
	(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
	(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
	(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
	(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
	(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
	(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
	(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
	(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
	(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
	(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
	(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
	(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
	(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
	(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
	(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
	(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
	(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
	(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
	(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
	(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
	(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
	(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
	(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
	(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
	(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
	(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
	(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
	(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');
/*!40000 ALTER TABLE `phpbb_bots` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_config
DROP TABLE IF EXISTS `phpbb_config`;
CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_config: ~296 rows (approximately)
/*!40000 ALTER TABLE `phpbb_config` DISABLE KEYS */;
INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
	('active_sessions', '0', 0),
	('allow_attachments', '1', 0),
	('allow_autologin', '1', 0),
	('allow_avatar', '1', 0),
	('allow_avatar_gravatar', '0', 0),
	('allow_avatar_local', '0', 0),
	('allow_avatar_remote', '0', 0),
	('allow_avatar_remote_upload', '0', 0),
	('allow_avatar_upload', '1', 0),
	('allow_bbcode', '1', 0),
	('allow_birthdays', '1', 0),
	('allow_bookmarks', '1', 0),
	('allow_cdn', '0', 0),
	('allow_emailreuse', '0', 0),
	('allow_forum_notify', '1', 0),
	('allow_live_searches', '1', 0),
	('allow_mass_pm', '1', 0),
	('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
	('allow_namechange', '0', 0),
	('allow_nocensors', '0', 0),
	('allow_password_reset', '1', 0),
	('allow_pm_attach', '0', 0),
	('allow_pm_report', '1', 0),
	('allow_post_flash', '1', 0),
	('allow_post_links', '1', 0),
	('allow_privmsg', '1', 0),
	('allow_quick_reply', '1', 0),
	('allow_sig', '1', 0),
	('allow_sig_bbcode', '1', 0),
	('allow_sig_flash', '0', 0),
	('allow_sig_img', '1', 0),
	('allow_sig_links', '1', 0),
	('allow_sig_pm', '1', 0),
	('allow_sig_smilies', '1', 0),
	('allow_smilies', '1', 0),
	('allow_topic_notify', '1', 0),
	('assets_version', '1', 0),
	('attachment_quota', '52428800', 0),
	('auth_bbcode_pm', '1', 0),
	('auth_flash_pm', '0', 0),
	('auth_img_pm', '1', 0),
	('auth_method', 'db', 0),
	('auth_smilies_pm', '1', 0),
	('avatar_filesize', '6144', 0),
	('avatar_gallery_path', 'images/avatars/gallery', 0),
	('avatar_max_height', '90', 0),
	('avatar_max_width', '90', 0),
	('avatar_min_height', '20', 0),
	('avatar_min_width', '20', 0),
	('avatar_path', 'images/avatars/upload', 0),
	('avatar_salt', '3fb48adc0dd274aaf401e3442d2697a0', 0),
	('board_contact', 'intita.hr@gmail.com', 0),
	('board_contact_name', '', 0),
	('board_disable', '0', 0),
	('board_disable_msg', '', 0),
	('board_email', 'intita.hr@gmail.com', 0),
	('board_email_form', '0', 0),
	('board_email_sig', 'Дякуємо, Адміністрація', 0),
	('board_hide_emails', '1', 0),
	('board_index_text', '', 0),
	('board_startdate', '1431076924', 0),
	('board_timezone', 'UTC', 0),
	('browser_check', '1', 0),
	('bump_interval', '10', 0),
	('bump_type', 'd', 0),
	('cache_gc', '7200', 0),
	('cache_last_gc', '1433429448', 1),
	('captcha_gd', '1', 0),
	('captcha_gd_3d_noise', '1', 0),
	('captcha_gd_fonts', '1', 0),
	('captcha_gd_foreground_noise', '0', 0),
	('captcha_gd_wave', '0', 0),
	('captcha_gd_x_grid', '25', 0),
	('captcha_gd_y_grid', '25', 0),
	('captcha_plugin', 'core.captcha.plugins.gd', 0),
	('check_attachment_content', '1', 0),
	('check_dnsbl', '0', 0),
	('chg_passforce', '0', 0),
	('confirm_refresh', '1', 0),
	('contact_admin_form_enable', '1', 0),
	('cookie_domain', 'intita', 0),
	('cookie_name', 'phpbb3_6vpfb', 0),
	('cookie_path', '/', 0),
	('cookie_secure', '0', 0),
	('coppa_enable', '0', 0),
	('coppa_fax', '', 0),
	('coppa_mail', '', 0),
	('cron_lock', '0', 1),
	('database_gc', '604800', 0),
	('database_last_gc', '1431077130', 1),
	('dbms_version', '5.5.41-log', 0),
	('default_dateformat', 'D M d, Y g:i a', 0),
	('default_lang', 'uk', 0),
	('default_style', '1', 0),
	('delete_time', '0', 0),
	('display_last_edited', '1', 0),
	('display_last_subject', '1', 0),
	('display_order', '0', 0),
	('edit_time', '0', 0),
	('email_check_mx', '1', 0),
	('email_enable', '1', 0),
	('email_function_name', 'mail', 0),
	('email_max_chunk_size', '50', 0),
	('email_package_size', '20', 0),
	('enable_confirm', '1', 0),
	('enable_mod_rewrite', '0', 0),
	('enable_pm_icons', '1', 0),
	('enable_post_confirm', '1', 0),
	('extension_force_unstable', '0', 0),
	('feed_enable', '1', 0),
	('feed_forum', '1', 0),
	('feed_http_auth', '0', 0),
	('feed_item_statistics', '1', 0),
	('feed_limit_post', '15', 0),
	('feed_limit_topic', '10', 0),
	('feed_overall', '1', 0),
	('feed_overall_forums', '0', 0),
	('feed_topic', '1', 0),
	('feed_topics_active', '0', 0),
	('feed_topics_new', '1', 0),
	('flood_interval', '15', 0),
	('force_server_vars', '0', 0),
	('form_token_lifetime', '7200', 0),
	('form_token_mintime', '0', 0),
	('form_token_sid_guests', '1', 0),
	('forward_pm', '1', 0),
	('forwarded_for_check', '0', 0),
	('full_folder_action', '2', 0),
	('fulltext_mysql_max_word_len', '254', 0),
	('fulltext_mysql_min_word_len', '4', 0),
	('fulltext_native_common_thres', '5', 0),
	('fulltext_native_load_upd', '1', 0),
	('fulltext_native_max_chars', '14', 0),
	('fulltext_native_min_chars', '3', 0),
	('fulltext_postgres_max_word_len', '254', 0),
	('fulltext_postgres_min_word_len', '4', 0),
	('fulltext_postgres_ts_name', 'simple', 0),
	('fulltext_sphinx_indexer_mem_limit', '512', 0),
	('fulltext_sphinx_stopwords', '0', 0),
	('gzip_compress', '0', 0),
	('hot_threshold', '25', 0),
	('icons_path', 'images/icons', 0),
	('img_create_thumbnail', '0', 0),
	('img_display_inlined', '1', 0),
	('img_imagick', 'd:/openserver/modules/imagemagick', 0),
	('img_link_height', '0', 0),
	('img_link_width', '0', 0),
	('img_max_height', '0', 0),
	('img_max_thumb_width', '400', 0),
	('img_max_width', '0', 0),
	('img_min_thumb_filesize', '12000', 0),
	('ip_check', '3', 0),
	('ip_login_limit_max', '50', 0),
	('ip_login_limit_time', '21600', 0),
	('ip_login_limit_use_forwarded', '0', 0),
	('jab_enable', '0', 0),
	('jab_host', '', 0),
	('jab_package_size', '20', 0),
	('jab_password', '', 0),
	('jab_port', '5222', 0),
	('jab_use_ssl', '0', 0),
	('jab_username', '', 0),
	('last_queue_run', '0', 1),
	('ldap_base_dn', '', 0),
	('ldap_email', '', 0),
	('ldap_password', '', 0),
	('ldap_port', '', 0),
	('ldap_server', '', 0),
	('ldap_uid', '', 0),
	('ldap_user', '', 0),
	('ldap_user_filter', '', 0),
	('legend_sort_groupname', '0', 0),
	('limit_load', '0', 0),
	('limit_search_load', '0', 0),
	('load_anon_lastread', '0', 0),
	('load_birthdays', '1', 0),
	('load_cpf_memberlist', '1', 0),
	('load_cpf_pm', '1', 0),
	('load_cpf_viewprofile', '1', 0),
	('load_cpf_viewtopic', '1', 0),
	('load_db_lastread', '1', 0),
	('load_db_track', '1', 0),
	('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0),
	('load_jumpbox', '1', 0),
	('load_moderators', '1', 0),
	('load_notifications', '1', 0),
	('load_online', '1', 0),
	('load_online_guests', '1', 0),
	('load_online_time', '5', 0),
	('load_onlinetrack', '1', 0),
	('load_search', '1', 0),
	('load_tplcompile', '0', 0),
	('load_unreads_search', '1', 0),
	('load_user_activity', '1', 0),
	('max_attachments', '3', 0),
	('max_attachments_pm', '1', 0),
	('max_autologin_time', '0', 0),
	('max_filesize', '262144', 0),
	('max_filesize_pm', '262144', 0),
	('max_login_attempts', '3', 0),
	('max_name_chars', '20', 0),
	('max_num_search_keywords', '10', 0),
	('max_pass_chars', '100', 0),
	('max_poll_options', '10', 0),
	('max_post_chars', '60000', 0),
	('max_post_font_size', '200', 0),
	('max_post_img_height', '0', 0),
	('max_post_img_width', '0', 0),
	('max_post_smilies', '0', 0),
	('max_post_urls', '0', 0),
	('max_quote_depth', '3', 0),
	('max_reg_attempts', '5', 0),
	('max_sig_chars', '255', 0),
	('max_sig_font_size', '200', 0),
	('max_sig_img_height', '0', 0),
	('max_sig_img_width', '0', 0),
	('max_sig_smilies', '0', 0),
	('max_sig_urls', '5', 0),
	('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
	('min_name_chars', '3', 0),
	('min_pass_chars', '6', 0),
	('min_post_chars', '1', 0),
	('min_search_author_chars', '3', 0),
	('new_member_group_default', '0', 0),
	('new_member_post_limit', '3', 0),
	('newest_user_colour', '', 1),
	('newest_user_id', '48', 1),
	('newest_username', 'Ivanna', 1),
	('num_files', '0', 1),
	('num_posts', '3', 1),
	('num_topics', '3', 1),
	('num_users', '2', 1),
	('override_user_style', '0', 0),
	('pass_complex', 'PASS_TYPE_ANY', 0),
	('plupload_last_gc', '0', 1),
	('plupload_salt', '817854cf7a4792286ce9f1c9f42f593c', 0),
	('pm_edit_time', '0', 0),
	('pm_max_boxes', '4', 0),
	('pm_max_msgs', '50', 0),
	('pm_max_recipients', '0', 0),
	('posts_per_page', '10', 0),
	('print_pm', '1', 0),
	('questionnaire_unique_id', '793ec7662bd4d575', 0),
	('queue_interval', '60', 0),
	('rand_seed', '7c4a292e948f0a2cd721a6c6a5bda1d1', 1),
	('rand_seed_last_update', '1434633857', 1),
	('ranks_path', 'images/ranks', 0),
	('read_notification_expire_days', '30', 0),
	('read_notification_gc', '86400', 0),
	('read_notification_last_gc', '1434633857', 1),
	('record_online_date', '1431077095', 1),
	('record_online_users', '2', 1),
	('referer_validation', '1', 0),
	('require_activation', '0', 0),
	('script_path', '/forum', 0),
	('search_anonymous_interval', '0', 0),
	('search_block_size', '250', 0),
	('search_gc', '7200', 0),
	('search_indexing_state', '', 1),
	('search_interval', '0', 0),
	('search_last_gc', '1432142776', 1),
	('search_store_results', '1800', 0),
	('search_type', '\\phpbb\\search\\fulltext_native', 0),
	('secure_allow_deny', '1', 0),
	('secure_allow_empty_referer', '1', 0),
	('secure_downloads', '0', 0),
	('server_name', 'intita', 0),
	('server_port', '80', 0),
	('server_protocol', 'http://', 0),
	('session_gc', '3600', 0),
	('session_last_gc', '1433248691', 1),
	('session_length', '3600', 0),
	('site_desc', 'IT Академія', 0),
	('site_home_text', '', 0),
	('site_home_url', '', 0),
	('sitename', 'intita.itatests.com', 0),
	('smilies_path', 'images/smilies', 0),
	('smilies_per_page', '50', 0),
	('smtp_auth_method', 'PLAIN', 0),
	('smtp_delivery', '0', 0),
	('smtp_host', '', 0),
	('smtp_password', '', 0),
	('smtp_port', '25', 0),
	('smtp_username', '', 0),
	('teampage_forums', '1', 0),
	('teampage_memberships', '1', 0),
	('topics_per_page', '25', 0),
	('tpl_allow_php', '0', 0),
	('upload_dir_size', '0', 1),
	('upload_icons_path', 'images/upload_icons', 0),
	('upload_path', 'files', 0),
	('use_system_cron', '0', 0),
	('version', '3.1.4', 0),
	('warnings_expire_days', '90', 0),
	('warnings_gc', '14400', 0),
	('warnings_last_gc', '1434631453', 1);
/*!40000 ALTER TABLE `phpbb_config` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_config_text
DROP TABLE IF EXISTS `phpbb_config_text`;
CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_config_text: ~4 rows (approximately)
/*!40000 ALTER TABLE `phpbb_config_text` DISABLE KEYS */;
INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
	('contact_admin_info', ''),
	('contact_admin_info_bitfield', ''),
	('contact_admin_info_flags', '7'),
	('contact_admin_info_uid', '');
/*!40000 ALTER TABLE `phpbb_config_text` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_confirm
DROP TABLE IF EXISTS `phpbb_confirm`;
CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_confirm: ~3 rows (approximately)
/*!40000 ALTER TABLE `phpbb_confirm` DISABLE KEYS */;
INSERT INTO `phpbb_confirm` (`confirm_id`, `session_id`, `confirm_type`, `code`, `seed`, `attempts`) VALUES
	('2d1a7a021e037ff5af01e0864d8867d3', '560a1b42c729bbe96a34f5c2603da1f1', 1, '6FYV5J', 420831711, 0),
	('532508a29f9a165b7c886f55e8ce85b5', 'cd2f1509ecfaae31d6aab37c0aca96f7', 1, '646RK6A', 1777825899, 0),
	('1b165063bd8dc1863409c71f7c0f6045', 'fb598984019bddbe0987715fbaa4b688', 1, '4IF79S', 1563347645, 0);
/*!40000 ALTER TABLE `phpbb_confirm` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_disallow
DROP TABLE IF EXISTS `phpbb_disallow`;
CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_disallow: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_disallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_disallow` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_drafts
DROP TABLE IF EXISTS `phpbb_drafts`;
CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_drafts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_drafts` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_ext
DROP TABLE IF EXISTS `phpbb_ext`;
CREATE TABLE IF NOT EXISTS `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_ext: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_ext` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_extensions
DROP TABLE IF EXISTS `phpbb_extensions`;
CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_extensions: ~66 rows (approximately)
/*!40000 ALTER TABLE `phpbb_extensions` DISABLE KEYS */;
INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
	(1, 1, 'gif'),
	(2, 1, 'png'),
	(3, 1, 'jpeg'),
	(4, 1, 'jpg'),
	(5, 1, 'tif'),
	(6, 1, 'tiff'),
	(7, 1, 'tga'),
	(8, 2, 'gtar'),
	(9, 2, 'gz'),
	(10, 2, 'tar'),
	(11, 2, 'zip'),
	(12, 2, 'rar'),
	(13, 2, 'ace'),
	(14, 2, 'torrent'),
	(15, 2, 'tgz'),
	(16, 2, 'bz2'),
	(17, 2, '7z'),
	(18, 3, 'txt'),
	(19, 3, 'c'),
	(20, 3, 'h'),
	(21, 3, 'cpp'),
	(22, 3, 'hpp'),
	(23, 3, 'diz'),
	(24, 3, 'csv'),
	(25, 3, 'ini'),
	(26, 3, 'log'),
	(27, 3, 'js'),
	(28, 3, 'xml'),
	(29, 4, 'xls'),
	(30, 4, 'xlsx'),
	(31, 4, 'xlsm'),
	(32, 4, 'xlsb'),
	(33, 4, 'doc'),
	(34, 4, 'docx'),
	(35, 4, 'docm'),
	(36, 4, 'dot'),
	(37, 4, 'dotx'),
	(38, 4, 'dotm'),
	(39, 4, 'pdf'),
	(40, 4, 'ai'),
	(41, 4, 'ps'),
	(42, 4, 'ppt'),
	(43, 4, 'pptx'),
	(44, 4, 'pptm'),
	(45, 4, 'odg'),
	(46, 4, 'odp'),
	(47, 4, 'ods'),
	(48, 4, 'odt'),
	(49, 4, 'rtf'),
	(50, 5, 'rm'),
	(51, 5, 'ram'),
	(52, 6, 'wma'),
	(53, 6, 'wmv'),
	(54, 7, 'swf'),
	(55, 8, 'mov'),
	(56, 8, 'm4v'),
	(57, 8, 'm4a'),
	(58, 8, 'mp4'),
	(59, 8, '3gp'),
	(60, 8, '3g2'),
	(61, 8, 'qt'),
	(62, 9, 'mpeg'),
	(63, 9, 'mpg'),
	(64, 9, 'mp3'),
	(65, 9, 'ogg'),
	(66, 9, 'ogm');
/*!40000 ALTER TABLE `phpbb_extensions` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_extension_groups
DROP TABLE IF EXISTS `phpbb_extension_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_extension_groups: ~9 rows (approximately)
/*!40000 ALTER TABLE `phpbb_extension_groups` DISABLE KEYS */;
INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
	(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
	(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
	(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
	(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
	(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
	(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
	(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
	(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
	(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);
/*!40000 ALTER TABLE `phpbb_extension_groups` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_forums
DROP TABLE IF EXISTS `phpbb_forums`;
CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_forums: ~2 rows (approximately)
/*!40000 ALTER TABLE `phpbb_forums` DISABLE KEYS */;
INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `forum_options`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`) VALUES
	(1, 0, 1, 4, '', 'Ваша перша категорія', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1431076924, 'intita', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0),
	(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:38:"Ваша перша категорія";i:1;i:0;}}', 'Ваш перший форум', 'Опис вашого першого форуму.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 4, 48, 'Re: 4 червня', 1433430237, 'Ivanna', '', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 4, 0, 0, 3, 0, 0);
/*!40000 ALTER TABLE `phpbb_forums` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_forums_access
DROP TABLE IF EXISTS `phpbb_forums_access`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_forums_access: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_forums_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_access` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_forums_track
DROP TABLE IF EXISTS `phpbb_forums_track`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_forums_track: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_forums_track` DISABLE KEYS */;
INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
	(2, 2, 1433430287);
/*!40000 ALTER TABLE `phpbb_forums_track` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_forums_watch
DROP TABLE IF EXISTS `phpbb_forums_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_forums_watch: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_forums_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_watch` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_groups
DROP TABLE IF EXISTS `phpbb_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_groups: ~7 rows (approximately)
/*!40000 ALTER TABLE `phpbb_groups` DISABLE KEYS */;
INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
	(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
	(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
	(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
	(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
	(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
	(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
	(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
/*!40000 ALTER TABLE `phpbb_groups` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_icons
DROP TABLE IF EXISTS `phpbb_icons`;
CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_icons: ~10 rows (approximately)
/*!40000 ALTER TABLE `phpbb_icons` DISABLE KEYS */;
INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
	(1, 'misc/fire.gif', 16, 16, 1, 1),
	(2, 'smile/redface.gif', 16, 16, 9, 1),
	(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
	(4, 'misc/heart.gif', 16, 16, 4, 1),
	(5, 'misc/star.gif', 16, 16, 2, 1),
	(6, 'misc/radioactive.gif', 16, 16, 3, 1),
	(7, 'misc/thinking.gif', 16, 16, 5, 1),
	(8, 'smile/info.gif', 16, 16, 8, 1),
	(9, 'smile/question.gif', 16, 16, 6, 1),
	(10, 'smile/alert.gif', 16, 16, 7, 1);
/*!40000 ALTER TABLE `phpbb_icons` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_lang
DROP TABLE IF EXISTS `phpbb_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_lang: ~2 rows (approximately)
/*!40000 ALTER TABLE `phpbb_lang` DISABLE KEYS */;
INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
	(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited'),
	(2, 'uk', 'uk', 'Ukrainian', 'Українська', 'Black_SN');
/*!40000 ALTER TABLE `phpbb_lang` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_log
DROP TABLE IF EXISTS `phpbb_log`;
CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_log: ~4 rows (approximately)
/*!40000 ALTER TABLE `phpbb_log` DISABLE KEYS */;
INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
	(1, 0, 2, 0, 0, 0, '127.0.0.1', 1431076934, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:"3.1.4";}'),
	(2, 2, 1, 0, 0, 0, '::1', 1431693780, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1513:"SQL ERROR [ mysqli ]<br /><br />Table \'int_ita_db.phpbb_acl_groups\' doesn\'t exist [1146]<br /><br />SQL<br /><br />DELETE FROM phpbb_acl_groups\r\n		WHERE forum_id NOT IN (0, \'1\', \'2\')<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/driver.php<br /><b>LINE:</b> 855<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/mysqli.php<br /><b>LINE:</b> 193<br /><b>CALL:</b> phpbb\\db\\driver\\driver-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/factory.php<br /><b>LINE:</b> 329<br /><b>CALL:</b> phpbb\\db\\driver\\mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_admin.php<br /><b>LINE:</b> 3113<br /><b>CALL:</b> phpbb\\db\\driver\\factory-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/phpbb/cron/task/core/tidy_database.php<br /><b>LINE:</b> 50<br /><b>CALL:</b> tidy_database()<br /><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> phpbb\\cron\\task\\core\\tidy_database-&gt;run()<br /><br /><b>FILE:</b> [ROOT]/phpbb/cron/task/wrapper.php<br /><b>LINE:</b> 104<br /><b>CALL:</b> call_user_func_array()<br /><br /><b>FILE:</b> [ROOT]/cron.php<br /><b>LINE:</b> 64<br /><b>CALL:</b> phpbb\\cron\\task\\wrapper-&gt;__call()<br /><br /><b>FILE:</b> [ROOT]/cron.php<br /><b>LINE:</b> 64<br /><b>CALL:</b> phpbb\\cron\\task\\wrapper-&gt;run()<br /></div>";}'),
	(3, 2, 1, 0, 0, 0, '::1', 1433429455, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1513:"SQL ERROR [ mysqli ]<br /><br />Table \'int_ita_db.phpbb_acl_groups\' doesn\'t exist [1146]<br /><br />SQL<br /><br />DELETE FROM phpbb_acl_groups\r\n		WHERE forum_id NOT IN (0, \'1\', \'2\')<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/driver.php<br /><b>LINE:</b> 855<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/mysqli.php<br /><b>LINE:</b> 193<br /><b>CALL:</b> phpbb\\db\\driver\\driver-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/phpbb/db/driver/factory.php<br /><b>LINE:</b> 329<br /><b>CALL:</b> phpbb\\db\\driver\\mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_admin.php<br /><b>LINE:</b> 3113<br /><b>CALL:</b> phpbb\\db\\driver\\factory-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/phpbb/cron/task/core/tidy_database.php<br /><b>LINE:</b> 50<br /><b>CALL:</b> tidy_database()<br /><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> phpbb\\cron\\task\\core\\tidy_database-&gt;run()<br /><br /><b>FILE:</b> [ROOT]/phpbb/cron/task/wrapper.php<br /><b>LINE:</b> 104<br /><b>CALL:</b> call_user_func_array()<br /><br /><b>FILE:</b> [ROOT]/cron.php<br /><b>LINE:</b> 64<br /><b>CALL:</b> phpbb\\cron\\task\\wrapper-&gt;__call()<br /><br /><b>FILE:</b> [ROOT]/cron.php<br /><b>LINE:</b> 64<br /><b>CALL:</b> phpbb\\cron\\task\\wrapper-&gt;run()<br /></div>";}'),
	(4, 1, 2, 2, 3, 0, '::1', 1433430282, 'LOG_POST_APPROVED', 'a:1:{i:0;s:18:"Re: 4 червня";}');
/*!40000 ALTER TABLE `phpbb_log` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_login_attempts
DROP TABLE IF EXISTS `phpbb_login_attempts`;
CREATE TABLE IF NOT EXISTS `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_login_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_login_attempts` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_migrations
DROP TABLE IF EXISTS `phpbb_migrations`;
CREATE TABLE IF NOT EXISTS `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_migrations: ~157 rows (approximately)
/*!40000 ALTER TABLE `phpbb_migrations` DISABLE KEYS */;
INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
	('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode";i:1;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";i:2;s:57:"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module";i:3;s:39:"\\phpbb\\db\\migration\\data\\v310\\allow_cdn";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";i:5;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";i:6;s:40:"\\phpbb\\db\\migration\\data\\v310\\boardindex";i:7;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";i:8;s:45:"\\phpbb\\db\\migration\\data\\v310\\forgot_password";i:9;s:41:"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite";i:10;s:49:"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop";i:11;s:40:"\\phpbb\\db\\migration\\data\\v310\\namespaces";i:12;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";i:13;s:60:"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert";i:14;s:38:"\\phpbb\\db\\migration\\data\\v310\\plupload";i:15;s:51:"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth";i:16;s:52:"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules";i:17;s:38:"\\phpbb\\db\\migration\\data\\v310\\teampage";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha1";i:1;s:51:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\avatar_types";i:2;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";i:3;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";i:2;s:52:"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop";i:3;s:63:"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";i:5;s:54:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";i:1;s:52:"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module";i:2;s:59:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";i:1;s:50:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\board_contact_name";i:3;s:44:"\\phpbb\\db\\migration\\data\\v310\\jquery_update2";i:4;s:50:"\\phpbb\\db\\migration\\data\\v310\\live_searches_config";i:5;s:49:"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta3";i:1;s:69:"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable";i:2;s:58:"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:"\\phpbb\\db\\migration\\data\\v310\\extensions";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p2";i:2;s:41:"\\phpbb\\db\\migration\\data\\v310\\timezone_p2";i:3;s:52:"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display";i:4;s:46:"\\phpbb\\db\\migration\\data\\v310\\migrations_table";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";i:1;s:40:"\\phpbb\\db\\migration\\data\\v310\\bot_update";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";i:1;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta4";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form";i:3;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook";i:5;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype";i:7;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter";i:8;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes";i:3;s:41:"\\phpbb\\db\\migration\\data\\v310\\search_type";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";i:1;s:57:"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";i:1;s:66:"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc5";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:"\\phpbb\\db\\migration\\data\\v310\\timezone";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";i:1;s:42:"\\phpbb\\db\\migration\\data\\v31x\\style_update";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v312rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";i:1;s:49:"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v313rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1";i:1;s:54:"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic";i:2;s:71:"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha";i:3;s:59:"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url";i:4;s:60:"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v313rc1";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v314rc2";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v313";}', 1, 1, '', 1431076934, 1431076934),
	('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v314rc1";}', 1, 1, '', 1431076934, 1431076934);
/*!40000 ALTER TABLE `phpbb_migrations` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_moderator_cache
DROP TABLE IF EXISTS `phpbb_moderator_cache`;
CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_moderator_cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_moderator_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_moderator_cache` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_modules
DROP TABLE IF EXISTS `phpbb_modules`;
CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_modules: ~206 rows (approximately)
/*!40000 ALTER TABLE `phpbb_modules` DISABLE KEYS */;
INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
	(1, 1, 1, '', 'acp', 0, 1, 66, 'ACP_CAT_GENERAL', '', ''),
	(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
	(3, 1, 1, '', 'acp', 1, 18, 43, 'ACP_BOARD_CONFIGURATION', '', ''),
	(4, 1, 1, '', 'acp', 1, 44, 51, 'ACP_CLIENT_COMMUNICATION', '', ''),
	(5, 1, 1, '', 'acp', 1, 52, 65, 'ACP_SERVER_CONFIGURATION', '', ''),
	(6, 1, 1, '', 'acp', 0, 67, 86, 'ACP_CAT_FORUMS', '', ''),
	(7, 1, 1, '', 'acp', 6, 68, 73, 'ACP_MANAGE_FORUMS', '', ''),
	(8, 1, 1, '', 'acp', 6, 74, 85, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
	(9, 1, 1, '', 'acp', 0, 87, 114, 'ACP_CAT_POSTING', '', ''),
	(10, 1, 1, '', 'acp', 9, 88, 101, 'ACP_MESSAGES', '', ''),
	(11, 1, 1, '', 'acp', 9, 102, 113, 'ACP_ATTACHMENTS', '', ''),
	(12, 1, 1, '', 'acp', 0, 115, 172, 'ACP_CAT_USERGROUP', '', ''),
	(13, 1, 1, '', 'acp', 12, 116, 151, 'ACP_CAT_USERS', '', ''),
	(14, 1, 1, '', 'acp', 12, 152, 161, 'ACP_GROUPS', '', ''),
	(15, 1, 1, '', 'acp', 12, 162, 171, 'ACP_USER_SECURITY', '', ''),
	(16, 1, 1, '', 'acp', 0, 173, 222, 'ACP_CAT_PERMISSIONS', '', ''),
	(17, 1, 1, '', 'acp', 16, 176, 185, 'ACP_GLOBAL_PERMISSIONS', '', ''),
	(18, 1, 1, '', 'acp', 16, 186, 197, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
	(19, 1, 1, '', 'acp', 16, 198, 207, 'ACP_PERMISSION_ROLES', '', ''),
	(20, 1, 1, '', 'acp', 16, 208, 221, 'ACP_PERMISSION_MASKS', '', ''),
	(21, 1, 1, '', 'acp', 0, 223, 238, 'ACP_CAT_CUSTOMISE', '', ''),
	(22, 1, 1, '', 'acp', 21, 228, 233, 'ACP_STYLE_MANAGEMENT', '', ''),
	(23, 1, 1, '', 'acp', 21, 224, 227, 'ACP_EXTENSION_MANAGEMENT', '', ''),
	(24, 1, 1, '', 'acp', 21, 234, 237, 'ACP_LANGUAGE', '', ''),
	(25, 1, 1, '', 'acp', 0, 239, 258, 'ACP_CAT_MAINTENANCE', '', ''),
	(26, 1, 1, '', 'acp', 25, 240, 249, 'ACP_FORUM_LOGS', '', ''),
	(27, 1, 1, '', 'acp', 25, 250, 257, 'ACP_CAT_DATABASE', '', ''),
	(28, 1, 1, '', 'acp', 0, 259, 282, 'ACP_CAT_SYSTEM', '', ''),
	(29, 1, 1, '', 'acp', 28, 260, 263, 'ACP_AUTOMATION', '', ''),
	(30, 1, 1, '', 'acp', 28, 264, 273, 'ACP_GENERAL_TASKS', '', ''),
	(31, 1, 1, '', 'acp', 28, 274, 281, 'ACP_MODULE_MANAGEMENT', '', ''),
	(32, 1, 1, '', 'acp', 0, 283, 284, 'ACP_CAT_DOT_MODS', '', ''),
	(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
	(34, 1, 1, 'acp_attachments', 'acp', 11, 103, 104, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
	(35, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
	(36, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
	(37, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
	(38, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
	(39, 1, 1, 'acp_ban', 'acp', 15, 163, 164, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
	(40, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
	(41, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
	(42, 1, 1, 'acp_bbcodes', 'acp', 10, 89, 90, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
	(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
	(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
	(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
	(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
	(47, 1, 1, 'acp_board', 'acp', 10, 91, 92, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
	(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
	(49, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
	(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
	(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
	(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
	(53, 1, 1, 'acp_board', 'acp', 4, 45, 46, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
	(54, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
	(55, 1, 1, 'acp_board', 'acp', 5, 53, 54, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
	(56, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
	(57, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
	(58, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
	(59, 1, 1, 'acp_bots', 'acp', 30, 265, 266, 'ACP_BOTS', 'bots', 'acl_a_bots'),
	(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
	(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
	(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
	(63, 1, 1, 'acp_database', 'acp', 27, 251, 252, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
	(64, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
	(65, 1, 1, 'acp_disallow', 'acp', 15, 169, 170, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
	(66, 1, 1, 'acp_email', 'acp', 30, 267, 268, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
	(67, 1, 1, 'acp_extensions', 'acp', 23, 225, 226, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
	(68, 1, 1, 'acp_forums', 'acp', 7, 69, 70, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
	(69, 1, 1, 'acp_groups', 'acp', 14, 153, 154, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
	(70, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
	(71, 1, 1, 'acp_icons', 'acp', 10, 95, 96, 'ACP_ICONS', 'icons', 'acl_a_icons'),
	(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
	(73, 1, 1, 'acp_inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
	(74, 1, 1, 'acp_jabber', 'acp', 4, 49, 50, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
	(75, 1, 1, 'acp_language', 'acp', 24, 235, 236, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
	(76, 1, 1, 'acp_logs', 'acp', 26, 241, 242, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
	(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
	(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
	(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
	(80, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
	(81, 1, 1, 'acp_modules', 'acp', 31, 275, 276, 'ACP', 'acp', 'acl_a_modules'),
	(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'UCP', 'ucp', 'acl_a_modules'),
	(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'MCP', 'mcp', 'acl_a_modules'),
	(84, 1, 1, 'acp_permission_roles', 'acp', 19, 199, 200, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
	(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
	(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
	(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
	(88, 1, 1, 'acp_permissions', 'acp', 16, 174, 175, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
	(89, 1, 0, 'acp_permissions', 'acp', 20, 209, 210, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
	(90, 1, 1, 'acp_permissions', 'acp', 18, 187, 188, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
	(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
	(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(93, 1, 1, 'acp_permissions', 'acp', 17, 177, 178, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(94, 1, 1, 'acp_permissions', 'acp', 13, 121, 122, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(95, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(96, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(97, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(98, 1, 1, 'acp_permissions', 'acp', 14, 157, 158, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(99, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(100, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(101, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
	(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(103, 1, 1, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
	(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
	(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
	(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
	(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
	(108, 1, 1, 'acp_php_info', 'acp', 30, 269, 270, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
	(109, 1, 1, 'acp_profile', 'acp', 13, 125, 126, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
	(110, 1, 1, 'acp_prune', 'acp', 7, 71, 72, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
	(111, 1, 1, 'acp_prune', 'acp', 13, 127, 128, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
	(112, 1, 1, 'acp_ranks', 'acp', 13, 129, 130, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
	(113, 1, 1, 'acp_reasons', 'acp', 30, 271, 272, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
	(114, 1, 1, 'acp_search', 'acp', 5, 61, 62, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
	(115, 1, 1, 'acp_search', 'acp', 27, 255, 256, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
	(116, 1, 1, 'acp_send_statistics', 'acp', 5, 63, 64, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
	(117, 1, 1, 'acp_styles', 'acp', 22, 229, 230, 'ACP_STYLES', 'style', 'acl_a_styles'),
	(118, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
	(119, 1, 1, 'acp_update', 'acp', 29, 261, 262, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
	(120, 1, 1, 'acp_users', 'acp', 13, 119, 120, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
	(121, 1, 0, 'acp_users', 'acp', 13, 131, 132, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
	(122, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
	(123, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
	(124, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
	(125, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
	(126, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
	(127, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
	(128, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
	(129, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
	(130, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
	(131, 1, 1, 'acp_words', 'acp', 10, 99, 100, 'ACP_WORDS', 'words', 'acl_a_words'),
	(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
	(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
	(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
	(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
	(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
	(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
	(138, 1, 1, 'acp_permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
	(139, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
	(140, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(141, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(142, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
	(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
	(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
	(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
	(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
	(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
	(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
	(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
	(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
	(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
	(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
	(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
	(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
	(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
	(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
	(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
	(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
	(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
	(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
	(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
	(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
	(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
	(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
	(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
	(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
	(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
	(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
	(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
	(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
	(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
	(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
	(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
	(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
	(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
	(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
	(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
	(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
	(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
	(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
	(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
	(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
	(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
	(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
	(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
	(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
	(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
	(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
	(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
	(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
	(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', ''),
	(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
	(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
	(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
	(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
	(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
	(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
	(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
	(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
	(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
	(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
	(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
	(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
	(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
	(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', '');
/*!40000 ALTER TABLE `phpbb_modules` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_notifications
DROP TABLE IF EXISTS `phpbb_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_notifications: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_notifications` DISABLE KEYS */;
INSERT INTO `phpbb_notifications` (`notification_id`, `notification_type_id`, `item_id`, `item_parent_id`, `user_id`, `notification_read`, `notification_time`, `notification_data`) VALUES
	(2, 6, 4, 3, 48, 0, 1433430282, 'a:6:{s:12:"post_subject";s:18:"Re: 4 червня";s:9:"poster_id";s:2:"48";s:11:"topic_title";s:14:"4 червня";s:13:"post_username";s:0:"";s:8:"forum_id";s:1:"2";s:10:"forum_name";s:30:"Ваш перший форум";}');
/*!40000 ALTER TABLE `phpbb_notifications` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_notification_types
DROP TABLE IF EXISTS `phpbb_notification_types`;
CREATE TABLE IF NOT EXISTS `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_notification_types: ~8 rows (approximately)
/*!40000 ALTER TABLE `phpbb_notification_types` DISABLE KEYS */;
INSERT INTO `phpbb_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
	(1, 'notification.type.topic', 1),
	(2, 'notification.type.approve_topic', 1),
	(3, 'notification.type.quote', 1),
	(4, 'notification.type.bookmark', 1),
	(5, 'notification.type.post', 1),
	(6, 'notification.type.approve_post', 1),
	(7, 'notification.type.group_request', 1),
	(8, 'notification.type.post_in_queue', 1);
/*!40000 ALTER TABLE `phpbb_notification_types` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_oauth_accounts
DROP TABLE IF EXISTS `phpbb_oauth_accounts`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_oauth_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_oauth_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_oauth_tokens
DROP TABLE IF EXISTS `phpbb_oauth_tokens`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_oauth_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_poll_options
DROP TABLE IF EXISTS `phpbb_poll_options`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_poll_options: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_options` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_poll_votes
DROP TABLE IF EXISTS `phpbb_poll_votes`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_poll_votes: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_votes` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_posts
DROP TABLE IF EXISTS `phpbb_posts`;
CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_username` (`post_username`),
  KEY `post_visibility` (`post_visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `phpbb_posts` DISABLE KEYS */;
INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
	(1, 1, 2, 2, 0, '127.0.0.1', 1431076924, 0, 1, 1, 1, 1, '', 'Ласкаво просимо до phpBB3', 'Це приклад повідомлення вашого phpBB3 форуму. Здається ніби все нормально працює. Ви можете при бажанні видалити це повідомлення та продовжити налаштування вашого форуму. В процесі встановлення вашій першій категорії та вашому першому форуму було встановлено відповідні права доступу для передвстановлених груп - адміністраторів, ботів, супермодераторів, гостей, зареєстрованих користувачів та зареєстрованих користувачів COPPA. Якщо ви видалите вашу першу категорію та ваш перший форум, не забудьте надати права доступу усім цих групам до нових категорій та форумів, які ви створите. Рекомендується перейменувати вашу першу категорію та ваш перший форум та скопіювати права з них при створенні нових категорій та форумів. Успіхів!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
	(2, 2, 2, 2, 0, '127.0.0.1', 1431082457, 0, 1, 1, 1, 1, '', '8 травня', 'День пам\'яті і примирення', 'c98397723d1ed5555c63cffa2f083bf8', 0, '', 'cyjx8e6c', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
	(3, 3, 2, 2, 0, '::1', 1433429758, 0, 1, 1, 1, 1, '', '4 червня', 'Привіт1 Сьогодні 4 червня 2015 року.', '8a3520be1f494e43dee3430c8e07369e', 0, '', '19741k45', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
	(4, 3, 2, 48, 0, '::1', 1433430237, 0, 1, 1, 1, 1, '', 'Re: 4 червня', 'Ку-ку!', '2c0eff1f74b255317b1996467f3b00dd', 0, '', 'l1pykfhr', 1, 0, '', 0, 0, 0, 1, 1433430282, '', 2);
/*!40000 ALTER TABLE `phpbb_posts` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_privmsgs
DROP TABLE IF EXISTS `phpbb_privmsgs`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_privmsgs: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_privmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_privmsgs_folder
DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_privmsgs_folder: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_privmsgs_rules
DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_privmsgs_rules: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_privmsgs_to
DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_privmsgs_to: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_privmsgs_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_profile_fields
DROP TABLE IF EXISTS `phpbb_profile_fields`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_profile_fields: ~13 rows (approximately)
/*!40000 ALTER TABLE `phpbb_profile_fields` DISABLE KEYS */;
INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
	(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
	(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
	(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
	(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
	(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
	(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
	(7, 'phpbb_wlm', 'profilefields.type.string', 'phpbb_wlm', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 7, 1, 1, 0, 1, 1, 1, '', ''),
	(8, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
	(9, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
	(10, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
	(11, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
	(12, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
	(13, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');
/*!40000 ALTER TABLE `phpbb_profile_fields` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_profile_fields_data
DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_wlm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_profile_fields_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_profile_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_profile_fields_lang
DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_profile_fields_lang: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_profile_lang
DROP TABLE IF EXISTS `phpbb_profile_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_profile_lang: ~26 rows (approximately)
/*!40000 ALTER TABLE `phpbb_profile_lang` DISABLE KEYS */;
INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
	(1, 1, 'LOCATION', '', ''),
	(1, 2, 'LOCATION', '', ''),
	(2, 1, 'WEBSITE', '', ''),
	(2, 2, 'WEBSITE', '', ''),
	(3, 1, 'INTERESTS', '', ''),
	(3, 2, 'INTERESTS', '', ''),
	(4, 1, 'OCCUPATION', '', ''),
	(4, 2, 'OCCUPATION', '', ''),
	(5, 1, 'AOL', '', ''),
	(5, 2, 'AOL', '', ''),
	(6, 1, 'ICQ', '', ''),
	(6, 2, 'ICQ', '', ''),
	(7, 1, 'WLM', '', ''),
	(7, 2, 'WLM', '', ''),
	(8, 1, 'YAHOO', '', ''),
	(8, 2, 'YAHOO', '', ''),
	(9, 1, 'FACEBOOK', '', ''),
	(9, 2, 'FACEBOOK', '', ''),
	(10, 1, 'TWITTER', '', ''),
	(10, 2, 'TWITTER', '', ''),
	(11, 1, 'SKYPE', '', ''),
	(11, 2, 'SKYPE', '', ''),
	(12, 1, 'YOUTUBE', '', ''),
	(12, 2, 'YOUTUBE', '', ''),
	(13, 1, 'GOOGLEPLUS', '', ''),
	(13, 2, 'GOOGLEPLUS', '', '');
/*!40000 ALTER TABLE `phpbb_profile_lang` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_ranks
DROP TABLE IF EXISTS `phpbb_ranks`;
CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_ranks: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_ranks` DISABLE KEYS */;
INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
	(1, 'Адміністратор сайту', 0, 1, '');
/*!40000 ALTER TABLE `phpbb_ranks` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_reports
DROP TABLE IF EXISTS `phpbb_reports`;
CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_reports` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_reports_reasons
DROP TABLE IF EXISTS `phpbb_reports_reasons`;
CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_reports_reasons: ~4 rows (approximately)
/*!40000 ALTER TABLE `phpbb_reports_reasons` DISABLE KEYS */;
INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
	(1, 'warez', 'Повідомлення містить посилання на нелегальне або піратське програмне забезпечення.', 1),
	(2, 'spam', 'Повідомлення має за мету лише рекламу вебсайту або іншого продукту.', 2),
	(3, 'off_topic', 'Повідомлення не відноситься до даної теми.', 3),
	(4, 'other', 'Причина скарги на повідомлення не підпадає під жодну з цих категорій, скористайтесь полем додаткової інформації.', 4);
/*!40000 ALTER TABLE `phpbb_reports_reasons` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_search_results
DROP TABLE IF EXISTS `phpbb_search_results`;
CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_search_results: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_search_results` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_search_wordlist
DROP TABLE IF EXISTS `phpbb_search_wordlist`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_search_wordlist: ~74 rows (approximately)
/*!40000 ALTER TABLE `phpbb_search_wordlist` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
	(1, 'приклад', 0, 1),
	(2, 'повідомлення', 0, 1),
	(3, 'вашого', 0, 1),
	(4, 'phpbb3', 0, 2),
	(5, 'форуму', 0, 1),
	(6, 'здається', 0, 1),
	(7, 'ніби', 0, 1),
	(8, 'все', 0, 1),
	(9, 'нормально', 0, 1),
	(10, 'працює', 0, 1),
	(11, 'можете', 0, 1),
	(12, 'при', 0, 1),
	(13, 'бажанні', 0, 1),
	(14, 'видалити', 0, 1),
	(15, 'продовжити', 0, 1),
	(16, 'налаштування', 0, 1),
	(17, 'процесі', 0, 1),
	(18, 'встановлення', 0, 1),
	(19, 'вашій', 0, 1),
	(20, 'першій', 0, 1),
	(21, 'категорії', 0, 1),
	(22, 'вашому', 0, 1),
	(23, 'першому', 0, 1),
	(24, 'було', 0, 1),
	(25, 'встановлено', 0, 1),
	(26, 'відповідні', 0, 1),
	(27, 'права', 0, 1),
	(28, 'доступу', 0, 1),
	(29, 'для', 0, 1),
	(30, 'передвстановлених', 0, 1),
	(31, 'груп', 0, 1),
	(32, 'адміністраторів', 0, 1),
	(33, 'ботів', 0, 1),
	(34, 'супермодераторів', 0, 1),
	(35, 'гостей', 0, 1),
	(36, 'зареєстрованих', 0, 1),
	(37, 'користувачів', 0, 1),
	(38, 'coppa', 0, 1),
	(39, 'якщо', 0, 1),
	(40, 'видалите', 0, 1),
	(41, 'вашу', 0, 1),
	(42, 'першу', 0, 1),
	(43, 'категорію', 0, 1),
	(44, 'ваш', 0, 1),
	(45, 'перший', 0, 1),
	(46, 'форум', 0, 1),
	(47, 'забудьте', 0, 1),
	(48, 'надати', 0, 1),
	(49, 'усім', 0, 1),
	(50, 'цих', 0, 1),
	(51, 'групам', 0, 1),
	(52, 'нових', 0, 1),
	(53, 'категорій', 0, 1),
	(54, 'форумів', 0, 1),
	(55, 'які', 0, 1),
	(56, 'створите', 0, 1),
	(57, 'рекомендується', 0, 1),
	(58, 'перейменувати', 0, 1),
	(59, 'скопіювати', 0, 1),
	(60, 'них', 0, 1),
	(61, 'створенні', 0, 1),
	(62, 'успіхів', 0, 1),
	(63, 'ласкаво', 0, 1),
	(64, 'просимо', 0, 1),
	(65, 'день', 0, 1),
	(66, 'пам', 0, 1),
	(67, 'яті', 0, 1),
	(68, 'примирення', 0, 1),
	(69, 'травня', 0, 1),
	(70, 'привіт1', 0, 1),
	(71, 'сьогодні', 0, 1),
	(72, 'червня', 0, 3),
	(73, '2015', 0, 1),
	(74, 'року', 0, 1);
/*!40000 ALTER TABLE `phpbb_search_wordlist` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_search_wordmatch
DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_search_wordmatch: ~77 rows (approximately)
/*!40000 ALTER TABLE `phpbb_search_wordmatch` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
	(1, 1, 0),
	(1, 2, 0),
	(1, 3, 0),
	(1, 4, 0),
	(1, 4, 1),
	(1, 5, 0),
	(1, 6, 0),
	(1, 7, 0),
	(1, 8, 0),
	(1, 9, 0),
	(1, 10, 0),
	(1, 11, 0),
	(1, 12, 0),
	(1, 13, 0),
	(1, 14, 0),
	(1, 15, 0),
	(1, 16, 0),
	(1, 17, 0),
	(1, 18, 0),
	(1, 19, 0),
	(1, 20, 0),
	(1, 21, 0),
	(1, 22, 0),
	(1, 23, 0),
	(1, 24, 0),
	(1, 25, 0),
	(1, 26, 0),
	(1, 27, 0),
	(1, 28, 0),
	(1, 29, 0),
	(1, 30, 0),
	(1, 31, 0),
	(1, 32, 0),
	(1, 33, 0),
	(1, 34, 0),
	(1, 35, 0),
	(1, 36, 0),
	(1, 37, 0),
	(1, 38, 0),
	(1, 39, 0),
	(1, 40, 0),
	(1, 41, 0),
	(1, 42, 0),
	(1, 43, 0),
	(1, 44, 0),
	(1, 45, 0),
	(1, 46, 0),
	(1, 47, 0),
	(1, 48, 0),
	(1, 49, 0),
	(1, 50, 0),
	(1, 51, 0),
	(1, 52, 0),
	(1, 53, 0),
	(1, 54, 0),
	(1, 55, 0),
	(1, 56, 0),
	(1, 57, 0),
	(1, 58, 0),
	(1, 59, 0),
	(1, 60, 0),
	(1, 61, 0),
	(1, 62, 0),
	(1, 63, 1),
	(1, 64, 1),
	(2, 65, 0),
	(2, 66, 0),
	(2, 67, 0),
	(2, 68, 0),
	(2, 69, 1),
	(3, 70, 0),
	(3, 71, 0),
	(3, 72, 0),
	(3, 72, 1),
	(4, 72, 1),
	(3, 73, 0),
	(3, 74, 0);
/*!40000 ALTER TABLE `phpbb_search_wordmatch` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_sessions
DROP TABLE IF EXISTS `phpbb_sessions`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_sessions: ~2 rows (approximately)
/*!40000 ALTER TABLE `phpbb_sessions` DISABLE KEYS */;
INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
	('9b5f437fb1a3f404f2935786e213f2cf', 1, 1434631451, 1434631451, 1434633856, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '', 'index.php', 1, 0, 0, 0),
	('aa36442de314f8e0f7a088a37cce2289', 2, 1433430118, 1433430267, 1433430287, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', '', 'viewtopic.php?f=2&p=4&t=3', 1, 0, 0, 2);
/*!40000 ALTER TABLE `phpbb_sessions` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_sessions_keys
DROP TABLE IF EXISTS `phpbb_sessions_keys`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_sessions_keys: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_sessions_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sessions_keys` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_sitelist
DROP TABLE IF EXISTS `phpbb_sitelist`;
CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_sitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_sitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sitelist` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_smilies
DROP TABLE IF EXISTS `phpbb_smilies`;
CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_smilies: ~42 rows (approximately)
/*!40000 ALTER TABLE `phpbb_smilies` DISABLE KEYS */;
INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
	(1, ':D', 'Дуже щасливий', 'icon_e_biggrin.gif', 15, 17, 1, 1),
	(2, ':-D', 'Дуже щасливий', 'icon_e_biggrin.gif', 15, 17, 2, 1),
	(3, ':grin:', 'Дуже щасливий', 'icon_e_biggrin.gif', 15, 17, 3, 1),
	(4, ':)', 'Посмішка', 'icon_e_smile.gif', 15, 17, 4, 1),
	(5, ':-)', 'Посмішка', 'icon_e_smile.gif', 15, 17, 5, 1),
	(6, ':smile:', 'Посмішка', 'icon_e_smile.gif', 15, 17, 6, 1),
	(7, ';)', 'Підморгує', 'icon_e_wink.gif', 15, 17, 7, 1),
	(8, ';-)', 'Підморгує', 'icon_e_wink.gif', 15, 17, 8, 1),
	(9, ':wink:', 'Підморгує', 'icon_e_wink.gif', 15, 17, 9, 1),
	(10, ':(', 'Сумний', 'icon_e_sad.gif', 15, 17, 10, 1),
	(11, ':-(', 'Сумний', 'icon_e_sad.gif', 15, 17, 11, 1),
	(12, ':sad:', 'Сумний', 'icon_e_sad.gif', 15, 17, 12, 1),
	(13, ':o', 'Здивований', 'icon_e_surprised.gif', 15, 17, 13, 1),
	(14, ':-o', 'Здивований', 'icon_e_surprised.gif', 15, 17, 14, 1),
	(15, ':eek:', 'Здивований', 'icon_e_surprised.gif', 15, 17, 15, 1),
	(16, ':shock:', 'Шокований', 'icon_eek.gif', 15, 17, 16, 1),
	(17, ':?', 'Спантеличений', 'icon_e_confused.gif', 15, 17, 17, 1),
	(18, ':-?', 'Спантеличений', 'icon_e_confused.gif', 15, 17, 18, 1),
	(19, ':???:', 'Спантеличений', 'icon_e_confused.gif', 15, 17, 19, 1),
	(20, '8-)', 'Кльво', 'icon_cool.gif', 15, 17, 20, 1),
	(21, ':cool:', 'Кльво', 'icon_cool.gif', 15, 17, 21, 1),
	(22, ':lol:', 'Сміється', 'icon_lol.gif', 15, 17, 22, 1),
	(23, ':x', 'Божевільний', 'icon_mad.gif', 15, 17, 23, 1),
	(24, ':-x', 'Божевільний', 'icon_mad.gif', 15, 17, 24, 1),
	(25, ':mad:', 'Божевільний', 'icon_mad.gif', 15, 17, 25, 1),
	(26, ':P', 'Глузує', 'icon_razz.gif', 15, 17, 26, 1),
	(27, ':-P', 'Глузує', 'icon_razz.gif', 15, 17, 27, 1),
	(28, ':razz:', 'Глузує', 'icon_razz.gif', 15, 17, 28, 1),
	(29, ':oops:', 'Збентежений', 'icon_redface.gif', 15, 17, 29, 1),
	(30, ':cry:', 'Плаче або дуже сердитий', 'icon_cry.gif', 15, 17, 30, 1),
	(31, ':evil:', 'Злий або дуже роздратований', 'icon_evil.gif', 15, 17, 31, 1),
	(32, ':twisted:', 'Дуже злий', 'icon_twisted.gif', 15, 17, 32, 1),
	(33, ':roll:', 'Закочує очі', 'icon_rolleyes.gif', 15, 17, 33, 1),
	(34, ':!:', 'Увага', 'icon_exclaim.gif', 15, 17, 34, 1),
	(35, ':?:', 'Питання', 'icon_question.gif', 15, 17, 35, 1),
	(36, ':idea:', 'Ідея', 'icon_idea.gif', 15, 17, 36, 1),
	(37, ':arrow:', 'Стрілка', 'icon_arrow.gif', 15, 17, 37, 1),
	(38, ':|', 'Нейтральний', 'icon_neutral.gif', 15, 17, 38, 1),
	(39, ':-|', 'Нейтральний', 'icon_neutral.gif', 15, 17, 39, 1),
	(40, ':mrgreen:', 'Зелений', 'icon_mrgreen.gif', 15, 17, 40, 1),
	(41, ':geek:', 'Ботанік', 'icon_e_geek.gif', 17, 17, 41, 1),
	(42, ':ugeek:', 'Конкретний ботанік', 'icon_e_ugeek.gif', 17, 18, 42, 1);
/*!40000 ALTER TABLE `phpbb_smilies` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_styles
DROP TABLE IF EXISTS `phpbb_styles`;
CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_styles: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_styles` DISABLE KEYS */;
INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
	(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', 'kNg=', 0, '');
/*!40000 ALTER TABLE `phpbb_styles` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_teampage
DROP TABLE IF EXISTS `phpbb_teampage`;
CREATE TABLE IF NOT EXISTS `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_teampage: ~2 rows (approximately)
/*!40000 ALTER TABLE `phpbb_teampage` DISABLE KEYS */;
INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
	(1, 5, '', 1, 0),
	(2, 4, '', 2, 0);
/*!40000 ALTER TABLE `phpbb_teampage` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_topics
DROP TABLE IF EXISTS `phpbb_topics`;
CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_topics: ~3 rows (approximately)
/*!40000 ALTER TABLE `phpbb_topics` DISABLE KEYS */;
INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
	(1, 2, 0, 0, 0, 'Ласкаво просимо до phpBB3', 2, 1431076924, 0, 1, 0, 0, 1, 'intita', 'AA0000', 1, 2, 'intita', 'AA0000', 'Ласкаво просимо до phpBB3', 1431076924, 1431077129, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
	(2, 2, 0, 0, 0, '8 травня', 2, 1431082457, 0, 3, 0, 0, 2, 'intita', 'AA0000', 2, 2, 'intita', 'AA0000', '8 травня', 1431082457, 1431082648, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
	(3, 2, 0, 0, 0, '4 червня', 2, 1433429758, 0, 4, 0, 0, 3, 'intita', 'AA0000', 4, 48, 'Ivanna', '', 'Re: 4 червня', 1433430237, 1433430287, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 2, 0, 0);
/*!40000 ALTER TABLE `phpbb_topics` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_topics_posted
DROP TABLE IF EXISTS `phpbb_topics_posted`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_topics_posted: ~4 rows (approximately)
/*!40000 ALTER TABLE `phpbb_topics_posted` DISABLE KEYS */;
INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
	(2, 1, 1),
	(2, 2, 1),
	(2, 3, 1),
	(48, 3, 1);
/*!40000 ALTER TABLE `phpbb_topics_posted` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_topics_track
DROP TABLE IF EXISTS `phpbb_topics_track`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_topics_track: ~1 rows (approximately)
/*!40000 ALTER TABLE `phpbb_topics_track` DISABLE KEYS */;
INSERT INTO `phpbb_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
	(48, 3, 2, 1433430237);
/*!40000 ALTER TABLE `phpbb_topics_track` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_topics_watch
DROP TABLE IF EXISTS `phpbb_topics_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_topics_watch: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_topics_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_topics_watch` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_users
DROP TABLE IF EXISTS `phpbb_users`;
CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_users: ~48 rows (approximately)
/*!40000 ALTER TABLE `phpbb_users` DISABLE KEYS */;
INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
	(1, 2, 1, '00000000000w27wrgg\ni1cjyo000000\ni1cjyo000000', 0, '', 1431076924, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b705c3dbdaa5024d', 1, 0, 0),
	(2, 3, 5, 'zik0zjzik0zjzik0zc\ni1cjyo000000\nzik0zjzi8sg0', 0, '127.0.0.1', 1431076924, 'intita', 'intita', '$2y$10$G.aeTtUTb6qI44QQuAOgh.P5fP9mw3.6/WzPVzB53z5TM5i3mBdra', 0, 'intita.hr@gmail.com', 144972273819, '', 1433430118, 0, 1433429758, 'index.php', '', 0, 0, 0, 0, 0, 0, 3, 'uk', '', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5e79e054a6e4eacd', 0, 0, 0),
	(3, 2, 6, '', 0, '', 1431076932, 'AdsBot [Google]', 'adsbot [google]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8fb1961bea68d3af', 0, 0, 0),
	(4, 2, 6, '', 0, '', 1431076932, 'Alexa [Bot]', 'alexa [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b0ce7ddbe26f78e5', 0, 0, 0),
	(5, 2, 6, '', 0, '', 1431076932, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'aa44fb14e9ba2611', 0, 0, 0),
	(6, 2, 6, '', 0, '', 1431076932, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c6a227e047b660dd', 0, 0, 0),
	(7, 2, 6, '', 0, '', 1431076932, 'Baidu [Spider]', 'baidu [spider]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '81eabd6fba400ea6', 0, 0, 0),
	(8, 2, 6, '', 0, '', 1431076932, 'Bing [Bot]', 'bing [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b46ecc9cf4351084', 0, 0, 0),
	(9, 2, 6, '', 0, '', 1431076932, 'Exabot [Bot]', 'exabot [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'adccd845a4a3309a', 0, 0, 0),
	(10, 2, 6, '', 0, '', 1431076932, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a9f6cad28682c0b9', 0, 0, 0),
	(11, 2, 6, '', 0, '', 1431076932, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0f1e07b60f11f1d0', 0, 0, 0),
	(12, 2, 6, '', 0, '', 1431076932, 'Francis [Bot]', 'francis [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '23fc118e872ccb6e', 0, 0, 0),
	(13, 2, 6, '', 0, '', 1431076932, 'Gigabot [Bot]', 'gigabot [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1cb937388ea81f60', 0, 0, 0),
	(14, 2, 6, '', 0, '', 1431076932, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6b94dc3b6ba0ce4d', 0, 0, 0),
	(15, 2, 6, '', 0, '', 1431076932, 'Google Desktop', 'google desktop', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '59d01214c2906319', 0, 0, 0),
	(16, 2, 6, '', 0, '', 1431076932, 'Google Feedfetcher', 'google feedfetcher', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fc42531b9677a64b', 0, 0, 0),
	(17, 2, 6, '', 0, '', 1431076932, 'Google [Bot]', 'google [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '205e6956b35b1775', 0, 0, 0),
	(18, 2, 6, '', 0, '', 1431076932, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '553be5516caa2d51', 0, 0, 0),
	(19, 2, 6, '', 0, '', 1431076932, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '259e0909a00c977d', 0, 0, 0),
	(20, 2, 6, '', 0, '', 1431076932, 'IBM Research [Bot]', 'ibm research [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0b8c869b3a1976b8', 0, 0, 0),
	(21, 2, 6, '', 0, '', 1431076932, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '98202e2f508b229d', 0, 0, 0),
	(22, 2, 6, '', 0, '', 1431076932, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9d6a1a15c4e37982', 0, 0, 0),
	(23, 2, 6, '', 0, '', 1431076932, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ac211676f47e478d', 0, 0, 0),
	(24, 2, 6, '', 0, '', 1431076932, 'Metager [Bot]', 'metager [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9d659da1e1817872', 0, 0, 0),
	(25, 2, 6, '', 0, '', 1431076932, 'MSN NewsBlogs', 'msn newsblogs', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6e753fd32e6c1fda', 0, 0, 0),
	(26, 2, 6, '', 0, '', 1431076932, 'MSN [Bot]', 'msn [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bf0dde11ccbf74a0', 0, 0, 0),
	(27, 2, 6, '', 0, '', 1431076932, 'MSNbot Media', 'msnbot media', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3335f518df13845b', 0, 0, 0),
	(28, 2, 6, '', 0, '', 1431076932, 'Nutch [Bot]', 'nutch [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f9e8a789835722f6', 0, 0, 0),
	(29, 2, 6, '', 0, '', 1431076932, 'Online link [Validator]', 'online link [validator]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '01918a62521bb42f', 0, 0, 0),
	(30, 2, 6, '', 0, '', 1431076932, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2f56f12a5e4703a5', 0, 0, 0),
	(31, 2, 6, '', 0, '', 1431076932, 'Sensis [Crawler]', 'sensis [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2ed96394667bb77e', 0, 0, 0),
	(32, 2, 6, '', 0, '', 1431076932, 'SEO Crawler', 'seo crawler', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ff916b227c9ec3b8', 0, 0, 0),
	(33, 2, 6, '', 0, '', 1431076932, 'Seoma [Crawler]', 'seoma [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c9263d6960674eba', 0, 0, 0),
	(34, 2, 6, '', 0, '', 1431076932, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ee80f9400368a4c6', 0, 0, 0),
	(35, 2, 6, '', 0, '', 1431076932, 'Snappy [Bot]', 'snappy [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c0268ed35b1b9e27', 0, 0, 0),
	(36, 2, 6, '', 0, '', 1431076932, 'Steeler [Crawler]', 'steeler [crawler]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f88cc526513fe28a', 0, 0, 0),
	(37, 2, 6, '', 0, '', 1431076932, 'Telekom [Bot]', 'telekom [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3647d0840f2b5e85', 0, 0, 0),
	(38, 2, 6, '', 0, '', 1431076932, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '70d8e8d5726b0dcd', 0, 0, 0),
	(39, 2, 6, '', 0, '', 1431076932, 'Voyager [Bot]', 'voyager [bot]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c1d7e86c9804c88a', 0, 0, 0),
	(40, 2, 6, '', 0, '', 1431076932, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fae0202108d740f5', 0, 0, 0),
	(41, 2, 6, '', 0, '', 1431076932, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '363767d3d3969504', 0, 0, 0),
	(42, 2, 6, '', 0, '', 1431076932, 'W3C [Validator]', 'w3c [validator]', '', 1431076932, '', 0, '', 0, 1431076932, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1e38cf7df0120df5', 0, 0, 0),
	(43, 2, 6, '', 0, '', 1431076933, 'YaCy [Bot]', 'yacy [bot]', '', 1431076933, '', 0, '', 0, 1431076933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '59c5244985f29d79', 0, 0, 0),
	(44, 2, 6, '', 0, '', 1431076933, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1431076933, '', 0, '', 0, 1431076933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8b4d4e5b829312c3', 0, 0, 0),
	(45, 2, 6, '', 0, '', 1431076933, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1431076933, '', 0, '', 0, 1431076933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '40bdfa398100dabe', 0, 0, 0),
	(46, 2, 6, '', 0, '', 1431076933, 'Yahoo [Bot]', 'yahoo [bot]', '', 1431076933, '', 0, '', 0, 1431076933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5ef718e8d194dd82', 0, 0, 0),
	(47, 2, 6, '', 0, '', 1431076933, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1431076933, '', 0, '', 0, 1431076933, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'uk', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cd7ba34f5b0082fd', 0, 0, 0),
	(48, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '::1', 1433430175, 'Ivanna', 'ivanna', '$2y$10$YrMGyqi8ZQ6BN1cf0UzfZ.LgX1Na4vdzIBLYspxUgo6BcdiW715fa', 1433430175, 'vnnchkh@gmail.com', 328510056717, '', 1433430246, 1433430175, 1433430237, '', '', 0, 0, 0, 0, 0, 0, 1, 'uk', 'Europe/Kiev', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '02c7d053ef52557c', 1, 0, 0);
/*!40000 ALTER TABLE `phpbb_users` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_user_group
DROP TABLE IF EXISTS `phpbb_user_group`;
CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_user_group: ~51 rows (approximately)
/*!40000 ALTER TABLE `phpbb_user_group` DISABLE KEYS */;
INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
	(1, 1, 0, 0),
	(2, 2, 0, 0),
	(4, 2, 0, 0),
	(5, 2, 1, 0),
	(6, 3, 0, 0),
	(6, 4, 0, 0),
	(6, 5, 0, 0),
	(6, 6, 0, 0),
	(6, 7, 0, 0),
	(6, 8, 0, 0),
	(6, 9, 0, 0),
	(6, 10, 0, 0),
	(6, 11, 0, 0),
	(6, 12, 0, 0),
	(6, 13, 0, 0),
	(6, 14, 0, 0),
	(6, 15, 0, 0),
	(6, 16, 0, 0),
	(6, 17, 0, 0),
	(6, 18, 0, 0),
	(6, 19, 0, 0),
	(6, 20, 0, 0),
	(6, 21, 0, 0),
	(6, 22, 0, 0),
	(6, 23, 0, 0),
	(6, 24, 0, 0),
	(6, 25, 0, 0),
	(6, 26, 0, 0),
	(6, 27, 0, 0),
	(6, 28, 0, 0),
	(6, 29, 0, 0),
	(6, 30, 0, 0),
	(6, 31, 0, 0),
	(6, 32, 0, 0),
	(6, 33, 0, 0),
	(6, 34, 0, 0),
	(6, 35, 0, 0),
	(6, 36, 0, 0),
	(6, 37, 0, 0),
	(6, 38, 0, 0),
	(6, 39, 0, 0),
	(6, 40, 0, 0),
	(6, 41, 0, 0),
	(6, 42, 0, 0),
	(6, 43, 0, 0),
	(6, 44, 0, 0),
	(6, 45, 0, 0),
	(6, 46, 0, 0),
	(6, 47, 0, 0),
	(2, 48, 0, 0),
	(7, 48, 0, 0);
/*!40000 ALTER TABLE `phpbb_user_group` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_user_notifications
DROP TABLE IF EXISTS `phpbb_user_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_user_notifications: ~188 rows (approximately)
/*!40000 ALTER TABLE `phpbb_user_notifications` DISABLE KEYS */;
INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
	('notification.type.post', 0, 2, '', 1),
	('notification.type.post', 0, 2, 'notification.method.email', 1),
	('notification.type.topic', 0, 2, '', 1),
	('notification.type.topic', 0, 2, 'notification.method.email', 1),
	('notification.type.post', 0, 3, '', 1),
	('notification.type.post', 0, 3, 'notification.method.email', 1),
	('notification.type.topic', 0, 3, '', 1),
	('notification.type.topic', 0, 3, 'notification.method.email', 1),
	('notification.type.post', 0, 4, '', 1),
	('notification.type.post', 0, 4, 'notification.method.email', 1),
	('notification.type.topic', 0, 4, '', 1),
	('notification.type.topic', 0, 4, 'notification.method.email', 1),
	('notification.type.post', 0, 5, '', 1),
	('notification.type.post', 0, 5, 'notification.method.email', 1),
	('notification.type.topic', 0, 5, '', 1),
	('notification.type.topic', 0, 5, 'notification.method.email', 1),
	('notification.type.post', 0, 6, '', 1),
	('notification.type.post', 0, 6, 'notification.method.email', 1),
	('notification.type.topic', 0, 6, '', 1),
	('notification.type.topic', 0, 6, 'notification.method.email', 1),
	('notification.type.post', 0, 7, '', 1),
	('notification.type.post', 0, 7, 'notification.method.email', 1),
	('notification.type.topic', 0, 7, '', 1),
	('notification.type.topic', 0, 7, 'notification.method.email', 1),
	('notification.type.post', 0, 8, '', 1),
	('notification.type.post', 0, 8, 'notification.method.email', 1),
	('notification.type.topic', 0, 8, '', 1),
	('notification.type.topic', 0, 8, 'notification.method.email', 1),
	('notification.type.post', 0, 9, '', 1),
	('notification.type.post', 0, 9, 'notification.method.email', 1),
	('notification.type.topic', 0, 9, '', 1),
	('notification.type.topic', 0, 9, 'notification.method.email', 1),
	('notification.type.post', 0, 10, '', 1),
	('notification.type.post', 0, 10, 'notification.method.email', 1),
	('notification.type.topic', 0, 10, '', 1),
	('notification.type.topic', 0, 10, 'notification.method.email', 1),
	('notification.type.post', 0, 11, '', 1),
	('notification.type.post', 0, 11, 'notification.method.email', 1),
	('notification.type.topic', 0, 11, '', 1),
	('notification.type.topic', 0, 11, 'notification.method.email', 1),
	('notification.type.post', 0, 12, '', 1),
	('notification.type.post', 0, 12, 'notification.method.email', 1),
	('notification.type.topic', 0, 12, '', 1),
	('notification.type.topic', 0, 12, 'notification.method.email', 1),
	('notification.type.post', 0, 13, '', 1),
	('notification.type.post', 0, 13, 'notification.method.email', 1),
	('notification.type.topic', 0, 13, '', 1),
	('notification.type.topic', 0, 13, 'notification.method.email', 1),
	('notification.type.post', 0, 14, '', 1),
	('notification.type.post', 0, 14, 'notification.method.email', 1),
	('notification.type.topic', 0, 14, '', 1),
	('notification.type.topic', 0, 14, 'notification.method.email', 1),
	('notification.type.post', 0, 15, '', 1),
	('notification.type.post', 0, 15, 'notification.method.email', 1),
	('notification.type.topic', 0, 15, '', 1),
	('notification.type.topic', 0, 15, 'notification.method.email', 1),
	('notification.type.post', 0, 16, '', 1),
	('notification.type.post', 0, 16, 'notification.method.email', 1),
	('notification.type.topic', 0, 16, '', 1),
	('notification.type.topic', 0, 16, 'notification.method.email', 1),
	('notification.type.post', 0, 17, '', 1),
	('notification.type.post', 0, 17, 'notification.method.email', 1),
	('notification.type.topic', 0, 17, '', 1),
	('notification.type.topic', 0, 17, 'notification.method.email', 1),
	('notification.type.post', 0, 18, '', 1),
	('notification.type.post', 0, 18, 'notification.method.email', 1),
	('notification.type.topic', 0, 18, '', 1),
	('notification.type.topic', 0, 18, 'notification.method.email', 1),
	('notification.type.post', 0, 19, '', 1),
	('notification.type.post', 0, 19, 'notification.method.email', 1),
	('notification.type.topic', 0, 19, '', 1),
	('notification.type.topic', 0, 19, 'notification.method.email', 1),
	('notification.type.post', 0, 20, '', 1),
	('notification.type.post', 0, 20, 'notification.method.email', 1),
	('notification.type.topic', 0, 20, '', 1),
	('notification.type.topic', 0, 20, 'notification.method.email', 1),
	('notification.type.post', 0, 21, '', 1),
	('notification.type.post', 0, 21, 'notification.method.email', 1),
	('notification.type.topic', 0, 21, '', 1),
	('notification.type.topic', 0, 21, 'notification.method.email', 1),
	('notification.type.post', 0, 22, '', 1),
	('notification.type.post', 0, 22, 'notification.method.email', 1),
	('notification.type.topic', 0, 22, '', 1),
	('notification.type.topic', 0, 22, 'notification.method.email', 1),
	('notification.type.post', 0, 23, '', 1),
	('notification.type.post', 0, 23, 'notification.method.email', 1),
	('notification.type.topic', 0, 23, '', 1),
	('notification.type.topic', 0, 23, 'notification.method.email', 1),
	('notification.type.post', 0, 24, '', 1),
	('notification.type.post', 0, 24, 'notification.method.email', 1),
	('notification.type.topic', 0, 24, '', 1),
	('notification.type.topic', 0, 24, 'notification.method.email', 1),
	('notification.type.post', 0, 25, '', 1),
	('notification.type.post', 0, 25, 'notification.method.email', 1),
	('notification.type.topic', 0, 25, '', 1),
	('notification.type.topic', 0, 25, 'notification.method.email', 1),
	('notification.type.post', 0, 26, '', 1),
	('notification.type.post', 0, 26, 'notification.method.email', 1),
	('notification.type.topic', 0, 26, '', 1),
	('notification.type.topic', 0, 26, 'notification.method.email', 1),
	('notification.type.post', 0, 27, '', 1),
	('notification.type.post', 0, 27, 'notification.method.email', 1),
	('notification.type.topic', 0, 27, '', 1),
	('notification.type.topic', 0, 27, 'notification.method.email', 1),
	('notification.type.post', 0, 28, '', 1),
	('notification.type.post', 0, 28, 'notification.method.email', 1),
	('notification.type.topic', 0, 28, '', 1),
	('notification.type.topic', 0, 28, 'notification.method.email', 1),
	('notification.type.post', 0, 29, '', 1),
	('notification.type.post', 0, 29, 'notification.method.email', 1),
	('notification.type.topic', 0, 29, '', 1),
	('notification.type.topic', 0, 29, 'notification.method.email', 1),
	('notification.type.post', 0, 30, '', 1),
	('notification.type.post', 0, 30, 'notification.method.email', 1),
	('notification.type.topic', 0, 30, '', 1),
	('notification.type.topic', 0, 30, 'notification.method.email', 1),
	('notification.type.post', 0, 31, '', 1),
	('notification.type.post', 0, 31, 'notification.method.email', 1),
	('notification.type.topic', 0, 31, '', 1),
	('notification.type.topic', 0, 31, 'notification.method.email', 1),
	('notification.type.post', 0, 32, '', 1),
	('notification.type.post', 0, 32, 'notification.method.email', 1),
	('notification.type.topic', 0, 32, '', 1),
	('notification.type.topic', 0, 32, 'notification.method.email', 1),
	('notification.type.post', 0, 33, '', 1),
	('notification.type.post', 0, 33, 'notification.method.email', 1),
	('notification.type.topic', 0, 33, '', 1),
	('notification.type.topic', 0, 33, 'notification.method.email', 1),
	('notification.type.post', 0, 34, '', 1),
	('notification.type.post', 0, 34, 'notification.method.email', 1),
	('notification.type.topic', 0, 34, '', 1),
	('notification.type.topic', 0, 34, 'notification.method.email', 1),
	('notification.type.post', 0, 35, '', 1),
	('notification.type.post', 0, 35, 'notification.method.email', 1),
	('notification.type.topic', 0, 35, '', 1),
	('notification.type.topic', 0, 35, 'notification.method.email', 1),
	('notification.type.post', 0, 36, '', 1),
	('notification.type.post', 0, 36, 'notification.method.email', 1),
	('notification.type.topic', 0, 36, '', 1),
	('notification.type.topic', 0, 36, 'notification.method.email', 1),
	('notification.type.post', 0, 37, '', 1),
	('notification.type.post', 0, 37, 'notification.method.email', 1),
	('notification.type.topic', 0, 37, '', 1),
	('notification.type.topic', 0, 37, 'notification.method.email', 1),
	('notification.type.post', 0, 38, '', 1),
	('notification.type.post', 0, 38, 'notification.method.email', 1),
	('notification.type.topic', 0, 38, '', 1),
	('notification.type.topic', 0, 38, 'notification.method.email', 1),
	('notification.type.post', 0, 39, '', 1),
	('notification.type.post', 0, 39, 'notification.method.email', 1),
	('notification.type.topic', 0, 39, '', 1),
	('notification.type.topic', 0, 39, 'notification.method.email', 1),
	('notification.type.post', 0, 40, '', 1),
	('notification.type.post', 0, 40, 'notification.method.email', 1),
	('notification.type.topic', 0, 40, '', 1),
	('notification.type.topic', 0, 40, 'notification.method.email', 1),
	('notification.type.post', 0, 41, '', 1),
	('notification.type.post', 0, 41, 'notification.method.email', 1),
	('notification.type.topic', 0, 41, '', 1),
	('notification.type.topic', 0, 41, 'notification.method.email', 1),
	('notification.type.post', 0, 42, '', 1),
	('notification.type.post', 0, 42, 'notification.method.email', 1),
	('notification.type.topic', 0, 42, '', 1),
	('notification.type.topic', 0, 42, 'notification.method.email', 1),
	('notification.type.post', 0, 43, '', 1),
	('notification.type.post', 0, 43, 'notification.method.email', 1),
	('notification.type.topic', 0, 43, '', 1),
	('notification.type.topic', 0, 43, 'notification.method.email', 1),
	('notification.type.post', 0, 44, '', 1),
	('notification.type.post', 0, 44, 'notification.method.email', 1),
	('notification.type.topic', 0, 44, '', 1),
	('notification.type.topic', 0, 44, 'notification.method.email', 1),
	('notification.type.post', 0, 45, '', 1),
	('notification.type.post', 0, 45, 'notification.method.email', 1),
	('notification.type.topic', 0, 45, '', 1),
	('notification.type.topic', 0, 45, 'notification.method.email', 1),
	('notification.type.post', 0, 46, '', 1),
	('notification.type.post', 0, 46, 'notification.method.email', 1),
	('notification.type.topic', 0, 46, '', 1),
	('notification.type.topic', 0, 46, 'notification.method.email', 1),
	('notification.type.post', 0, 47, '', 1),
	('notification.type.post', 0, 47, 'notification.method.email', 1),
	('notification.type.topic', 0, 47, '', 1),
	('notification.type.topic', 0, 47, 'notification.method.email', 1),
	('notification.type.post', 0, 48, '', 1),
	('notification.type.post', 0, 48, 'notification.method.email', 1),
	('notification.type.topic', 0, 48, '', 1),
	('notification.type.topic', 0, 48, 'notification.method.email', 1);
/*!40000 ALTER TABLE `phpbb_user_notifications` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_warnings
DROP TABLE IF EXISTS `phpbb_warnings`;
CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_warnings: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_warnings` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_words
DROP TABLE IF EXISTS `phpbb_words`;
CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_words: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_words` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.phpbb_zebra
DROP TABLE IF EXISTS `phpbb_zebra`;
CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table int_ita_db.phpbb_zebra: ~0 rows (approximately)
/*!40000 ALTER TABLE `phpbb_zebra` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_zebra` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.project
DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_leader` int(10) NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `mark` tinyint(4) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_project_teacher` (`id_leader`),
  CONSTRAINT `FK_project_teacher` FOREIGN KEY (`id_leader`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='is_completed (values : 0 - in develop, 1 - completed)';

-- Dumping data for table int_ita_db.project: ~6 rows (approximately)
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`id`, `id_leader`, `is_completed`, `title`, `start_date`, `mark`, `comment`) VALUES
	(1, 1, 1, 'Розробка інтернет-магазину', '2015-06-15', 5, 'Відмінно'),
	(2, 2, 0, 'Створення сайту Міноборони України', '2015-06-15', 0, ''),
	(4, 3, 0, 'Розробка СМS для інтернет-магазину', '2015-06-15', 0, ''),
	(5, 4, 1, 'Розробка БД для інтернет-магазину', '2015-06-08', 4, 'Добре'),
	(6, 5, 1, 'Дизайн для інтернет-магазину', '2015-06-12', 5, 'Відмінно'),
	(7, 6, 0, 'Верстка інтернет-магазину', '2015-05-25', 4, 'Добре');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.project_student
DROP TABLE IF EXISTS `project_student`;
CREATE TABLE IF NOT EXISTS `project_student` (
  `project` int(10) NOT NULL,
  `student` int(10) NOT NULL,
  KEY `FK_project_student_project` (`project`),
  KEY `FK_project_student_user` (`student`),
  CONSTRAINT `FK_project_student_project` FOREIGN KEY (`project`) REFERENCES `project` (`id`),
  CONSTRAINT `FK_project_student_user` FOREIGN KEY (`student`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.project_student: ~7 rows (approximately)
/*!40000 ALTER TABLE `project_student` DISABLE KEYS */;
INSERT INTO `project_student` (`project`, `student`) VALUES
	(1, 51),
	(2, 52),
	(4, 55),
	(4, 53),
	(5, 53),
	(6, 55),
	(7, 54);
/*!40000 ALTER TABLE `project_student` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.response
DROP TABLE IF EXISTS `response`;
CREATE TABLE IF NOT EXISTS `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `who` int(11) NOT NULL,
  `about` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `text` text NOT NULL,
  `rate` int(2) DEFAULT NULL,
  `who_ip` varchar(40) NOT NULL,
  `knowledge` int(2) DEFAULT NULL,
  `behavior` int(2) DEFAULT NULL,
  `motivation` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__user` (`who`),
  KEY `FK__user_2` (`about`),
  CONSTRAINT `FK__user` FOREIGN KEY (`who`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK__user_2` FOREIGN KEY (`about`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Responses for teachers';

-- Dumping data for table int_ita_db.response: ~0 rows (approximately)
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
/*!40000 ALTER TABLE `response` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title_en` varchar(20) NOT NULL,
  `title_ru` varchar(20) NOT NULL,
  `title_ua` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='List of teachers roles.';

-- Dumping data for table int_ita_db.roles: ~7 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `title_en`, `title_ru`, `title_ua`, `description`) VALUES
	(1, 'Trainer', 'Тренер', 'Тренер', 'Trainer. Help student with simple and common problems.'),
	(2, 'Consultant', 'Консультант', 'Консультант', 'Online consultations'),
	(3, 'Leader', 'Руководитель проекта', 'Керівник проекта', 'Leader for single and team students projects'),
	(4, 'Author', 'Автор модуля', 'Автор модуля', 'Module owner'),
	(5, 'Admin', 'Админ', 'Адмін', 'Create and describe courses and modules.'),
	(6, 'Teacher', 'Викладач', 'Викладач', 'Викладач'),
	(7, 'teacher', 'Преподаватель', 'Викладач', 'description');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.role_attribute
DROP TABLE IF EXISTS `role_attribute`;
CREATE TABLE IF NOT EXISTS `role_attribute` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `role` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name_ru` varchar(30) NOT NULL,
  `name_ua` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  CONSTRAINT `FK_role_attribute_roles` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='1 - capacity: number of students\r\n2 - students list: trainer''s students\r\n3 - modules list: leader''s modules\r\n4 - projects list: leader''s projects\r\n5 - modules_consultant';

-- Dumping data for table int_ita_db.role_attribute: ~8 rows (approximately)
/*!40000 ALTER TABLE `role_attribute` DISABLE KEYS */;
INSERT INTO `role_attribute` (`id`, `name`, `role`, `type`, `name_ru`, `name_ua`) VALUES
	(1, 'capacity', 1, 'int', 'Количество студентов', 'Кількість студентів'),
	(2, 'students_list', 1, 'int', 'Список студентов', 'Список студентів'),
	(3, 'modules_list', 2, 'int', 'Список модулей', 'Список модулів'),
	(4, 'projects_list', 3, 'int', 'Проекты', 'Проекти'),
	(5, 'modules_consultant', 2, 'int', 'Модули', 'Модулі'),
	(6, 'modules_list', 4, 'int', 'Список модулей', 'Список модулів'),
	(7, 'modules_list', 3, 'int', 'Список модулей', 'Список модулів'),
	(8, 'capacity', 3, 'int', 'Количество студентов', 'Кількість студентів');
/*!40000 ALTER TABLE `role_attribute` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.sourcemessages
DROP TABLE IF EXISTS `sourcemessages`;
CREATE TABLE IF NOT EXISTS `sourcemessages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8 COMMENT='Table for interface messages (keys).';

-- Dumping data for table int_ita_db.sourcemessages: ~427 rows (approximately)
/*!40000 ALTER TABLE `sourcemessages` DISABLE KEYS */;
INSERT INTO `sourcemessages` (`id`, `category`, `message`) VALUES
	(1, 'mainpage', '0001'),
	(2, 'mainpage', '0002'),
	(3, 'mainpage', '0003'),
	(4, 'mainpage', '0004'),
	(5, 'slider', '0005'),
	(6, 'mainpage', '0006'),
	(7, 'mainpage', '0007'),
	(8, 'slider', '0008'),
	(9, 'regform', '0009'),
	(10, 'regform', '0010'),
	(11, 'regform', '0011'),
	(12, 'regform', '0012'),
	(13, 'regform', '0013'),
	(14, 'regform', '0014'),
	(15, 'regform', '0015'),
	(16, 'header', '0016'),
	(17, 'header', '0017'),
	(18, 'header', '0018'),
	(19, 'header', '0019'),
	(20, 'header', '0020'),
	(21, 'header', '0021'),
	(22, 'header', '0022'),
	(23, 'footer', '0023'),
	(24, 'footer', '0024'),
	(25, 'footer', '0025'),
	(26, 'footer', '0026'),
	(27, 'slider', '0027'),
	(28, 'slider', '0028'),
	(29, 'slider', '0029'),
	(30, 'slider', '0030'),
	(31, 'slider', '0031'),
	(32, 'aboutus', '0032'),
	(33, 'aboutus', '0033'),
	(34, 'aboutus', '0034'),
	(35, 'aboutus', '0035'),
	(36, 'aboutus', '0036'),
	(37, 'aboutus', '0037'),
	(38, 'step', '0038'),
	(39, 'step', '0039'),
	(40, 'step', '0040'),
	(41, 'step', '0041'),
	(42, 'step', '0042'),
	(43, 'step', '0043'),
	(44, 'step', '0044'),
	(45, 'step', '0045'),
	(46, 'step', '0046'),
	(47, 'step', '0047'),
	(48, 'step', '0048'),
	(49, 'breadcrumbs', '0049'),
	(50, 'breadcrumbs', '0050'),
	(51, 'breadcrumbs', '0051'),
	(52, 'breadcrumbs', '0052'),
	(53, 'breadcrumbs', '0053'),
	(54, 'breadcrumbs', '0054'),
	(55, 'breadcrumbs', '0055'),
	(56, 'breadcrumbs', '0056'),
	(57, 'breadcrumbs', '0057'),
	(58, 'teachers', '0058'),
	(59, 'teachers', '0059'),
	(60, 'teachers', '0060'),
	(61, 'teachers', '0061'),
	(62, 'teachers', '0062'),
	(63, 'teachers', '0063'),
	(64, 'teacher', '0064'),
	(65, 'teacher', '0065'),
	(66, 'courses', '0066'),
	(67, 'courses', '0067'),
	(68, 'courses', '0068'),
	(69, 'courses', '0069'),
	(70, 'lecture', '0070'),
	(71, 'lecture', '0071'),
	(72, 'lecture', '0072'),
	(73, 'lecture', '0073'),
	(74, 'lecture', '0074'),
	(75, 'lecture', '0075'),
	(76, 'lecture', '0076'),
	(77, 'lecture', '0077'),
	(78, 'lecture', '0078'),
	(79, 'lecture', '0079'),
	(80, 'lecture', '0080'),
	(81, 'lecture', '0081'),
	(82, 'lecture', '0082'),
	(83, 'lecture', '0083'),
	(84, 'lecture', '0084'),
	(85, 'lecture', '0085'),
	(86, 'lecture', '0086'),
	(87, 'lecture', '0087'),
	(88, 'lecture', '0088'),
	(89, 'lecture', '0089'),
	(90, 'lecture', '0090'),
	(91, 'regform', '0091'),
	(92, 'regform', '0092'),
	(93, 'regform', '0093'),
	(94, 'courses', '0094'),
	(95, 'profile', '0095'),
	(96, 'profile', '0096'),
	(97, 'profile', '0097'),
	(98, 'profile', '0098'),
	(99, 'profile', '0099'),
	(100, 'profile', '0100'),
	(101, 'profile', '0101'),
	(102, 'profile', '0102'),
	(103, 'profile', '0103'),
	(104, 'profile', '0104'),
	(105, 'profile', '0105'),
	(106, 'profile', '0106'),
	(107, 'profile', '0107'),
	(108, 'profile', '0108'),
	(109, 'profile', '0109'),
	(110, 'profile', '0110'),
	(111, 'profile', '0111'),
	(112, 'profile', '0112'),
	(113, 'profile', '0113'),
	(114, 'profile', '0114'),
	(115, 'profile', '0115'),
	(116, 'profile', '0116'),
	(117, 'profile', '0117'),
	(118, 'profile', '0118'),
	(119, 'profile', '0119'),
	(120, 'profile', '0120'),
	(121, 'profile', '0121'),
	(122, 'profile', '0122'),
	(123, 'profile', '0123'),
	(124, 'profile', '0124'),
	(125, 'profile', '0125'),
	(126, 'profile', '0126'),
	(127, 'profile', '0127'),
	(128, 'profile', '0128'),
	(129, 'profile', '0129'),
	(130, 'profile', '0130'),
	(131, 'profile', '0131'),
	(132, 'profile', '0132'),
	(133, 'profile', '0133'),
	(134, 'profile', '0134'),
	(135, 'profile', '0135'),
	(136, 'profile', '0136'),
	(137, 'header', '0137'),
	(138, 'errors', '0138'),
	(139, 'errors', '0139'),
	(140, 'courses', '0140'),
	(141, 'courses', '0141'),
	(142, 'courses', '0142'),
	(143, 'courses', '0143'),
	(144, 'courses', '0144'),
	(145, 'courses', '0145'),
	(146, 'courses', '0146'),
	(147, 'courses', '0147'),
	(148, 'courses', '0148'),
	(149, 'courses', '0149'),
	(150, 'regexp', '0150'),
	(151, 'regexp', '0151'),
	(152, 'regexp', '0152'),
	(153, 'regexp', '0153'),
	(154, 'regexp', '0154'),
	(155, 'regexp', '0155'),
	(156, 'regexp', '0156'),
	(157, 'regexp', '0157'),
	(158, 'regexp', '0158'),
	(159, 'regexp', '0159'),
	(160, 'regexp', '0160'),
	(161, 'regexp', '0161'),
	(162, 'regexp', '0162'),
	(163, 'regexp', '0163'),
	(164, 'regexp', '0164'),
	(165, 'regexp', '0165'),
	(166, 'regexp', '0166'),
	(167, 'regexp', '0167'),
	(168, 'regexp', '0168'),
	(169, 'regexp', '0169'),
	(170, 'regexp', '0170'),
	(171, 'regexp', '0171'),
	(172, 'regexp', '0172'),
	(173, 'regexp', '0173'),
	(174, 'teachers', '0174'),
	(175, 'teachers', '0175'),
	(176, 'teachers', '0176'),
	(177, 'teachers', '0177'),
	(178, 'teachers', '0178'),
	(179, 'teachers', '0179'),
	(180, 'teachers', '0180'),
	(181, 'teacher', '0181'),
	(182, 'teacher', '0182'),
	(183, 'teacher', '0183'),
	(184, 'teacher', '0184'),
	(185, 'teacher', '0185'),
	(186, 'teacher', '0186'),
	(187, 'teacher', '0187'),
	(188, 'teacher', '0188'),
	(189, 'teacher', '0189'),
	(190, 'teacher', '0190'),
	(191, 'teacher', '0191'),
	(192, 'teacher', '0192'),
	(193, 'course', '0193'),
	(194, 'course', '0194'),
	(195, 'profile', '0195'),
	(196, 'course', '0196'),
	(197, 'course', '0197'),
	(198, 'course', '0198'),
	(199, 'course', '0199'),
	(200, 'course', '0200'),
	(201, 'course', '0201'),
	(202, 'course', '0202'),
	(203, 'course', '0203'),
	(204, 'course', '0204'),
	(205, 'course', '0205'),
	(206, 'course', '0206'),
	(207, 'course', '0207'),
	(208, 'course', '0208'),
	(209, 'course', '0209'),
	(210, 'course', '0210'),
	(211, 'module', '0211'),
	(212, 'module', '0212'),
	(213, 'module', '0213'),
	(214, 'module', '0214'),
	(215, 'module', '0215'),
	(216, 'module', '0216'),
	(217, 'module', '0217'),
	(218, 'module', '0218'),
	(219, 'module', '0219'),
	(220, 'module', '0220'),
	(221, 'module', '0221'),
	(222, 'module', '0222'),
	(223, 'module', '0223'),
	(224, 'module', '0224'),
	(225, 'module', '0225'),
	(226, 'module', '0226'),
	(227, 'module', '0227'),
	(228, 'module', '0228'),
	(229, 'courses', '0229'),
	(230, 'courses', '0230'),
	(231, 'courses', '0231'),
	(232, 'courses', '0232'),
	(233, 'courses', '0233'),
	(234, 'courses', '0234'),
	(235, 'courses', '0235'),
	(236, 'courses', '0236'),
	(237, 'exception', '0237'),
	(238, 'exception', '0238'),
	(239, 'recovery', '0239'),
	(240, 'recovery', '0240'),
	(241, 'profile', '0241'),
	(242, 'regexp', '0242'),
	(243, 'regexp', '0243'),
	(244, 'regexp', '0244'),
	(245, 'regexp', '0245'),
	(246, 'regexp', '0246'),
	(247, 'regexp', '0247'),
	(248, 'regexp', '0248'),
	(249, 'regexp', '0249'),
	(250, 'profile', '0250'),
	(251, 'profile', '0251'),
	(252, 'profile', '0252'),
	(253, 'profile', '0253'),
	(254, 'profile', '0254'),
	(255, 'profile', '0255'),
	(256, 'profile', '0256'),
	(257, 'profile', '0257'),
	(258, 'profile', '0258'),
	(259, 'profile', '0259'),
	(260, 'profile', '0260'),
	(261, 'profile', '0261'),
	(262, 'regexp', '0262'),
	(263, 'regexp', '0263'),
	(264, 'regexp', '0264'),
	(265, 'regexp', '0265'),
	(266, 'regexp', '0266'),
	(267, 'regexp', '0267'),
	(268, 'error', '0268'),
	(269, 'error', '0269'),
	(270, 'error', '0270'),
	(271, 'error', '0271'),
	(272, 'error', '0272'),
	(273, 'error', '0273'),
	(274, 'error', '0274'),
	(275, 'error', '0275'),
	(276, 'error', '0276'),
	(277, 'error', '0277'),
	(278, 'error', '0278'),
	(279, 'module', '0279'),
	(280, 'module', '0280'),
	(281, 'recovery', '0281'),
	(282, 'recovery', '0282'),
	(283, 'recovery', '0283'),
	(284, 'recovery', '0284'),
	(285, 'resetpass', '0285'),
	(286, 'resetemail', '0286'),
	(287, 'resetemail', '0287'),
	(288, 'resetemail', '0288'),
	(289, 'forgotpass', '0289'),
	(290, 'forgotpass', '0290'),
	(291, 'forgotpass', '0291'),
	(292, 'changeemail', '0292'),
	(293, 'changeemail', '0293'),
	(294, 'changeemail', '0294'),
	(295, 'regexp', '0295'),
	(296, 'breadcrumbs', '0296'),
	(297, 'graduates', '0297'),
	(298, 'activeemail', '0298'),
	(299, 'activeemail', '0299'),
	(300, 'error', '0300'),
	(301, 'error', '0301'),
	(302, 'error', '0302'),
	(303, 'activeemail', '0303'),
	(304, 'activeemail', '0304'),
	(305, 'activeemail', '0305'),
	(306, 'activeemail', '0306'),
	(307, 'activeemail', '0307'),
	(308, 'activeemail', '0308'),
	(309, 'changeemail', '0309'),
	(310, 'changeemail', '0310'),
	(311, 'activeemail', '0311'),
	(312, 'activeemail', '0312'),
	(313, 'activeemail', '0313'),
	(314, 'resetpass', '0314'),
	(315, 'resetpass', '0315'),
	(316, 'graduates', '0316'),
	(317, 'graduates', '0317'),
	(318, 'graduates', '0318'),
	(319, 'graduates', '0319'),
	(320, 'graduates', '0320'),
	(321, 'lecture', '0321'),
	(322, 'courses', '0322'),
	(323, 'course', '0323'),
	(324, 'course', '0324'),
	(325, 'course', '0325'),
	(326, 'course', '0326'),
	(327, 'course', '0327'),
	(328, 'course', '0328'),
	(329, 'course', '0329'),
	(330, 'course', '0330'),
	(331, 'course', '0331'),
	(332, 'course', '0332'),
	(333, 'course', '0333'),
	(334, 'course', '0334'),
	(335, 'course', '0335'),
	(336, 'course', '0336'),
	(337, 'aboutus', '0337'),
	(338, 'aboutus', '0338'),
	(339, 'aboutus', '0339'),
	(340, 'aboutus', '0340'),
	(341, 'aboutus', '0341'),
	(342, 'aboutus', '0342'),
	(343, 'aboutus', '0343'),
	(344, 'aboutus', '0344'),
	(345, 'aboutus', '0345'),
	(346, 'aboutus', '0346'),
	(347, 'aboutus', '0347'),
	(348, 'aboutus', '0348'),
	(349, 'aboutus', '0349'),
	(350, 'aboutus', '0350'),
	(351, 'aboutus', '0351'),
	(352, 'aboutus', '0352'),
	(353, 'aboutus', '0353'),
	(354, 'aboutus', '0354'),
	(355, 'aboutus', '0355'),
	(356, 'aboutus', '0356'),
	(357, 'aboutus', '0357'),
	(358, 'aboutus', '0358'),
	(359, 'aboutus', '0359'),
	(360, 'aboutus', '0360'),
	(361, 'aboutus', '0361'),
	(362, 'aboutus', '0362'),
	(363, 'aboutus', '0363'),
	(364, 'course', '0364'),
	(365, 'course', '0365'),
	(366, 'course', '0366'),
	(367, 'course', '0367'),
	(368, 'course', '0368'),
	(369, 'module', '0369'),
	(370, 'module', '0370'),
	(371, 'module', '0371'),
	(372, 'module', '0372'),
	(373, 'module', '0373'),
	(374, 'module', '0374'),
	(375, 'module', '0375'),
	(376, 'module', '0376'),
	(377, 'module', '0377'),
	(378, 'module', '0378'),
	(379, 'module', '0379'),
	(380, 'module', '0380'),
	(381, 'module', '0381'),
	(382, 'module', '0382'),
	(383, 'module', '0383'),
	(384, 'module', '0384'),
	(385, 'response', '0385'),
	(386, 'response', '0386'),
	(387, 'coursemanage', '0387'),
	(388, 'coursemanage', '0388'),
	(389, 'coursemanage', '0389'),
	(390, 'coursemanage', '0390'),
	(391, 'coursemanage', '0391'),
	(392, 'coursemanage', '0392'),
	(393, 'coursemanage', '0393'),
	(394, 'coursemanage', '0394'),
	(395, 'coursemanage', '0395'),
	(396, 'coursemanage', '0396'),
	(397, 'coursemanage', '0397'),
	(398, 'coursemanage', '0398'),
	(399, 'coursemanage', '0399'),
	(400, 'course', '0400'),
	(401, 'course', '0401'),
	(402, 'course', '0402'),
	(403, 'course', '0403'),
	(404, 'course', '0404'),
	(405, 'course', '0405'),
	(406, 'course', '0406'),
	(407, 'course', '0407'),
	(408, 'course', '0408'),
	(409, 'course', '0409'),
	(410, 'course', '0410'),
	(411, 'course', '0411'),
	(412, 'module', '0412'),
	(413, 'module', '0413'),
	(414, 'course', '0414'),
	(415, 'course', '0415'),
	(416, 'error', '0416'),
	(417, 'coursemanage', '0417'),
	(418, 'teachers', '0418'),
	(419, 'coursemanage', '0419'),
	(420, 'lecture', '0420'),
	(421, 'module', '0421'),
	(422, 'lecture', '0422'),
	(423, 'graduates', '0423'),
	(424, 'graduates', '0424'),
	(425, 'course', '0425'),
	(426, 'course', '0426'),
	(427, 'error', '0427');
/*!40000 ALTER TABLE `sourcemessages` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.step
DROP TABLE IF EXISTS `step`;
CREATE TABLE IF NOT EXISTS `step` (
  `stepID` int(11) NOT NULL AUTO_INCREMENT,
  `language` enum('UA','RU','EN') NOT NULL,
  `stepName` varchar(30) NOT NULL DEFAULT '0',
  `stepNumber` int(11) NOT NULL,
  `stepTitle` varchar(50) NOT NULL,
  `stepImagePath` varchar(255) NOT NULL DEFAULT '0',
  `stepImage` varchar(50) NOT NULL,
  `stepText` text NOT NULL,
  PRIMARY KEY (`stepID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.step: ~5 rows (approximately)
/*!40000 ALTER TABLE `step` DISABLE KEYS */;
INSERT INTO `step` (`stepID`, `language`, `stepName`, `stepNumber`, `stepTitle`, `stepImagePath`, `stepImage`, `stepText`) VALUES
	(1, 'UA', 'крок', 1, 'Реєстрація на сайті', '/css/images/', 'step1.jpg', 'Щоб отримати доступ до переліку курсів, модулів і занять та пройти безкоштовні модулі і заняття зареєструйся на сайті. Реєстрація дозволить тобі оцінити якість та зручність нашого продукт, який стане для тебе надійним партнером і порадником в професійній самореалізації.\r\n'),
	(2, 'UA', 'крок', 2, 'Вибір курсу чи модуля', '/css/images/', 'step2.jpg', '<p>Щоб стати спеціалістом певного напрямку та рівня (отримати професійну спеціалізацію) вибери для проходження відповідний курс. Якщо Тебе цікавить виключно поглиблення знань в певному напрямку ІТ, то вибери відповідний модуль для проходження.</p>'),
	(3, 'UA', 'крок', 3, 'Проплата', '/css/images/', 'step3.jpg', 'Щоб розпочати проходження курсу чи модуля вибери схему оплати (вся сума за курс, помісячно, потриместрово тощо) та здійсни оплату зручним Тобі способом (схему оплати курсу чи модуля можна змінювати, також можлива помісячна оплата в кредит).'),
	(4, 'UA', 'крок', 4, 'Освоєння матеріалу', '/css/images/', 'step4.jpg', '<p>Вивчення матеріалу можливе шляхом читання тексту чи/і перегляду відео для кожного заняття.\n    Протягом освоєння матеріалу заняття виконуй Проміжні тестові завдання. По завершенню кожного заняття виконуй Підсумкове тестове завдання. Кожен модуль завершується Індивідуальним проектом чи Екзаменом.\n    Можна отримати індивідуальну консультацію викладача чи обговорити питання на форумі.</p>'),
	(5, 'UA', 'крок', 5, 'Завершення курсу', '/css/images/', 'step5.jpg', 'Підсумком курсу є Командний дипломний проект, який виконується разом з іншими студентами (склад команди формуєш самостійно чи рекомендує керівник, який затверджує тему і технічне завдання проекту). Здача проекту передбачає передзахист та захист в он-лайн режимі із представленням технічної документації.');
/*!40000 ALTER TABLE `step` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacher
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(35) NOT NULL,
  `middle_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `foto_url` varchar(100) NOT NULL,
  `subjects` varchar(100) NOT NULL,
  `profile_text_first` text NOT NULL,
  `profile_text_short` text NOT NULL,
  `profile_text_last` text NOT NULL,
  `readMoreLink` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `rate_knowledge` int(2) NOT NULL,
  `rate_efficiency` int(2) NOT NULL,
  `rate_relations` int(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.teacher: ~6 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `foto_url`, `subjects`, `profile_text_first`, `profile_text_short`, `profile_text_last`, `readMoreLink`, `email`, `tel`, `skype`, `rate_knowledge`, `rate_efficiency`, `rate_relations`, `user_id`, `rating`) VALUES
	(1, 'Олександра', 'Василівна', 'Сіра', 'teacher1.jpg', 'кройка и шитье сроков; програмування самоубийств', '<p><em></em>Народилася і виросла в Сакраменто, у 18 років вона переїхала до Лос-Анджелеса й незабаром стала</p><p>                                викладачем. У 2007, 2008 і 2010 рр.. вона виграла кілька номінацій премії AVN Awards</p><p>                                (також була названа «Найкращою програмісткою» у 2007 році за версією XRCO).</p><p>                                Паралельно з вікладауцью роботою та роботою програміста в Саша Грей грає головну роль в тестванні Інтернету.<br></p><p>                                Марина Енн Генціс народилася у родині механіка. Її батько мав грецьке походження.</p><p>                                Батьки дівчинки розлучилися коли їй було 5 років, надалі її виховувала мати, яка вступила</p><p>                                в повторний шлюб у 2000 роц. Марина не ладнала з вітчимом, і, коли їй виповнилося 16 років,</p><p>                                дівчина повідомила матері, що збирається покинути будинок. Достеменно невідомо, втекла вона з свого</p><p>                    будинку або ж її відпустила мати. Сама Олександра пізніше зізнавалася, що в той час робила все те,</p><p>                    що не подобалося її батькам і що вони їй забороняли.<br></p><p>                    Главный бухгалтер акционерного предприятия, специализирующегося на:</p><ul>	<li>оказании полезных услуг горизонтального характера;</li>	<li>торговле, внешнеэкономической и внутреннеэкономической;</li>	<li>позитивное обучение швейного мастерства;</li></ul>', '<p>Профессиональный преподаватель бухгалтерского и налогового учета Национальноготранспортного университета кафедры финансов, учета и аудита со стажем преподавательской работы более 25 лет. Закончила аспирантуру, автор 36 научных работ в области учета и аудита, в т.ч. уникальной обучающей методики написания бухгалтерских проводок: <span>"Как украсть и не сесть" </span> и <span>"Как украсть и посадить другого" </span>.</p><p>Главный бухгалтер акционерного предприятия, специализирующегося на:<ul><li>оказании полезных услуг горизонтального характера;</li><li>торговле, внешнеэкономической и внутреннеэкономической;</li><li>позитивное обучение швейного мастерства;</li></ul></p>', '<p>Олександра Сіра <del>виконала гол</del>овну роль у фільмі оскароносного режисера</p><p>                        Стівена Содерберга «Дівчина за викликом»[27][28]. Олександра грає дівчину на ім\'я Челсі, яка надає</p><p>                        ескорт послуги заможним людям. Содерберг взяв її на роль після того, як прочитав статтю про неї у</p><p>                        журналі Los Angeles, коментуючи це так: «She\'s kind of a new breed, I think. She doesn\'t really <del>fit </del></p><p><del><strong>                        the typical mold of someone who goes into the adult film <em>business. … I\'d never heard anybody talk </em></strong></del></p><p><del><em><strong>                        about the business the way that she ta</strong></em></del>lked about it». Журналіст Скотт Маколей каже, що можливо</p><p>                        Грей вибрала саме цю роль через свій інтерес до незалежних режисерів, таких як Жан-Люк Годар,</p><p>                        Хармоні Корін, Девід Гордон Грін, Мікеланджело Антоніоні, Аньєс Варда та Вільям Клейн.</p><p><br>Коли Олександра  готувалася до ролі у «Дівчині за викликом»,</p><p>                        Содерберг попросив її подивитися «Жити своїм життям» і «Божевільний П\'єро»[29].</p><p>                        У фільмі «Жити своїм життям» піднімаються проблеми проституції, звідки Грей могла</p><p>                        взяти щось і для своєї ролі, в той час як у «Божевільному П\'єро» показані відносини,</p><p>                        схожі на ті, що відбуваються між Челсі, її хлопцем і клієнтами.</p>', '/profile/index/?idTeacher=6', 'teacher1@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher1', 0, 0, 0, 38, 0),
	(2, 'Константин', 'Константинович', 'Константинопольский', 'teacher2.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '<p>Hello!</p>', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '<h2>Hello!</h2>', '/profile/index/?idTeacher=1', 'teacher2@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher2', 0, 0, 0, 39, 0),
	(3, 'Любовь', 'Анатольевна', 'Ктоятакая-Замухриншская', 'teacher3.jpg', 'Бухгалтер с «О» и до первой отсидки; Программирование своего позитивного прошлого', '', '<p>Практикующий главный бухгалтер. Учредитель ПП <span>«Логика тут безсильна»</span>;</p>\r\n<p>Образование высшее - ДонГУ (1987г.)</p>\r\n<p>Опыт работы 27 лет, в т. ч. преподавания - 9 лет.</p>\r\n<ul><li>специалист по позитивной энергетике;</li><li>эксперт по эффективному ремонту баянов;</li><li>мастер психотерапии для сложных бабушек и дедушек;</li></ul>', '', '/profile/index/?idTeacher=5', 'teacher3@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher3', 0, 0, 0, 40, 0),
	(4, 'Василий', 'Васильевич', 'Меняетпроффесию', 'teacher4.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '', '/profile/index/?idTeacher=2', 'teacher4@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher4', 0, 0, 0, 41, 0),
	(5, 'Ия', 'Тожевна', 'Воваяготова', 'teacher5.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '', '/profile/index/?idTeacher=3', 'teacher5@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher5', 0, 0, 0, 42, 0),
	(6, 'Петросян', 'Петросянович', 'Забугорный', 'teacher6.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '<p>hello!</p>', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '<h3>hello2!</h3>', '/profile/index/?idTeacher=4', 'teacher6@gmail.com', '/067/56-569-56, /093/26-45-65', 'teacher6', 0, 0, 0, 43, 0);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacher_module
DROP TABLE IF EXISTS `teacher_module`;
CREATE TABLE IF NOT EXISTS `teacher_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTeacher` int(11) NOT NULL,
  `idModule` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_teacher_module_teacher` (`idTeacher`),
  KEY `FK_teacher_module_module` (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.teacher_module: ~25 rows (approximately)
/*!40000 ALTER TABLE `teacher_module` DISABLE KEYS */;
INSERT INTO `teacher_module` (`id`, `idTeacher`, `idModule`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(5, 4, 1),
	(6, 3, 2),
	(7, 4, 2),
	(8, 1, 3),
	(9, 4, 3),
	(11, 4, 4),
	(14, 3, 9),
	(15, 4, 9),
	(17, 1, 10),
	(18, 4, 10),
	(19, 1, 7),
	(20, 5, 7),
	(34, 2, 11),
	(35, 1, 14),
	(36, 4, 16),
	(37, 3, 17),
	(38, 1, 18),
	(39, 3, 20),
	(40, 4, 22),
	(41, 2, 23),
	(44, 1, 20),
	(45, 2, 2);
/*!40000 ALTER TABLE `teacher_module` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacher_roles
DROP TABLE IF EXISTS `teacher_roles`;
CREATE TABLE IF NOT EXISTS `teacher_roles` (
  `teacher` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  KEY `FK_teacher_roles_teacher` (`teacher`),
  KEY `FK_teacher_roles_roles` (`role`),
  CONSTRAINT `FK_teacher_roles_roles` FOREIGN KEY (`role`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_teacher_roles_teacher` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.teacher_roles: ~19 rows (approximately)
/*!40000 ALTER TABLE `teacher_roles` DISABLE KEYS */;
INSERT INTO `teacher_roles` (`teacher`, `role`, `start_date`, `end_date`) VALUES
	(1, 4, '0000-00-00', '0000-00-00'),
	(1, 2, '0000-00-00', '0000-00-00'),
	(1, 1, '0000-00-00', '0000-00-00'),
	(2, 2, '0000-00-00', '0000-00-00'),
	(5, 4, '0000-00-00', '0000-00-00'),
	(6, 2, '0000-00-00', '0000-00-00'),
	(3, 3, '0000-00-00', '0000-00-00'),
	(4, 3, '0000-00-00', '0000-00-00'),
	(3, 4, '0000-00-00', '0000-00-00'),
	(3, 2, '0000-00-00', '0000-00-00'),
	(4, 2, '0000-00-00', '0000-00-00'),
	(2, 1, '0000-00-00', '0000-00-00'),
	(3, 1, '0000-00-00', '0000-00-00'),
	(4, 1, '0000-00-00', '0000-00-00'),
	(6, 1, '0000-00-00', '0000-00-00'),
	(1, 3, '0000-00-00', '0000-00-00'),
	(2, 3, '0000-00-00', '0000-00-00'),
	(5, 3, '0000-00-00', '0000-00-00'),
	(6, 3, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `teacher_roles` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacher_temp
DROP TABLE IF EXISTS `teacher_temp`;
CREATE TABLE IF NOT EXISTS `teacher_temp` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(6) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `middle_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `foto_url` varchar(100) NOT NULL,
  `subjects` varchar(100) NOT NULL,
  `profile_text_big` text NOT NULL,
  `profile_text` text NOT NULL,
  `readMoreLink` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `linkName` varchar(50) NOT NULL,
  `smallImage` varchar(255) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.teacher_temp: ~6 rows (approximately)
/*!40000 ALTER TABLE `teacher_temp` DISABLE KEYS */;
INSERT INTO `teacher_temp` (`teacher_id`, `lang`, `first_name`, `middle_name`, `last_name`, `foto_url`, `subjects`, `profile_text_big`, `profile_text`, `readMoreLink`, `email`, `tel`, `skype`, `title`, `linkName`, `smallImage`) VALUES
	(1, 'UA', 'Олександра', 'Василівна', 'Сіра', '/css/images/teacher1.jpg', 'кройка и шитье сроков; програмування самоубийств', 'Народилася і виросла в Сакраменто, у 18 років вона переїхала до Лос-Анджелеса й незабаром стала вкладачем. У 2007, 2008 і 2010 рр.. вона виграла кілька номінацій премії AVN Awards (також була названа «Найкращою програмісткою» у 2007 році за версією XRCO). Паралельно з вікладауцью роботою та роботою програміста в Саша Грей грає головну роль в тестванні Інтернету.\r\n\r\nМарина Енн Генціс народилася у родині механіка. Її батько мав грецьке походження. Батьки дівчинки розлучилися коли їй було 5 років, надалі її виховувала мати, яка вступила в повторний шлюб у 2000 роц. Марина не ладнала з вітчимом, і, коли їй виповнилося 16 років, дівчина повідомила матері, що збирається покинути будинок. Достеменно невідомо, втекла вона з свого будинку або ж її відпустила мати. Сама Олександра пізніше зізнавалася, що в той час робила все те, що не подобалося її батькам і що вони їй забороняли.\r\n\r\nГлавный бухгалтер акционерного предприятия, специализирующегося на:\r\n\r\n    оказании полезных услуг горизонтального характера;\r\n    торговле, внешнеэкономической и внутреннеэкономической;\r\n    позитивное обучение швейного мастерства;\r\n\r\n Олександра Сіра виконала головну роль у фільмі оскароносного режисера Стівена Содерберга «Дівчина за викликом»[27][28]. Олександра грає дівчину на ім\'я Челсі, яка надає ескорт послуги заможним людям. Содерберг взяв її на роль після того, як прочитав статтю про неї у журналі Los Angeles, коментуючи це так: «She\'s kind of a new breed, I think. She doesn\'t really fit the typical mold of someone who goes into the adult film business. … I\'d never heard anybody talk about the business the way that she talked about it». Журналіст Скотт Маколей каже, що можливо Грей вибрала саме цю роль через свій інтерес до незалежних режисерів, таких як Жан-Люк Годар, Хармоні Корін, Девід Гордон Грін, Мікеланджело Антоніоні, Аньєс Варда та Вільям Клейн.\r\n\r\nКоли Олександра готувалася до ролі у «Дівчині за викликом», Содерберг попросив її подивитися «Жити своїм життям» і «Божевільний П\'єро»[29]. У фільмі «Жити своїм життям» піднімаються проблеми проституції, звідки Грей могла взяти щось і для своєї ролі, в той час як у «Божевільному П\'єро» показані відносини, схожі на ті, що відбуваються між Челсі, її хлопцем і клієнтами.\'; ', '<p>Профессиональный преподаватель бухгалтерского и налогового учета Национальноготранспортного университета кафедры финансов, учета и аудита со стажем преподавательской работы более 25 лет. Закончила аспирантуру, автор 36 научных работ в области учета и аудита, в т.ч. уникальной обучающей методики написания бухгалтерских проводок: <span>"Как украсть и не сесть" </span> и <span>"Как украсть и посадить другого" </span>.</p><p>Главный бухгалтер акционерного предприятия, специализирующегося на:<ul><li>оказании полезных услуг горизонтального характера;</li><li>торговле, внешнеэкономической и внутреннеэкономической;</li><li>позитивное обучение швейного мастерства;</li></ul></p>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(2, 'UA', 'Константин', 'Константинович', 'Константинопольский', '/css/images/teacher2.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(3, 'UA', 'Любовь', 'Анатольевна', 'Ктоятакая-Замухриншская', '/css/images/teacher3.jpg', 'Бухгалтер с «О» и до первой отсидки; Программирование своего позитивного прошлого', '', '<p>Практикующий главный бухгалтер. Учредитель ПП <span>«Логика тут безсильна»</span>;</p>\r\n<p>Образование высшее - ДонГУ (1987г.)</p>\r\n<p>Опыт работы 27 лет, в т. ч. преподавания - 9 лет.</p>\r\n<ul><li>специалист по позитивной энергетике;</li><li>эксперт по эффективному ремонту баянов;</li><li>мастер психотерапии для сложных бабушек и дедушек;</li></ul>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(4, 'UA', 'Василий', 'Васильевич', 'Меняетпроффесию', '/css/images/teacher4.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(5, 'UA', 'Ия', 'Тожевна', 'Воваяготова', '/css/images/teacher5.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(6, 'UA', 'Петросян', 'Петросянович', 'Забугорный', '/css/images/teacher6.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/profile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png');
/*!40000 ALTER TABLE `teacher_temp` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.trainer_student
DROP TABLE IF EXISTS `trainer_student`;
CREATE TABLE IF NOT EXISTS `trainer_student` (
  `trainer` int(10) NOT NULL,
  `student` int(10) NOT NULL,
  KEY `FK_trainer_student_teacher` (`trainer`),
  KEY `FK_trainer_student_user` (`student`),
  CONSTRAINT `FK_trainer_student_teacher` FOREIGN KEY (`trainer`) REFERENCES `teacher` (`teacher_id`),
  CONSTRAINT `FK_trainer_student_user` FOREIGN KEY (`student`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.trainer_student: ~7 rows (approximately)
/*!40000 ALTER TABLE `trainer_student` DISABLE KEYS */;
INSERT INTO `trainer_student` (`trainer`, `student`) VALUES
	(1, 55),
	(1, 51),
	(2, 52),
	(3, 1),
	(4, 11),
	(5, 54),
	(6, 22);
/*!40000 ALTER TABLE `trainer_student` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `identity` varchar(255) NOT NULL,
  `network` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `secondName` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `birthday` varchar(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `vkontakte` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `hash` varchar(20) NOT NULL,
  `address` text,
  `education` varchar(255) DEFAULT NULL,
  `educform` varchar(60) DEFAULT 'Онлайн',
  `interests` text,
  `aboutUs` text,
  `aboutMy` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT '/avatars/noname.png',
  `role` tinyint(2) NOT NULL DEFAULT '0',
  `token` varchar(150) DEFAULT NULL,
  `activkey_lifetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.user: ~21 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `firstName`, `identity`, `network`, `state`, `full_name`, `middleName`, `secondName`, `nickname`, `birthday`, `email`, `password`, `facebook`, `googleplus`, `linkedin`, `vkontakte`, `twitter`, `phone`, `hash`, `address`, `education`, `educform`, `interests`, `aboutUs`, `aboutMy`, `avatar`, `role`, `token`, `activkey_lifetime`, `status`) VALUES
	(1, 'Вова', '', '', 0, '', 'Джа', 'Марля', 'Wizlight', '21/03/1997', 'Wizlightdragon@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '', '', '', '', '', '+38(911)_______', '', 'Ямайка', 'ВДПУ', 'Онлайн', 'Ковбаска, колобки, раста', '', 'Володію албанською. Люблю м\'ясо та до м\'яса. Розвожу королів. ', '1id.jpg', 0, NULL, NULL, 1),
	(11, 'ivanna@yutr.rtr', '', '', 0, '', NULL, '', '', '', 'ivanna@yutr.rtr', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Онлайн', '', '', '', 'ivanna@yutr.rtr.jpg', 1, NULL, NULL, 1),
	(22, 'Student', '', '', 0, '', NULL, '', '', '', 'student@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Онлайн', '', '', '', 'ttttt@tttt.com.jpg', 0, NULL, NULL, 1),
	(38, '', '', '', 0, '', NULL, '', '', '', 'teacher1@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '', '', '', '', '', '', '', '', '', 'Онлайн', '', '', '', '55874567cec86.jpg', 1, 'b7d8aa75094d15f260127f485a480bf844b60016', '2015-05-18 13:58:52', 1),
	(39, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teacher2@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(40, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teacher3@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(41, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teacher4@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(42, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teacher5@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(43, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teacher6@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(44, 'Vinnytsia', '', '', 0, '', NULL, 'IT-Academy', NULL, NULL, 'ita.in.ua.hr@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(45, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'romcom77@gmail.com', '08de4459afb53dd6e8ab179fb42cdb93b0516185', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(46, 'IT', '', '', 0, '', NULL, 'Academy', NULL, NULL, 'ita.in.ua@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(47, 'Анонім', '', '', 0, '', NULL, '', '', '', 'tifjseihfuiw@tttt.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Онлайн', '', '', '', '5541133ea993f.jpg', 0, NULL, NULL, 1),
	(48, '', '', '', 0, '', NULL, NULL, NULL, NULL, 'teac@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(49, 'Admin', '', '', 0, '', NULL, NULL, NULL, NULL, 'vnnchkh@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 3, NULL, NULL, 1),
	(50, 'Serhiy', '', '', 0, '', NULL, 'Kalinovsky', NULL, '19.11.1978', 'serhiy.kalinovsky@gmail.com', NULL, 'https://www.facebook.com/serhiy.kalinovsky', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 1, NULL, NULL, 1),
	(51, 'Student 1', '', '', 0, '', NULL, NULL, NULL, NULL, 'student1@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(52, 'Student 2', '', '', 0, '', NULL, NULL, NULL, NULL, 'student2@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(53, 'Student 3', '', '', 0, '', NULL, NULL, NULL, NULL, 'student3@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(54, 'Student 4', '', '', 0, '', NULL, NULL, NULL, NULL, 'student4@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1),
	(55, 'Student 5', '', '', 0, '', NULL, NULL, NULL, NULL, 'student5@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Онлайн', NULL, NULL, NULL, 'noname.png', 0, NULL, NULL, 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
