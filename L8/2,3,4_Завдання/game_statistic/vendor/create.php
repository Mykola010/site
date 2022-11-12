<?php
require_once '../config/connect.php';

//print_r($_POST);

$name = $_POST['name'];
$email = $_POST['email'];
$class = $_POST['class'];
$level = $_POST['level'];

mysqli_query($connect, "INSERT INTO `user` (`id`, `name_personage`, `email`, `class`, `level`) VALUES (NULL, '$name', '$email', '$class', '$level')");

header('Location: ../index.php');