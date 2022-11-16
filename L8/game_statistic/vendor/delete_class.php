<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($connect, "DELETE FROM class WHERE `class`.`id` ='$id'");

header('Location: ../index_class.php');