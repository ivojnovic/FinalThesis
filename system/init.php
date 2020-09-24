<?php
$db = mysqli_connect('127.0.0.1', 'root', '','database_the_cake_fairy');
if(mysqli_connect_errno()){
  echo 'Database connection failed with following errors:' . my_sqli_connect_error();
  die();
}
 ?>
