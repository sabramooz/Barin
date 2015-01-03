<?php
  class Main
  {
	  
		  
      public $latin_name,$result,$city,$site_address,$refahi,$kharidkala,$pezeshki,$modal = '';
      function __construct()
      {
		$this->city = $_GET['city'];
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
	   $query = "SELECT centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
									FROM centers
										INNER JOIN images ON centers.id = images.center_id 
										WHERE (centers.city_id='$city_id' AND discount<>0)
										GROUP BY (centers.id)
										ORDER BY centers.id DESC LIMIT 6";
       $this->result = databasehandler::getAll($query);
	   
	   ### refahi
	   $query2 = "SELECT centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
									FROM centers
										INNER JOIN images ON centers.id = images.center_id 
										WHERE (city_id='$city_id' AND discount<>0 AND centers.type_id=1)
										GROUP BY (centers.id)
										ORDER BY RAND() LIMIT 3";
       $this->refahi = databasehandler::getAll($query2);
	   
	   ### pezeshki
	   $query3 = "SELECT centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
									FROM centers
										INNER JOIN images ON centers.id = images.center_id 
										WHERE (city_id='$city_id' AND discount<>0 AND centers.type_id=2)
										GROUP BY (centers.id)
										ORDER BY RAND() LIMIT 3";
       $this->pezeshki = databasehandler::getAll($query3);
	   
	   ### kharid kala
	   $query4 = "SELECT centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
									FROM centers
										INNER JOIN images ON centers.id = images.center_id 
										WHERE (city_id='$city_id' AND discount<>0 AND centers.type_id=3)
										GROUP BY (centers.id)
										ORDER BY RAND() LIMIT 3";
       $this->kharidkala = databasehandler::getAll($query4);
    
      }
  }
?>
