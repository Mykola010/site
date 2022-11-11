<?php
$connect = mysqli_connect('localhost', 'root', '', 'game_statistic');
if(!$connect) {
  die('Ошибка подключения к БД');
}