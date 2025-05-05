<?php 
include 'db_connect.php'; 
?>

<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>
@media print {
    p {
        display: inline;
        margin: 0;
    }
}
</style>

<div class="col-lg-12">
    <div class="card card-outline card-info">
        <div class="card-body">

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
                    <th>User</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>Assigned To</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 1;

                // Modify this where condition if you want role-based filtering
                $where = "";

                $qry = $conn->query("
                    SELECT t.*, CONCAT(s.firstname, ' ', s.lastname) AS assigned_staff_name 
                    FROM tickets t 
                    LEFT JOIN staff s ON s.id = t.assigned_to 
                    $where 
                    ORDER BY UNIX_TIMESTAMP(t.date_created) DESC
                ") or die('MySQL Error: ' . $conn->error);

                while ($row = $qry->fetch_assoc()):
                    $desc = strip_tags($row['description']);
                ?>
                <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo date("M d, Y", strtotime($row['date_created'])); ?></td>
                    <td><?php echo $row['user']; ?></td>
                    <td><?php echo $row['subject']; ?></td>
                    <td><?php echo strip_tags(html_entity_decode($row['description'])); ?></td>
                    <td>
                        <b><?php echo $row['assigned_staff_name'] ?? 'Unassigned'; ?></b>
                    </td>
                    <td class="text-center">
                        <div class="d-flex justify-content-center">
                            <button class="btn btn-sm mr-1 status-btn <?php echo $row['status'] == 2 ? 'btn-success' : 'btn-outline-success'; ?>" 
                                    data-id="<?php echo $row['id']; ?>" data-status="2">Solved</button>
                            <button class="btn btn-sm status-btn <?php echo $row['status'] == 1 ? 'btn-danger' : 'btn-outline-danger'; ?>" 
                                    data-id="<?php echo $row['id']; ?>" data-status="1">Not Solved</button>
                        </div>
                    </td>
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
</script>
