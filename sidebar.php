<aside class="main-sidebar sidebar-dark-indigo elevation-4">
  <div class="dropdown">
    <a href="javascript:void(0)" class="brand-link dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
      <span class="brand-image img-circle elevation-3 d-flex justify-content-center align-items-center bg-primary text-white font-weight-500" style="width: 38px;height:50px">
        <?php echo strtoupper(substr($_SESSION['login_firstname'], 0, 1) . substr($_SESSION['login_lastname'], 0, 1)) ?>
      </span>
      <span class="brand-text font-weight-light"><?php echo ucwords($_SESSION['login_firstname'] . ' ' . $_SESSION['login_lastname']) ?></span>
    </a>
    <div class="dropdown-menu">
      <a class="dropdown-item manage_account" href="javascript:void(0)" data-id="<?php echo $_SESSION['login_id'] ?>">Manage Account</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="ajax.php?action=logout">Logout</a>
    </div>
  </div>

  <div class="sidebar">
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">

        <!-- Dashboard -->
        <li class="nav-item dropdown">
          <a href="./" class="nav-link nav-home">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>Dashboard</p>
          </a>
        </li>

        <!-- Library Management -->
        <li class="nav-item">
          <a href="#" class="nav-link nav-edit_library">
            <i class="nav-icon fas fa-book"></i>
            <p>
              Library Management
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">

            <!-- Presets -->
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fas fa-cog nav-icon"></i>
                <p>
                  Presets
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview ml-3">
                <li class="nav-item">
                  <a href="./index.php?page=book_presets" class="nav-link nav-book_locations tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Book Preset Details</p>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Books -->
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fas fa-cog nav-icon"></i>
                <p>
                  Books
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview ml-3">
                
               <!-- <li class="nav-item">
                  <a href="./index.php?page=new_book" class="nav-link nav-new_book tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Add New Book</p>
                  </a>
                </li> -->
      
                <li class="nav-item">
                  <a href="./index.php?page=book_list" class="nav-link nav-book_list tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Book Lists</p>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Borrowers -->
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fas fa-users nav-icon"></i>
                <p>
                  Borrowers
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview ml-3">
                <li class="nav-item">
                  <a href="./index.php?page=new_borrower" class="nav-link nav-new_borrower tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Add New Borrower</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index.php?page=borrower_list" class="nav-link nav-borrower_list tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Borrower List</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index.php?page=borrowed_books" class="nav-link nav-borrowed_books tree-item">
                    <i class="fas fa-angle-right nav-icon"></i>
                    <p>Books Borrowed</p>
                  </a>
                </li>
              </ul>
            </li>

          </ul>
        </li>

      </ul>
    </nav>
  </div>
</aside>

<script>
  $(document).ready(function () {
    var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
    if ($('.nav-link.nav-' + page).length > 0) {
      $('.nav-link.nav-' + page).addClass('active');
      if ($('.nav-link.nav-' + page).hasClass('tree-item')) {
        $('.nav-link.nav-' + page).closest('.nav-treeview').siblings('a').addClass('active');
        $('.nav-link.nav-' + page).closest('.nav-treeview').parent().addClass('menu-open');
      }
    }
    $('.manage_account').click(function () {
      uni_modal('Manage Account', 'manage_user.php?id=' + $(this).attr('data-id'));
    });
  });
</script>
