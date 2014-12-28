<?php


if (!mysql_connect('localhost', 'root', '')) {
    echo 'Could not connect to mysql';
    exit;
}
  if(isset($_POST['dbname']))
  {
    $dbname = $_POST['dbname'];
  }

$sql = "SHOW TABLES FROM $dbname";
$result = mysql_query($sql);

if (!$result) {
    echo "DB Error, could not list tables\n";
    echo 'MySQL Error: ' . mysql_error();
    exit;
}

while ($row = mysql_fetch_row($result)) {

    echo "<option value='$row[0]'>$row[0]</option>";
}

mysql_free_result($result);
?>
