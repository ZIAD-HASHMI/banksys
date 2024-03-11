<?php 
include "config/config.php";
  


session_start();


if(isset($_POST['Login']))
{



$IDNTITY  =  $_POST['u_one'];
$email  =  $_POST['u_email'];
  $_SESSION['u_one'] =  $IDNTITY;   $_SESSION['u_email'] =  $email;


/*
 function  _unicodeOrdinal($IDNTITY) { $c  =  mb_convert_encoding($IDNTITY,  'UCS-2LE',  'UTF-8'); $c1  =  ord(substr($c,  0,  1)); $c2  =  ord(substr($c,  1,  1)); return  $c2  *  256  +  $c1; 
print $c;print $c1;print$c2;
}



function login($IDNTITY,$password){
$sql = "select * from guost where IDNTITY ='".$IDNTITY."'";
$result  =  $conn->query($sql);
}


$mysql  =  array( 'IDNTITY'  =>  mysqli_real_escape_string($clean['IDNTITY']), ); $sql  =  "SELECT * FROM guost   WHERE IDNTITY = '{$mysql['uname']}'"; $result1  =  mysql_query($sql);

while($rows = $result->fetch_assoc()){
if($result1  >= 0 )
{
 $_SESSION['IDNTITY']  = $IDNTITY; $_SESSION['password']  =  $password;}else {
print "invalide login";
}
} */

?> <!DOCTYPE html>
<html> <head>
<link rel="stylesheet" href="css/header.css">
<h5>wlecome
IDNTITY:  <?=  $IDNTITY;  ?><br /> email:  <?=  $email;  ?></p> TO SYSTEM SBS
<table cellPadding="6" align="center" border="1">   <tr>     <td colspan="4">       <h3 align="center">update your profile</h3>     </td>   </tr>   <tr>     <td align="center"> number</td>     <td align="center"> email</td>     <td align="center">  picture</td>   </tr>   <?php
/*
$link = mysqli_connect("localhost", "pma", "pmapass", "library");  if (mysqli_connect_errno()) {     printf("Connect failed: %s\n", mysqli_connect_error());     exit(); }*/
//include "insert.php";
$db = new mysqli("localhost", "sbs", "sbspass", "guost"); 
// make sure the above credentials are correct for your environment 
if ($db->connect_error) 
{  
 die("Connect Error ({$db->connect_errno}) {$db->connect_error}"); 
} 


 $sql = "select * from  subscribers where IDNTITY ='".$IDNTITY."' and email ='".$email."'";
$result  =  $db->query($sql);



 while ($row = $result->fetch_assoc()){?><?php  


 if($row_num > 0  )

{




/*
$mysql->query("drop TABLE IF EXISTS   tmpsess");*/

/*
mysqli_query($link, "SET @a:=1"); /* reset all and select a new database  $mysqli->change_user("pma", "pmapass", "");*/
$sql2 = "Create TABLE IF NOT EXISTS   tmpsess like guost ";
$sql3 = " INSERT INTO tmpsess(`IDNTITY`,`$email`)values ('$IDNTITY','$email') ";
$usr = session_id;
/*
 $mysqli->begin_transaction(); try {
$mysql->exec(" INSERT INTO tmpsess(IDNTITY,email) VALUES(' $IDNTITY  ','$email')"); 


session_unset();
$_SESSION['IDNTITY']  = $result;
/*
$mysqli->query("SET @a:=1");  $mysqli->change_user("pma", "pmapass", "");
*/
   //* Insert some values */
/*
$mysqli->query("drop TABLE IF EXISTS   tmpsess");

$mysqli->query("Create TABLE    tmpsess like guost) ");
$usr = session_id;
 $mysqli->begin_transaction(); try {
$mysqli->prepare(" INSERT INTO tmpsess(IDNTITY,email) VALUES(' $IDNTITY  ','$email')"); 
*/






$mysqli->execute;    
$mysqli->commit;
/*
catch 
(mysqli_sql_exception $exception) 
{     $mysqli->rollback();     throw 
$exception;  /*
reaches this point without errors then 
commit the data in the database */     


 

 ?>     <tr>      <td><?php

}




?> 
<?php  

$ad = 2;
?></td>       <td align="center"><?php if( $row['email']=== $email && $row['prev'] != 0  ){


?></td>  <?php
//session_unset();
header("location:/bank/admn_profile.php");
}
else{


header("location: /bank/guost_profile.php");
}}
 ?>
  
</tr><tr><td>

<form id="dd" action="Newbook.php" method="POST" >

<div >

<a href="Delete.php  " align="center">
update number 
</a></div>


  






</td><td>
<br>
<div >
<a href="editinfo.php  " align="center">
update email 
</a></div>
</td><td><div > </div>????</div>
</tr>
</table> 
<?php 
 /*
$pdo = new PDO("mysql:host=localhost;dbname=library;charset=utf8mb4", 'pma', 'pmapass');
$ss = session_id();

$pdo->exec("insert into sesslog(SIDNTITY ) 
values('$IDNTITY')") ;
$mysqli->execute;    
$pdo->commit;*//*
header("location: /stage/guost_profile.php");*/
?>
 IDNTITY:  <?=  $IDNTITY;  ?><br /> email:  <?=  $email; } ?></p> </div> 