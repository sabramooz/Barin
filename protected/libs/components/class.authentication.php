<?php
  class authentication
  {
    public
        $message = ''
    ;
      public static function login($email, $password)  
    {
        $users;
       $users = users::users_login($email, $password) ;
       if(!$users)
           return false;
           
       $users['permissions'] = self::getRolePermissions($users['roles_id']);
       $_SESSION['userInfo'] = $users;
       
       return true;
  
       
    }
    public static function getRolePermissions($role)
    {
        return DatabaseHandler::GetAll("SELECT permissions_id FROM rolespermissions WHERE roles_id = $role");
    }
    public static function isUserLoggedIn()
    {
        return (isset($_SESSION['userInfo']) );
    }
    public static function checkpermission($permissionID)
    {
        $info = $_SESSION['userInfo'];
        $permissions = $info['permissions'];
        //print_r($permissions);
        foreach($permissions as $per)
        {
            if($per['permissions_id'] == $permissionID)
                return true;
        }
        return false;
    }
  }
?>
