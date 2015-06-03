<?php

class SiteController extends Controller
{
	/* @var $mainpage Mainpage*/
	/* @var $modelCarousel Carousel */
	/* @var $step1 Step*/
	/* @var $step2 Step*/
	/* @var $step3 Step*/
	/* @var $step4 Step*/
	/* @var $step5 Step*/
	/* @var $objAbout1 AboutUs*/
	/* @var $objAbout2 AboutUs*/
	/* @var $objAbout3 AboutUs*/
	/* @var $sourceMessages MyCDbMessageSource*/
    /*
	 * Declares class-based actions.
	 */
    public $source;

	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index1.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index1.php'
		// using the default layout 'protected/views/layouts/main.php'
		$modelCarousel = new Carousel();
		$mainpage = new Mainpage();
		$mainpage->setValueById(0);

		$arraySteps = $this->initSteps();
		$arrayAboutUs = $this->initAboutus();
		
		$sliderPictures = array(
			'slider1'=>Yii::app()->request->baseUrl.$modelCarousel->findByPk(1)->imagesPath.$modelCarousel->findByPk(1)->pictureURL,
			'slider2'=>Yii::app()->request->baseUrl.$modelCarousel->findByPk(2)->imagesPath.$modelCarousel->findByPk(2)->pictureURL,
			'slider3'=>Yii::app()->request->baseUrl.$modelCarousel->findByPk(3)->imagesPath.$modelCarousel->findByPk(3)->pictureURL,
			'slider4'=>Yii::app()->request->baseUrl.$modelCarousel->findByPk(4)->imagesPath.$modelCarousel->findByPk(4)->pictureURL,
		);
		
