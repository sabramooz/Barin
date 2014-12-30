<?php
  class master
  {
      public
        $pageTitle = 'Hello'
       ,$page = 'main'
	   ,$city
	   ,$array
       ,$userInfo = array() 
      ;
      function __construct()
      {
		  //echo $_GET['city'];
		  //echo $_GET['cat_id'];
		  //echo $_GET['id'];
		  if(!isset($_GET['city'])){
			  header("Location: http://localhost/barin/tehran/");
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
