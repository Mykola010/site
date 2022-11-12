<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT * FROM `correspondence_history` WHERE `id`='$product_id'");
  $product = mysqli_fetch_assoc($product);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>View message</title>
</head>
<body>

  <h2><b>from_whom_/_for_whom:</b><?= $product['from_whom_/_for_whom'] ?></h2>
  <p><b>date:</b><?= $product['date'] ?></p>
  <p><b>time:</b><?= $product['time'] ?></p>
  <p><b>status:</b> <?= $product['status'] ?></p>
  <p><b>text:</b> <?= $product['text'] ?></p>


  

  <form action="index.php" >
    
    <button >Home</button>
  </form>
</body>
</html>