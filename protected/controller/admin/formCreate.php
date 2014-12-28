<?php
class FormCreate{
	public $forms_id;
	public function __construct(){
		
		
		if(isset($_POST['go_form'])){
			
			
			if(isset($_POST['activate']) &&  $_POST['activate'] == 'on'){
				$_POST['activate'] = 1;
				}else{
					$_POST['activate'] = 0;
					}
					
			if(!FORMS::forms_SelectRowByLatinName($_POST['latin_name'])){
				
				if(FORMS::forms_Insert($_POST['latin_name'], $_POST['persian_name'], $_POST['activate'])){
					$this->forms_id = FORMS::forms_SelectRowByLatinName($_POST['latin_name']);
					header("Location: admin.php?page=formContent&id=".$this->forms_id['id']."&text=".$_POST['text']."&textarea=".$_POST['textarea']."");
					}
				}else{
					echo 'tekrari';
					}
			}
			
			
		}
		
		
	
	}