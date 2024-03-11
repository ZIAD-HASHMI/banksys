<?php 


$mysqli = new mysqli("localhost","pma","pmapass","southbank");
$mysqli->query("CREATE TABLE mbs (
  ACC_NUM int(11) NULL default 0,
  OPINING_DATE date NULL,
  TRAN_REF int(6) NULL default 0,
  Balance decimal(10,0) NULL default 0,
  Acc varchar(1) COLLATE utf8_bin DEFAULT NULL,
  Account_name char(50) COLLATE utf8_bin NULL default 0,
  AMOUNT decimal(9,2) NULL default 0,
MONEY varchar(3) default 000,

  Account_number varchar(8) COLLATE utf8_bin DEFAULT NULL,
  Account_type char(1) COLLATE utf8_bin DEFAULT NULL,
  Account_status varchar(6) COLLATE utf8_bin DEFAULT NULL,
  
  user_id varchar(5) COLLATE utf8_bin DEFAULT NULL,
  Mount varchar(9) COLLATE utf8_bin DEFAULT NULL,
  urr varchar(3) COLLATE utf8_bin DEFAULT NULL,
  Cridet double DEFAULT NULL,
  Debit double DEFAULT NULL,
  

BGoV int(2) NULL default 0,
  BTYP int(2) NULL default 0,
  Boffice int(2) NULL default 0,
  BAccont int(2) NULL default 0,
  discrip varchar(50) DEFAULT NULL,
  ice varchar(50) DEFAULT NULL,
  BBD int(1) DEFAULT NULL,
  BBF int(1) DEFAULT NULL,
  balance2 varchar(12) DEFAULT NULL,
  tareekh datetime DEFAULT NULL,
  chakun int(3) DEFAULT NULL,


  pro varchar(20) DEFAULT NULL,
  PRIVIL_VAL4 char(1) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  IDNTITY int(9) DEFAULT NULL,
  PAGE_LINK varchar(50) DEFAULT NULL,


PAGE_HREF varchar(50) DEFAULT NULL,
  pro2 varchar(20) DEFAULT NULL,
  PRIVIL_VAL3 char(1) DEFAULT NULL,
  email1 varchar(50) DEFAULT NULL,
  IDNTITY1 int(9) DEFAULT NULL,
  PAGE_LINK2 varchar(50) DEFAULT NULL,


Actnam varchar(30) NULL default 0,
  LEDnm varchar(4) NULL default 0,
  


  
  
  
  
  
  ACC_NUMB varchar(11) DEFAULT NULL,


  ACC_NUMC varchar(9) DEFAULT NULL,
  LEDnmc varchar(4) DEFAULT NULL,
  Tran_DATE datetime DEFAULT NULL,
  
  
  
  total_9001 varchar(11) DEFAULT NULL,
  total_9002 varchar(11) DEFAULT NULL,
  total_9003 varchar(10) DEFAULT NULL,
  total_8001 varchar(11) DEFAULT NULL,
  total_8002 varchar(11) DEFAULT NULL,
  total_1001 varchar(11) DEFAULT NULL,

GiDG int(4) NULL default 0 DEFAULT '0',
  Actnm varchar(9) DEFAULT NULL,
  
  wasf varchar(100) DEFAULT NULL,
  Actnmc varchar(9) DEFAULT NULL,
  
  TRANSACTION_date varchar(30) DEFAULT NULL,
  currency varchar(4) DEFAULT NULL,
  AC_Cridet varchar(9) DEFAULT NULL,
  Debit2 varchar(9) DEFAULT NULL,
   IDNTITY3 varchar(9) DEFAULT NULL,
  class_vication int(11) NULL default 0
) ");

$mysqli->query("alter  table mbs add primary key (ACC_NUM,Balance )");
$mysqli->query("alter  table mbs add index (LEDnm )");
/*
$mysqli->query("delete from   Accounts where LEDnm='1001'") ;/*
$mysqli->query("alter table dalytransiction  drop primary key  ") ;
/*
$result = $mysqli->query($quer);

while($row =$result->fetch_assoc()){
print($_row['name']);

}




$mysqli->query(" drop table mbs  ");*/
print '<table border="1">';
$quer2 =" desc mbs";
$result2 = $mysqli->query($quer2);

while($row =$result2->fetch_assoc()){
print "<tr>";

    foreach ($row as $item)   


 print "<td>".htmlentities($item)."</td>";  print(strlen("<tabel>")) ;  print "</tr>"; } print "</table>";
 ?>