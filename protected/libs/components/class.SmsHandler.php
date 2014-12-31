<?php
class SmsHandler{
	
	public static function getCredit(){	
		
		ini_set("soap.wsdl_cache_enabled", "0");
		
		$sms_client = new SoapClient(URL_API.'/post/Send.asmx?wsdl', array('encoding'=>'UTF-8'));
		
		$parameters['username'] = USERNAME;
		$parameters['password'] = PASSWORD;
		
		return ($sms_client->GetCredit($parameters)->GetCreditResult);

	}
	
	public static function getInboxCount(){	
	
		ini_set("soap.wsdl_cache_enabled", "0");
		
		$sms_client = new SoapClient(URL_API.'/post/receive.asmx?wsdl', array('encoding'=>'UTF-8'));
		
		$parameters['username'] = USERNAME;
		$parameters['password'] = PASSWORD;
		$parameters['isRead'] =false;
		
		return($sms_client->GetInboxCount($parameters)->GetInboxCountResult);
	}
	public static function getMessages($count){	
	
		ini_set("soap.wsdl_cache_enabled", "0");
		
		$sms_client = new SoapClient(URL_API.'/post/Receive.asmx?wsdl', array('encoding'=>'UTF-8'));
		
		$parameters['username'] = USERNAME;
		$parameters['password'] = PASSWORD;
		$parameters['location'] =  1;
		$parameters['from'] = FROM;
		$parameters['index'] = 0;
		$parameters['count'] = $count;
		return($sms_client->GetMessageStr($parameters)->GetMessageStrResult);
	}
	
	public static function sendSms($to,$message){	
	
		ini_set("soap.wsdl_cache_enabled", "0");
		
		$sms_client = new SoapClient(URL_API.'/post/send.asmx?wsdl', array('encoding'=>'UTF-8'));
		
		$parameters['username'] = USERNAME;
		$parameters['password'] = PASSWORD;
		$parameters['to'] = $to;
		$parameters['from'] = FROM;
		$parameters['text'] = $message;
		$parameters['isflash'] =false;
		
		return($sms_client->SendSimpleSMS2($parameters)->SendSimpleSMS2Result);

	}
	
	
}
?>