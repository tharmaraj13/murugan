<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$response = [];
$querysql = '';
if ($_POST['fdate'] != '' && $_POST['tdate'] != '') {
    $fdate = strtotime($_POST['fdate']);
    $tdate = strtotime($_POST['tdate']);
    $querysql .= " and X.doi<='" . $tdate . "' and X.doi>='" . $fdate . "'";
}
if ($_POST['ifdate'] != '' && $_POST['itdate'] != '') {
    $ifdate = strtotime($_POST['ifdate']);
    $itdate = strtotime($_POST['itdate']);
    $querysql .= " and X.created<='" . $itdate . "' and X.created>='" . $ifdate . "'";
}

$claimno = $_POST['claimno'];
$all = $_POST['alldata'] != 'false' ? '' : ' AND X.fees=0 ';

$check = $dbcon->query("SELECT
X.*,
V.invoice_no,
V.bulk_status,
V.id as invoice_id,
V.created_date,
Y.hname,
Y.hplace,
Z.vname,
W.iname
FROM
intimations X left join invoice V ON FIND_IN_SET(X.id, V.intimations_id) > 0,
hospitals Y,
vendors Z,
insurance W
WHERE
V.bulk_status!=2 AND
X.vendor = Z.id AND X.hosp_details = Y.id AND W.id = X.insurance_tpa 
" . $all . " 
and X.claimno like '%$claimno%' 
" . $querysql . " 
ORDER by id DESC;");
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
        $resp_status->assigned = $result['assigned'];

        $response[] = $resp_status;
    }
}
echo json_encode($response);
mysqli_close($dbcon);
