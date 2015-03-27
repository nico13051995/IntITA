<body onload="centerPage()">
<!-- regform style -->
<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/regform.css" />
<!-- regform style -->
<?php
/* @var $this SiteController */
?>
<script>
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
    var key = document.getElementById('enter_button');
    var nav = document.getElementById('navigation');
    var logo = document.getElementById('logo_img');
    var border = document.getElementById('button_border');
    var lang = document.getElementById('lang');

    key.className = "";
    nav.className = "";
    logo.className = "";
    border.className = "";
    lang.className = "";
    document.getElementById('logo').src="<?php echo $this->logoURL; ?>";

    window.onscroll = function() {
        var pageY = window.pageYOffset || document.documentElement.scrollTop;
        if (pageY >= key.offsetHeight) {
            document.getElementById('logo').src="<?php echo Yii::app()->request->baseUrl;?>/css/images/Logo_small.png";
            key.className = "down";
            logo.className = "down";
            nav.className = "down";
            border.className = "down";
            lang.className = "down";
        } else {
            document.getElementById('logo').src="<?php echo $this->logoURL; ?>";
            border.className = "";
            key.className = "";
            logo.className = "";
            nav.className = "";
            lang.className = "";
        }
    }
</script>

<div id="sliderCenterBox">
<div class="insideSlider">
<div id="beginButtonCenter">
    <div class="lineAndButton">
        <img class="sliderLine" src="<?php echo $mainpage['sliderLine']; ?>">
        <a class="sliderButton" href="#beginRegistration"><?php echo $mainpage['buttonStart']; ?> <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/pointer.png"/> </a>
    </div>
</div>

    <div class="sliderText">
        <?php echo $mainpage['sliderHeader']; ?><br>
        <div class="sliderTextJr">
            <br/>
            <hr style="border: 1px solid #ffffff; width: 100px;">
            <?php echo $mainpage['sliderText']; ?>
        </div>
    </div>

</div>
</div>



<div id="slider" class="owl-carousel owl-theme">
    <div class="item"><img src="<?php echo $slider1; ?>"></div>
    <div class="item"><img src="<?php echo $slider2; ?>"></div>
    <div class="item"><img src="<?php echo $slider3; ?>"></div>
    <div class="item"><img src="<?php echo $slider4; ?>"></div>
</div>

<?php
$this->pageTitle=$mainpage['title'];
$headerText = $mainpage['header1'];
$subheaderText = $mainpage['subheader1'];
$subLineImage = $mainpage['subLineImage'];
$linkName = $mainpage['linkName'];
$massAbout=array($block1,$block2,$block3);
?>
<div class="contentCenterBox"> 
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
    foreach ($massAbout as $val)

    {?>
        <div class="block">
            <ul>
                <li>
                    <div class="line2">
                    <img src="<?php echo $val->line2Image;?>"> 
                    </div>
                    <div class="icon">
                      <img src="<?php echo $val->iconImage;?>">
                    </div>
                    <div class="title">
                        <?php echo $val->titleText; ?>
                        <p>
                            <?php echo $val->textAbout;?>
                        </p>
                    </div>
                        <a href="<?php echo $val->linkAddress ?>">
                        <?php echo $linkName; ?>
                        </a>
                </li>
            </ul>
        </div>
    <?php
    }
    ?>

</div>
</div>
<! Ініціалізація екземплярів класу>
<?php
$stepHeader =  $mainpage['header2'];
$stepSubheader =  $mainpage['subheader2'];
$stepSize= $mainpage['stepSize'];
$stepsArray=array($step1,$step2,$step3,$step4,$step5);
?>

<! Верстка за допомогою масиву з екземплярами класу>
<div class="steps" >
		<div class="stepHeaderCont" style="width:<?php echo $stepSize; ?>">
			<div class="stepHeader">
						<h1><?php echo $stepHeader; ?></h1>
						<h3><?php echo $stepSubheader; ?></h3>
			</div>
		</div>
