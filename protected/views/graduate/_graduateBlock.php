<div class="GraduatesBlock">
    <table>
        <tr>
            <td style="vertical-align: top;">
                <img src="<?php echo StaticFilesHelper::createPath('image', 'graduates', $data['avatar']); ?>">
            </td>
            <td style="padding-left: 10px;">
                <div class="text">
                    <?php echo Yii::t('graduates', '0320')?>
                    <span><?php echo $data['graduate_date'] ?></span>
                </div>
                <div class="text1"><?php echo $data['first_name'],"&nbsp;", $data['last_name'] ?></div>

                <div class="spoiler-title closed"> <?php echo $b = Yii::t('graduates', '0424'), '&#9660'; ?> </div>
                <div class="spoiler-body">
                    <form name=form_recall>
                        <input type=hidden name=id1 id="id1" value="<?php echo htmlspecialchars($a = Yii::t('graduates', '0423')); ?>">
                        <input type=hidden name=id2 id="id2" value="<?php echo htmlspecialchars($b); ?>">
                    </form>
                    <img src="<?php echo StaticFilesHelper::createPath('image', 'graduates', "recall.png"); ?>">
                    <?php echo $data['recall'] ?>
                </div>

                <div class="text">
                    <div>
                        <?php echo Yii::t('graduates', '0316') ?>
                        <span><?php echo $data['position'] ?></span>
                    </div>
                    <div>
                        <?php echo Yii::t('graduates', '0317') ?>
                        <a href="<?php echo $data['work_site'] ?>"
                           target="_blank"> <?php echo $data['work_place'] ?> </a>
                    </div>
                    <div>
                        <?php echo Yii::t('graduates', '0318') ?>
                        <a href="<?php echo $data['courses_page'] ?>"
                           target="_blank"> <?php echo $data['courses'] ?></a>
                    </div>
                </div>
                <?php echo $this->renderPartial('_educateHistory', array('data' => $data)); ?>
            </td>
        </tr>
    </table>
</div>