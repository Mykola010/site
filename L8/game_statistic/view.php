<?php
  require_once 'config/connect.php';
  $product_id = $_GET['id'];
  $product = mysqli_query($connect, "SELECT user.email,user.name_personage,class.class,weapon.weapon,level.level FROM `user` INNER JOIN class ON user.id_class=class.id INNER JOIN weapon ON user.id_weapons=weapon.id INNER JOIN level ON user.id_level=level.id AND user.id='$product_id'");
  $product = mysqli_fetch_all($product);
  
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
<?php
foreach($product as $products){ ?>
  <h2><b>Name_personage:</b><?= $products[1] ?></h2>
  <p><b>Email:</b><?= $products[0] ?></p>
  <p><b>class:</b><?= $products[2] ?></p>
  <p><b>weapons:</b><?= $products[3] ?></p>
  <p><b>level:</b> <?= $products[4] ?></p>
  <?php
}
?>
  

  <form action="index.php" >
    
    <button >Home</button>
  </form>
  
</body>
</html>