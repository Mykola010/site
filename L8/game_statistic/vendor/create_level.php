<?php
require_once '../config/connect.php';

//print_r($_POST);


$level = $_POST['level'];

mysqli_query($connect, "INSERT INTO `level` (`id`, `level`) VALUES (NULL, '$level')");

header('Location: ../index_level.php');