<?php
include 'db_connect.php';

if (isset($_GET['id'])) {
  $id = intval($_GET['id']);
  $query = "DELETE FROM resources WHERE id = $id";
  mysqli_query($conn, $query);
}

header("Location: index.php?page=resources");
exit;
