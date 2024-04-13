<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$id = $_POST['id'];
$staff_id = $_POST['staff_id'];
$staff_name = $_POST['staff_name'];
$e_date = strtotime($_POST['e_date']);
$e_type_id = $_POST['e_type_id'];
$amount = $_POST['amount'];
$payment_mode = $_POST['payment_mode'];
$remarks = $_POST['remarks'];

$resp_status = new stdClass;
if ($id == 'undefined' || $id == NULL) {
    $dbcon->query("INSERT INTO expenses (`staff_id`, `staff_name`, `e_date`, `e_type_id`, `amount`, `payment_mode`, `remarks`) VALUES 
    ('$staff_id','$staff_name','$e_date','$e_type_id','$amount','$payment_mode','$remarks');");
    $resp_status->status = 'ok';
    $resp_status->id = $dbcon->insert_id;
    $resp_status->staff_id = $staff_id;
    $resp_status->staff_name = $staff_name;
    $resp_status->e_date = $e_date;
    $resp_status->e_type_id = $e_type_id;
    $resp_status->amount = $amount;
    $resp_status->payment_mode = $payment_mode;
    $resp_status->remarks = $remarks;
    mysqli_close($dbcon);
} else {
    $dbcon->query("UPDATE expenses SET staff_id='$staff_id',staff_name='$staff_name',e_date='$e_date',
    e_type_id='$e_type_id',amount='$amount',payment_mode='$payment_mode',remarks='$remarks' where id='$id';");
    $resp_status->status = 'ok';
    $resp_status->id = $id;
    $resp_status->staff_id = $staff_id;
    $resp_status->staff_name = $staff_name;
    $resp_status->e_date = $e_date;
    $resp_status->e_type_id = $e_type_id;
    $resp_status->amount = $amount;
    $resp_status->payment_mode = $payment_mode;
    $resp_status->remarks = $remarks;
    mysqli_close($dbcon);
}
echo json_encode($resp_status);
