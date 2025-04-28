<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM departments where id = ".$_GET['id'])->fetch_array();
	foreach($qry as $k => $v){
		$$k = $v;
	}
}
?>
<div class="container-fluid">
	<form action="" id="manage-department">
		<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
		<div class="form-group">
			<label for="" class="control-label">Name</label>
			<input type="text" class="form-control form-control-sm" name="name" value = '<?php echo isset($name)? $name: '' ?>'>
		</div>
		<div class="form-group">
			<label for="" class="control-label">Location</label>
			<textarea name="description" id="" cols="30" rows="4" class="form-control"><?php echo isset($description)? $description: '' ?></textarea>
		</div>

		<!-- Buttons -->
		<div class="form-group d-flex justify-content-between gap-2 mt-3">
			<div>
				<button type="submit" class="btn btn-primary">
					<i class="fas fa-save"></i> Save
				</button>
				<button type="button" class="btn btn-secondary" onclick="location.href='index.php?page=department_list'">
					<i class="fas fa-times"></i> Cancel
				</button>
			</div>
			
			<?php if(isset($id)): ?>
			<div>
				<!-- Edit just reloads this page with the same ID -->
				<a href="index.php?page=manage_department&id=<?php echo $id ?>" class="btn btn-info">
					<i class="fas fa-edit"></i> Edit
				</a>
				<!-- Delete button -->
				<button type="button" class="btn btn-danger" onclick="delete_department(<?php echo $id ?>)">
					<i class="fas fa-trash"></i> Delete
				</button>
			</div>
			<?php endif; ?>
		</div>
	</form>
</div>

<!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<script>
	$('#manage-department').submit(function(e){
		e.preventDefault()
		$('input').removeClass("border-danger")
		start_load()
		$('#msg').html('')
		$.ajax({
			url:'ajax.php?action=save_department',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					alert_toast('Data successfully saved.',"success");
					setTimeout(function(){
						location.replace('index.php?page=department_list')
					},750)
				}else if(resp == 2){
					$('#msg').html("<div class='alert alert-danger'>Department already exists.</div>");
					$('[name="name"]').addClass("border-danger")
					end_load()
				}
			}
		})
	})

	function delete_department(id){
		if(confirm('Are you sure you want to delete this department?')){
			start_load()
			$.ajax({
				url: 'ajax.php?action=delete_department',
				method: 'POST',
				data: { id: id },
				success: function(resp){
					if(resp == 1){
						alert_toast('Department successfully deleted.', 'success');
						setTimeout(function(){
							location.replace('index.php?page=department_list')
						}, 750)
					}
				}
			})
		}
	}
</script>
