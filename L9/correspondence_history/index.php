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
  <title>correspondence_history</title>
</head>
<body>
  <table>
    <tr>
      <th>id</th>
      <th>date</th>
      <th>time</th>
      <th>status</th>
      <th>from_whom_/_for_whom</th>
      <th>text</th>
      <th>&#9672;</th>
      <th>&#9998;</th>
      <th>&#10006;</th>
    </tr>

    <?php
      $products = mysqli_query($connect, "SELECT * FROM `correspondence_history`");
      $products = mysqli_fetch_all($products);
      foreach($products as $product) {
        ?>
          <tr>
            <td><?= $product[0] ?></td>
            <td><?= $product[1] ?></td>
            <td><?= $product[2] ?></td>
            <td><?= $product[3] ?></td> 
            <td><?= $product[4] ?></td>
            <td><?= $product[5] ?></td>
            
            <td><a href="correspondence.php?id=<?= $product[0] ?>">Review</a></td>
            <td><a href="update.php?id=<?= $product[0] ?>">Change</a></td>
            <td><a href="vendor/delete.php?id=<?= $product[0] ?>">Delete</a></td> 
          </tr>
        <?php
      }
    ?>
  </table>

  <h2>Add new message</h2>
  <form action="vendor/create.php" method="post">
    <p>date</p>
    <input type="date" name="date">
    <p>time</p>
    <input type="time" name="time">
    <p>status</p>
    <input type="text" name="status">
    <p>from_whom_/_for_whom</p>
    <textarea name="from_whom_/_for_whom"></textarea>
    <p>text</p>
    <textarea name="text"></textarea>
    <button type="submit">Add</button>
  </form>

</body>
</html>