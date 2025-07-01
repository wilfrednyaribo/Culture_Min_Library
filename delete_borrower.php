<?php
include 'db_connect.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = (int) $_GET['id'];
    $stmt = $conn->prepare("DELETE FROM borrowers WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        header("Location: index.php?page=borrower_list&deleted=1");
        exit;
    } else {
        echo "Error deleting borrower.";
    }
} else {
    echo "Invalid borrower ID.";
}
?>
