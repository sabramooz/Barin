<?php
class CenterCreate{
	public $types,$category;
	public function __construct(){
		
		$this->types = TYPES::types_SelectAll();
		$this->category = CATEGORY::category_SelectAll();
		echo jdate("y m d");
		
		
		if(isset($_POST['go_form'])){
			
			
		
					
			
			
			
		}
		
	}
	
}