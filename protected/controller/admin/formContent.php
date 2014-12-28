<?php
class FormContent{
	public $content,$output;
	public function __construct(){
		
		if(isset($_GET['id'])){

			if(isset($_GET['text'])){
				for($i=1;$i<=$_GET['text'];$i++){
					$this->content .= '
					<div class="form-group">
						<label class="col-sm-2 col-xs-12  control-label" for="latin_name">
							<span class="glyphicon glyphicon-asterisk optional"></span>'.$i.' : 
						</label>
						<div class="col-sm-4 col-md-3 col-xs-12 ">
							<input type="text" disabled class="form-control" >
						</div>
						<div class="col-sm-4 col-md-3 col-xs-12 ">
							label : <input type="text" class="form-control" name="text'.$i.'">
						</div>
						<span class="help-block">نام یونیک</span> 
					</div>
					';
					$column = 'text'.$i;
					$this->output .= "$column VARCHAR(250),\n";
					}
				}
				
		if(isset($_GET['textarea'])){
				for($i=1;$i<=$_GET['textarea'];$i++){
					$this->content .= '
					<div class="form-group">
						<label class="col-sm-2 col-xs-12  control-label" for="latin_name">
							<span class="glyphicon glyphicon-asterisk optional"></span>'.$i.' : 
						</label>
						<div class="col-sm-4 col-md-3 col-xs-12 ">
							<textarea disabled class="form-control" ></textarea>
						</div>
						<div class="col-sm-4 col-md-3 col-xs-12 ">
							label : <textarea class="form-control" name="textarea'.$i.'"></textarea>
						</div>
						<span class="help-block">نام یونیک</span> 
					</div>
					';
					$column = 'textarea'.$i;
					$this->output .= "$column VARCHAR(250),\n";
					}
				}
				
				
			
		if(isset($_POST['go_content'])){
				
				if(isset($_GET['text'])){
					for($i=1;$i<=$_GET['text'];$i++){
						$test = 'text'.$i;
						FORM_CONTENT::form_content_Insert("text".$i,$_POST["$test"], 1, 0, $_GET['id']);
						}
				}
				
				if(isset($_GET['textarea'])){
					for($i=1;$i<=$_GET['textarea'];$i++){
						$testtextarea = 'textarea'.$i;
						FORM_CONTENT::form_content_Insert("textarea".$i,$_POST["$testtextarea"], 0, 1, $_GET['id']);
						}
				}
				
		$this->tableBuild($this->output);
		
		
		}	
			
		}
	
	}
	
	public function tableBuild($output){
		$latin_name = FORMS::forms_SelectRow($_GET['id']);
			$db = "
			CREATE TABLE IF NOT EXISTS `".$latin_name['latin_name']."`(
			id INT NOT NULL AUTO_INCREMENT,
			$output		
			user_id INT,
			PRIMARY KEY (id))
			ENGINE=InnoDB;";
			//var_dump($db);
			DatabaseHandler::Execute($db);
			}
}