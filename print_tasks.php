<?php 
include 'db_connect.php';
session_start(); // Ensure session is started

// Capture logged-in user name (adjust according to your session variable)
$printed_by = isset($_SESSION['login_name']) ? $_SESSION['login_name'] : 'Unknown User';

$start = $_GET['start_date'];
$end = $_GET['end_date'];

echo "<center><h1>ICT SUPPORT REPORT SUMMARY</h1><h3>Tasks Performed from " . date('M d, Y', strtotime($start)) . " to " . date('M d, Y', strtotime($end)) . "</h3></center>";

$where = " WHERE date(t.date_created) BETWEEN '$start' AND '$end' ";
$qry = $conn->query("SELECT t.*,concat(c.lastname,', ',c.firstname,' ',c.middlename) as cname 
    FROM tickets t 
    INNER JOIN customers c ON c.id = t.customer_id 
    $where ORDER BY t.date_created DESC");

echo "<center><table border='1' cellpadding='5' cellspacing='0'>
<tr>
<th>#</th>
<th>Date</th>
<th>Client</th>
<th>Subject</th>
<th>Description</th>
<th>Status</th>
</tr>";

$i = 1;
while($row = $qry->fetch_assoc()):
    $desc = strip_tags($row['description']);
    echo "<tr>
        <td>{$i}</td>
        <td>".date('M d, Y', strtotime($row['date_created']))."</td>
        <td>{$row['cname']}</td>
        <td>{$row['subject']}</td>
        <td>{$desc}</td>
        <td>";
            if($row['status'] == 0) echo "Pending";
            elseif($row['status'] == 1) echo "Processing";
            elseif($row['status'] == 2) echo "Done";
            else echo "Closed";
    echo "</td></tr>";
    $i++;
endwhile;

echo "</table></center>";

// Footer with dynamic name and date
echo "<center><br><br><div style='width:80%; margin:auto; font-size:16px;'>
        <p><strong>Printed By:</strong> {$printed_by}</p>
        <p><strong>Signed:</strong> _____________________________</p>
       
    

    </div></center>";

echo "<script>window.print();</script>";
?>
