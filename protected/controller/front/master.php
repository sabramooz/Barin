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
	   ,$site_address
	   ,$city_name
       ,$userInfo = array() 
      ;
      function __construct()
      {
		  ########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		  #############################################
		  
		  
		  if(!isset($_GET['city'])){
			  //header("Location: http://localhost/barin/tehran/");
			  $_GET['city'] = 'tehran';
			  }
			  
		   $this->latin_name = $_GET['city'];
		   $city_id = Utility::CityNameChange($this->latin_name);
		   $this->persian_name = Utility::CityNameChange2($this->latin_name);
		   $query = "SELECT * FROM centers WHERE (city_id='$city_id' AND discount<>0) ORDER BY id DESC LIMIT 6";
		   $this->result = databasehandler::getAll($query);
		   $this->style = "background-color:#FFF;background-position:50px 0; background-image: url('".SITE_ADDRESS."view/front/images/cities/".$city_id.".jpg');";
		   $pre = "";
		  
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
			  echo $this->page;
          }
		  if(!isset($_GET['cat_id']) && !isset($_GET['id'])  && !isset($_GET['user'])){
			 $this->top = 'topContent.tpl';
			  }
          $this->page .= '.tpl';
         
		 if(isset($_GET['cat_id']) && isset($_GET['id'])){
			 $this->page = 'product.tpl'; 
			 }
			 
		if(isset($_GET['cat_id']) && !isset($_GET['id'])){
			 $this->page = 'productShow.tpl'; 
			 }
		$this->city_name = $_GET['city']; 
		 
		 #### log ####
		 $HTTP_USER_AGENT = $_SERVER['HTTP_USER_AGENT'];
		 $REMOTE_ADDR = $_SERVER['REMOTE_ADDR'];
		 $QUERY_STRING = $_SERVER['QUERY_STRING'];
		 $REQUEST_URI = $_SERVER['REQUEST_URI'];
		 $REQUEST_TIME = $_SERVER['REQUEST_TIME'];
		 LOGS::log_Insert($HTTP_USER_AGENT, $REMOTE_ADDR, $QUERY_STRING, $REQUEST_URI, $REQUEST_TIME, $city_id);
    
      }
  }
?>
