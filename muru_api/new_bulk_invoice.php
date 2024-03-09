<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$iname = $_POST['iname'];
$id = $_POST['id'];
$date = strtotime($_POST['date']);
$caseid = json_decode($_POST['caseid']);
$precase = json_decode($_POST['precase']);

$precase = array_diff($precase, $caseid);

$caseid = implode(',', $caseid);
$precase = implode(',', $precase);

if ($id == NULL) {
    $dbcon->query("UPDATE intimations SET invoice=1,created='$date'
    where id in ($caseid);");

    $year = date('Y', $date);
    $month = date('m', $date);
    if ($month < 4) {
        $year = $year - 1;
    }
    $check1 = $dbcon->query("SELECT * from invoice where invoice_no like '%$year%';");
    $inv_no = str_pad($check1->num_rows + 1, 4, '0', STR_PAD_LEFT) . '/' . $year . '-' . (substr($year, -2) + 1);
    $dbcon->query("INSERT INTO invoice (invoice_no,intimations_id,created_date,bulk_status) VALUES ('$inv_no','$caseid','$date',1);");

    $resp = new stdClass;
    $resp->status = 'ok';
    $resp->id = mysqli_insert_id($dbcon);

    echo json_encode($resp);

    mysqli_close($dbcon);
} else {
    $dbcon->query("UPDATE intimations SET invoice=0, created=null
    where id in ($precase);");

    $dbcon->query("UPDATE intimations SET invoice=1, created='$date'
    where id in ($caseid);");

    $dbcon->query("UPDATE invoice SET intimations_id='$caseid', created_date='$date'
    where id='$id';");

    $resp = new stdClass;
    $resp->status = 'ok';
    $resp->id = $id;
    echo json_encode($resp);

    mysqli_close($dbcon);
}
