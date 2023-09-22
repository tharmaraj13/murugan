<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

include 'config.php';
$array = json_decode($_POST['values']);
$id = $array[4];
if ($id == NULL) {
    $dbcon->query("INSERT INTO staffs (
    sname,
    designation,
    blood,
    contact
) VALUES (
    '$array[0])',
    '$array[1]',
    '$array[2]',
    '$array[3]'
);");
    if ($_POST['filestat'] == 'Y') {
        $last_id = $dbcon->insert_id;
        $target_file = 'uploads/' . $last_id . '_photo.jpg';
        move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);
    }
    mysqli_close($dbcon);
} else {
    $check = $dbcon->query("SELECT * FROM staffs where id='$id';");
    if ($check->num_rows > 0) {
        $result = mysqli_fetch_assoc($check);
        $dbcon->query("UPDATE staffs SET sname='$array[0]',designation='$array[1]',blood='$array[2]',contact='$array[3]' 
        where id='$id';");
        if ($_POST['filestat'] == 'Y') {
            $last_id = $id;
            $target_file = 'uploads/' . $last_id . '_photo.jpg';
            move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);
        }
        mysqli_close($dbcon);
    }
}
