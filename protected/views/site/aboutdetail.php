<?php
/**
 * Created by PhpStorm.
 * User: Wizlight
 * Date: 15.03.2015
 * Time: 18:08
 */
?>
<html>
<head>
</head>
<body onload=WindowShow(<?php echo (empty($_GET['id']))?1:$_GET['id']; ?>);centerPage()>
<?php
$this->breadcrumbs=array(
    Yii::t('breadcrumbs', '0051'),
);

$this->pageTitle=Yii::t('mainpage','0001');

$headerText = Yii::t('mainpage','0002');
$subheaderText = Yii::t('mainpage','0006');
$subLineImage= $mainpage['subLineImage'];
$dropName = Yii::t('mainpage','0004');

$massAbout = array($block1,$block2,$block3);

$block1->drop1Text='<div  class="aboutStepBlock">
<div style=" " class="oned">

    <span id="spone" style="" class="detailTitle1"> Спробуємо вгадати: </span>
    <table>
    <tr>
    <td>
   <img src="/IntITA/css/images/000pronas1.png">
    </td>
    <td>

  <div>
    <span class="detailTitle12"> власна квартира </span>
    <br>
    <span class="detailTitle1"> чи навіть будинок? </span>
  </div>

    </td>
    </tr>
    </table>

  <div class="imgone"  style="">
     <img src="/IntITA/css/images/000pronas2.png">
  </div>

  <div class="detailavt">
    <table>
    <tr>
    <td>
    <span class="detailTitle1">ГАРНИЙ</span>
    <br>
    <span class="detailTitle12">автомобіль</span>
    </td>
    </tr>
    <tr>
    <td>
   <img src="/IntITA/css/images/000pronas3.png">
    </td>
    </tr>
    </table>
  </div>
</div>

 <img class="ellipse" style="" src="/IntITA/css/images/000pronas10.png">

<div class="twod" style=" ">
    <table>
        <tr>
            <td>
                <span class="detailTitle1">закордонні</span>
                <br>
                <span class="detailTitle13"> подорожі,</span>
                <br>
                <span class="detailTitle1"> можливо,</span>
                <br>
                <span class="detailTitle14"> ДО ЕКЗОТИЧНИХ КРАЇН?</span>
            </td>
            <td>
                <img id="imtwo"  style="" src="/IntITA/css/images/000pronas8.png">
            </td>
        </tr>
    </table>


    <div>
        <img id="imtwooo" style="" src="/IntITA/css/images/000pronas9.png">
    </div>
</div>


<div >
<div style="" class="detailkop">
    <table>
        <tr>
            <td>
                <span class="detailTitle13">Забезпечене </span>
     <span class="detailTitle1">життя
      </span>
                <br>
                <span class="detailTitle14"> для себе і близьких,</span>
                <br>
                <span class="detailTitle1"> коли не доводиться думати про</span>
                <br>
                <span class="detailTitle15">гроші?</span>
                <br>
                <img id="pig" style="" src="/IntITA/css/images/000pronas5.png">
                <img id="money" style="" src="/IntITA/css/images/000pronas4.png">
            </td>
            <td>
                <img id="kopp" style="" src="/IntITA/css/images/000pronas6.png">
                 <img id="koppstr" style="" src="/IntITA/css/images/000pronas7.png">

            </td>
        </tr>
    </table>
</div>



<div  class="detailTitle14" id="four">
    <table><tr><td>

    <img id="fst1" style="" src="/IntITA/css/images/000pronas12.png">
     <img id="fst2" style="" src="/IntITA/css/images/000pronas11.png">

            </td><td>
<span>А, може, це свобода жити своїм <br>життям? Самостійно керувати <br> власним часом з можливістю <br>працювати за <span>зручним <br>графіком</span> без необхідності <br>щодня їздити на роботу, але<br> при цьому мати стабільно<br> високий дохід?

            </td></tr></table>
</div>
</div>




