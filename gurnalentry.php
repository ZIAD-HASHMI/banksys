
<? 


session_start();


 include "/sess/sesslog.php";


if (empty($_SESSION['u_email']))
{
    
        header("location:index.php");}
else {

include "~Connector.php";

include "classes/Validator.php";


 ?>

<style type="text/css" media="all"> 

@import url(css/mbs.css); </style>
<style type="text/css">
@import url(css/sideguost.css);

</style>



<script type="text/javascript" src="menu.js">

</script>
<?








include "jvconnect.php";
//include "header.php";
include "a.php";
$tz   =  ini_get('date.timezone'); $dtz  =  new  DateTimeZone($tz); 
$dt  =  new  DateTime("now",$dtz);
$th = $dt->format("Y-m-d ");?>

<?
include 'guostmenu.php';
?>
<table id="jorn" frame="box" class="content" style="visibility:visible";><form id="f1" method="post"  action="gornalentry.php"> 
<tr><td>
<input type="text" id="chaknum" size="6"  placeholder="رقم الشيك">
 
</td> <td>تاريح الشيك <input type="date" id="ckdat"><p id="ck"></p></td></tr>


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
    <option value="<?  echo $row['ACC_NUM'];?>"><?echo $row['ACC_NUM'];?></option><?echo"/n";}?></select>
 
 



<select name="ACCSUB1"  class="DWN">
<option></option>


<?

$sqlx= "select * from Accounts where LEDnm >='1000'";

$resultx  =  $mysqli->query($sqlx);

while ($row = $resultx->fetch_assoc()) {
echo "<option >  ";echo$row['LEDnm'];}?></option></select>



 


?>
</td><td>
<input type="text" name="debit" size="4"  placeholder="debit"></td><td>
&nbsp;&nbsp;
<p id="AN1"></p>

</td>

</tr>
<tr><td>
<select  name="Accnum2"  class="DWN" onchange=" Acc2(this.value)"> <?
    
$sql = "select * from Accounts where LEDnm >='1000' ";

$result1  =  $mysqli->query($sql);

while ($row = $result1->fetch_assoc()) {
?>
    <option value="<?  echo $row['ACC_NUM'];?>"><?echo $row['ACC_NUM'];?></option><?echo"/n";}?></select>
<select name="ACCSUB2" class="DWN" >

<?
// $sql = "select * from Gornal ";
$sqlA = "select * from Accounts where LEDnm >='1000' ";

$resultA  =  $mysqli->query($sqlA);

while ($row = $resultA->fetch_assoc()) {

echo "<option >  ";echo$row['LEDnm'];}echo"</option>\n";?></select> </td><td><input type="text" name="credit" size="4" placeholder="credit"></td><td>

<p id="AN2"></p></td></tr><tr>


<br><br><td>تاريخ الحق<input type="date" name="de"  id="de"> </td></tr><tr>


<td><input type="text" name="wasf" size="20"  placeholder="البيان"></td></tr><tr><td>

 <br><input name="submit" type="submit" id="submit" value="ارسل الى التحقيق" ></td>
</tr>
</form>
</td></tr>
</table><?
 
echo" <div id=\"alert\" style=\"visibility:hidden;\"><p><h5>الرصيد لا يسمح</h5></p></div>";?><?
echo "<table frame=\"box\"  id=\"prev\" class=\"class=\"wrks\"><form method=\"post\" action=\"gornalentry.php\">"; 
echo "<input type=\"text\" id=\"clsvication\" size=\"4\"  value=\"0211\"  style=\"visibility:hidden;\" > ";


echo "<tr><td></td><td><select id=\"cr\" class=\"DWN\" align=\"center \">";
  

$sql ="select * from cruncy ";
$result0  =  $mysqli->query($sql);
echo "<option>.cruncy.</option> ";
while( $row = $result0->fetch_assoc()){


 echo "<option>";echo $row['crm'];
echo"</option> ";}echo"</select>";
 



echo "</td><tr><td>" ;
echo "<select name=\"Accnum\" id =\"Ac\"  class=\"DWN\"> "; 
    echo "<option>رقم الحساب</option>";
$sql = "select * from Accounts where LEDnm <'10' ";

$result1  =  $mysqli->query($sql);

while ($row = $result1->fetch_assoc()) {

    echo "<option>";echo$row['ACC_NUM'];echo"</option>";}echo"</select>";
 
 



echo "<select name=\"ACCSUB1\"  class=\"DWN\">";
"<option></option>\n";



$sql2 = "select * from LEDGAR where LEDnm < '10'";

$result2  =  $mysqli->query($sql2);

while ($row = $result2->fetch_assoc()) {


echo "<option>";echo$row['LEDnm'];echo"</option>\n";}echo"</select>";
 



echo "</td><td>";echo"<input type=\"text\" name=\"debit\" size=\"4\"  placeholder=\"debit\">";
echo "</td><td>";
echo"<input type=\"text\" name=\"wasf\" id=\"wasf\" size=\"20\"  placeholder=\"wasf\">";

echo"<br> </td></tr>";echo"<tr><td><select name=\"Accnum2\"  class=\"DWN\" id=\"Accnum2\" >";  
echo "<option>رقم الحساب</option>";
 $sql="select * from Accounts where LEDnm < '10'  ";


