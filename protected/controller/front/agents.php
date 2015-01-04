<?php
  class Agents
  {
	  public $site_address;
      function __construct()
      {
        ########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		#############################################
      }
  }
?>