<div class="five" style="">

                <span class="detailTitle12">Як щодо </span> <span class="detailTitle12">40 000 - 60 000 </span><span class="detailTitle12">грн </span><br>
                <span id="fimouns" style="" class="detailTitle12">/в місяць?</span>


</div>

<div class="six" style="">
    <table>
        <tr>
            <td>
                <img style="" src="/IntITA/css/images/000pronas13.png">
            </td>
            <td>
<span class="detailTitle1">
      з можливістю працювати за гнучким<br>
      графіком та дистанційно? Ти думаєш, що в<br>
      нашій країні такі умови лише у керівників<br>
      та власників бізнесу?<br><br>

У нас хороша новина:<br> </span>
<span class="detailTitle16">вже через рік-два-три так зможеш<br>
заробляти і<br><br>

ТИ . . . </span>

            </td>
        </tr>
    </table>
</div>
<div class="how" >
    Як?
</div>

<div class="jobfu" style="">


    <h1>Професія майбутнього</h1>


    <table><tr><td>
                <img src="/IntITA/css/images/000pronas14.png">
            </td> <td>
<span class="detailTitle1">   Сьогодні у тебе є реальна можливість <br>
 поєднати хороший заробіток, гнучкий<br>
графік роботи та зручність<br>
дистанційної роботи. І це не<br>
“заработок в интернете”, про який<br>
кричить банерна реклама на багатьох<br>
сайтах. Ми віримо у те, що високого <br>
стабільного доходу можна досягти <br>
лише за допомогою власних зусиль.</span>
            </td></tr></table>
    <span class="detailTitle1">Ми живемо в епоху, коли</span>

    <h1 id="mashinn" style="">ГОЛОВНИМ ДВИГУНОМ РОЗВИТКУ <br>
        СВІТОВОЇ ЕКОНОМІКИ Є ІНФОРМАЦІЙНІ   <br>
        ТЕХНОЛОГІЇ    </h1>

    <ul id="theyy" style="" class="detailTitle1">
        <li>Вони дозволяють досягти нових проривних результатів у   <br>
            традиційних галузях: виробництві та послугах.</li>


        <li>саме інформаційні технології повністю змінили і <br>
            продовжують трансформувати індустрії звязку,   <br>
            розваг (книги, музика, фільми), банківських послуг;</li>

        <li>також такі традиційні бізнеси, як послуги таксі (Uber);</li>
        <li>  готелів (Airbnb);</li>

        <li>навчання (Coursera).</li>

    </ul>
    <div class="sevenn" style="">
<span class="detailTitle1"> Герої інформаційної епохи - це спеціалісти з інформаційних технологій.<br>
Вони знаходяться на передовій змін, вони придумали та<br>
продовжують розвивати Windows, iOS, Android, а також мільйони<br>
додатків до них, вони створюють соціальні мережі, сайти та бази<br>
даних.</span>
    </div>
</div>
<div">
    <div id="beginn" style="" class="detailTitle12">
        Розпочинай вчитися вже зараз!
    </div>
    <div class="buutt" style="">
        <input id="signInButton" type="submit" name="yt0" value="ПОЧАТИ">
    </div>
</div>






























</div>';

