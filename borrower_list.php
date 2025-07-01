<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Borrower List</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- FontAwesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <!-- DataTables CSS -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">

  <style>
    body {
      background-color: #f4f6f9;
    }

    .card {
      border-radius: 1rem;
    }

    .table thead {
      background-color: #343a40;
      color: #fff;
    }

    .table-hover tbody tr:hover {
      background-color: #f1f1f1;
    }

    .btn-sm i {
      margin-right: 4px;
    }

    .dataTables_wrapper .dt-buttons {
      margin-bottom: 15px;
    }
  </style>
</head>
<body>

<?php
include 'db_connect.php';

// Fetch all borrowers
$borrowers = $conn->query("SELECT * FROM borrowers ORDER BY id DESC");
?>

<div class="container mt-5">
  <div class="card shadow">
    <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
      <h4 class="mb-0"><i class="fas fa-users"></i> Borrower List</h4>
      <a href="index.php?page=new_borrower" class="btn btn-sm btn-success">
        <i class="fas fa-plus-circle"></i> Add New Borrower
      </a>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table id="borrowersTable" class="table table-hover table-bordered table-striped">
          <thead>
            <tr>
              <th>#</th>
              <th>Borrower ID</th>
              <th>Full Name</th>
              <th>Contact</th>
              <th>Email</th>
              <th>Address</th>
              <th>Membership Date</th>
              <th>Notes</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; while($row = $borrowers->fetch_assoc()): ?>
              <tr>
                <td><?= $i++ ?></td>
                <td><?= htmlspecialchars($row['borrower_id']) ?></td>
                <td><?= htmlspecialchars($row['full_name']) ?></td>
                <td><?= htmlspecialchars($row['contact_number']) ?></td>
                <td><?= htmlspecialchars($row['email']) ?></td>
                <td><?= htmlspecialchars($row['address']) ?></td>
                <td><?= htmlspecialchars($row['membership_date']) ?></td>
                <td><?= nl2br(htmlspecialchars($row['notes'])) ?></td>
                <td class="text-nowrap">
                  <a href="index.php?page=edit_borrower&id=<?= $row['id'] ?>" class="btn btn-sm btn-outline-info">
                    <i class="fas fa-edit"></i>Edit
                  </a>
                  <a href="#" data-id="<?= $row['id'] ?>" class="btn btn-sm btn-outline-danger delete-btn">

                    <i class="fas fa-trash-alt"></i>Delete
                  </a>
                </td>
              </tr>
            <?php endwhile; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

<script>
  $(document).ready(function () {
    $('#borrowersTable').DataTable({
      dom: 'Bfrtip',
      buttons: [
        {
          extend: 'pdfHtml5',
          text: '<i class="fas fa-file-pdf"></i> Download PDF',
          className: 'btn btn-danger btn-sm',
          title: 'Borrower List',
          exportOptions: {
            columns: [0,1,2,3,4,5,6,7]
          }
        }
      ]
    });
  });
</script>

<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
  // Deletion confirmation
  document.querySelectorAll('.delete-btn').forEach(button => {
    button.addEventListener('click', function(e) {
      e.preventDefault();
      const borrowerId = this.getAttribute('data-id');

      Swal.fire({
        title: 'Are you sure?',
        text: 'You will not be able to recover this borrower!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#6c757d',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
          window.location.href = `delete_borrower.php?id=${borrowerId}`;
        }
      });
    });
  });

  // Show success popup if deleted
  <?php if (isset($_GET['deleted']) && $_GET['deleted'] == 1): ?>
  Swal.fire({
    title: 'Deleted!',
    text: 'Borrower has been deleted successfully.',
    icon: 'success',
    confirmButtonText: 'OK'
  });
  <?php endif; ?>
</script>


</body>
</html>
