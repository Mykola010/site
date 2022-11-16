<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($connect, "DELETE FROM level WHERE `level`.`id` ='$id'");

header('Location: ../index_level.php');