<?php
 
  // Reference Smarty library
  require_once SMARTY_DIR . 'Smarty.class.php';
  /* Class that extends Smarty, used to process and display Smarty
  files */
  class Application extends Smarty
  {
    // Class constructor
 
    public function __construct($side = 'front')
    {
      // Call Smarty's constructor
      parent::__construct();
      // Change the default template directories
      if($side != 'front')
      {
          
          $this->template_dir = ADMIN_CURRENT_THEME;  
      }
      else
      {
         $this->template_dir = FRONT_CURRENT_THEME; 
         
      }

      
      
      $this->compile_dir = COMPILE_DIR;

      $this->setPluginsDir(SMARTY_DIR . 'plugins');
      $this->addPluginsDir(SMARTY_PLUGINS);
    }
      
  }  
?>
