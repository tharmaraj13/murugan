<?php
// Handle CORS Preflight request
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    header("Access-Control-Allow-Origin:*");
    header("Access-Control-Allow-Credentials:true");
    header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, OPTIONS');
    header("Access-Control-Allow-Headers: Access-Control-Allow-Headers, Origin, Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");
    exit(0); // 🚀 Exit early, don't continue for OPTIONS
}

// For real POST request
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, OPTIONS');
header("Access-Control-Allow-Headers: Access-Control-Allow-Headers, Origin, Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

// Get raw POST data
$data = json_decode(file_get_contents("php://input"), true);
$html = $data['html'];
$header = $data['header'];

if (!$html) {
    echo "Error: No HTML content received.";
    exit(1);
}
file_put_contents("templates/temp_input.html", $html);
// API URL (your Node.js server endpoint)
$url = 'http://localhost:4000/api/v1/convert';

// Prepare POST data
$postData = json_encode([
    'html' => $html,
    'header' => $header,
    // 'filePath' => "templates/temp_input.html",
]);

// Create HTTP POST request
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Content-Type: application/json',
    'Content-Length: ' . strlen($postData),
]);

$response = curl_exec($ch);
$http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

// unlink("templates/temp_input.html");

if ($http_status == 200) {
    $responseData = json_decode($response, true);

    if (isset($responseData['blob']) && is_string($responseData['blob'])) {
        header('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document');
        header('Content-Disposition: attachment; filename="final_report.docx"');

        echo base64_decode($responseData['blob']);
    } else {
        echo "Error: Invalid response structure.";
    }
} else {
    echo "Error: Unable to generate DOCX";
}
