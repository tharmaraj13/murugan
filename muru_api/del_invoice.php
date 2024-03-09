<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';

$id = $_POST['id'];

$check = $dbcon->query("SELECT * FROM invoice where id='$id';");
if ($check->num_rows > 0) {
    $result = mysqli_fetch_assoc($check);
    $dbcon->query("DELETE FROM invoice where id='$id;");
    $dbcon->query("UPDATE intimations SET invoice=0, created=null
    where id IN (" . $result['intimations_id'] . ");");
}

mysqli_close($dbcon);
