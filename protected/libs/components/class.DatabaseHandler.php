<?php
  // Class providing generic data access functionality
    
  class DatabaseHandler
  {
    // Hold an instance of the PDO class
    private static $_mHandler;

    // Private constructor to prevent direct creation of object
    private function __construct()
    {
    }     

    private static function convertPersianWord($item)
    {
      return str_replace(array('ي', 'ك'), array('ی', 'ک'), $item);
    }
    private static function convertPersianWords($arrayParams)
    {
      foreach($arrayParams as $key => $value)
      {
        $arrayParams[$key] = self::convertPersianWord($value);
      }
      return $arrayParams; 
    }
    // Return an initialized database handler 
    private static function GetHandler()
    {
      // Create a database connection only if one doesn?t already exist
      if (!isset(self::$_mHandler))
      {
        // Execute code catching potential exceptions
        try
        {
          // Create a new PDO class instance
          self::$_mHandler =
          new PDO(PDO_DSN, DB_USERNAME, DB_PASSWORD,
            array(PDO::ATTR_PERSISTENT => DB_PERSISTENCY, PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));

          // Configure PDO to throw exceptions
          self::$_mHandler->setAttribute(PDO::ATTR_ERRMODE,
            PDO::ERRMODE_EXCEPTION);
        }
        catch (PDOException $e)
        {
          // Close the database handler and trigger an error
          self::Close();
          trigger_error($e->getMessage(), E_USER_ERROR);
        }
      }

      // Return the database handler
      return self::$_mHandler;
    }

    // Clear the PDO class instance
    public static function Close()
    {
      self::$_mHandler = null;
    }

    // Wrapper method for PDOStatement::execute()
    //For INSERT UPDATE DELETE
    public static function Execute($sqlQuery, $params = null)
    {
      // Try to execute an SQL query or a stored procedure
      try
      {
        // Get the database handler
        $database_handler = self::GetHandler();

        // Prepare the query for execution
        $statement_handler = $database_handler->prepare('SET NAMES UTF8;' . $sqlQuery);

        // Execute query
             
        $execResult = $statement_handler->execute($params);
        self::Close();
        if($execResult == 1) return true; return false;
        //return $execResult;
      }
      // Trigger an error if an exception was thrown when executing the SQL query
      catch(PDOException $e)
      {
        // Close the database handler and trigger an error
        self::Close();
        trigger_error($e->getMessage(), E_USER_ERROR);
      }
    }

    
    // SELECT * FROM users
    // Wrapper method for PDOStatement::fetchAll()
    public static function GetAll($sqlQuery, $params = null,
      $fetchStyle = PDO::FETCH_ASSOC)
    {
      // Initialize the return value to null
      $result = null;

      // Try to execute an SQL query or a stored procedure
      try
      {
        // Get the database handler
        $database_handler = self::GetHandler();

        // Prepare the query for execution
        //
        //print_r($sqlQuery);
        $statement_handler = $database_handler->prepare($sqlQuery);

        // Execute the query
        $statement_handler->execute($params);
        //print_r($params);
        // Fetch result
        $result = $statement_handler->fetchAll($fetchStyle);
      }
      // Trigger an error if an exception was thrown when executing the SQL query
      catch(PDOException $e)
      {
        // Close the database handler and trigger an error
        self::Close();
        trigger_error($e->getMessage(), E_USER_ERROR);
      }

      // Return the query results
      return $result;
    }

    
    // SELECT * FROM users WHERE id = 1;
    // Wrapper method for PDOStatement::fetch()
    public static function GetRow($sqlQuery, $params = null,
      $fetchStyle = PDO::FETCH_ASSOC)
    {
      // Initialize the return value to null
      $result = null;

      // Try to execute an SQL query or a stored procedure
      try
      {
        // Get the database handler
        $database_handler = self::GetHandler();

        // Prepare the query for execution
        $statement_handler = $database_handler->prepare($sqlQuery);

        // Execute the query
        $statement_handler->execute($params);

        // Fetch result
        $result = $statement_handler->fetch($fetchStyle);
      }
      // Trigger an error if an exception was thrown when executing the SQL query
      catch(PDOException $e)
      {
        // Close the database handler and trigger an error
        self::Close();
        trigger_error($e->getMessage(), E_USER_ERROR);
      }

      // Return the query results
      return $result;
    }

    
    //SELECT username FROM users WHERE id = 1
    // Return the first column value from a row
    public static function GetOne($sqlQuery, $params = null)
    {
      // Initialize the return value to null    
      $result = null;

      // Try to execute an SQL query or a stored procedure
      try
      {
        // Get the database handler
        $database_handler = self::GetHandler();

        // Prepare the query for execution
        $statement_handler = $database_handler->prepare($sqlQuery);

        // Execute the query
        $statement_handler->execute($params);

        // Fetch result
        $result = $statement_handler->fetch(PDO::FETCH_NUM);

        /* Save the first value of the result set (first column of the first row)
        to $result */
        $result = $result[0];
      }
      // Trigger an error if an exception was thrown when executing the SQL query
      catch(PDOException $e)
      {
        // Close the database handler and trigger an error
        self::Close();
        trigger_error($e->getMessage(), E_USER_ERROR);
      }

      // Return the query results
      return $result;
    }
  }
  /*$result = DatabaseHandler::GetAll("SELECT * FROM users");
  foreach($result as $item)
  {
      echo "$item[fullname] | $item[email] <hr />";
  } */
  
  // Database connectivity setup

?>
