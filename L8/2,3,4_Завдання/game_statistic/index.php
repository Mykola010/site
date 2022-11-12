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
  <title>Statistics</title>
</head>
<body>
  <table>
    <tr>
      <th>id</th>
      <th>name_personage</th>
      <th>email</th>
      <th>class</th>
      <th>level</th>
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
            <td><?= $product[0] ?></td>
            <td><?= $product[1] ?></td>
            <td><?= $product[2] ?></td>
            <td><?= $product[3] ?></td> 
            <td><?= $product[4] ?></td>
            
            <td><a href="statistic.php?id=<?= $product[0] ?>">Review</a></td>
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
    <textarea name="email"></textarea>
    <p>class</p>
    <textarea name="class"></textarea>
    <p>level</p>
    <input type="number" name="level">
    <button type="submit">Add</button>
  </form>

</body>
</html>
