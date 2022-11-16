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

 

  <h2>Change</h2>
  <form action="vendor/update.php" method="post">
    <input type="hidden" name="id" value="<?= $product['id'] ?>">
    <p>Name_personage</p>
    <input type="text" name="name" value="<?= $product['name_personage'] ?>">
    <p>email</p>
    <textarea name="email"><?= $product['email'] ?></textarea>
    <p>id_class</p>
    <input type="number" name="id_class" value="<?= $product['id_class'] ?>">
    <p>id_weapon</p>
    <input type="number" name="id_weapons" value="<?= $product['id_weapons'] ?>">
    <p>id_level</p>
    <input type="number" name="id_level" value="<?= $product['id_level'] ?>">
    <button type="submit">Change</button>
  </form>
  <form action="index.php" >
    
    <button >Home</button>
  </form>
</body>
</html>