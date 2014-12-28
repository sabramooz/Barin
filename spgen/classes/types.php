<?php
Class TYPES
{
       
    public static function types_SelectAll()
    {
        $sql = 'CALL `sp_types_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function types_SelectRow($id)
    {
        $sql = 'CALL `sp_types_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function types_DeleteRow($id)
    {
        $sql = 'CALL `sp_types_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function types_UpdateRow($id, $name)
    {
        $sql = 'CALL `sp_types_UpdateRow`(:id, :name)';
        $params = array (':id' => $id, ':name' => $name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function types_Insert($name)
    {
        $sql = 'CALL `sp_types_Insert`(:name)';
        $params = array (':name' => $name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>