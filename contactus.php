<?php

header("Access-Control-Allow-Origin: *");

// Allow specific HTTP methods
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Handle OPTIONS request (pre-flight)
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200); // Return OK for pre-flight
    exit; // No further processing required
}
// Database connection details
$host = 'localhost';
$username = 'root'; // Adjust if needed
$password = ''; // Adjust if needed
$db_name = 'kkgroup'; // Your database name

$conn = new mysqli($host, $username, $password, $db_name);

if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Connection failed: ' . $conn->connect_error]));
}

// Retrieve JSON data from the POST request
$json_data = file_get_contents('php://input'); // Get the raw input
$data = json_decode($json_data, true); // Decode the JSON data

// Check if JSON data was parsed correctly
if ($data === null) {
    die(json_encode(['success' => false, 'message' => 'Failed to parse JSON'])); // Parsing error
}

// Extract form data from the decoded JSON
$name = $data['name'] ?? null;
$email = $data['email'] ?? null;
$phno = $data['phno'] ?? null;
$query = $data['query'] ?? null;

// Validate form data
if (is_null($name) || is_null($email) || is_null($phno) || is_null($query)) {
    die(json_encode(['success' => false, 'message' => 'Required fields are missing'])); // Validation error
}

// Insert data into the database
$sql = "INSERT INTO contact_us (name, phno, email, query) VALUES ('$name', '$phno', '$email', '$query')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(['success' => true, 'message' => 'Data stored successfully']); // Success message
} else {
    echo json_encode(['success' => false, 'message' => 'SQL Error: ' . $conn->error]); // SQL error handling
}

$conn->close(); // Close the connection
?>
