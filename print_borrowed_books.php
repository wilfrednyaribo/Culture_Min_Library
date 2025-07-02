<?php
include 'db_connect.php';

$from_date = $_GET['from_date'] ?? '';
$to_date = $_GET['to_date'] ?? '';
$genre = $_GET['genre'] ?? '';

$where = [];
if ($from_date && $to_date) {
    $where[] = "bi.issue_date BETWEEN '$from_date' AND '$to_date'";
}
if ($genre) {
    $where[] = "bp.book_genre = '" . $conn->real_escape_string($genre) . "'";
}
$where_sql = count($where) ? "WHERE " . implode(" AND ", $where) : "";

$result = $conn->query("
    SELECT bi.*, 
           bp.book_title, bp.book_genre, bp.publisher, bp.year_published,
           b.full_name AS borrower_name, b.borrower_id
    FROM book_issues bi
    JOIN bookpreset bp ON bp.book_id = bi.book_id
    JOIN borrowers b ON b.id = bi.user_id
    $where_sql
    ORDER BY bi.id DESC
");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Culture Min-library</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        @media print {
            * {
                -webkit-print-color-adjust: exact !important;
                print-color-adjust: exact !important;
            }
        }
    </style>
</head>
<body class="p-4">
    <div class="text-center mb-4">
        <h3>Borrowed Books Report</h3>
        <p class="mb-0">
            <strong>From:</strong> <?= htmlspecialchars($from_date) ?> &nbsp;
            <strong>To:</strong> <?= htmlspecialchars($to_date) ?> &nbsp;
            <strong>Genre:</strong> <?= $genre ? htmlspecialchars($genre) : 'All Genres' ?>
        </p>
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
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; while ($row = $result->fetch_assoc()): ?>
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
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <script>
        window.onload = function () {
            window.print();
        };

        window.onafterprint = function () {
            window.location.href = 'index.php?page=borrowed_books';
        };
    </script>
</body>
</html>
