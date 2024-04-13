<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$ename = $_POST['ename'];
$id = $_POST['id'];

$resp_status = new stdClass;
if ($id == 'undefined' || $id == NULL) {
    $check = $dbcon->query("SELECT * from expenseTypes where ename='$ename';");
    if ($check->num_rows > 0) {
        $resp_status->status = 'error';
        $resp_status->message = 'Already Exist';
    } else {
        $dbcon->query("INSERT INTO expenseTypes (ename) VALUES ('$ename');");
        $resp_status->status = 'ok';
        $resp_status->id = $dbcon->insert_id;
        $resp_status->name = $ename;
    }
    mysqli_close($dbcon);
} else {
    $dbcon->query("UPDATE expenseTypes SET ename='$ename' where id='$id';");
    $resp_status->status = 'ok';
    $resp_status->id = $id;
    $resp_status->name = $ename;
    mysqli_close($dbcon);
}
echo json_encode($resp_status);