<?php
include 'db_connect.php';





// Count total resources
$countQuery = "SELECT COUNT(*) as total FROM resources";
$countResult = mysqli_query($conn, $countQuery);
$totalResources = mysqli_fetch_assoc($countResult)['total'];



// Fetch all records without pagination
$query = "SELECT * FROM resources ORDER BY created_at DESC";
$result = mysqli_query($conn, $query);
?>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<div class="container py-4">



  <!-- Add Resource Button at Top Left -->
  <div class="mb-3">
    <a href="index.php?page=resource" class="btn btn-success btn-sm">
      <i class="bi bi-plus-circle me-1"></i> Add New Resource
    </a>
  </div>

  <div class="card shadow-sm border-0">
    <div class="card-header bg-primary text-white">
      <!-- <h5 class="mb-0">📚 Available Resources</h5> -->


      <h5 class="mb-0">📚 Available Resources <span class="badge bg-light text-dark ms-2"><?= $totalResources ?></span></h5>

    </div>

    <div class="card-body">
      <?php if (mysqli_num_rows($result) > 0): ?>
        <div class="table-responsive">
        <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
  <table class="table table-hover align-middle mb-0">
    <thead class="table-primary" style="position: sticky; top: 0; z-index: 1020;">
      <tr>
        <th>#</th>
        <th>Resource</th>
        <th>Description</th>
        <th>Tasks It Can Do</th>
        <th>Recommended By</th>
        <th>Created At</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <?php $count = 1; while ($row = mysqli_fetch_assoc($result)): ?>
        <tr>
          <td><?= $count++ ?></td>
          <td><strong><?= htmlspecialchars($row['resource']) ?></strong></td>
          <td><?= htmlspecialchars($row['description']) ?></td>
          <td><?= htmlspecialchars($row['tasks']) ?></td>
          <td><?= htmlspecialchars($row['recommended_by']) ?></td>
          <td><?= date('M d, Y H:i', strtotime($row['created_at'])) ?></td>
          <td>
            <button class="btn btn-sm btn-outline-primary me-1" onclick="confirmEdit(<?= $row['id'] ?>)">
              <i class="bi bi-pencil-square"></i>
            </button>
            <button class="btn btn-sm btn-outline-danger" onclick="confirmDelete(<?= $row['id'] ?>)">
              <i class="bi bi-trash3"></i>
            </button>
          </td>
        </tr>
      <?php endwhile; ?>
    </tbody>
  </table>
</div>

      <?php else: ?>
        <div class="alert alert-info mb-0">No resources found.</div>
      <?php endif; ?>
    </div>
  </div>
</div>



<!-- Success alert if resource was added -->
<?php if (isset($_GET['added']) && $_GET['added'] == 1): ?>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Swal.fire({
      icon: 'success',
      title: 'Resource Added',
      text: 'The resource has been successfully added!',
      confirmButtonColor: '#198754'
    });
  });
</script>
<?php endif; ?>

<!-- SweetAlert2 Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>






<?php if (isset($_GET['added']) && $_GET['added'] == 1): ?>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    Swal.fire({
      icon: 'success',
      title: 'Resource Added',
      text: 'The resource has been successfully added!',
      confirmButtonColor: '#198754'
    });
  });
</script>
<?php endif; ?>




<!-- SweetAlert2 Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
  function confirmDelete(id) {
    Swal.fire({
      title: 'Are you sure?',
      text: "This resource will be permanently deleted.",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#d33',
      cancelButtonColor: '#6c757d',
      confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = 'delete_resource.php?id=' + id;
      }
    });
  }

  function confirmEdit(id) {
    Swal.fire({
      title: 'Proceed to Edit?',
      icon: 'question',
      showCancelButton: true,
      confirmButtonText: 'Yes, go ahead',
      cancelButtonText: 'Cancel',
      confirmButtonColor: '#0d6efd'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = 'index.php?page=edit_resource&id=' + id;
      }
    });
  }


  
</script>
