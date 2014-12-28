<?php
class FormEdit{
	
	public $forms,$formContent;
	
	public function __construct(){
		$this->forms = FORMS::forms_SelectAll();
		
		
		
		if(isset($_GET['id'])){
		$content_rows = FORM_CONTENT::form_content_SelectRowByFormId($_GET['id']);

					$htmlForms = '';
					foreach($content_rows as $content_row){
						
						if($content_row['text']==1){
							$htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><input type='text' disabled name='$content_row[name]' required ><br>\n";
							}
						if($content_row['textarea']==1){
							$htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><textarea disabled name='$content_row[name]' required ></textarea><br>\n";
							}	
					}
					
					if(isset($_POST['go_activate'])){
						if(isset($_POST['activate']) && $_POST['activate']=='on'){
						FORMS::forms_UpdateActivate($_GET['id'], 1);
						}else{
						FORMS::forms_UpdateActivate($_GET['id'], 0);	
							}
					}
			
					$this->form = FORMS::forms_SelectRow($_GET['id']);
					if($this->form['activate']==1){
						$htmlForms .="<label for='activate'>فعال</label><input checked type='checkbox' name='activate' ><br>\n";
						}else{
							$htmlForms .="<label for='activate'>فعال</label><input type='checkbox' name='activate' ><br>\n";
					}
				$this->formContent = $htmlForms;	
			}
			
			
			
			
			
			
			
	}
	
}

?>