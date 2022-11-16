<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$id_class = $_POST['id_class'];
$id_weapons = $_POST['id_weapons'];
$id_level = $_POST['id_level'];

mysqli_query($connect, "UPDATE `user` SET  `name_personage` = '$name', `email` = '$email', `id_class` = '$id_class', `id_weapons` = '$id_weapons',`id_level` = '$id_level' WHERE `user`.`id` = '$id'");

header('Location: ../index.php');