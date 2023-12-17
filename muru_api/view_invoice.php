<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$id = $_POST['id'];
$resp_status = new stdClass;

$check = $dbcon->query("SELECT
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
invoice y,
intimations z,
insurance a
WHERE
z.id = y.intimations_id AND a.id = z.insurance_tpa AND z.gicsid = '$id';");
if ($check->num_rows > 0) {
    $result = mysqli_fetch_assoc($check);
    $resp_status->status = 'ok';
    $resp_status->created = date('d-M-Y', $result['created_date']);
    $resp_status->invoice = $result['invoice_no'];
    
    $resp_status->iname= $result['iname'];
    $resp_status->address1= $result['address1'];
    $resp_status->address2= $result['address2'];
    $resp_status->gstin_tpa= $result['gstin_tpa'];
    $resp_status->gst_type= $result['gst_type']==null ? 'IGST' : $result['gst_type'];

    $resp_status->claimno= $result['claimno'];
    $resp_status->claim_type= $result['claim_type'];
    $resp_status->fees= $result['fees'];
    $resp_status->incentive= $result['incentive'];
    $resp_status->transport= $result['transportation'];
    $resp_status->mrd= $result['mrd'];

    $resp_status->company_name= $result['company_name'];
    $resp_status->pan= $result['pan'];
    $resp_status->gstin= $result['gstin'];
    $resp_status->hsn= $result['hsn'];
    $resp_status->description= $result['description'];
    $resp_status->bank= $result['bank'];
    $resp_status->branch= $result['branch'];
    $resp_status->accno= $result['accno'];
    $resp_status->ifsc= $result['ifsc'];

    echo json_encode($resp_status);
} else {
    $resp_status->status = 'error';
    $resp_status->message = 'Invalid GICS ID';
    echo json_encode($resp_status);
}

mysqli_close($dbcon);
