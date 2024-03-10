<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$id = $_POST['id'];
$payment = $_POST['payment'];
$paid_date = strtotime($_POST['paid_date']);

$resp_status = new stdClass;

$sql = "UPDATE intimations x
LEFT JOIN invoice y ON FIND_IN_SET(x.id, y.intimations_id) > 0
SET x.payment='$payment', paid_date='$paid_date'
WHERE y.id='$id';";

$dbcon->query($sql);
$resp_status->status = 'ok';
$resp_status->id = $id;
$resp_status->payment = $payment;
$resp_status->paid_date = Date('d-M-Y', $paid_date);

echo json_encode($resp_status);
mysqli_close($dbcon);