$block1->drop2Text='<div class="aboutStepBlock"><span class="detailTitle1">Навчання майбутнього сьогодні</span>
<p>Коли мова йде про навчальний заклад, можемо побитися об заклад, що до думки тобі приходять велика будівля з десятками навчальних приміщень, лекційна аудиторія, парти, записники, конспекти, викладачі, лекції, семінари. Така система освіти сформувалася ще у Стародавній Греції, і за кілька тисяч років майже не змінилася. Але зараз світ стоїть на порозі великої революції в освіті, яка назавжди змінить те, як ми навчаємося. Сьогодні технології зробили доступним те, що раніше могли дозволити собі лише одиниці, наймаючи персональних вчителів та репетиторів: персоналізоване навчання.
<p></div><div class="aboutStepBlock"><span class="detailTitle2">“Три кити” Академії ІНТІТА </span>
<p><span class="detailTitle3">Кит перший. Гнучкість та зручність. </span>
<p>Ти можеш самостійно будувати графік навчання, виходячи з власних потреб та цілей. Якщо ти хочеш закінчити навчання та почати працювати вже через рік, обирай інтенсивне навчання та займайся 6-8 годин в день. Якщо ти хочеш освоїти програмування поступово, не жертвуючи іншими важливими для тебе речами, ти можеш займатися ті ж 6-8 годин, але у тиждень.
<p>Не потрібно відвідувати навчальний заклад, Академія з тобою всюди. Навіть якщо ти у місці, де немає звязку та інтернету, ти можеш переглядати лекції в офлайн-режимі, а практичну частину зробити пізніше, коли зявиться доступ.
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Кит другий. Орієнтація на ринок. </span>
<p>Ми даємо тобі лише 100% необхідні знання. Ми поважаємо гуманітарні дисципліни та фундаментальні точні науки, які входять до  складу обовязкових для вивчення у вишах, але переконані, що вони не є обовязковими для того, щоб стати професіоналом у сфері інформаційних технологій. Ми вважаємо, що кожен має вирішувати індивідуально, що вивчати та чим цікавитись за межами своєї професії. У той же час у програмах вишів відсутні критичні для професійного успіху дисципліни, або ж вони викладаються недостатньо професійно (англійська мова для ІТ-спеціалістів, проектний менеджмент тощо). Інформаційні технології - це дисципліна, яка змінюється кожного дня, програми вишів просто не встигають адаптуватися до такої швидкості змін. ІНТІТА слідкує за змінами щодня, і адаптує як навчальну програму, так і зміст окремих предметів за необхідностю миттєво. Ми завжди у пошуку нового матеріалу, який можна передати студентам академії.
<p>Порівнюючи звичайний технічний виш та академію ІНТІТА, ти можеш думати про сімейний універсал та болід Формула-1. Перший підходить для широкого кола завдань, але він значно програє позашляховикам у прохідності, міні-венам у місткості, лімузинам - у комфорті, спротивним автомобілям - у швидкості та керуванні. Другий сконструйовано лише заради максимальної швидкості та маневреності, жертвуючи усім іншим. І в результаті ми не зробимо з тебе універсально освічену людину, яка розбирається потрохи у всьому, ми зробимо тебе професіоналом світового класу в області програмування.
 <p></div><div class="aboutStepBlock"><span class="detailTitle3">Кит третій. Результативність. </span>
<p>На відміну від традиційних закладів, ми не навчаємо задля оцінок. Ми працюємо індивідуально з кожним студентом, щоб досягти 100% засвоєння необхідних знань (а ми даємо лише необхідні знання). Ми не обмежуємо тебе у часі, теоретично ти можеш навчатися як завгодно довго. Ми беремо на себе зобовязання навчити тебе програмуванню, незважаючи на те, які знання у тебе вже є. Єдиними передумовами для початку занять є бажання, час на навчання, наявність хоча б простенького компютера та вміння читати та писати.
<p>Знання, які ти отримаєш, максимально практичні та сучасні. Починаючи з першого заняття, ти робитимеш завдання з реального світу програмування. Ближче до закінчення навчання ти будеш приймати участь у створенні реальних програмних продуктів для ринку.
<p>Ми гарантуємо тобі 100% отримання пропозиції про працевлаштування протягом 4-6-ти місяців після успішного закінчення навчання.
 <p></div><div class="aboutStepBlock"><span class="detailTitle2">ІНТІТА: переваги наочно</span>
 <p>
 <table id="detailTable">
