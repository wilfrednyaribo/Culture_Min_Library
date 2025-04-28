<?php include 'db_connect.php' ?>
<?php
if (isset($_GET['id'])) {
    $qry = $conn->query("SELECT * FROM offices WHERE id = " . $_GET['id'])->fetch_array();
    foreach ($qry as $k => $v) {
        $$k = $v;
    }
}
?>
<div class="container-fluid">
    <form action="" id="manage-office">
        <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
        
        <div class="form-group">
            <label class="control-label">Office Name</label>
            <input type="text" class="form-control form-control-sm" name="name" value='<?php echo isset($name) ? $name : '' ?>'>
        </div>

        <div class="form-group">
            <label class="control-label">Department</label>
            <select name="department_id" class="form-control form-control-sm" required>
                <option value="">-- Select Department --</option>
                <?php
                $departments = $conn->query("SELECT * FROM departments");
                while ($row = $departments->fetch_assoc()):
                ?>
                    <option value="<?php echo $row['id'] ?>" <?php echo isset($department_id) && $department_id == $row['id'] ? 'selected' : '' ?>>
                        <?php echo $row['name'] ?>
                    </option>
                <?php endwhile; ?>
            </select>
        </div>
    </form>
</div>

<script>
    $('#manage-office').submit(function(e) {
        e.preventDefault();
        $('input, select').removeClass("border-danger")
        start_load();
        $('#msg').html('')
        $.ajax({
            url: 'ajax.php?action=save_office',
            data: new FormData($(this)[0]),
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function(resp) {
                if (resp == 1) {
                    alert_toast('Office successfully saved.', "success");
                    setTimeout(function() {
                        location.replace('index.php?page=office_list');
                    }, 750)
                } else if (resp == 2) {
                    $('#msg').html("<div class='alert alert-danger'>Office already exists.</div>");
                    $('[name="name"]').addClass("border-danger");
                    end_load();
                }
            }
        });
    });
</script>
