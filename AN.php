<?php  $q = intval($_GET['q']);

$con = mysqli_connect('localhost','sbs','sbspass','southbank');
if (!$con) {
  die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"southbank");
$ac = intval($_GET['ac']);
/*
$con = mysqli_connect('localhost','sbs','sbspass','southbank');
if (!$con) {
  die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"southbank");*/
$ANM ="SELECT *  FROM Accounts WHERE ACC_NUM ='".$ac."'";
$result = mysqli_query($con,$ANM);

while($row = mysqli_fetch_array($result)) {
  echo $row['Account_name'] ; }
?>