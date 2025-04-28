<?php
// Start session if not already started
session_start();

// Include your DB connection
include 'db_connect.php'; // adjust this path if needed








session_start();
$user_name = $_SESSION['user_name'] ?? 'Guest';

// Get total resources
$totalResourcesQuery = "SELECT COUNT(*) as total FROM resources";
$totalResourcesResult = mysqli_query($conn, $totalResourcesQuery);
$totalResources = mysqli_fetch_assoc($totalResourcesResult)['total'] ?? 0;

// Get resources uploaded by this user
$userResourcesQuery = "SELECT COUNT(*) as total FROM resources WHERE recommended_by = ?";
$stmt = mysqli_prepare($conn, $userResourcesQuery);
mysqli_stmt_bind_param($stmt, 's', $user_name);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $userUploaded);
mysqli_stmt_fetch($stmt);
mysqli_stmt_close($stmt);








if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Sanitize inputs
    $resource = mysqli_real_escape_string($conn, $_POST['resource']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $tasks = mysqli_real_escape_string($conn, $_POST['tasks']);
    $recommended_by = mysqli_real_escape_string($conn, $_POST['recommended_by']);

    // Validate inputs (basic check)
    if (empty($resource) || empty($description) || empty($tasks) || empty($recommended_by)) {
        echo "<script>alert('Please fill in all fields.'); history.back();</script>";
        exit;
    }

    // Insert into DB
    $query = "INSERT INTO resources (resource, description, tasks, recommended_by)
              VALUES ('$resource', '$description', '$tasks', '$recommended_by')";

    if (mysqli_query($conn, $query)) {

        // After successful insert into database
header("Location: index.php?page=resources&added=1");
exit;


        // echo "<script>alert('Resource added successfully!'); window.location.href='resources.php';</script>";
    } else {
        echo "<script>alert('Error: ".mysqli_error($conn)."'); history.back();</script>";
    }
} else {
    echo "<script>alert('Invalid request method.'); history.back();</script>";
}
?>
