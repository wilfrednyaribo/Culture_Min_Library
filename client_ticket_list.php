<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-info">
		<div class="card-body">

			<!-- Print button for admins/staff only -->
			<?php if ($_SESSION['login_type'] != 3): ?>
				<div class="mb-3 text-right">
					<button onclick="window.print()" class="btn btn-primary btn-sm">
						<i class="fa fa-print"></i> Print Tasks
					</button>
				</div>
			<?php endif; ?>

			<!-- Table -->
			<div id="task-table">
				<table class="table table-hover table-bordered" id="list">
					<colgroup>
						<col width="20%"/>
						<col width="20%"/>
						<col width="40%"/>
						<col width="20%"/>
					</colgroup>
					<thead>
						<tr>
							<th>Date Created</th>
							<th>Subject</th>
							<th>Description</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$where = '';
						if ($_SESSION['login_type'] == 3) {
							$where = " WHERE t.customer_id = {$_SESSION['login_id']} ";
						}

						$qry = $conn->query("SELECT t.* FROM clients_tickets_list t $where ORDER BY t.date_created DESC");

						while ($row = $qry->fetch_assoc()):
							$trans = get_html_translation_table(HTML_ENTITIES, ENT_QUOTES);
							unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
							$desc = strtr(html_entity_decode($row['description']), $trans);
							$desc = str_replace(array("<li>", "</li>"), array("", ", "), $desc);

							if ($row['status'] == "Not Solved" || $row['status'] == 0 || $row['status'] == 1) {
								$status = "Not Solved";
								$btn_class = "btn-danger";
							} else {
								$status = "Solved";
								$btn_class = "btn-success";
							}
						?>
						<tr>
							<td><b><?php echo date("M d, Y", strtotime($row['date_created'])) ?></b></td>
							<td><b><?php echo $row['subject'] ?></b></td>
							<td><b class="truncate"><?php echo strip_tags($desc) ?></b></td>
							<td>
								<button class="btn btn-sm <?php echo $btn_class; ?>" disabled>
									<?php echo $status; ?>
								</button>
							</td>
						</tr>
						<?php endwhile; ?>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</div>