// $sql = "select * from Accounts ";
$result1  =  $mysqli->query($sql);

while ($row = $result1->fetch_assoc()) {
   
 
echo "<option>  ";echo$row['ACC_NUM'];}echo"</option>";echo"</select>";echo"<select name=\"ACCSUB2\"class=\"DWN\" >";


// $sql = "select * from Gornal ";
$sql4 = "select * from Accounts where LEDnm < '10'";

$result4  =  $mysqli->query($sql4);

while ($row = $result4->fetch_assoc()) {

echo "<option >  ";echo$row['LEDnm'];}echo"</option>\n";echo"</select> </td>";echo"<td>";echo"<input type=\"text\" name=\"credit\" size=\"4\" placeholder=\"credit\">";echo"<br><br></td><td><input type=\"text\" name=\"de\" value=\" $tm  \" id=\"de\"> ";
echo "<br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"ارسل الى التحقيق\">";echo"</form></td></tr></table>";



?>






?>

<table id="tab3" class="wrks" frame="box"  style="visibility:hidden;"  align="center"><tr><td><?echo"<form method=\"post\" action=\"confirm.php\"  align=\"center\">";echo" <br><input type=\"text\" name=\"chang\" size=\"8\"  placeholder=\"REFRENCE\">";
//$IDNTY =$_SESSION['IDNTITY'];
echo" <br><input type=\" text\" name=\"IDNTY\" size=\"8\"  value=\"\" >";

echo"<br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"UPDATE\"> ";echo"</form>";echo "</td></tr></table>";
?></div><div id="gjpq" class="content"><?
echo "<table id=\"hesab\" class=\"query\">";echo"<tr><td><form method=\"post\" action=\"gurnalentry.php\" >";echo"<input type=\"text\" name=\"ACC_NUM\" size=\"8\"  placeholder=\"حساب\">";
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

<table id="dele" class="wrks" align="crnter" style="visibility:hidden;" ><tr><td><?echo "<form method=\"post\" action=\"gurnalentry.php\"  align=\"center\">";echo"<input type=\"text\" name=\"REREN\"  placeholder=\"REFRENCE\"><br><br><br><br>";echo" <input name=\"submit\"type=\"submit\" id=\"submit\" value=\"DELETE\">";echo"</form>";echo"</td></tr></table>";



if(isset($_POST['submit']))

 {



$REREN = $_POST['REREN'];

$mysqli->query("DELETE FROM `dalytransiction`  WHERE `GiDG` ='".$REREN."' && `IDNTITY` ='".$IDNTITY."'"); /*
printf("Affected rows (DELETED): %d\n", $mysqli->affected_rows);*/

$del = $REREN;
$mysqli->query("DELETE FROM  dalytransiction WHERE `GiDG` ='".$del."'");
$mysqli->query("DELETE FROM  Gornaltmp WHERE `GiDG` ='".$del."'");


 

?>
<table id="mop"  style="visibility:hidden;" class="wrks">
<tr><td><?echo"<form method=\"post\" action=\"mopper.php\"  align=\"center\">";echo" <br><input type=\"text\" name=\"mop\" size=\"2\"  placeholder=\"REFRENCE\">";
//$IDNTY =$_SESSION['IDNTITY'];
echo" <br><input type=\" text\" name=\"IDNTITY\" size=\"2\" >";

echo"<br><input name=\"submit\" type=\"submit\" id=\"submit\" value=\"UPDATE\"> ";echo"</form>";echo "</td></tr></table>";

}

?>

<table style="visibility:hidden"; dir="ltr" class="wrks" id="astard"><tr><?
echo "<th colspan=\"0\">DATE</th>";
echo "<th colspan=\"0\">REF</th>";
echo "<th colspan=\"\"> Explanation</th>";
echo "<th >Debit</th>";echo "<th>Cridet</th>";echo "<th colspan=\"0\"class=\"conn\">BY</th>";
echo "</tr><tr>";
$sqlmvmnt = "select * from  `dalytransiction` ,Gornaltmp  where `dalytransiction`.IDNTITY  = '".$IDNTITY."' && Gornaltmp.IDNTITY ='".$IDNTITY."'";
$resutemv  =  $mysqli->query($sqlmvmnt);
while ($row = $resutemv->fetch_assoc()) {

if(mysqli_num_rows($resutemv) != 0){
echo "</tr><tr>";



echo "<td>";echo $row['TRANSACTION_date'];"</td>";
echo "<td>";echo $row['GiDG'];"</td>";

echo "<td>";echo $row['Actnm'];echo"</td>";
echo "<td>";echo $row['LEDnm'];echo"</td>";
echo "<td>";echo $row['Debit'];

echo "</td><tr><td></td><td><td><td>";echo $row['Actnmc'];echo"</td>";
echo "<td>";echo $row['LEDnmc'];echo"</td>";

echo "<td></td><td>";echo $row['AC_Cridet'];"</td>";
echo "<td>";

echo $row['IDNTITY'];"</td>";



echo "</tr>";}else{echo "<h1>no transiction found</h1>"; }
}
echo"</td></tr></table>";
 }?>












 