<?php
  class adminMaster
  {
      public
        $pageTitle = 'صفحه اصلی'
       ,$page = 'log' 
       ,$username = 'قلی' 
	   ,$mail
	   ,$flag = 0
        
        ;
      function __construct()
      {

		 if(!isset($_SESSION['MM_ADMIN_ID'])){
			 header('Location: login.php');
			 }
			$this->mail = ADMINS::admins_SelectRow($_SESSION['MM_ADMIN_ID']);
		
		if($_SESSION['MM_ADMIN_ID'] == 8){
			$this->flag = 1;
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
