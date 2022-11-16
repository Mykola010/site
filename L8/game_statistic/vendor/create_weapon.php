<?php
require_once '../config/connect.php';

//print_r($_POST);


$weapon = $_POST['weapon'];

mysqli_query($connect, "INSERT INTO `weapon` (`id`, `weapon`) VALUES (NULL, '$weapon')");

header('Location: ../index_weapon.php');