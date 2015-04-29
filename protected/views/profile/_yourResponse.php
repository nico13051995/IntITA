<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 25.04.2015
 * Time: 0:58
 */
?>
<div class="lessonTask">
    <img class="lessonBut" src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/lessButton.png">
    <div class="lessonButName" unselectable="on"><?php echo Yii::t('teacher', '0187'); ?></div>
    <div class="lessonLine"></div>
    <div class="responseBG">

        <div class="txtMsg">
            <table style="padding-left: 35px; padding-top: 30px;">
                <tr>
                    <td align="right">
                        <b><?php echo  Yii::t('teacher', '0188'); ?></b>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <?php echo Yii::t('teacher', '0189'); ?>
                    </td>
                    <td>
                        <?php
                        for ($k = 0; $k < 10; $k++) {
                            ?>
                            <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/starEmpty.png"/>
                        <?php
                        }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <?php echo Yii::t('teacher', '0190'); ?>
                    </td>
                    <td>
                        <?php
                        for ($k = 0; $k < 10; $k++) {
                            ?>
                            <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/starEmpty.png"/>
                        <?php
                        }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <?php echo Yii::t('teacher', '0191'); ?>
                    </td>
                    <td>
                        <?php
                        for ($k = 0; $k < 10; $k++) {
                            ?>
                            <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/starEmpty.png"/>
                        <?php
                        }
                        ?>
                    </td>
                </tr>
        </div>
        </table>
        <div class="BBCode">
            <form  action="<?php echo Yii::app()->createUrl('profile/response');?>" method="post">
                <textarea class="editor" name="response"></textarea>
                <input name="sendResponse" id="lessonTask1" type="submit" value="<?php echo Yii::t('teacher', '0192'); ?>">
                <?php if(Yii::app()->user->hasFlash('messageResponse')):
                    echo Yii::app()->user->getFlash('messageResponse');
                endif; ?>
            </form>
        </div>
    </div>
</div>