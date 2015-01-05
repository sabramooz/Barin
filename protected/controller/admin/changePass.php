<?php
  class ChangePass
  {
	  public $error;
   public function __construct(){
	   	
	  		 $admin = ADMINS::admins_SelectRow($_SESSION['MM_ADMIN_ID']);
			 
			 if(isset($_POST['go_change'])){
				 
				 	$password = $_POST['password'];
					$new_password = $_POST['new_password'];
					$re_new_password = $_POST['re_new_password'];
				 	if(sha1($password) == $admin['password']){
						
						if($new_password == $re_new_password){
							$new_password = sha1($new_password);
							  DatabaseHandler::Execute("UPDATE `admins` SET `password`='$new_password' WHERE id = '$_SESSION[MM_ADMIN_ID]' ; ");
							  $this->error = 'کلمه عبور شما با موفقیت تغییر یافت.';
							}else{
								
							$this->error = 'کلمه عبور جدید با تکرار آن مطابقت نمیکند.';
							}
						
						}else{
							$this->error = 'کلمه عبور فعلی درست نمی باشد.';
							
							}
				 }
	   
	   }    
  }
?>
