<?php
$type = isset($_GET['type']) ? $_GET['type'] : 'Asset';
?>

<div class="container mt-4">
  <!-- Go Back and Forward Buttons -->
  <div class="mb-3 d-flex justify-content-between align-items-center">
    <button onclick="window.history.back()" class="btn btn-outline-secondary">
      <i class="fas fa-arrow-left"></i> Go Back
    </button>
    <button onclick="window.history.forward()" class="btn btn-outline-secondary">
      Go Forward <i class="fas fa-arrow-right"></i>
    </button>
  </div>

  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h4 class="mb-0"><i class="fas fa-plus-circle"></i> Add New <?php echo htmlspecialchars($type) ?></h4>
    </div>
    <div class="card-body">
      <form id="add-asset-form">
        <input type="hidden" name="category" value="<?php echo htmlspecialchars($type) ?>">

        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="asset_tag">Asset Tag</label>
            <input type="text" class="form-control" name="asset_tag" id="asset_tag" required>
          </div>
          <div class="form-group col-md-6">
            <label for="serial_number">System Unit_Serial Number</label>
            <input type="text" class="form-control" name="serial_number" id="serial_number" required>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="manufacturer">Manufacturer</label>
            <input type="text" class="form-control" name="manufacturer" id="manufacturer">
          </div>
          <div class="form-group col-md-6">
            <label for="model">System Unit_Model</label>
            <input type="text" class="form-control" name="model" id="model">
          </div>
        </div>

        <!-- Monitor Section -->
        <div class="form-row hide-if-printer-or-switch">
          <div class="form-group col-md-6">
            <label for="monitor_model">Monitor Model</label>
            <input type="text" class="form-control" name="monitor_model" id="monitor_model">
          </div>
          <div class="form-group col-md-6">
            <label for="monitor_serial">Monitor Serial Number</label>
            <input type="text" class="form-control" name="monitor_serial" id="monitor_serial">
          </div>
        </div>

        <!-- Mouse Section -->
        <div class="form-row hide-if-printer-or-switch">
          <div class="form-group col-md-6">
            <label for="mouse_model">Mouse Model</label>
            <input type="text" class="form-control" name="mouse_model" id="mouse_model">
          </div>
          <div class="form-group col-md-6">
            <label for="mouse_serial">Mouse Serial Number</label>
            <input type="text" class="form-control" name="mouse_serial" id="mouse_serial">
          </div>
        </div>

        <!-- Keyboard Section -->
        <div class="form-row hide-if-printer-or-switch">
          <div class="form-group col-md-6">
            <label for="keyboard_model">Keyboard Model</label>
            <input type="text" class="form-control" name="keyboard_model" id="keyboard_model">
          </div>
          <div class="form-group col-md-6">
            <label for="keyboard_serial">Keyboard Serial Number</label>
            <input type="text" class="form-control" name="keyboard_serial" id="keyboard_serial">
          </div>
        </div>

        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="location">Location(Office)</label>
            <input type="text" class="form-control" name="location" id="location">
          </div>
          <div class="form-group col-md-6">
            <label for="assigned_to">Assigned To(Person Incharge)</label>
            <input type="text" class="form-control" name="assigned_to" id="assigned_to">
          </div>
        </div>

        <div class="form-group">
          <label for="status">Status of gadget</label>
          <select name="status" id="status" class="form-control">
            <option value="Active">Active</option>
            <option value="In Repair">In Repair</option>
            <option value="Retired">Retired</option>
            <option value="Disposed">Disposed</option>
          </select>
        </div>

        <div class="text-right">
          <button type="submit" class="btn btn-success">
            <i class="fas fa-save"></i> Save <?php echo htmlspecialchars($type) ?>
          </button>
          <a href="index.php?page=assets_dashboard" class="btn btn-secondary">
            <i class="fas fa-arrow-left"></i> Cancel
          </a>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
  $(document).ready(function () {
  var type = "<?php echo strtolower(trim($type)); ?>";
  console.log("Asset type:", type); // Debug line

  if (type === "printer" || type === "switch") {
    $('.hide-if-printer-or-switch').hide();
  }

  // AJAX Submit (unchanged)
  $('#add-asset-form').submit(function (e) {
    e.preventDefault();
    start_load();

    $.ajax({
      url: 'ajax.php?action=save_asset',
      method: 'POST',
      data: $(this).serialize(),
      success: function (resp) {
        if (resp == 1) {
          alert_toast("Asset successfully saved!", "success");
          setTimeout(function () {
            location.href = "index.php?page=assets_dashboard";
          }, 1000);
        } else if (resp == 2) {
          alert_toast("Asset tag already exists!", "warning");
          end_load();
        } else {
          alert_toast("Failed to save asset.", "danger");
          end_load();
        }
      },
      error: function (xhr, status, error) {
        alert_toast("AJAX error: " + error, "danger");
        end_load();
      }
    });
  });
});

</script>
