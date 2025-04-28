<?php
if(!isset($conn)){
	include 'db_connect.php';
}
?>
<div class="col-lg-12">
	<div class="card shadow-sm rounded">
		<div class="card-header bg-primary text-white">
			<h5 class="mb-0">Manage Staff</h5>
		</div>
		<div class="card-body">
			<form action="" id="manage_staff">
				<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">

				<div class="row">
					<!-- Left Side: Personal Info -->
					<div class="col-md-6 border-right">
						<h6 class="text-muted mb-3">Personal Information</h6>

						<div class="form-group">
							<label for="firstname" class="control-label">First Name</label>
							<input type="text" name="firstname" id="firstname" class="form-control" required value="<?php echo isset($firstname) ? $firstname : '' ?>">
						</div>

						<div class="form-group">
							<label for="lastname" class="control-label">Last Name</label>
							<input type="text" name="lastname" id="lastname" class="form-control" required value="<?php echo isset($lastname) ? $lastname : '' ?>">
						</div>
					</div>

					<!-- Right Side: Office and Login -->
					<div class="col-md-6">
						<div class="form-group">
							<label for="department_id" class="control-label">Office</label>
							<select name="department_id" id="department_id" class="form-control select2">
								<option value="">Select Office</option>
								<?php
									$department = $conn->query("SELECT * FROM departments ORDER BY name ASC");
									while($row = $department->fetch_assoc()):
								?>
								<option value="<?php echo $row['id'] ?>" <?php echo isset($department_id) && $department_id == $row['id'] ? "selected" : '' ?>>
									<?php echo ucwords($row['name']) ?>
								</option>
								<?php endwhile; ?>
							</select>
						</div>

						<h6 class="text-muted mb-3">System Credentials</h6>

						<div class="form-group">
							<label for="email" class="control-label">Email</label>
							<input type="email" class="form-control" name="email" id="email" required value="<?php echo isset($email) ? $email : '' ?>">
							<small id="msg"></small>
						</div>

						<div class="form-group">
							<label for="password" class="control-label">Password</label>
							<input type="password" class="form-control" name="password" id="password" <?php echo isset($id) ? "" : 'required' ?>>
							<small class="text-muted">
								<i><?php echo isset($id) ? "Leave this blank if you don't want to change the password." : '' ?></i>
							</small>
						</div>

						<div class="form-group">
							<label for="cpass" class="control-label">Confirm Password</label>
							<input type="password" class="form-control" name="cpass" id="cpass" <?php echo isset($id) ? 'required' : '' ?>>
							<small id="pass_match" data-status=''></small>
						</div>
					</div>
				</div>

				<hr>
				<div class="text-right">
					<button class="btn btn-primary mr-2">Save</button>
					<button class="btn btn-secondary" type="reset">Clear</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- JavaScript -->
<script>
	$('[name="password"], [name="cpass"]').on('keyup', function(){
		var pass = $('[name="password"]').val();
		var cpass = $('[name="cpass"]').val();
		if(cpass === '' || pass === ''){
			$('#pass_match').attr('data-status','');
		} else {
			if(cpass === pass){
				$('#pass_match').attr('data-status','1').html('<i class="text-success">Password Matched.</i>');
			} else {
				$('#pass_match').attr('data-status','2').html('<i class="text-danger">Password does not match.</i>');
			}
		}
	});

	$('#manage_staff').submit(function(e){
		e.preventDefault();
		$('input').removeClass("border-danger");
		start_load();
		$('#msg').html('');

		if($('#pass_match').attr('data-status') != 1){
			if($("[name='password']").val() != ''){
				$('[name="password"], [name="cpass"]').addClass("border-danger");
				end_load();
				return false;
			}
		}

		$.ajax({
			url: 'ajax.php?action=save_staff',
			data: new FormData($(this)[0]),
			cache: false,
			contentType: false,
			processData: false,
			method: 'POST',
			type: 'POST',
			success: function(resp){
				if(resp == 1){
					alert_toast('Data successfully saved.',"success");
					setTimeout(function(){
						location.replace('index.php?page=staff_list');
					}, 750);
				} else if(resp == 2){
					$('#msg').html("<div class='alert alert-danger'>Email already exists.</div>");
					$('[name="email"]').addClass("border-danger");
					end_load();
				}
			}
		});
	});
</script>
