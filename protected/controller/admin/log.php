<?php
class Log{
	public $result;
	public function __construct(){
		

		$query = "SELECT `log`.`id`, `log`.`HTTP_USER_AGENT`, `log`.`REMOTE_ADDR`, `log`.`QUERY_STRING`, 
									`log`.`REQUEST_URI`, `log`.`REQUEST_TIME`, `log`.`CITY`, `city`.`id`, `city`.`persian_name` FROM `log`
											INNER JOIN `city` ON log.CITY = city.id
						 								GROUP BY (`REMOTE_ADDR`)  LIMIT 10 ; " ;

		$this->result = databaseHandler::getAll($query);
		
		
		foreach($this->result as $key => $value){
				$this->result[$key]['REQUEST_TIME'] = jdate("Y/m/d | h:i:s",$value['REQUEST_TIME']);
			}
	}
}
?>