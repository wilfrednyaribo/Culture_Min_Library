<?php
include 'db_connect.php';

$showSuccess = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $borrower_id = $_POST['borrower_id'];
    $full_name = $_POST['full_name'];
    $contact_number = $_POST['contact_number'];
    $email = $_POST['email'];
    $address = $_POST['address'];
   # $membership_date = $_POST['membership_date'];
   # $notes = $_POST['notes'];

    $stmt = $conn->prepare("INSERT INTO borrowers (borrower_id, full_name, contact_number, email, address) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $borrower_id, $full_name, $contact_number, $email, $address);

    if ($stmt->execute()) {
        $showSuccess = true;
    } else {
        echo "<script>alert('Error: Could not add borrower.');</script>";
    }
    $stmt->close();
}
?>

<!-- Form UI -->
<div class="container mt-4">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Add New Borrower</h3>
        </div>
        <form method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="borrower_id">Borrower ID</label>
                    <input type="text" name="borrower_id" class="form-control" id="borrower_id" required>
                </div>
                <div class="form-group">
                    <label for="full_name">Full Name</label>
                    <input type="text" name="full_name" class="form-control" id="full_name" required>
                </div>
                <div class="form-group">
                    <label for="contact_number">Contact Number</label>
                    <input type="text" name="contact_number" class="form-control" id="contact_number" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" name="email" class="form-control" id="email" required>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea name="address" class="form-control" id="address" rows="2"></textarea>
                </div>
                
                <div class="form-group">
                    <label for="membership_date">Membership Date</label>
                    <input type="date" name="membership_date" class="form-control" id="membership_date">
                </div>
                <div class="form-group">
                    <label for="notes">Notes</label>
                    <textarea name="notes" class="form-control" id="notes" rows="3"></textarea>
                </div> 
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Save Borrower</button>
                <a href="index.php?page=borrower_list" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>

<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<?php if ($showSuccess): ?>
<script>
    Swal.fire({
        title: 'Success!',
        text: 'Borrower added successfully!',
        icon: 'success',
        confirmButtonText: 'OK'
    }).then(() => {
        window.location.href = 'index.php?page=borrower_list';
    });
</script>
<?php endif; ?>
