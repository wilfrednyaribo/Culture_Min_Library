<?php
include 'db_connect.php';

$showSuccess = false;

// Validate the ID
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    die("Invalid or missing borrower ID.");
}

$id = (int)$_GET['id'];

// Fetch borrower data
$stmt = $conn->prepare("SELECT * FROM borrowers WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$borrower = $result->fetch_assoc();

if (!$borrower) {
    die("Borrower not found.");
}

// Handle update form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $borrower_id     = $_POST['borrower_id'];
    $full_name       = $_POST['full_name'];
    $contact_number  = $_POST['contact_number'];
    $email           = $_POST['email'];
    $address         = $_POST['address'];
    $membership_date = $_POST['membership_date'];
    $notes           = $_POST['notes'];

    $update = $conn->prepare("UPDATE borrowers SET borrower_id=?, full_name=?, contact_number=?, email=?, address=?, membership_date=?, notes=? WHERE id=?");
    $update->bind_param("sssssssi", $borrower_id, $full_name, $contact_number, $email, $address, $membership_date, $notes, $id);

    if ($update->execute()) {
        $showSuccess = true;
    } else {
        echo "<script>alert('Error: Could not update borrower.');</script>";
    }
}
?>

<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<?php if ($showSuccess): ?>
<script>
    Swal.fire({
        title: 'Success!',
        text: 'Borrower updated successfully!',
        icon: 'success',
        confirmButtonText: 'OK'
    }).then(() => {
        window.location.href = 'index.php?page=borrower_list';
    });
</script>
<?php endif; ?>

<!-- Form UI -->
<div class="container mt-4">
    <div class="card card-info">
        <div class="card-header">
            <h3 class="card-title">Edit Borrower</h3>
        </div>
        <form method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="borrower_id">Borrower ID</label>
                    <input type="text" name="borrower_id" class="form-control" id="borrower_id" required value="<?= htmlspecialchars($borrower['borrower_id']) ?>">
                </div>
                <div class="form-group">
                    <label for="full_name">Full Name</label>
                    <input type="text" name="full_name" class="form-control" id="full_name" required value="<?= htmlspecialchars($borrower['full_name']) ?>">
                </div>
                <div class="form-group">
                    <label for="contact_number">Contact Number</label>
                    <input type="text" name="contact_number" class="form-control" id="contact_number" value="<?= htmlspecialchars($borrower['contact_number']) ?>">
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" name="email" class="form-control" id="email" value="<?= htmlspecialchars($borrower['email']) ?>">
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea name="address" class="form-control" id="address" rows="2"><?= htmlspecialchars($borrower['address']) ?></textarea>
                </div>
                <div class="form-group">
                    <label for="membership_date">Membership Date</label>
                    <input type="date" name="membership_date" class="form-control" id="membership_date" value="<?= htmlspecialchars($borrower['membership_date']) ?>">
                </div>
                <div class="form-group">
                    <label for="notes">Notes</label>
                    <textarea name="notes" class="form-control" id="notes" rows="3"><?= htmlspecialchars($borrower['notes']) ?></textarea>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-info">Update Borrower</button>
                <a href="index.php?page=borrower_list" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>
