
<?php  

include "../sess/vsessionv.php";
//include "header.php";

echo "<!DOCTYPE html>";
echo "<html>";
echo "<head>";echo"<scipt type=\"text/javascript\">";echo"</scipt>";
echo "<link rel=\"stylesheet\" href=\"css/mbs.css\">";
echo "</head>";
echo "<body>";
echo "<div align=\"center\" class=\"div-reg\">";
 echo "<form method=\"post\" action=\"addadmin.php\">";

echo  "<input type=\"text\" name=\"u_one\" placeholder=\"IDNTITY OR PHONE\" required ><br>";

echo  "<input type=\"email\" name=\"u_email\" placeholder=\"EMAIL\" ><br>";
echo  "<input type=\"email\" name=\"emailc\" placeholder=\"confirm Email \" required><br>";

echo  "<input type=\"text\" name=\"distract\" placeholder=\"COUNTRY OR TIMEZONE\" required  ><br>";


echo "<input name=\"submit\" type=\"submit\" id=\"submit\" value=\"create now\">" ;echo "</form>";
echo"<div>";

echo "</html>";

echo "</body>";

?>


