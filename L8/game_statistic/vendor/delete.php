<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($connect, "DELETE FROM user WHERE `user`.`id` ='$id'");

header('Location: ../index.php');