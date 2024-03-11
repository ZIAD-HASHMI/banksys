



<?php 



include "../sess/vsessionv.php";


include "../config/config.php";



if(isset($_POST['Login']))
{



$IDNTITY  =  $_POST['u_one'];
$mal  =  $_POST['u_email'];
  
$_SESSION['u_one'] =  $IDNTITY;   $_SESSION['u_email'] =  $mal;

for($char =0 ;$char<= strlen($mal);$char++)
$cmp1 = strrchr(strlen($mal),"com");
$cmper1  =  levenshtein(($mal),"com");
/*
 $sql = "SELECT email,IDNTITY FROM subscribers WHERE email ='".$mal."' and IDNTITY='".$IDNTITY."'"; */

$sql="SELECT * FROM USER_PRIVILEGES right join subscribers   where ( (USER_PRIVILEGES.email ='".$email."' && USER_PRIVILEGES.IDNTITY ='".$IDNTITY."')&&(subscribers.email ='".$email."'&&subscribers.IDNTITY ='".$IDNTITY."') )";


$result = $mysqli->query($sql);
if(mysqli_num_rows($result) > 1){

while($row = $result->fetch_assoc()){
echo$row['render'];

for($char =0 ;$char<= strlen($row['email']);$char++){
$cmper2  =  similar_text(($row['email']),"com");
$cmper3  =  levenshtein(($row['IDNTITY']),($IDNTITY));

//echo $cmper1;echo $cmper2;
$cmp2 = strrchr(strlen($row['email']),"com");

if($cmper1==$cmper2){

header('location:../profile.php?$email');
session_start();

  }}
}}

else{session_destroy();
header('location:index.php');


  



















}
 











  



 }
 
  

 