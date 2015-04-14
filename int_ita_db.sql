-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-04-07 17:44:27
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table int_ita_db.aa_authorizations: ~48 rows (approximately)
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
	(48, 2, '2015-04-07 16:12:17', '::1');
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
	(1, 'UA', '/css/images/line2.png', 'image1.png', 'Про що мрієш ти?', '<p>Спробуємо вгадати: власна квартира чи навіть будинок? Гарний автомобіль? Закордонні подорожі, можливо, до екзотичних країн?</p>', '/index.php?r=site/aboutdetail&id=1', '/css/images/', '', '', '', '', '<p>Спробуємо вгадати: власна квартира чи навіть будинок? Гарний автомобіль? Закордонні подорожі, можливо, до екзотичних країн? Забезпечене життя для себе та близьких, коли не доводиться думати про гроші?\nА, може, це свобода жити своїм життям? Самостійно керувати власним часом з можливістю працювати за зручним графіком без необхідності щодня їздити на роботу, але при цьому мати стабільно високий дохід?\n	Можливо ти хочеш заробляти, займаючись улюбленою справою і отримувати задоволення від сучасної професії?\nПро що б ти не мріяв, для здійснення більшості мрій потрібні гроші. Сьогодні середня зарплата в Україні є найнижчою в Європі: близько 3,5 тис грн у місяць. Навіть якщо брати сферу бізнесу, зарплати більшості робітників не перевищують 5-8 тис грн. \nЯк щодо 40 - 60 тис грн в місяць з можливістю працювати за гнучким графіком та дистанційно? Ти думаєш, що в нашій країні такі умови лише у керівників та власників бізнесу? У нас хороша новина: вже через рік-два-три так зможеш заробляти і ти.</p>\n\n<p><span class="detailTitle2">Професія майбутнього</span>\n Сьогодні у тебе є реальна можливість поєднати хороший заробіток, гнучкий графік роботи та зручність дистанційної роботи. І це не “заработок в интернете”, про який кричить банерна реклама на багатьох сайтах. Ми віримо у те, що високого стабільного доходу можна досягти лише за допомогою власних зусиль.\nМи живемо в епоху, коли головним двигуном розвитку світової економіки є інформаційні технології (ІТ). Вони дозволяють досягти нових проривних результатів у традиційних галузях: виробництві та послугах. Саме інформаційні технології повністю змінили і продовжують трансформувати індустрії звязку, розваг (книги, музика, фільми), банківських послуг, а також такі традиційні бізнеси, як послуги таксі (Uber), готелів (Airbnb), навчання (Coursera). \nГерої інформаційної епохи - це спеціалісти з інформаційних технологій. Вони знаходяться на передовій змін, вони придумали та продовжують розвивати Windows, iOS, Android, а також мільйони додатків до них, вони створюють соціальні мережі, сайти та бази даних. \nГарна новина для тебе: сьогодні таких спеціалістів не вистачає. Інформаційні технології розвиваються дуже швидко і стають потрібними усюди, тому людей не вистачає, існуючі навчальні заклади просто не встигають готувати потрібну кількість. Нестача спеціалістів означає, що зарплати на ринку стабільно зростають, і сягнули небачених для України значень: в середньому спеціалісти з інформаційних технологій сьогодні отримують 3-5 тис доларів у місяць, і при цьому роботодавці активно полюють на професіоналів. Секрет таких високих зарплат не лише у дефіциті кадрів, а й у тому, що для ІТ-галузі кордони - не проблема. Ти можеш працювати вдома зі своєї квартири в Україні над замовленням клієнта зі США чи Німеччини і отримувати винагороду у доларах чи євро з рівнем оплати, не набагато нижчим від американських чи європейських стандартів.  \nМи запрошуємо тебе приєднатися до світової інформаційної еліти та за короткий час стати професіоналом у сфері інформаційних технологій, щоб отримувати стабільно високий дохід та працювати в зручних умовах за гнучким графіком. </p>\n\n<p><span class="detailTitle2">Що очікується від тебе</span><br/>\nПрограмування - це не так складно, як ти можеш уявляти. Безумовно, щоб стати хорошим програмістом, потрібен час та зусилля. Ризикнемо сказати, що крім часу та зусиль (та, зрозуміло, наявності простенького компютера) не потрібно більше ні-чо-го. Не потрібно бути сильним у математиці: навіть якщо у школі ти не любив математику, а твої оцінки не піднимались вище середнього рівня, ти зможеш стати чудовим програмістом. Не потрібно знати, як влаштований компютер чи бути досвіченим користувачем будь-яких програм. Достатньо часу на навчання та бажання займатися. Гарні знання з математики, логіки, комп’ютера можуть пришвидшити темп навчання, але й без них кожен зможе досягти високого рівня професіоналізму у програмуванні завдяки іноваційному підходу до навчання Академії Програмування ІНТІТА.</p>'),
	(2, 'UA', '/css/images/line2.png', 'image2.png', 'Навчання майбутнього', '<p>Програмування – це не так складно, як ти можеш уявляти. Безумовно, щоб стати хорошим програмістом, потрібен час та зусилля.</p>', '/index.php?r=site/aboutdetail&id=2', '/css/images/', '', '', '', '', '<p>Коли мова йде про навчальний заклад, можемо побитися об заклад, що до думки тобі приходять велика будівля з десятками навчальних приміщень, лекційна аудиторія, парти, записники, конспекти, викладачі, лекції, семінари. Така система освіти сформувалася ще у Стародавній Греції, і за кілька тисяч років майже не змінилася. Але зараз світ стоїть на порозі великої революції в освіті, яка назавжди змінить те, як ми навчаємося. Сьогодні технології зробили доступним те, що раніше могли дозволити собі лише одиниці, наймаючи персональних вчителів та репетиторів: персоналізоване навчання.\n<span class="detailTitle2">“Три кити” Академії ІНТІТА </span></p>\n\n<p><span class="detailTitle3">Кит перший. Гнучкість та зручність. </span></p>\n\n<p>Ти можеш самостійно будувати графік навчання, виходячи з власних потреб та цілей. Якщо ти хочеш закінчити навчання та почати працювати вже через рік, обирай інтенсивне навчання та займайся 6-8 годин в день. Якщо ти хочеш освоїти програмування поступово, не жертвуючи іншими важливими для тебе речами, ти можеш займатися ті ж 6-8 годин, але у тиждень. \nНе потрібно відвідувати навчальний заклад, Академія з тобою всюди. Навіть якщо ти у місці, де немає звязку та інтернету, ти можеш переглядати лекції в офлайн-режимі, а практичну частину зробити пізніше, коли зявиться доступ.  \n<span class="detailTitle3">Кит другий. Орієнтація на ринок. </span></p>\n\n<p>Ми даємо тобі лише 100% необхідні знання. Ми поважаємо гуманітарні дисципліни та фундаментальні точні науки, які входять до  складу обовязкових для вивчення у вишах, але переконані, що вони не є обовязковими для того, щоб стати професіоналом у сфері інформаційних технологій. Ми вважаємо, що кожен має вирішувати індивідуально, що вивчати та чим цікавитись за межами своєї професії. У той же час у програмах вишів відсутні критичні для професійного успіху дисципліни, або ж вони викладаються недостатньо професійно (англійська мова для ІТ-спеціалістів, проектний менеджмент тощо). Інформаційні технології - це дисципліна, яка змінюється кожного дня, програми вишів просто не встигають адаптуватися до такої швидкості змін. ІНТІТА слідкує за змінами щодня, і адаптує як навчальну програму, так і зміст окремих предметів за необхідностю миттєво. Ми завжди у пошуку нового матеріалу, який можна передати студентам академії.  \nПорівнюючи звичайний технічний виш та академію ІНТІТА, ти можеш думати про сімейний універсал та болід Формула-1. Перший підходить для широкого кола завдань, але він значно програє позашляховикам у прохідності, міні-венам у місткості, лімузинам - у комфорті, спротивним автомобілям - у швидкості та керуванні. Другий сконструйовано лише заради максимальної швидкості та маневреності, жертвуючи усім іншим. І в результаті ми не зробимо з тебе універсально освічену людину, яка розбирається потрохи у всьому, ми зробимо тебе професіоналом світового класу в області програмування.  \n <span class="detailTitle3">Кит третій. Результативність. </span></p>\n\n<p>На відміну від традиційних закладів, ми не навчаємо задля оцінок. Ми працюємо індивідуально з кожним студентом, щоб досягти 100% засвоєння необхідних знань (а ми даємо лише необхідні знання). Ми не обмежуємо тебе у часі, теоретично ти можеш навчатися як завгодно довго. Ми беремо на себе зобовязання навчити тебе програмуванню, незважаючи на те, які знання у тебе вже є. Єдиними передумовами для початку занять є бажання, час на навчання, наявність хоча б простенького компютера та вміння читати та писати. \nЗнання, які ти отримаєш, максимально практичні та сучасні. Починаючи з першого заняття, ти робитимеш завдання з реального світу програмування. Ближче до закінчення навчання ти будеш приймати участь у створенні реальних програмних продуктів для ринку.\nМи гарантуємо тобі 100% отримання пропозиції про працевлаштування протягом 4-6-ти місяців після успішного закінчення навчання.\n <span class="detailTitle2">ІНТІТА: переваги наочно</span>\n \n <table id="detailTable">\n<tr><td><span class="detailTitle2">Традиційне навчання</span></td><td><span class="detailTitle2">ІНТІТА</span></td><td><span class="detailTitle2">Переваги</span></td></tr>\n <tr><td>Необхідність відвідувати заняття у класі</td><td>Навчання у себе вдома</td><td>Комфортна домашня атмосфера, економія часу та коштів на поїздки</td></tr>\n <tr><td>Заняття за фіксованим графіком</td><td>Заняття за індивідуальним графіком</td><td>Можливість підлаштувати графік навчання під власні потреби</td></tr>\n<tr><td>Жорстко визначена навчальна програма, привязана до часових рамок (академічний рік)</td><td>Можливість обирати предмети та термін навчання </td><td>Навчання в комфортному темпі за власним графіком, не обмежене часом</td></tr>\n<tr><td>Лекції та семінари, як основа навчального процесу (вивчення теорії)</td><td>Практичні заняття з першого дня навчання, створення реальних працюючих проектів</td><td>Отримання реального робочого досвіду вже протягом навчання, портфоліо готових робіт на момент закінчення навчання</td></tr>\n<tr><td>Оцінки за якість засвоєних знань за певний час </td><td>Оцінок немає, лише “знання засвоєні” чи “потрібно навчатися далі”</td><td>Навчання до позитивного результату: до повного засвоєння необхідних знань</td></tr>\n<tr><td>Диплом про вищу освіту видається через 5-6 років за умови засвоєння великої кількості непрофільних знань (мова, історія, філософія тощо)</td><td>Лише практичні знання, які будуть потрібні тобі у роботі та житті: програмування, англійська мова, побудова карєри на ринку інформаційних технологій, основи життєвого успіху.</td><td>Весь час навчання витрачається на отримання корисних практичних знань, тому термін навчання скорочуються, а кількість практичних засвоєних знань більша, ніж у традиційних закладах.</td></tr>\n </table> \'</p>'),
	(3, 'UA', '/css/images/line2.png', 'image3.png', 'Питання та відгуки', '<p>Три кити Академії Програмування ІНТІТА Самостійний графік навчання. Лише 100% необхідні знання. Засвоєння 100% знань!</p>', '/index.php?r=site/aboutdetail&id=3', '/css/images/', '', '', '', '', '<p><span class="detailTitle3">Скільки триває навчання, як швидко я зможу почати заробляти?\n</span><ul><li class="listAbout">навчання не має фіксованого терміну і залежить виключно від темпу, який обереш ти.\n</li></ul>\n<span class="detailTitle3">Чи отримаю я державний диплом про освіту?\n</span><ul><li class="listAbout">ми не видаємо дипломів державного зразка, наша ціль - забезпечити передумови для гарантованого працевлаштування слухачів.\n</li></ul>\n<span class="detailTitle3">Чому навчання коштує так дешево (дорого) у порівнянні з вишем (курсами) Х?\n</span><ul><li class="listAbout">вартість навчання економічно обгрунтована і буде відроблена менше, ніж за рік роботи на позиції програміста-початківця.\n</li></ul>\n<span class="detailTitle3">У мене зараз немає необхідних коштів, чи можу я навчатися у кредит?\n</span><ul><li class="listAbout">так, ми пропонуємо гнучкий підхід в оплаті за навчання, детальніше можна вияснити написавши нам листа на електронну пошту. Контакти.\n</li></ul>\n<span class="detailTitle3">Я чув від знайомого, що він освоїв програмування самотужки, це можливо?\n</span><ul><li class="listAbout">так, на ринку багато “програмістів-самоучок”, але вони, як правило, пройшли довгий шлях для того, щоб навчитись програмуванню, ми - один із ефективних варіантів стати кваліфікованим програмістом за короткий час.\n</li></ul>\n<span class="detailTitle3">У мене у школі було погано з математикою / я давно не займався математикою. Це може завадити мені навчитися програмуванню?\n</span><ul><li class="listAbout">математика допомагає краще розвинути логічне мислення і знання елементарної математики необхідні обов’язково, проте, не математичне, а логічне мислення визначає наскільки гарний програміст і тільки невеликий відсоток гарних математиків стають професійними програмістами.\n</li></ul>\n<span class="detailTitle3">Мені 34 роки, чи можу я зараз розпочати навчання?\n</span><ul><li class="listAbout">верхньої вікової межі для того, щоб вивчати програмування - немає, люди і старшого віку розпочинали і досягали гарних результатів. Життєвий досвід людям старшого віку дозволяє ефективніше побудувати навчальний процес і швидше кар’єрно зростати.\n</li></ul>\n<span class="detailTitle3">Я чув думку, що професія програміста технічна, а я - людина творча. Чи підійде програмування мені?\n</span><ul><li class="listAbout">програмування - це і є творчість, варто спробувати, щоб зрозуміти чи це твоє покликання.\n</li></ul>\'</p>'),
	(4, 'RU', '/css/images/line2.png', 'image1.png', 'О чём ты мечтаешь?', '<p>Попробуем угадать: собственная квартира или даже дом? Красивая машина? Заграничные путешествия в экзотические страны?</p>', '/index.php?r=site/aboutdetail&id=1', '/css/images/', '', '', '', '', ''),
	(5, 'RU', '/css/images/line2.png', 'image2.png', 'Обучение будущего', '<p>Программирование - это не так сложно, как ты думаешь. Безусловно, чтобы стать хорошим программистом, нужны время и усилия.</p>', '/index.php?r=site/aboutdetail&id=2', '/css/images/', '', '', '', '', ''),
	(6, 'RU', '/css/images/line2.png', 'image3.png', 'Вопросы и отзывы', '<p>Три кита Академии Программирования ИНТИТА. Самостоятельный график обучения. Только 100% необходимые знания. 100 % усвоение знаний!</p>', '/index.php?r=site/aboutdetail&id=3', '/css/images/', '', '', '', '', '');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;


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


