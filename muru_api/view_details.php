<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$gicsid = $_POST['gicsid'];
$resp_status = new stdClass;
$cases = ['Genuinity' => 0, 'PED' => 1, 'Accident' => 2, 'Infertility' => 3, 'OPD to IPD' => 4];
$types = ['Reimbursement' => 0, 'Cashless' => 1, 'Bill Verification' => 2, 'PA' => 3, 'MPA' => 4, 'Critical Illness' => 5, 'Life Insurance' => 6];
$check = $dbcon->query("SELECT
X.*,
Y.hname,
Y.hplace,
Z.vname,
W.iname
FROM
intimations X,
hospitals Y,
vendors Z,
insurance W
WHERE
X.vendor = Z.id AND X.hosp_details = Y.id AND W.id = X.insurance_tpa and X.gicsid='$gicsid';");
if ($check->num_rows > 0) {
    $result = mysqli_fetch_assoc($check);
    $resp_status->status = 'ok';
    $resp_status->id = $result['id'];
    $resp_status->gicsid = $result['gicsid'];
    $resp_status->pname = $result['pname'];
    $resp_status->age = $result['age'];
    $resp_status->sex = $result['sex'];
    $resp_status->doa = date('d-M-Y', $result['doa']);
    $resp_status->dod = date('d-M-Y', $result['dod']);
    $resp_status->doi = date('d-M-Y', $result['doi']);
    $resp_status->opno = $result['opno'];
    $resp_status->ipno = $result['ipno'];
    $resp_status->hname = $result['hname'];
    $resp_status->invoice = $result['invoice'];
    $resp_status->hplace = $result['hplace'];
    $resp_status->triggers = $result['triggers'];
    $resp_status->claimno = $result['claimno'];
    $resp_status->iname = $result['iname'];
    $resp_status->policy_type = $result['policy_type'];
    $resp_status->doj = date('d-M-Y', $result['doj']);
    $resp_status->claim_type = $result['claim_type'];
    $resp_status->case_type = $result['case_type'];
    $resp_status->created = date('d-M-Y', $result['created']);
    $resp_status->paid_date = $result['paid_date'] == null ? '' : Date('d-M-Y', $result['paid_date']);
    $resp_status->vname = $result['vname'];
    $resp_status->created_by = $result['created_by'];
    $resp_status->caseno = $cases[$result['case_type']];
    $resp_status->typeno = $types[$result['claim_type']];

    $resp_status->fees = $result['fees'];
    $resp_status->mrd = $result['mrd'];
    $resp_status->incentive = $result['incentive'];
    $resp_status->transport = $result['transportation'];
    $resp_status->assigned = $result['assigned'];
    echo json_encode($resp_status);
} else {
    $resp_status->status = 'error';
    $resp_status->message = 'Invalid GICS ID';
    echo json_encode($resp_status);
}

mysqli_close($dbcon);
