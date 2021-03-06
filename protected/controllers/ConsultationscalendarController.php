<?php

class ConsultationscalendarController extends Controller
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
		$model=new Consultationscalendar;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Consultationscalendar']))
		{
			$model->attributes=$_POST['Consultationscalendar'];
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

		if(isset($_POST['Consultationscalendar']))
		{
			$model->attributes=$_POST['Consultationscalendar'];
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
	public function actionIndex($lectureId)
	{
        $lecture = Lecture::model()->findByPk($lectureId);
        $teachersconsult = [];

        $criteria= new CDbCriteria;
        $criteria->alias = 'consultant_modules';
        $criteria->select = 'consultant';
        $criteria->addCondition('module='.$lecture->idModule);
        $temp = ConsultantModules::model()->findAll($criteria);
        for($i = 0; $i < count($temp);$i++){
            array_push($teachersconsult, $temp[$i]->consultant);
        }

        $criteriaData= new CDbCriteria;
        $criteriaData->alias = 'teacher';
        $criteriaData->addInCondition('teacher_id', $teachersconsult, 'OR');

        $dataProvider=new CActiveDataProvider('Teacher', array(
            'criteria' =>$criteriaData,
            'pagination'=>false,
    ));

		$this->render('index',array(
			'dataProvider'=>$dataProvider,
            'lecture'=>$lecture
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Consultationscalendar('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Consultationscalendar']))
			$model->attributes=$_GET['Consultationscalendar'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Consultationscalendar the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Consultationscalendar::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Consultationscalendar $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='consultationscalendar-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}


    public function actionSaveconsultation(){
        $date=Yii::app()->getRequest()->getPost('datecons');
        $idteacher=Yii::app()->request->getPost('teacherid');
        $idlecture=Yii::app()->request->getPost('lectureid');
        $calendar = new Consultationscalendar();
        if(Yii::app()->request->getPost('saveConsultation')) {
            $numcons = explode(",", Yii::app()->request->getPost('timecons'));
            for ($i=0; $i<count($numcons);$i++ ){
                if(Consultationscalendar::consultationFree($idteacher,$numcons[$i],$date)){
                    $calendar->start_cons =substr($numcons[$i], 0,5);
                    $calendar->end_cons =substr($numcons[$i], 6,5);
                    $calendar->date_cons =$date;
                    $calendar->teacher_id = $idteacher;
                    $calendar->user_id = Yii::app()->request->getPost('userid');
                    $calendar->lecture_id = $idlecture;
                    $calendar->save();
                    $calendar = new Consultationscalendar();
                } else {
                    $this->redirect( array('consultationerror','lecture'=>$idlecture));
                }
            }
        }
            header('Location: '.$_SERVER['HTTP_REFERER']);
    }
    public function actionDeleteconsultation($id)
    {
        Consultationscalendar::model()->deleteByPk($id);

        if(!isset($_GET['ajax']))
            $this->redirect(Yii::app()->request->urlReferrer);
    }
    public function actionConsultationError($lecture)
    {
        $this->render('consultationerror',array(
            'lecture'=>$lecture,
        ));
    }
}
