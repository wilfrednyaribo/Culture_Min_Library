<?php include('db_connect.php'); ?>

<?php if ($_SESSION['login_type'] == 1): ?>
  <div class="row">
    <?php
    // Fetch genres and their book counts from bookpreset
    $genre_query = $conn->query("SELECT book_genre, COUNT(*) as total FROM bookpreset GROUP BY book_genre");
    $colors = ['bg-primary', 'bg-success', 'bg-warning', 'bg-info', 'bg-danger', 'bg-secondary', 'bg-dark'];
    $i = 0;
    while ($row = $genre_query->fetch_assoc()):
      $genre = urlencode($row['book_genre']);
      $color = $colors[$i % count($colors)];
      $i++;
    ?>
      <div class="col-12 col-sm-6 col-md-3 mb-4">
        <a href="index.php?page=book_list&genre=<?php echo $genre; ?>" style="text-decoration: none;">
          <div class="card shadow-sm border-0 h-100 genre-card hover-effect">
            <div class="card-body d-flex flex-column align-items-center justify-content-center text-center p-4">
              <div class="icon-circle <?php echo $color; ?> text-white mb-3">
                <i class="fas fa-book fa-2x"></i>
              </div>
              <h6 class="card-title mb-1"><?php echo ucwords($row['book_genre']); ?></h6>
              <span class="badge badge-pill badge-light text-dark">
                <?php echo $row['total']; ?> book(s)
              </span>
            </div>
          </div>
        </a>
      </div>
    <?php endwhile; ?>
  </div>

  <!-- Custom CSS for hover effect and layout -->
  <style>
    .genre-card {
      border-radius: 15px;
      transition: transform 0.2s ease-in-out, box-shadow 0.2s ease;
    }

    .genre-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
    }

    .icon-circle {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .card-title {
      font-weight: 600;
      font-size: 1rem;
    }

    .badge-pill {
      font-size: 0.85rem;
      padding: 0.5em 0.75em;
    }
  </style>
<?php else: ?>
  <div class="col-12">
    <div class="card">
      <div class="card-body">
        Welcome <?php echo $_SESSION['login_name']; ?>!
      </div>
    </div>
  </div>
<?php endif; ?>
