-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-06-23 16:44:24
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
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8 COMMENT='Table for interface messages (keys).';

-- Dumping data for table int_ita_db.sourcemessages: ~381 rows (approximately)
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
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
