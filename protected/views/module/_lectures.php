<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 02.05.2015
 * Time: 17:28
 */
$model = Lecture::model();
$editMode = ($canEdit)?'true':'';

?>

<div class="lessonModule" id="lectures">
    <?php
    if ($canEdit){
        ?>
        <div onclick="enableEdit();">
            <a href="#">
                <img src="<?php echo StaticFilesHelper::createPath('image', 'editor', 'edt_30px.png'); ?>"
                     id="editIco" title="<?php echo Yii::t('module', '0373'); ?>"/>
            </a>
        </div>
    <?php
    }?>
    <a name="list">
    </a>

    <div onclick="showForm();">
        <?php $form=$this->beginWidget('CActiveForm', array(
            'id'=>'ajaxaddlecture-form',
        )); ?>
        <a href="#lessonForm">
            <?php echo CHtml::hiddenField('idmodule', $module->module_ID); ?>
            <?php
            echo CHtml::ajaxSubmitButton('', CController::createUrl('module/lecturesupdate'), array('update' => '#lessonForm'), array('id' => 'addLecture','title'=>Yii::t('module', '0374')));
            ?>
        </a>
        <?php $this->endWidget(); ?>
    </div>
<h2><?php echo Yii::t('module', '0225'); ?></h2>
<?php
$this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'lectures-grid',
    'dataProvider' => $dataProvider,
    'emptyText' => Yii::t('module', '0375'),
    'columns' => array(
        array(
            'class'=>'CButtonColumn',
            'template'=>'{up}{down}{delete}',
            'headerHtmlOptions'=>array('style'=>'display:none'),
            'deleteConfirmation'=>Yii::t('module', '0376'),
            'buttons'=>array
            (
                'htmlOptions'=>array('display' => 'none'),
                'delete' => array(
                    'imageUrl'=> StaticFilesHelper::createPath('image', 'editor', 'delete.png'),
                    'url' => 'Yii::app()->createUrl("module/unableLesson", array("idLecture"=>$data->primaryKey))',
                    'deleteConfirmation' => Yii::t('module', '0377'),
                    'label' => Yii::t('module', '0378'),
                    'visible'=> $editMode,
                ),
                'up' => array
            (
                    'label'=>Yii::t('module', '0379'),   //Text label of the button.
                    'imageUrl'=>StaticFilesHelper::createPath('image', 'editor', 'up.png'),
                    'options'=>array(
                        'class'=>'controlButtons;',
                        'ajax'=>array(
                            'type'=>'get',
                            'url'=>'js:$(this).attr("href")',
                            'success'=>'js:function(response) {
                            $.fn.yiiGridView.update("lectures-grid");
                            }'
                        )
                    ), //HTML options for the button tag.
                    'url' => 'Yii::app()->createUrl("module/upLesson", array("idLecture"=>$data->primaryKey))',
                    'visible'=>$editMode,   //A PHP expression for determining whether the button is visible.
            ),

            'down' => array
            (

                'label'=>Yii::t('module', '0380'),    //Text label of the button.
                'url' => 'Yii::app()->createUrl("module/downLesson", array("idLecture"=>$data->primaryKey))',
                'imageUrl'=>StaticFilesHelper::createPath('image', 'editor', 'down.png'),
                'options'=>array(
                    'class'=>'controlButtons;',
                    'ajax'=>array(
                        'type'=>'get',
                        'url'=>'js:$(this).attr("href")',
                        'success'=>'js:function(response) {
                            $.fn.yiiGridView.update("lectures-grid");
                            }'
                    )
                ), //HTML options for the button tag.
                'visible'=>$editMode,
            ),
            ),
        ),
        array(
            'class'=>'DataColumn',
            'name' => 'alias',
            'type' => 'raw',
            'value' =>'$data->order == 0 ? "Виключено":"'.Yii::t('module', '0381').' {$data->order}."',
            'header'=>false,
            'htmlOptions'=>array('class'=>'aliasColumn'),
            'headerHtmlOptions'=>array('style'=>'width:0%; display:none'),
        ),
        array(
            'name' => 'title',
            'type' => 'raw',
            'header'=>false,
            'htmlOptions'=>array('class'=>'titleColumn'),
            'headerHtmlOptions'=>array('style'=>'width:0%; display:none'),
            'value' => function($data) {
            if (AccessHelper::accesLecture($data->id))
                return CHtml::link(CHtml::encode($data->title), Yii::app()->createUrl("lesson/index", array("id" => $data->id)));
            else
                return $data->title;
            }
        ),
    ),
    'summaryText' => '',
));
?>
    <div id="lessonForm">
        <?php $this->renderPartial('_addLessonForm', array('newmodel'=>$module)); ?>
    </div>
</div>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/scripts/lecturesList.js"></script>
