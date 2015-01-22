<?php
  class AdminManage
  {
	 public $cities,$go_city,$admins;
	public function __construct(){
		$this->cities = City::city_SelectAll();
			
		
		if(isset($_POST['go_city'])){
			$this->go_city = $_POST['go_city'];
			$this->admins = ADMINS::admins_SelectRow($_POST['city']);
			
			}	
		if(isset($_POST['go_edit'])){
			$this->admins = ADMINS::admins_SelectRow($_POST['cityId']);
			if(!isset($_POST['permission'])){
				$_POST['permission'] = 0;
				}else{
					$_POST['permission'] = 1;
					}
					//echo 'avali'.$_POST['password'].'<br>'.$this->admins['password'];
			if($this->admins['password'] == $_POST['password']){
				
				}else{
					$_POST['password'] = sha1($_POST['password']);
					}
			ADMINS::admins_UpdateRow($_POST['id'], $_POST['first_name'], $_POST['last_name'], $_POST['melli_code'], 
			$_POST['mobile'], $_POST['mail'], $_POST['password'], $_POST['permission'], $_POST['cityId']);
			}
		}
		
  }
?>
 	 	