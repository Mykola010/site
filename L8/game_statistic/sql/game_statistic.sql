-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 16 2022 р., 13:04
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `game_statistic`
--

-- --------------------------------------------------------

--
-- Структура таблиці `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `class`
--

INSERT INTO `class` (`id`, `class`) VALUES
(24, 'archer'),
(25, 'swordsman');

-- --------------------------------------------------------

--
-- Структура таблиці `level`
--

CREATE TABLE `level` (
  `id` int(3) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(37, 5),
(38, 4);

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name_personage` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_class` int(11) DEFAULT NULL,
  `id_weapons` int(11) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `name_personage`, `email`, `id_class`, `id_weapons`, `id_level`) VALUES
(42, 'Alex', 'Alex@.com', 25, 27, 38);

-- --------------------------------------------------------

--
-- Структура таблиці `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `weapon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `weapon`
--

INSERT INTO `weapon` (`id`, `weapon`) VALUES
(25, 'bow'),
(27, 'sword');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблиці `level`
--
ALTER TABLE `level`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблиці `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
