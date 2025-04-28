<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-lg-8">
      <div class="card shadow-lg border-0 rounded-4">
        <div class="card-header bg-gradient bg-primary text-white text-center rounded-top-4">
          <h4 class="mb-0"><i class="bi bi-journal-plus me-2"></i> Add New Resource</h4>
        </div>
        <div class="card-body p-5">
          <form action="save_resource.php" method="POST">
            
            <div class="mb-4">
              <label for="resource" class="form-label fw-semibold">📌 Resource Name</label>
              <input type="text" class="form-control rounded-pill px-4" id="resource" name="resource" placeholder="e.g., Microsoft Teams" required>
            </div>
            
            <div class="mb-4">
              <label for="description" class="form-label fw-semibold">📝 Description</label>
              <textarea class="form-control rounded-3" id="description" name="description" rows="3" placeholder="Short description of the resource..." required></textarea>
            </div>
            
            <div class="mb-4">
              <label for="tasks" class="form-label fw-semibold">🛠️ Tasks It Can Do</label>
              <textarea class="form-control rounded-3" id="tasks" name="tasks" rows="3" placeholder="e.g., Video conferencing, file sharing..." required></textarea>
            </div>
            
            <div class="mb-5">
              <label for="recommended_by" class="form-label fw-semibold">🙋‍♂️ Person Recommending It</label>
              <input type="text" class="form-control rounded-pill px-4" id="recommended_by" name="recommended_by" placeholder="e.g., Wilfred Omwoyo" required>
            </div>
            
            <div class="text-center">
              <button type="submit" class="btn btn-lg btn-success px-5 shadow-sm rounded-pill">
                <i class="bi bi-upload me-2"></i> Submit Resource
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
