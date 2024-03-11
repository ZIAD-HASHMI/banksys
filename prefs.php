html> <head><title>Preferences Set</title></head> <body> <?php $colors = array( 'black' => "#000000", 'white' => "#ffffff", 'red'   => "#ff0000", 'blue'  => "#0000ff" ); $backgroundName = $_POST['background']; $foregroundName = $_POST['foreground'];
setcookie('bg', $colors[$backgroundName]); setcookie('fg', $colors[$foregroundName]); ?> <p>Thank you. Your preferences have been changed to:<br /> Background: <?= $backgroundName; ?><br /> Foreground: <?= $foregroundName; ?></p> 

<a href='QueryString.cgi?1%2B1=2&2%2B2=5'>Click Here</a>


<p>Click <a href="prefs_demo.php">here</a> to see the preferences in action.</p> </body> </html>


<?php 
$is_ok = http_response($url); // returns true only if http response code < 400 
?> 


<?php 
http_response($url,'400'); // returns true if http status is 400 
?> 

