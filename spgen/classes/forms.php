<?php
Class FORMS
{
       
    public static function forms_SelectAll()
    {
        $sql = 'CALL `sp_forms_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function forms_SelectRow($id)
    {
        $sql = 'CALL `sp_forms_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function forms_DeleteRow($id)
    {
        $sql = 'CALL `sp_forms_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function forms_UpdateRow($id, $latin_name, $persian_name, $activate)
    {
        $sql = 'CALL `sp_forms_UpdateRow`(:id, :latin_name, :persian_name, :activate)';
        $params = array (':id' => $id, ':latin_name' => $latin_name, ':persian_name' => $persian_name, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function forms_Insert($latin_name, $persian_name, $activate)
    {
        $sql = 'CALL `sp_forms_Insert`(:latin_name, :persian_name, :activate)';
        $params = array (':latin_name' => $latin_name, ':persian_name' => $persian_name, ':activate' => $activate);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>