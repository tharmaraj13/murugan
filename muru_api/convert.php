<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Credentials:true");
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');
header("Access-Control-Allow-Headers:Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");

// Get raw POST data
$data = json_decode(file_get_contents("php://input"), true);
$html = $data['html'];

// Save HTML to a temp file
file_put_contents("templates/temp_input.html", $html);

// Call Pandoc to convert to DOCX using reference doc if needed
$cmd = 'pandoc templates/temp_input.html -o templates/output.docx --reference-doc=templates/temp.docx';
exec($cmd);

// Send the resulting file as response
header('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document');
header('Content-Disposition: attachment; filename="final_report.docx"');
readfile("templates/output.docx");

// Clean up
unlink("templates/temp_input.html");
unlink("templates/output.docx");
