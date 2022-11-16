<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$class = $_POST['weapon'];


mysqli_query($connect, "UPDATE `weapon` SET  `weapon` = '$class' WHERE `weapon`.`id` = '$id'");

header('Location: ../index_weapon.php');