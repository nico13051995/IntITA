<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 12.05.2015
 * Time: 16:06
 */
if (AccessHelper::isAdmin()) $post->setScenario('canedit');
?>
<div class="leftModule">
    <div class="headerLeftModule">
        <table>
            <tr>
                <td>
                    <img class="moduleImg" src="<?php echo StaticFilesHelper::createPath('image', 'course', $post->module_img); ?>" />
                </td>
                <td style="padding-left: 15px;">
                    <span id="titleModule"><?php echo Yii::t('module', '0211'); ?></span>
                    <?php
                    $this->widget('editable.EditableField', array(
                        'type'      => 'text',
                        'model'     => $post,
                        'attribute' => 'module_name',
                        'url'       => $this->createUrl('module/updateModuleAttribute'),
                        'title'     => 'Введіть назву модуля',
                        'placement' => 'right',
                    ));
                    ?>
                    <div>
                        <span id="titleModule"><?php echo Yii::t('module', '0214'); ?></span>
                        <?php

                        $rate = 0;
                        switch ($post->level){
                            case 'intern':
                                $level=Yii::t('courses', '0232');
                                $rate = 1;
                                break;
                            case 'junior':
                                $level=Yii::t('courses', '0233');
                                $rate = 2;
                                break;
                            case 'strong junior':
                                $level=Yii::t('courses', '0234');
                                $rate = 3;
                                break;
                            case 'middle':
                                $level=Yii::t('courses', '0235');
                                $rate = 4;
                                break;
                            case 'senior':
                                $level=Yii::t('courses', '0236');
                                $rate = 5;
                                break;
                        }
                        if (AccessHelper::isAdmin()){
                            $this->widget('editable.EditableField', array(
                                'type'      => 'select',
                                'model'     => $post,
                                'attribute' => 'level',
                                'url'       => $this->createUrl('module/updateModuleAttribute'),
//                            'source'    => Editable::source(Status::model()->findAll(), 'status_id', 'status_text'),
                                //or you can use plain arrays:
                                'source'    => Editable::source(array('intern'=> 'Стажер', 'junior' => 'Початківець','strong junior' => 'Сильний початківець', 'middle' => 'Середній', 'senior' => 'Високий')),
                                'placement' => 'right',
                            ));
                        } else echo $level;
                        ?>
                        <div class="ratico">
                            <?php
                            for ($i=0; $i<$rate; $i++)
                            {
                                ?><span>
                                <img src="<?php echo StaticFilesHelper::createPath('image', 'common', 'ratIco1.png'); ?>"/>
                                </span><?php
                            }
                            for ($i=$rate; $i<5; $i++)
                            {
                                ?><span>
                                <img src="<?php echo StaticFilesHelper::createPath('image', 'common', 'ratIco0.png'); ?>"/>
                                </span><?php
                            }
                            ?>
                        </div>
                    </div>
                    <div>
                        <span id="titleModule"><?php echo Yii::t('module', '0215'); ?></span>
<!--                        <b> --><?php //echo $post->lesson_count." ".Yii::t('module', '0216'); ?><!--</b>--><?php //echo ModuleHelper::getModuleDuration($post->lesson_count,$post->module_duration_hours,$post->hours_in_day,$post->days_in_week) ?>
                        <b> <?php echo $post->lesson_count." ".Yii::t('module', '0216'); ?></b>
                        <?php
                        if($post->lesson_count!==0){
                            echo  ", ".Yii::t('module', '0217')." - <b>".ceil($post->module_duration_hours/($post->hours_in_day*$post->days_in_week))." ".Yii::t('module', '0218')."</b> (";
                            $this->widget('editable.EditableField', array(
                                'type'      => 'text',
                                'model'     => $post,
                                'attribute' => 'hours_in_day',
                                'url'       => $this->createUrl('module/updateModuleAttribute'),
                                'title'     => 'Введіть кількість годин в день',
                                'placement' => 'right',
                            ));
                            echo " ".Yii::t('module', '0219').", ";
                            $this->widget('editable.EditableField', array(
                                'type'      => 'text',
                                'model'     => $post,
                                'attribute' => 'days_in_week',
                                'url'       => $this->createUrl('module/updateModuleAttribute'),
                                'title'     => 'Введіть кількість днів на тиждень',
                                'placement' => 'right',
                            ));
                            echo " ".Yii::t('module', '0220').")";
                        }
                        ?>
                    </div>
                    <div>
                        <span id="titleModule"><?php echo Yii::t('module', '0221'); ?></span>
                        <span id="oldPrice">
                            <?php
                            $this->widget('editable.EditableField', array(
                                'type'      => 'text',
                                'model'     => $post,
                                'attribute' => 'module_price',
                                'url'       => $this->createUrl('module/updateModuleAttribute'),
                                'title'     => 'Введіть ціну модуля',
                                'placement' => 'right',
                            ));
                            ?> <?php echo Yii::t('module', '0222'); ?></span> <?php echo ModuleHelper::getDiscountedPrice($post->module_price, 50).Yii::t('module', '0222'); ?> (<?php echo Yii::t('module', '0223'); ?>)
                    </div>
                    </br>
                    <div>
                        <span id="titleModule"><?php echo Yii::t('module', '0224'); ?></span>
                        <?php
                        for ($i = 0; $i < 9; $i++) {
                            ?><span>
                            <img src="<?php echo StaticFilesHelper::createPath('image', 'common', 'starFull.png');?>">
                            </span><?php
                        }
                        for ($i = 0; $i < 1; $i++) {
                            ?><span>
                            <img src="<?php echo StaticFilesHelper::createPath('image', 'common', 'starEmpty.png');?>">
                            </span><?php
                        }
                        ?>
                    </div>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td style="padding-left: 110px;">
                    <div id="enter_button_2" href="#" ><?php echo Yii::t('module', '0279');?></div>
                </td>
                <td style="padding-left: 100px;">
                    <div id="enter_button_2" href="#" ><?php echo Yii::t('module', '0280');?></div>
                </td>
            </tr>
        </table>
        <?php $this->renderPartial('_lectures', array('dataProvider' => $dataProvider, 'canEdit' => $editMode, 'module' =>$post));?>
    </div>
</div>