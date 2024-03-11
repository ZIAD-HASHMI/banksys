<?

include  "../header.php";
//include "config/config";
include "/config/connect";
//include "../sess/sesslog.php";

?>
<!DOCTYPE html>
<html> <head>
<style type="text/css"> @import url(../css/style.css); </style>
<script type="text/javascript">

</script>



 <title>Transiction</title> </head> <body  spellcheck="true">

<br><br><br>

   <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">

فتح حركات يوم جديد 


<input type="text" name="newday" placeholder="user">
<input type="text" name="thisdate">

</td><td><input name="submit" type="submit" id="submit" value="ابدء العمل اليومي "> </form>
  


  </body></html>


  


<?php 

 

if(isset($_POST['submit']))
{
$newday =$_POST['newday'];
$begning = $_POST['thisdate'];

$tz   =  ini_get('date.timezone'); $dtz  =  new  DateTimeZone($tz); 
$dt  =  new  DateTime("now",  $dtz);
 $d = $dt->format("Y-m-d ");


$link = mysqli_connect('localhost'," 
$newday", "$begning"); if (!$link) {     echo'Could not connect:'; } if (!
mysql_select_db('southbank')) {     die('Could not select database: ' . mysqli_error()); }}/*
if ($begning != $d)
{
printf ("the date isn't  correct \n"); } else{




$mysqli = new mysqli("localhost", "sbs", "sbspass", database:"$newday"); /* check connection if ($mysqli->connect_errno) {     printf("Connect failed: %s\n", $mysqli->connect_error);     exit(); } /* check if server is alive  if ($mysqli->ping()) {     printf ("Our connection is ok!\n"); } else {     printf ("Error: %s\n", $mysqli->error); }  close connection $mysqli->close();}}*/
 ?>