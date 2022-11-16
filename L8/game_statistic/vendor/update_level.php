<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$level = $_POST['level'];


mysqli_query($connect, "UPDATE `level` SET  `level` = '$level' WHERE `level`.`id` = '$id'");

header('Location: ../index_level.php');