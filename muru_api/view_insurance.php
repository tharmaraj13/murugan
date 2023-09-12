<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$response = [];
$check = $dbcon->query("SELECT * FROM insurance ORDER by iname ASC;");
if ($check->num_rows > 0) {
    for ($i = 0; $i < $check->num_rows; $i++) {
        $result = mysqli_fetch_assoc($check);
        $resp_status = new stdClass;
        $resp_status->id = $result['id'];
        $resp_status->name = $result['iname'];
        $resp_status->address1 = $result['address1'];
        $resp_status->address2 = $result['address2'];
        $resp_status->gstin = $result['gstin'];
        $resp_status->gst_type = $result['gst_type']==null ? 'IGST' : $result['gst_type'];

        $response[] = $resp_status;
    }
}
echo json_encode($response);
mysqli_close($dbcon);
