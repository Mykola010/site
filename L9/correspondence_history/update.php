<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT * FROM `correspondence_history` WHERE `id`='$product_id'");
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
    <p>date</p>
    <input type="date" name="date" value="<?= $product['date'] ?>">
    <p>time</p>
    <input type="time" name="time" value="<?= $product['time'] ?>">
    <p>status</p>
    <input type="text" name="status" value="<?= $product['status'] ?>">
    <p>from_whom_/_for_whom</p>
    <input type="text" name="from_whom_/_for_whom" value="<?= $product['from_whom_/_for_whom'] ?>">
    <p>text</p>
    <input type="text" name="text" value="<?= $product['text'] ?>">
    <button type="submit">Change</button>
  </form>
  <button >Home</button>
  </form>
</body>
</html>


    
    