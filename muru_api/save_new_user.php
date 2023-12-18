<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$username=$_POST['username'];
$password=$_POST['password'];
$roles=$_POST['roles'];

$response = [];
$dbcon->query("INSERT users (`username`,`password`,`role`) VALUES ('$username','$password','$roles');");
$check = $dbcon->query("SELECT *
FROM users
ORDER by id ASC;");
if ($check->num_rows > 0) {
    for ($i = 0; $i < $check->num_rows; $i++) {
        $result = mysqli_fetch_assoc($check);
        $resp_status = new stdClass;
        $resp_status->id = $result['id'];
        $resp_status->username = $result['username'];
        $resp_status->password = $result['password'];
        $resp_status->role = $result['role'];

        $response[] = $resp_status;
    }
}
echo json_encode($response);
mysqli_close($dbcon);
