<?php
/**
 * Created by PhpStorm.
 * User: Ivanna
 * Date: 19.05.2015
 * Time: 16:30
 */
?>
<div class="editToolbar">
    <img src="<?php echo StaticFilesHelper::createPath('image', 'editor', 'up.png');?>" class="editIco"
         onclick="upBlock(<?php echo $idLecture;?>, <?php echo $order;?>);">
    <img src="<?php echo StaticFilesHelper::createPath('image', 'editor', 'down.png');?>" class="editIco"
         onclick="downBlock(<?php echo $idLecture;?>, <?php echo $order;?>);">
    <img src="<?php echo StaticFilesHelper::createPath('image', 'editor', 'delete.png');?>" class="editIco"
         onclick="deleteBlock(<?php echo $idLecture;?>, <?php echo $order;?>);">
</div>

<script type="text/javascript">

</script>