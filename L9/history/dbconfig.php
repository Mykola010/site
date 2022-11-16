<?php
//Create a new SQLite3 Database
$db = new SQLite3('correspondence_history.db');

//Create a new table to our database 
$query = "CREATE TABLE IF NOT EXISTS correspondence_history (date STRING, time STRING, status STRING, whom STRING, text STRING)";
$db->exec($query);

?>
