<?php 



class mysql extends  mysqli {     public function 
__construct($host, $user, $pass, $db) 
{         parent::init();         if (!parent::options(MYSQLI_INIT_COMMAND, 
'SET AUTOCOMMIT = 0')) 
{             die('Setting MYSQLI_INIT_COMMAND 
failed');         }         if (!parent::options(MYSQLI_OPT_CONNECT_TIMEOUT, 5)) {             die('Setting 
MYSQLI_OPT_CONNECT_TIMEOUT 
failed');  }

if (!parent::real_connect($host, 
$user, $pass, $db)) {die('Connect 
Error( mysqli_connect_errno() ) 
mysqli_connect_error()');         
  

 $db = new mysqli("localhost", 
"pma", "pmapass", "southbank");
 echo ( $db->host_info ) ; 
$db->close(); 
}}}

$link = mysqli_connect(); print_r(mysqli_get_client_stats());


 ?>