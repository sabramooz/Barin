<?php
Class CENTERS
{
       
    public static function centers_SelectAll()
    {
        $sql = 'CALL `sp_centers_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function centers_SelectRow($id)
    {
        $sql = 'CALL `sp_centers_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function centers_DeleteRow($id)
    {
        $sql = 'CALL `sp_centers_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function centers_UpdateRow($id, $center_name, $center_manager, $discount, $price, $address, $tel, $mobile, $website, $mail, $left_date, $google_map, $code, $type_id, $city_id, $category_id)
    {
        $sql = 'CALL `sp_centers_UpdateRow`(:id, :center_name, :center_manager, :discount, :price, :address, :tel, :mobile, :website, :mail, :left_date, :google_map, :code, :type_id, :city_id, :category_id)';
        $params = array (':id' => $id, ':center_name' => $center_name, ':center_manager' => $center_manager, ':discount' => $discount, ':price' => $price, ':address' => $address, ':tel' => $tel, ':mobile' => $mobile, ':website' => $website, ':mail' => $mail, ':left_date' => $left_date, ':google_map' => $google_map, ':code' => $code, ':type_id' => $type_id, ':city_id' => $city_id, ':category_id' => $category_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function centers_Insert($center_name, $center_manager, $discount, $price, $address, $tel, $mobile, $website, $mail, $left_date, $google_map, $code, $type_id, $city_id, $category_id)
    {
        $sql = 'CALL `sp_centers_Insert`(:center_name, :center_manager, :discount, :price, :address, :tel, :mobile, :website, :mail, :left_date, :google_map, :code, :type_id, :city_id, :category_id)';
        $params = array (':center_name' => $center_name, ':center_manager' => $center_manager, ':discount' => $discount, ':price' => $price, ':address' => $address, ':tel' => $tel, ':mobile' => $mobile, ':website' => $website, ':mail' => $mail, ':left_date' => $left_date, ':google_map' => $google_map, ':code' => $code, ':type_id' => $type_id, ':city_id' => $city_id, ':category_id' => $category_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>