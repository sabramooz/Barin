<?php
class CenterCreate{
	public $types,$category, $cities,$error;
	public function __construct(){
		
		$this->types = TYPES::types_SelectAll();
		$this->category = CATEGORY::category_SelectAll();
		//echo jdate("y m d");
		
		
		if(isset($_POST['center_register'])){
			$timestamp = jmktime(0,0,0,$_POST['left_date_month'],$_POST['left_date_day'],$_POST['left_date_year']);
			//echo date('c',$timestamp);
				
				$result = CENTERS::centers_Insert($_POST['center_name'], $_POST['center_manager'], $_POST['discount'], 
										 $_POST['address'], $_POST['tel'], $_POST['mobile'], 
									$_POST['website'], $_POST['mail'], $_POST['type_id'], $_SESSION['MM_ADMIN_ID']
									, $_POST['category_id'], 'image',$_POST['detail'],$timestamp, $_POST['google_map'], 
									$_POST['code']);
				if($result){
					$this->error = 'فروشگاه مورد نظر با موفقیت ثبت شد.';
					}
			
		}
		
	}
	
}