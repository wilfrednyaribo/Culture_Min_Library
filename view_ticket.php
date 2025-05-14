<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ticket Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <!-- Summernote CSS -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-bs5.min.css" rel="stylesheet">

    <!-- Custom Styling -->
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card-header h5, .card-header h6 {
            margin-bottom: 0;
            font-weight: 600;
        }
        .card {
            border-radius: 8px;
        }
        .card-body {
            background-color: #fff;
        }
        .bg-light {
            background-color: #f8f9fa !important;
        }
        .btn-outline-secondary, .btn-outline-primary {
            border-radius: 25px;
        }
        .card-footer {
            background-color: #f9f9f9;
        }
        .form-control {
            border-radius: 25px;
        }
        .summernote2 {
            border-radius: 10px;
        }
        .comment-box {
            background-color: #e9ecef;
            border-radius: 8px;
            padding: 15px;
        }
        .comment-box-header {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border-radius: 8px 8px 0 0;
        }
        .comment-box-footer {
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 0 0 8px 8px;
        }
        .comment-box-footer .btn {
            border-radius: 20px;
        }
        .comment-box .comment-body {
            margin-top: 10px;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
        }
        .text-muted {
            color: #6c757d !important;
        }
    </style>
</head>
<body>
<?php 
include 'db_connect.php'; 

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    die("Invalid Ticket ID.");
}

$ticket_id = (int) $_GET['id'];

