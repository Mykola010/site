<?php
require_once '../config/connect.php';

//print_r($_POST);

$date = $_POST['date'];
$time = $_POST['time'];
$status = $_POST['status'];
$from_whom = $_POST['from_whom_/_for_whom'];
$text = $_POST['text'];

mysqli_query($connect, "INSERT INTO `correspondence_history` (`ID_correspondence_history`, `date`, `time`, `status`, `from_whom_/_for_whom`, `text`) VALUES (NULL, '$date', '$time', '$status', '$from_whom', '$text')");

header('Location: ../index.php');