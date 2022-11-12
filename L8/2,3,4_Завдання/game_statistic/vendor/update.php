<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$class = $_POST['class'];
$level = $_POST['level'];

mysqli_query($connect, "UPDATE `user` SET  `name_personage` = '$name', `email` = '$email', `class` = '$class', `level` = '$level' WHERE `user`.`id` = '$id'");

header('Location: ../index.php');