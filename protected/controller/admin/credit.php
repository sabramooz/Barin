<?php
  class Credit
  {
	 public $credit;
	public function __construct(){
				$this->credit = floor(SmsHandler::getCredit());
		}
  }
?>
 	 	