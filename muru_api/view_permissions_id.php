<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$id = $_POST['id'];

$resp_status = new stdClass;
$check = $dbcon->query("SELECT *
FROM roles where id='$id';");
if ($check->num_rows > 0) {

    $result = mysqli_fetch_assoc($check);

    $resp_status->status = "ok";
    $resp_status->id = $result['id'];
    $resp_status->permissions = $result['permissions']=='' ? '{}' : $result['permissions'];
    $resp_status->homepage = $result['homepage'];
} else {
    $resp_status->status = "error";
}
echo json_encode($resp_status);
mysqli_close($dbcon);
