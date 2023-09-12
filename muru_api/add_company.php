<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$iname = $_POST['iname'];
$pan = $_POST['pan'];
$gstin = $_POST['gstin'];
$hsn = $_POST['hsn'];
$description = $_POST['description'];
$bank = $_POST['bank'];
$branch = $_POST['branch'];
$accno = $_POST['accno'];
$ifsc = $_POST['ifsc'];

$resp_status = new stdClass;


$check = $dbcon->query("SELECT * from company;");
if ($check->num_rows > 0) {
    $dbcon->query("UPDATE company set company_name='$iname',pan='$pan',gstin='$gstin',hsn='$hsn',
        description='$description',bank='$bank',branch='$branch',accno='$accno',ifsc='$ifsc';");
    $resp_status->status = 'ok';
    $resp_status->message = 'No Details';
    echo json_encode($resp_status);
} else {
    $dbcon->query("INSERT INTO company (company_name,pan,gstin,hsn,description,bank,branch,accno,ifsc) VALUES
        ('$iname','$pan','$gstin','$hsn','$description','$bank','$branch','$accno','$ifsc');");
    $resp_status->status = 'ok';
    $resp_status->message = 'No Details';
    echo json_encode($resp_status);
}
mysqli_close($dbcon);
