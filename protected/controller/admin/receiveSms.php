<?php
  class ReceiveSms
  {
	  public $result;
	public function __construct(){
		$this->result = SmsHandler::getMessages(20);
		$this->result = explode(',' , $this->result);
		}
  }
?>
 	 	