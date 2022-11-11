<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT * FROM `user` WHERE `id`='$product_id'");
  $product = mysqli_fetch_assoc($product);
  //print_r($product);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Change</title>
</head>
<body>

  <a href="/">Home</a>
  <hr>

  <h2>Change</h2>
  <form action="vendor/update.php" method="post">
    <input type="hidden" name="id" value="<?= $product['id'] ?>">
    <p>Name_personage</p>
    <input type="text" name="name" value="<?= $product['name_personage'] ?>">
    <p>email</p>
    <textarea name="email"><?= $product['email'] ?></textarea>
    <p>class</p>
    <textarea name="class"><?= $product['class'] ?></textarea>
    <p>level</p>
    <input type="number" name="level" value="<?= $product['level'] ?>">
    <button type="submit">Change</button>
  </form>
  
</body>
</html>