<?php
    foreach ($stepsArray as $stepValue)
    {
		if ($stepValue->stepNumber % 2 <> 0)
		 {
?>
         <div class="stepLeft" 	style="width:<?php echo $stepSize; ?>" >
					<div class="stepUrl">
                        <img class="grid" src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/grid.png">
        		   		<img src="<?php echo $stepValue->stepImage; ?>">
        		    </div>
					<div class="line">
                    </div>

                    <img class="hexagon" src="<?php echo $mainpage['hexagon']; ?>">
					<div class="stepArticle">
						<p class="stepNumber"><?php echo $stepValue->stepNumber; ?></p>
						<p class="stepName"><?php echo $stepValue->stepName; ?></p>
					</div>
        			<div class="stepInfo" style="min-height:<?php echo $stepSize*0.23 . 'px';?> ">
          				  <h2><?php echo $stepValue->stepTitle; ?></h2>
              			  <p><?php echo $stepValue->stepText; ?></p>
          			</div>
         </div>
		 <?php
		 }
		 else
		 {
		 ?>
		 <div class="stepRight" style="width:<?php echo $stepSize; ?>" >
					<div class="stepUrl">
        		   		 <img src="<?php echo $stepValue->stepImage; ?>">
        		    </div>
					<div class="line">
                    </div>
                     <img class="hexagon" src="<?php echo $mainpage['hexagon']; ?>">
					<div class="stepArticle">
						<p class="stepNumber"><?php echo $stepValue->stepNumber; ?></p>
						<p class="stepName"><?php echo $stepValue->stepName; ?></p>
					</div>
        			<div class="stepInfo">
          				  <h2><?php echo $stepValue->stepTitle; ?></h2>
              			  <p><?php echo $stepValue->stepText; ?></p>
          			</div>
         </div>
<?php
	    }
	}
?>
</div>

<?php
$model=new StudentReg();
?>
<div style="position:relative;"><a name="form" style="position:absolute; top:-60px;"></a></div>
<div class="regFormBG" style="background:url('<?php echo Yii::app()->request->baseUrl; ?>/css/images/formfon.jpg') repeat-x;background-position: center center">
    <div class="regFormBox">

        <p class="zagolovok"><?php echo $mainpage['formHeader1']; ?></p>
        <p class="zagolovok2"><?php echo $mainpage['formHeader2']; ?></p>

        <div class="singInForm">
            <?php $form=$this->beginWidget('CActiveForm', array(
            'id'=>'studentreg-form',
                'action'=> Yii::app()->createUrl('site/login'),
            // Please note: When you enable ajax validation, make sure the corresponding
            // controller action is handling ajax validation correctly.
            // There is a call to performAjaxValidation() commented in generated controller code.
            // See class documentation of CActiveForm for details on this.
            'enableAjaxValidation'=>false,
        )); ?>
            <div class="rowemail">
                <?php echo $form->textField($model,'email',array('class'=>'singInEmail','placeholder'=>'Електронна пошта','size'=>60,'maxlength'=>255)); ?>
                <?php echo $form->error($model,'email'); ?>
            </div>

            <div class="rowpass">
                <span class="passEye"> <?php echo $form->passwordField($model,'password',array('class'=>'singInPass','placeholder'=>'Пароль','size'=>60,'maxlength'=>255)); ?></span>
                <?php echo $form->error($model,'password'); ?>
                <div style="color:red">
                <?php if(Yii::app()->user->hasFlash('formerror')):
                    echo Yii::app()->user->getFlash('formerror');
                endif; ?>
                </div>
            </div>

            <div class="regCheckbox">
            <input type="checkbox" id="regCheckbox" value="" name="isExtended"/>
            <label for="regCheckbox"><?php echo $mainpage['regText']; ?></label>
            </div>

            <div class="rowButtons">
                <?php echo CHtml::submitButton('ПОЧАТИ', array('id' => "singInButton")); ?>
            </div>

            <div class="linesingInForm"><?php echo $mainpage['socialText']; ?></div>
            <div class="image" >
                <img name="networking" src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/networking.png" width="410" height="50" border="0" id="networking" usemap="#m_networking" alt="" />
                <map name="m_networking" id="m_networking">
                    <area shape="circle" coords="354,26, 20" href="javascript:" title="instagram" />
                    <area shape="circle" coords="309,26, 21" href="javascript:" title="Rubka" />
                    <area shape="circle" coords="262,27, 20" href="javascript:" title="Вконтакте" />
                    <area shape="circle" coords="214,26, 20" href="javascript:" title="Однокласники" />
                    <area shape="circle" coords="167,27, 20" href="javascript:" title="YouTube" />
                    <area shape="circle" coords="121,26, 21" href="javascript:" title="Google +" />
                    <area shape="circle" coords="74,26, 20" href="javascript:" title="facebook" />
                    <area shape="circle" coords="27,25, 21" href="javascript:" title="twitter" />
                </map>
            </div>

            <?php $this->endWidget(); ?>

        </div><!-- form -->
    </div>
</div>
</body>



