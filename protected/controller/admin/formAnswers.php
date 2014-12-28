<?php
class FormAnswers
{
      
 	public $forms,$formsAnswersTitle,$form,$formsAnswersBody,$text_count = 0 ,$textarea_count = 0;
	
	public function __construct(){
		$this->forms = FORMS::forms_SelectAll();
		
		
		
		if(isset($_GET['id'])){
			$content_rows = FORM_CONTENT::form_content_SelectRowByFormId($_GET['id']);
			$this->form = FORMS::forms_SelectRow($_GET['id']);

					$htmlForms = '';
					foreach($content_rows as $content_row){
						
						if($content_row['text']==1){
							$htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><input type='text' disabled name='$content_row[name]' required ><br>\n";
							}
						if($content_row['textarea']==1){
							$htmlForms .= "<label for='$content_row[name]'>$content_row[label]</label><textarea disabled name='$content_row[name]' required ></textarea><br>\n";
							}	
					}
					
					$query = "SELECT * FROM ".$this->form['latin_name']." ";
					//echo $query;
					$this->formsAnswersBody = DatabaseHandler::GetAll($query);
					$formContent = FORM_CONTENT::form_content_SelectRowByFormId($_GET['id']);
					
					
					$this->formsAnswersTitle .= "<th> ردیف </th>";
					$this->formsAnswersTitle .= "<th> شخص </th>";
					foreach($formContent as $title){
						$this->formsAnswersTitle .= "<th>".$title['label']."</th>";
						
						if (preg_match('/\btext\d*?\b/', $title['name']) === 1) {
    							$this->text_count++;
							}
						if (preg_match('/\btextarea\d*?\b/', $title['name']) === 1) {
    							$this->textarea_count++;
							}
							
						}			
						
		}
		
		
		
	}
}
	
?>
