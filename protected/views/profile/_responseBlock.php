<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 24.04.2015
 * Time: 23:47
 */

$user=StudentReg::model()->findByPk($data['who']);

?>
<div class="TeacherProfiletitles">
    <?php echo $user->firstName." ".$user->secondName; ?>
</div>
<div class="sm">
    <?php
    $num = $data['who_ip'];
    echo $data['date']." Всего ".$count = Response::model()->count('who_ip = :num', array(':num'=>$num))." отзывов с IP:".Teacher::getHideIp($data['who_ip']);
?>
</div>

<div class="txtMsg">
    <?php
    echo $data['text'];
    ?>
</div>
<div class="border">
    <div class="TeacherProfiletitles">
        <?php
        if ($data['rate']!==Null){
        echo Yii::t('teacher', '0186');

        for ($k = 1; $k <= $data['rate']; $k++) {
            ?>
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/starFull.png"/>
        <?php
        }
        for($j = $data['rate']+1; $j <= 10; $j++){?>
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/starEmpty.png"/>
        <?php
        }
        }
        ?>
    </div>
</div>