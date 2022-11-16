<?php
  require_once 'config/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>&#10038;Statistics&</title>
</head>
<body>
  <table>
    <tr>
        <th>email</th>
      <th>name_personage</th>
<th> <form action="index_class.php" >
    
    <button >id_class</button>
  </form></th><th> <form action="index_weapon.php" >
    
    <button >id_weapons</button>
  </form></th><th> <form action="index_level.php" >
    
    <button >id_level</button>
  </form></th>
      <th>&#9672;</th>
      <th>&#9998;</th>
      <th>&#10006;</th>
    </tr>

    <?php
   
      $products = mysqli_query($connect, "SELECT * FROM `user`");
      $products = mysqli_fetch_all($products);
      foreach($products as $product) {
        ?>
          <tr>
            <td><?= $product[2] ?></td>
            <td><?= $product[1] ?></td>
            <td><?= $product[3] ?></td>
            <td><?= $product[4] ?></td>
            <td><?= $product[5] ?></td>
            
            <td><a href="view.php?id=<?= $product[0] ?>">Review</a></td>
            <td><a href="update.php?id=<?= $product[0] ?>">Change</a></td>
            <td><a href="vendor/delete.php?id=<?= $product[0] ?>">Delete</a></td> 
          </tr>
        <?php
      }
    ?>
  </table>


  <h2>Add new player</h2>
  <form action="vendor/create.php" method="post">
    <p>name_personage</p>
    <input type="text" name="name">
    <p>email</p>
    <input type="text" name="email">
    <p>id_class</p>
    <input type="number" name="id_class">
    <p>id_weapon</p>
    <input type="number" name="id_weapons">
    <p>id_level</p>
    <input type="number" name="id_level">
    <button type="submit">&#10052;Add&#10052;</button>
  </form>

</body>
</html>