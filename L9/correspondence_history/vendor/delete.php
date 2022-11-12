<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($connect, "DELETE FROM correspondence_history WHERE `correspondence_history`.`id` ='$id'");

header('Location: ../index.php');