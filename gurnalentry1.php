<?php 
include "navbar.php";

//include "header.php";
//include "navbar.php";


include "/session/sesslog.php";
 ?>

<!DOCTYPE html>
<html> <head>

<script type="text/javascript">
function chang() {        var ca = document.getElementById("Accnum").style.visibility = "visibil";;
function myfun(){
 var theTable = document.getElementById('testTable');
}}
</script>


<link rel="stylesheet" href="css/header.css">
 <title>Transiction</title> </head> <body  spellcheck="true">

<br><br><br>
<table border="0">
   <form method="post" action="gornalentry.php"> 
<!--
<input type="text" name="balance" size="8"  palaceholder="balance"> -->

<tr><td></td><td>
<select id="ACTY">      <option value="A">A: حساب محاسبي</option>      <option value="C">C:حساب جاري</option> 
</select></td><td>
<select id="cr" onchange="report.align = center ">
<?php  
$conn = new mysqli("localhost", "sbs", "sbspass", "southbank"); 
//ake sure the above credentials are correct for your environment 
if ($db->connect_error) 
{  
 die("Connect Error ({$db->connect_errno}) {$db->connect_error}"); 
} 
$sql0 ="select * from crruncy ";
$result0  =  $conn->query($sql0);

while ($row = $result0->fetch_assoc()) {
?>

<option value="  <option value=" <?php


 echo $row['crname']; 


?>">     <?php


 echo $row['crname']; 


}?> </option>     
  
</select>
</td><tr>
<td> <?php ?>
  
<select name="Accnum" id="Accnum">  
<?php  


// $sql = "select * from Gornal ";
$sql="select * from Accounts  ";

$result1  =  $conn->query($sql);

while ($row = $result1->fetch_assoc()) {
?>    
 
<option value=" <?php


 echo $row['ACC_NUM']; 


?>">  <?
echo $row['ACC_NUM']; 
}
?></option>     <!-- <option value="12929">مراقبة عمليات الفروع </option>      <option value=" &#52&#48&#49&#55&#53&#54&#52">

  &#52&#50&#53&#57&#57
</option> 
<option value=" &#52&#50&#53&#57&#57">

  &#52&#50&#53&#48&#57
</option> 
<option value=" &#52&#50&#53&#48&#57">

 &#52&#50&#53&#48&#57
</option> 
<option value=" &#52&#50&#53&#48&#55">
&#52&#50&#53&#48&#55
  
</option>

<option value=" &#52&#50&#51&#48&#55">
&#52&#50&#51&#48&#55
  
</option>
<option value="4017564">
4017564 1001
  
</option>

  

<option value=" &#52&#50&#51&#48&#55">
&#52&#50&#51&#48&#55
  
</option>
<option value="12913">
12913</option>
<option value="&#50&#52&#49&#52&#49">
&#50&#52&#49&#52&#49
</option>


<option value="21307">
21307</option>
-->
  </select>
</td><td>


<select name="ACCSUB1">

<?php  




$sql2 ="select * from Accounts  ";

$result2  =  $conn->query($sql2);

while ($row = $result2->fetch_assoc()) {?>

<option value="<?

echo $row['LEDnm']; 

?>"><?

echo $row['LEDnm'];}?></option>
</select>
</td><td>

<input type="text" name="debit" size="2"  placeholder="debit"> 

<!--
<input type="text" name="mount" size="2" class="txt" placeholder="mount">-->
</td></tr><tr><td>


<select name="Accnum2" id="Accnum2" >  

<? $sql="select * from Accounts  ";


// $sql = "select * from Gornal ";
$result1  =  $conn->query($sql);

while ($row = $result1->fetch_assoc()) {
?>    
 
<option value=" <?php


 echo $row['ACC_NUM']; 


?>
">  <?
echo $row['ACC_NUM']; 

}?></option>   <!--
  
    <option value="21301"> 21301</opt<option value=" &#50&#49&#51&#48&#49">  &#50&#49&#51&#48&#49</option>      <option value="12929">مراقبة عمليات الفروع </option>      <option value=" &#52&#48&#49&#55&#53&#54&#52">

  &#52&#50&#53&#57&#57
</option> 
<option value=" &#52&#50&#53&#57&#57">

  &#52&#50&#53&#48&#57
</option> 
<option value=" &#52&#50&#53&#48&#57">

 &#52&#50&#53&#48&#57
</option> 
<option value=" &#52&#50&#53&#48&#55">
&#52&#50&#53&#48&#55
  
</option>

<option value=" &#52&#50&#51&#48&#55">
&#52&#50&#51&#48&#55
  
</option>
<option value="4017564">
4017564 1001
  
</option>

  

<option value=" &#52&#50&#51&#48&#55">
&#52&#50&#51&#48&#55
  
</option>
<option value="12913">
12913</option>
<option value="&#50&#52&#49&#52&#49">
&#50&#52&#49&#52&#49
</option>


<option value="21307">
21307</option>
-->
  </select>

</td><td><select name="ACCSUB2">
<?php  




// $sql = "select * from Gornal ";
$sql4 ="select * from Accounts ";

$result4  =  $conn->query($sql4);

while ($row = $result4->fetch_assoc()) {?>

<option value="<?

echo $row['LEDnm']; 

 ?>">
<?

echo $row['LEDnm'];}?>
</option>
</select>
</td><td>

<input type="text" name="credit" size="2" placeholder="credit">
</td><td>



</td>



 <td>

</td><td>
 
      
<input type="date" name="de"  id="de"> 


 </td><td>



 

<select name="Accsst"   onselect=" chang();">     
<option value=""></option>    
 <option value="D">D</option>      <option value="C" id="c" oncontrolselect="chang()">C</option>   
</select>
  </td></tr>

<tr><td></td><td>
 
 <input name="submit" type="submit" id="submit" value="ارسل الى التحقيق"> </form>
  
</td>
</tr></table>
<?

?>
<table cellPadding="6" align="center" border="1" id="report">   <tr>     <td colspan="5 ">       <h3 align="center"> كشف حساب</h3>     </td>   </tr>   <tr>     <td align="center"> الحساب</td>        <td align="center">الرصيد </td>   

    

 <td align="center"> مدين </td>
 <td align="center"> دائن</td>


  <!-- 
 <td align="center">  </td>  
<td align="center"> AMOUNT</td>  
 <td align="center">  </td>  
-->


</tr>   <?php


//$cr = $_POST['cr'];
 $sql3 = "select * from Accounts order by crm ";
$result3  =  $conn->query($sql3);



 while ($row = $result3->fetch_assoc()) { ?>     <tr>       <td><?php


 echo $row['ACC_NUM']; 


?></a></td>     <td><?php

 echo 
 $row['Balance'];


?></td>  






<td><?php


 echo $row['Credit']; 



?></td> 


<td><?php


 echo $row['Debit']; 



?></td> <td><?php


 echo $row['crm']; 



?></td> 
<!--

<td>

 <td align="center"><?php /*echo $row['Account_type'];*/ ?></td>       
  -->
</tr><tr><td>

<?php } ?>


</tr>
</table> 
  
















 </body> </html>