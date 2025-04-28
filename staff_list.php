<?php include'db_connect.php' ?>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
		<button class="btn btn-primary mb-3" onclick="printTable()">Print Staff List</button>
		<div id="printableArea">

			<table class="table table-hover table-bordered" id="list">
			<thead>
	<tr>
		<th>#</th>
		<th>Name</th>
		<th>Office</th> <!-- Still included -->
		<th>Email</th>
		<th>Action</th>
	</tr>
</thead>
<tbody>
	<?php
	$i = 1;
	$qry = $conn->query("SELECT s.*, d.name as office, CONCAT(s.lastname, ', ', s.firstname, ' ', s.middlename) as name 
						 FROM staff s 
						 LEFT JOIN departments d ON s.department_id = d.id 
						 ORDER BY name ASC");
	while($row = $qry->fetch_assoc()):
	?>
	<tr>
		<th class="text-center"><?php echo $i++ ?></th>
		<td><b><?php echo ucwords($row['name']) ?></b></td>
		<td><b><?php echo ucwords($row['office']) ?></b></td>
		<td><b><?php echo $row['email'] ?></b></td>
		<td class="text-center">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
				Action
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="./index.php?page=edit_staff&id=<?php echo $row['id'] ?>">Edit</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item delete_staff" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
			</div>
		</td>
	</tr>	
	<?php endwhile; ?>
</tbody>

			</table>
			</div>
		</div>
	</div>
</div>
<script>
function printTable() {
    // Clone only the table content to print
    var printableContent = document.getElementById('printableArea').cloneNode(true);

    // Remove the Action column (last column)
    let ths = printableContent.querySelectorAll('th:last-child');
    let tds = printableContent.querySelectorAll('td:last-child');
    ths.forEach(th => th.remove());
    tds.forEach(td => td.remove());

    // Create a print window
    var newWin = window.open('', '', 'height=800,width=1000');

    newWin.document.write(`
        <html>
        <head>
            <title>Staff List</title>
            <style>
                body {
                    margin: 40px;
                    font-family: Arial, sans-serif;
                }
                h2 {
                    text-align: center;
                    margin-bottom: 20px;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-top: 20px;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: left;
                    font-size: 14px;
                }
                th {
                    background-color: #f2f2f2;
                }
                /* Hide DataTables elements when printing */
                .dataTables_filter,
                .dataTables_length,
                .dataTables_info,
                .dataTables_paginate {
                    display: none !important;
                }
            </style>
        </head>
        <body><center>
		
		<h2>ICT UNIT</h2>
		</center>
            <h2>Staff List</h2>
            ${printableContent.innerHTML}
        </body>
        </html>
    `);

    newWin.document.close();
    newWin.focus();
    newWin.print();
    newWin.close();
}


$('.delete_staff').click(function(){
    var id = $(this).attr('data-id');
    var row = $(this).closest('tr'); // Get the table row

    Swal.fire({
        title: 'Are you sure?',
        text: "This action will permanently delete the staff member.",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: 'ajax.php?action=delete_staff',
                method: 'POST',
                data: { id: id },
                success: function(resp) {
                    if(resp == 1) {
                        // Fade out and remove row
                        row.fadeOut(500, function(){
                            $(this).remove();
                            reindexTable(); // Re-index the remaining rows
                        });

                        Swal.fire({
                            icon: 'success',
                            title: 'Deleted!',
                            text: 'Staff deleted successfully.',
                            showConfirmButton: false,
                            timer: 2000
                        });

                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: 'An error occurred while deleting.'
                        });
                    }
                }
            });
        }
    });
});

// Function to reindex # column
function reindexTable() {
    $('#list tbody tr').each(function(index){
        $(this).find('th:first').text(index + 1);
    });
}

</script>
