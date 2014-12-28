<?php
	session_start();
    include 'protected/configs/config.php';    
    $page = new Application('front');
    $page->display('master.tpl');
?>