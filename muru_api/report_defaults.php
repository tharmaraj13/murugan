<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");
header("Content-Type: application/json");

include 'config.php';
$claim_type = $_POST['claim_type'];
$resp_status = new stdClass;

$reportDefault = [];
$check = $dbcon->query("SELECT * FROM reportDefaults WHERE claim_type='$claim_type';");

if ($check->num_rows > 0) {
    while ($row = mysqli_fetch_object($check)) {
        $reportDefault[] = $row;
    }
    $resp_status->status = 'ok';
    $resp_status->reportDefault = $reportDefault;
} else {
    $resp_status->status = 'error';
    $resp_status->message = 'Invalid Claim Type';
}

echo json_encode($resp_status);

mysqli_close($dbcon);
