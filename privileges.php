<?php 
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$mysqli = new mysqli("localhost", "sbs", "sbspass", "guosts");

session_start();
//include "config/Connector.php";
include "sess/sesslog.php";
 if (empty($_SESSION['u_email']))
{
    
        header("location:index.php");}
else {







 ?>
 

<!DOCTYPE html>
<html  lang="ar" dir="rtl"> <head>


<link rel="stylesheet" href="css/mbs.css">
 <title>ADD PROGRAMS</title> </head> <body>

<?
echo "<div align=\"center\">";

echo"<form method=\"post\"  border=\"1\" id=\"budadd\"  action=\"privileges.php\" >";echo"<input type=\"text\" name=\"IDNTITY\" size=\"8\"  placeholder=\"IDNTITY\">";

echo"<input type=\"text\" name=\"HREF\"size=\"20\" placeholder=\"HERF\">";

echo"<input type=\"text\" name=\"link\"size=\"20\" placeholder=\"link\">";
echo"<input type=\"text\" name=\"email\"size=\"20\" placeholder=\"email\">";
?>
<br><br>
<?
echo"<input type=\"text\" name=\prval\" size=\"2\"  placeholder=\"value\"><br><br>";

echo"<input type=\"text\" name=\pro\" size=\"2\"  placeholder=\"pro\"><br><br>";



echo"<input name=\"submit\" type=\"submit\" id=\"submit\" value=\"submit\"></form>";

if(isset($_POST['submit']))

 {
/*
INSERT INTO USER_PRIVILEGES(PAGE_LINK, PAGE_HREF, IDNTITY, PRIVIL_VAL) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')*/
$prval = $_POST['prval'];
$email = $_POST['email'];
$pnumber = $_POST['pro'];
$HRF= $_POST['HREF'];
$IDNTITY = $_POST['IDNTITY'];
$link = $_POST['link'];
$mysqli->query("INSERT INTO `USER_PRIVILEGES` (`PAGE_HREF`, `PRIVIL_VAL`, `email`, `IDNTITY`,`PAGE_LINK`)values('$HRF','$prval','$email','$IDNTITY','$link')");

$sql ="select MAX(pro) as LID from USER_PRIVILEGES ";

$result =  $mysqli->query($sql);

while ($row = $result->fetch_assoc()) {
$NAT = $row['LID'];

$mysqli->query("insert into     authoriz ( IDNTITY ,pro , PRIVIL_VAL)values( '$IDNTITY','$NAT','$prval')  ");
printf("Affected rows (INSERTED): %d\n", $mysqli->affected_rows);
}}
echo "<div align=\"center\" style=\"visibility:visible;\" id=\"prev\">";
print '<table border="1" >';



$sql = "select * from USER_PRIVILEGES";


$result = $mysqli->query($sql);
while ($row = $result->fetch_assoc())
 {
print "<tr>";

    foreach ($row as $item)         print "<td>".htmlentities($item)."</td>";     print "</tr>"; } print "</table>";

echo "</div>";

echo "</div>";}