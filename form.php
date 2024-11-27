<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);
    
    // Process the data (e.g., save to a database, send an email, etc.)
    echo "Form submitted successfully!";
} else {
    http_response_code(405); // Method Not Allowed
    echo "Method Not Allowed";
}
?>
