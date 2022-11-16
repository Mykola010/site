<?php
require_once '../config/connect.php';

//print_r($_POST);

$name = $_POST['name'];
$email = $_POST['email'];
$id_class = $_POST['id_class'];
$id_weapons = $_POST['id_weapons'];
$id_level = $_POST['id_level'];

mysqli_query($connect, "INSERT INTO `user` (`id`, `name_personage`, `email`, `id_class`, `id_weapons`, `id_level`) VALUES (NULL, '$name', '$email', '$id_class', '$id_weapons', '$id_level')");

header('Location: ../index.php');