<?php
/*!
* HybridAuth
* http://hybridauth.sourceforge.net | http://github.com/hybridauth/hybridauth
* (c) 2009-2012, HybridAuth authors | http://hybridauth.sourceforge.net/licenses.html
*/

// ----------------------------------------------------------------------------------------
//	HybridAuth Config file: http://hybridauth.sourceforge.net/userguide/Configuration.html
// ----------------------------------------------------------------------------------------
$config =array(
		"base_url" => "http://localhost/php_login/hybridauth/index.php", 
		"providers" => array ( 

			"Google" => array ( 
				"enabled" => false,
				"keys"    => array ( "id" => "XXXXXXXXXXXX", "secret" => "XXXXXXXX" ), 
			),

			"Facebook" => array ( 
				"enabled" => true,
				"keys"    => array ( "id" => "297395890419563", "secret" => "3befb5f604b6b45ccf26089cd1788917" ), 
			),

			"Twitter" => array ( 
				"enabled" => false,
				"keys"    => array ( "key" => "XXXXXXXX", "secret" => "XXXXXXX" ) 
			),
		),
		// if you want to enable logging, set 'debug_mode' to true  then provide a writable file by the web server on "debug_file"
		"debug_mode" => true,
		"debug_file" => "log.txt",
	);
