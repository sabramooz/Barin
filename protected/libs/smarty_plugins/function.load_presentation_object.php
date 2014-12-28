<?php
// Plug-in functions inside plug-in files must be named: smarty_type_name
function smarty_function_load_presentation_object($params, $smarty)
{
    //Edited By Keramatifar Date: 91/2/27
    if(file_exists('protected/controller/front/' . $params['filename'] . '.php'))
    {
       require_once 'protected/controller/front/' . $params['filename'] . '.php';
    }
    elseif(file_exists('protected/controller/admin/' . $params['filename'] . '.php'))
    {
       require_once 'protected/controller/admin/' . $params['filename'] . '.php';
    }

  $className = str_replace(' ', '',
                           ucfirst(str_replace('_', ' ',
                                               $params['filename'])));

  // Create presentation object
  $obj = new $className();

  if (method_exists($obj, 'init'))
  {
    $obj->init();
  }

  // Assign template variable
  $smarty->assign($params['assign'], $obj);
}
?>
