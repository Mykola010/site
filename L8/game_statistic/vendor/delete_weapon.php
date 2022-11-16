<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($connect, "DELETE FROM weapon WHERE `weapon`.`id` ='$id'");

header('Location: ../index_weapon.php');