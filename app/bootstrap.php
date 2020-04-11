<?php

// Load Config
require_once 'config/config.php';

// Load helpers
require_once 'helpers/helper.php';

// Autoload Core Libraries
spl_autoload_register(function($className){
    require_once 'libraries/' . $className . '.php';
});


// Load Libraries
require_once 'libraries/Core.php';
require_once 'libraries/Controller.php';
require_once 'libraries/Database.php';