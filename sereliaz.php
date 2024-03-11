<?php 
 
//include "../header.php";
  // include "header.php";

include "/config/connect.php";

// include "../navbar.php";

 //include "../sess/sesslog.php";

  $serialized_data = serialize(array('266000', 'Language','266000' )); 


$data =array(2220223, 'Language','266000' ); 

foreach($data as $value){
$converted = chunk_split(base64_encode($value));var_dump  ($converted);print '<br>';

 $conve=
chunk_split(base64_decode( $converted));
$xx =htmlentities ($conve);
var_dump  ($xx);print '<br>';


}
  
 // Unserialize the data 
 $var1 = unserialize($serialized_data); 
  
 // Show the unserialized data; 
 //var_dump ($var1); 
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
 $mysqli = new mysqli("localhost","pma","pmapass", "southbank");


$Acc = $_POST['Acc'];/*

$query("UPDATE `TrialAcc` SET Balance =acc_Dibetb- acc_Credit  WHERE 1") ;

$query2("UPDATE TrialAcc SET Balance= acc_Dibet WHERE acc_Credit = NULL") ;
print '<table border=\"1\">';
$query("UPDATE `TrialAcc` SET Balance = acc_Credit WHERE acc_Dibet = NULL");"*/
$sql2 ="select Balance from Accounts  " ;

$result2  =  $mysqli->query($sql2);
print "<table border=\"1\">";
print "<tr>";
 while ($row = $result2->fetch_assoc()) {
 
//$gw = $row['Balance'];

    foreach ($row as $item) 
$se =serialize(array($gw));
$data =$se; $converted = chunk_split(base64_encode($data));
//$ty = string chr($se);
        print "<td>".$$converted."</td>";   

$con = chunk_split(base64_decode($converted));
  print "<td>".$con."</td></tr>";
$var1 = unserialize($se);
?><tr><td><?
//var_dump($var1);?>
</td></tr><?
 } print "</table>";

echo"</div>";
/*
$data = "aGVsbG8gemlhZCBoaSA= "; $converted = chunk_split(base64_decode($data));
echo $converted;*/

  
?>