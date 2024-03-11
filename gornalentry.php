
	<?php 



mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); $mysqli = new mysqli("localhost", "pma", "pmapass", "southbank");
session_start();
include "config/cnnect.php";
include "/sess/sesslog.php";
include "header.php";



if(isset($_POST['submit']))
{


  // echo $ip;

$gid = $_POST['REREN'];
 
$ar = $_POST['lo'];
/*
$array  =  preg_split(  '//',$ar);
$host = $array[0];
$Activities = $array[1];
*/
 $was = $_POST['wasf'];
$Accnum = $_POST['Accnum'];
$ACCSUB1 = $_POST['ACCSUB1'];
$Accnum2 = $_POST['Accnum2'];
$ACCSUB2 = $_POST['ACCSUB2'];
 $Accnam = $_POST['Accnam'];
$_SESSION['Accnum'] =$Accnum;

$mu = $_POST['debit'];
$_SESSION['mu'] =$mu;
$clsvication =$_POST['clsvication'];





$de = $_POST['de'];
$Accsst = $_POST['Accsst'];

$type = $_POST['ACTY'];
$cr = $_POST['cr'];

$crdt = $_POST['credit'];
//$length = crdt ;
//$crdtz = number_format($crdt,  2);

/*$cr = mysqli_real_escape_string($conn, $_POST["cr"]);*/
$mun = $_POST['amount'];



/*
$q = $cr;       
 $val = '';     
switch ($q) {     
case 0:      
 $val = ($mu*100);     
  break;    
 case 1:     
  $val = ($mu*300); 

   case 2:     
  $val = ($mu*300); 
   break;    

case 3:     
  $val = ($mu*300); 
   break;    

case 4:     
  $val = ($mu*300); 
   break;    
 default:       
$val = ($mu*1);       break;     

/*

INSERT INTO `balancers` (`Account_name`, `LEDnm`, `balanced`, `ACC_NUMB`) select `Account_name`, `LEDnm`,`Balance`,`ACC_NUM` from Accounts  ;

$sqlb = "select balanced as c from balancers where ACC_NUMB='".$Accnum."'";
 $resultb = $mysqli->query($sqlb); 
while ($row = $resultb->fetch_assoc()) {


if($row['c']  < $crdt ) {   

header('location:index.php');




}else{
*/

//$ms = number_format($mu,  2);
$udate = $_POST['udate'];
$tz   =  ini_get('date.timezone'); $dtz  =  new  DateTimeZone($tz); 
$dt  =  new  DateTime("now",  $dtz);
$d = $dt->format("Y-m-d ");
$BY  =    $IDNTITY;
if ($BY != null){

 if($mu === $crdt && $Accnum !== $Accnum2 ){include "b.php";

/*
$ip = isset($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] : isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
*/

$mysqli->query("INSERT INTO dalytransiction(`Actnm`, `LEDnm`, `Actnmc`,`LEDnmc`,`TRANSACTION_date`,`cruncy`,`AC_Cridet`,`Debit`,`IDNTITY`,wasf)VALUES('$Accnum','$ACCSUB1','$Accnum2','$ACCSUB2','$tm','$cr','$crdt','$crdt','$BY','$was')");
//echo ('$BY');

$mysqli->query("INSERT INTO Gornaltmp(`Actnm`,`LEDnm`, `Actnmc`,`LEDnmc`,`TRANSACTION_date`, `cruncy`, `AC_Cridet`, `Debit`,`IDNTITY` ,wasf)VALUES('$Accnum','$ACCSUB1','$Accnum2','$ACCSUB2','$tm','$cr', '$crdt','$crdt','$BY','$was') ");

$mysqli->query("INSERT INTO PRV_Gor_TMP(Actnm,LEDnm,Actnmc,LEDnmc,TRANSACTION_date,cruncy,AC_Cridet,Debit,wasf,IDNTITY)VALUES('$Accnum','$ACCSUB1','$Accnum2','$ACCSUB2','$tm','$cr', '$mu','$crdt','$was','$BY') ");

printf("Affected rows (INSERTED): %d\n", $mysqli->affected_rows);/*
$mysqli->query("INSERT INTO Tracey(host, header, IDNTITY, Activities, Times) VALUES ('$host','$Activities','$by',' $array ','$d')");*/
/*printf("Affected rows (UPDATED): %d\n", $mysqli->affected_rows);

$delet = $_POST['REREN'];
$mysqli->query("DELETE FROM dalytransiction WHERE GiDG ='".$delet."'"); 

$mysqli->query("DELETE FROM Gornaltmp WHERE GiDG ='".$delet."'"); 

//echo $val;
/*$textfiles  =  preg_grep('/.php/',  $lo);*/

$mysqli->commit;
}}
//$mysqli->clear();


//print_r($URLs);
}




header('location:gurnalentry.php');
?>