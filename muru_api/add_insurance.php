<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$iname = $_POST['iname'];
$address1 = $_POST['address1'];
$address2 = $_POST['address2'];
$gstin = $_POST['gstin'];
$gst_type = $_POST['gst_type'];
$id = $_POST['id'];

$resp_status = new stdClass;
if ($id == 'undefined') {
    $check = $dbcon->query("SELECT * from insurance where iname='$iname';");
    if ($check->num_rows > 0) {
        $resp_status->status = 'error';
        $resp_status->message = 'Already Exist';
    } else {
        $dbcon->query("INSERT INTO insurance (iname,address1,address2,gstin,gst_type) VALUES ('$iname','$address1','$address2','$gstin','$gst_type');");
        $resp_status->status = 'ok';
        $resp_status->id = $dbcon->insert_id;
        $resp_status->name = $iname;
    }
    mysqli_close($dbcon);
} else {
    $dbcon->query("UPDATE insurance SET iname='$iname',address1='$address1',address2='$address2',gstin='$gstin', gst_type='$gst_type' where id='$id';");
    $resp_status->status = 'ok';
    $resp_status->id = $id;
    $resp_status->name = $iname;
    mysqli_close($dbcon);
}
echo json_encode($resp_status);