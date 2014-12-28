<?php
 $conn = mysql_connect( $host, $username, $password )
        or die( mysql_errno().': '.mysql_error() );

function CreateSelectAll($tblName, $recs, $sp_name, $lenPerfixSeprator)
{
    $SelectAll =
    "CREATE PROCEDURE ". $sp_name ."()
BEGIN
    SET NAMES UTF8;
	SELECT ";

    $last_item = end($recs); // Get The Last Member Of Array For Exepting Kama
    reset($recs); // Reset The Array Pointer
    foreach($recs as $item)
    {
        if ($item == $last_item)
            $SelectAll .= "`$item`" . " FROM `$tblName` ;
END" ;
        else
            $SelectAll .= "`$item`" . ', ' ;
     
     }
        
     $dal = "   
    public static function ".substr($sp_name, $lenPerfixSeprator , (strlen($sp_name)-($lenPerfixSeprator+1)))."()
    {
        \$sql = 'CALL $sp_name()';
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetAll(\$sql);
    }";
     return array($SelectAll,$dal);
}

function CreateSelectRow($tblName, $recs, $pk, $sp_name, $lenPerfixSeprator)
{                                    
    $SelectRow = 
    "CREATE PROCEDURE $sp_name" . "(IN _" . $pk[0] . ' ' . $pk[1] . ")
BEGIN
    SET NAMES UTF8;
    SELECT ";
    $last_item = end($recs); // Get The Last Member Of Array For Exepting Kama
    reset($recs); // Reset The Array Pointer
    foreach($recs as $item)
    {
        if ($item == $last_item)
        $SelectRow .= "`$item`" . " FROM `$tblName` WHERE `$pk[0]` = _$pk[0];
END" ;
        else
            $SelectRow .= "`$item`" . ', ' ;
         
     }
     $dal = "
     public static function ".substr($sp_name, $lenPerfixSeprator , (strlen($sp_name)-($lenPerfixSeprator+1))) 
     . "(\$$pk[0])
    {
        \$sql = 'CALL $sp_name(:$pk[0])';
        \$params = array (':$pk[0]' => \$$pk[0]);
        DatabaseHandler::Close(); 
        return DatabaseHandler::GetRow(\$sql, \$params);
    }";
     return array($SelectRow,$dal);
}

function CreateDeleteRow($tblName, $recs, $pk, $sp_name, $lenPerfixSeprator)
{                                    
    $DeleteQuery = 
    "CREATE PROCEDURE $sp_name" . "(IN _" . $pk[0] . ' ' . $pk[1] . ")
BEGIN
    DELETE FROM `$tblName` WHERE `$pk[0]` = _$pk[0] ;
END ";
    $dal = "
    public static function ".substr($sp_name, $lenPerfixSeprator , (strlen($sp_name)-($lenPerfixSeprator+1))) 
    . "(\$$pk[0])
    {
        \$sql = 'CALL $sp_name(:$pk[0])';
        \$params = array (':$pk[0]' => \$$pk[0]);
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute(\$sql, \$params);
    } "; 
	return array($DeleteQuery,$dal);
}

function checkTypeIsHaveNotLength($typename)
{
    $arrTypes = array('bit','tinyint','smallint','mediumint','int','bigint','text','timestamp','time','date','datetime');
    $is = true;
    for ( $counter = 0; $counter <  count($arrTypes); $counter++) 
    {
        if(strtolower($typename) == $arrTypes[$counter]){
            $is = false;
            break;
        }
    } 
    return $is; 
}

