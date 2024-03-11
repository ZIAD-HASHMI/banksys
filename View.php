<?php
$filexml = simplexml_load_file("cruncy.xml");
$xmlText = $filexml->asXML();
print'<menu type="list" id="o">'; foreach  ($xmlText as  $value ) 
{
print( $xmlText->$value);

}

$document  =  simplexml_load_file("cruncy.xml");
echo"<menu type=\"list\">"; foreach  ($document->RY  as  $value) 
{
$converted = chunk_split(base64_encode($value)); 

 
echo'<li><a href="$value">';var_dump($converted);echo'</a></li>';

}

echo'</menu>';