<?php
class CenterCreate{
	public $types,$category;
	public function __construct(){
		
		$this->types = TYPES::types_SelectAll();
		$this->category = CATEGORY::category_SelectAll();
		//echo jdate("y m d");
		
		
		if(isset($_POST['center_register'])){
				
				CENTERS::centers_Insert($center_name, $center_manager, $discount, $price, $address, $tel, $mobile, 
									$website, $mail, $left_date, $google_map, $code, $type_id, $city_id, $category_id);
			
		
					
			
			
			
		}
		
	}
	
}