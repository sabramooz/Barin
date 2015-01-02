<?php
  class ProductShow
  {
	  
		  
      public $latin_name,$result,$site_address;
      function __construct()
      {
		
		########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		#############################################
		    echo $_GET['city'];
			echo $_SERVER['QUERY_STRING'];
	   $this->latin_name = $_GET['city'];
	   $city_id = Utility::CityNameChange($this->latin_name);
	   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0) ORDER BY id DESC LIMIT 40";
       $this->result = databasehandler::getAll($query);
    
      }
  }
?>
