<?


session_start();


include "sess/vsessionv.php";	

include 'sess/sesslog.php';
    include "header.php";
   

 include "~navbar.php";

 mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); $mysqli = new mysqli("localhost","sbs","sbspass", "guosts");






?>





<!DOCTYPE html>
<html> <head>



</head>

<body>

</p>
<table cellSpacing="12" cellPadding=" 4" align="center" border="1" class="tab2">   <tr>     
<td colspan="0">       
<h7 align="center">welcome <br>


 <?=  $IDNTITY;  ?><br /> <?=  $email;  ?>
  
 <tr>      
<td>  
  

 


<menu type="list"> <lu>   <?

//include 'config/menu.php';



$Z = 'Y';

$sql = ("SELECT * FROM USER_PRIVILEGES left join authoriz where(( USER_PRIVILEGES.IDNTITY &&  authoriz.IDNTITY)=== '".$IDNTITY."')");

$result = $mysqli->query($sql);


while ($row = $result->fetch_assoc())
 {?>
<li><a href="<?
echo $row['PAGE_LINK'];?>"><?echo$row['PAGE_HREF'];?></a></li>



</ul><?
}





?>


</menu>
  
</tr>
</table>




<div>

</div>



</body></html>