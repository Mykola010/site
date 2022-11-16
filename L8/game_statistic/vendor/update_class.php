<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$class = $_POST['class'];


mysqli_query($connect, "UPDATE `class` SET  `class` = '$class' WHERE `class`.`id` = '$id'");

header('Location: ../index_class.php');