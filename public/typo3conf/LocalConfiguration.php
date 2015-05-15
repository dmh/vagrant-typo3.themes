<?php
return array(
	'BE' => array(
		'debug' => TRUE,
		'explicitADmode' => 'explicitAllow',
		'installToolPassword' => '$P$CDUx1JHCd.QYBoGLusgUhQ0ibei9om0',
		'loginSecurityLevel' => 'rsa',
	),
	'DB' => array(
		'database' => 'typo3',
		'extTablesDefinitionScript' => 'extTables.php',
		'host' => 'localhost',
		'password' => '1234',
		'socket' => '',
		'username' => 'root',
	),
	'EXT' => array(
		'extConf' => array(
			'dyncss' => 'a:2:{s:5:"state";s:0:"";s:15:"enableDebugMode";s:0:"";}',
			'dyncss_less' => 'a:0:{}',
			'gridelements' => 'a:2:{s:20:"additionalStylesheet";s:0:"";s:19:"nestingInListModule";s:1:"1";}',
			'rsaauth' => 'a:1:{s:18:"temporaryDirectory";s:0:"";}',
			'saltedpasswords' => 'a:2:{s:3:"BE.";a:4:{s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}s:3:"FE.";a:5:{s:7:"enabled";i:1;s:21:"saltedPWHashingMethod";s:41:"TYPO3\\CMS\\Saltedpasswords\\Salt\\PhpassSalt";s:11:"forceSalted";i:0;s:15:"onlyAuthService";i:0;s:12:"updatePasswd";i:1;}}',
			'static_info_tables' => 'a:2:{s:13:"enableManager";s:1:"0";s:5:"dummy";s:1:"0";}',
			'theme_bootstrap' => 'a:0:{}',
			'themes' => 'a:3:{s:17:"themesIndependent";s:1:"1";s:16:"categoriesToShow";s:230:"theme,languages,colors,container,pages,footer,header,menu,meta,font,socialmedia,forms,extension,bootstrap,theme,siteConstants,site colors,site layout,colors,languages,font,meta,metaDefaults,pages,container,menu,header,footer,forms";s:15:"constantsToHide";s:36:"dateFormat,timeFormat,dateTimeFormat";}',
			'themes_gridelements' => 'a:0:{}',
			'version' => 'a:0:{}',
			'yaml_parser' => 'a:0:{}',
		),
	),
	'FE' => array(
		'debug' => TRUE,
		'loginSecurityLevel' => 'rsa',
	),
	'GFX' => array(
		'colorspace' => 'sRGB',
		'im' => 1,
		'im_mask_temp_ext_gif' => 1,
		'im_path' => '/usr/bin/',
		'im_path_lzw' => '/usr/bin/',
		'im_v5effects' => 1,
		'im_version_5' => 'im6',
		'image_processing' => 1,
		'jpg_quality' => '80',
	),
	'SYS' => array(
		'caching' => array(
			'cacheConfigurations' => array(
				'extbase_object' => array(
					'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
					'frontend' => 'TYPO3\\CMS\\Core\\Cache\\Frontend\\VariableFrontend',
					'groups' => array(
						'system',
					),
					'options' => array(
						'defaultLifetime' => 0,
					),
				),
			),
		),
		'clearCacheSystem' => TRUE,
		'devIPmask' => '*',
		'displayErrors' => 1,
		'enableDeprecationLog' => 'file',
		'encryptionKey' => '71e9fe1dbb22fac0eeaeebbd62569b93947f8dfeaa30f1b92728c551dabcdbee2ec9fa2123b2e99241ec0486d0d79ccc',
		'exceptionalErrors' => 28674,
		'isInitialInstallationInProgress' => FALSE,
		'sitename' => 'TYPO3 site',
		'sqlDebug' => 1,
		'systemLogLevel' => 0,
		't3lib_cs_convMethod' => 'mbstring',
		't3lib_cs_utils' => 'mbstring',
	),
);
?>