<?php 
include('db_connect.php');
// session_start();

$utype = array('', 'users', 'staff', 'customers');
$meta = [];

if (isset($_GET['id']) && isset($_SESSION['login_type']) && isset($utype[$_SESSION['login_type']])) {
    $table = $utype[$_SESSION['login_type']];
    $id = (int)$_GET['id']; // Ensure ID is safe
    $user = $conn->query("SELECT * FROM $table WHERE id = $id");

    if ($user && $user->num_rows > 0) {
        foreach ($user->fetch_array() as $k => $v) {
            $meta[$k] = $v;
        }
    }
}
?>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body, html {
        height: 100%;
        margin: 0;
        background: #f8f9fa;
    }

    .form-wrapper {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .form-card {
        width: 100%;
        max-width: 600px;
        background: white;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.15);
    }

    .input-group-text {
        cursor: pointer;
    }

    #msg {
        margin-bottom: 1rem;
    }
</style>

<div class="form-wrapper">
    <div class="form-card">
        <div id="msg"></div>

        <form action="" id="manage-user">
            <input type="hidden" name="id" value="<?php echo isset($meta['id']) ? $meta['id'] : '' ?>">
            <!-- <input type="hidden" name="table" value="<?php echo $utype[$_SESSION['login_type']] ?>"> -->

            <div class="mb-3">
                <label for="firstname" class="form-label">First Name</label>
                <input type="text" name="firstname" id="firstname" class="form-control" 
                       value="<?php echo isset($meta['firstname']) ? $meta['firstname'] : '' ?>" required>
            </div>

            <div class="mb-3">
                <label for="middlename" class="form-label">Middle Name</label>
                <input type="text" name="middlename" id="middlename" class="form-control" 
                       value="<?php echo isset($meta['middlename']) ? $meta['middlename'] : '' ?>">
            </div>

            <div class="mb-3">
                <label for="lastname" class="form-label">Last Name</label>
                <input type="text" name="lastname" id="lastname" class="form-control" 
                       value="<?php echo isset($meta['lastname']) ? $meta['lastname'] : '' ?>" required>
            </div>

            <div class="mb-3">
                <label for="username" class="form-label">Username/Email</label>
                <input type="text" name="username" id="username" class="form-control" 
                       value="<?php echo isset($meta['username']) ? $meta['username'] : '' ?>" required autocomplete="off">
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <div class="input-group">
                    <input type="password" name="password" id="password" class="form-control" autocomplete="off">
                    <button class="btn btn-outline-secondary toggle-password" type="button" data-target="#password">Show</button>
                </div>
                <small class="text-muted"><i>Leave this blank if you don't want to change the password.</i></small>
                <div id="password-strength" class="form-text text-info"></div>
            </div>

            <div class="mb-3">
                <label for="new_password" class="form-label">Enter New Password</label>
                <div class="input-group">
                    <input type="password" name="new_password" id="new_password" class="form-control" autocomplete="off">
                    <button class="btn btn-outline-secondary toggle-password" type="button" data-target="#new_password">Show</button>
                </div>
                <div id="new-password-strength" class="form-text text-info"></div>
            </div>

            <div class="mb-3">
                <label for="confirm_password" class="form-label">Confirm New Password</label>
                <div class="input-group">
                    <input type="password" name="confirm_password" id="confirm_password" class="form-control" autocomplete="off">
                    <button class="btn btn-outline-secondary toggle-password" type="button" data-target="#confirm_password">Show</button>
                </div>
            </div>

            <div class="d-flex justify-content-end">
                <button type="submit" class="btn btn-success">
                    <?php echo isset($meta['id']) ? 'Update User Details' : 'Save User'; ?>
                </button>
                <button type="button" class="btn btn-secondary ms-2" onclick="cancelForm()">Cancel</button>
            </div>
        </form>
    </div>
</div>

<!-- jQuery & Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function () {
    $('#manage-user').submit(function (e) {
        e.preventDefault();
        if (typeof start_load === 'function') start_load();

        const userId = $('input[name="id"]').val();
        const isNewUser = !userId;
        const password = $('#password').val().trim();
        const newPassword = $('#new_password').val().trim();
        const confirmPassword = $('#confirm_password').val().trim();

        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#^+=])[A-Za-z\d@$!%*?&#^+=]{8,}$/;

        if (isNewUser) {
            if (password === '') {
                showError('Password is required for new users.');
                return;
            }

            if (!passwordRegex.test(password)) {
                showError('Password must be at least 8 characters long and include uppercase, lowercase, number, and special character.');
                return;
            }
        }

        if (newPassword !== '') {
            if (!passwordRegex.test(newPassword)) {
                showError('New password must be at least 8 characters long and include uppercase, lowercase, number, and special character.');
                return;
            }

            if (newPassword !== confirmPassword) {
                showError('New passwords do not match.');
                return;
            }

            if (!isNewUser && newPassword === password) {
                showError('New password cannot be the same as the old password.');
                return;
            }
        }

        $.ajax({
            url: 'ajax.php?action=save_user',
            method: 'POST',
            data: $(this).serialize(),
            success: function (resp) {
                if (resp == 1) {
                    alert_toast("Data successfully saved", 'success');
                    setTimeout(function () {
                        location.reload();
                    }, 1500);
                } else {
                    showError('Username already exists.');
                }
            },
            error: function () {
                showError('An error occurred while saving. Please try again.');
            }
        });
    });

    $(document).on('click', '.toggle-password', function () {
        const input = $($(this).data("target"));
        const type = input.attr("type") === "password" ? "text" : "password";
        input.attr("type", type);
        $(this).text(type === "password" ? "Show" : "Hide");
    });

    function showError(message) {
        $('#msg').html(`<div class="alert alert-danger">${message}</div>`);
        if (typeof end_load === 'function') end_load();
    }
});

function cancelForm() {
    window.history.back();
}
</script>
