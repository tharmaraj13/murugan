<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$id = $_POST['id'];
$eid = $_POST['eid'];
$resp = new stdClass;

if ($id == 'undefined' || $eid == 'undefined') {
    $resp->status = 'error1';
} else {
    $check = $dbcon->query("SELECT
    X.*,
    V.invoice_no,
    Y.hname,
    Y.hplace,
    Z.vname,
    W.iname
    FROM
    intimations X left join invoice V ON V.intimations_id=X.id,
    hospitals Y,
    vendors Z,
    insurance W
    WHERE
    X.vendor = Z.id AND X.hosp_details = Y.id AND W.id = X.insurance_tpa
    AND X.id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $resp->status = 'ok';
        $resp->hname = $result['hname'];
        $resp->hplace = $result['hplace'];
        $resp->doi = Date("d/m/Y", $result['doi']);
        $resp->pname = $result['pname'];
        $resp->doa = Date("d/m/Y", $result['doa']);
        $resp->dod = Date("d/m/Y", $result['dod']);
        $resp->claimno = $result['claimno'];
        $resp->opno = $result['opno'];
        $resp->ipno = $result['ipno'];

        $resp->vname = $result['vname'];
        
        $check1 = $dbcon->query("SELECT * FROM staffs where id='$eid';");
        $result1 = mysqli_fetch_assoc($check1);

        $resp->sname = $result1['sname'];
    } else {
        $resp->status = 'error';
    }
    mysqli_close($dbcon);
}
echo json_encode($resp);
