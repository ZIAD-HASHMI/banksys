<?php
   

 if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 10)) {
        header("location:bank/index.php?sessionExpired=true");
        exit();
    }
    $_SESSION['LAST_ACTIVITY'] = time(); 


?>