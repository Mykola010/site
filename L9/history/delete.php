<?php
	//include our connection
	include 'dbconfig.php';

	//delete the row of selected id
	$sql = "DELETE FROM correspondence_history WHERE rowid = '".$_GET['id']."'";
	$db->query($sql);

	header('location: index.php');
?>