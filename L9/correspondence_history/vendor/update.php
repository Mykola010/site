<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$date = $_POST['date'];
$time = $_POST['time'];
$status = $_POST['status'];
$from_whom = $_POST['from_whom_/_for_whom'];
$text = $_POST['text'];

mysqli_query($connect, "UPDATE `correspondence_history` SET `date` = '$date', `time` = '$time', `status` = '$status', `from_whom_/_for_whom` = '$from_whom', `text` = '$text' WHERE `correspondence_history`.`id` = '$id'");


header('Location: ../index.php');