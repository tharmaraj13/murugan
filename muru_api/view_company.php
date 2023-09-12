<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$resp_status = new stdClass;

$check = $dbcon->query("SELECT * from company;");
if ($check->num_rows > 0) {
    $result = mysqli_fetch_assoc($check);
    $resp_status->status = 'ok';
    $resp_status->iname = $result['company_name'];
    $resp_status->pan = $result['pan'];
    $resp_status->gstin = $result['gstin'];
    $resp_status->hsn = $result['hsn'];
    $resp_status->description = $result['description'];
    $resp_status->bank = $result['bank'];
    $resp_status->branch = $result['branch'];
    $resp_status->accno = $result['accno'];
    $resp_status->ifsc = $result['ifsc'];
    echo json_encode($resp_status);
} else {
    $resp_status->status = 'error';
    $resp_status->message = 'No Details';
    echo json_encode($resp_status);
}
mysqli_close($dbcon);