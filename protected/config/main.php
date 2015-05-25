<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
Yii::setPathOfAlias('editable', dirname(__FILE__).'/../extensions/x-editable');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'INTITA',

	'sourceLanguage'=>'xs',
	'language'=>'uk_UA',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'ext.autoadmin.*',
		'ext.autoadmin.models.*',
		'ext.autoadmin.models.field.*',
		'ext.autoadmin.helpers.*',
		'ext.autoadmin.controllers.*',
        'ext.imperavi-redactor-widget.*',
        'editable.*' //easy include of editable classes
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool

		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'admin',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

		'autoadmin'=>array(
			'class'=>'ext.autoadmin.AutoAdmin',
			'basePath' => dirname(__FILE__).'/../modules/autoadmin',
			'wwwDirName' => 'www', //your DocumentRoot
			'authMode' => true, //Switch on authorization system
			'openMode' => true, //Use for temporary switching off all access limitations
			'logMode' => false,
		),

	),

	// application components
	'components'=>array(

		'clientScript'   => array(
    		'class' => 'system.web.CClientScript',
    	),

		'cache'=>array(
			'class'=>'system.caching.CFileCache',
		),

        'autoadmin'=>array(
            'class'=>'ext.autoadmin.AutoAdmin',
            'basePath' => dirname(__FILE__).'/../modules/autoadmin',
            'layout' => 'main',
            'wwwDirName' => 'www',
            'dbConnection' => 'db',
            'dbAdminTablePrefix' => 'aa_',
            'dbAdminSchema' => 'admin',
            'authMode' => true,
            'openMode' => false,
            'logMode' => true,
        ),

        'messages'=>array(
            'class'=>'CDbMessageSource',
            'sourceMessageTable'=>'sourcemessages',
            'translatedMessageTable'=>'messages',
        ),

		'user' => array(
			'loginUrl'       => array('/site/login'),
			'allowAutoLogin' => true,
		),

		'authManager' => array(
			'class'         => 'application.components.AuthManager',
			'defaultRoles'  => array('0'), // по умолчанию 0, то есть гость
		),

		'urlManager'=>array(
			'urlFormat' => 'path',
			'showScriptName'=>false,
			'urlSuffix' => '/',
			'caseSensitive' => true,
			'rules'=>array(

				''=>array('site/index', 'urlSuffix' => ''),

				'<module:\w+>/<controller:\w+>/<id:\d+>' => '<module>/<controller>/view',
                '<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
                '<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',

                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',

                '<controller:aajax>/<action:\w+>' => 'autoadmin/<controller>/<action>',
                '<controller:afile>/<action:\w+>' => 'autoadmin/<controller>/<action>',
                '<controller:\w+>/foreign-<key:\w+>' => 'autoadmin/<controller>/foreign<key>',
//                array(
//                    'class' => 'application.components.CoursesRule',
//                    'connectionID' => 'db',
//                ),
			),

		),

        'widgetFactory' => array(
            'enableSkin' => true,
        ),

		// database settings are configured in database.php
		'db'=>require(dirname(__FILE__).'/database.php'),
		'db2'=>require(dirname(__FILE__).'/database.php'),
		'dbAdmin' => require(dirname(__FILE__).'/database.php'),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),

		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
			),
		),

		'config' => array(
			'class' => 'application.extensions.EConfig',
		),

        //X-editable config
        'editable' => array(
            'class'     => 'editable.EditableConfig',
            'form'      => 'plain',        //form style: 'bootstrap', 'jqueryui', 'plain'
            'mode'      => 'popup',            //mode: 'popup' or 'inline'
            'defaults'  => array(              //default settings for all editable elements
                'emptytext' => 'Натисніть для редагування'
            )
        ),
    ),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in teacher profile page
		'adminEmail'=>'Wizlightdragon@gmail.com',
		'languages'=>array('en'=>'English', 'ua'=>'Ukrainian', 'ru'=>'Russian'),
         //'imagesPath'=>'http://localhost/IntITA/images',
//         'avatarsPath'=>'http://localhost/IntITA/avatars',
//         'commonPath' =>'http://localhost/IntITA/files',
        'imagesPath'=>'http://intita.itatests.com/images',
        'avatarsPath'=>'http://intita.itatests.com/avatars',
        'commonPath' =>'http://intita.itatests.com/files',
	),
);
