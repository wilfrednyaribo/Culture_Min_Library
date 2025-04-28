<?php
include 'db_connect.php';

if (!isset($_GET['id'])) {
  header("Location: index.php?page=resources");
  exit;
}

$id = intval($_GET['id']);

// Fetch existing resource
$query = "SELECT * FROM resources WHERE id = $id";
$result = mysqli_query($conn, $query);
$resource = mysqli_fetch_assoc($result);

if (!$resource) {
  echo "<div class='alert alert-danger'>Resource not found.</div>";
  exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Resource</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-lg border-0 rounded-3">
        <div class="card-header bg-warning text-dark text-center">
          <h4 class="mb-0">Edit Resource</h4>
        </div>
        <div class="card-body p-4">
          <form action="update_resource.php" method="POST">
            <input type="hidden" name="id" value="<?= $resource['id'] ?>">

            <div class="form-group mb-3">
              <label for="resource">Resource Name</label>
              <input type="text" class="form-control" id="resource" name="resource" value="<?= htmlspecialchars($resource['resource']) ?>" required>
            </div>

            <div class="form-group mb-3">
              <label for="description">Description</label>
              <textarea class="form-control" id="description" name="description" rows="3" required><?= htmlspecialchars($resource['description']) ?></textarea>
            </div>

            <div class="form-group mb-3">
              <label for="tasks">Tasks It Can Do</label>
              <textarea class="form-control" id="tasks" name="tasks" rows="3" required><?= htmlspecialchars($resource['tasks']) ?></textarea>
            </div>

            <div class="form-group mb-4">
              <label for="recommended_by">Person Recommending It</label>
              <input type="text" class="form-control" id="recommended_by" name="recommended_by" value="<?= htmlspecialchars($resource['recommended_by']) ?>" required>
            </div>

            <div class="text-center">
              <button type="submit" class="btn btn-primary px-5">Update Resource</button>
              <a href="index.php?page=resources" class="btn btn-secondary ms-2">Cancel</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
