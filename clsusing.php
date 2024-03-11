<?php 
define('DB_SERVER','localhost');
    define('DB_USERNAME','sbs');
    define('DB_PASSWORD','sbspass');
    define('DB_DATABASE','southbank');


class DatabaseClient {     protected $db;     public function __construct()  {         $this->db =new    mysqli("localhost", "sbs", "sbspass", "southbank");     

if(mysqli_connect_errno())
                {
                    echo "Error: Could not connect to database.";
                    exit;
                }



  
}



function findAll() { $result = $this->query("select * from 
Accounts "); while ($row = 
$result->fetchRow(db_FETCHMODE_ASSOC)) 
{    /* echo "<script type='text/
javascript'> alert('$result')
</script>"; */
print_r($result);


}
 
}

 
} 





 ?>