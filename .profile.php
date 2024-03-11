<?


session_start();


include "vsessionv.php";	

include '/sess/sesslog.php';
  
if (empty($_SESSION['u_email']))
{
    
        header("location:index.php");}
else {



  include "header.php";
   

 include "navbar.php";

 mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); $mysqli = new mysqli("localhost","sbs","sbspass", "guost");






?>





<!DOCTYPE html>
<html> <head>



</head>

<body>

</p>
<formview id="" ranat=""server"><templatitem>
<table cellSpacing="12" cellPadding=" 4" align="center" border="1" class="tab2">   <tr>     
<td colspan="0">       
<h7 align="center">welcome <br>


 <?=  $IDNTITY;  ?><br /> <?=  $email;  ?>
  
 <tr>      
<td>  
  

 


<menu type="list"> <lu>   <?
//include 'config/menu.php';



$Z = 'Y';

$sql31 = ("SELECT * FROM USER_PRIVILEGES inner Join Real_Pro where (USER_PRIVILEGES.email = Real_Pro.email && USER_PRIVILEGES.Pro = Real_Pro.Pro)");

$result31 = $mysqli->query($sql31);


while ($row = $result31->fetch_assoc())
 {?>
<li><a href="<?
echo $row['PAGE_LINK'];?>"><?echo$row['PAGE_HREF'];?></a></li>



</ul><?
}


}


?>


</menu>
  
</tr>
</table>
</templateitem>
</formview>


<div>

</div>



</body></html>