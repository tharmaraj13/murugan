<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$id = $_POST['id'];
$resp = new stdClass;
if ($id == 'undefined') {
    $resp->status = 'error1';
} else {
    $check = $dbcon->query("SELECT * FROM intimations where id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $resp->status = 'ok';
        $resp->vendor = $result['vendor'];
        $resp->pname = $result['pname'];
        $resp->age = $result['age'];
        $resp->sex = $result['sex'];
        $resp->doa = Date("Y-m-d", $result['doa']);
        $resp->dod = Date("Y-m-d", $result['dod']);
        $resp->doi = Date("Y-m-d", $result['doi']);
        $resp->opno = $result['opno'];
        $resp->ipno = $result['ipno'];
        $resp->hosp_details = $result['hosp_details'];
        $resp->triggers = $result['triggers'];
        $resp->claimno = $result['claimno'];
        $resp->insurance_tpa = $result['insurance_tpa'];
        $resp->policy_type = $result['policy_type'];
        $resp->doj = Date("Y-m-d", $result['doj']);
        $resp->claim_type = $result['claim_type'];
        $resp->case_type = $result['case_type'];
        $resp->fees = $result['fees'];
        $resp->incentive = $result['incentive'];
        $resp->mrd = $result['mrd'];
        $resp->transportation = $result['transportation'];
        $resp->created = Date("Y-m-d", $result['created']);
        $resp->created_by = $result['created_by'];
        $resp->payment = $result['payment'];
        $resp->paid_date = $result['paid_date']==null ? '' : Date('d-M-Y',$result['paid_date']);
        $resp->invoice = $result['invoice'] == '0' ? 0 : 1;
        $resp->assigned = $result['assigned'];
        
    } else {
        $resp->status = 'error';
    }
    mysqli_close($dbcon);
}
echo json_encode($resp);
