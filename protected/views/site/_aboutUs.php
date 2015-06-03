<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 13.05.2015
 * Time: 16:36
 */
$headerText = $mainpageModel->getHeader1();
$subheaderText = $mainpageModel->getSubheader1();
$linkName = $mainpageModel->getLinkName();
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
            <img src="<?php echo StaticFilesHelper::createPath('image', 'mainpage', 'line1.png');?>">
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