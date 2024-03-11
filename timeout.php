<?php
    if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 100)) {
        header("location:bank/guost_profile.php?sessionExpired=true");
        exit();
    }
    $_SESSION['LAST_ACTIVITY'] = time(); // update last activity time stamp
?>