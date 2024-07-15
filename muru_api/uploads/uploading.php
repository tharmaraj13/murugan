<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

function saveBase64ImageToFile($base64String, $outputFile) {
    // Remove data URI scheme prefix
    $base64String = str_replace('data:image/png;base64,', '', $base64String);

    // Decode base64 string to binary data
    $binaryData = base64_decode($base64String);

    // Save binary data to a file
    $file = fopen($outputFile, 'wb');
    fwrite($file, $binaryData);
    fclose($file);

    return $outputFile;
}

// Get the raw JSON data from the request body
$jsonData = file_get_contents('php://input');

// Decode the JSON data to associative array
$data = json_decode($jsonData, true);
// Example usage
$base64String = $data['imagefile'];
saveBase64ImageToFile($base64String, 'uploads/tvsone.jpg');
