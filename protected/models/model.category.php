<?php
Class CATEGORY
{
       
    public static function category_SelectAll()
    {
        $sql = 'CALL `sp_category_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function category_SelectRow($id)
    {
        $sql = 'CALL `sp_category_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function category_DeleteRow($id)
    {
        $sql = 'CALL `sp_category_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function category_UpdateRow($id, $category_name)
    {
        $sql = 'CALL `sp_category_UpdateRow`(:id, :category_name)';
        $params = array (':id' => $id, ':category_name' => $category_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function category_Insert($category_name)
    {
        $sql = 'CALL `sp_category_Insert`(:category_name)';
        $params = array (':category_name' => $category_name);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>