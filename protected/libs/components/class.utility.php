<?php
class Utility{
		public static function CityNameChange($latin_name){
			return (databaseHandler::getOne("SELECT * FROM city WHERE latin_name = '$latin_name' ;"));
			}
	}

?>