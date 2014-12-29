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
