<?php
  class Signup
  {
     public $error;
      function __construct()
      {
       
		  if(isset($_POST['signup'])){
			$first_name = $_POST['first_name'];
			$last_name = $_POST['last_name'];
			$mail = $_POST['mail'];
			$mobile = $_POST['mobile'];
			$password = $_POST['password'];
			$repassword = $_POST['repassword'];
			$gender = $_POST['gender'];
			$city = $_POST['city'];
			$date = time();
			if($password == $repassword){
			
			
				$query = "INSERT INTO `users`(`id`, `first_name`, `last_name`, `mail`, `mobile`, `password`, `gender`, `city_id`, `register_date`) VALUES
											 ('','$first_name','$last_name','$mail','$mobile',SHA1('$password'),'$gender','$city','$date')";
				if($signup = DatabaseHandler::Execute($query)){
					$this->error = 'ثبت نام با موفقیت انجام شد';
					}else{
						$this->error = 'ثبت نام نا موفق';
						}
				
			}
			else{
				$this->error = 'عدم تطابق کلمه عبور با تکرار آن';
				}

	}
    
      }
  }
?>
