<?php
require_once '../config/connect.php';

//print_r($_POST);


$class = $_POST['class'];

mysqli_query($connect, "INSERT INTO `class` (`id`, `class`) VALUES (NULL, '$class')");

header('Location: ../index_class.php');