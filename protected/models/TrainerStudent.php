<?php

/**
 * This is the model class for table "trainer_student".
 *
 * The followings are the available columns in table 'trainer_student':
 * @property integer $trainer
 * @property integer $student
 *
 * The followings are the available model relations:
 * @property Teacher $trainer0
 * @property User $student0
 */
class TrainerStudent extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'trainer_student';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('trainer, student', 'required'),
			array('trainer, student', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('trainer, student', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'trainer0' => array(self::BELONGS_TO, 'Teacher', 'trainer'),
			'student0' => array(self::BELONGS_TO, 'User', 'student'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'trainer' => 'Trainer',
			'student' => 'Student',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('trainer',$this->trainer);
		$criteria->compare('student',$this->student);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TrainerStudent the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

    public static function getStudentsByTrainer($trainer){
        $students = Yii::app()->db->createCommand(array(
            'select' => array('student'),
            'from' => 'trainer_student',
            'where' => 'trainer=:id',
            'order' => 'student',
            'params' => array(':id' => $trainer),
        ))->queryAll();
        $count = count($students);

        for($i = 0;$i < $count;$i++){
            $students[$i]['id'] = $students[$i]["student"];
            $students[$i]['title'] = StudentReg::model()->findByPk($students[$i]["student"])->firstName." ".
                StudentReg::model()->findByPk($students[$i]["id"])->secondName;
        }

        return (!empty($students))?$students:[];
    }
}
