<?php

session_start();
header("Cache-Control: no-cache ");   header("Pragma:no-cache");

     if (!empty($_SESSION['u_email']))
{
    
        header("location:../profile.php");}
else {

header('location:../index.php');


}
?>