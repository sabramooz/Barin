<?php
  class adminMaster
  {
      public
        $pageTitle = 'صفحه اصلی'
       ,$page = 'log' 
       ,$username = 'قلی' 
        
        ;
      function __construct()
      {

		 if(!isset($_SESSION['MM_ADMIN_ID'])){
			 header('Location: login.php');
			 }
		 
          if(isset($_GET['page']))
          {
			  foreach(title::$title as $key => $value){
			 	 if($_GET['page'] == $key){
					 $this->pageTitle = $value;	
				 }
			  }
			  
              $this->page = $_GET['page'];
          }
          $this->page .= '.tpl';
      }
  }
?>
