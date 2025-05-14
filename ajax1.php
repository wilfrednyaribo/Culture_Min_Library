<?php
include 'db_connect.php';

if (isset($_GET['action']) && $_GET['action'] == 'assign_ticket') {

    $ticket_id = isset($_POST['ticket_id']) ? intval($_POST['ticket_id']) : 0;
    $staff_id = isset($_POST['staff_id']) ? intval($_POST['staff_id']) : 0;

    if ($ticket_id > 0 && $staff_id > 0) {
        // Update the ticket assignment in the database
        $query = "UPDATE tickets SET assigned_to = ? WHERE id = ?";
        if ($stmt = $conn->prepare($query)) {
            $stmt->bind_param("ii", $staff_id, $ticket_id);
            if ($stmt->execute()) {
                echo 'Ticket assigned successfully.';
            } else {
                echo 'Error: Unable to assign the ticket.';
            }
            $stmt->close();
        } else {
            echo 'Error: Unable to prepare the statement.';
        }
    } else {
        echo 'Invalid ticket or staff ID.';
    }
} else {
    echo 'Invalid request.';
}

$conn->close();
?>