<tr><td><span class="detailTitle2">Традиційне навчання</span></td><td><span class="detailTitle2">ІНТІТА</span></td><td><span class="detailTitle2">Переваги</span></td></tr>
 <tr><td>Необхідність відвідувати заняття у класі</td><td>Навчання у себе вдома</td><td>Комфортна домашня атмосфера, економія часу та коштів на поїздки</td></tr>
 <tr><td>Заняття за фіксованим графіком</td><td>Заняття за індивідуальним графіком</td><td>Можливість підлаштувати графік навчання під власні потреби</td></tr>
<tr><td>Жорстко визначена навчальна програма, привязана до часових рамок (академічний рік)</td><td>Можливість обирати предмети та термін навчання </td><td>Навчання в комфортному темпі за власним графіком, не обмежене часом</td></tr>
<tr><td>Лекції та семінари, як основа навчального процесу (вивчення теорії)</td><td>Практичні заняття з першого дня навчання, створення реальних працюючих проектів</td><td>Отримання реального робочого досвіду вже протягом навчання, портфоліо готових робіт на момент закінчення навчання</td></tr>
<tr><td>Оцінки за якість засвоєних знань за певний час </td><td>Оцінок немає, лише “знання засвоєні” чи “потрібно навчатися далі”</td><td>Навчання до позитивного результату: до повного засвоєння необхідних знань</td></tr>
<tr><td>Диплом про вищу освіту видається через 5-6 років за умови засвоєння великої кількості непрофільних знань (мова, історія, філософія тощо)</td><td>Лише практичні знання, які будуть потрібні тобі у роботі та житті: програмування, англійська мова, побудова карєри на ринку інформаційних технологій, основи життєвого успіху.</td><td>Весь час навчання витрачається на отримання корисних практичних знань, тому термін навчання скорочуються, а кількість практичних засвоєних знань більша, ніж у традиційних закладах.</td></tr>
 </table></div> ';

 $block1->drop3Text='
<div class="aboutStepBlock"><span class="detailTitle1"> Питання, які нам часто ставлять</span>

<p><span class="detailTitle3">Скільки триває навчання, як швидко я зможу почати заробляти?
</span><p><ul><li class="listAbout">навчання не має фіксованого терміну і залежить виключно від темпу, який обереш ти.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Чи отримаю я державний диплом про освіту?
</span><p><ul><li class="listAbout">ми не видаємо дипломів державного зразка, наша ціль - забезпечити передумови для гарантованого працевлаштування слухачів.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Чому навчання коштує так дешево (дорого) у порівнянні з вишем (курсами) Х?
</span><p><ul><li class="listAbout">вартість навчання економічно обгрунтована і буде відроблена менше, ніж за рік роботи на позиції програміста-початківця.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">У мене зараз немає необхідних коштів, чи можу я навчатися у кредит?
</span><p><ul><li class="listAbout">так, ми пропонуємо гнучкий підхід в оплаті за навчання, детальніше можна вияснити написавши нам листа на електронну пошту. Контакти.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Я чув від знайомого, що він освоїв програмування самотужки, це можливо?
</span><p><ul><li class="listAbout">так, на ринку багато “програмістів-самоучок”, але вони, як правило, пройшли довгий шлях для того, щоб навчитись програмуванню, ми - один із ефективних варіантів стати кваліфікованим програмістом за короткий час.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">У мене у школі було погано з математикою / я давно не займався математикою. Це може завадити мені навчитися програмуванню?
</span><p><ul><li class="listAbout">математика допомагає краще розвинути логічне мислення і знання елементарної математики необхідні обов’язково, проте, не математичне, а логічне мислення визначає наскільки гарний програміст і тільки невеликий відсоток гарних математиків стають професійними програмістами.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Мені 34 роки, чи можу я зараз розпочати навчання?
</span><p><ul><li class="listAbout">верхньої вікової межі для того, щоб вивчати програмування - немає, люди і старшого віку розпочинали і досягали гарних результатів. Життєвий досвід людям старшого віку дозволяє ефективніше побудувати навчальний процес і швидше кар’єрно зростати.
</li></ul>
<p></div><div class="aboutStepBlock"><span class="detailTitle3">Я чув думку, що професія програміста технічна, а я - людина творча. Чи підійде програмування мені?
</span><p><ul><li class="listAbout">програмування - це і є творчість, варто спробувати, щоб зрозуміти чи це твоє покликання.
</li></ul>';

