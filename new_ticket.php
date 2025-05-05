<?php
if(!isset($conn)){
    include 'db_connect.php';
}
?>
<div class="col-lg-12">
    <div class="card">
        <div class="card-body">
            <form action="" id="manage_ticket">
                <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="" class="control-label">Subject</label>
                        <input type="text" name="subject" class="form-control form-control-sm" required value="<?php echo isset($subject) ? $subject : '' ?>">
                    </div>

                    <!-- Autofilled User Field -->
                    <div class="form-group">
                        <label for="" class="control-label">User</label>
                        <input type="text" name="user" class="form-control form-control-sm" required value="<?php echo isset($_SESSION['login_firstname']) && isset($_SESSION['login_lastname']) ? ucwords($_SESSION['login_firstname'].' '.$_SESSION['login_lastname']) : ''; ?>" readonly>
                    </div>

                    <div class="form-group">
                        <label for="" class="control-label">Office</label>
                        <select name="department_id" id="department_id" class="custom-select custom-select-sm select2">
                            <option value=""></option>
                        <?php
                            $department = $conn->query("SELECT * FROM departments order by name asc");
                            while($row = $department->fetch_assoc()):
                        ?>
                            <option value="<?php echo $row['id'] ?>" <?php echo isset($department_id) && $department_id == $row['id'] ? "selected" : '' ?>><?php echo ucwords($row['name']) ?></option>
                        <?php endwhile; ?>
                        </select>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Description</label>
                        <textarea name="description" id="" cols="30" rows="10" class="form-control summernote"><?php echo isset($description) ? $description : '' ?></textarea>
                    </div>
                </div>
                <hr>
                <div class="col-lg-12 text-right justify-content-center d-flex">
                    <button class="btn btn-primary mr-2">Save</button>
                    <button class="btn btn-secondary" type="reset">Clear</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $('#manage_ticket').submit(function(e){
        e.preventDefault();
        $('input').removeClass("border-danger");
        start_load();
        $('#msg').html('');
        $.ajax({
            url: 'ajax.php?action=save_ticket',
            data: new FormData($(this)[0]),
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function(resp){
                if(resp == 1){
                    alert_toast('Data successfully saved.', "success");
                    setTimeout(function(){
                        location.replace('index.php?page=ticket_list');
                    }, 750);
                }
            }
        });
    });
</script>
