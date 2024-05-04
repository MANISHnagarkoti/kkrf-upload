<?php
header("Access-Control-Allow-Origin: *"); 
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

$host = 'localhost';
$username = 'root';
$password = '';
$db_name = 'kkgroup';

$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // JSON data process karen
    $json = file_get_contents('php://input');
    $data = json_decode($json, true);

if ($data === null) {
        die(json_encode(['status' => 'error', 'message' => 'Failed to parse JSON']));
    }

    
    $name = $data['name'] ?? null;
    $mobile = $data['mobile'] ?? null;
    $email = $data['email'] ?? null;
    $company = $data['company'] ?? null;

if (is_null($name) || is_null($mobile) || is_null($email) || is_null($company)) {
        die(json_encode(['status' => 'error', 'message' => 'Missing Data']));
    }

$sql = "INSERT INTO formdata (name, mobile, email, company) VALUES ('$name', '$mobile', '$email', '$company')";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(['status' => 'success', 'message' => 'Data saved successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'SQL Error: ' . $conn->error]);
    }
} else {
    echo "This endpoint requires a POST request with JSON data."; // GET request ke liye specific message
}



$conn->close();
?>
