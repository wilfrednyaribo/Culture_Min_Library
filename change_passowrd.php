<?php
session_start();
include('./db_connect.php');

if (!isset($_SESSION['login_id'])) {
    header('Location: login.php');
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];
    $user_id = $_SESSION['login_id'];

    if ($new_password !== $confirm_password) {
        $error = "Passwords do not match.";
    } elseif (strlen($new_password) < 6) {
        $error = "Password must be at least 6 characters long.";
    } else {
        $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
        $stmt = $conn->prepare("UPDATE users SET password = ?, password_changed = 1 WHERE id = ?");
        $stmt->bind_param("si", $hashed_password, $user_id);

        if ($stmt->execute()) {
            session_destroy(); // Force logout
            echo "<script>
                alert('Password changed successfully. Please log in again.');
                window.location.href = 'login.php';
            </script>";
            exit;
        } else {
            $error = "Failed to update password. Please try again.";
        }

        $stmt->close();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Change Password</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
        background: linear-gradient(to right, #a18cd1, #fbc2eb);
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    .card {
        width: 100%;
        max-width: 500px;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 4px 20px rgba(0,0,0,0.3);
        background-color: #fff;
    }
    #strength-meter {
        height: 8px;
        border-radius: 5px;
        margin-top: 5px;
    }
    .strength-0 { background: #ff4d4d; width: 20%; }
    .strength-1 { background: #ff944d; width: 40%; }
    .strength-2 { background: #ffd11a; width: 60%; }
    .strength-3 { background: #b3ff66; width: 80%; }
    .strength-4 { background: #33cc33; width: 100%; }
  </style>
</head>
<body>

<div class="card">
    <h4 class="text-center mb-4">🔒 Change Your Password</h4>
    <?php if (isset($error)): ?>
        <div class="alert alert-danger"><?= $error ?></div>
    <?php endif; ?>
    <form method="POST" id="passwordForm">
        <div class="mb-3">
            <label for="new_password" class="form-label">New Password</label>
            <input type="password" name="new_password" id="new_password" class="form-control" required minlength="6">
            <div id="strength-meter" class="mt-2"></div>
        </div>
        <div class="mb-3">
            <label for="confirm_password" class="form-label">Confirm Password</label>
            <input type="password" name="confirm_password" id="confirm_password" class="form-control" required>
        </div>
        <div id="passwordMismatch" class="text-danger mb-3" style="display:none;">❗ Passwords do not match.</div>
        <button type="submit" class="btn btn-success w-100">Update Password</button>
    </form>
</div>

<!-- Password Strength JS (zxcvbn) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/zxcvbn/4.4.2/zxcvbn.js"></script>
<script>
    const password = document.getElementById('new_password');
    const strengthMeter = document.getElementById('strength-meter');
    password.addEventListener('input', function() {
        const strength = zxcvbn(password.value).score;
        const classes = ['strength-0','strength-1','strength-2','strength-3','strength-4'];
        strengthMeter.className = classes[strength];
    });

    document.getElementById('passwordForm').addEventListener('submit', function(e) {
        const pw = document.getElementById('new_password').value;
        const cpw = document.getElementById('confirm_password').value;
        if (pw !== cpw) {
            e.preventDefault();
            document.getElementById('passwordMismatch').style.display = 'block';
        }
    });
</script>
</body>
</html>
