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
     public static function centers_UpdateRow($id, $center_name, $center_manager, $discount, $address, $tel, $mobile, $website, $mail, $type_id, $city_id, $category_id, $image, $detail, $left_date, $google_map, $code)
    {
        $sql = 'CALL `sp_centers_UpdateRow`(:id, :center_name, :center_manager, :discount, :address, :tel, :mobile, :website, :mail, :type_id, :city_id, :category_id, :image, :detail, :left_date, :google_map, :code)';
        $params = array (':id' => $id, ':center_name' => $center_name, ':center_manager' => $center_manager, ':discount' => $discount, ':address' => $address, ':tel' => $tel, ':mobile' => $mobile, ':website' => $website, ':mail' => $mail, ':type_id' => $type_id, ':city_id' => $city_id, ':category_id' => $category_id, ':image' => $image, ':detail' => $detail, ':left_date' => $left_date, ':google_map' => $google_map, ':code' => $code);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function centers_Insert($center_name, $center_manager, $discount, $address, $tel, $mobile, $website, $mail, $type_id, $city_id, $category_id, $image, $detail, $left_date, $google_map, $code)
    {
        $sql = 'CALL `sp_centers_Insert`(:center_name, :center_manager, :discount, :address, :tel, :mobile, :website, :mail, :type_id, :city_id, :category_id, :image, :detail, :left_date, :google_map, :code)';
        $params = array (':center_name' => $center_name, ':center_manager' => $center_manager, ':discount' => $discount, ':address' => $address, ':tel' => $tel, ':mobile' => $mobile, ':website' => $website, ':mail' => $mail, ':type_id' => $type_id, ':city_id' => $city_id, ':category_id' => $category_id, ':image' => $image, ':detail' => $detail, ':left_date' => $left_date, ':google_map' => $google_map, ':code' => $code);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
}
?>