<?php
  class master
  {
      public
        $pageTitle = 'Hello'
       ,$page = 'main'
	   ,$city
	   ,$array
	   ,$style
	   ,$persian_name
       ,$userInfo = array() 
      ;
      function __construct()
      {
		  if(!isset($_GET['city'])){
			  //header("Location: http://localhost/barin/tehran/");
			  $_GET['city'] = 'tehran';
			  }
			  
		   $this->latin_name = $_GET['city'];
		   $city_id = Utility::CityNameChange($this->latin_name);
		   $this->persian_name = Utility::CityNameChange2($this->latin_name);
		   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0) ORDER BY id DESC LIMIT 6";
		   $this->result = databasehandler::getAll($query);
		   $this->style = "background-image: url('http://localhost/barin/view/front/images/cities/".$city_id.".jpg');";
		   $pre = "background-color:#FFF;background-position:50px 0;";
			if($city_id != 8){
			$this->style = $pre.$this->style;	
				}
		  
		  ## liste shahr ha + tedade marakez dar shahr ha ##
		    $this->city = CITY::city_SelectAll();
			$this->array = array();
			foreach($this->city as $key=>$value){
				$getCount = DatabaseHandler::getOne("SELECT COUNT(*) FROM centers WHERE city_id = '$value[id]'; ");
				$miniarray = array('count'=>$getCount);
				array_push($this->array,$miniarray);
				}
		  ##################################################
			
          if(isset($_GET['page']))
          {
              $this->page = $_GET['page'];
          }
		  if($this->page == 'main' || $this->page == 'product'){
			 $this->top = 'topContent.tpl'; 
			  }
          $this->page .= '.tpl';
         
		 
    
      }
  }
?>
