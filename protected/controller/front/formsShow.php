<?php
  class FormsShow
  {
      public $forms;
      function __construct()
      {
       $this->forms = FORMS::forms_SelectAllWhereActivate();
    
      }
  }
?>
