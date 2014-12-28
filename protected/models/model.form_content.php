<?php
Class FORM_CONTENT
{
       
    public static function form_content_SelectAll()
    {
        $sql = 'CALL `sp_form_content_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function form_content_SelectRow($id)
    {
        $sql = 'CALL `sp_form_content_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function form_content_DeleteRow($id)
    {
        $sql = 'CALL `sp_form_content_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function form_content_UpdateRow($id, $name, $label, $text, $textarea, $forms_id)
    {
        $sql = 'CALL `sp_form_content_UpdateRow`(:id, :name, :label, :text, :textarea, :forms_id)';
        $params = array (':id' => $id, ':name' => $name, ':label' => $label, ':text' => $text, ':textarea' => $textarea, ':forms_id' => $forms_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function form_content_Insert($name, $label, $text, $textarea, $forms_id)
    {
        $sql = 'CALL `sp_form_content_Insert`(:name, :label, :text, :textarea, :forms_id)';
        $params = array (':name' => $name, ':label' => $label, ':text' => $text, ':textarea' => $textarea, ':forms_id' => $forms_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
	##################################################################
	 public static function form_content_SelectRowByFormId($forms_id)
    {
        $sql = 'CALL `sp_form_content_SelectRowByFormId`(:forms_id)';
        $params = array (':forms_id' => $forms_id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql, $params);
    }
}
?>