function CreateUpdate($tblName, $recs, $pk, $types, $sp_name, $lenPerfixSeprator)
{                                    
    $dal = "
     public static function ".substr($sp_name, $lenPerfixSeprator , (strlen($sp_name)-($lenPerfixSeprator+1)))
     . "(".withDollarOrColon($recs,'$',true).")
    {
        \$sql = 'CALL $sp_name(".withDollarOrColon($recs,':',true).")';
        \$params = array (".forParameters($recs,true).");
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute(\$sql, \$params);
    }";
    
    $UpdateQuery = "CREATE PROCEDURE $sp_name" . "(";
    $last_it = end($types); // Get The Last Member Of Array For Exepting Kama
    reset($types); // Reset The Array Pointer
    $recsIndex = 0;
    //Create Query Parameteres $types[i][0] Is DataType And $types[i][1] is the Max Lenght
    $paramerters=null;
    foreach($types as $t)
    {
        if (($t[1] == -1) or (!checkTypeIsHaveNotLength($t[0]))) //Field Types that dont have any Max Lenght
            $paramerters .= 'IN _' . $recs[$recsIndex].  ' ' .  $t[0] . ', ';
        else
            $paramerters .= 'IN _' . $recs[$recsIndex].  ' ' .  $t[0] . '(' . $t[1] . '), ';   
        $recsIndex++;
    }
   
   $paramerters =substr($paramerters, 0 , (strlen($paramerters) - 2));
   $UpdateQuery .= $paramerters;
   $UpdateQuery .= ")
BEGIN
   UPDATE `$tblName`
   SET ";
    $last_item = end($recs); // Get The Last Member Of Array For Exepting Kama
    reset($recs); // Reset The Array Pointer
    unset($recs[0]);
    $QueryBody=null; 
    foreach($recs as $item)
    {
        if ($item == $last_item)
         $QueryBody .= "`$item` = _" . $item . " 
        WHERE `$pk[0]` = _$pk[0];
END" ;
        else
            $QueryBody .= "`$item` = _" . $item . ', ' ;
    }
    $UpdateQuery .= $QueryBody;
    return array($UpdateQuery,$dal);
}

