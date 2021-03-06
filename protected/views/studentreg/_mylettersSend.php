<script src="<?php echo Yii::app()->request->baseUrl; ?>/scripts/spoilerLetter.js"></script>
<div>
<p class="tabHeader">Листування</p>
</div>

<div class="box_tabs">
    <ul class="box_tab-links">
        <li ><a href="#box_tab1">Вхідні</a></li>
        <li><a href="#box_tab2">Вихідні</a></li>
<!--        <li><a href="#box_tab3">Архів</a></li>-->
<!--        <li><a href="#box_tab4">Чернетки</a></li>-->
        <li class="active_box">
            <a class='createLetter' href="#box_tab5">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/css/images/send.jpg"/>Створити
            </a>
        </li>
    </ul>

    <div class="box_tab-content">
        <div id="box_tab1" class="box_tab">
            <?php
            $this->widget('zii.widgets.CListView', array(
                'dataProvider'=>$receivedLettersProvider,
                'itemView'=>'/letters/_receivedLetters',
                'template'=>'{items}{pager}',
                'emptyText'=>'Прийнятих листів немає',
                'pager' => array(
                    'firstPageLabel'=>'<<',
                    'lastPageLabel'=>'>>',
                    'prevPageLabel'=>'<',
                    'nextPageLabel'=>'>',
                    'header'=>'',
                ),
            ));
            ?>
        </div>

        <div id="box_tab2" class="box_tab2">
            <?php
            $this->widget('zii.widgets.CListView', array(
                'dataProvider'=>$sentLettersProvider,
                'itemView'=>'/letters/_sentLetters',
                'template'=>'{items}{pager}',
                'emptyText'=>'відправлених листів немає',
                'pager' => array(
                    'firstPageLabel'=>'<<',
                    'lastPageLabel'=>'>>',
                    'prevPageLabel'=>'<',
                    'nextPageLabel'=>'>',
                    'header'=>'',
                ),
            ));
            ?>
        </div>

<!--        <div id="box_tab3" class="box_tab3">-->
<!---->
<!--        </div>-->
<!---->
<!--        <div id="box_tab4" class="box_tab4">-->
<!---->
<!--        </div>-->

        <div id="box_tab5" class="box_tab5">
<!---->
<!--            <script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>-->
<!--            <script>tinymce.init({selector:'textarea'});</script>-->
            <div>
                <?php $this->renderPartial('/letters/_form', array('model'=>$letter)); ?>
<!--                --><?php //if(Yii::app()->user->hasFlash('messagemail')):
//                    echo Yii::app()->user->getFlash('messagemail');
//                endif; ?>
            </div>

        </div>
    </div>

</div>

<script>
    jQuery(document).ready(function() {
        jQuery('.box_tabs ' + '#box_tab5').show().siblings().hide();
        jQuery('.box_tabs .box_tab-links a').on('click', function(e)  {
            var currentAttrValue = jQuery(this).attr('href');

            // Show/Hide Tabs
            jQuery('.box_tabs ' + currentAttrValue).show().siblings().hide();

            // Change/remove current tab to active
            jQuery(this).parent('li').addClass('active_box').siblings().removeClass('active_box');

            e.preventDefault();
        });
    });
</script>

