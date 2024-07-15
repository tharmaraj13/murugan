<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$id = $_POST['id'];

$response = [];
$selected = [];
$result1 = new stdClass;

$sql = "SELECT
y.invoice_no,
y.created_date,
z.*
FROM
intimations z left join invoice y ON FIND_IN_SET(z.id, y.intimations_id) > 0
WHERE
y.id ='$id';";

$check = $dbcon->query($sql);
if ($check->num_rows > 0) {
    for ($i = 0; $i < $check->num_rows; $i++) {
        $result = mysqli_fetch_assoc($check);
        if ($i == 0) {
            $result1->invoice_no = $result['invoice_no'];
            $result1->created_date =  Date('Y-m-d', $result['created_date']);
            $result1->insurance_tpa = $result['insurance_tpa'];
        }
        $selected[] = $result['id'];
        $resp_status = new stdClass;
        $resp_status->id = $result['id'];
        $resp_status->gicsid = $result['gicsid'];
        $resp_status->pname = $result['pname'];
        $resp_status->claim_type = $result['claim_type'];
        $resp_status->doi = Date('d-M-Y', $result['doi']);
        $resp_status->claimno = $result['claimno'];
        $resp_status->fees = $result['fees'];
        $resp_status->incentive = $result['incentive'];
        $resp_status->mrd = $result['mrd'];
        $resp_status->transport = $result['transportation'];
        $resp_status->status = true;

        $response[] = $resp_status;
    }
    $check1 = $dbcon->query("SELECT * FROM intimations where invoice=1 and insurance_tpa='" . $result1->insurance_tpa . "';");
    if ($check1->num_rows > 0) {
        for ($i = 0; $i < $check1->num_rows; $i++) {
            $result = mysqli_fetch_assoc($check1);
            $resp_status = new stdClass;
            $resp_status->id = $result['id'];
            $resp_status->gicsid = $result['gicsid'];
            $resp_status->pname = $result['pname'];
            $resp_status->claim_type = $result['claim_type'];
            $resp_status->doi = Date('d-M-Y', $result['doi']);
            $resp_status->claimno = $result['claimno'];
            $resp_status->fees = $result['fees'];
            $resp_status->incentive = $result['incentive'];
            $resp_status->mrd = $result['mrd'];
            $resp_status->transport = $result['transportation'];
            $resp_status->status = false;

            $response[] = $resp_status;
        }
    }
}
$result1->data = $response;
$result1->selected = $selected;
echo json_encode($result1);
mysqli_close($dbcon);
