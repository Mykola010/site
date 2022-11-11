<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT * FROM `user` WHERE `id`='$product_id'");
  $product = mysqli_fetch_assoc($product);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>View character</title>
</head>
<body>

  <h2><b>Name_personage:</b><?= $product['name_personage'] ?></h2>
  <p><b>Email:</b><?= $product['email'] ?></p>
  <p><b>Class:</b><?= $product['class'] ?></p>
  <p><b>Level:</b> <?= $product['level'] ?></p>

  

  <form action="index.php" >
    
    <button >Home</button>
  </form>
</body>
</html>