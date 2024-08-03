<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$querysql = '';
if ($_POST['fdate'] != '' && $_POST['tdate'] != '') {
    $fdate = strtotime($_POST['fdate']);
    $tdate = strtotime($_POST['tdate']);
    $querysql .= " and X.e_date<='" . $tdate . "' and X.e_date>='" . $fdate . "'";
}
$id = $_POST['id'];

if ($id == 'undefined' || $id == NULL) {
    $response = [];
    $check = $dbcon->query("SELECT
X.*,
Y.ename,
Z.sname
FROM
expenses X,
expenseTypes Y,
staffs Z
WHERE
X.staff_id = Z.id AND X.e_type_id = Y.id
" . $querysql . " 
ORDER by X.e_date DESC;");
    if ($check->num_rows > 0) {
        for ($i = 0; $i < $check->num_rows; $i++) {
            $result = mysqli_fetch_assoc($check);
            $resp_status = new stdClass;
            $resp_status->id = $result['id'];
            $resp_status->s_type = $result['sname'] == 'Others' ? 'Others' : 'Staff';
            $resp_status->s_name = $result['sname'] == 'Others' ? $result['staff_name'] : $result['sname'];
            $resp_status->e_date = Date('d-M-Y', $result['e_date']);
            $resp_status->e_type = $result['ename'];
            $resp_status->amount = $result['amount'];
            $resp_status->payment_mode = $result['payment_mode'];
            $resp_status->remarks = $result['remarks'];

            $response[] = $resp_status;
        }
    }
    mysqli_close($dbcon);
    echo json_encode($response);
} else {
    $resp = new stdClass;
    $check = $dbcon->query("SELECT * FROM expenses where id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $resp->status = 'ok';
        $resp->id  = $result['id '];
        $resp->staff_id = $result['staff_id'];
        $resp->staff_name = $result['staff_name'];
        $resp->e_date = Date("Y-m-d", $result['e_date']);
        $resp->e_type_id = $result['e_type_id'];
        $resp->amount = $result['amount'];
        $resp->payment_mode = $result['payment_mode'];
        $resp->remarks = $result['remarks'];
    } else {
        $resp->status = 'error';
    }
    mysqli_close($dbcon);
    echo json_encode($resp);
}
