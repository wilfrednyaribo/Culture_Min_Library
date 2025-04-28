<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $id = intval($_POST['id']);
  $resource = mysqli_real_escape_string($conn, $_POST['resource']);
  $description = mysqli_real_escape_string($conn, $_POST['description']);
  $tasks = mysqli_real_escape_string($conn, $_POST['tasks']);
  $recommended_by = mysqli_real_escape_string($conn, $_POST['recommended_by']);

  $query = "UPDATE resources SET 
              resource = '$resource',
              description = '$description',
              tasks = '$tasks',
              recommended_by = '$recommended_by'
            WHERE id = $id";

  if (mysqli_query($conn, $query)) {
    header("Location: index.php?page=resources");
    exit;
  } else {
    echo "Update failed: " . mysqli_error($conn);
  }
}
