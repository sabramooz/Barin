<?php
  class Login
  {
     public $error;
      function __construct()
      {
       
	   if(isset($_POST['login'])){
		$mail = $_POST['mail'];
		$password = $_POST['password'];
		
		
			$query = "SELECT * FROM `users` WHERE 
						`mail`='$mail' AND `password`=SHA1('$password')
						";
			if($signup = DatabaseHandler::GetAll($query)){
				$this->error = 'ورود با موفقیت انجام شد';
				}else{
					$this->error = 'عملیات ناموفق';
					}
			
		}
      
    
      }
  }
?>
