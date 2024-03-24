<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$role_id = $_POST['role_id'];
$home_page = $_POST['home_page'];
$permissions = $_POST['permissions'];

$resp_status = new stdClass;
$dbcon->query("UPDATE roles SET homepage='$home_page',permissions='$permissions' where id='$role_id';");

$resp_status->status = 'ok';
$resp_status->home_page = $home_page;
$resp_status->permissions = $permissions;

echo json_encode($resp_status);
mysqli_close($dbcon);
