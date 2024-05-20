<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$all = $_POST['alldata'] != 'false' ? '' : ' AND X.fees=0 ';

$response = [];
$check = $dbcon->query("SELECT
X.*,
A.sname,
V.invoice_no,
V.bulk_status,
V.id as invoice_id,
V.created_date,
Y.hname,
Y.hplace,
Z.vname,
W.iname
FROM
intimations X left join invoice V ON FIND_IN_SET(X.id, V.intimations_id) > 0
left join staffs A ON A.id=X.assigned,
hospitals Y,
vendors Z,
insurance W
WHERE
X.vendor = Z.id AND X.hosp_details = Y.id AND W.id = X.insurance_tpa
" . $all . " 
ORDER by id DESC LIMIT 500;");
if ($check->num_rows > 0) {
    while ($result = $check->fetch_assoc()) {
    // for ($i = 0; $i < $check->num_rows; $i++) {
    //     $result = mysqli_fetch_assoc($check);
        $resp_status = new stdClass;
        $resp_status->id = $result['id'];
        $resp_status->gicsid = $result['gicsid'];
        $resp_status->pname = $result['pname'];
        $resp_status->claim_type = $result['claim_type'];
        $resp_status->iname = $result['iname'];
        $resp_status->vname = $result['vname'];
        $resp_status->doi = Date('d-M-Y', $result['doi']);
        $resp_status->claimno = $result['claimno'];
        $resp_status->fees = $result['fees'];
        $resp_status->mrd = $result['mrd'];
        $resp_status->incentive = $result['incentive'];
        $resp_status->bulk_status = $result['bulk_status'];
        $resp_status->invoice_id = $result['invoice_id'];
        $resp_status->payment = $result['payment'];
        $resp_status->paid_date = $result['paid_date'] == null ? '' : Date('d-M-Y', $result['paid_date']);
        $resp_status->transport = $result['transportation'];
        $resp_status->invoice_no = $result['invoice'] != 0 ? $result['invoice_no'] : '';
        $resp_status->invdate = $result['invoice'] != 0 ? Date('d-M-Y', $result['created_date']) : '';

        $resp_status->hname = $result['hname'] . ", " . $result['hplace'];
        $resp_status->opno = $result['opno'];
        $resp_status->ipno = $result['ipno'];
        $resp_status->policy_type = $result['policy_type'];
        $resp_status->assigned = $result['sname'];

        $response[] = $resp_status;
    }
}
echo json_encode($response);
mysqli_close($dbcon);
