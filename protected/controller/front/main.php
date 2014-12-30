<?php
  class Main
  {
      public $result;
      function __construct()
      {
		  
	   $latin_name = $_GET['city'];
	   $city_id = Utility::CityNameChange($latin_name);
	   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0) LIMIT 6";
       $this->result = databasehandler::getAll($query);
    
      }
  }
?>
