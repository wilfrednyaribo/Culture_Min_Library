<?php
include 'db_connect.php'; // make sure this connects to your DB

// Get the type from the URL
$type = isset($_GET['type']) ? $_GET['type'] : 'Asset';  // Default to 'Asset' if no type is set

// Query based on the asset type
$query = $conn->query("SELECT * FROM printer_details WHERE category = '$type' ORDER BY id DESC"); // Make sure 'category' column is in your table
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Asset Listing</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<div class="container mt-4">
  <div class="d-flex justify-content-between mb-3">
    <h3><i class="fas fa-list"></i> Asset Listing: <?php echo htmlspecialchars($type); ?></h3>
    <a href="index.php?page=assets_dashboard" class="btn btn-primary"><i class="fas fa-plus"></i> Add New Asset</a>
  </div>

  <table class="table table-bordered table-striped">
    <thead class="thead-dark">
      <tr>
        <th>#</th>
        <th>Asset Tag</th>
        <th>Serial Number</th>
        <th>Manufacturer</th>
        <th>Model</th>
        <th>Location</th>
        <th>Assigned To</th>
        <th>Status</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $i = 1;
      while ($row = $query->fetch_assoc()):
      ?>
        <tr>
          <td><?php echo $i++; ?></td>
          <td><?php echo htmlspecialchars($row['asset_tag']) ?></td>
          <td><?php echo htmlspecialchars($row['serial_number']) ?></td>
          <td><?php echo htmlspecialchars($row['manufacturer']) ?></td>
          <td><?php echo htmlspecialchars($row['model']) ?></td>
          <td><?php echo htmlspecialchars($row['location']) ?></td>
          <td><?php echo htmlspecialchars($row['assigned_to']) ?></td>
          <td><?php echo htmlspecialchars($row['status']) ?></td>
          <td>
            <a href="#" class="btn btn-sm btn-info"><i class="fas fa-eye"></i></a>
            <a href="#" class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
            <a href="#" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
          </td>
        </tr>
      <?php endwhile; ?>
    </tbody>
  </table>
</div>

</body>
</html>