$stmt = $conn->prepare("
    SELECT t.*, CONCAT(c.lastname, ', ', c.firstname, ' ', c.middlename) AS cname, d.name AS dname 
    FROM tickets t 
    INNER JOIN customers c ON c.id = t.customer_id 
    INNER JOIN departments d ON d.id = t.department_id  
    WHERE t.id = ?
");
$stmt->bind_param("i", $ticket_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    die("Ticket not found.");
}

$qry = $result->fetch_assoc();
foreach ($qry as $k => $v) {
    $$k = $v;
}
?>

<div class="container py-5">
    <!-- Back Button -->
    <div class="mb-4">
        <a href="index.php?page=ticket_list" class="btn btn-outline-secondary shadow-sm">
            <i class="fas fa-arrow-left me-2"></i> Back to Tickets
        </a>
    </div>

    <div class="row g-4">
        <!-- Ticket Info -->
        <div class="col-lg-8">
            <div class="card shadow-sm border-0">
                <div class="card-header bg-primary text-white rounded-top">
                    <h5><i class="fas fa-ticket-alt me-2"></i> Ticket Details</h5>
                </div>
                <div class="card-body">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="text-muted small">Subject</div>
                            <div class="fs-5 fw-semibold text-dark"><?php echo htmlspecialchars($subject) ?></div>
                        </div>
                        <div class="col-md-6">
                            <div class="text-muted small">Requested By</div>
                            <div class="fs-6"><?php echo htmlspecialchars($cname) ?></div>
                        </div>
                        <div class="col-md-6">
                            <div class="text-muted small">Department / Office</div>
                            <div class="fs-6"><?php echo htmlspecialchars($dname) ?></div>
                        </div>
                        <div class="col-md-6">
                            <div class="text-muted small">Date Created</div>
                            <div class="fs-6"><?php echo date("F d, Y", strtotime($date_created)) ?></div>
                        </div>
                    </div>

                    <hr class="my-4">

                    <h6 class="text-muted mb-2"><i class="fas fa-exclamation-circle me-2"></i> Problem Description</h6>
                    <div class="bg-light border rounded p-3">
                        <?php echo html_entity_decode($description) ?>
                    </div>
                </div>
            </div>
        </div>

        <!-- Comments Section -->
        <div class="col-lg-4">
            <div class="card shadow-sm border-0 h-100">
                <div class="card-header bg-primary text-white rounded-top">
                    <h6 class="mb-0"><i class="fas fa-comments me-2"></i> Comments</h6>
                </div>
                <div class="card-body" style="max-height: 450px; overflow-y: auto;">
                    <?php 
                    $comments = $conn->query("SELECT * FROM comments WHERE ticket_id = $ticket_id ORDER BY unix_timestamp(date_created) ASC");
                    while($row = $comments->fetch_assoc()):
                        switch ($row['user_type']) {
                            case 1:
                                $q = $conn->query("SELECT CONCAT(lastname, ', ', firstname, ' ', middlename) AS name FROM users WHERE id = {$row['user_id']}");
                                break;
                            case 2:
                                $q = $conn->query("SELECT CONCAT(lastname, ', ', firstname, ' ', middlename) AS name FROM staff WHERE id = {$row['user_id']}");
                                break;
                            case 3:
                                $q = $conn->query("SELECT CONCAT(lastname, ', ', firstname, ' ', middlename) AS name FROM customers WHERE id = {$row['user_id']}");
                                break;
                            default:
                                $q = false;
                        }

                        $uname = $q && $q->num_rows ? $q->fetch_array()['name'] : 'Unknown';
                    ?>
                    <div class="comment-box mb-3">
                        <div class="comment-box-header d-flex justify-content-between align-items-center">
                            <strong><i class="fas fa-user-circle me-1"></i> <?php echo ucwords(htmlspecialchars($uname)) ?></strong>
                            <small><i class="far fa-clock me-1"></i><?php echo date("M d, Y", strtotime($row['date_created'])) ?></small>
                        </div>
                        <div class="comment-body p-3">
                            <?php echo html_entity_decode($row['comment']) ?>
                        </div>
                        <?php if(
                            isset($_SESSION['login_type'], $_SESSION['login_id']) &&
                            $row['user_type'] == $_SESSION['login_type'] && 
                            $row['user_id'] == $_SESSION['login_id']
                        ): ?>
                        <div class="comment-box-footer text-end">
                            <button class="btn btn-sm btn-outline-secondary me-2 edit_comment" data-id="<?php echo $row['id'] ?>"><i class="fas fa-edit me-1"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger delete_comment" data-id="<?php echo $row['id'] ?>"><i class="fas fa-trash-alt me-1"></i> Delete</button>
                        </div>
                        <?php endif; ?>
                    </div>
                    <?php endwhile; ?>
                </div>

                <div class="card-footer bg-white border-top">
                    <form action="" id="manage-comment">
                        <input type="hidden" name="id">
                        <input type="hidden" name="ticket_id" value="<?php echo $ticket_id ?>">
                        <div class="mb-3">
                            <label class="form-label fw-bold" for="comment"><i class="fas fa-plus-circle me-1"></i> Add a Comment</label>
                            <textarea name="comment" id="comment" rows="3" class="form-control summernote2" required></textarea>
                        </div>
                        <div class="text-end">
                            <button class="btn btn-sm btn-primary"><i class="fas fa-paper-plane me-1"></i> Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Summernote JS -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-bs5.min.js"></script>

<script>
    $(function () {
        $('.summernote2').summernote({
            height: 150,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'italic', 'strikethrough', 'clear']],
                ['fontsize', ['fontsize']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['view', ['undo', 'redo']]
            ]
        });

        $('.edit_comment').click(function(){
            uni_modal("Edit Comment", "manage_comment.php?id=" + $(this).data('id'));
        });

        $('#manage-comment').submit(function(e){
            e.preventDefault();
            const _this = $(this);
            const commentData = _this.serialize();
            $.ajax({
                url: 'ajax.php?action=save_comment',
                method: 'POST',
                data: commentData,
                success: function(resp){
                    if(resp == 1){
                        alert_toast("Comment posted successfully!", 'success');
                        setTimeout(() => location.reload(), 1000);
                    } else {
                        alert_toast("Failed to post comment.", 'error');
                    }
                },
                error: function(){
                    alert_toast("An error occurred while posting the comment.", 'error');
                }
            });
        });

        $('.delete_comment').click(function(){
            _conf("Delete this comment?", "delete_comment", [$(this).data('id')]);
        });
    });

    function delete_comment(id){
        start_load();
        $.ajax({
            url: 'ajax.php?action=delete_comment',
            method: 'POST',
            data: {id: id},
            success: function(resp){
                if(resp == 1){
                    alert_toast("Comment deleted", 'success');
                    setTimeout(() => location.reload(), 1500);
                }
            }
        });
    }
</script>

</body>
</html>
