<?php 
// session_start(); // Ensure the session is started
include 'db_connect.php'; 
?>

<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>
@media print {
    p {
        display: inline; /* or none if you want to completely hide them */
        margin: 0;
    }
}
</style>



<div class="col-lg-12">
    <div class="card card-outline card-info">
        <div class="card-body">

        <?php if ($_SESSION['login_type'] == 1): ?>
            <!-- Button to trigger print modal -->
            <div class="mb-3">
              <button class="btn btn-success" data-toggle="modal" data-target="#printModal">
                <i class="fa fa-print"></i> Print Tasks by Date Range
              </button>
            </div>

            <!-- Print Date Filter Modal -->
            <div class="modal fade" id="printModal" tabindex="-1" role="dialog" aria-labelledby="printModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <form id="printForm" target="_blank" action="print_tasks.php" method="GET">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="printModalLabel">Select Date Range</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-group">
                        <label for="start_date">Start Date</label>
                        <input type="date" name="start_date" id="start_date" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="end_date">End Date</label>
                        <input type="date" name="end_date" id="end_date" class="form-control" required>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Print</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
        <?php endif; ?>

        <!-- Table -->
        <table class="table table-hover table-bordered" id="list">
            <colgroup>
                <col width="5%">
                <col width="15%">
                <col width="20%">
                <col width="15%">
                <col width="25%">
                <col width="10%">
                <col width="10%">
            </colgroup>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Date Created</th>
                    <th>Names</th>
                    <th>Subject</th>
                    <th>Description</th>
				
					
					<?php if($_SESSION['login_type'] != 3): ?>
                        <th>Person Assigned</th>
                    <?php endif; ?>


                    <th>Status</th>
                    <?php if($_SESSION['login_type'] != 3): ?>
                        <th>Action</th>
                    <?php endif; ?>
                </tr>
            </thead>
            <tbody>






			
                <?php
                $i = 1;
                $where = '';
if ($_SESSION['login_type'] == 1) {
    // Admin: see all
    $where = "";
} elseif ($_SESSION['login_type'] == 2) {
    // Staff: see all (or filter by department if needed)
    $where = "";
    // If you want to limit staff by department, uncomment below:
    // $where = " WHERE t.department_id = {$_SESSION['login_department_id']} ";
} elseif ($_SESSION['login_type'] == 3) {
    // User: only their own tickets
    $where = " WHERE t.customer_id = {$_SESSION['login_id']} ";
}




