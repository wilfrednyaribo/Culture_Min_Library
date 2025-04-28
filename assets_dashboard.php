<?php 
include 'db_connect.php';

$type = isset($_GET['type']) ? $_GET['type'] : 'Asset';
$categories = $conn->query("SELECT * FROM asset_categories ORDER BY name ASC");
$query = $conn->query("SELECT * FROM assets WHERE category = '$type' ORDER BY id DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Asset Management Dashboard</title>

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


  <style>
 .btn-success:hover {
    background-color: #28a745;
    border-color: #218838;
  }

  .actions-column {
    width: 180px;
    text-align: center;
  }

  /* Sticky Header */
  .table thead th {
    position: sticky;
    top: 0;
    background-color: #343a40;
    color: white;
    z-index: 2;
  }

  .table-container {
    max-height: 600px;
    overflow-y: auto;
  }
</style>

</head>
<body>

<div class="container-fluid mt-3">
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h4 class="mb-0">Asset Management Dashboard</h4>
    <div>
      <?php while($row = $categories->fetch_assoc()): ?>
        <a href="index.php?page=assets_dashboard&type=<?php echo urlencode($row['name']); ?>" 
           class="btn btn-outline-primary btn-sm mb-1 <?php echo ($type == $row['name']) ? 'active' : ''; ?>">
          <i class="fas fa-plus-circle"></i> <?php echo htmlspecialchars($row['name']) ?>
        </a>


        
      <?php endwhile; ?>
    </div>
  </div>

  <div class="card shadow">
  <div class="card-header bg-white d-flex justify-content-between align-items-center">
  <h5 class="mb-0">
    <i class="fas fa-list"></i> Asset Listing: <?php echo htmlspecialchars($type); ?>
  </h5>
  <div>
    <button class="btn btn-light btn-sm mr-2" onclick="printAssets()">
      <i class="fas fa-print"></i> Print <?php echo htmlspecialchars($type); ?>s
    </button>
    <a href="index.php?page=add_asset&type=<?php echo urlencode($type); ?>" class="btn btn-success btn-lg text-white">
      <i class="fas fa-plus"></i> Add <?php echo htmlspecialchars($type); ?>
    </a>
  </div>
</div>


    </div>
    <div class="card-body p-0">
  <div class="table-container">
    <table id="assetTable" class="table table-bordered table-striped mb-0">
      <thead class="thead-dark">
        <tr>
          <th>#</th>
          <th>Asset Tag</th>
          <th>System Unit_Serial_Number</th>
          <th>Manufacturer</th>
          <th>System Unit_Model</th>
          <th>Monitor Model</th>
          <th>Monitor Serial</th>
          <th>Mouse Model</th>
          <th>Mouse Serial</th>
          <th>Keyboard Model</th>
          <th>Keyboard Serial</th>
          <th>Location</th>
          <th>Assigned To</th>
          <th>Status</th>
          <th class="actions-column">Actions</th>
        </tr>
      </thead>

<tbody>
  <?php 
  $i = 1;
  if ($query->num_rows > 0):
    while ($row = $query->fetch_assoc()):
  ?>
    <tr>
      <td><?php echo $i++; ?></td>
      <td><?php echo htmlspecialchars($row['asset_tag']); ?></td>
      <td><?php echo htmlspecialchars($row['serial_number']); ?></td>
      <td><?php echo htmlspecialchars($row['manufacturer']); ?></td>
      <td><?php echo htmlspecialchars($row['model']); ?></td>
      <td><?php echo htmlspecialchars($row['monitor_model']); ?></td>
      <td><?php echo htmlspecialchars($row['monitor_serial']); ?></td>
      <td><?php echo htmlspecialchars($row['mouse_model']); ?></td>
      <td><?php echo htmlspecialchars($row['mouse_serial']); ?></td>
      <td><?php echo htmlspecialchars($row['keyboard_model']); ?></td>
      <td><?php echo htmlspecialchars($row['keyboard_serial']); ?></td>
      <td><?php echo htmlspecialchars($row['location']); ?></td>
      <td><?php echo htmlspecialchars($row['assigned_to']); ?></td>
      <td><?php echo htmlspecialchars($row['status']); ?></td>
      <td class="actions-column">
  <a href="index.php?page=view_asset&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-info" title="View"><i class="fas fa-eye"></i></a>
  <a href="index.php?page=edit_asset&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-warning" title="Edit"><i class="fas fa-edit"></i></a>
  <a href="delete_asset.php?id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Are you sure you want to delete this asset?');"><i class="fas fa-trash"></i></a>
</td>

    </tr>
  <?php 
    endwhile;
  else: ?>
    <tr>
      <td colspan="15" class="text-center">No assets found for this category.</td>
    </tr>
  <?php endif; ?>
</tbody>

        </table>
      </div>
    </div>
  </div>
</div>

<!-- JS Libraries -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>

<script>
  $(document).ready(function() {
    $('#assetTable').DataTable({
      "pageLength": 10,
      "order": [[0, "asc"]],
      "language": {
        "search": "Search:",
        "zeroRecords": "No matching assets found"
      }
    });
  });








  
function printAssets() {
  // Get the data rows
  const rows = document.querySelectorAll('#assetTable tbody tr');
  let printableTable = `
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Asset Tag</th>
          <th>System Unit Serial</th>
          <th>Manufacturer</th>
          <th>System Unit Model</th>
          <th>Monitor Model</th>
          <th>Monitor Serial</th>
          <th>Mouse Model</th>
          <th>Mouse Serial</th>
          <th>Keyboard Model</th>
          <th>Keyboard Serial</th>
          <th>Location</th>
          <th>Assigned To</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
  `;

  rows.forEach(row => {
    const cells = row.querySelectorAll('td');
    if (cells.length > 0) {
      printableTable += `
        <tr>
          <td>${cells[0].innerText}</td>
          <td>${cells[1].innerText}</td>
          <td>${cells[2].innerText}</td>
          <td>${cells[3].innerText}</td>
          <td>${cells[4].innerText}</td>
          <td>${cells[5].innerText}</td>
          <td>${cells[6].innerText}</td>
          <td>${cells[7].innerText}</td>
          <td>${cells[8].innerText}</td>
          <td>${cells[9].innerText}</td>
          <td>${cells[10].innerText}</td>
          <td>${cells[11].innerText}</td>
          <td>${cells[12].innerText}</td>
          <td>${cells[13].innerText}</td>
        </tr>
      `;
    }
  });

  printableTable += `</tbody></table>`;

  const printWindow = window.open('', '', 'width=900,height=650');
  printWindow.document.write(`
    <html>
    <head>
      <title>Print Asset Listing</title>
      <style>
        body {
          font-family: Arial, sans-serif;
        }
        h3 {
          text-align: center;
          margin-bottom: 20px;
        }
        table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 30px;
        }
        th, td {
          border: 1px solid #333;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h3>Asset Listing: <?php echo htmlspecialchars($type); ?></h3>
      ${printableTable}
    </body>
    </html>
  `);
  printWindow.document.close();
  printWindow.print();
}


</script>

</body>
</html>
