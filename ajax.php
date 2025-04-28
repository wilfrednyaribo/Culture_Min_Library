<?php
ob_start();
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();
if($action == 'login'){
	$login = $crud->login();
	if($login)
		echo $login;
}
if($action == 'logout'){
	$logout = $crud->logout();
	if($logout)
		echo $logout;
}
if($action == 'save_user'){
	$save = $crud->save_user();
	if($save)
		echo $save;
        $password = md5($_POST['password']); // or your current hashing logic
        $id = $_SESSION['login_id'];
        
        $update = $conn->query("UPDATE users SET password = '$password', password_changed = 1 WHERE id = $id");
        
        if ($update) {
            $_SESSION['password_changed_flash'] = true;
            return 1;
        }
        

}
if($action == 'save_page_img'){
	$save = $crud->save_page_img();
	if($save)
		echo $save;
}
if($action == 'delete_user'){
	$save = $crud->delete_user();
	if($save)
		echo $save;
}
if($action == "save_customer"){
	$save = $crud->save_customer();
	if($save)
		echo $save;
}
if($action == "delete_customer"){
	$delete = $crud->delete_customer();
	if($delete)
		echo $delete;
}
if($action == "save_staff"){
	$save = $crud->save_staff();
	if($save)
		echo $save;
}
if($action == "delete_staff"){
	$delete = $crud->delete_staff();
	if($delete)
		echo $delete;
}
if($action == "save_department"){
	$save = $crud->save_department();
	if($save)
		echo $save;
}

if($_GET['action'] == 'delete_department'){
	$id = $_POST['id'];
	$delete = $conn->query("DELETE FROM departments WHERE id = $id");
	if($delete)
		echo 1;
}

if ($action == "save_ticket") {
    // Validation first!
    if (empty($_POST['subject']) || empty($_POST['department_id']) || empty($_POST['description'])) {
        echo 0;
        exit;
    }

    // Then attempt to save
    $save = $crud->save_ticket();
    if ($save)
        echo $save;
}


// If all required fields are filled, continue saving
// Your logic to save the ticket to the database...


if($action == "delete_ticket"){
	$delsete = $crud->delete_ticket();
	if($delsete)
		echo $delsete;
}

if($action == "update_ticket"){
	$save = $crud->update_ticket();
	if($save)
		echo $save;
}
if($action == "save_comment"){
	$save = $crud->save_comment();
	if($save)
		echo $save;
}
if($action == "delete_comment"){
	$delsete = $crud->delete_comment();
	if($delsete)
		echo $delsete;
}

ob_end_flush();


if ($_GET['action'] == 'save_office') {
    extract($_POST);
    $data = " name = '$name', department_id = '$department_id' ";

    if (empty($id)) {
        // Check for duplicate
        $check = $conn->query("SELECT * FROM offices WHERE name = '$name' AND department_id = '$department_id'")->num_rows;
        if ($check > 0) {
            echo 2;
            exit;
        }

        $save = $conn->query("INSERT INTO offices SET $data");
    } else {
        $save = $conn->query("UPDATE offices SET $data WHERE id = $id");
    }

    if ($save)
        echo 1;
}
if ($_GET['action'] == 'delete_office') {
    $delete = $conn->query("DELETE FROM offices WHERE id = " . $_POST['id']);
    if ($delete)
        echo 1;
}
if($_GET['action'] == 'delete_staff'){
    include 'db_connect.php';
    $id = $_POST['id'];
    $delete = $conn->query("DELETE FROM staff WHERE id = $id");
    if($delete){
        echo 1;
    } else {
        echo 0;
    }
}

if($_GET['action'] == 'update_ticket_status'){
    include 'db_connect.php';
    $id = $_POST['id'];
    $status = $_POST['status'];

    $update = $conn->query("UPDATE tickets SET status = '$status' WHERE id = '$id'");
    if($update){
        echo 1;
    } else {
        echo 0;
    }
    exit;
}




if($_GET['action'] == 'assign_ticket') {
    $id = $_POST['id'];
    $assign_to = $_POST['assign_to'];

    // Check if already assigned
    $check = $conn->query("SELECT assigned_to FROM tickets WHERE id = $id")->fetch_assoc();
    if($check && !empty($check['assigned_to'])) {
        echo 0; // Already taken
        exit;
    }

    // Assign ticket
    $update = $conn->query("UPDATE tickets SET assigned_to = $assign_to WHERE id = $id");
    if($update) {
        echo 1; // Successfully assigned
    } else {
        echo 2; // Error
    }
    exit;
}



if (isset($_GET['action']) && $_GET['action'] == 'get_ticket_assignee') {
    include 'db_connect.php';

    // It's better to use $_GET or $_POST consistently
    $ticket_id = isset($_POST['id']) ? intval($_POST['id']) : 0;

    if ($ticket_id <= 0) {
        echo 'Invalid ticket ID';
        exit;
    }

    // Use prepared statement for safety
    $stmt = $conn->prepare("
        SELECT s.firstname AS staff_name 
        FROM tickets t 
        LEFT JOIN staff s ON t.assigned_to = s.id 
        WHERE t.id = ?
    ");
    $stmt->bind_param('i', $ticket_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo !empty($row['staff_name']) ? $row['staff_name'] : 'Unassigned';
    } else {
        echo 'Ticket not found';
    }

    $stmt->close();
    $conn->close();
    exit;
}



// Include your database connection
// include('db_connection.php');

// Check if the action is save_asset
if ($_GET['action'] == 'save_asset') {
    include 'db_connect.php'; // Make sure you connect to DB
  
    $asset_tag = $_POST['asset_tag'];
    $serial_number = $_POST['serial_number'];
    $manufacturer = $_POST['manufacturer'];
    $model = $_POST['model'];
    $location = $_POST['location'];
    $assigned_to = $_POST['assigned_to'];
    $status = $_POST['status'];
    $category = $_POST['category'];
    $monitor_model = $_POST['monitor_model'];
    $monitor_serial = $_POST['monitor_serial'];
    $mouse_model = $_POST['mouse_model'];
    $mouse_serial = $_POST['mouse_serial'];
    $keyboard_model = $_POST['keyboard_model'];
    $keyboard_serial = $_POST['keyboard_serial'];

  
    // Check if asset tag exists
    $chk = $conn->query("SELECT * FROM assets WHERE asset_tag = '$asset_tag'");
    if ($chk->num_rows > 0) {
      echo 2;
      exit;
    }
  
    $save = $conn->query("INSERT INTO assets (
        asset_tag, serial_number, manufacturer, model, location, assigned_to, status, category,
        monitor_model, monitor_serial, mouse_model, mouse_serial, keyboard_model, keyboard_serial
    ) VALUES (
        '$asset_tag', '$serial_number', '$manufacturer', '$model', '$location', '$assigned_to', '$status', '$category',
        '$monitor_model', '$monitor_serial', '$mouse_model', '$mouse_serial', '$keyboard_model', '$keyboard_serial'
    )");
    
  
    if ($save) {
      echo 1;
    } else {
      echo 0;
    }
    exit;
  }
  

?>
