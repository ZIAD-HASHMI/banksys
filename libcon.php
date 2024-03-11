<?php  try  
{ 
$smart  =  new  PDO("mysql:host=localhost;dbname=library",  "sbs",  "sbspass");
 // connection successful 
} 
catch  
(Exception  $error)  
{ 
die("Connection failed: "  .  $error->getMessage()); 
}