<?php
class CenterImage{
	
	public $error;
	
	public function __construct(){
		
		if(isset($_GET['id'])){
				
				$city = DatabaseHandler::getOne("SELECT city.latin_name FROM city
															INNER JOIN centers ON centers.city_id = city.id WHERE centers.id = $_GET[id] ; ");
				
				if(isset($_FILES['image_name'])){
					
				$image = $_FILES['image_name'];
				
				if($image['error']==0 && ($image['type']=='image/jpeg' || $image['type']=='image/JPG' || $image['type']=='image/gif' || $image['type']=='image/png') ){

					if(!file_exists ("view/front/images/centers/$city")){
							mkdir("view/front/images/centers/$city");
					}
					
					
					$address = "view/front/images/centers/$city/$image[name]";
					
					if(move_uploaded_file($image['tmp_name'],$address)){
						$time = time();
						rename("view/front/images/centers/$city/$image[name]","view/front/images/centers/$city/$time.jpg");
						$image['name'] = $time.'.jpg';
						$result = DatabaseHandler::Execute("INSERT INTO `images`(`id`, `name`, `center_id`) VALUES ('','$image[name]','$_GET[id]') ; ");
						
						if($result){
							
						$this->error = 'عکس با موفقیت ثبت شد.';
						
						}else{
							$this->error = 'خطای پایگاه داده!';
							}
						
						}
				}else{
					$this->error = 'عکس را درست انتخاب کنید.';
					}
				
			}
		}
		
	}
	
}