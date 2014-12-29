<?php
  class master
  {
      public
        $pageTitle = 'Hello'
       ,$page = 'main'
	   ,$city
       ,$userInfo = array() 
      ;
      function __construct()
      {
		  $this->city = CITY::city_SelectAll();	
			
			
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
