<?php
  class FillForm
  {
      public $persian_name,$htmlForms,
	  $columns ,$variables,
		$values ;	  
      function __construct()
      {
       if(isset($_GET['id'])){
		   	
			$this->persian_name = FORMS::forms_SelectRow($_GET['id']);
		   	$content_rows = FORM_CONTENT::form_content_SelectRowByFormId($_GET['id']);

					
					foreach($content_rows as $content_row){
						
						if($content_row['text']==1){
							$this->columns .= '`'.$content_row['name'].'` ,';
							$local = $content_row['name'];
							@$this->variables .= "'"."$_POST[$local]"."' ,";
							$this->htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><input type='text'  name='$content_row[name]' required ><br>\n";
							}
						if($content_row['textarea']==1){
							$this->columns .= '`'.$content_row['name'].'` ,';
							$local = $content_row['name'];
							@$this->variables .= "'"."$_POST[$local]"."' ,";
							$this->htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><textarea  name='$content_row[name]' required ></textarea><br>\n";
							}	
					}
		   }
		   
      				if(isset($_POST['go_fillform'])){
						$user_id = $_POST['user_id'];
						$query = 'INSERT INTO `'.$this->persian_name['latin_name'].'`( `user_id` , '.$this->columns.' ) VALUES ('.$user_id.' , '.$this->variables.' )';
						$query = str_replace(', )',' )',$query);
						//echo $query;
						DatabaseHandler::Execute($query);
						}
						
			
    
      }
	  
  }
?>
