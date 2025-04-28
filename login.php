<!DOCTYPE html>
<html lang="en">
<?php 
session_start();
include('./db_connect.php');
?>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Login | ICT Ticketing Support System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <?php include('./header.php'); ?>
  <?php 
  if(isset($_SESSION['login_id']))
    header("location:index.php?page=home");
  ?>
  <style>
    body {
		background: linear-gradient(to right, #a18cd1, #fbc2eb);
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .card {
      border-radius: 1rem;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    }
    .form-label {
      font-weight: bold;
    }
    .login-title {
      color: white;
      text-align: center;
      margin-bottom: 20px;
    }
    .form-control {
      padding-left: 40px;
    }
    .icon-input {
      position: absolute;
      left: 10px;
      top: 50%;
      transform: translateY(-50%);
    }
    .input-group {
      position: relative;
    }
  </style>
</head>
<body>


  <div class="container">
  <h1 class="login-title">
  <span style="color: white;">ICT </span>
  <span style="color: red;">Ticketing </span>
  <span style="color: black;">Support </span>
  <span style="color: green;">System </span>
</h1>

    <div class="row justify-content-center">
      <div class="col-md-5">
        <div class="card p-4">
          <div class="card-body">
            <form id="login-form">
              <div class="mb-3 input-group">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
              </div>
              <div class="mb-3 input-group">
                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
              </div>
              <div class="mb-3">
                <label for="type" class="form-label">Login As</label>
                <select name="type" class="form-select" required>
                  <option value="3">Client</option>
                  <option value="2">Staff</option>
                  <option value="1">Admin</option>
                </select>
              </div>
              <button type="submit" class="btn btn-primary w-100">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <script>
    $('#login-form').submit(function(e){
      e.preventDefault();
      const btn = $(this).find('button[type="submit"]');
      btn.attr('disabled', true).text('Logging in...');
      $('.alert-danger').remove();

      $.ajax({
        url: 'ajax.php?action=login',
        method: 'POST',
        data: $(this).serialize(),
        error: err => {
          console.error(err);
          btn.removeAttr('disabled').text('Login');
        },
        success: function(resp){
          if(resp == 1){
            location.href = 'index.php?page=home';
          } else {
            $('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>');
            btn.removeAttr('disabled').text('Login');
          }
        }
      });
    });


    


  </script>
</body>
</html>