?>
<div class="mainAboutBlock">
<div class="mainAbout">
    <div class="header">

        <?php echo $headerText; ?>

        <p>
            <?php echo $subheaderText; ?>
        </p>
    </div>

    <div class="line1">
        <img src="<?php echo $subLineImage;?>">
    </div>

     <?php
	$index=0;
	$anchor=0;
    foreach ($massAbout as $val)

    {
		$index++;
		?>
        <div class="block">
            <ul>
                <li>
                    <div class="line2">
                        <img src="<?php echo $val->line2Image;?>">
                    </div>
                    <div class="icon">
                      <img src="<?php echo $val->iconImage;?>">
                    </div>
                    <div class="title" >
					<div class="aboutTitleLink" onclick="WindowShow(<?php echo $index;?>,1)">
                        <?php echo $val->titleText; ?>
					</div>
                        <p>
                            <?php echo $val->textAbout; ?>
                    </div>
                </li>
            </ul>
        </div>

    <?php
    }
    ?>



<! Script for Drop Down text>
<script type="text/javascript">
var width=0;
if (self.screen)
{
	width = screen.width
}
function centerPage()
{
    $('.contentCenterBox').css('width', width);
    $('.contentCenterBox').css('left', "50%");
    $('.contentCenterBox').css('margin-left', -width/2);
}

function Window()
{
		$('#dropTextLayer1').css('display', 'inline-block');
}

function WindowShow(buttonNumber,anchor)
{
	if (anchor==1)
	{
		$("body").animate({"scrollTop":440},"fast");
	}
	if (buttonNumber ==1)
		{
			$('#dropTextLayer1').css('display', 'inline-block');
			$('#dropTextLayer2').css('display', 'none');
			$('#dropTextLayer3').css('display', 'none');
			$('#dropButton1').css('text-decoration','none');
			$('#dropButton2').css('text-decoration','underline');
			$('#dropButton3').css('text-decoration','underline');
		}
	if (buttonNumber ==2)
		{
			$('#dropTextLayer2').css('display', 'inline-block');
			$('#dropTextLayer1').css('display', 'none');
			$('#dropTextLayer3').css('display', 'none');
			$('#dropButton1').css('text-decoration','underline');
			$('#dropButton2').css('text-decoration','none');
			$('#dropButton3').css('text-decoration','underline');
		}
	if (buttonNumber ==3)
		{
			$('#dropTextLayer3').css('display', 'inline-block');
			$('#dropTextLayer2').css('display', 'none');
			$('#dropTextLayer1').css('display', 'none');
			$('#dropButton1').css('text-decoration','underline');
			$('#dropButton2').css('text-decoration','underline');
			$('#dropButton3').css('text-decoration','none');
		}
}

</script>

<! buttons for dropdown  About Us>
<div id="dropButton1" onclick="WindowShow(1)" >
	<?php  echo  $dropName;   ?>
</div>
<div id="dropButton2" onclick="WindowShow(2)">
	<?php  echo  $dropName;   ?>
</div>
<div id="dropButton3" onclick="WindowShow(3)">
	<?php  echo  $dropName;   ?>
</div>


</div>
</div>

<div id='aboutDetailMain'>


<div id="dropTextLayer1" >
    <div  class="textBox">
	<?php 	echo $block1->drop1Text;	 ?>
    </div>
</div>
<div id="dropTextLayer2" >
    <div  class="textBox">
	<?php 	echo $block1->drop2Text;	 ?>
    </div>
</div>
<div id="dropTextLayer3">
    <div  class="textBox">
    <?php 	echo $block1->drop3Text;	 ?>
    </div>
</div>
</div>


</body>
</html>
