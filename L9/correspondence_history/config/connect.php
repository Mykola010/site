<?php
$connect = mysqli_connect('localhost', 'root', '', 'correspondence_history');
if(!$connect) {
  die('Ошибка подключения к БД');
}