<?php
class Utility{
		public static function CityNameChange($latin_name){
			return (databaseHandler::getOne("SELECT id FROM city WHERE latin_name = '$latin_name' ;"));
			}
		public static function CityNameChange2($latin_name){
			return (databaseHandler::getOne("SELECT persian_name FROM city WHERE latin_name = '$latin_name' ;"));
			}
			
		public static function TypeNameChange($id){
			return (databaseHandler::getOne("SELECT name FROM types WHERE id = '$id' ;"));
			}
	}

?>