<?php
class ProfileController extends Controller
{
    /**
     * Declares class-based actions.
     */
    public function actions()
    {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha'=>array(
                'class'=>'CCaptchaAction',
                'backColor'=>0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page'=>array(
                'class'=>'CViewAction',
            ),
        );
    }

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex($idTeacher)
    {
        // renders the view file 'protected/views/site/index.php'
        // using the default layout 'protected/views/layouts/main.php'
        $teacher = Teacher::model()->findByPk($idTeacher);

        if (Yii::app()->user->getId() == $teacher->user_id) {
            $editMode = 1;
        } else {
            $editMode = 0;
        }
        $criteria= new CDbCriteria;
        $criteria->order = 'date DESC';
        $criteria->condition = 'about='.$teacher->user_id;

        $dataProvider = new CActiveDataProvider('Response', array(
            'criteria'=>$criteria,
            'pagination'=>array(
                'pageSize'=>5,
            ),
        ));

        $this->render('index', array (
            'model' => $teacher,
            'editMode' => $editMode,
            'dataProvider' => $dataProvider,
        ));
    }

    public function actionSave(){
        if (isset($_POST['id'])) {
            if ($_POST['block'] == 1) {
                Teacher::updateFirstText($_POST['id'], $_POST['content']);
            }
            if ($_POST['block'] == 2) {
                Teacher::updateSecondText($_POST['id'], $_POST['content']);
            }
        }
        Yii::app()->user->setFlash('success', "Ваш профіль оновлено!");

        $this->redirect(Yii::app()->request->urlReferrer);
    }

    public function actionAboutdetail()
    {
        // renders the view file 'protected/views/site/index.php'
        // using the default layout 'protected/views/layouts/main.php'
        $this->render('aboutdetail');
    }
    /**
     * This is the action to handle external exceptions.
     */
    public function actionError()
    {
        if($error=Yii::app()->errorHandler->error)
        {
            if(Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }
    /**
     * Displays the contact page
     */
    public function actionContact()
    {
        $model=new ContactForm;
        if(isset($_POST['ContactForm']))
        {
            $model->attributes=$_POST['ContactForm'];
            if($model->validate())
            {
                $name='=?UTF-8?B?'.base64_encode($model->name).'?=';
                $subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
                $headers="From: $name <{$model->email}>\r\n".
                    "Reply-To: {$model->email}\r\n".
                    "MIME-Version: 1.0\r\n".
                    "Content-Type: text/plain; charset=UTF-8";
                mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
                Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        $this->render('contact',array('model'=>$model));
    }
    /**
     * Displays the login page
     */
    public function actionLogin()
    {
        $model=new LoginForm;
        // if it is ajax validation request
        if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        // collect user input data
        if(isset($_POST['LoginForm']))
        {
            $model->attributes=$_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if($model->validate() && $model->login())
                $this->redirect(Yii::app()->user->returnUrl);
        }
        // display the login form
        $this->render('login',array('model'=>$model));
    }
    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout()
    {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

    public function actionResponse($id)
    {
        $response = new Response();
        $teacher = Teacher::model()->findByPk($id);
        $teacherRat=Response::model()->find('who=:whoID and about=:aboutID', array(':whoID'=>Yii::app()->user->getId(),':aboutID'=>$teacher->user_id));

        if ($_POST['sendResponse']) {
            if (!empty($_POST['response'])) {
                $response->who = Yii::app()->user->id;
                $response->about = $teacher->user_id;
                $response->date = date("Y-m-d H:i:s");
                $response->text = $response->bbcode_to_html($_POST['response']);
                if($teacherRat && $teacherRat->knowledge==$_POST['material'] && $teacherRat->behavior==$_POST['behavior'] && $response->motivation==$_POST['motiv']){
                    $response->knowledge = Null;
                    $response->behavior = Null;
                    $response->motivation = Null;
                    $response->rate = Null;
                } if($teacherRat && ($teacherRat->knowledge!==$_POST['material'] || $teacherRat->behavior!==$_POST['behavior'] || $response->motivation!==$_POST['motiv'])){
                    $teacherRat->knowledge = $_POST['material'];
                    $teacherRat->behavior = $_POST['behavior'];
                    $teacherRat->motivation = $_POST['motiv'];
                    $teacherRat->rate = round(($_POST['material'] + $_POST['behavior'] + $_POST['motiv']) / 3);
                    $teacherRat->save();
                }else{
                    $response->knowledge = $_POST['material'];
                    $response->behavior = $_POST['behavior'];
                    $response->motivation = $_POST['motiv'];
                    $response->rate = round(($_POST['material'] + $_POST['behavior'] + $_POST['motiv']) / 3);
                }
                $response->who_ip = $_SERVER["REMOTE_ADDR"];
                if($_POST['material']!=='' && $_POST['behavior']!=='' && $_POST['motiv']!==''){
                    $response->save();
                    $teacher->updateByPk($id, array('rate_knowledge' => $teacher->getAverageRateKnwl($teacher->user_id)));
                    $teacher->updateByPk($id, array('rate_efficiency' => $teacher->getAverageRateBeh($teacher->user_id)));
                    $teacher->updateByPk($id, array('rate_relations' => $teacher->getAverageRateMot($teacher->user_id)));
                    $teacher->updateByPk($id, array('rating' => $teacher->getAverageRate($teacher->user_id)));
                    Yii::app()->user->setFlash('messageResponse', Yii::t('response', '0386'));
                } else {
                    Yii::app()->user->setFlash('responseError', Yii::t('response', '0385'));
                }
            }
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
    }

    public function getCourses(){
//        $modules = TeacherModule::model()->findAllBySql('select idModule from teacher_module where idTeacher = :idTeacher;',array(':idTeacher' => $this->idTeacher));
        $modules =[1,3, 7, 10];
        $criteria = new CDbCriteria();
        $criteria->select = 'course';
        $criteria->distinct = true;
        $criteria->addInCondition('course', $modules);
        $criteria->toArray();
        $courses = Module::model()->findAll($criteria);

        return $courses;
    }

    public function getTitles($courses){
        $titles =[];
        for($i = 0; $i < count($courses); $i++ ){
            $titles[$i]['title'] = Course::model()->findByPk($courses[$i]["course"])->course_name;
        }
        return $titles;
    }
}