<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 14.04.2015
 * Time: 19:04
 */?>
<img src="<?php echo StaticFilesHelper::createPath('image', 'lecture', 'borderLesson.png');?>">
<div class="element">
    <?php $this->renderPartial('_editToolbar',array(
        'idLecture' => $data['id_lecture'],
        'order' =>  $data['block_order'],
        'editMode' => $editMode,
    ));?>

<div class="lessonTask">
    <img class="lessonButFinal" src="<?php echo StaticFilesHelper::createPath('image', 'lecture', 'lessButtonFinale.png'); ?>">
    <div class="lessonButFinal" unselectable = "on"><?php echo Yii::t('lecture','0090'); ?></div>
    <div class="lessonLine"></div>
    <div class="lessonBG">
        <div class="instrTaskImg">
            <img src="<?php echo StaticFilesHelper::createPath('image', 'lecture', 'task.png'); ?>">
        </div>
        <div class="content">
            <div class="instrTaskText" id="<?php echo "t" . $data['block_order'];?>" onclick="function(){order = this.id;}">
                <ol>
                    <?php echo $data['html_block'];?>
                </ol>
            </div>
            <div class="BBCode">
                <form action="" method="post">
                    <textarea class="editor"></textarea>
                    <input  href="#" id="lessonTask3" type="submit" value="<?php echo Yii::t('lecture','0089'); ?>">
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<?php
// use editor WYSIWYG Imperavi
if ($editMode) {
    $this->widget('ImperaviRedactorWidget', array(
        'selector' => "#",
        'options' => array(
            'imageUpload' => $this->createUrl('files/upload'),
            'lang' => 'ua',
            'toolbar' => true,
            'iframe' => true,
            'css' => 'wym.css',
        ),
        'plugins' => array(
            'fullscreen' => array(
                'js' => array('fullscreen.js',),
            ),
            'video' => array(
                'js' => array('video.js',),
            ),
            'fontsize' => array(
                'js' => array('fontsize.js',),
            ),
            'fontfamily' => array(
                'js' => array('fontfamily.js',),
            ),
            'fontcolor' => array(
                'js' => array('fontcolor.js',),
            ),
            'save' => array(
                'js' => array('save.js',),
            ),
            'close' => array(
                'js' => array('close.js',),
            ),
        ),
    ));
}
?>

