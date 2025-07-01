<?php
include 'db_connect.php';

$book_id = $_GET['id'] ?? '';

if (!$book_id) {
    echo "No book selected.";
    exit;
}

// Fetch book details
$book = $conn->query("SELECT * FROM bookpreset WHERE book_id = '" . $conn->real_escape_string($book_id) . "'")->fetch_assoc();
if (!$book) {
    echo "Book not found.";
    exit;
}

// Fetch borrowers
$borrowers = $conn->query("SELECT id, full_name FROM borrowers ORDER BY full_name ASC");

// Handle book return
if (isset($_GET['return_id'])) {
    $return_id = (int)$_GET['return_id'];
    $conn->query("UPDATE book_issues SET return_date = CURDATE(), status = 'Returned' WHERE id = $return_id");
    $conn->query("UPDATE bookpreset SET quantity = quantity + 1 WHERE book_id = '" . $conn->real_escape_string($book_id) . "'");
    echo "<script>alert('Book marked as returned.'); window.location.href='issue_book.php?id=$book_id';</script>";
    exit;
}

// Handle issuing
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $borrower_id = $_POST['borrower_id'];
    $borrower_name = trim($_POST['borrower_name']);
    $contact_number = trim($_POST['contact_number']);
    $email = trim($_POST['email']);
    $po_box = trim($_POST['po_box']); // OLD
    $due_date = $_POST['due_date'];
    $issue_date = date('Y-m-d');

    if (!preg_match('/^\d{8,}$/', $borrower_id)) {
        echo "<script>alert('Borrower ID must be at least 8 digits.');</script>";
    } elseif ($book['quantity'] <= 0) {
        echo "<script>alert('This book is currently out of stock!');</script>";
    } else {
        // Check if borrower exists
        $stmt = $conn->prepare("SELECT id FROM borrowers WHERE borrower_id = ?");
        $stmt->bind_param('s', $borrower_id);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($row = $result->fetch_assoc()) {
            $user_id = $row['id'];
        } else {
            // Insert new borrower with all fields
            $stmt_insert = $conn->prepare("INSERT INTO borrowers (borrower_id, full_name, contact_number, email, address) VALUES (?, ?, ?, ?, ?)"); // CHANGED po_box to address
            $stmt_insert->bind_param('sssss', $borrower_id, $borrower_name, $contact_number, $email, $po_box); // $po_box is actually address
            $stmt_insert->execute();
            $user_id = $stmt_insert->insert_id;
        }

        // Issue the book
        $stmt_issue = $conn->prepare("INSERT INTO book_issues (book_id, user_id, issue_date, due_date) VALUES (?, ?, ?, ?)");
        $stmt_issue->bind_param('siss', $book_id, $user_id, $issue_date, $due_date);
        if ($stmt_issue->execute()) {
            $conn->query("UPDATE bookpreset SET quantity = quantity - 1 WHERE book_id = '" . $conn->real_escape_string($book_id) . "'");
            echo "<script>alert('Book issued successfully!'); window.location.href='issue_book.php?id=$book_id';</script>";
            exit;
        } else {
            echo "Error issuing book: " . $conn->error;
        }
    }
}

// Fetch issue history
$issues = $conn->query("
    SELECT bi.*, 
           b.full_name AS borrower_name, 
           b.borrower_id AS borrower_id_display,
           b.contact_number,
           b.email,
           b.address,
           bp.book_id AS issued_book_id,
           bp.book_title
    FROM book_issues bi
    JOIN borrowers b ON b.id = bi.user_id
    JOIN bookpreset bp ON bp.book_id = bi.book_id
    WHERE bi.book_id = '" . $conn->real_escape_string($book_id) . "'
    ORDER BY bi.id DESC
");

if (!$issues) {
    die("Failed to load issue history: " . $conn->error);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Issue Book</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="p-4">
<div class="container">
    <!-- Back Button -->
    <div class="mb-3">
        <a href="index.php?page=book_list" class="btn btn-outline-secondary">
            <i class="fas fa-arrow-left"></i> Back to Book List
        </a>
    </div>

    <!-- Issue Form -->
    <div class="card mb-4 shadow" style="background: #f8f9fa; border-radius: 8px;">
        <div class="card-header" style="background: #007bff; color: #fff; border-radius: 8px 8px 0 0; font-size: 1.25rem; font-weight: bold;">
            Issue Book: <span><?= htmlspecialchars($book['book_title']) ?></span>
        </div>
        <div class="card-body">
            <p><strong>Available Quantity:</strong> <?= (int)$book['quantity'] ?></p>
            <form method="POST">
                <div class="form-group">
                    <label>Borrower ID (at least 8 digits)</label>
                    <input type="text" name="borrower_id" class="form-control" required pattern="\d{8,}" title="At least 8 digits">
                </div>
                <div class="form-group">
                    <label>Borrower Name</label>
                    <input type="text" name="borrower_name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Contact Number (e.g. +254...)</label>
                    <input type="tel" name="contact_number" class="form-control" required pattern="^\+254\d{9}$" title="Format: +254XXXXXXXXX">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="po_box" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Due Date</label>
                    <input type="date" name="due_date" class="form-control" required min="<?= date('Y-m-d') ?>">
                </div>
                <button type="submit" class="btn btn-primary">Issue Book</button>
            </form>
        </div>
    </div>

    <!-- Issue History Table -->
    <h5 class="mt-5">Issue History</h5>
    <table class="table table-bordered table-sm">
        <thead class="thead-dark">
            <tr>
                <th>#</th>
                <th>Borrower ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Address</th> <!-- Change from P.O. Box -->
                <th>Book ID</th>
                <th>Book Title</th>
                <th>Issue Date</th>
                <th>Due Date</th>
                <th>Return Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php $count = 1; while ($row = $issues->fetch_assoc()): ?>
            <tr>
                <td><?= $count++ ?></td>
                <td><?= htmlspecialchars($row['borrower_id_display']) ?></td>
                <td><?= htmlspecialchars($row['borrower_name']) ?></td>
                <td><?= htmlspecialchars($row['contact_number']) ?></td>
                <td><?= htmlspecialchars($row['email']) ?></td>
                <td><?= htmlspecialchars($row['address']) ?></td> <!-- Change from $row['po_box'] -->
                <td><?= htmlspecialchars($row['issued_book_id']) ?></td>
                <td><?= htmlspecialchars($row['book_title']) ?></td>
                <td><?= $row['issue_date'] ?></td>
                <td><?= $row['due_date'] ?></td>
                <td><?= $row['return_date'] ?? '-' ?></td>
                <td><?= $row['status'] ?></td>
                <td>
                    <?php if ($row['status'] === 'Issued'): ?>
                        <a href="?id=<?= urlencode($book_id) ?>&return_id=<?= $row['id'] ?>"
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
</body>
</html>
