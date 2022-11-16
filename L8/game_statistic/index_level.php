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
  <title>Level</title>
</head>
<body>
  <table>
    <tr>
        <th>id</th>
      <th>level</th>
      
      <th>&#9998;</th>
      <th>&#10006;</th>
    </tr>

    <?php
   
      $products = mysqli_query($connect, "SELECT * FROM `level`");
      $products = mysqli_fetch_all($products);
      foreach($products as $product) {
        ?>
          <tr>
            <td><?= $product[0] ?></td>
            <td><?= $product[1] ?></td>
            
            <td><a href="update_level.php?id=<?= $product[0] ?>">Change</a></td>
            <td><a href="vendor/delete_level.php?id=<?= $product[0] ?>">Delete</a></td> 
          </tr>
        <?php
      }
    ?>
  </table>

  <h2>Add new level</h2>
  <form action="vendor/create_level.php" method="post">
    <p>level</p>
    <input type="text" name="level">
    <button type="submit">Add</button>
  </form>
  <form action="index.php" >
  <button >Home</button>
  </form>
</body>
</html>

</body>
</html>