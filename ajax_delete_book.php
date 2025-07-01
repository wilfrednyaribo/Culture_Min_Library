<?php

include 'db_connect.php';

if (isset($_POST['id'])) {
    $id = $conn->real_escape_string($_POST['id']);
    $result = $conn->query("DELETE FROM bookpreset WHERE book_id = '$id'");
    if ($result) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => $conn->error]);
    }
} else {
    echo json_encode(['success' => false, 'error' => 'No ID provided']);
}
?>