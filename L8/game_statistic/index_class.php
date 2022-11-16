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
  <title>Class</title>
</head>
<body>
  <table>
    <tr>
        <th>id</th>
      <th>class</th>
      
      <th>&#9998;</th>
      <th>&#10006;</th>
    </tr>

    <?php
   
      $products = mysqli_query($connect, "SELECT * FROM `class`");
      $products = mysqli_fetch_all($products);
      foreach($products as $product) {
        ?>
          <tr>
            <td><?= $product[0] ?></td>
            <td><?= $product[1] ?></td>
            
            <td><a href="update_class.php?id=<?= $product[0] ?>">Change</a></td>
            <td><a href="vendor/delete_class.php?id=<?= $product[0] ?>">Delete</a></td> 
          </tr>
        <?php
      }
    ?>
  </table>

  <h2>Add new class</h2>
  <form action="vendor/create_class.php" method="post">
    <p>class</p>
    <input type="text" name="class">
    <button type="submit">Add</button>
  </form>
  <form action="index.php" >
  <button >Home</button>
  </form>
</body>
</html>

</body>
</html>