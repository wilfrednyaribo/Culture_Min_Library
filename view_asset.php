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
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>View Asset</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">

<h3>Asset Details</h3>
<table class="table table-bordered">
  <?php foreach ($data as $key => $value): ?>
    <tr>
      <th><?php echo ucwords(str_replace('_', ' ', $key)); ?></th>
      <td><?php echo htmlspecialchars($value); ?></td>
    </tr>
  <?php endforeach; ?>
</table>

<a href="index.php?page=assets_dashboard" class="btn btn-secondary">Back</a>

</body>
</html>
