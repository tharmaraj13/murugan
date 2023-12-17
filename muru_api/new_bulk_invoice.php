<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$iname = $_POST['iname'];
$date = strtotime($_POST['date']);
$caseid = json_decode($_POST['caseid']);

// $dbcon->query("UPDATE intimations SET ");
$response = [];
$caseid=implode(',',$caseid);
$dbcon->query("UPDATE intimations SET invoice=1,created='$date'
where id in ($caseid);");

$year = date('Y');
$check1 = $dbcon->query("SELECT * from invoice where invoice_no like '%$year%';");
$inv_no = str_pad($check1->num_rows + 1, 4, '0', STR_PAD_LEFT) . '/' . date('Y') . '-' . (substr(date('Y'), -2) + 1);
$dbcon->query("INSERT INTO invoice (invoice_no,intimations_id,created_date,bulk_status) VALUES ('$inv_no','$caseid','$date',1);");

$resp = new stdClass;
$resp->status='ok';
$resp->id=mysqli_insert_id($dbcon);
echo json_encode($resp);

mysqli_close($dbcon);