<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$values = json_decode($_POST['values']);
$values[4] = strtotime($values[4]);
$values[5] = strtotime($values[5]);
$values[6] = strtotime($values[6]);
$values[14] = strtotime($values[14]);
$id = $values[20];
$invoice = $values[21] ? 1 : 0;
$incentive=$values[22];
$values[23] = strtotime($values[23]);
$payment=$values[24];
$values[25] = strtotime($values[25]);
$time = time();

if ($id == NULL) {
    $dbcon->query("INSERT INTO intimations (vendor, pname, age, sex, doa, dod, doi, opno, ipno, hosp_details,
    triggers, claimno, insurance_tpa, policy_type, doj, claim_type, case_type, fees, mrd, transportation,created,created_by,invoice,incentive,payment,paid_date) 
    VALUES ('$values[0]','$values[1]','$values[2]','$values[3]','$values[4]','$values[5]','$values[6]','$values[7]',
    '$values[8]','$values[9]','$values[10]','$values[11]','$values[12]','$values[13]','$values[14]','$values[15]','$values[16]','$values[17]',
   '$values[18]','$values[19]','$values[23]','admin',$invoice,'$incentive','$payment','$values[25]')");
    $last_id = $dbcon->insert_id;
    $gics = "GICS" . $time . "_" . $last_id;
    $dbcon->query("UPDATE intimations set gicsid='$gics' where id='$last_id';");
    if ($invoice) {
        $year = date('Y');
        $check = $dbcon->query("SELECT * from invoice where invoice_no like '%$year%';");
        $inv_no = str_pad($check->num_rows + 1, 4, '0', STR_PAD_LEFT) . '/' . date('Y') . '-' . (substr(date('Y'), -2) + 1);
        $dbcon->query("INSERT INTO invoice (invoice_no,intimations_id) VALUES ('$inv_no','$last_id');");
    }
    $resp = new stdClass;
    $resp->gicsid = $gics;
    echo json_encode($resp);
    mysqli_close($dbcon);
} else {
    $check = $dbcon->query("SELECT * FROM intimations where id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $dbcon->query("UPDATE intimations SET vendor='$values[0]',pname='$values[1]',age='$values[2]',sex='$values[3]',doa='$values[4]',dod='$values[5]',
    doi='$values[6]',opno='$values[7]',ipno='$values[8]',hosp_details='$values[9]', incentive='$incentive',payment='$payment',paid_date='$values[25]',
    triggers='$values[10]',claimno='$values[11]',insurance_tpa='$values[12]',policy_type='$values[13]',doj='$values[14]',invoice=$invoice,
    claim_type='$values[15]',case_type='$values[16]',fees='$values[17]',mrd='$values[18]',transportation='$values[19]',created='$values[23]',created_by='admin'
    where id='$id';");
        if ($invoice) {
            $check2 = $dbcon->query("SELECT * from invoice where intimations_id='$id';");
            if ($check2->num_rows > 0) {
            } else {
                $year = date('Y');
                $check1 = $dbcon->query("SELECT * from invoice where invoice_no like '%$year%';");
                $inv_no = str_pad($check1->num_rows + 1, 4, '0', STR_PAD_LEFT) . '/' . date('Y') . '-' . (substr(date('Y'), -2) + 1);
                $dbcon->query("INSERT INTO invoice (invoice_no,intimations_id,created_date) VALUES ('$inv_no','$id','$values[23]');");
            }
        }
        mysqli_close($dbcon);
        $resp = new stdClass;
        $resp->id = $id;
        $resp->gicsid = $result['gicsid'];
        echo json_encode($resp);
    }
}
