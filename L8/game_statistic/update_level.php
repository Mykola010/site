<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT * FROM `level` WHERE `id`='$product_id'");
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
  <form action="vendor/update_level.php" method="post">
    <input type="hidden" name="id" value="<?= $product['id'] ?>">
    
    <p>level</p>
    <input type="text" name="level" value="<?= $product['level'] ?>">
    <button type="submit">Change</button>
  </form>
  <form action="index_level.php" >
    
    <button >level</button>
  </form>
</body>
</html>