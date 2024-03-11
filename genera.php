
<?


session_start();



include "sess/sesslog.php";

if (empty($_SESSION['u_email']))
{
    
        header("location:index.php");}
else {
include "header.php";

include "jvconnect.php";

include "a.php";


 

?>



<style type="text/css"> 

@import url(css/mbs.css); </style>

<style type="text/css"> 

@import url(css/navbar.css); </style>

<div id="content" class="content" dir="rtl">
<?include 'guostmenu.php';
?>
<script type="text/javascript" src="menu.js">


</script>

<table frame="box"  id="jorn"      align="center" style="visibility:hidden;"><form id="f1" method="post" action="gornalentry.php"> <?

echo "<input type=\"text\" id=\"clsvication\" size=\"4\"  value=\"213\"  style=\"visibility:hidden;\" > ";


?>


<tr><td></td><td><select id="cr" onchange="crn(this.value)" class="DWN" align="center">
  <?
include "cr.php";
$sql ="select * from cruncy ";
$result0  =  $mysqli->query($sql);
echo "<option>عمله</option> ";
while( $row = $result0->fetch_assoc()){


 echo "<option>";echo $row['crm'];
echo"</option> ";}echo"</select>";
 ?></td><td><p id="crn"></p></td><?
echo "<tr><td>" ;?>
<select  name="Accnum"  class="DWN" onchange=" showAcc(this.value)" ><?
    
$sql = "select * from Accounts where LEDnm >='1000' ";

$result1  =  $mysqli->query($sql);

while ($row = $result1->fetch_assoc()) {
?>
    <option value="<?  echo $row['ACC_NUM'];?>"><?echo $row['ACC_NUM'];?></option><?echo"/n";}?></select><?
 
 



echo "<select name=\"ACCSUB1\"  class=\"DWN\">";
"<option></option>\n";




$sqlx= "select * from Accounts where LEDnm >='1000'";

$resultx  =  $mysqli->query($sqlx);

while ($row = $resultx->fetch_assoc()) {
echo "<option >  ";echo$row['LEDnm'];}echo"</option>\n";echo"</select>";



 


?>
</td><td>
<input type="text" name="debit" size="4"  placeholder="debit"></td><td>
&nbsp;&nbsp;
<p id="AN1"><?echo$row['LEDnm'];?></p>

</td>

</tr><?
echo"<tr><td>";?>
<select  name="Accnum2"  class="DWN" onchange=" Acc2(this.value)"> <?
    
$sql = "select * from Accounts where LEDnm >='1000' ";

$result1  =  $mysqli->query($sql);

while ($row = $result1->fetch_assoc()) {
?>
    <option value="<?  echo $row['ACC_NUM'];?>"><?echo $row['ACC_NUM'];?></option><?echo"/n";}?></select><select name="ACCSUB2" class="DWN"  onchang="Acc2(this.value)"><?


// $sql = "select * from Gornal ";
$sqlA = "select * from Accounts where LEDnm >='1000' ";

$resultA  =  $mysqli->query($sqlA);

while ($row = $resultA->fetch_assoc()) {

echo "<option >  ";echo$row['LEDnm'];}echo"</option>\n";echo"</select> </td>";echo"<td>";echo"<input type=\"text\" name=\"credit\" size=\"4\" placeholder=\"credit\">";?></td><td>

<p id="AN2"> <?echo$row['Account_name'];?></p></td><td>
<?

echo"<br><br></td><td><input type=\"text\" name=\"de\" value=\" $tm  \" id=\"de\"> </td></tr><tr>";


echo "<td>";echo"<input type=\"text\" name=\"wasf\" size=\"20\"  placeholder=\"البيان\"></td></tr><tr><td>";



echo" <br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"ارسل الى التحقيق\" ></td></tr></form></td></tr></table>";?>

<table id="mop"  style="visibility:hidden;">
<tr><td><?echo"<form method=\"post\" action=\"mopper.php\"  align=\"center\">";echo" <br><input type=\"text\" name=\"mop\" size=\"2\"  placeholder=\"REFRENCE\">";
//$IDNTY =$_SESSION['IDNTITY'];
echo" <br><input type=\" text\" name=\"IDNTITY\" size=\"2\" >";

echo"<br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"UPDATE\"> ";echo"</form>";echo "</td></tr></table>";
?>

<table id="tab3"  frame="box"  style="visibility:hidden;"  align="center"><tr><td><?echo"<form method=\"post\" action=\"confirm.php\"  align=\"center\">";echo" <br><input type=\"text\" name=\"chang\" size=\"8\"  placeholder=\"REFRENCE\">";
//$IDNTY =$_SESSION['IDNTITY'];
echo" <br><input type=\" text\" name=\"IDNTY\" size=\"8\"  value=\"\" >";

echo"<br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"UPDATE\"> ";echo"</form>";echo "</td></tr></table>";
?>

<table id="hesab"  style="visibility:hidden;" ><tr><td><form method="post" action="gurnalentry.php" ><?echo"<input type=\"text\" name=\"ACC_NUM\" size=\"8\"  placeholder=\"حساب\">";
echo"<input type=\"text\" name=\"LEDnm\" size=\"8\"  placeholder=\"نوع\">";
echo"<br><br>";echo"<input name=\"submit\"type=\"submit\" id=\"submit\" value=\"استعلام\"></form></td></tr></table>";


if(isset($_POST['submit']))
{
$ACC_NUM  =  $_POST['ACC_NUM']; 
$LEDnm  =  $_POST['LEDnm'];
echo "<table align=\"center\">";
/*echo  "<tr>";

echo "<th colspan=\"\">ACCOUNT</th>";
echo "<th >Balance</th>";
echo "</tr>";*/

 
$sql37 = "select Account_name, balanced FROM balancers where ACC_NUMB ='".$ACC_NUM."' and  LEDnm='".$LEDnm."'";

$result37 = $mysqli->query($sql37);
while ($row = $result37->fetch_assoc())
 {
echo "<tr>";

    foreach ($row as $item)         print "<td>".htmlentities($item)."</td>";     print "</tr>"; } 
}
echo"</td></tr>";
print "</table>";

include "gurncontrols.php ";


?>

<table id="dele"  align="crnter" style="visibility:hidden;">
  <tr><td><?echo "<form method=\"post\" action=\"gurnalentry.php\"  align=\"center\">";echo"<input type=\"text\" name=\"REREN\"  placeholder=\"REFRENCE\"><br><br><br><br>";echo" <input name=\"submit\"type=\"submit\" id=\"submit\" value=\"DELETE\">";echo"</form>";echo"</td></tr></table>";?>


<?
if(isset($_POST['submit']))

 {



$REREN = $_POST['REREN'];

$mysqli->query("DELETE FROM `dalytransiction`  WHERE `GiDG` ='".$REREN."' && `IDNTITY` ='".$IDNTITY."'"); /*
printf("Affected rows (DELETED): %d\n", $mysqli->affected_rows);*/

$del = $REREN;
$mysqli->query("DELETE FROM  dalytransiction WHERE `GiDG` ='".$del."'");
$mysqli->query("DELETE FROM  Gornaltmp WHERE `GiDG` ='".$del."'");


 }

?>

<table style="visibility:hidden"; dir="rtl" class="imdivd" datapagesize="13px" rules="all"  id="astard">
<caption>الحركات الغير محققة</caption>
  <thead align="center" bgcolor="lighted" valign="middle">
<tr><?

echo "<th rowspan=\"1\">REF</th>";
echo "<th rowspan=\"1\">BY</th>";
echo "<th colspan=\"2\">Dr</th>";echo "<th colspan=\"2\">Cr</th>";
echo "<th>RY</th>";
echo "<th colspan=\"2\">DATE</th>";
echo "</tr><tr>";
$sqlmvmnt = "select * from  `dalytransiction` ,Gornaltmp  where `dalytransiction`.IDNTITY  = '".$IDNTITY."' && Gornaltmp.IDNTITY ='".$IDNTITY."'";
$resutemv  =  $mysqli->query($sqlmvmnt);
while ($row = $resutemv->fetch_assoc()) {

if(mysqli_num_rows($resutemv) != 0){
echo "</tr><tr>";




echo "<td>";echo $row['GiDG'];"</td>";
echo "<td>";

echo $row['IDNTITY'];"</td>";
echo "<td>";echo $row['Actnm'];echo"</td>";
echo "<td>";echo $row['LEDnm'];echo"</td>";

echo "</td><td>";echo $row['Actnmc'];echo"</td>";
echo "<td>";echo $row['LEDnmc'];echo"</td>";

echo "<td>";echo $row['AC_Cridet'];"</td>";



echo "<td>";echo $row['TRANSACTION_date'];"</td>";
echo "</tr>";}else{echo "<h1>no transiction found</h1>"; }
}
echo"</td></tr></table>";}
 ?>


</div>







 