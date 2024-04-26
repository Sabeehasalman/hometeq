<?php
// connection data: 
$dbhost = 'phpmyadmin.ecs.westminster.ac.uk'; // the School MySQL server FQDN
$dbuser = 'w1956117';                      // your MySQL username
$dbpass = 'IyZQDV7OF1zp';                     // your MySQL password
$dbname = 'w1956117_0';                     // your database name, visible in phpmyadmin

//create a DB connection 
$datab = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

//$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
//if the DB connection fails, display an error message and exit
if (!$datab)
{
 die('Could not connect: ' . mysqli_error($datab));
}
else{
//select the database
mysqli_select_db($datab, $dbname);	
echo("connection established");	
}

?>
