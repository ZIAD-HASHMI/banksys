<?php
try  
{ 
$mysqli  =  new  PDO("mysql:host=localhost;dbname=southbank",  "sbs",  "sbspass");
 // connection successful 
} 
catch  
(Exception  $error)  
{ 
die("Connection failed: "  .  $error->getMessage()); 
}


 ?>