		$this->render('index', array(
			'slider1'=>$sliderPictures['slider1'],
			'slider2'=>$sliderPictures['slider2'],
			'slider3'=>$sliderPictures['slider3'],
			'slider4'=>$sliderPictures['slider4'],
            'mainpageModel'=>$mainpage,
			'mainpage'=>array(
				'sliderLine'=> $mainpage->sliderLineURL,
				'sliderTexture'=> $mainpage->sliderTextureURL,
				'buttonStart'=>$mainpage->sliderButtonText,
				'sliderHeader'=>$mainpage->sliderHeader,
				'sliderText'=>$mainpage->sliderText,
				'title'=>$mainpage->title,
				'header1'=>$mainpage->header1,
				'header2'=>$mainpage->header2,
				'hexagon'=>$mainpage->hexagon,
				'subLineImage'=>$mainpage->subLineImage,
				'stepSize'=>$mainpage->stepSize,
				'imageNetwork'=>$mainpage->imageNetwork,
				'formFon'=>$mainpage->formFon,
			),
			'block1'=>$arrayAboutUs['objAbout1'],
			'block2'=>$arrayAboutUs['objAbout2'],
			'block3'=>$arrayAboutUs['objAbout3'],
			'step1'=>$arraySteps['step1'],
			'step2'=>$arraySteps['step2'],
			'step3'=>$arraySteps['step3'],
			'step4'=>$arraySteps['step4'],
			'step5'=>$arraySteps['step5'],
		));
	}

	public function initAboutus(){
		$objAbout1 = new AboutUs(1);
		$objAbout1->setValuesById(1);
		$objAbout1->titleText = Yii::t('aboutus', '0032');
		$objAbout1->textAbout = Yii::t('aboutus', '0035');
		$objAbout2 = new AboutUs(2);
		$objAbout2->setValuesById(2);
		$objAbout2->titleText = Yii::t('aboutus', '0033');
		$objAbout2->textAbout = Yii::t('aboutus', '0036');
		$objAbout3 = new AboutUs(3);
		$objAbout3->setValuesById(3);
		$objAbout3->titleText = Yii::t('aboutus', '0034');
		$objAbout3->textAbout = Yii::t('aboutus', '0037');
		return $arrayAboutUs = array(
			'objAbout1'=>$objAbout1,
			'objAbout2'=>$objAbout2,
			'objAbout3'=>$objAbout3,
		);
	}

	public function initSteps(){
		$step1 = Step::model()->findByPk(1);
		$step2 = Step::model()->findByPk(2);
		$step3 = Step::model()->findByPk(3);
		$step4 = Step::model()->findByPk(4);
		$step5 = Step::model()->findByPk(5);

		$step1->stepTitle =  Yii::t('step','0038');
		$step2->stepTitle =  Yii::t('step','0039');
		$step3->stepTitle =  Yii::t('step','0040');
		$step4->stepTitle =  Yii::t('step','0041');
		$step5->stepTitle =  Yii::t('step','0042');

		$step1->stepText =  Yii::t('step','0044');
		$step2->stepText =  Yii::t('step','0045');
		$step3->stepText =  Yii::t('step','0046');
		$step4->stepText =  Yii::t('step','0047');
		$step5->stepText =  Yii::t('step','0048');


		return $arraySteps = array(
			'step1'=>$step1,
			'step2'=>$step2,
			'step3'=>$step3,
			'step4'=>$step4,
			'step5'=>$step5,
		);
	}

	public function actionAboutdetail()
	{
		//$dataProvider = new CActiveDataProvider('Mainpage');
        $mainpage = new Mainpage(0);
		$mainpage->setValueById(0);
		$arrayAboutUs = $this->initAboutus();
		$this->render('aboutdetail', array(
			'mainpage'=>array(
				'title'=>$mainpage->title,
				'header1'=>$mainpage->header1,
				'linkName'=>$mainpage->linkName,
				'subLineImage'=>$mainpage->subLineImage,
				'subheader1'=>$mainpage->subheader1,
			),
			'block1'=>$arrayAboutUs['objAbout1'],
			'block2'=>$arrayAboutUs['objAbout2'],
			'block3'=>$arrayAboutUs['objAbout3'],
		));
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

	public function actionChangeLang($lg)
	{
        $app = Yii::app();
		if (isset($_GET['lg'])) {
			$app->session['lg'] = $_GET['lg'];
		}
        $this->redirect($_SERVER["HTTP_REFERER"]);
	}

	/**
	 * Displays the login page
	 */
	public function actionRapidReg()
	{
        if(isset($_POST['isExtended']))
            $model = new StudentReg('fromraptoext');
        else $model = new StudentReg('repidreg');
// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='studentreg-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
        if(isset($_POST['isExtended']))
        {
            $this->redirect( Yii::app()->createUrl('studentreg/index',array('tempEmail'=>$_POST['StudentReg']['email'],'tempPass'=>$_POST['StudentReg']['password'])));
        }
// collect user input data
		if(isset($_POST['StudentReg']))
		{
			$model->attributes=$_POST['StudentReg'];

// validate user input and redirect to the previous page if valid
            if($model->validate()) {
                $model->save();
                $modellogin = new StudentReg('loginuser');
                $modellogin->attributes=$_POST['StudentReg'];
                if($modellogin->login())
                    $this->redirect(Yii::app()->request->baseUrl.'/site');
			}
            Yii::app()->user->setFlash('forminfo', 'Ви ввели не вірні дані.');
            $this->redirect(Yii::app()->request->baseUrl . '/site#form');
		}

	}

    public function actionLogin()
    {
        $model = new StudentReg('loginuser');
        // if it is ajax validation request
        if(isset($_POST['ajax']) && $_POST['ajax']==='quick-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        // collect user input data
        if(isset($_POST['StudentReg']))
        {
            $model->attributes=$_POST['StudentReg'];
            // validate user input and redirect to the previous page if valid
            if($model->login())
                $this->redirect(Yii::app()->request->baseUrl.'/site');
        }
    }
	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
//        $tmp = Yii::app()->session['translatedTable'];
		Yii::app()->user->logout();
//        Yii::app()->session['translatedTable'] = $tmp;
		$this->redirect(Yii::app()->homeUrl);
	}

    public function actionSocialLogin()
    {
        $model = new StudentReg();

        $s = file_get_contents('http://ulogin.ru/token.php?token=' .$_POST['token'] . '&host=' . $_SERVER['HTTP_HOST']);
        $user = json_decode($s, true);
        $model->email=$user['email'];
        if($model->socialLogin())
            $this->redirect(Yii::app()->request->baseUrl.'/site');
        else {
            if(isset($user['first_name'])) $model->firstName=$user['first_name'];
            if(isset($user['last_name'])) $model->secondName=$user['last_name'];
            if(isset($user['nickname'])) $model->nickname=$user['nickname'];
            if(isset($user['bdate'])) $model->birthday=$user['bdate'];
            if(isset($user['phone'])) $model->phone=$user['phone'];
//            if(isset($user['photo_big'])) $model->avatar=$user['photo_big'];
            if(isset($user['city'])) $model->address=$user['city'];
            if(isset($user['network'])){
                switch ($user['network']){
                    case 'facebook':
                        $model->facebook=$user['profile'];
                        break;
                    case 'googleplus':
                        $model->googleplus=$user['profile'];
                        break;
                    case 'linkedin':
                        $model->linkedin=$user['profile'];
                        break;
                    case 'vkontakte':
                        $model->vkontakte=$user['profile'];
                        break;
                    case 'twitter':
                        $model->twitter=$user['profile'];
                        break;
                    default:
                        break;
                }
            }
            if($model->validate()) {
                $model->save();
                $model = new StudentReg();
                $model->email=$user['email'];
                if($model->socialLogin())
                    $this->redirect(Yii::app()->request->baseUrl.'/site');
            }
        }
    }
    public function getToken($token)
    {
        $time=date("Y-m-d H:i:s");
        $model=StudentReg::model()->findByAttributes(array('token'=>$token));
        if($model===null)
            throw new CHttpException(404,Yii::t('exception','0237'));
        elseif(strtotime($time)-strtotime($model->activkey_lifetime)>1800){
            $model->updateByPk($model->id, array('token' => null));
            $model->updateByPk($model->id, array('activkey_lifetime' => null));
            throw new CHttpException(404,Yii::t('exception','0238'));
        }
        else
        return $model;
    }


    public function actionVerToken($token)
    {
        $model=$this->getToken($token);
        $model->setScenario('recoverypass');
        if(isset($_POST['ajax']) && $_POST['ajax']==='changep-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if(Yii::app()->request->getPost('StudentReg'))
        {
            $post=Yii::app()->request->getPost('StudentReg');
            if($model->token==Yii::app()->request->getPost('tokenhid')){
                $model->attributes=Yii::app()->request->getPost('StudentReg');
                $model->password=$post['new_password'];
                $model->token=null;
                $model->activkey_lifetime=null;
                if($model->validate()) {
                    $model->save();
                    $modellogin = new StudentReg('loginuser');
                    $modellogin->password=$post['new_password'];
                    $modellogin->email=$model->email;
                    if(Yii::app()->user->isGuest && $modellogin->login())
                        $this->redirect(Yii::app()->createUrl('site/index'));
                    else $this->redirect(Yii::app()->createUrl('studentreg/edit'));
                }
            }
        } else{
            $this->render('resetpass',array(
                'model'=>$model,
            ));
        }
    }
    public function actionVerEmail($token,$email)
    {
        $model=$this->getToken($token);
        if($model)
        {
            $model->updateByPk($model->id, array('email' => $email));
            $model->updateByPk($model->id, array('token' => null));
            $model->updateByPk($model->id, array('activkey_lifetime' => null));
            if(Yii::app()->user->isGuest && $model->login())
                $this->render('resetemail');
            else   $this->render('resetemail');
        }
        else{
            $this->render('resetpass',array(
                'model'=>$model,
            ));
        }
    }
    public function actionRecoveryPass()
    {
        $model = new StudentReg('recovery');
        // if it is ajax validation request
        if(isset($_POST['ajax']) && $_POST['ajax']==='recovery-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        // collect user input data
        $model->attributes=Yii::app()->request->getPost('StudentReg');
        $getModel= StudentReg::model()->findByAttributes(array('email'=>$model->email));
        if(Yii::app()->request->getPost('StudentReg'))
            {
                $getToken=rand(0, 99999);
                $getTime=date("Y-m-d H:i:s");
                $getModel->token=sha1($getToken.$getTime);
            }
        if($getModel->validate())
        {
            $subject=Yii::t('recovery','0281');
            $headers="Content-type: text/plain; charset=utf-8 \r\n" . "From: IntITA";
            $text=Yii::t('recovery','0239')."<br/>
                    <a href='http://intita.itatests.com/index.php?r=site/vertoken/view&token=".$getModel->token."'>".Yii::t('recovery','0240')."</a>";
            $getModel->updateByPk($getModel->id, array('token' => $getModel->token,'activkey_lifetime' => $getTime));
            Yii::app()->user->setFlash('forgot','Посилання для відновлення паролю відправлено на вказану електронну пошту');
            mail($getModel->email,$subject,$text,$headers);
            if(Yii::app()->user->isGuest)
                $this->redirect(Yii::app()->createUrl('site/index'));
            else $this->redirect(Yii::app()->createUrl('studentreg/edit'));
        }
    }
    public function actionResetEmail()
    {
        if(!Yii::app()->user->isGuest){
            $model=StudentReg::model()->findByPk(Yii::app()->user->id);
            $modelReset = new StudentReg('resetemail');
            // if it is ajax validation request
            if(isset($_POST['ajax']) && $_POST['ajax']==='resetemail-form')
            {
                echo CActiveForm::validate($modelReset);
                Yii::app()->end();
            }
            // collect user input data
            $modelReset->attributes=Yii::app()->request->getPost('StudentReg');
            if(Yii::app()->request->getPost('StudentReg'))
            {
                $getToken=rand(0, 99999);
                $getTime=date("Y-m-d H:i:s");
                $model->token=sha1($getToken.$getTime);
            }
            if($model->validate())
            {
                $subject=Yii::t('recovery','0282');
                $headers="Content-type: text/plain; charset=utf-8 \r\n" . "From: IntITA";
                $text=Yii::t('recovery','0283')."<br/>
                    <a href='http://intita.itatests.com/index.php?r=site/veremail/view&token=".$model->token."&email=".$modelReset->email."'>".Yii::t('recovery','0284')."</a>";
                $model->updateByPk($model->id, array('token' => $model->token,'activkey_lifetime' => $getTime));
                Yii::app()->user->setFlash('forgot','Посилання для підтвердження email відправлено на вказану електронну пошту');
                mail($modelReset->email,$subject,$text,$headers);
                if(Yii::app()->user->isGuest)
                    $this->redirect(Yii::app()->createUrl('site/index'));
                else $this->redirect(Yii::app()->createUrl('studentreg/edit'));
            }
        }
    }
}
