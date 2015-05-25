<?php

class PermissionsController extends Controller
{
	public function actionIndex()
	{

        if (Yii::app()->user->getId() != 49) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

		$dataProvider = new CActiveDataProvider('Permissions');
        $dataProvider->setPagination(array(
                'pageSize' => '50',
            )
        );
        $model= new Permissions;
        if(isset($_GET['Permissions']))
            $model->attributes=$_GET['Permissions'];

        if(!isset($_GET['ajax'])) $this->render('index', array(
            'dataProvider' => $dataProvider,
            'model' => $model,
        ));
        else  $this->renderPartial('index', array(
            'dataProvider' => $dataProvider,
            'model' => $model,
        ));
	}

    public static function checkPermission($idUser, $idResource, $rights){
        $record = Permissions::model()->findByAttributes(array('id_user' => $idUser,
            'id_resource' => $idResource));
        if (is_null($record)) {
            return false;
        } else {
            $mask = Permissions::model()->setFlags($rights);
            if ($record->rights & $mask){
                return true;
            }else {
                return false;
            }

        }
    }

    public function actionEdit(){
        if (Yii::app()->user->getId() != 49) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }
        $this->render('edit');
    }

    public function actionNewPermission(){
        if (Yii::app()->user->getId() != 49) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

        $this->actionIndex();
    }

    public function actionDelete(){
        if (Yii::app()->user->getId() != 49) {
            throw new CHttpException(403, 'У вас немає права редагування цього документа.');
        }

        $id = 1;//$_GET['id_user'];
        $resource = 26;//$_GET['id_resource'];

        $command = Yii::app()->db->createCommand();
        $result = $command->delete('permissions', 'id_user=:id_user AND id_resource=:id_resource', array(':id_user'=>$id, ':id_resource'=>$resource));

        $this->actionIndex();
    }

}