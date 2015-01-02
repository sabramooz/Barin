<?php
  class centers
  {
      public
        $pageTitle = 'Hello'
       ,$page = 'main'
	   
	   ,$site_address
	   ,$city_name;
       
    public  function __construct()
      {
		  ########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		  #############################################

		$this->city_name = $_GET['city']; 

      }
  }
?>
