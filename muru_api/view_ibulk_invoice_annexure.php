<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$response = [];
$id = $_POST['id'];
$caseid = '';

$check1 = $dbcon->query("SELECT * FROM invoice where id='$id';");
if ($check1->num_rows > 0) {
    $result1 = mysqli_fetch_assoc($check1);
    $fees = 0;
    $incentive = 0;
    $transportation = 0;
    $mrd = 0;
    $claimtype = [];
    $consol = '';
    $caseid = $result1['intimations_id'];

    $sql = "SELECT
x.*,
y.invoice_no,
y.created_date,
z.claimno,
z.claim_type,
z.fees,
z.incentive,
z.transportation,
z.mrd,
a.iname,
a.address1,
a.address2,
a.gst_type,
a.gstin AS gstin_tpa
FROM
company x,
intimations z left join invoice y ON FIND_IN_SET(z.id, y.intimations_id) > 0,
insurance a
WHERE
a.id = z.insurance_tpa AND y.bulk_status=2 AND z.id IN ($caseid);";
    $check = $dbcon->query($sql);
    if ($check->num_rows > 0) {
        for ($i = 0; $i < $check->num_rows; $i++) {
            $resp_status = new stdClass;
            $result = mysqli_fetch_assoc($check);
            $resp_status->status = 'ok';

            $resp_status->claim_type = $result['claim_type'];
            $resp_status->iname = $result['iname'];
            $resp_status->claimno = $result['claimno'];
            $resp_status->fees = $result['fees'];
            $resp_status->incentive = $result['incentive'];
            $resp_status->transportation = $result['transportation'];
            $resp_status->mrd = $result['mrd'];
            $response[] = $resp_status;
        }
    }
}
echo json_encode($response);
mysqli_close($dbcon);
