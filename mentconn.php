 <?php 


include "config/cnnect.php";
include "config/config.php";
include "config/connect.php";


include "header.php";


try  { $mysqli  =  new  PDO("mysql:host=localhost;dbname=southbank",  "sbs",  "sbspass");  } catch  (Exception  $error)  { die("Connection failed: "  .  $error->getMessage()); }



/*include "validate_guost.php";

if(!isset($_SESSION)) {
        session_start();
    }
*/
//filters loginmentenance

/*
$clean  =  array(); $length  =  mb_strlen($_POST['distract']); if  (ctype_alnum($_POST['distract'])  &&  ($length  >  0)  &&  ($length  <=  10))  { $clean['distract']  =  $_POST['distract']; } else  { echo "you interd wrong data";
header("location:Regester.php");

 }*/





//filter 2
/*
$clean  =  array();
 if(preg_match('/[^A-Za-z ]/',  
$_POST['distract']))  
{ $error->getMessage(); } else  
{ $clean['distract']  =  
$_POST['distract']; }
//filter 3
$clean =  array(); if  (preg_match('/[^0-91-9 ]/',  $_POST['phone']))  { 
 } else  { $clean['phone']  =  $_POST['phone']; }
*/
//include "validate_guost.php";


/*
$conn = new mysqli("localhost", "sbs", "sbspass", "southbank"); 
// make sure the above credentials are correct for your environment 
if ($db->connect_error) 
{  
 die("Connect Error ({$db->connect_errno}) {$db->connect_error}"); 
} */

if(isset($_POST['submit']))

 {
$prognum = $_POST['prognum'];

$LED = $_POST['LED'];
$proid = $_POST['proid'];

$gruop = $_POST['deteals'];

$balnce = 100000;
/*
$account = rand(1000,3000); $ss = $account;




if($LED <= 100)
{
$acc = 'L';
}else{

$acc = 'p';

}*/


$cr = $_POST['cr'];
 
$tz   =  ini_get('date.timezone'); $dtz  =  new  DateTimeZone($tz); $dt  =  new  DateTime("now",  $dtz);
$d = $dt->format("Y-m-d ");


try  { $mysqli->setAttribute(PDO::ATTR_ERRMODE,  PDO::ERRMODE_EXCEPTION); $mysqli->beginTransaction();

$mysqli->exec("INSERT INTO `Accounts`(`ACC_NUM`, `LEDnm`, `OPINING_DATE`, `Balance`, `Acc`, `Account_name`)  values ('$prognum',' $LED','$d','$balnce','$acc','$gruop' )");





header('loction:mentenance.php');


//$db->SERIALIZABLE();

//$db->UNCOMMITTED();

}

catch  (Exception  $error)  {  echo  "Transaction not completed: "  .  $error->getMessage(); 
}
}
/*
if($Accst === C){
$db->exec("insert into Gornal (Account_status) values ('C')"  );}else{

$db->exec("insert into Gornal (Account_status) values ('D' )"  );


}*/


//header("loction:gurnalentry.php");
/*$sql = "alter table guost Add guost_id int";*/
//$db->query($sql);

/*
INSERT INTO Gornal(Account_name, Account_number, Account_type, Account_status, TRANSACTION_date, user_id) VALUES ('$ AccName ','$ status ','$ Accnumber  ','$type')

*/

   
header('loction:mentenance.php');


/*
else
{
echo "the amount not equel";
header("loction:gurnalentry.php");
}


*/

header('loction:mentenance.php');