<?php

class StudentRegController extends Controller
{
    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id)
    {
        $this->render('view',array(
            'model'=>$this->loadModel($id),
        ));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate()
    {
        $model=new StudentReg;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if(isset($_POST['StudentReg']))
        {
            $model->attributes=$_POST['StudentReg'];
            if($model->save())
                $this->redirect(array('view','id'=>$model->id));
        }

        $this->render('create',array(
            'model'=>$model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id)
    {
        $model=$this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if(isset($_POST['StudentReg']))
        {
            $model->attributes=$_POST['StudentReg'];
            if($model->save())
                $this->redirect(array('view','id'=>$model->id));
        }

        $this->render('update',array(
            'model'=>$model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id)
    {
        $this->loadModel($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if(!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
    }

    /**
     * Lists all models.
     */

    public function actionIndex()
    {
        $model=new StudentReg('reguser');
        if(isset($_POST['StudentReg']))
        {
            if(is_null($_POST['StudentReg']['firstName']))
                $this->redirect('courses');

            if(isset($_POST['educformOff']) && $_POST['educformOff'] == '1')
                $_POST['StudentReg']['educform']='Онлайн/Офлайн';
            else $_POST['StudentReg']['educform']='Онлайн';

            $model->attributes=$_POST['StudentReg'];
            $getToken=rand(0, 99999);
            $getTime=date("Y-m-d H:i:s");
            $model->token=sha1($getToken.$getTime);
            if($model->validate())
            {
                if(!empty($_POST['StudentReg']['facebook']))
                {
                    $fURL='https://www.facebook.com/'.$_POST['StudentReg']['facebook'];
                    $fheaders=get_headers($fURL);
                    if(!strpos($fheaders[0],'404'))
                        $model->facebook = $fURL;
                    else $model->addError('facebook','Ви ввели не коректну сторінку');
                }
                if(!empty($_POST['StudentReg']['googleplus']))
                {
                    $gURL='https://plus.google.com/'.$_POST['StudentReg']['googleplus'];
                    $gheaders=get_headers($gURL);
                    if(!strpos($gheaders[0],'404'))
                        $model->googleplus = $gURL;
                    else $model->addError('googleplus','Ви ввели не коректну сторінку');
                }
                if(!empty($_POST['StudentReg']['linkedin']))
                {
                    $lURL='https://www.linkedin.com/'.$_POST['StudentReg']['linkedin'];
                    $lheaders=get_headers($lURL);
                    if(!strpos($lheaders[0],'404'))
                        $model->linkedin = $lURL;
                    else $model->addError('linkedin','Ви ввели не коректну сторінку');
                }
                if(!empty($_POST['StudentReg']['vkontakte']))
                {
                    $vURL='http://vk.com/'.$_POST['StudentReg']['vkontakte'];
                    $vheaders=get_headers($vURL);
                    if(!strpos($vheaders[0],'404'))
                        $model->vkontakte = $vURL;
                    else $model->addError('vkontakte','Ви ввели не коректну сторінку');
                }
                if(!empty($_POST['StudentReg']['twitter']))
                {
                    $tURL='https://twitter.com/'.$_POST['StudentReg']['twitter'];
                    $theaders=get_headers($tURL);
                    if(!strpos($theaders[0],'404'))
                        $model->twitter = $tURL;
                    else $model->addError('twitter','Ви ввели не коректну сторінку');
                }
                if($_FILES["upload"]["size"] > 1024*1024*5)
                {
                    Yii::app()->user->setFlash('avatarmessage',Yii::t('error','0302'));
                }elseif (is_uploaded_file($_FILES["upload"]["tmp_name"]))
                {
                    $ext = substr(strrchr( $_FILES["upload"]["name"],'.'), 1);
                    $_FILES["upload"]["name"]=uniqid().'.'.$ext;
                    copy($_FILES['upload']['tmp_name'], Yii::getpathOfAlias('webroot')."/avatars/".$_FILES['upload']['name']);
                    $model->avatar="/avatars/".$_FILES["upload"]["name"];
                }
                if ($model->hasErrors()) {
                    $this->render("studentreg", array('model'=>$model));
                } else{
                    $model->save();
                    $subject=Yii::t('activeemail','0298');
                    $headers="Content-type: text/plain; charset=utf-8 \r\n" . "From: IntITA";
                    $text=Yii::t('activeemail','0299').
                        " http://intita.itatests.com/index.php?r=site/AccActivation/view&token=".$model->token."&email=".$model->email;
                    mail($model->email,$subject,$text,$headers);
                    $this->render('/site/activationinfo',array(
                        'model'=>$model,
                    ));
                }
            } else {
                $this->render("studentreg", array('model'=>$model));
            }
        }else {
            $model->addError('empty', 'Дані не введені');
            $this->render("studentreg", array('model'=>$model));
        }
    }

    /**
     * Manages all models.
     */
    public function actionAdmin()
    {
        $model=new StudentReg('search');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['StudentReg']))
            $model->attributes=$_GET['StudentReg'];

        $this->render('admin',array(
            'model'=>$model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return StudentReg the loaded model
     * @throws CHttpException
     */
    public function loadModel($id)
    {
        $model=StudentReg::model()->findByPk($id);
        if($model===null)
            throw new CHttpException(404,'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param StudentReg $model the model to be validated
     */
    protected function performAjaxValidation($model)
    {
        if(isset($_POST['ajax']) && $_POST['ajax']==='student-profile-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function checkAccess($id=1, $right, $code1, $code2)
    {
        if(Yii::app()->user->isGuest){
            throw new CHttpException(403, Yii::t('errors', $code1));
        }
        else{
            $permission = new Permissions();
            if (!$permission->checkPermission(Yii::app()->user->getId(), $id, array($right))) {
                throw new CHttpException(403, Yii::t('errors', $code2));
            }
        }
    }

    public function actionProfile($idUser)
    {
        $model=StudentReg::model()->findByPk($idUser);

        $criteria= new CDbCriteria;
        $criteria->alias = 'consultationscalendar';
        $criteria->addCondition('user_id='.$idUser);

        $dataProvider = new CActiveDataProvider('Consultationscalendar', array(
            'criteria'=>$criteria,
            'pagination'=>array(
                'pageSize'=>100,
            ),
            'sort'=> array(
                'defaultOrder' => 'date_cons DESC',
                'attributes'=>array('date_cons'),
            ),
        ));

        $this->render("studentprofile", array('model'=>$model,'dataProvider' => $dataProvider,'post' => $model));

    }
    public function actionSendletter()
    {
        $model=StudentReg::model()->findByPk(1);

        if($_POST['submit']) {
            if(!empty($_POST['send_letter'])) {
                $title = $_POST['letterTheme'];
                $mess = $_POST['send_letter'];
                // $to - кому отправляем
                $to = 'Wizlightdragon@gmail.com';
                // $from - от кого
                $from = $model->email;
                // функция, которая отправляет наше письмо.
                mail($to, $title, $mess, "Content-type: text/html; charset=utf-8 \r\n" . "From:" . $from . "\r\n");
                Yii::app()->user->setFlash('messagemail','Ваше повідомлення відправлено');
            }
            header('Location: '.$_SERVER['HTTP_REFERER']);
        }
    }
    public function actionEdit()
    {
        $model =  new StudentReg('edit');

        $this->render("studentprofileedit", array('model'=>$model));

    }
    public function actionRewrite()
    {
        $id=Yii::app()->user->id;
        $model=StudentReg::model()->findByPk(Yii::app()->user->id);
        $model->setScenario('edit');

        if(isset($_POST['educformOff']) && $_POST['educformOff'] == '1')
            $_POST['StudentReg']['educform']='Онлайн/Офлайн';
        else $_POST['StudentReg']['educform']='Онлайн';

        $model->attributes=$_POST['StudentReg'];
        if($model->validate()) {
            $model->updateByPk($id, array('firstName' => $_POST['StudentReg']['firstName']));
            $model->updateByPk($id, array('secondName' => $_POST['StudentReg']['secondName']));
            $model->updateByPk($id, array('nickname' => $_POST['StudentReg']['nickname']));
            $model->updateByPk($id, array('birthday' => $_POST['StudentReg']['birthday']));
            $model->updateByPk($id, array('phone' => $_POST['StudentReg']['phone']));
            $model->updateByPk($id, array('phone' => $_POST['StudentReg']['phone']));
            $model->updateByPk($id, array('address' => $_POST['StudentReg']['address']));
            $model->updateByPk($id, array('education' => $_POST['StudentReg']['education']));
            $model->updateByPk($id, array('educform' => $_POST['StudentReg']['educform']));
            $model->updateByPk($id, array('interests' => $_POST['StudentReg']['interests']));
            $model->updateByPk($id, array('aboutUs' => $_POST['StudentReg']['aboutUs']));
            $model->updateByPk($id, array('aboutMy' => $_POST['StudentReg']['aboutMy']));
            if(!empty($_POST['StudentReg']['facebook']))
            {
                $fURL='https://www.facebook.com/'.$_POST['StudentReg']['facebook'];
                $fheaders=get_headers($fURL);
                if(!strpos($fheaders[0],'404'))
                    $model->updateByPk($id, array('facebook' => $fURL));
                else $model->addError('facebook','Ви ввели не коректну сторінку');
            }
            else  $model->updateByPk($id, array('facebook' => ''));
            if(!empty($_POST['StudentReg']['googleplus']))
            {
                $gURL='https://plus.google.com/'.$_POST['StudentReg']['googleplus'];
                $gheaders=get_headers($gURL);
                if(!strpos($gheaders[0],'404'))
                    $model->updateByPk($id, array('googleplus' => $gURL));
                else $model->addError('googleplus','Ви ввели не коректну сторінку');
            }
            else  $model->updateByPk($id, array('googleplus' => ''));
            if(!empty($_POST['StudentReg']['linkedin']))
            {
                $lURL='https://www.linkedin.com/'.$_POST['StudentReg']['linkedin'];
                $lheaders=get_headers($lURL);
                if(!strpos($lheaders[0],'404'))
                    $model->updateByPk($id, array('linkedin' => $lURL));
                else $model->addError('linkedin','Ви ввели не коректну сторінку');
            }
            else  $model->updateByPk($id, array('linkedin' => ''));
            if(!empty($_POST['StudentReg']['vkontakte']))
            {
                $vURL='http://vk.com/'.$_POST['StudentReg']['vkontakte'];
                $vheaders=get_headers($vURL);
                if(!strpos($vheaders[0],'404'))
                    $model->updateByPk($id, array('vkontakte' => $vURL));
                else $model->addError('vkontakte','Ви ввели не коректну сторінку');
            }
            else  $model->updateByPk($id, array('vkontakte' => ''));
            if(!empty($_POST['StudentReg']['twitter']))
            {
                $tURL='https://twitter.com/'.$_POST['StudentReg']['twitter'];
                $theaders=get_headers($tURL);
                if(!strpos($theaders[0],'404'))
                    $model->updateByPk($id, array('twitter' => $tURL));
                else $model->addError('twitter','Ви ввели не коректну сторінку');
            }
            else  $model->updateByPk($id, array('twitter' => ''));
            if(!empty($_POST['StudentReg']['password'])&& sha1($_POST['StudentReg']['password'])==sha1($_POST['StudentReg']['password_repeat']))
                $model->updateByPk($id, array('password' => sha1($_POST['StudentReg']['password'])));
            if(!empty($_FILES["upload"])) {
                if($_FILES["upload"]["size"] > 1024*1024*5)
                {
                    Yii::app()->user->setFlash('avatarmessage',Yii::t('error','0302'));
                    $this->redirect(Yii::app()->request->baseUrl . '/studentreg/edit');
                }elseif (is_uploaded_file($_FILES["upload"]["tmp_name"])) {
                    $ext = substr(strrchr( $_FILES["upload"]["name"],'.'), 1);
                    $_FILES["upload"]["name"]=uniqid().'.'.$ext;
                    copy($_FILES['upload']['tmp_name'], Yii::getpathOfAlias('webroot')."/avatars/".$_FILES['upload']['name']);
                    $model->updateByPk($id, array('avatar' => "/avatars/".$_FILES["upload"]["name"]));
                    Yii::app()->user->setFlash('messageedit', 'Оновлено' );
                }
            }
            if ($model->hasErrors()) {
                $this->render("studentprofileedit", array('model'=>$model));
            } else
                $this->redirect(Yii::app()->request->baseUrl . '/studentreg/profile');
        }
    }
    public function actionChangepass()
    {
        $modeltest = new StudentReg('changepass');
        if(isset($_POST['ajax']) && $_POST['ajax']==='change-form')
        {
            echo CActiveForm::validate($modeltest);
            Yii::app()->end();
        }
        $id=Yii::app()->user->id;
        $model=StudentReg::model()->findByPk($id);
        $atr = Yii::app()->request->getPost('StudentReg');
        $pass = $atr ['password'];
        if($model->password==sha1($pass)) {
            if(isset($_POST['StudentReg']))
            {
                $model->updateByPk($id, array('password' => sha1($_POST['StudentReg']['new_password'])));
                $this->redirect(Yii::app()->createUrl('studentreg/profile'));
            }
        }
    }
    public function actionDeleteavatar()
    {
        $id=Yii::app()->user->id;
        $model=StudentReg::model()->findByPk(Yii::app()->user->id);
        if($model->avatar!=='/avatars/noname.png'){
            unlink(Yii::getpathOfAlias('webroot').$model->avatar);
            $model->updateByPk($id, array('avatar' => "/avatars/".'noname.png'));
            $this->redirect(Yii::app()->createUrl('studentreg/edit'));
        } else {
            $this->redirect(Yii::app()->createUrl('studentreg/edit'));
        }

    }

    public function actionDeleteconsultation($id)
    {
        Consultationscalendar::model()->deleteByPk($id);

        if(!isset($_GET['ajax']))
            $this->redirect(Yii::app()->request->urlReferrer);
//
//        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
//        if(!isset($_GET['ajax']))
//            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));

    }

}
