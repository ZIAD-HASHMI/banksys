 <?php 

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); $mysqli = new mysqli("localhost", "pma", "pmapass", "guost");


if(isset($_POST['submit']))

 { 

$one = $_POST['u_one'];
$email = $_POST['email'];
$distr = $_POST['distr'];

 $mysqli->query("INSERT INTO `subscribers`(IDNTITY,email distract ) VALUES ('$one', '$email','$distr')");
 


printf("Affected rows (INSERT): %d\n", $mysqli->affected_rows);





}


//header('location:/bank/.profile.php');