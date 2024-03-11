<?php
$ch = curl_init('http://localhost/bank/profile.php');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$a = curl_exec($ch);
$b = curl_multi_getcontent($ch);
var_dump($b);
//curl_close($ch);

//echo ($ch);
?>