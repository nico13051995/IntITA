<?php
/**
 * Created by PhpStorm.
 * User: home2
 * Date: 28.04.2015
 * Time: 18:56
 */
?>
<!-- regform -->
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/modalTask2.css"/>
<!-- regform -->
<div class="mooda2">
<?php
$qForm = new StudentReg;

$form = $this->beginWidget('CActiveForm', array(
    'id' => 'mydialog3',
    'enableClientValidation' => true,
    'enableAjaxValidation'=>true,
    'clientOptions'=>array('validateOnSubmit'=>true,'validateOnChange'=>false),
    'action' => array(''),
));
?>



<div  class="signIn22">

    <div   id="heedd2" ">
    <table><tr><td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/errorLess.jpg">  </td><td >
                <h1 >Помилка!</h1>
            </td>
        </tr>
    </table>


    <div  class="happily2">
        <p  >Щось пішло неправильно, виправ помилку</p>
        <p  >та переходь до наступного матеріалу</p>
    </div>




    <input id="signInButtonM22" type="submit" value="ЗАКРИТИ">




</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
</div>