<?php
  class ProductShow
  {
	  	  
      public $latin_name,$result,$site_address,$persian_name,$type_name;
	  
      function __construct()
      {
		
		########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		#############################################
		
		$cat_id = $_GET['cat_id'];
			
	   $this->latin_name = $_GET['city'];
	   $city_id = Utility::CityNameChange($this->latin_name);
	   $this->persian_name = Utility::CityNameChange2($this->latin_name);
	   $this->type_name = Utility::TypeNameChange($cat_id);
	   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0 AND type_id='$cat_id') ORDER BY id DESC LIMIT 40";
       $this->result = databasehandler::getAll($query);
    
      }
  }
?>
