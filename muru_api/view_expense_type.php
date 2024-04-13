<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$id = $_POST['id'];

if ($id == 'undefined' || $id == NULL) {
    $response = [];
    $check = $dbcon->query("SELECT * FROM expenseTypes ORDER by ename ASC;");
    if ($check->num_rows > 0) {
        for ($i = 0; $i < $check->num_rows; $i++) {
            $result = mysqli_fetch_assoc($check);
            $resp_status = new stdClass;
            $resp_status->id = $result['id'];
            $resp_status->ename = $result['ename'];

            $response[] = $resp_status;
        }
    }
    mysqli_close($dbcon);
    echo json_encode($response);
} else {
    $resp_status = new stdClass;
    $check = $dbcon->query("SELECT * FROM expenseTypes where id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $resp_status->status = 'ok';
        $resp_status->ename = $result['ename'];
    } else {
        $resp->status = 'error';
    }
    mysqli_close($dbcon);
    echo json_encode($resp_status);
}