-- Dumping structure for table int_ita_db.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_ID` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_duration_hours` int(11) NOT NULL,
  `modules_count` int(255) DEFAULT NULL,
  `course_price` decimal(10,0) DEFAULT NULL,
  `for_whom` text,
  `what_you_learn` text,
  `what_you_get` text,
  `course_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_ID`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.course: ~9 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`course_ID`, `alias`, `language`, `course_name`, `course_duration_hours`, `modules_count`, `course_price`, `for_whom`, `what_you_learn`, `what_you_get`, `course_img`) VALUES
	(1, 'course1', 'ua', 'Програмування для чайників', 89, 7, 6548, 'хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект;', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити;', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині;', '/css/images/course1Image.png'),
	(2, 'course2', 'ua', 'Course 2. Programming', 120, 0, 0, '', '', '', NULL),
	(3, 'course3', 'ua', 'Course 3. Math', 30, 0, 0, '', '', '', NULL),
	(4, 'course4', 'ua', 'Course 4. Discrete math', 40, 0, 0, '', '', '', NULL),
	(5, 'course5', 'ua', 'Course 5', 36, 0, 0, '', '', '', NULL),
	(6, 'course6', 'ua', 'Course 6', 130, 0, 0, '', '', '', NULL),
	(7, 'course7', 'ua', 'Course 7', 64, 0, 0, '', '', '', NULL),
	(8, 'course8', 'ua', 'Course 8', 54, 0, 0, '', '', '', NULL),
	(9, 'course9', 'ua', 'Course 9', 90, 0, 0, '', '', '', NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.courseresource
DROP TABLE IF EXISTS `courseresource`;
CREATE TABLE IF NOT EXISTS `courseresource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idCourse` int(10) NOT NULL,
  `idResource` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_courseresource_resource` (`idResource`),
  CONSTRAINT `FK_courseresource_resource` FOREIGN KEY (`idResource`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.courseresource: ~0 rows (approximately)
/*!40000 ALTER TABLE `courseresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `courseresource` ENABLE KEYS */;


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
	(1, 'RU', '/css/images/sotial.gif', 'телефон: +38 0432 52 82 67 ', 'тел. моб. +38 067 432 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png'),
	(2, 'EN', '/css/images/sotial.gif', 'tel.: +38 0432 52 82 67', 'mobile +38 067 432 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png'),
	(3, 'UA', '/css/images/sotial.gif', 'телефон: +38 0432 52 82 67', 'тел. моб. +38 067 432 20 10', 'e-mail: intita.hr@gmail.com', '/css/images/go_up.png');
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.header
DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `headerID` int(11) NOT NULL AUTO_INCREMENT,
  `language` enum('EN','UA','RU') NOT NULL,
  `logoURL` varchar(255) NOT NULL,
  `smallLogoURL` varchar(255) NOT NULL,
  `menuItem1` varchar(30) NOT NULL,
  `item1Link` varchar(255) NOT NULL,
  `menuItem2` varchar(30) NOT NULL,
  `item2Link` varchar(255) NOT NULL,
  `menuItem3` varchar(30) NOT NULL,
  `item3Link` varchar(255) NOT NULL,
  `menuItem4` varchar(30) NOT NULL,
  `item4Link` varchar(255) NOT NULL,
  `enterButtonText` varchar(30) NOT NULL,
  `logoutButtonText` varchar(30) NOT NULL,
  PRIMARY KEY (`headerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.header: ~3 rows (approximately)
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` (`headerID`, `language`, `logoURL`, `smallLogoURL`, `menuItem1`, `item1Link`, `menuItem2`, `item2Link`, `menuItem3`, `item3Link`, `menuItem4`, `item4Link`, `enterButtonText`, `logoutButtonText`) VALUES
	(0, 'UA', '/css/images/Logo_big.png', '/css/images/Logo_small.png', 'Курси', '/courses', 'Викладачі', '/teachers', 'Форум', 'http://www.google.com', 'Про нас', '/site/aboutdetail', 'Вхід', 'Вхід'),
	(1, 'RU', '/css/images/Logo_big.png', '/css/images/Logo_small.png', 'Курсы', '/courses', 'Преподаватели', '/teachers', 'Форум', 'http://www.google.com', 'О нас', '/site/aboutdetail', 'Вход', 'Выход'),
	(3, 'UA', '/css/images/Logo_big.png', '/css/images/Logo_small.png', 'Курси', '/courses', 'Викладачі', '/teachers', 'Форум', 'http://www.google.com', 'Про нас', '/site/aboutdetail', 'Вхід', 'Вхід');
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
	(1, 'RU', 'русский', 'Россия'),
	(2, 'EN', 'english', 'Great Britain'),
	(3, 'UA', 'українська', 'Україна');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lecture
DROP TABLE IF EXISTS `lecture`;
CREATE TABLE IF NOT EXISTS `lecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `idModule` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `idType` int(11) NOT NULL,
  `durationInMinutes` int(11) NOT NULL,
  `maxNumber` int(11) NOT NULL,
  `iconIsDone` varchar(255) NOT NULL,
  `preLecture` int(11) NOT NULL,
  `nextLecture` int(11) NOT NULL,
  `idTeacher` varchar(50) NOT NULL,
  `lectureUnwatchedImage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lecture_module` (`idModule`),
  CONSTRAINT `FK_lecture_module` FOREIGN KEY (`idModule`) REFERENCES `module` (`module_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lecture: ~1 rows (approximately)
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` (`id`, `image`, `alias`, `language`, `idModule`, `order`, `title`, `idType`, `durationInMinutes`, `maxNumber`, `iconIsDone`, `preLecture`, `nextLecture`, `idTeacher`, `lectureUnwatchedImage`) VALUES
	(1, '/css/images/lectureImage.png', 'types', 'ua', 1, 3, 'Goal of classes 1', 10, 40, 6, '/css/images/medalIcoFalse.png', 2, 4, '2', 'css/images/ratIco0.png');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lectureresource
DROP TABLE IF EXISTS `lectureresource`;
CREATE TABLE IF NOT EXISTS `lectureresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLecture` int(11) NOT NULL,
  `idResource` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lectureResource_resource` (`idResource`),
  CONSTRAINT `FK_lectureResource_resource` FOREIGN KEY (`idResource`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lectureresource: ~0 rows (approximately)
/*!40000 ALTER TABLE `lectureresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `lectureresource` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lectures
DROP TABLE IF EXISTS `lectures`;
CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `idModule` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `idType` int(11) NOT NULL,
  `durationInMinutes` int(11) NOT NULL,
  `maxNumber` int(11) NOT NULL,
  `iconIsDone` varchar(255) NOT NULL,
  `preLecture` int(11) NOT NULL,
  `nextLecture` int(11) NOT NULL,
  `idTeacher` varchar(50) NOT NULL,
  `lectureUnwatchedImage` varchar(255) NOT NULL,
  `lectureOverlookedImage` varchar(255) NOT NULL,
  `lectureTimeImage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lectures: ~3 rows (approximately)
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` (`id`, `image`, `alias`, `language`, `idModule`, `order`, `title`, `idType`, `durationInMinutes`, `maxNumber`, `iconIsDone`, `preLecture`, `nextLecture`, `idTeacher`, `lectureUnwatchedImage`, `lectureOverlookedImage`, `lectureTimeImage`) VALUES
	(1, '/css/images/lectureImage.png', 'lecture3', 'UA', 1, 3, 'Змінні та типи даних в PHP', 1, 40, 6, '/css/images/medalIcoFalse.png', 2, 4, '2', 'css/images/ratIco0.png', 'css/images/ratIco1.png', 'css/images/timeIco.png'),
	(2, '/css/images/lectureImage.png', 'lecture2', 'UA', 1, 2, 'Змінні та типи даних в PHP', 1, 50, 6, '/css/images/medalIcoFalse.png', 1, 3, '2', 'css/images/ratIco0.png', 'css/images/ratIco1.png', 'css/images/timeIco.png'),
	(3, '/css/images/lectureImage.png', 'lecture4', 'UA', 1, 4, 'Змінні та типи даних в PHP', 1, 60, 6, '/css/images/medalIcoFalse.png', 3, 5, '3', 'css/images/ratIco0.png', 'css/images/ratIco1.png', 'css/images/timeIco.png');
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.lecturetype
DROP TABLE IF EXISTS `lecturetype`;
CREATE TABLE IF NOT EXISTS `lecturetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `text` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.lecturetype: ~2 rows (approximately)
/*!40000 ALTER TABLE `lecturetype` DISABLE KEYS */;
INSERT INTO `lecturetype` (`id`, `image`, `text`, `description`) VALUES
	(1, '/css/images/lectureType.png', 'лекція', ''),
	(2, '/css/images/lectureType.png', 'практична робота', '');
/*!40000 ALTER TABLE `lecturetype` ENABLE KEYS */;


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
	(0, 'ua', 'INTITA', 'ПРОГРАМУЙ  МАЙБУТНЄ', 'Не упусти свій шанс змінити світ - отримай якісну та сучасну освіту і стань класним спеціалістом!', 'mainpage', 'PROGRAM FUTURE', '/css/images/slider_img/texture.png', '/css/images/slider_img/line.png', 'ПОЧАТИ', 'Про нас', '/css/images/line1.png', 'дещо, що Вам потрібно знати про наші курси', '1', 'Як проводиться навчання?', 'далі пояснення як ви будете вчитися крок за кроком', '1', '958px', 'детальніше ...', '/css/images/hexagon.png', 'Готові розпочати?', 'Введіть дані в форму нижче', 'розширена реєстрація', 'ПОЧАТИ', 'Ви можете також зареєструватися через соцмережі:', '/css/images/networking.png', '/css/images/formFon.png');
/*!40000 ALTER TABLE `mainpage` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.module
DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `module_ID` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `module_name` varchar(45) NOT NULL,
  `alias` varchar(10) NOT NULL,
  `language` varchar(6) NOT NULL,
  `module_duration_hours` int(11) NOT NULL,
  `module_duration_days` int(11) NOT NULL,
  `lesson_count` int(11) DEFAULT NULL,
  `module_price` decimal(10,0) DEFAULT NULL,
  `for_whom` text,
  `what_you_learn` text,
  `what_you_get` text,
  `module_img` varchar(255) DEFAULT NULL,
  `about_module` text,
  PRIMARY KEY (`module_ID`),
  UNIQUE KEY `module_ID` (`module_ID`),
  KEY `course` (`course`),
  CONSTRAINT `FK_module_course` FOREIGN KEY (`course`) REFERENCES `course` (`course_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.module: ~3 rows (approximately)
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`module_ID`, `course`, `module_name`, `alias`, `language`, `module_duration_hours`, `module_duration_days`, `lesson_count`, `module_price`, `for_whom`, `what_you_learn`, `what_you_get`, `module_img`, `about_module`) VALUES
	(1, 1, 'Основи PHP', 'start', 'ua', 14, 20, 6, 1256, 'для менеджерів проектів і тих, хто відповідає за постановку завдань на розробку;для дизайнерів, які готові почати не просто малювати красиві картинки, а й навчитися тому, як створювати працюючі і зручні інтерфейси;для розробників, які хочуть самостійно створити або змінити свій проект;', 'Ви навчитеся писати чистий код;Користуватися системами контролю версій;Дізнаєтеся, з чого складається сучасний додаток;Для чого потрібен безперервна інтеграція (СІ) сервер;Чому потрібно тестувати свої програми і як це робити;', 'Відеозаписи та текстові матеріали всіх онлайн-занять;Спілкування з розумними одногрупниками;Сертифікат про закінчення навчання;Прилаштованість на робоче місце в силіконовій долині;', '/css/images/courseimg1.png', NULL),
	(2, 2, 'Module 2', 'module2', 'ua', 30, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 3, 'Module 3', 'module3', 'ua', 60, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.moduleresource
DROP TABLE IF EXISTS `moduleresource`;
CREATE TABLE IF NOT EXISTS `moduleresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idModule` int(11) NOT NULL,
  `idResource` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_moduleResource_moduleresource` (`idResource`),
  CONSTRAINT `FK_moduleResource_moduleresource` FOREIGN KEY (`idResource`) REFERENCES `moduleresource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.moduleresource: ~0 rows (approximately)
/*!40000 ALTER TABLE `moduleresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `moduleresource` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.resource
DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `idResource` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.resource: ~0 rows (approximately)
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) NOT NULL DEFAULT 'system',
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_key` (`category`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.sourcemessages
DROP TABLE IF EXISTS `sourcemessages`;
CREATE TABLE IF NOT EXISTS `sourcemessages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Table for interface messages (original - English).';

-- Dumping data for table int_ita_db.sourcemessages: ~91 rows (approximately)
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
	(27, 'slider', '0027<br>\r\nsliderText1'),
	(28, 'slider', '0028<br>\r\nsliderText2'),
	(29, 'slider', '0029<br>\r\nsliderText3'),
	(30, 'slider', '0030<br>\r\nsliderText4'),
	(31, 'slider', '0031<br>\r\nsliderText5'),
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
	(91, 'regform', '0091');
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


-- Dumping structure for table int_ita_db.studentsaccess
DROP TABLE IF EXISTS `studentsaccess`;
CREATE TABLE IF NOT EXISTS `studentsaccess` (
  `accessID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `moduleID` int(11) NOT NULL,
  `lectureID` int(11) NOT NULL,
  `dateChange` date NOT NULL,
  PRIMARY KEY (`accessID`),
  KEY `FK_courseaccess_students` (`studentID`),
  KEY `FK_studentsaccess_course` (`courseID`),
  KEY `FK_studentsaccess_lectures` (`lectureID`),
  KEY `FK_studentsaccess_modules` (`moduleID`),
  CONSTRAINT `FK_studentsaccess_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`course_ID`),
  CONSTRAINT `FK_studentsaccess_lectures` FOREIGN KEY (`lectureID`) REFERENCES `lecture` (`id`),
  CONSTRAINT `FK_studentsaccess_modules` FOREIGN KEY (`moduleID`) REFERENCES `module` (`module_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.studentsaccess: ~0 rows (approximately)
/*!40000 ALTER TABLE `studentsaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentsaccess` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacher
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
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

-- Dumping data for table int_ita_db.teacher: ~6 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`teacher_id`, `lang`, `first_name`, `middle_name`, `last_name`, `foto_url`, `subjects`, `profile_text_big`, `profile_text`, `readMoreLink`, `email`, `tel`, `skype`, `title`, `linkName`, `smallImage`) VALUES
	(1, 'UA', 'Олександра', 'Василівна', 'Сіра', '/css/images/teacher1.jpg', 'кройка и шитье сроков; програмування самоубийств', 'Народилася і виросла в Сакраменто, у 18 років вона переїхала до Лос-Анджелеса й незабаром стала вкладачем. У 2007, 2008 і 2010 рр.. вона виграла кілька номінацій премії AVN Awards (також була названа «Найкращою програмісткою» у 2007 році за версією XRCO). Паралельно з вікладауцью роботою та роботою програміста в Саша Грей грає головну роль в тестванні Інтернету.\r\n\r\nМарина Енн Генціс народилася у родині механіка. Її батько мав грецьке походження. Батьки дівчинки розлучилися коли їй було 5 років, надалі її виховувала мати, яка вступила в повторний шлюб у 2000 роц. Марина не ладнала з вітчимом, і, коли їй виповнилося 16 років, дівчина повідомила матері, що збирається покинути будинок. Достеменно невідомо, втекла вона з свого будинку або ж її відпустила мати. Сама Олександра пізніше зізнавалася, що в той час робила все те, що не подобалося її батькам і що вони їй забороняли.\r\n\r\nГлавный бухгалтер акционерного предприятия, специализирующегося на:\r\n\r\n    оказании полезных услуг горизонтального характера;\r\n    торговле, внешнеэкономической и внутреннеэкономической;\r\n    позитивное обучение швейного мастерства;\r\n\r\n Олександра Сіра виконала головну роль у фільмі оскароносного режисера Стівена Содерберга «Дівчина за викликом»[27][28]. Олександра грає дівчину на ім\'я Челсі, яка надає ескорт послуги заможним людям. Содерберг взяв її на роль після того, як прочитав статтю про неї у журналі Los Angeles, коментуючи це так: «She\'s kind of a new breed, I think. She doesn\'t really fit the typical mold of someone who goes into the adult film business. … I\'d never heard anybody talk about the business the way that she talked about it». Журналіст Скотт Маколей каже, що можливо Грей вибрала саме цю роль через свій інтерес до незалежних режисерів, таких як Жан-Люк Годар, Хармоні Корін, Девід Гордон Грін, Мікеланджело Антоніоні, Аньєс Варда та Вільям Клейн.\r\n\r\nКоли Олександра готувалася до ролі у «Дівчині за викликом», Содерберг попросив її подивитися «Жити своїм життям» і «Божевільний П\'єро»[29]. У фільмі «Жити своїм життям» піднімаються проблеми проституції, звідки Грей могла взяти щось і для своєї ролі, в той час як у «Божевільному П\'єро» показані відносини, схожі на ті, що відбуваються між Челсі, її хлопцем і клієнтами.\'; ', '<p>Профессиональный преподаватель бухгалтерского и налогового учета Национальноготранспортного университета кафедры финансов, учета и аудита со стажем преподавательской работы более 25 лет. Закончила аспирантуру, автор 36 научных работ в области учета и аудита, в т.ч. уникальной обучающей методики написания бухгалтерских проводок: <span>"Как украсть и не сесть" </span> и <span>"Как украсть и посадить другого" </span>.</p><p>Главный бухгалтер акционерного предприятия, специализирующегося на:<ul><li>оказании полезных услуг горизонтального характера;</li><li>торговле, внешнеэкономической и внутреннеэкономической;</li><li>позитивное обучение швейного мастерства;</li></ul></p>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png'),
	(2, 'UA', 'Константин', 'Константинович', 'Константинопольский', '/css/images/teacher2.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png'),
	(3, 'UA', 'Любовь', 'Анатольевна', 'Ктоятакая-Замухриншская', '/css/images/teacher3.jpg', 'Бухгалтер с «О» и до первой отсидки; Программирование своего позитивного прошлого', '', '<p>Практикующий главный бухгалтер. Учредитель ПП <span>«Логика тут безсильна»</span>;</p>\r\n<p>Образование высшее - ДонГУ (1987г.)</p>\r\n<p>Опыт работы 27 лет, в т. ч. преподавания - 9 лет.</p>\r\n<ul><li>специалист по позитивной энергетике;</li><li>эксперт по эффективному ремонту баянов;</li><li>мастер психотерапии для сложных бабушек и дедушек;</li></ul>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png'),
	(4, 'UA', 'Василий', 'Васильевич', 'Меняетпроффесию', '/css/images/teacher4.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png'),
	(5, 'UA', 'Ия', 'Тожевна', 'Воваяготова', '/css/images/teacher5.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png'),
	(6, 'UA', 'Петросян', 'Петросянович', 'Забугорный', '/css/images/teacher6.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherprofile', '', '', '', '', '', '/css/images/teacherImage.png');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.teacherspage
DROP TABLE IF EXISTS `teacherspage`;
CREATE TABLE IF NOT EXISTS `teacherspage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(6) NOT NULL,
  `header` varchar(50) NOT NULL,
  `courses` varchar(50) NOT NULL,
  `link1` varchar(100) NOT NULL,
  `link2` varchar(100) NOT NULL,
  `BCmain` varchar(30) NOT NULL,
  `BCteachers` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.teacherspage: ~2 rows (approximately)
/*!40000 ALTER TABLE `teacherspage` DISABLE KEYS */;
INSERT INTO `teacherspage` (`id`, `lang`, `header`, `courses`, `link1`, `link2`, `BCmain`, `BCteachers`, `title`, `profile`) VALUES
	(1, 'UA', 'Our teachers', 'Веде курси:', 'Читати повністю', 'Відгуки про викладача', 'Головна', 'Викладачі', 'ІНТІТА - Викладачі', 'Персональна сторінка'),
	(2, 'RU', 'Наши преподаватели', 'Ведет курсы:', 'Читать полностью', 'Отзывы о преподавателе', 'Главная', 'Преподаватели', 'ИНТИТА - Преподаватели', 'Персональная страница');
/*!40000 ALTER TABLE `teacherspage` ENABLE KEYS */;


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
	(1, 'UA', 'Олександра', 'Василівна', 'Сіра', '/css/images/teacher1.jpg', 'кройка и шитье сроков; програмування самоубийств', 'Народилася і виросла в Сакраменто, у 18 років вона переїхала до Лос-Анджелеса й незабаром стала вкладачем. У 2007, 2008 і 2010 рр.. вона виграла кілька номінацій премії AVN Awards (також була названа «Найкращою програмісткою» у 2007 році за версією XRCO). Паралельно з вікладауцью роботою та роботою програміста в Саша Грей грає головну роль в тестванні Інтернету.\r\n\r\nМарина Енн Генціс народилася у родині механіка. Її батько мав грецьке походження. Батьки дівчинки розлучилися коли їй було 5 років, надалі її виховувала мати, яка вступила в повторний шлюб у 2000 роц. Марина не ладнала з вітчимом, і, коли їй виповнилося 16 років, дівчина повідомила матері, що збирається покинути будинок. Достеменно невідомо, втекла вона з свого будинку або ж її відпустила мати. Сама Олександра пізніше зізнавалася, що в той час робила все те, що не подобалося її батькам і що вони їй забороняли.\r\n\r\nГлавный бухгалтер акционерного предприятия, специализирующегося на:\r\n\r\n    оказании полезных услуг горизонтального характера;\r\n    торговле, внешнеэкономической и внутреннеэкономической;\r\n    позитивное обучение швейного мастерства;\r\n\r\n Олександра Сіра виконала головну роль у фільмі оскароносного режисера Стівена Содерберга «Дівчина за викликом»[27][28]. Олександра грає дівчину на ім\'я Челсі, яка надає ескорт послуги заможним людям. Содерберг взяв її на роль після того, як прочитав статтю про неї у журналі Los Angeles, коментуючи це так: «She\'s kind of a new breed, I think. She doesn\'t really fit the typical mold of someone who goes into the adult film business. … I\'d never heard anybody talk about the business the way that she talked about it». Журналіст Скотт Маколей каже, що можливо Грей вибрала саме цю роль через свій інтерес до незалежних режисерів, таких як Жан-Люк Годар, Хармоні Корін, Девід Гордон Грін, Мікеланджело Антоніоні, Аньєс Варда та Вільям Клейн.\r\n\r\nКоли Олександра готувалася до ролі у «Дівчині за викликом», Содерберг попросив її подивитися «Жити своїм життям» і «Божевільний П\'єро»[29]. У фільмі «Жити своїм життям» піднімаються проблеми проституції, звідки Грей могла взяти щось і для своєї ролі, в той час як у «Божевільному П\'єро» показані відносини, схожі на ті, що відбуваються між Челсі, її хлопцем і клієнтами.\'; ', '<p>Профессиональный преподаватель бухгалтерского и налогового учета Национальноготранспортного университета кафедры финансов, учета и аудита со стажем преподавательской работы более 25 лет. Закончила аспирантуру, автор 36 научных работ в области учета и аудита, в т.ч. уникальной обучающей методики написания бухгалтерских проводок: <span>"Как украсть и не сесть" </span> и <span>"Как украсть и посадить другого" </span>.</p><p>Главный бухгалтер акционерного предприятия, специализирующегося на:<ul><li>оказании полезных услуг горизонтального характера;</li><li>торговле, внешнеэкономической и внутреннеэкономической;</li><li>позитивное обучение швейного мастерства;</li></ul></p>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(2, 'UA', 'Константин', 'Константинович', 'Константинопольский', '/css/images/teacher2.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(3, 'UA', 'Любовь', 'Анатольевна', 'Ктоятакая-Замухриншская', '/css/images/teacher3.jpg', 'Бухгалтер с «О» и до первой отсидки; Программирование своего позитивного прошлого', '', '<p>Практикующий главный бухгалтер. Учредитель ПП <span>«Логика тут безсильна»</span>;</p>\r\n<p>Образование высшее - ДонГУ (1987г.)</p>\r\n<p>Опыт работы 27 лет, в т. ч. преподавания - 9 лет.</p>\r\n<ul><li>специалист по позитивной энергетике;</li><li>эксперт по эффективному ремонту баянов;</li><li>мастер психотерапии для сложных бабушек и дедушек;</li></ul>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(4, 'UA', 'Василий', 'Васильевич', 'Меняетпроффесию', '/css/images/teacher4.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(5, 'UA', 'Ия', 'Тожевна', 'Воваяготова', '/css/images/teacher5.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png'),
	(6, 'UA', 'Петросян', 'Петросянович', 'Забугорный', '/css/images/teacher6.jpg', 'программування БДСМ; программування на Php для пострадавших в ЧАЭС; GlobalLoqic, Samsung, Coqniance', '', '<p>Консультант по вопросам бухгалтерского и налогового учета, отчетности для предприятий разной формы собственности. Преподаватель с многолетним стажем работы. <span>Реально шарит в компьютерах.</span></p><p>Автор технологии повышения квалификации специалистов экономического профиля.</p><p>Опыт преподавательской работы около 20 лет в учебных центрах и ВУЗах Киева. Опыт работы главным бухгалтером, финансовым директором. Большой опыт внедрения программ системы Виндовз 3:11.</p>', '/teacherProfile', 'ivanov@intita.org, ivanov@gmail.com', '/067/56-569-56, /093/26-45-65', 'ivanov.ivanov', '', '', '/css/images/teacherImage.png');
/*!40000 ALTER TABLE `teacher_temp` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.translatedmessagesen
DROP TABLE IF EXISTS `translatedmessagesen`;
CREATE TABLE IF NOT EXISTS `translatedmessagesen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(16) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.translatedmessagesen: ~92 rows (approximately)
/*!40000 ALTER TABLE `translatedmessagesen` DISABLE KEYS */;
INSERT INTO `translatedmessagesen` (`id`, `language`, `translation`) VALUES
	(1, 'en', 'INTITA'),
	(2, 'en', 'About Us'),
	(3, 'en', 'How to start studying?'),
	(4, 'en', 'more ...'),
	(5, 'en', 'PROGRAM THE FUTURE'),
	(6, 'en', 'Important information about studying with us'),
	(7, 'en', 'Five steps to implement your dreams'),
	(8, 'en', 'START />'),
	(9, 'en', 'Ready to get started?'),
	(10, 'en', 'Enter data into the form below'),
	(11, 'en', 'extended registration'),
	(12, 'en', 'You can also register by social networks:'),
	(13, 'en', 'START'),
	(14, 'en', 'Email'),
	(15, 'en', 'password'),
	(16, 'en', 'Courses'),
	(17, 'en', 'Forum'),
	(18, 'en', 'About Us'),
	(19, 'en', 'Enter'),
	(20, 'en', 'Exit'),
	(21, 'en', 'Teachers'),
	(22, 'en', 'Exit'),
	(23, 'en', 'phone: +38 0432 52 82 67'),
	(24, 'en', 'tel. Mob. +38 067 432 October 20'),
	(25, 'en', 'e-mail: intita.hr@gmail.com'),
	(26, 'en', 'skype: int.ita'),
	(27, 'en', 'We guarantee you an offer of employment<br>\r\nafter successful completion of training!'),
	(28, 'en', 'Do not miss your chance to change the world - get high-quality and modern education<br>\r\nand become a specialist class!'),
	(29, 'en', 'One year of productive and interesting learning - and you will become a professional programmer<br>\r\nready work in the IT industry!'),
	(30, 'en', 'Do you want to become a high-class specialist?<br>\r\ntakes correct and informed decision - Learn with us!'),
	(31, 'en', 'Do not lose your chance for creative, interesting, and challenging decent work -<br>\r\nplan their professional future today!'),
	(32, 'en', 'What are you dreaming?'),
	(33, 'en', 'Future Studies'),
	(34, 'en', 'Questions and comments'),
	(35, 'en', 'Maybe this freedom to live their lives?\\r\\nIndependently manage own time\\r\\nwith opportunity to earn by doing \\r\\nthings you love and get business and get \\r\\nmeet the modern profession?'),
	(36, 'en', 'Unlike traditional schools, \\r\\n We do not teach for the sake of ratings. \\r\\nWe work individually \\r\\nwith each student to achieve \\r\\n100% mastering the necessary knowledge.'),
	(37, 'en', 'We offer each of our \\r\\graduate guaranteed receipt \\r\\nemployment offers \\r\\nfor 4-6 months after the \\r\\nsuccessful completion of training.'),
	(38, 'en', 'Register Online'),
	(39, 'en', 'Choice of course or module'),
	(40, 'en', 'Payment for training'),
	(41, 'en', 'Mastering the material'),
	(42, 'en', 'Completion rate'),
	(43, 'en', 'step'),
	(44, 'en', 'To access the courses and pass free modules and classes register on the site. Registration will allow you to assess the quality and usability of our product that you will become a reliable partner and advisor in professional self-realization.'),
	(45, 'en', 'To become specialists in a certain direction and level (get professional specialization) choose to undergo appropriate course. If you are interested only deepen the knowledge in a particular area of ​​information technology, then choose the module to pass.\')'),
	(46, 'en', 'To start a course or module choose payment scheme (the entire amount for the course, payment modules, payment potrymestrovo, month, etc.) and make a payment convenient way to You (payment scheme or course module can be changed monthly as possible payment credit). '),
	(47, 'en', 'The study material is possible by reading the text and / or viewing a video for each session. During the passage Intermediate classes perform tests. At the end of each session do the final test tasks. Each module ends with an individual project or exam. You can receive individual counseling teacher or advice online. '),
	(48, 'en', 'The result of course is the command thesis project, performed together with other students (the team recommends that forms an independent or executive who approved topic and terms of reference of the project). Delivery Project peredzahyst and provides protection in the online mode with presentation design. After defending his diploma and recommendation for employment.'),
	(49, 'en', 'Home'),
	(50, 'en', 'Courses'),
	(51, 'en', 'About us'),
	(52, 'en', 'Teachers'),
	(53, 'en', 'Forum'),
	(54, 'en', 'Profile'),
	(55, 'en', 'Edit profile'),
	(56, 'en', 'Registration'),
	(57, 'en', 'Teacher profile'),
	(58, 'en', 'Our teachers'),
	(59, 'en', 'personal page'),
	(60, 'en', 'If you\'re a professional IT specialist and want to teach some courses or modules IT and cooperate with us in the field of training programmers write us a letter.'),
	(61, 'en', 'Conducts courses'),
	(62, 'en', 'Read more'),
	(63, 'en', 'Reviews'),
	(64, 'en', 'Section:'),
	(65, 'en', 'About the teacher:'),
	(66, 'en', 'Our courses'),
	(67, 'en', 'The concept of training'),
	(68, 'en', 'Level of course:'),
	(69, 'en', 'Language course:'),
	(70, 'en', 'Course:'),
	(71, 'en', 'Language'),
	(72, 'en', 'module:'),
	(73, 'en', 'Lecture:'),
	(74, 'en', 'Type:'),
	(75, 'en', 'time:'),
	(76, 'en', 'min'),
	(77, 'en', 'teacher'),
	(78, 'en', 'more'),
	(79, 'en', 'Plan consultation'),
	(80, 'en', 'Content'),
	(81, 'en', 'show'),
	(82, 'en', 'hide'),
	(83, 'en', 'Videos'),
	(84, 'en', 'Sample code'),
	(85, 'en', 'User'),
	(86, 'en', 'task'),
	(87, 'en', 'review the previous lesson'),
	(88, 'en', 'NEXT LECTURE'),
	(89, 'en', 'Reply'),
	(90, 'en', 'Final task'),
	(91, 'en', 'You can also enter by social networks:'),
	(92, 'en', '');
/*!40000 ALTER TABLE `translatedmessagesen` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.translatedmessagesru
DROP TABLE IF EXISTS `translatedmessagesru`;
CREATE TABLE IF NOT EXISTS `translatedmessagesru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(16) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_translatedMessagesRU_sourcemessages` FOREIGN KEY (`id`) REFERENCES `sourcemessages` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.translatedmessagesru: ~91 rows (approximately)
/*!40000 ALTER TABLE `translatedmessagesru` DISABLE KEYS */;
INSERT INTO `translatedmessagesru` (`id`, `language`, `translation`) VALUES
	(1, 'ru', 'INTITA'),
	(2, 'ru', 'О нас'),
	(3, 'ru', 'Как проходит обучение?'),
	(4, 'ru', 'далее ...'),
	(5, 'ru', 'ПРОГРАММИРУЙ БУДУЩЕЕ'),
	(6, 'ru', 'Важная информация про обучение вместе с нами'),
	(7, 'ru', 'Пять шагов к исполнения твоих желаний'),
	(8, 'ru', 'СТАРТ  />'),
	(9, 'ru', 'Готовы начать?'),
	(10, 'ru', 'Введите данные в форму ниже'),
	(11, 'ru', 'расширенная регистрация'),
	(12, 'ru', 'Вы также можете зарегистрироваться с помощью соцсетей:'),
	(13, 'ru', 'НАЧАТЬ'),
	(14, 'ru', 'Электронная почта'),
	(15, 'ru', 'Пароль'),
	(16, 'ru', 'Курсы'),
	(17, 'ru', 'Форум'),
	(18, 'ru', 'О нас'),
	(19, 'ru', 'Вход'),
	(20, 'ru', 'Выход'),
	(21, 'ru', 'Преподаватели'),
	(22, 'ru', 'Выход'),
	(23, 'ru', 'телефон: +38 0432 52 82 67 '),
	(24, 'ru', 'тел. моб. +38 067 432 20 10'),
	(25, 'ru', 'e-mail: intita.hr@gmail.com'),
	(26, 'ru', 'скайп: int.ita'),
	(27, 'ru', 'Мы гарантируем получение предложения работы<br>\r\nпосле успешного завершеня обучения!'),
	(28, 'ru', 'Хочешь стать классным специалистом?<br>\r\nпринимай правильное решение - поступай в IТ Академию  ИНТИТА!'),
	(29, 'ru', 'Один год упорного и интересного обучения - и ты станешь проессиональным программистом. Учиться тяжело -зато легко найти работу!'),
	(30, 'ru', 'Не упускай свой шанс на достойную и интересную работу - программируй свое будущее уже сегодня!'),
	(31, 'ru', 'Текст на пятой картинке слайдера'),
	(32, 'ru', 'О чем ты мечтаешь?'),
	(33, 'ru', 'Обучение будущего'),
	(34, 'ru', 'Вопросы и отзывы'),
	(35, 'ru', 'Может, это возможность жить своей жизнью? Самостоятельно распоряжаться своим временем с возможностью зарабатывать, занимаясь любимым делом и получать удовольстие от современной профессии?'),
	(36, 'ru', 'В отличие от традиционных заведений, мы не учим ради оценок. Мы индивидуально работаем с каждым студентом, чтобы достичь 100% усвоения необходимых знаний.'),
	(37, 'ru', 'Мы предлагаем каждому выпускнику гарантированное получение предложения работы в течении 4-6-ти месяцев после успешного завершения обучения.'),
	(38, 'ru', 'Регистрация на сайте'),
	(39, 'ru', 'Выбор курса или модуля'),
	(40, 'ru', 'Оплата'),
	(41, 'ru', 'Изучение материала'),
	(42, 'ru', 'Завершение курса'),
	(43, 'ru', 'шаг'),
	(44, 'ru', 'Чтобы получить доступ к курсам и пройти бесплатные модули и занятия зарегистрируйся на сайте. Регистрация позволит тебе оценить качество и удобство нашего продукт , который станет для тебя надежным партнером и советчиком в профессиональной самореализации.'),
	(45, 'ru', 'Чтобы стать специалистом определенного направления и уровня ( получить профессиональную специализацию ) выбери для прохождения соответствующий курс . Если Тебя интересует исключительно углубления знаний в определенном направлении информационных технологий , то выбери соответствующий модуль для прохождения .'),
	(46, 'ru', 'Чтобы начать прохождении курса модуля выбери схему оплаты ( вся сумма за курс , оплата модулей , оплата потриместрово , помесячно и т.д.) и исполни оплату удобным Тебе способом ( схему оплаты курса или модуля можно изменять , также возможна помесячная оплата в кредит ) .'),
	(47, 'ru', 'Вивчення матеріалу можливе шляхом читання тексту чи/і перегляду відео для кожного заняття. Під час проходження заняття виконуй Проміжні тестові завдання. По завершенню кожного заняття виконуй Підсумкове тестове завдання. Кожен модуль завершується Індивідуальним проектом чи Екзаменом. 	Можна отримати індивідуальну консультацію викладача чи консультацію онлайн.'),
	(48, 'ru', 'Підсумком курсу є Командний дипломний проект, який виконується разом з іншими студентами (склад команди формуєш самостійно чи рекомендує керівник, який затверджує тему і технічне завдання проекту). Здача проекту передбачає передзахист та захист в он-лайн режимі із представленням технічної документації. Після захисту видається диплом та рекомендація для працевлаштування.'),
	(49, 'ru', 'Главная'),
	(50, 'ru', 'Курсы'),
	(51, 'ru', 'О нас'),
	(52, 'ru', 'Преподаватели'),
	(53, 'ru', 'Форум'),
	(54, 'ru', 'Профиль'),
	(55, 'ru', 'Редактировать профиль'),
	(56, 'ru', 'Регистрация'),
	(57, 'ru', 'Профиль преподавателя'),
	(58, 'ru', 'Наши преподаватели'),
	(59, 'ru', 'персональная страница'),
	(60, 'ru', 'Если Вы профессиональный ІТ-шник и хотите преподавать некоторые ІТ курсы и сотрудничать с нами в подготовке программистов, напишите нам письмо.'),
	(61, 'ru', 'Ведет курсы:'),
	(62, 'ru', 'Читать полностью'),
	(63, 'ru', 'Отзывы'),
	(64, 'ru', 'Раздел:'),
	(65, 'ru', 'О преподавателе:'),
	(66, 'ru', 'Наши курсы'),
	(67, 'ru', 'Концепция подготовки'),
	(68, 'ru', 'Уровень курса:'),
	(69, 'ru', 'Язык курса:'),
	(70, 'ru', 'Курс:'),
	(71, 'ru', 'язык:'),
	(72, 'ru', 'Модуль:'),
	(73, 'ru', 'Занятие:'),
	(74, 'ru', 'Тип:'),
	(75, 'ru', 'Продолжительность:'),
	(76, 'ru', 'мин'),
	(77, 'ru', 'Преподаватель'),
	(78, 'ru', 'детальнее'),
	(79, 'ru', 'Запланировать консультацию'),
	(80, 'ru', 'Содержание'),
	(81, 'ru', 'показать'),
	(82, 'ru', 'скрыть'),
	(83, 'ru', 'Видео'),
	(84, 'ru', 'Пример кода'),
	(85, 'ru', 'Инструкция'),
	(86, 'ru', 'Задание'),
	(87, 'ru', 'просмотреть снова предыдущий урок'),
	(88, 'ru', 'НАСТУПНИЙ УРОК'),
	(89, 'ru', 'Ответить'),
	(90, 'ru', 'Итоговое задание'),
	(91, 'ru', 'Вы также можете ввойти с помощью соцсетей:');
/*!40000 ALTER TABLE `translatedmessagesru` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.translatedmessagesua
DROP TABLE IF EXISTS `translatedmessagesua`;
CREATE TABLE IF NOT EXISTS `translatedmessagesua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(16) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_translatedmessages_sourcemessages` FOREIGN KEY (`id`) REFERENCES `sourcemessages` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Table for translation interface messages (see sourceMessages). UA';

-- Dumping data for table int_ita_db.translatedmessagesua: ~91 rows (approximately)
/*!40000 ALTER TABLE `translatedmessagesua` DISABLE KEYS */;
INSERT INTO `translatedmessagesua` (`id`, `language`, `translation`) VALUES
	(1, 'ua', 'INTITA'),
	(2, 'ua', 'Про нас'),
	(3, 'ua', 'Як розпочати навчання?'),
	(4, 'ua', 'детальніше ...'),
	(5, 'ua', 'ПРОГРАМУЙ МАЙБУТНЄ'),
	(6, 'ua', 'Важлива інформація про навчання разом з нами'),
	(7, 'ua', 'П’ять кроків до здійснення твоїх мрій'),
	(8, 'ua', 'ПОЧАТИ  />'),
	(9, 'ua', 'Готові розпочати?'),
	(10, 'ua', 'Введіть дані в форму нижче'),
	(11, 'ua', 'розширена реєстрація'),
	(12, 'ua', 'Ви можете також зареєструватися через соцмережі:'),
	(13, 'ua', 'ПОЧАТИ'),
	(14, 'ua', 'Електронна пошта'),
	(15, 'ua', 'Пароль'),
	(16, 'ua', 'Курси'),
	(17, 'ua', 'Форум'),
	(18, 'ua', 'Про нас'),
	(19, 'ua', 'Вхід'),
	(20, 'ua', 'Вихід'),
	(21, 'ua', 'Викладачі'),
	(22, 'ua', 'Вихід'),
	(23, 'ua', 'телефон: +38 0432 52 82 67 '),
	(24, 'ua', 'тел. моб. +38 067 432 20 10'),
	(25, 'ua', 'e-mail: intita.hr@gmail.com'),
	(26, 'ua', 'скайп: int.ita'),
	(27, 'ua', 'Ми гарантуємо тобі отримання пропозиції працевлаштування<br>\r\nпісля успішного завершення навчання!'),
	(28, 'ua', 'Не упусти свій шанс змінити світ - отримай якісну та сучасну освіту<br>\r\nі стань класним спеціалістом!'),
	(29, 'ua', 'Один рік наполегливого та цікавого навчання - і ти станеш професійним програмістом<br>\r\nготовим працювати в індустрії інформаційних технологій!\r\n'),
	(30, 'ua', 'Хочеш стати висококласним спеціалістом?<br>\r\nПриймай вірне і виважене рішення - навчайся разом з нами! \r\n'),
	(31, 'ua', 'Не втрачай свій шанс на творчу, цікаву, гідну та перспективну працю –<br>\r\n плануй своє професійне майбутнє вже сьогодні!'),
	(32, 'ua', 'Про що мрієш ти?'),
	(33, 'ua', 'Навчання майбутнього'),
	(34, 'ua', 'Питання та відгуки'),
	(35, 'ua', 'Можливо, це свобода жити своїм життям? \r\nСамостійно керувати власним часом\r\nз можливістю заробляти, займаючись \r\nулюбленою справою і отримувати \r\nзадоволення від сучасної професії?'),
	(36, 'ua', 'На відміну від традиційних закладів, \r\nми не навчаємо задля оцінок.  \r\nМи працюємо індивідуально  \r\nз кожним студентом, щоб досягти \r\n100% засвоєння необхідних знань. '),
	(37, 'ua', 'Ми пропонуємо кожному нашому \r\nвипускнику гарантоване отримання \r\nпропозиції працевлаштування \r\nпротягом 4-6-ти місяців після \r\nуспішного завершення навчання.'),
	(38, 'ua', 'Реєстрація на сайті'),
	(39, 'ua', 'Вибір курсу чи модуля'),
	(40, 'ua', 'Проплата за навчання'),
	(41, 'ua', 'Освоєння матеріалу'),
	(42, 'ua', 'Завершення курсу'),
	(43, 'ua', 'крок'),
	(44, 'ua', 'Щоб отримати доступ до курсів та пройти безкоштовні модулі і заняття зареєструйся на сайті. Реєстрація дозволить тобі оцінити якість та зручність нашого продукт, який стане для тебе надійним партнером і порадником в професійній самореалізації.'),
	(45, 'ua', 'Щоб стати спеціалістом певного напрямку та рівня (отримати професійну спеціалізацію) вибери для проходження відповідний курс. Якщо Тебе цікавить виключно поглиблення знань в певному напрямку інформаційних технологій, то вибери відповідний модуль для проходження.'),
	(46, 'ua', 'Щоб розпочати проходження курсу чи модуля вибери схему оплати (вся сума за курс, оплата модулів, оплата потриместрово, помісячно тощо) та здійсни оплату зручним Тобі способом (схему оплати курсу чи модуля можна змінювати, також можлива помісячна оплата в кредит).'),
	(47, 'ua', 'Вивчення матеріалу можливе шляхом читання тексту чи/і перегляду відео для кожного заняття. Під час проходження заняття виконуй Проміжні тестові завдання. По завершенню кожного заняття виконуй Підсумкове тестове завдання. Кожен модуль завершується Індивідуальним проектом чи Екзаменом. 	Можна отримати індивідуальну консультацію викладача чи консультацію онлайн.'),
	(48, 'ua', 'Підсумком курсу є Командний дипломний проект, який виконується разом з іншими студентами (склад команди формуєш самостійно чи рекомендує керівник, який затверджує тему і технічне завдання проекту). Здача проекту передбачає передзахист та захист в он-лайн режимі із представленням технічної документації. Після захисту видається диплом та рекомендація для працевлаштування.'),
	(49, 'ua', 'Головна'),
	(50, 'ua', 'Курси'),
	(51, 'ua', 'Про нас'),
	(52, 'ua', 'Викладачі'),
	(53, 'ua', 'Форум'),
	(54, 'ua', 'Профіль'),
	(55, 'ua', 'Редагувати профіль'),
	(56, 'ua', 'Реєстрація'),
	(57, 'ua', 'Профіль викладача'),
	(58, 'ua', 'Наші викладачі'),
	(59, 'ua', 'персональна сторінка'),
	(60, 'ua', 'Якщо ви професійний ІТ-шник і бажаєте викладати окремі ІТ курси чи модулі і співпрацювати з нами в напрямку підготовки програмістів, напишіть нам листа.'),
	(61, 'ua', 'Веде курси:'),
	(62, 'ua', 'Читати повністю'),
	(63, 'ua', 'Відгуки'),
	(64, 'ua', 'Розділ:'),
	(65, 'ua', 'Про викладача:'),
	(66, 'ua', 'Наші курси'),
	(67, 'ua', 'Концепція підготовки'),
	(68, 'ua', 'Рівень курсу:'),
	(69, 'ua', 'Мова курсу:'),
	(70, 'ua', 'Курс:'),
	(71, 'ua', 'мова:'),
	(72, 'ua', 'Модуль:'),
	(73, 'ua', 'Заняття:'),
	(74, 'ua', 'Тип:'),
	(75, 'ua', 'Тривалість:'),
	(76, 'ua', 'хв'),
	(77, 'ua', 'Викладач'),
	(78, 'ua', 'детальніше'),
	(79, 'ua', 'Запланувати консультацію'),
	(80, 'ua', 'Зміст'),
	(81, 'ua', 'показати'),
	(82, 'ua', 'приховати'),
	(83, 'ua', 'Відео'),
	(84, 'ua', 'Зразок коду'),
	(85, 'ua', 'Інструкція'),
	(86, 'ua', 'Завдання'),
	(87, 'ua', 'переглянути знову попередній урок'),
	(88, 'ua', 'НАСТУПНИЙ УРОК'),
	(89, 'ua', 'Відповісти'),
	(90, 'ua', 'Підсумкове завдання'),
	(91, 'ua', 'Ви можете також увійти через соцмережі:');
/*!40000 ALTER TABLE `translatedmessagesua` ENABLE KEYS */;


-- Dumping structure for table int_ita_db.typeresource
DROP TABLE IF EXISTS `typeresource`;
CREATE TABLE IF NOT EXISTS `typeresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.typeresource: ~0 rows (approximately)
/*!40000 ALTER TABLE `typeresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeresource` ENABLE KEYS */;


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
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `hash` varchar(20) NOT NULL,
  `address` text,
  `education` varchar(255) DEFAULT NULL,
  `educform` varchar(60) DEFAULT 'Не вибрано',
  `interests` text,
  `aboutUs` text,
  `aboutMy` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table int_ita_db.user: ~11 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `firstName`, `identity`, `network`, `state`, `full_name`, `middleName`, `secondName`, `nickname`, `birthday`, `email`, `password`, `phone`, `hash`, `address`, `education`, `educform`, `interests`, `aboutUs`, `aboutMy`, `avatar`, `role`) VALUES
	(1, 'Вова', '', '', 0, '', 'Джа', 'Марля', 'Wizlight', '21/03/1997', 'Wizlightdragon@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '911', '', 'Ямайка', 'ВДПУ', 'Онлайн', 'Ковбаска, колобки, раста', 'Інтернет', 'Володію албанською. Люблю м\'ясо та до м\'яса. Розвожу королів. ', '/css/images/1id.jpg', ''),
	(5, 't54wy6wy@ferwg.gtrf', '', '', 0, '', NULL, NULL, NULL, NULL, 't54wy6wy@ferwg.gtrf', 'egrwhjet6', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(6, 'dfesafhe@fjgr.gfrje', '', '', 0, '', NULL, NULL, NULL, NULL, 'dfesafhe@fjgr.gfrje', 'fkrjgfrklfjrlk', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(7, 'fhsdgfh@deyg.gdehj', '', '', 0, '', NULL, NULL, NULL, NULL, 'fhsdgfh@deyg.gdehj', 'vfdvdf', NULL, '', NULL, NULL, 'Не вибрано', NULL, NULL, NULL, NULL, ''),
	(8, 'admin@EHJBF.SNDFS', '', '', 0, '', NULL, NULL, NULL, NULL, 'admin@EHJBF.SNDFS', 'd6877098041a8a30bc8bd8f9faeeb8e62afd682f', NULL, '', NULL, NULL, 'Не вибрано', NULL, NULL, NULL, NULL, ''),
	(9, 'gfvzdrgfregt', '', '', 0, '', NULL, '', '', '', 'gfsGFea@EFSF.DEW', '011c945f30ce2cbafc452f39840f025693339c42', '', '', '', '', 'Онлайн', '', '', '', NULL, '0'),
	(10, 'Wizlightdrago@gmail.com', '', '', 0, '', NULL, NULL, NULL, NULL, 'Wizlightdrago@gmail.com', '17ba0791499db908433b80f37c5fbc89b870084b', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(11, 'ivanna@yutr.rtr', '', '', 0, '', NULL, '', '', '', 'ivanna@yutr.rtr', '011c945f30ce2cbafc452f39840f025693339c42', '', '', '', '', NULL, '', '', '', '/css/images/avatars/ivanna@yutr.rtr.jpg', ''),
	(12, 'dawfawef@efew.rew', '', '', 0, '', NULL, NULL, NULL, NULL, 'dawfawef@efew.rew', '011c945f30ce2cbafc452f39840f025693339c42', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '/css/images/avatars/noname.png', ''),
	(13, 'gtsgrstg@fretf.gtr', '', '', 0, '', NULL, NULL, NULL, NULL, 'gtsgrstg@fretf.gtr', '011c945f30ce2cbafc452f39840f025693339c42', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '/css/images/avatars/noname.png', ''),
	(14, 'fsef@sg.tgf', '', '', 0, '', NULL, NULL, NULL, NULL, 'fsef@sg.tgf', '8eddb6bdf9a5139e587bd661994c33d59ab3320d', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '/css/images/avatars/noname.png', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
