<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$values=json_decode($_POST['data']);

$response = [];
$dbcon->query("UPDATE users SET username='$values[1]',`password`='$values[2]',`role`='$values[3]' where id='$values[0]';");

echo json_encode($values);
mysqli_close($dbcon);
