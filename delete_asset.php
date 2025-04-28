<?php
include 'db_connect.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $delete = $conn->query("DELETE FROM assets WHERE id = $id");

    if ($delete) {
        echo "<script>alert('Asset deleted successfully.'); window.location.href = 'index.php?page=assets_dashboard';</script>";
    } else {
        echo "<script>alert('Error deleting asset.'); window.history.back();</script>";
    }
} else {
    echo "<script>alert('Invalid asset ID.'); window.history.back();</script>";
}
?>
