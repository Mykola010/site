<?php
	//include our connection
	include 'dbconfig.php';

	//get the row of selected id
	$sql = "SELECT rowid, * FROM correspondence_history WHERE rowid = '".$_GET['id']."'";
	$query = $db->query($sql);
	$row = $query->fetchArray();

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>&#8258;correspondence_history&#8258;</title>
</head>
<body>
<form method="POST">
<button><a href="index.php">&rArr; Back&lArr;</button></a>
	<p>
		<label for="date">date:</label>
		<input type="text" id="date" name="date" value="<?php echo $row['date']; ?>">
	</p>
	<p>
		<label for="time">time:</label>
		<input type="text" id="time" name="time" value="<?php echo $row['time']; ?>">
	</p>
	<p>
		<label for="status">status:</label>
		<input type="text" id="status" name="status" value="<?php echo $row['status']; ?>">
	</p>
	<p>
		<label for="whom">whom:</label>
		<input type="text" id="whom" name="whom" value="<?php echo $row['whom']; ?>">
	</p>
	<p>
		<label for="text">text:</label>
		<input type="text" id="text" name="text" value="<?php echo $row['text']; ?>">
	</p>
	<input type="submit" name="save" name="save" value= "&rArr; Save&lArr;";>
</form>
<?php
	if(isset($_POST['save'])){
		$date = $_POST['date'];
		$time = $_POST['time'];
		$status = $_POST['status'];
		$whom = $_POST['whom'];
		$text = $_POST['text'];

		//update our table
		$sql = "UPDATE correspondence_history SET date = '$date', time = '$time', status = '$status', whom = '$whom', text = '$text' WHERE rowid = '".$_GET['id']."'";
		$db->exec($sql);

		header('location: index.php');
	}
?>
</body>
</html>