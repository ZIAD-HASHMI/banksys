<?php 

$document  =  simplexml_load_file("marquee.xml");
echo"<menu type=\"list\" id=\"oldStyle\">"; foreach  ($document->USD  as  $USD) 

$obj = new Encoder();
 { echo ( "<li><a href=\"http://www.southbank.net/");  echo($obj->_encodeString("${$USD->RY   }")."</a> </li> " );

}echo"</menu>";


class Encoder { const ENCODE_STYLE_HTML = 0; const ENCODE_STYLE_JAVASCRIPT = 1; const ENCODE_STYLE_CSS = 2; const ENCODE_STYLE_URL = 3; const ENCODE_STYLE_URL_SPECIAL = 4; private static $URL_UNRESERVED_CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcedfghijklmnopqrstuvwxyz-_.~'; 
//$value = http://bank/gurnal.php;
public function encodeForHTML($value) { 
$value = str_replace('&', '&amp;', $value); $value = str_replace('<', '&lt;', $value); $value = str_replace('>', '&gt;', $value); $value = str_replace('"', '&quot;', $value); $value = str_replace('\'', '&#x27;', $value); 
// &apos; is not recommended 
$value = str_replace('/', '&#x2F;', $value);
return $value; }

 public function encodeURLPath($value) { $length = mb_strlen($value); if ($length == 0) { return $value; } $output = ''; 
for ($i = 0; $i < $length; $i++) { $char = mb_substr($value, $i, 1); if ($char == '/') { // Slashes are allowed in paths.
 $output .= $char; } else if (mb_strpos(self::$URL_UNRESERVED_CHARS, $char) == false) { // It's not in the unreserved list so it needs to be encoded. 
$output .= $this->_encodeCharacter($char, self::ENCODE_STYLE_URL); } else {


$output .= $char;      }    }    return $output;  }  private function _encodeString($value, $style = self::ENCODE_STYLE_HTML)  {    if (mb_strlen($value) == 0) {      return $value;    }    $characters = preg_split('/(?<!^)(?!$)/u', $value);  
  $output = '';  
  foreach ($characters as $c) {      $output .= $this->_encodeCharacter($c, $style);    }    return $output;  }  private function _encodeCharacter($c, $style = self::ENCODE_STYLE_HTML)  {    if (ctype_alnum($c)) {      return $c;    }    if (($style === self::ENCODE_STYLE_URL_SPECIAL) && ($c == '/' || $c == ':')) {      return $c;    }    $charCode = $this->_unicodeOrdinal($c);    $prefixes = array(      self::ENCODE_STYLE_HTML => array('&#x', '&#x'),      self::ENCODE_STYLE_JAVASCRIPT => array('\\x', '\\u'),    self::ENCODE_STYLE_CSS => array('\\', '\\'),  self::ENCODE_STYLE_URL => array('%', '%'),      self::ENCODE_STYLE_URL_SPECIAL => array('%', '%'),    );    
$suffixes = array( self::ENCODE_STYLE_HTML => ';',  self::ENCODE_STYLE_JAVASCRIPT => '',  self::ENCODE_STYLE_CSS => '',      self::ENCODE_STYLE_URL => '',      self::ENCODE_STYLE_URL_SPECIAL => '',    );    
// if ASCII, encode with \\xHH    
if ($charCode < 256) {      $prefix = $prefixes[$style][0];
$suffix = $suffixes[$style]; return $prefix . str_pad(strtoupper(dechex($charCode)), 2, '0') . $suffix;
 } // otherwise encode with \\uHHHH 
$prefix = $prefixes[$style][1]; $suffix = $suffixes[$style]; return $prefix . str_pad(strtoupper(dechex($charCode)), 4, '0') . $suffix; } private function _unicodeOrdinal($u) { $c = mb_convert_encoding($u, 'UCS-2LE', 'UTF-8'); $c1 = ord(substr($c, 0, 1)); $c2 = ord(substr($c, 1, 1)); return $c2 * 256 + $c1; } }

$obj = new Encoder();
$URL  = "http://www.southbank.net/bank/index.php&query=1";


echo $obj->encodeURLPath($URL);