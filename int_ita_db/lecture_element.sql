-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-05-20 18:36:24
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table int_ita_db.lecture_element
DROP TABLE IF EXISTS `lecture_element`;
CREATE TABLE IF NOT EXISTS `lecture_element` (
  `id_lecture` int(11) NOT NULL,
  `block_order` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_type` tinyint(4) NOT NULL,
  `html_block` text NOT NULL,
  PRIMARY KEY (`id_lecture`,`block_order`),
  KEY `FK_lecture_element_element_type` (`id_type`),
  CONSTRAINT `FK__lectures` FOREIGN KEY (`id_lecture`) REFERENCES `lectures` (`id`),
  CONSTRAINT `FK_lecture_element_element_type` FOREIGN KEY (`id_type`) REFERENCES `element_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Chapters and other lecture''s resources ';

-- Dumping data for table int_ita_db.lecture_element: ~28 rows (approximately)
/*!40000 ALTER TABLE `lecture_element` DISABLE KEYS */;
INSERT INTO `lecture_element` (`id_lecture`, `block_order`, `type`, `id_type`, `html_block`) VALUES
	(1, 1, 'text', 1, '<p><span class="colorBlack">Імена змінних</span>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(1, 2, 'code', 4, '<p><span class="colorGreen">$</span>names=<span class="colorO">"Я інформація в памяті тчк"</span>;</p>'),
	(1, 3, 'text', 1, '<p><span class="colorBlack">Імена змінних<strong><em><del></del></em></strong></span>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(1, 4, 'video', 2, 'https://www.youtube.com/embed/L3Mg6lk6yyA'),
	(1, 5, 'code', 4, '<p><span class="colorGreen">$</span>names=<span class="colorO">"Я інформація в памяті тчк"</span>;</p>'),
	(1, 6, 'text', 1, '    <h1 class="lessonPart">Частина 1: Типи змінних та перемінних</h1>\r\n    <span class="colorBlack">Змінна</span> - це літерно-символьне подання частини інформації, яка перебуває в памяті Web-сервера. В php змінна виглядає ось так:'),
	(1, 7, 'code', 4, '<p><span class="colorGreen">$</span>names=<span class="colorO">"Я інформація в памяті тчк"</span>;</p>'),
	(1, 8, 'text', 1, '<p><span class="colorBlack">Імена змінних</span>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування \n        імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим,\n        що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. \n        Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(1, 9, 'example', 3, '<span class="subChapter">Зразок коду 2  </span><span class="spoilerLinks"><span class="spoilerClick">(показати)</span><span class="spoilerTriangle"> &#9660;</span></span>'),
	(1, 10, 'video', 2, 'https://www.youtube.com/embed/L3Mg6lk6yyA'),
	(1, 11, 'instruction', 7, '<li>On line 7, set <span class="colorBP"><span class="colorGreen">$</span>terms</span> equal to a number greater than 5. Make sure to put a semicolon at the end of the line.</li>\r\n                <li>On line 9, edit the state condition so that your program will be out Some expressions return a \' logical value": TRUE or FALSE, text like thise:<span class="colorAlert">You get a 10% discount!</span></li>'),
	(1, 12, 'task', 5, '<li>On line 7, set equal to a number greater than 5. Some expressions return a "logical value": TRUE or FALSE. Make sure to put a semicolon at the end of the line.</li>\r\n                    <a href="#"> <span class="colorP"><img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/arrow.png"> Відповісти</span></a>\r\n                    <li>An if statement is made up of the if keyword, a condition like we\'ve seen before <span class="colorBP"><span class="colorGreen">$</span>terms</span>, and a pair of curly braces <span class="colorBP">{}</span>. If the answer to the condition is yes, the code inside the curly will run.</li>\r\n                    <a href="#"><span class="colorP"><img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/arrow.png"> Відповісти</span></a>\r\n                    <li>Резиновая по ширине (изменяется с Some expressions return a "logical value": TRUE or FALSE, изменением окна <span class="colorBP"><span class="colorGreen">$</span>terms</span> браузера или с разрешением экрана)</li>'),
	(1, 13, 'text', 1, '<span class="colorBlack">Змінна</span> - це літерно-символьне подання частини інформації, яка перебуває в памяті Web-сервера. В php змінна виглядає ось так:'),
	(1, 14, 'text', 1, '<span class="colorBlack">Змінна</span> - це літерно-символьне подання частини інформації, яка перебуває в памяті Web-сервера. В php змінна виглядає ось так:'),
	(1, 15, 'code', 4, '<p><span class="colorGreen">$</span>names=<span class="colorO">"Я інформація в памяті тчк"</span>;</p>'),
	(1, 16, 'text', 1, '<p><span class="colorBlack">Імена змінних</span>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(1, 17, 'code', 4, '        <p>$names="value";</p>\r\n        <p>$names=5;</p>\r\n        <p>echo $$name;</p>\r\n'),
	(1, 18, 'text', 1, '<p>Змінні в РНР представляються у вигляді рядка, що починається знаком долара, а за ним слідує ім\'я змінної. Ім\'я змінної може складатися з латинських літер, звичайних цифр і деяких символів або комбінацій літер, цифр і символів.\n</p>'),
	(1, 19, 'example', 3, '<span class="subChapter">Зразок коду 1:</span>\r\n<pre class="prettyprint linenums">\r\n&lt;html&gt;\r\n  &lt;head&gt;\r\n  &lt;/head&gt;\r\n  &lt;body&gt;\r\n    &lt;p&gt;\r\n      &lt;?php\r\n      $items= //Set this to a number greater than 5! Type the string &quot;Arr, matey!&quot;\r\n\r\n      if ($items&lt;5) {\r\n      echo &quot;You get a 10% discount!&quot;;\r\n      }\r\n    ?&gt;\r\n    &lt;/p&gt;\r\n &lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre>'),
	(1, 20, 'example', 3, '    <span class="subChapter"><?php echo Yii::t(\'lecture\',\'Code example\'); ?> 2  </span><span class="spoilerLinks"><span class="spoilerClick">(показати)</span><span class="spoilerTriangle"> &#9660;</span></span>\r\n    <div class="spoilerBody">\r\n<pre class="prettyprint linenums">\r\n&lt;html&gt;\r\n  &lt;head&gt;\r\n  &lt;/head&gt;\r\n  &lt;body&gt;\r\n    &lt;p&gt;\r\n      &lt;?php\r\n      $items= //Set this to a number greater than 5! Type the string &quot;Arr, matey!&quot;\r\n\r\n      if ($items&lt;5) {\r\n      echo &quot;You get a 10% discount!&quot;;\r\n      }\r\n    ?&gt;\r\n    &lt;/p&gt;\r\n &lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre>\r\n    </div>'),
	(1, 21, 'video', 2, 'https://www.youtube.com/embed/L3Mg6lk6yyA'),
	(1, 22, 'instruction', 7, '<li>On line 7, set <span class="colorBP"><span class="colorGreen">$</span>terms</span> equal to a number greater than 5. Make sure to put a semicolon at the end of the line.</li>\r\n                <li>On line 9, edit the state condition so that your program will be out Some expressions return a \' logical value": TRUE or FALSE, text like thise:<span class="colorAlert">You get a 10% discount!</span></li>'),
	(1, 26, 'task', 5, '<li>On line 7, set equal to a number greater than 5. Some expressions return a "logical value": TRUE or FALSE. Make sure to put a semicolon at the end of the line.</li>\r\n                <a href="#"> <span class="colorP"><img src="/css/images/arrow.png"> Відповісти</span></a>\r\n                <li>An if statement is made up of the if keyword, a condition like we\'ve seen before <span class="colorBP"><span class="colorGreen">$</span>terms</span>, and a pair of curly braces <span class="colorBP">{}</span>. If the answer to the condition is yes, the code inside the curly will run.</li>\r\n                <a href="#"><span class="colorP"><img src="/css/images/arrow.png"> Відповісти</span></a>\r\n                <li>Резиновая по ширине (изменяется с Some expressions return a "logical value": TRUE or FALSE, изменением окна <span class="colorBP"><span class="colorGreen">$</span>terms</span> браузера или с разрешением экрана)</li>'),
	(1, 27, 'final task', 6, ' <li>On line 7, set equal to a number greater than 5. Some expressions return a "logical value": TRUE or FALSE. Make sure to put a semicolon at the end of the line.</li>\r\n                <a href="#"> <span class="colorP"><img src="/css/images/arrow.png"> Відповісти</span></a>\r\n                <li>An if statement is made up of the if keyword, a condition like we\'ve seen before <span class="colorBP">$terms</span>, and a pair of curly braces <span class="colorBP">{}</span>. If the answer to the condition is yes, the code inside the curly will run.</li>\r\n                <a href="#"><span class="colorP"><img src="/css/images/arrow.png"> Відповісти</span></a>\r\n                <li>Резиновая по ширине (изменяется с Some expressions return a "logical value": TRUE or FALSE, изменением окна <span class="colorBP">$terms</span> браузера или с разрешением экрана)</li>'),
	(2, 1, 'text', 1, '<p><span class="colorBlack">Імена змінних<em></em></span>\n	<strong><del><em></em></del></strong>\n</p>\n<p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:\n</p>'),
	(3, 1, 'text', 1, ' <span class="colorBlack">Імена змінних</span>\r\n    <p>Будь-яка змінна в РНР має ім\'я, що починається із знаку $, наприклад Svariable. При такому способі формування імен змінних їх дуже легко відрізнити від іншого коду. Якщо в інших мовах інколи може виникати плутанина з тим, що при першому погляді на код не завжди ясно - де тут змінні, а де функції, то в РНР це питання навіть не постає. Наприклад, ссилка на змінну по її імені, що зберігається в іншій змінній:</p>'),
	(24, 1, 'text', 1, '<p>New text block!</p>'),
	(24, 2, 'text', 1, '<p><iframe width="420" height="315" src="https://www.youtube.com/embed/7KAhgrBDl3A" frameborder="0" allowfullscreen=""></iframe></p>');
/*!40000 ALTER TABLE `lecture_element` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
