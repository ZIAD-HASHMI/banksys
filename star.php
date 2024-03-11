<?php 
//session_start();
if(isset($_POST['start']))
{

$db = $_POST['identifier'];
//$cls = $_POST['connectdb'];
//echo $us;
printf('%s',$db);
$servername = "localhost";
// Enter your MySQL username below(default=root)
$username = "pma";
// Enter your MySQL password below
$password = "pmapass";
$dbname = $db;
/*mysqli.default_host=192.168.2.27 mysqli.default_user=root mysqli.default_pw="" mysqli.default_port=3306 mysqli.default_socket=/tmp/mysql.sock*/
// Create connection
$db = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($db->connect_error) {
  
    die($db->connect_error);
}

/*
$mysqli="SELECT * FROM LEDGAR"; printf("Affected rows (SELECT): %d\n", $mysqli->affected_rows);

*/
printf('%s',$db);

}

 
 

 ?>