function CreateInsert($tblName, $recs, $pk, $types, $sp_name, $lenPerfixSeprator)
{                                    
         $dal = "
     public static function ".substr($sp_name, $lenPerfixSeprator , (strlen($sp_name)-($lenPerfixSeprator+1)))
     . "(".withDollarOrColon($recs,'$',false).")
    {
        \$sql = 'CALL $sp_name(".withDollarOrColon($recs,':',false).")';
        \$params = array (".forParameters($recs,false).");
        DatabaseHandler::Close(); 
        return DatabaseHandler::Execute(\$sql, \$params);
    }";
    unset($recs[0]);
    unset($types[0]); 
    $InsertQuery = "CREATE PROCEDURE $sp_name" . "(";
    $last_it = end($types); // Get The Last Member Of Array For Exepting Kama
    reset($types); // Reset The Array Pointer
    $recsIndex = 1;
    //Create Query Parameteres $types[i][0] Is DataType And $types[i][1] is the Max Lenght
    $paramerters=null;
    
    foreach($types as $t)
    {
        if (($t[1] == -1) or (!checkTypeIsHaveNotLength($t[0]))) //Field Types that dont have any Max Lenght
            $paramerters .= 'IN _' . $recs[$recsIndex].  ' ' .  $t[0] . ', ';
        else
            $paramerters .= 'IN _' . $recs[$recsIndex].  ' ' .  $t[0] . '(' . $t[1] . '), ';   
        $recsIndex++;
    }
   
   $paramerters = substr($paramerters, 0 , (strlen($paramerters) - 2));
   $InsertQuery .= $paramerters;
  
   $InsertQuery .= ")
BEGIN
   INSERT INTO `$tblName`
   (";
    $last_item = end($recs); // Get The Last Member Of Array For Exepting Kama
    reset($recs); // Reset The Array Pointer
    $QueryBody=null;
    foreach($recs as $item)
    {
        if ($item == $last_item)
         $QueryBody .= "`$item` )
         VALUES("; 
        else
            $QueryBody .= "`$item` , " ;
     }
     $InsertQuery .= $QueryBody;
     $QueryBody = '';
     foreach($recs as $item)
    {
        if ($item == $last_item)
         $QueryBody .= "_$item );
END "; 
        else
            $QueryBody .= "_$item , " ;
     }
     $InsertQuery .= $QueryBody;
     
     return array($InsertQuery,$dal);
}

function withDollarOrColon ($params, $str, $isID)
{
    $recsIndex = 0;
    $paramerters=null;
    foreach($params as $t)
    {
        if($recsIndex==0){
            if($isID){
                $paramerters .= $str . $params[$recsIndex].  ', ' ;
            }
        }
        else  {
            $paramerters .= $str . $params[$recsIndex].  ', ' ;
              
        } 
        $recsIndex++;
    }
    $paramerters =substr($paramerters, 0 , (strlen($paramerters) - 2)); 
    return $paramerters;
}

function forParameters ($params, $isID)
{
    $recsIndex = 0;
    $paramerters=null;
    foreach($params as $t)
    {
        if($recsIndex==0){
            if($isID){
                $paramerters .= "':" . $params[$recsIndex].  "' => \$" . $params[$recsIndex] .  ", " ;
            }
        }    
        else {
            $paramerters .= "':" . $params[$recsIndex].  "' => \$" . $params[$recsIndex] .  ", " ;
        }
        $recsIndex++;
    }
    $paramerters =substr($paramerters, 0 , (strlen($paramerters) - 2)); 
    return $paramerters;
}

function CreateDAL($tblName, $dalMethods)
{                                    
    $DAL = "<?php
Class " . strtoupper($tblName) . "
{
    $dalMethods
}
?>" ;
    $fh = fopen('classes/'.$tblName . '.php', 'w');
    fwrite($fh, $DAL);
    fclose($fh);
}
          
function GetRealTypes($field)
{
	$s=null;
	for ($k =0; $k <= strlen($field); $k++)
	{
		$t = substr($field ,$k, 1);
		if ($t <> '(') 
			$s .= $t; 
		else 
			$k = strlen($field);
	}
	//  $types[] =array($s, mysql_field_len($result, $index++));
	return $s;
}

function CreateQueryDeleteSP($sp_name)
{
    return "DROP PROCEDURE IF EXISTS $sp_name";
}

function getSPName($tableName, $typeSP, $PrefixSp, $seprator)
{
    return "`" . $PrefixSp . $seprator . $tableName . $seprator . $typeSP . "`";
}

function deleteProcedures($tableName,$spsDel,$prefixSp, $seprator)
{
    $spsNameForDelete = '';
    foreach ($spsDel as $spname)
    {
         if($spname == 'SelectAll'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query =  CreateQueryDeleteSP($sp_name) ;
            $result2 = mysql_query($Query) or die("Not Delete proc $sp_name");
            $spsNameForDelete .= $sp_name .", "; 
        }
        else if($spname == 'SelectRow'){
            $sp_name = getSPName($tableName,$spname,$prefixSp, $seprator);
            $Query =  CreateQueryDeleteSP($sp_name) ;
            $result2 = mysql_query($Query) or die("Not Delete proc $sp_name");
            $spsNameForDelete .= $sp_name .", ";
        }
        else if($spname == 'DeleteRow'){
            $sp_name = getSPName($tableName,$spname,$prefixSp, $seprator);
            $Query =  CreateQueryDeleteSP($sp_name) ;
            $result2 = mysql_query($Query) or die("Not Delete proc $sp_name");
            $spsNameForDelete .= $sp_name .", ";
        }
        else if($spname == 'UpdateRow'){
            $sp_name = getSPName($tableName,$spname,$prefixSp, $seprator);
            $Query = CreateQueryDeleteSP($sp_name) ;
            $result2 = mysql_query($Query) or die("Not Delete proc $sp_name");
            $spsNameForDelete .= $sp_name .", ";
        }
        else if($spname == 'Insert'){
            $sp_name = getSPName($tableName,$spname,$prefixSp, $seprator);
            $Query = CreateQueryDeleteSP($sp_name) ;
            $result2 = mysql_query($Query) or die("Not Delete proc $sp_name");
            $spsNameForDelete .= $sp_name .", ";
        }
    }
    
    if(strlen($spsNameForDelete) > 3)
    {
        $spsNameForDelete = substr($spsNameForDelete, 0 , (strlen($spsNameForDelete) - 2));
        echo "Deleted $spsNameForDelete <br />";
        echo "<hr />";
    }
}

function createProcedureAndDAL($Database, $tableName, $sps, $spsDel, $prefixSp, $seprator)
{     
    mysql_select_db($Database);
    $result = mysql_query("Select * From $tableName") or die('Not Get Data');
    
    $resultTypes = mysql_query("SHOW FIELDS FROM $Database.$tableName");
    $index = 0;
    while ($row = mysql_fetch_array($resultTypes)) 
    {
        $types[$index] = array(GetRealTypes($row['Type']),mysql_field_len($result, $index));
        $index++;
    }
    $fields = mysql_num_fields($result); 
    $i =0;
    while ($i < mysql_num_fields($result)) 
    {
        $meta = mysql_fetch_field($result, $i);
        $recs[$i] = $meta->name ;             
        $maxL[$i] = $meta->max_length; 
        if($meta->primary_key == 1)
            $Primary = array($meta->name, $meta->type);
        $i++;
    }
    
    // delete sps
    deleteProcedures($tableName,$spsDel,$prefixSp, $seprator);
    
    $lenPerfixSeprator = strlen($prefixSp)+strlen($seprator)+1;
    // create sps and dal
    $dalMethods = '';
    foreach ($sps as $spname)
    {
        if($spname == 'SelectAll'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query = CreateSelectAll($tableName, $recs, $sp_name, $lenPerfixSeprator);
            $result2 = mysql_query($Query[0]) or die("Not Create proc $sp_name");
            echo "<pre>$Query[0]</pre>";
            $dalMethods .= $Query[1];
        }
        else if($spname == 'SelectRow'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query = CreateSelectRow($tableName, $recs, $Primary, $sp_name, $lenPerfixSeprator);
            $result2 = mysql_query($Query[0]) or die("Not Create proc $sp_name");
            echo "<pre>$Query[0]</pre>";
            $dalMethods .= $Query[1];
        }
        else if($spname == 'DeleteRow'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query = CreateDeleteRow($tableName, $recs, $Primary, $sp_name, $lenPerfixSeprator);
            $result2 = mysql_query($Query[0]) or die("Not Create proc $sp_name");
            echo "<pre>$Query[0]</pre>";
            $dalMethods .= $Query[1];
        }
        else if($spname == 'UpdateRow'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query = CreateUpdate($tableName, $recs, $Primary, $types, $sp_name, $lenPerfixSeprator);
            $result2 = mysql_query($Query[0]) or die("Not Create proc $sp_name");
            echo "<pre>$Query[0]</pre>";
            $dalMethods .= $Query[1];
        }
        else if($spname == 'Insert'){
            $sp_name = getSPName($tableName, $spname, $prefixSp, $seprator);
            $Query = CreateInsert($tableName, $recs, $Primary, $types, $sp_name, $lenPerfixSeprator);
            $result2 = mysql_query($Query[0]) or die("Not Create proc $sp_name");
            echo "<pre>$Query[0]</pre>";
            $dalMethods .= $Query[1];
        }
    }
    
    foreach ($sps as $spname)
    {
        if($spname == 'CreateDAL'){
            CreateDAL($tableName,$dalMethods);
            echo "<hr /><pre>Created Data Access Layer</pre>"; 
        }
    }  
} 

function deleteProceduresFromSPDEL($Database,$listSPS)
{
    mysql_select_db($Database);
    foreach ($listSPS as $spname)
    {
        $Query = CreateQueryDeleteSP($spname) ;
        $result2 = mysql_query($Query) or die('Not Delete proc "'.$spname.'"<br />');
        echo "Deleted procedure $spname <br />";     
    }
} 
?>
