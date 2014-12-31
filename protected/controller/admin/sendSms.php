<?php
  class SendSms
  {
	 public $error;
	public function __construct(){
			if(isset($_POST['send'])){
				if(SmsHandler::sendSms($_POST['to'],$_POST['message'])){
					$this->error = 'ارسال شد.';
					}
			}
		}
  }
?>
 	 	