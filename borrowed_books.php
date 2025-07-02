<?php
include 'db_connect.php';

// Handle book return
if (isset($_GET['return_id'])) {
    $return_id = (int)$_GET['return_id'];

    $conn->query("UPDATE book_issues SET return_date = CURDATE(), status = 'Returned' WHERE id = $return_id");

    $conn->query("UPDATE bookpreset 
                  SET quantity = quantity + 1 
                  WHERE book_id = (SELECT book_id FROM book_issues WHERE id = $return_id)");

    $redirect_url = basename($_SERVER['PHP_SELF']);
    if (!empty($_GET['search_id'])) {
        $redirect_url .= '?search_id=' . urlencode($_GET['search_id']);
    }

    echo "<script>
        alert('Book marked as returned.');
        window.location.href = '$redirect_url';
    </script>";
    exit;
}

$search_id = '';
$where = '';
if (isset($_GET['search_id'])) {
    $search_id = trim($_GET['search_id']);
    if (preg_match('/^\\d{8}$/', $search_id)) {
        $where = "WHERE b.borrower_id = '$search_id'";
    } else if ($search_id !== '') {
        echo "<script>alert('Please enter a valid 8-digit Borrower ID.');</script>";
    }
}

$borrowed = $conn->query("
    SELECT bi.*, 
           bp.book_title, bp.book_genre, bp.publisher, bp.year_published,
           b.full_name AS borrower_name, b.borrower_id
    FROM book_issues bi
    JOIN bookpreset bp ON bp.book_id = bi.book_id
    JOIN borrowers b ON b.id = bi.user_id
    $where
    ORDER BY bi.id DESC
");

$genres = [];
$genre_result = $conn->query("SELECT DISTINCT book_genre FROM bookpreset ORDER BY book_genre ASC");
while ($g = $genre_result->fetch_assoc()) {
    $genres[] = $g['book_genre'];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>All Borrowed Books</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="p-4">
<div class="container">
    <div class="mb-3">
        <a href="index.php?page=book_list" class="btn btn-outline-secondary">
            <i class="fas fa-arrow-left"></i> Back to Book List
        </a>
    </div>

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h3 class="mb-0">All Borrowed Books</h3>
        <div class="d-flex align-items-center">
            <!-- Trigger Print Modal -->
            <button class="btn btn-primary mr-2" data-toggle="modal" data-target="#printModal">
                <i class="fas fa-print"></i> Print
            </button>

            <!-- Search Form -->
            <form class="form-inline mb-0" method="get" action="borrowed_books.php">
                <input type="text" name="search_id" class="form-control mr-2" placeholder="Search Borrower ID" maxlength="8" pattern="\d{8}" value="<?= htmlspecialchars($search_id) ?>">
                <button type="submit" class="btn btn-info">
                    <i class="fas fa-search"></i> Search
                </button>
            </form>
        </div>
    </div>

    <table class="table table-bordered table-striped table-sm">
        <thead class="thead-dark">
        <tr>
            <th>#</th>
            <th>Book ID</th>
            <th>Book Title</th>
            <th>Genre</th>
            <th>Publisher</th>
            <th>Year</th>
            <th>Borrower ID</th>
            <th>Borrower Name</th>
            <th>Issue Date</th>
            <th>Due Date</th>
            <th>Return Date</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php $i = 1; while ($row = $borrowed->fetch_assoc()): ?>
            <tr>
                <td><?= $i++ ?></td>
                <td><?= htmlspecialchars($row['book_id']) ?></td>
                <td><?= htmlspecialchars($row['book_title']) ?></td>
                <td><?= htmlspecialchars($row['book_genre']) ?></td>
                <td><?= htmlspecialchars($row['publisher']) ?></td>
                <td><?= htmlspecialchars($row['year_published']) ?></td>
                <td><?= htmlspecialchars($row['borrower_id']) ?></td>
                <td><?= htmlspecialchars($row['borrower_name']) ?></td>
                <td><?= $row['issue_date'] ?></td>
                <td><?= $row['due_date'] ?></td>
                <td><?= $row['return_date'] ?? '-' ?></td>
                <td>
                    <?php if ($row['status'] === 'Issued'): ?>
                        <span class="badge badge-warning">Issued</span>
                    <?php else: ?>
                        <span class="badge badge-success">Returned</span>
                    <?php endif; ?>
                </td>
                <td>
                    <?php if ($row['status'] === 'Issued'): ?>
                        <a href="borrowed_books.php?return_id=<?= $row['id'] ?>&search_id=<?= urlencode($search_id) ?>"
                           class="btn btn-sm btn-success"
                           onclick="return confirm('Mark this book as returned?')">
                            Return
                        </a>
                    <?php else: ?>
                        <span class="text-muted">Returned</span>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endwhile; ?>
        </tbody>
    </table>
</div>

<!-- Print Modal -->
<div class="modal fade" id="printModal" tabindex="-1" role="dialog" aria-labelledby="printModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form method="get" action="print_borrowed_books.php" target="_blank" class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="printModalLabel">Select Print Range</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label>From Date</label>
          <input type="date" name="from_date" class="form-control" required>
        </div>
        <div class="form-group">
          <label>To Date</label>
          <input type="date" name="to_date" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Genre</label>
          <select name="genre" class="form-control">
            <option value="">All Genres</option>
            <?php foreach ($genres as $genre): ?>
                <option value="<?= htmlspecialchars($genre) ?>"><?= htmlspecialchars($genre) ?></option>
            <?php endforeach; ?>
          </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Print</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      </div>
    </form>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