$qry = $conn->query("SELECT t.*, 
CONCAT(c.lastname, ', ', c.firstname, ' ', c.middlename) AS cname, 
CONCAT(u.firstname, ' ', u.lastname) AS assigned_staff_name
FROM tickets t 
INNER JOIN customers c ON c.id = t.customer_id 
LEFT JOIN users u ON u.id = t.assigned_to 
$where 
ORDER BY UNIX_TIMESTAMP(t.date_created) DESC");




                while ($row = $qry->fetch_assoc()):
                    $trans = get_html_translation_table(HTML_ENTITIES, ENT_QUOTES);
                    unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
                    $desc = strtr(html_entity_decode($row['description']), $trans);
                    $desc = str_replace(["<li>", "</li>"], ["", ", "], $desc);
                ?>
                <tr>
                    <th class="text-center"><?php echo $i++; ?></th>
                    <td><b><?php echo date("M d, Y", strtotime($row['date_created'])); ?></b></td>
                    <td><b><?php echo ucwords($row['cname']); ?></b></td>
                    <td><b><?php echo $row['subject']; ?></b></td>
                    <td><b class="truncate"><?php echo strip_tags($desc); ?></b></td>


	





					<?php if($_SESSION['login_type'] != 3): ?>
<td class="text-center">
    <?php if($row['assigned_to']): ?>
        <b><?php echo $row['assigned_staff_name']; ?></b>
    <?php elseif($_SESSION['login_type'] == 2): ?>
        <form method="post" class="assign-form" data-id="<?php echo $row['id']; ?>">
            <select name="assign_to" class="form-control form-control-sm assign-dropdown">
                <option value="">-- Assign to Me --</option>
                <option value="<?php echo $_SESSION['login_id']; ?>">Assign Myself</option>
            </select>
        </form>
    <?php else: ?>
        <button class="btn btn-info btn-sm view-assignee-btn mt-1" title="View Assignee" data-id="<?= $row['id'] ?>"> 
            <i class="fas fa-user-tag"></i>
        </button>
    <?php endif; ?>
</td>
<?php endif; ?>










					<td class="text-center">
    <div class="d-flex justify-content-center">
        <button class="btn btn-sm mr-1 status-btn <?php echo $row['status'] == 2 ? 'btn-success' : 'btn-outline-success'; ?>" 
                data-id="<?php echo $row['id']; ?>" data-status="2">Solved</button>
        <button class="btn btn-sm status-btn <?php echo $row['status'] == 1 ? 'btn-danger' : 'btn-outline-danger'; ?>" 
                data-id="<?php echo $row['id']; ?>" data-status="1">Not Solved</button>
    </div>

	


</td>





                    <?php if($_SESSION['login_type'] != 3): ?>
                        <td class="text-center">
                            <a href="./index.php?page=view_ticket&id=<?php echo $row['id']; ?>" class="btn btn-primary">View More</a>
                        </td>
                    <?php endif; ?>
                </tr>    
                <?php endwhile; ?>
            </tbody>
        </table>




		
    </div>
</div>
</div>

<script>
    $(document).ready(function(){
        $('#list').dataTable();
        $('.delete_ticket').click(function(){
            _conf("Are you sure to delete this ticket?", "delete_ticket", [$(this).attr('data-id')]);
        });
    });

    function delete_ticket(id){
        start_load();
        $.ajax({
            url: 'ajax.php?action=delete_ticket',
            method: 'POST',
            data: { id: id },
            success: function(resp){
                if(resp == 1){
                    alert_toast("Data successfully deleted", 'success');
                    setTimeout(function(){
                        location.reload();
                    }, 1500);
                }
            }
        });
    }



	$(document).ready(function(){
    $('.status-btn').click(function(){
        var button = $(this);
        var id = button.data('id');
        var status = button.data('status');

        $.ajax({
            url: 'ajax.php?action=update_ticket_status',
            method: 'POST',
            data: { id: id, status: status },
            success: function(resp){
                if(resp == 1){
                    // Update UI
                    var row = button.closest('td');
                    row.find('.status-btn').removeClass('btn-success btn-danger')
                                           .addClass('btn-outline-success btn-outline-danger');
                    
                    if(status == 2){
                        button.removeClass('btn-outline-success').addClass('btn-success');
                    } else {
                        button.removeClass('btn-outline-danger').addClass('btn-danger');
                    }

                    alert_toast("Ticket status updated!", 'success');
                }
            }
        });
    });
});

	





$(document).on('change', '.assign-dropdown', function(e) {
    e.preventDefault();
    var form = $(this).closest('.assign-form');
    var ticketId = form.data('id');
    var assignTo = $(this).val();

    if(assignTo) {
        $.ajax({
            url: 'ajax.php?action=assign_ticket',
            method: 'POST',
            data: { id: ticketId, assign_to: assignTo },
            success: function(resp) {
                if(resp == '1') {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'Ticket assigned successfully!',
                        timer: 1500,
                        showConfirmButton: false
                    }).then(() => {
                        location.reload();
                    });
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'This ticket has already been taken by another staff!',
                    });
                }
            },
            error: function() {
                Swal.fire({
                    icon: 'error',
                    title: 'Server Error',
                    text: 'Failed to assign ticket. Please try again later.',
                });
            }
        });
    }
});


  


$(document).on('click', '.view-assignee-btn', function() {
    var ticketId = $(this).data('id');

    $.ajax({
        url: 'ajax.php?action=get_ticket_assignee',
        method: 'POST',
        data: { id: ticketId },
        success: function(resp) {
            Swal.fire({
                title: 'Ticket Assignment',
                text: 'Assigned to: ' + resp,
                icon: 'info',
                confirmButtonText: 'Close'
            });
        },
        error: function() {
            Swal.fire({
                icon: 'error',
                title: 'Oops!',
                text: 'Failed to fetch assignee information.'
            });
        }
    });
});












</script>
