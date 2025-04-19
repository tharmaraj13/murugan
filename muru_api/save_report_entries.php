<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$values = json_decode($_POST['values'], true);
$fields = json_decode($_POST['fields'], true);
$keys   = json_decode($_POST['keys'], true);

$gicsid = $_POST['gicsid'];

// ✅ Corrected delete block
$deleteStmt = $dbcon->prepare("DELETE FROM reportEntries WHERE gicsid = ?");
$deleteStmt->bind_param("s", $gicsid);
$deleteStmt->execute();
$deleteStmt->close();

// Now insert fresh data
$stmt = $dbcon->prepare("
    INSERT INTO reportEntries (gicsid, field_name, html_value, delta_value, orderBy, field_key)
    VALUES (?, ?, ?, ?, ?, ?);
");

for ($i = 0; $i < count($fields); $i++) {
    $field_name = $fields[$i];
    $field_key = $keys[$i];
    $html_value = $values[$i]['html'];
    $delta_value = json_encode($values[$i]['delta']);
    $order_by = $i;

    $stmt->bind_param("ssssss", $gicsid, $field_name, $html_value, $delta_value, $order_by, $field_key);
    $stmt->execute();
}


$resp_status = new stdClass;
$resp_status->status = 'ok';
$resp_status->message = 'Data inserted successfully';
echo json_encode($resp_status);

$stmt->close();
$dbcon->close();
