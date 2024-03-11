<?php 
session_start();


if (!empty($_SESSION['u_email']))
{


    
        session_start();
    session_destroy();


session_unset();
        header('location:../index.php');}
else {




 session_start();
    session_destroy();


session_unset();
        header('location:../index.php');}
           ?>