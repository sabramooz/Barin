<?php


if (!mysql_connect('localhost', 'root', '')) {
    echo 'Could not connect to mysql';
    exit;
}
  if(isset($_POST['dbname']))
  {
    $dbname = $_POST['dbname'];
  }

$sql = "SHOW PROCEDURE STATUS WHERE db = '$dbname'";
$result = mysql_query($sql);

if (!$result) {
    echo "DB Error, could not list tables\n";
    echo 'MySQL Error: ' . mysql_error();
    exit;
}

while ($row = mysql_fetch_row($result)) {
    echo "<input type='checkbox' name='listSp[]' value='$row[1]' checked='checked' />$row[1] <br />";
}

mysql_free_result($result);
?>
