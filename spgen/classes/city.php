<?php
Class CITY
{
       
    public static function city_SelectAll()
    {
        $sql = 'CALL `sp_city_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function city_SelectRow($id)
    {
        $sql = 'CALL `sp_city_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function city_DeleteRow($id)
    {
        $sql = 'CALL `sp_city_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function city_UpdateRow($id, $persian_name, $latin_name, $admin_id)
    {
        $sql = 'CALL `sp_city_UpdateRow`(:id, :persian_name, :latin_name, :admin_id)';
        $params = array (':id' => $id, ':persian_name' => $persian_name, ':latin_name' => $latin_name, ':admin_id' => $admin_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function city_Insert($persian_name, $latin_name, $admin_id)
    {
        $sql = 'CALL `sp_city_Insert`(:persian_name, :latin_name, :admin_id)';
        $params = array (':persian_name' => $persian_name, ':latin_name' => $latin_name, ':admin_id' => $admin_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>