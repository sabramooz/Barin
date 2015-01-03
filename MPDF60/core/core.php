<?php
session_start();
ob_start();

##### CONNECT TO DB ######
define('DB_SERVER','localhost');
define('DB_USERNAME','root');
define('DB_PASSWORD','');
define('DB_DATABASE','barin');
define('DB_PERSISTENCY', true);
define('PDO_DSN', 'mysql:host=' . DB_SERVER . ';dbname=' . DB_DATABASE);
##########################

include('jdf.php');
?>