<?php
    session_start();
    include 'protected/configs/config.php';    
    $page = new Application('admin');
    $page->display('adminMaster.tpl');
?>