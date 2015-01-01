<?php
  class Main
  {
	  
		  
      public $latin_name,$result,$site_address,$refahi,$kharidkala,$pezeshki,$modal = '';
      function __construct()
      {
		
		########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		#############################################
		  
		##### modal session #########
		if(!isset($_SESSION['modal'])){
			$this->modal = 'myModal';
		 	$_SESSION['modal'] = 'modal';
		  }
		#############################
		    
	   $this->latin_name = $_GET['city'];
	   $city_id = Utility::CityNameChange($this->latin_name);
	   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0) ORDER BY id DESC LIMIT 6";
       $this->result = databasehandler::getAll($query);
	   
	   ### refahi
	   $query2 = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0 AND type_id=1) ORDER BY id DESC LIMIT 3";
       $this->refahi = databasehandler::getAll($query2);
	   
	   ### pezeshki
	   $query3 = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0 AND type_id=2) ORDER BY id DESC LIMIT 3";
       $this->pezeshki = databasehandler::getAll($query3);
	   
	   ### kharid kala
	   $query4 = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0 AND type_id=3) ORDER BY id DESC LIMIT 3";
       $this->kharidkala = databasehandler::getAll($query4);
    
      }
  }
?>
