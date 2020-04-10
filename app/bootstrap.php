<?php

// Load Config
require_once 'config/config.php';

// Load helpers
require_once 'helpers/url_helper.php';

// Make Autoloader for loading core libraries
// spl_autoload_register(function ($className) {
//     require_once 'libraries/' . $className . '.php';
// });

// spl_autoload_register( function($className) {
//     if (is_file('libraries/'.$className.'.php')) {
//         require_once 'libraries/'.$className.'.php';
//     }
// });

// Autoload Core Libraries
spl_autoload_register(function($className){
    require_once 'libraries/' . $className . '.php';
});


// Load Libraries
require_once 'libraries/Core.php';
require_once 'libraries/Controller.php';
require_once 'libraries/Database.php';