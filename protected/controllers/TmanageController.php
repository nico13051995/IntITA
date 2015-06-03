<?php

class TmanageController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';


	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

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
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

		$model=new Teacher;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		if(isset($_POST['Teacher']))
		{
            $_POST['Teacher']['foto_url']=$_FILES['Teacher']['name']['foto_url'];
			$model->attributes=$_POST['Teacher'];
            $model->avatar=$_FILES['Teacher'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->teacher_id));
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
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Teacher']))
		{
            $model->oldAvatar=$model->foto_url;
            $_POST['Teacher']['foto_url']=$_FILES['Teacher']['name']['foto_url'];
            $model->attributes=$_POST['Teacher'];
            $model->avatar=$_FILES['Teacher'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->teacher_id));
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
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

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
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

		$dataProvider=new CActiveDataProvider('Teacher');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
        if (!AccessHelper::isAdmin()) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

		$model=new Teacher('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Teacher']))
			$model->attributes=$_GET['Teacher'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Teacher the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Teacher::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Teacher $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='teacher-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
