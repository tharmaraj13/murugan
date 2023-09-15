<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$response = [];
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
X.vendor = Z.id AND X.hosp_details = Y.id AND W.id = X.insurance_tpa
ORDER by id DESC;");
if ($check->num_rows > 0) {
    for ($i = 0; $i < $check->num_rows; $i++) {
        $result = mysqli_fetch_assoc($check);
        $resp_status = new stdClass;
        $resp_status->id = $result['id'];
        $resp_status->gicsid = $result['gicsid'];
        $resp_status->pname = $result['pname'];
        $resp_status->claim_type = $result['claim_type'];
        $resp_status->iname = $result['iname'];
        $resp_status->vname = $result['vname'];
        $resp_status->doi = Date('d-M-Y',$result['doi']);
        $resp_status->claimno = $result['claimno'];
        $resp_status->fees = $result['fees'];
        $resp_status->mrd = $result['mrd'];
        $resp_status->incentive = $result['incentive'];
        $resp_status->payment = $result['payment'];
        $resp_status->paid_date = $result['paid_date']==null ? '' : Date('d-M-Y',$result['paid_date']);
        $resp_status->transport = $result['transportation'];

        $response[] = $resp_status;
    }
}
echo json_encode($response);
mysqli_close($dbcon);
