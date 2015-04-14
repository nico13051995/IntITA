-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-04-07 17:43:20
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table int_ita_db.sourcemessages
DROP TABLE IF EXISTS `sourcemessages`;
CREATE TABLE IF NOT EXISTS `sourcemessages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Table for interface messages (original - English).';

-- Dumping data for table int_ita_db.sourcemessages: ~90 rows (approximately)
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
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
