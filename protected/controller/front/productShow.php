<?php
  class ProductShow
  {
	  	  
      public $latin_name,$result,$site_address,$persian_name,$type_name,$count_rows,$city_name;
	  public $output ='';
	  
      function __construct()
      {
		
		########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		#############################################
		
		$cat_id = $_GET['cat_id'];
			
	   $this->latin_name = $_GET['city'];
	   $city_id = Utility::CityNameChange($this->latin_name);
	   $this->persian_name = Utility::CityNameChange2($this->latin_name);
	   $this->type_name = Utility::TypeNameChange($cat_id);
	   
	   
	   $start = 1;
		$perPage = 15 ;
		if(isset($_GET['page_id'])){
			$start = ($_GET['page_id'] - 1) * $perPage;
			}
			
	
	   if($_GET['cat_id'] == 4){
		    $query = "SELECT centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
									FROM centers
										LEFT JOIN images ON centers.id = images.center_id
			 									WHERE (centers.city_id='$city_id' AND centers.discount<>0 )
												 GROUP BY (centers.id)
												 ORDER BY images.name DESC LIMIT $start,$perPage ";
							
	   		$total_query = "SELECT COUNT(id) FROM centers WHERE (city_id='$city_id' AND discount<>0 ) ; ";
			$this->type_name = 'تمامی مراکز';
		}else{
			     $query = "SELECT 
				 centers.id AS item_id ,centers.discount,centers.center_name,centers.city_id,centers.type_id,
								images.id,images.name,images.center_id
				  FROM centers
						LEFT JOIN images ON centers.id = images.center_id
			 				WHERE (centers.city_id='$city_id' AND centers.discount<>0 AND centers.type_id='$cat_id')
							 GROUP BY (centers.id)
							 ORDER BY images.name DESC LIMIT $start,$perPage ";
				 
				 
	   			 $total_query = "SELECT COUNT(id) FROM centers WHERE (city_id='$city_id' AND discount<>0 AND type_id='$cat_id') ; "; 
		 }
	   
       $this->result = databasehandler::getAll($query);

		//var_dump($this->result);
		
		
		
		$this->count_rows = databasehandler::getOne($total_query);
		$counter = ceil($this->count_rows / $perPage);
		
		$this->city = $_GET['city'];
		$city = $_GET['city'];
		$cat_id = $_GET['cat_id'];
		
		
		$flag = ' ';
		if(!isset($_GET['page_id'])){$_GET['page_id']=1;}
		
		if(($_GET['page_id']-1)!=0){$previous = $_GET['page_id']-1;}else{ $previous = 1;}
		
		$this->output .= '<ul class="pagination">';
		$this->output .=  '<li><a href="'.SITE_ADDRESS.$city.'/'.$cat_id.'/page/1/'.'">اولین</a></li>';
		$this->output .=  '<li><a href="'.SITE_ADDRESS.$city.'/'.$cat_id.'/page/'.$previous.'/'.'">&laquo;</a></li>';
			for($i = 1; $i <= $counter ; $i++){
				if(isset($_GET['page_id']) && $_GET['page_id']==$i){$flag = 'active';}else{$flag = ' ' ;}
				  
				 $this->output .=  ' <li class="'.$flag .'"><a href="'.SITE_ADDRESS.$city.'/'.$cat_id.'/page/'.$i.'/'.'">'.$i.'</a></li>';
			
				}
				
			if($_GET['page_id']<$counter){$next = $_GET['page_id']+1;}else{$next = $counter;}
			
		$this->output .=  '<li><a href="'.SITE_ADDRESS.$city.'/'.$cat_id.'/page/'.$next.'/'.'">&raquo;</a></li>';
		$this->output .=  '<li><a href="'.SITE_ADDRESS.$city.'/'.$cat_id.'/page/'.$counter.'/'.'">آخرین</a></li>';
		$this->output .=  '</ul>';
		if($counter ==1){
			$this->output = '';
			}
		
		
		
    
      }
  }
?>
