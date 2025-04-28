<?php
include 'db_connect.php';

if (!isset($_GET['id'])) {
    echo "<script>alert('Asset ID is missing.'); window.history.back();</script>";
    exit;
}

$id = intval($_GET['id']);
$asset = $conn->query("SELECT * FROM assets WHERE id = $id");

if ($asset->num_rows == 0) {
    echo "<script>alert('Asset not found.'); window.history.back();</script>";
    exit;
}

$data = $asset->fetch_assoc();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Collect values from form
    $asset_tag = $_POST['asset_tag'];
    $manufacturer = $_POST['manufacturer'];
    $model = $_POST['model'];
    $serial_number = $_POST['serial_number'];
    $location = $_POST['location'];
    $assigned_to = $_POST['assigned_to'];
    $status = $_POST['status'];

    // Update asset
    $update = $conn->query("UPDATE assets SET
        asset_tag = '$asset_tag',
        manufacturer = '$manufacturer',
        model = '$model',
        serial_number = '$serial_number',
        location = '$location',
        assigned_to = '$assigned_to',
        status = '$status'
        WHERE id = $id
    ");

    if ($update) {
        echo "<script>alert('Asset updated successfully.'); window.location.href='index.php?page=assets_dashboard';</script>";
    } else {
        echo "<script>alert('Error updating asset.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Asset</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">

<h3>Edit Asset</h3>
<form method="POST">
  <div class="form-group">
    <label>Asset Tag</label>
    <input type="text" name="asset_tag" class="form-control" value="<?php echo htmlspecialchars($data['asset_tag']); ?>" required>
  </div>
  <div class="form-group">
    <label>Manufacturer</label>
    <input type="text" name="manufacturer" class="form-control" value="<?php echo htmlspecialchars($data['manufacturer']); ?>">
  </div>
  <div class="form-group">
    <label>Model</label>
    <input type="text" name="model" class="form-control" value="<?php echo htmlspecialchars($data['model']); ?>">
  </div>
  <div class="form-group">
    <label>Serial Number</label>
    <input type="text" name="serial_number" class="form-control" value="<?php echo htmlspecialchars($data['serial_number']); ?>">
  </div>
  <div class="form-group">
    <label>Location</label>
    <input type="text" name="location" class="form-control" value="<?php echo htmlspecialchars($data['location']); ?>">
  </div>
  <div class="form-group">
    <label>Assigned To</label>
    <input type="text" name="assigned_to" class="form-control" value="<?php echo htmlspecialchars($data['assigned_to']); ?>">
  </div>
  <div class="form-group">
    <label>Status</label>
    <input type="text" name="status" class="form-control" value="<?php echo htmlspecialchars($data['status']); ?>">
  </div>

  <button type="submit" class="btn btn-primary">Update Asset</button>
  <a href="index.php?page=assets_dashboard" class="btn btn-secondary">Cancel</a>
</form>

</body>
</html>
