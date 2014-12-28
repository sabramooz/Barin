<?php
  class master
  {
      public
        $pageTitle = 'Hello'
       ,$page = 'main' 
       ,$userInfo = array() 
      ;
      function __construct()
      {
       
          if(isset($_GET['page']))
          {
              $this->page = $_GET['page'];
          }
          $this->page .= '.tpl';
         
		 
    
      }
  }
?>
