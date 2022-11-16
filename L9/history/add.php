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
		<input type="text" id="date" name="date">
	</p>
	<p>
		<label for="time">time:</label>
		<input type="text" id="time" name="time">
	</p>
	<p>
		<label for="status">status:</label>
		<input type="text" id="status" name="status">
	</p>
	<p>
		<label for="whom">whom:</label>
		<input type="text" id="whom" name="whom">
	</p>
	<p>
		<label for="text">text:</label>
		<input type="text" id="text" name="text">
	</p>
	 <input type="submit" name="save" value= "&rArr; Save&lArr;";>
</form>
<?php
	if(isset($_POST['save'])){
		//include our connection
		include 'dbconfig.php';

		//insert query
		$sql = "INSERT INTO correspondence_history (date, time, status,whom,text) VALUES ('".$_POST['date']."', '".$_POST['time']."', '".$_POST['status']."', '".$_POST['whom']."', '".$_POST['text']."')";
		$db->exec($sql);

		header('location: index.php');

	}
?>
</body>
</html>