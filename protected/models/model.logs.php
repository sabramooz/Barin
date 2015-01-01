<?php
Class LOGS
{
       
    public static function log_SelectAll()
    {
        $sql = 'CALL `sp_log_SelectAll`()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll($sql);
    }
     public static function log_SelectRow($id)
    {
        $sql = 'CALL `sp_log_SelectRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
    public static function log_DeleteRow($id)
    {
        $sql = 'CALL `sp_log_DeleteRow`(:id)';
        $params = array (':id' => $id);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    } 
     public static function log_UpdateRow($id, $HTTP_USER_AGENT, $REMOTE_ADDR, $QUERY_STRING, $REQUEST_URI, $REQUEST_TIME, $CITY)
    {
        $sql = 'CALL `sp_log_UpdateRow`(:id, :HTTP_USER_AGENT, :REMOTE_ADDR, :QUERY_STRING, :REQUEST_URI, :REQUEST_TIME, :CITY)';
        $params = array (':id' => $id, ':HTTP_USER_AGENT' => $HTTP_USER_AGENT, ':REMOTE_ADDR' => $REMOTE_ADDR, ':QUERY_STRING' => $QUERY_STRING, ':REQUEST_URI' => $REQUEST_URI, ':REQUEST_TIME' => $REQUEST_TIME, ':CITY' => $CITY);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
     public static function log_Insert($HTTP_USER_AGENT, $REMOTE_ADDR, $QUERY_STRING, $REQUEST_URI, $REQUEST_TIME, $CITY)
    {
        $sql = 'CALL `sp_log_Insert`(:HTTP_USER_AGENT, :REMOTE_ADDR, :QUERY_STRING, :REQUEST_URI, :REQUEST_TIME, :CITY)';
        $params = array (':HTTP_USER_AGENT' => $HTTP_USER_AGENT, ':REMOTE_ADDR' => $REMOTE_ADDR, ':QUERY_STRING' => $QUERY_STRING, ':REQUEST_URI' => $REQUEST_URI, ':REQUEST_TIME' => $REQUEST_TIME, ':CITY' => $CITY);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute($sql, $params);
    }
#########################################################	
	public static function log_SelectSomeRows($count)
    {
        $sql = 'CALL `sp_log_SelectSomeRows`(:count)';
        $params = array (':count' => $count);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow($sql, $params);
    }
}
?>