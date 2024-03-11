<?php
$servername = "localhost";
// Enter your MySQL username below(default=root)
$username = "pma";
// Enter your MySQL password below
$password = "pmapass";
$dbname = "library";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn != 0) {
   echo "  <audio  controls autoplay bgsound src=\"test.mp3\" type=\"ogg\"> </audio>";}else{ header("location:connection_error.php?error=$conn->connect_error");
    die($conn->connect_error);
}
?>