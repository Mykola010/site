<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>&#8258;correspondence_history&#8258;</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<a href="add.php"><button>&rArr; Add&lArr;</button></a>
<table border="1">
	<thead>
		<th>ID</th>
		<th>date</th>
		<th>time</th>
		<th>status</th>
		<th>whom</th>
		<th>text</th>
		<th>&dArr;&#91;&#9998;&#93;&dArr;&#10038;&dArr;&#91;
      &#10006;&#93;&dArr;</th>
	</thead>
	<tbody>
		<?php
			//include our connection
			include 'dbconfig.php';

			//query from the table that we create
			$sql = "SELECT rowid, * FROM correspondence_history";
			$query = $db->query($sql);

			while($row = $query->fetchArray()){
				echo "
					<tr>
						<td>".$row['rowid']."</td>
						<td>".$row['date']."</td>
						<td>".$row['time']."</td>
						<td>".$row['status']."</td>
						<td>".$row['whom']."</td>
						<td>".$row['text']."</td>
						<td>
							<a href='edit.php?id=".$row['rowid']."'>&#10038&#91; Edit &#93;&#10038</a>
							<a href='delete.php?id=".$row['rowid']."'>&#10038&#91; Delete &#93;&#10038</a>
						</td>
					</tr>
				";
			}
		?>
	</tbody>
</table>
</body>
</html>