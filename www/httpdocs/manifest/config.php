<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '17',
			'allow_page_subscription' => '1',
			'lang' => 'en',
			'version' => '2.2.5',
			'pages_table_nest_children' => 'yes',
			'cookie_prefix' => 'sym-',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Punch !',
			'useragent' => 'Symphony/2.2.5',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'H:i',
			'date_format' => 'd F Y',
			'timezone' => 'America/Los_Angeles',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0775',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0775',
		),
		########


		###### DATABASE ######
		'database' => array(
			'driver' => 'mysql',
			'character_set' => 'utf8',
			'character_encoding' => 'utf8',
			'runtime_character_set_alter' => '1',
			'query_caching' => 'default',
			'host' => 'localhost',
			'port' => '3306',
			'user' => 'root',
			'password' => 'root',
			'db' => 'punch',
			'tbl_prefix' => 'sym_',
		),
		########


		###### MAPTOFRONT ######
		'maptofront' => array(
			'fallback' => null,
			'map_sub_to_front' => 'yes',
		),
		########


		###### MOBILE-DEVICE-DETECTION ######
		'mobile-device-detection' => array(
			'not-mobile-cookie' => 'no-mobile-redirect',
		),
		########
	);
